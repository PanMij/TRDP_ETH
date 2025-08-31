#include <sleep.h>
#include "xtime_l.h"
#include "xil_assert.h"
#include "dma_intr.h"
#include "timer_intr.h"
#include "sys_intr.h"
#include "lwip/err.h"
#include "lwipopts.h"
#include "lwip/init.h"
#include "netif/xadapter.h"
#include "tcp_transmission.h"
#include "lwip/mem.h"
#include "lwip/stats.h"
#include "lwip/sys.h"
#include "lwip/ip.h"
#include "lwip/etharp.h"
#include "lwip/ip4_frag.h"
#include "lwip/tcp.h"
#include "lwip/udp.h"
#include "lwip/priv/tcp_priv.h"
#include "EthIf.h"

#include <iostream>
#include <algorithm>


XQspiPs QspiInstance;
XQspiPs* QspiInstancePtr = &QspiInstance;
XQspiPs_Config *QspiConfig;
MainConfigFrame *BufferPtr;

static  XScuGic Intc; //GIC
static  XScuTimer Timer;//timer
XAxiDma AxiDma;
u8 	*RxBufferPtr[2];  /* ping pong buffers*/
u8 	*TxBufferPtr[2];

//#define TIMER_LOAD_VALUE    XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ / 8 //0.25S
#define TIMER_LOAD_VALUE    XPAR_CPU_CORTEXA9_0_CPU_CLK_FREQ_HZ / 40 //50ms


//constexpr static unsigned char MCF0[] = {
//		0xFE, 0x05, 0x00, 0x53, 0xFF, 0x00, 0x0A, 0x35, 0x00, 0x01, 0x02, 0xC0, 0xA8, 0x01, 0x0A, 0xC0, 0xA8, 0x01, 0x01, 0xFF, 0xFF,
//		0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x71, 0x00, 0x00, 0x00, 0x00, 0xEF, 0xC1, 0x00, 0x00, 0x43, 0x48, 0x43, 0x48, 0xC0,
//		0xA8, 0x01, 0x6D, 0x13, 0x89, 0x00, 0x00, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//		0x00, 0x00, 0x00, 0x71, 0xFA
//};
//constexpr static unsigned char MCF1[] = {
//		0xFE, 0x85, 0x00, 0x53, 0xFF, 0x00, 0x0A, 0x35, 0x00, 0x01, 0x03, 0xC0, 0xA8, 0x02, 0x14, 0xC0, 0xA8, 0x02, 0x01, 0xFF, 0xFF,
//		0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x72, 0x00, 0x00, 0x00, 0x00, 0xEF, 0xC1, 0x00, 0x00, 0x43, 0x48, 0x43, 0x48, 0xC0,
//		0xA8, 0x02, 0x6D, 0x13, 0x8A, 0x00, 0x00, 0x00, 0x00, 0x43, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
//		0x00, 0x00, 0x00, 0x19, 0xF3
//};
constexpr static unsigned char MCF0[] = {
	0xfe, 0x05, 0x00, 0x53, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x01, 0x08, 0xd7,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0xef, 0xff, 0x01, 0x0a, 0x00, 0x00, 0x43, 0x48, 0xef, 0xff, 0x01, 0x3b,
	0x43, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x27, 0x1a, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xd0,
};
constexpr static unsigned char MCF1[] = {
	0xfe, 0x85, 0x00, 0x53, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, 0x01, 0x08, 0xeb,
	0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0xef, 0xff, 0x01, 0x0a, 0x00, 0x00, 0x43, 0x48, 0xef, 0xff, 0x01, 0x3b,
	0x43, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x27, 0x1a, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0xd0,
};


void assertCallback(const char8 *File, s32 Line)
{
	xil_printf("asserCallback: File: %s |||| Line: %d\r\n", File, Line);
}

int init_intr_sys(void)
{
	Xil_AssertSetCallback(assertCallback);
	DMA_Intr_Init(&AxiDma,0);//initial interrupt system
	Timer_init(&Timer,TIMER_LOAD_VALUE,0);
	Init_Intr_System(&Intc); // initial DMA interrupt system
	Setup_Intr_Exception(&Intc);
	DMA_Setup_Intr_System(&Intc,&AxiDma,TX_INTR_ID,RX_INTR_ID);//setup dma interrpt system
	Timer_Setup_Intr_System(&Intc,&Timer,TIMER_IRPT_INTR);
	DMA_Intr_Enable(&Intc,&AxiDma);
	DMA_checkStatus(&AxiDma);
	return 0;
}

