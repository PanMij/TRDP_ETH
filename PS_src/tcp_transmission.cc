#include <string.h>
#include <vector>
#include <unordered_map>
#include <string>
#include <algorithm>
#include <sleep.h>
#include "lwip/err.h"
#include "lwip/tcp.h"
#include "lwip/udp.h"
#include "lwip/init.h"
#include "lwip/stats.h"
#include "lwipopts.h"
#include "netif/xadapter.h"
#include "netif/etharp.h"
#include "lwipopts.h"
#include "xaxidma.h"
#include "xil_cache.h"
#include "xil_printf.h"
#include "tcp_transmission.h"
#include "dma_intr.h"

unsigned eth_config_done[2];
unsigned first_trans_start;
volatile u32 r_packet_index;
volatile u32 t_packet_index;
volatile int dma_tx_ready = 0;

arrayQueue Q_C;                                   //!< The sending queue of ETH_C

/** Local net parameters. */
std::vector<ip_addr_t> ipAddrs(2), netmasks(2), gws(2);
std::vector<u16_t> ports(2);

/** remote net parameters. */
std::vector<ip_addr_t> destIP(2);             //!< ip, to which ETH_A/ETH_B connect.
std::vector<u16_t> destPort(2);					   //!< port, to which ETH_A/ETH_B connect.

/** multicast net parameters */
ip_addr_t mulIpAddr_send;
ip_addr_t mulIpAddr_recv;
u16_t mulPort_send;
std::vector<u16_t> mulPorts_recv(2);

/** Ethernet interfaces. (ETH_A, ETH_B) */
std::vector<EthIf> ethif_vec;

/** A hash table which maps the command words to the frame type and eth index. */
static std::unordered_map<BYTE, std::tuple<FrameType, int>> commandWordHash = initCommandWordHash();

/** @test TEST VARIABLES */
Statistic stats_test;
/************************************/


/**
 * @brief Initialize the parameters for tcp connections.
 */
int tcp_send_init()
{
	TxDone = 1;
    r_packet_index = 0;
	t_packet_index = 0;
	/* Initialize the ping pong buffers for the data received from axidma */
	RxBufferPtr[0] = (u8 *)RX_BUFFER0_BASE;
	RxBufferPtr[1] = (u8 *)RX_BUFFER1_BASE;
	TxBufferPtr[0] = (u8 *)TX_BUFFER0_BASE;
	TxBufferPtr[1] = (u8 *)TX_BUFFER1_BASE;

	return 0;
}

/**
 * @brief  Initialize the pcbs of ETH_A/ETH_B for sending and receiving the data.
 * @return The status of the initialization.
 * @retval 0 for initializing successfully, otherwise failed.
 */
int app_init()
{
	err_t err;

	initQueuePool();

	/** Initialize the queue of ETH_C. */
	if (initQueue(&Q_C) != 0) {
		xil_printf("Q_C initialization failed. \r\n");
		return -1;
	}
	xil_printf("The addr of Q_C is %p\r\n", &Q_C);

	/** Initialize tcp connections. */
	for (auto& ethif : ethif_vec) {
		err = ethif.createTcpConnection();
		if (err != ERR_OK) {
			xil_printf("create tcp connection failed. \r\n");
			return -1;
		}
	}

	/** Initialize udp connections. */
	for (auto& ethif : ethif_vec) {
		err = ethif.createUdpConnection();
		if (err != ERR_OK) {
			xil_printf("create udp connection failed. \r\n");
			return -1;
		}

		err = ethif.createMulticastConnection();
		if (err != ERR_OK) {
			xil_printf("create multicast connection failed. \r\n");
			return -1;
		}
	}

	return 0;
}

/**
 * @brief This function is used to send the received data from DMA to the specific queue of EthIf.
 */
