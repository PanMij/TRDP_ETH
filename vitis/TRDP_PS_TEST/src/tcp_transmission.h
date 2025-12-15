/*
 * tcp_transmission.h
 *
 *  Created on: 2017
 *      Author: 201607062058
 */

#ifndef TCP_TRANSMISSION_H_
#define TCP_TRANSMISSION_H_

#include <vector>
#include <unordered_map>
#include <tuple>
#include "xadcps.h"
#include "xaxidma.h"
#include "xil_types.h"
#include "Xscugic.h"
#include "Xil_exception.h"
#include "lwip/tcp.h"
#include "lwip/udp.h"
#include "lwip/igmp.h"
#include "lwip/sys.h"
#include "xqspips_flash_polled.h"
#include "reset.h"
#include "arrayQueue.h"
#include "check.h"
#include "retransmission.h"
#include "EthIf.h"
#include "Structures.h"
#include "dma_intr.h"

#define DEBUG
#ifdef DEBUG
#define DEBUG_PRINTF(fmt, ...) xil_printf("[DEBUG] " fmt, ##__VA_ARGS__)
#else
#define DEBUG_PRINTF(fmt, ...) do {} while(0)
#endif // DEBUG
#define ERROR_PRINTF(fmt, ...) xil_printf("[ERROR] " fmt, ##__VA_ARGS__)
#define INFO_PRINTF(fmt, ...) xil_printf("[INFO] " fmt, ##__VA_ARGS__)

#define SEND_SIZE (4096)
#define PAKET_LENGTH (4096) //!< If this value is modified, the same value in arrayQueue.h must be modified as well.
#define DATAFRAME_FIXED_LENGTH (6)
#define DATAFRAME_LENGTH_OFFSET (2)
#define DATAFRAME_DATA_OFFSET (4)
#define PDU_MSGTYPE_OFFSET (6)
#define PDU_DATASET_LENGTH_OFFSET (20)
#define RECV_MESSAGE_DATAFRAME_HEADER_LENGTH (30)
#define RECV_PROC_DATAFRAME_HEADER_LENGTH (26)
#define TRANSPORT_OFFSET (PBUF_LINK_HLEN + PBUF_IP_HLEN + PBUF_TRANSPORT_HLEN)

#define GET_COMMANDWORD(frame) (*((BYTE*)frame + 1))

extern unsigned eth_config_done[2];
extern unsigned first_trans_start;
extern volatile int dma_tx_ready;

extern volatile u32 r_packet_index;
extern volatile u32 t_packet_index;

extern XAxiDma AxiDma;
extern XQspiPs QspiInstance;

extern std::vector<ip_addr_t> ipAddrs, netmasks, gws;
extern std::vector<u16_t> ports;

extern arrayQueue Q_C;
extern arrayQueue Q_C_recv;

extern std::vector<ip_addr_t> destIP;              //!< ip, to which ETH_A/ETH_B connect.
extern std::vector<u16_t> destPort;					   //!< port, to which ETH_A/ETH_B connect.

extern ip_addr_t mulIpAddr_send;
extern ip_addr_t mulIpAddr_recv;
extern u16_t mulPort_send;
extern std::vector<u16_t> mulPorts_recv;

extern std::vector<EthIf> ethif_vec;
extern EthIf_MCU ethif_mcu;

/** @test TEST VARIABLES */
struct Statistic {
	int dmaIntrCnt;
	int sentCnt;
	int mcuSentCnt;
	int recvCnt;
	int dataframeErrCnt;
	int pduErrCnt;
	int crc_error;
	int fe_error;
	Statistic() : dmaIntrCnt(0), sentCnt(0), recvCnt(0), dataframeErrCnt(0), pduErrCnt(0),
			 	  crc_error(0), fe_error(0) {}
	void display() {
		INFO_PRINTF("dmaIntrCnt = %d \r\nsentCnt = %d \r\nrecvCnt = %d \r\nmcuSentCnt = %d \r\ndataframeErrCnt = %d \r\npduErrCnt = %d \
				    \r\ncrc_error = %d \r\nfe_error = %d \r\n",
					dmaIntrCnt, sentCnt, recvCnt, mcuSentCnt, dataframeErrCnt, pduErrCnt, crc_error, fe_error);
	}
	void reset() {
		dmaIntrCnt = 0;
		sentCnt = 0;
		mcuSentCnt = 0;
		recvCnt = 0;
		dataframeErrCnt = 0;
		pduErrCnt = 0;
		crc_error = 0;
		fe_error = 0;
	}
};
extern Statistic stats_test;
/***********************/

int app_init();
int tcp_send_init();
int queue_init();
err_t ethif_mcu_init();
void send_received_data(BYTE* p, int dd3);
err_t tcp_init_connected_callback(void *arg, struct tcp_pcb *tpcb, err_t err);
err_t trdp_accepted_callback(void *arg, struct tcp_pcb *newpcb, err_t err);
err_t tcp_sent_callback(void* arg, struct tcp_pcb* tpcb, u16_t len);
err_t tcp_trdp_recv_callback(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err);
err_t tcp_poll_callback(void *arg, struct tcp_pcb *tpcb);
void udp_trdp_recv_callback(void *arg, struct udp_pcb *pcb, struct pbuf *p, const ip_addr_t *addr, u16_t port);

std::unordered_map<BYTE, std::tuple<FrameType, int>> initCommandWordHash();
FrameType checkFrameType(const BYTE& commandWord);
PduType checkPduType(const void* data);
err_t checkConnections();
// void trdp_sendQueueData(arrayQueue* Q, struct tcp_pcb* send_pcb);
// void udp_trdp_sendQueueData(arrayQueue* Q, struct udp_pcb* send_pcb);
int dma_recv(BYTE* &p, int& dd3);
void mcu_sendQueueData(arrayQueue* Q);
int dataFrameProc(BYTE* data, const u16_t& length, const FrameType& type, const int& eth);
struct pbuf* PDU_proc(const BYTE* data, const PduType& type, const EthIf* ethif);
void sendReplyFrame(int eth, bool success);
err_t eth_config(const MainConfigFrame *data, std::vector<EthIf>::iterator& ethif_it);
void updateFlash(u32 offset, const u8* data, u32 length);

#endif /* TCP_TRANSMISSION_H_ */