int main(void)
{
	xil_printf("24_09_15\r\n");

	xil_printf("************************ STARTING INITIALIZATION ************************\r\n");
	tcp_send_init();
	init_intr_sys();
	lwip_init();

	ethif_vec.reserve(2);
	BYTE* p = nullptr;
	int dd3 = 0;
startConfigLabel:
	eth_config_done[0] = 0;
	eth_config_done[1] = 0;
	ethif_vec.clear();
recvFrameLabel:
	xil_printf("Waiting for main config frame. STATUS: [%d  %d]\r\n", eth_config_done[0], eth_config_done[1]);
#ifdef NO_CONFIG_FRAME
	if (!eth_config_done[0]) {
		configFramePtr = (MainConfigFrame*)MCF0;
	} else if (!eth_config_done[1]) {
		configFramePtr = (MainConfigFrame*)MCF1;
	}
#else
	while (!packet_trans_done) {
		/** Wait until a main config frame has been received. */
	}
	dma_recv(p, dd3);
	packet_trans_done = 0;
	if (dd3 == 89) {
		configFramePtr = (MainConfigFrame*)p;
		UNSIGNED16 frameCrc = ntohs(*(u16_t*)(&(configFramePtr->CRC_H)));
		UNSIGNED16 crc = crc16(&(configFramePtr->macCustomConfigSel), 83);
		if (frameCrc != crc) {
			sendReplyFrame(0, false);
			sendReplyFrame(1, false);
			xil_printf("Configuring : CRC error. \r\n");
			goto recvFrameLabel;
		}
	} else {
		sendReplyFrame(0, false);
		sendReplyFrame(1, false);
		xil_printf("Configuring : Wrong main config frame length. Send a valid config frame. \r\n");
		goto recvFrameLabel;
	}
#endif // NO_CONFIG_FRAME

	ConfigParams tempConfigParams(configFramePtr);
	xil_printf("A valid Main config frame received.\r\n");
	/** Create EthIf according to command word. */
	if (configFramePtr->configCommand == 0x05) {
		if (eth_config_done[0] == 0) {
			configParams[0] = std::move(tempConfigParams);
			ethif_vec.emplace_back(0, configParams[0]);
			eth_config_done[0] = 1;
			auto ethif_it = ethif_vec.rbegin();
			if (ethif_it->initEthIf() != 0) {
				xil_printf("initEthIf of ethif%d failed. \r\n", ethif_it->getEthNum());
				eth_config_done[ethif_it->getEthNum()] = 0;
				sendReplyFrame(ethif_it->getEthNum(), false);
				goto recvFrameLabel;
			} else {
				sendReplyFrame(ethif_it->getEthNum(), true);
			}
		} else {
			sendReplyFrame(0, true);
			xil_printf("ethif%d initialized. \r\n", 0);
		}
	} else if (configFramePtr->configCommand == 0x85) {
		if (eth_config_done[1] == 0) {
			configParams[1] = std::move(tempConfigParams);
			ethif_vec.emplace_back(1, configParams[1]);
			eth_config_done[1] = 1;
			auto ethif_it = ethif_vec.rbegin();
			if (ethif_it->initEthIf() != 0) {
				xil_printf("initEthIf of ethif%d failed. \r\n", ethif_it->getEthNum());
				eth_config_done[ethif_it->getEthNum()] = 0;
				sendReplyFrame(ethif_it->getEthNum(), false);
				goto recvFrameLabel;
			} else {
				sendReplyFrame(ethif_it->getEthNum(), true);
			}
		} else {
			sendReplyFrame(1, true);
			xil_printf("ethif%d initialized. \r\n", 1);
		}
	} else {
		xil_printf("Unknown Eth index. \r\n");
		sendReplyFrame(0, false);
		sendReplyFrame(1, false);
		goto recvFrameLabel;
	}
	/** It cotinues only if both ETHs have received their main config frame. */
	if (!eth_config_done[0] || !eth_config_done[1]) {
		goto recvFrameLabel;
	}

	/** Initialize each EthIf */
//	for (auto& ethif : ethif_vec) {
//		if (ethif.initEthIf() != 0) {
//			xil_printf("initEthIf of ethif%d failed. \r\n", ethif.getEthNum());
//			eth_config_done[ethif.getEthNum()] = 0;
//			sendReplyFrame(ethif.getEthNum(), false);
//			goto recvFrameLabel;
//		}
//	}

	/** Initialize application */
	if (app_init() != 0) {
		xil_printf("app_init failed. \r\n");
		sendReplyFrame(0, false);
		sendReplyFrame(1, false);
		goto startConfigLabel;
	}

	xil_printf("************************** INITIALIZATION DONE **************************\r\n");

	xil_printf("APPLICATION STARTED. \r\n");
	Timer_start(&Timer);

	while (1)
	{
//		u64_t startTime, finishTime;
//		XTime_GetTime(&startTime);

		/* call tcp timer every 250ms */
		if(TcpTmrFlag) {
			TcpTmrFlag = 0;
			if (tmrFlag100ms) {
				/** 100ms */
				tmrFlag100ms = 0;
				igmp_tmr();
			}
			if (tmrFlag250ms) {
				/** 250ms */
				tmrFlag250ms = 0;
				tcp_tmr();
			}
			if (tmrFlag1000ms) {
				/** 1000ms */
				tmrFlag1000ms = 0;
				etharp_tmr();
				ip_reass_tmr();
				checkConnections();
				DMA_checkStatus(&AxiDma);
			}
		}

		/*receive input packet from ddr*/
		send_received_data();

		/*receive input packet from emac*/
		std::for_each(ethif_vec.begin(), ethif_vec.end(), [](EthIf& ethif) -> void {xemacif_input(ethif.netif);});

		/** ETH_C --> MCU */
		mcu_sendQueueData(&Q_C);

//		XTime_GetTime(&finishTime);
//		double time_cost = (double)(finishTime - startTime) / COUNTS_PER_SECOND * 1000;
//		xil_printf("time_cost = %f\r\n", time_cost);
	}
	return 0;
}