void send_received_data(void)
{
#if __arm__
	int copy = 3;
#else
	int copy = 0;
#endif

	if (packet_trans_done) {

		BYTE* p = nullptr;
		int dd3 = 0;
		dma_recv(p, dd3);

		/** @test When the first byte equals to 0x01, stop the test tool. */
		if (dd3 == 1 && *p == 0x01) {
			std::for_each(ethif_vec.begin(), ethif_vec.end(), [&p, &dd3](auto& ethif) -> void {
				ethif.ethifSend(p, dd3);
			});

			xil_printf("stop frame received. \r\n");
			stats_test.display();
			stats_test.reset();
			xil_printf("Hash size : %d \r\n", commandWordHash.size());
			stats_display();

			packet_trans_done = 0;
			return;
		}

		/** Check the type of the received data frame and send to corresponding queue according to the command word. */
		if (*p == 0xFE) {
			BYTE commandWord = GET_COMMANDWORD(p);
			FrameType type = frameErrorType;
			int eth = -1;
			std::tie(type, eth) = commandWordHash[commandWord];
			if (type != frameErrorType && eth != -1) {
				/**
				 * @todo Deal with different kind of data frames.
				 *       1) How to distinguish different kinds.
				 */
				dataFrameProc(p, dd3, type, eth);
			}
#ifdef DEBUG
			else {
				xil_printf("eth wrong or dataframe type wrong. \r\n");
			}
#endif
		} else {
			++stats_test.fe_error;
#ifdef DEBUG
			xil_printf("send_received_data : The first byte isn't 0xFE. \r\n");
#endif
		}

		packet_trans_done = 0;
	}
}

/**
 * @brief The connected callback of TCP.
 * @param[in] tpcb is the pointer to this tcp connection.
 */
err_t tcp_init_connected_callback(void *arg, struct tcp_pcb *tpcb, err_t err)
{
	xil_printf("connected successful\r\n");
	xil_printf("local ip : %s , local port : %d \r\n", ipaddr_ntoa(&(tpcb->local_ip)), tpcb->local_port);
	xil_printf("remote ip : %s , remote port : %d \r\n", ipaddr_ntoa(&(tpcb->remote_ip)), tpcb->remote_port);
	tcp_recv(tpcb, tcp_trdp_recv_callback);
	// tcp_sent(tpcb, tcp_sent_callback);
	// tcp_poll(tpcb, tcp_poll_callback, 4);
	return ERR_OK;
}

/** 
 * @brief The poll callback for tcp_pcb. Print the connection information periodically.
 * @param[in] tpcb Aplly this poll callback for this tcp_pcb.
 */
static constexpr const char* tcp_states[11] = {
  "CLOSED", "LISTEN", "SYN_SENT", "SYN_RCVD", "ESTABLISHED", "FIN_WAIT_1", "FIN_WAIT_2", "CLOSE_WAIT",
  "CLOSING", "LAST_ACK", "TIME_WAIT"
};
err_t tcp_poll_callback(void *arg, struct tcp_pcb *tpcb)
{
	xil_printf("=========================================\r\n");
	xil_printf("local ip: %x    local port: %d    remote ip: %x    remote port: %d    state: %s\r\n",
				tpcb->local_ip.addr, tpcb->local_port, tpcb->remote_ip.addr, tpcb->remote_port, tcp_states[tpcb->state]);
	const struct netif* netif = ((EthIf*)arg)->netif;
	xil_printf("MAC: ");
	for (int i = 0; i < 6; i++) {
		xil_printf("%X", netif->hwaddr[i]);
		if (i < 5) {
			xil_printf("-");
		}
	}
	xil_printf("\r\n");
	return ERR_OK;
}

/**
 * @brief Set receive callback.
 */
err_t trdp_accepted_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
{
	tcp_recv(newpcb, tcp_trdp_recv_callback);
	return ERR_OK;
}

/** 
 * @brief Sent callback function for a specific tpcb. When the latest sent message has been acknowledged, set confirmed to true.
 */
err_t tcp_sent_callback(void* arg, struct tcp_pcb* tpcb, u16_t len)
{
	((EthIf*)arg)->confirmed = true;
	return ERR_OK;
}

/**
 * @brief enqueue data from ETH_A/ETH_B to Q_C.
 * @param[in] tpcb The pcb that receives the data.
 * @param[in] p    The pbuf that contains the data.
 * @note It is necessary to deal with empty data frames, otherwise they may cause data abort handle error. 
 */
err_t tcp_trdp_recv_callback(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
{
	/**
	 * @todo Now suppose that there only exists one pbuf.
	 *       The support for more than one pbuf will be implemented later.
	 */

	/** If an empty data frame is received, close the tcp connection. */
	if (p == nullptr) {
		tcp_abort(tpcb); //!< When a null pbuf received, the server has been closed.
		++stats_test.pduErrCnt;
		xil_printf("tcp null pbuf received. Closing.\r\n");
		return ERR_BUF;
	}

	if (arg == nullptr) {
		++stats_test.pduErrCnt;
		xil_printf("tcp arg is null printer. \r\n");
		tcp_recved(tpcb, p->tot_len);
		pbuf_free(p);
		p = nullptr;
		return ERR_ARG;
	}

	/**
	 *  @todo TCP transmission is used when TRDP module receive data from or send data to other TRDP module.
	 *        Thus, which data structure is used in the transmission beween TRDP modules, dataframes or PDUs?
	 */
	EthIf* ethif = (EthIf*)arg;
	const BYTE* data = (BYTE*)p->payload;
	u16_t dealtLen = 0;
	while (dealtLen < p->len) {
		if (ethif->bufferRecv(*data) == 0) {
			++data;
			++dealtLen;
		} else {
			++stats_test.pduErrCnt;
			xil_printf("tcp receiving packet splitting error. \r\n");
			break;
		}
	}

	tcp_recved(tpcb, p->tot_len);
	pbuf_free(p);
	p = nullptr;
	return ERR_OK;
}

/**
 * @brief enqueue data from ETH_A/ETH_B to Q_C.
 * @param[in]  arg  The pointer to the EthIf that received this udp message.
 * @param[in]  pcb  The pcb that receives the data.
 * @param[out] p    The pbuf that contains the data.
 * @param[out] addr The address that sends the data.
 * @param[out] port The port that sends the data.
 */
void udp_trdp_recv_callback(void *arg, struct udp_pcb *pcb, struct pbuf *p, const ip_addr_t *addr, u16_t port)
{
	/** @todo Now suppose that there only exists one pbuf.
	 *        The support for more than one pbuf will be implemented later.
	 */
	if (p == nullptr) {
		++stats_test.pduErrCnt;
#ifdef DEBUG
		xil_printf("udp null pbuf received.\r\n");
#endif
		return;
	} else if (arg == nullptr) {
		++stats_test.pduErrCnt;
#ifdef DEBUG
		xil_printf("Pointer arg is null. \r\n");
#endif
		pbuf_free(p);
		p = nullptr;
		return;
	}

	++stats_test.recvCnt;

	DFABC* dfabc = dfabc_malloc(p->tot_len, arg);
	dfabc_take_from_pbuf(dfabc, p);

//	ethif_vec[0].ethifSend(reinterpret_cast<BYTE*>(p->payload), p->tot_len, true);

	enQueue(&Q_C, dfabc);

	pbuf_free(p);
	p = nullptr;
}

/** 
 * @brief Check each connection. Call this function periodically. 
 */
err_t checkConnections()
{
	err_t err;

	for (auto& ethif : ethif_vec) {
		err = ethif.checkConnection();
		if (err != ERR_OK) {
			return err;
		}
	}

	return ERR_OK;
}

/** 
 * @brief Check the frame type of the specific data.
 * @param[in] data The pointer that points to the head of the specific data.
 * @return The type of the frame.
 * @retval errorType: not a valid data frame
 */
FrameType checkFrameType(const BYTE& commandWord)
{
	FrameType type = frameErrorType;
	if (commandWord == 0x05 || commandWord == 0x85) {
		type = mainConfigFrame;
	} else if (commandWord == 0x06 || commandWord == 0x86) {
		type = configReplyFrame;
	} else if (commandWord == 0x03 || commandWord == 0x83) {
		type = configDNS;
	} else if (commandWord == 0x09 || commandWord == 0x89) {
		type = sendProcDataFrame;
	} else if (commandWord == 0x07 || commandWord == 0x87) {
		type = recProcDataFrame;
	} else if (commandWord == 0x11 || commandWord == 0x12 ||
			   commandWord == 0x91 || commandWord == 0x92) {
		type = freeUnicastSendDataFrame_UDP;
	} else if (commandWord == 0x21 || commandWord == 0x22 ||
			   commandWord == 0xA1 || commandWord == 0xA2) {
		type = freeUnicastRecDataFrame_UDP;
	} else if (commandWord == 0x31 || commandWord == 0x32 ||
			   commandWord == 0xB1 || commandWord == 0xB2) {
		type = freeUnicastSendDataFrame_TCP;
	} else if (commandWord == 0x41 || commandWord == 0x42 ||
			   commandWord == 0xC1 || commandWord == 0xC2) {
		type = freeUnicastRecDataFrame_TCP;
	} else if (commandWord == 0x51 || commandWord == 0xD1) {
		type = addExtendRecComid;
	} else if (commandWord == 0x52 || commandWord == 0xD2) {
		type = addExtendSendComid;
	} else if (commandWord == 0x53 || commandWord == 0xD3) {
		type = sendCorComidData;
	} else if (commandWord == 0x58 || commandWord == 0xD8) {
		type = extendSpecConfigFrame;
	} else if (commandWord == 0x04 || commandWord == 0x84) {
		type = configSafeTransEn;
	} else if (commandWord == 0x0A || commandWord == 0x8A) {
		type = sendMessageDataFrame;
	} else if (commandWord == 0x08 || commandWord == 0x88) {
		type = recMessageDataFrame;
	} else {
		type = frameErrorType;
	}
	return type;
}

/**
 * @brief Check the type of PDU. (PD_PDU, MD_PDU or error type)
 * @param[in] data is the pointer to the header.
 * @return The type of the input data.
 * @retval pdPdu for PD_PDU, mdPdu for MD_PDU, otherwise errorType.
 */
PduType checkPduType(const void* data)
{
	BYTE* ptr = (BYTE*)data;
	if (ptr == nullptr) {
		xil_printf("checkPduType : The input pointer is nullptr. \r\n");
		return pduErrorType;
	}

	BYTE firstLetterMsgType = *(ptr + PDU_MSGTYPE_OFFSET);
	PduType type = pduErrorType;
	switch (firstLetterMsgType) {
		case 'P':
			type = pdPdu;
			break;
		case 'M':
			type = mdPdu;
			break;
		default:
			xil_printf("checkPduType : PDU message type isn't correct. The frist letter is \'%c\'. \r\n", firstLetterMsgType);
			type = pduErrorType;
	}
	return type;
}

/**
 * @brief Create a hash table that maps a specific command word to a FrameType and ethNum pair.
 * @param None
 * @return A hash table.
 */
std::unordered_map<BYTE, std::tuple<FrameType, int>> initCommandWordHash()
{
	/** Commond words of ETH_A */
	const BYTE comWordETH_A[] = {
		0x05, 0x06, 0x03, 0x09, 0x07, 0x11, 0x12, 0x21, 0xA1, 0x31, 0x32, 0x41, 0x42, 0x51, 0x52, 0x53, 0x58, 0x04, 0x0A, 0x08
	};
	/** Commond words of ETH_B */
	const BYTE comWordETH_B[] = {
		0x85, 0x86, 0x83, 0x89, 0x87, 0x91, 0x92, 0x22, 0xA2, 0xB1, 0xB2, 0xC1, 0xC2, 0xD1, 0xD2, 0xD3, 0xD8, 0x84, 0x8A, 0x88
	};

	std::unordered_map<BYTE, std::tuple<FrameType, int>> map_temp;
	std::for_each(comWordETH_A, comWordETH_A + sizeof(comWordETH_A), [&map_temp](const auto& commandWord) -> void {
		map_temp[commandWord] = std::make_tuple(checkFrameType(commandWord), 0);
	});
	std::for_each(comWordETH_B, comWordETH_B + sizeof(comWordETH_B), [&map_temp](const auto& commandWord) -> void {
		map_temp[commandWord] = std::make_tuple(checkFrameType(commandWord), 1);
	});
	return map_temp;
}

///**
// * @brief (Using tcp)If the queue is not empty, send the data frame from corresponding ETH_A/ETH_B.
// * @param[in] Q        the queue of ETH_A/ETH_B
// * @param[in] send_pcb the pcb that sends the data
// */
//void trdp_sendQueueData(arrayQueue* Q, struct tcp_pcb* send_pcb)
//{
//	if (!isEmpty(Q)) {
//		DFABC* dfabc = nullptr;
//		deQueue(Q, &dfabc);
//
//		if (!dataFrameProc(dfabc)) {
//			tcp_write(send_pcb, dfabc->buf, dfabc->length, TCP_WRITE_FLAG_COPY);
//			tcp_output(send_pcb);
//		}
//		mem_free(dfabc);
//		dfabc = nullptr;
//	}
//}

///**
// * @brief (Using udp)If the queue is not empty, send the data frame from corresponding ETH_A/ETH_B.
// * @param[in] Q        the queue of ETH_A/ETH_B
// * @param[in] send_pcb the pcb that sends the data
// */
//void udp_trdp_sendQueueData(arrayQueue* Q, struct udp_pcb* send_pcb)
//{
//	if (!isEmpty(Q)) {
//		DFABC* dfabc = nullptr;
//		deQueue(Q, &dfabc);
//
//		if (!dataFrameProc(dfabc)) {
//			struct pbuf* p = pbuf_alloc(PBUF_TRANSPORT, dfabc->length, PBUF_RAM);
//			memcpy(p->payload, dfabc->buf, dfabc->length);
//			udp_send(send_pcb, p);
//			pbuf_free(p);
//			p = nullptr;
//		}
//		mem_free(dfabc);
//		dfabc = nullptr;
//	}
//}

/**
 * @brief Different process according to the command word of the data frame.
 * @param[in] data   is the data frame.
 * @param[in] length is the length of the data frame.
 * @param[in] eth    is the index of ethernet interface.
 * @return Check whether the data frame needs to be enqueued or not.
 * @retval 0: if enQueue needed, 1: otherwise.
 * @todo Deal with different types of data frames.
 */
int dataFrameProc(BYTE* data, const u16_t& length, const FrameType& type, const int& eth)
{
	if (data == nullptr) {
		++stats_test.dataframeErrCnt;
#ifdef DEBUG
		xil_printf("dataFrameProc: Input pointer is nullptr. \r\n");
#endif
		return 0;
	}
	UNSIGNED16 crc = crc16(data + DATAFRAME_DATA_OFFSET, length - DATAFRAME_FIXED_LENGTH);
	UNSIGNED16 frame_crc = ntohs(*(u16_t*)(data + length - CRC_LENGTH));
	if (crc != frame_crc) {
		++stats_test.dataframeErrCnt;
		++stats_test.crc_error;
#ifdef DEBUG
		xil_printf("dataFrameProc crc error. \r\n");
#endif
		return 0;
	}

	s8 err = -1;
	auto ethif_it = std::find_if(ethif_vec.begin(), ethif_vec.end(), [&eth](auto& ethif) -> bool {return ethif.getEthNum() == eth;});
	switch (type) {
		case mainConfigFrame:
//			xil_printf("MainConfigFrame received. \r\n");
//			eth_config((MainConfigFrame*)data);
			sendReplyFrame(0, true);
			sendReplyFrame(1, true);
			return 0;
		case configReplyFrame:
			return 0;
		case configDNS:
			break;
		case sendProcDataFrame:
			do {
				/** @todo How to determine the message type? */
				char msgType[2] = {'P', 'p'};
				err = DataFrame2PDU(data, msgType);
				if (err != 0) {
					++stats_test.dataframeErrCnt;
#ifdef DEBUG
					xil_printf("dataFrameProc : err doesn't equal to 0. \r\n");
#endif
					return 0;
				}
				u32_t length = PDPDU_HEADER_LENGTH + ntohl(((PD_PDU*)data)->datasetLength);
				ethif_it->ethifSend(data, length, true);
			} while (0);
			break;
//		case recProcDataFrame:
//			break;
		case freeUnicastSendDataFrame_UDP:
			break;
		case freeUnicastRecDataFrame_UDP:
			break;
		case freeUnicastSendDataFrame_TCP:
			break;
		case freeUnicastRecDataFrame_TCP:
			break;
		case addExtendRecComid:
			do {
				AddExtendRecComid* frame = (AddExtendRecComid*)data;
				ip_addr_t scrIp, destIp;
				IP4_ADDR(&scrIp, frame->scrIP_H, frame->scrIP_SH, frame->scrIP_SL, frame->scrIP_L);
				IP4_ADDR(&destIp, frame->dstAddr_H, frame->dstAddr_SH, frame->dstAddr_SL, frame->dstAddr_L);
				u32_t comid = ntohl(*(u32_t*)(&(frame->comID_H)));
//				configParams.extendedRecvComids.push_back(std::make_tuple(scrIp, destIp, comid));
				xil_printf("AddExtendRecComid: \r\n");
				xil_printf("scr : %s\tdst : %s\tcomid : %d\r\n", ipaddr_ntoa(&scrIp), ipaddr_ntoa(&destIp), comid);
			} while (0);
			return 0;
		case addExtendSendComid:
			do {
				AddExtendSendComid* frame = (AddExtendSendComid*)data;
				ip_addr_t destIp;
				IP4_ADDR(&destIp, frame->dstAddr_H, frame->dstAddr_SH, frame->dstAddr_SL, frame->dstAddr_L);
				u32_t comid = ntohl(*(u32_t*)(&(frame->comID_H)));
//				configParams.extendedSendComids.push_back(std::make_tuple(destIp, comid));
				xil_printf("AddExtendSendComid: \r\n");
				xil_printf("dst : %s\tcomid : %d\r\n", ipaddr_ntoa(&destIp), comid);
			} while (0);
			return 0;
		case sendCorComidData:
			break;
		case extendSpecConfigFrame:
			break;
		case configSafeTransEn:
			break;
		case sendMessageDataFrame:
			do {
				/** @todo 1) Where to find message type, reply status, source uri and destination uri? */
				char msgType[2] = {'M', 'n'};
				s32_t replyStatus = 0;
				const char* sourceUri = "sourceUri";
				const char* destinationUri = "destinationUri";
				err = DataFrame2PDU(data, msgType, replyStatus, sourceUri, destinationUri);
				if (err != 0) {
					++stats_test.dataframeErrCnt;
#ifdef DEBUG
					xil_printf("dataFrameProc : err doesn't equal to 0. \r\n");
#endif
					return 0;
				}
				int length = MDPDU_HEADER_LENGTH + ntohl(((MD_PDU*)data)->datasetLength);
				ethif_it->ethifSend(data, length);
			} while (0);
			break;
//		case recMessageDataFrame:
//			break;
		case frameTestType:
			ethif_it->ethifSend(data, *data);
			break;
		default:
			++stats_test.dataframeErrCnt;
#ifdef DEBUG
			xil_printf("dataFrameProc : type error.\r\n");
#endif
			return 0;
	}

	return 1;
}

/**
 * @brief      Processes of PD_PDUs and MD_PDUs received from TCMS. Transfer them to dataframes and copy to DMA TX buffer.
 * @param[in]  data      is the received PDU.
 * @param[in]  type      is the type of input PDU.
 * @param[in]  ethif     is the pointer to the network interface.
 * @param[out] outlength is the length of the dataframe.
 * @return     The status of the process.
 * @retval     0: successful; otherwise failed.
 */
int PDU_proc(const BYTE* data, const PduType& type, const EthIf* ethif, u32& outlength)
{
	int length = 0;
	s8 err = -1;
	UNSIGNED32 fcs = 0;
	if (type == pdPdu) {
		PD_PDU* pdpdu = (PD_PDU*)data;
		fcs = fcs32((UNSIGNED8*)pdpdu, PDPDU_HEADER_LENGTH - FCS_LENGTH, 0xffffffff);
		if (fcs == pdpdu->headerFCS) {
			RecProcDataFrame* dataFrame = (RecProcDataFrame*)(TxBufferPtr[t_packet_index & 0] + 0x2);
			err = PDU2DataFrame(*pdpdu, ethif->getEthNum(), dataFrame);
			if (err != 0) {
				xil_printf("PDU_proc : err doesn't equal to 0. \r\n");
				return -1;
			}
			length = ntohs(*(u16_t*)(&(dataFrame->dataLength_H))) + DATAFRAME_FIXED_LENGTH;
		} else {
			xil_printf("PDU_proc FCS error. \r\n");
			return -1;
		}
	} else if (type == mdPdu) {
		MD_PDU* mdpdu = (MD_PDU*)data;
		fcs = fcs32((UNSIGNED8*)mdpdu, MDPDU_HEADER_LENGTH - FCS_LENGTH, 0xffffffff);
		if (fcs == mdpdu->headerFCS) {
			RecMessageDataFrame* dataFrame = (RecMessageDataFrame*)(TxBufferPtr[t_packet_index & 0] + 0x2);
			err = PDU2DataFrame(*mdpdu, ethif->getEthNum(), ethif->upcb, dataFrame);
			if (err != 0) {
				xil_printf("PDU_proc : err doesn't equal to 0. \r\n");
				return -1;
			}
			length = ntohs(*(u16_t*)(&(dataFrame->byteNum_H))) + DATAFRAME_FIXED_LENGTH;
		} else {
			xil_printf("PDU_proc FCS error. \r\n");
			return -1;
		}
	} else if (type == pduTestType) {
		memcpy(TxBufferPtr[t_packet_index & 0], &data, *data);
	} else {
		xil_printf("PDU_proc WRONG type. \r\n");
		return -1;
	}

	outlength = length;
	return 0;
}

/**
 * @brief          Read the received data at dma recv buffer.
 * @param[out] p   The output arg that points to the current dma receiving buffer.
 * @param[out] dd3 The output arg that represents the length of the received data.
 * @return         The status of the process.
 * @retval         0: success, -1: error.
 */
int dma_recv(BYTE* &p, int &dd3)
{
	int Status = 0;
	Xil_DCacheInvalidateRange((u32)(RxBufferPtr[r_packet_index & 0]), SEND_SIZE + 0x1000);
	dd3 = XAxiDma_ReadReg(AxiDma.RxBdRing[0].ChanBase,XAXIDMA_BUFFLEN_OFFSET);
	p = (unsigned char *)RxBufferPtr[r_packet_index & 0] + 0x1000;
	r_packet_index++;

	DMA_checkStatus(&AxiDma);

	return Status;
}
#if 0
int dma_recv(BYTE* &p, int &dd3)
{
	int Status = 0;
	dd3 = XAxiDma_ReadReg(AxiDma.RxBdRing[0].ChanBase,XAXIDMA_BUFFLEN_OFFSET);
	/**
	 * @note It is crucial to reserve a 0x1000 space for header.
	 */
	Xil_DCacheInvalidateRange((u32)(RxBufferPtr[r_packet_index & 1]), SEND_SIZE + 0x1000);
	p = (unsigned char *)RxBufferPtr[r_packet_index & 1] + 0x1000;

	r_packet_index++;
	/*initial the other axidma transmission when the current transmission is done*/
	Status = XAxiDma_SimpleTransfer(&AxiDma, (u32)(RxBufferPtr[r_packet_index & 1] + 0x1000), (u32)PAKET_LENGTH, XAXIDMA_DEVICE_TO_DMA);
	if (Status != XST_SUCCESS) {
		xil_printf("axi dma %d recieve failed: %d \r\n", r_packet_index, Status);
	}

	packet_trans_done = 0;
	return Status;
}
#endif

/** 
 * @brief If the queue is not empty, send the data frame from ETH_C. 
 * @param[in] Q is the queue of Eth_C.
 * @return the state of the transmission.
 * @retval 0: success, -1: error.
 */
void mcu_sendQueueData(arrayQueue* Q)
{
	if (!isEmpty(Q) && TxDone) {
		int Status = XST_SUCCESS;
		DFABC* dfabc = getFront(Q);
		if (dfabc != nullptr) {
			/**
			 * @note (When using the speed of 100M) A slight delay (no less than 5us in release mode and 1us in debug mode) is applied here to prevent packet splicing.
			 *       The data frames are correctly enqueued, but packet splicing occurs at MCU in case there is no slight delay.
			 * 		 The reason for this bug is unknown for now.
			 *
			 * 24-09-07
			 * 		 This bug has no longer existed. Tx interruption is set (variable 'TxDone') to ensure that the last message has been sent to MCU. Under this
			 * 		 circumstance, the packet splicing problem is solved. No need to utilize a slight delay any more.
			 *
			 * 24-09-08
			 * 		 Packet splicing occurs again when using TCP for transmission without a slight delay.
			 */
			usleep(10);

			PduType type = checkPduType(dfabc->buf);
			u32 length = 0;
			if (PDU_proc(dfabc->buf, type, (EthIf*)(dfabc->ethif), length) == 0) {
				TxDone = 0;
				*((u16_t*)TxBufferPtr[t_packet_index & 0]) = length & 0xFFFF;
				Xil_DCacheFlushRange((u32)TxBufferPtr[t_packet_index & 0], PAKET_LENGTH);
				Status = XAxiDma_SimpleTransfer(&AxiDma,(u32)TxBufferPtr[(t_packet_index) & 0],
						                        length + 2, XAXIDMA_DMA_TO_DEVICE);
			} else {
				++stats_test.pduErrCnt;
#ifdef DEBUG
				xil_printf("PDU_proc error. \r\n");
#endif
			}

			if (Status == XST_SUCCESS) {
				++t_packet_index;
				deQueue(Q);
				++stats_test.mcuSentCnt;
			} else {
				xil_printf("axi dma send %d failed: %d \r\n", t_packet_index, Status);
			}
		}
	} 
}

//static constexpr const BYTE replyFrame[] = {0xFE, 0x00, 0x00, 0x02, 0x55, 0xAA, 0x00, 0x00};
static constexpr const BYTE replyFrameSuccess[] = {0xFE, 0x06, 0x06, 0x92, 0x93, 0xFF};
static constexpr const BYTE replyFrameFail[] = {0xFE, 0x06, 0x05, 0x93, 0xD3, 0xFF};
/**
 * @brief Generate a ConfigReplyFrame according to the index of ETH.
 * @param[in] eth is the index of ETH.
 * @param[in] success is the status of the configuration.
 * @return A pointer to the generated ConfigReplyFrame.
 */
void sendReplyFrame(int eth, bool success)
{
#if 0
	ConfigReplyFrame frame;
	memcpy(&frame, replyFrame, sizeof(ConfigReplyFrame));
	if (eth == 0) {
		frame.configReplyCommand = 0x00;
	} else {
		frame.configReplyCommand = 0x80;
	}
	if (success) {
		frame.configReplyCommand |= 0x06;
	} else {
		frame.configReplyCommand |= 0x05;
	}
//	frame.configReplyCommand = (eth == 0) ? 0x00 : 0x80;
//	frame.configReplyCommand |= (success) ? 0x06 : 0x05;
	u16 crc = crc16(&(frame.moduleVer_H), ntohs(*(u16_t*)(&(frame.dataLength_H))));
	fillBytes<u16>(&(frame.CRC_H), crc);

	*((u16_t*)TxBufferPtr[t_packet_index & 1]) = sizeof(ConfigReplyFrame) & 0xFFFF;
	memcpy(TxBufferPtr[t_packet_index & 1] + 0x02, &frame, sizeof(ConfigReplyFrame));
	Xil_DCacheFlushRange((u32)TxBufferPtr[t_packet_index & 1], PAKET_LENGTH);
	XAxiDma_SimpleTransfer(&AxiDma,(u32)TxBufferPtr[(t_packet_index) & 1], sizeof(ConfigReplyFrame) + 2, XAXIDMA_DMA_TO_DEVICE);
#else

	u16_t len = sizeof(replyFrameSuccess);
	*((u16_t*)TxBufferPtr[t_packet_index & 1]) = len;
	if (success) {
		memcpy(TxBufferPtr[t_packet_index & 1] + 0x02, replyFrameSuccess, len);
	} else {
		memcpy(TxBufferPtr[t_packet_index & 1] + 0x02, replyFrameFail, len);
	}
	Xil_DCacheFlushRange((u32)TxBufferPtr[t_packet_index & 1], PAKET_LENGTH);
	XAxiDma_SimpleTransfer(&AxiDma,(u32)TxBufferPtr[(t_packet_index) & 1], len + 2, XAXIDMA_DMA_TO_DEVICE);
#endif
}

/**
 * @brief Initialize ETH_A/ETH_B at runtime.
 * @param[in] netif is the ETH to be initialized.
 * @param[in] upcb  is the udp_pcb connected to the netif.
 * @param[in] data  is the porinter to the data frame.
 */
void eth_config(MainConfigFrame *data)
{
	/** Extract the parameters from MainConfigFrame and store them in a ConfigParams. */
	ConfigParams tempConfigParams(data);
	int eth = -1;
	if (data->configCommand == 0x05) {
		eth = 0;
	} else if (data->configCommand == 0x85) {
		eth = 1;
	} else {
		xil_printf("eth_config : Wrong eth number. \r\n");
		sendReplyFrame(0, false);
		return;
	}
	configParams[eth] = std::move(tempConfigParams);

	auto ethif_it = std::find_if(ethif_vec.begin(), ethif_vec.end(), [&eth](auto& ethif) -> bool {return ethif.getEthNum() == eth;});

	if (ethif_it->updateParams() != ERR_OK) {
		xil_printf("eth_config : update error. \r\n");
		sendReplyFrame(eth, false);
		return;
	}

	sendReplyFrame(eth, true);
}
