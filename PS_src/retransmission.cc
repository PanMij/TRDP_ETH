#include "retransmission.h"
#include "tcp_transmission.h"
#include "check.h"
#include "xil_printf.h"
#include <string.h>

static void fillCrc(BYTE* crcAddr, BYTE* dataStart, const u16& dataLen, BYTE* datasetStart, const u32& datasetLen)
{
	u16 crc = crc16(dataStart, dataLen);
	fillBytes<u16>(crcAddr, crc);
	/**
	 * @note The length of {dataFrame.portData_array} is assigned to MAX_DATASET_LENGTH. In order to reduce memmory cost,
	 *       however, a new DFABC is created according to its real data length. Thus, to facilitate copying the data,
	 *       CRC session should be moved forward next to the rear of {dataFrame.portData_array}.
	 */
	datasetStart += datasetLen;
	fillBytes<u16>(datasetStart, crc);
}

static bool checkComid(u32_t comid, int ethNum)
{
	auto ethif_it = std::find_if(ethif_vec.begin(), ethif_vec.end(), [&ethNum](auto& ethif) -> bool {return ethif.getEthNum() == ethNum;});
	for (const auto& id : ethif_it->comids) {
		if (comid == id) {
			return true;
		}
	}
	return false;
}

/**
 * @brief Retransmission from PD_PDU to RecProcDataFrame.
 * @param[in] pdpdu is the reference to the PD_PDU that is to be transmitted to RecProcDataFrame.
 * @param[in] ethNum is the index of EthIf.
 * @return A new RecProcDataFrame created from the PD_PDU.
 */
s8 PDU2DataFrame(const PD_PDU& pdpdu, const int& ethNum, RecProcDataFrame* dataFrame)
{
	dataFrame->startByte = 0xFE;
	dataFrame->commandWord = (ethNum == 0) ? 0x07 : 0x87;
	u32_t comid = ntohl(pdpdu.comId);
	if (!checkComid(comid, ethNum)) {
		xil_printf("PDU2DataFrame : invalid comid. \r\n");
		return -1;
	}

	u32 datasetLen = ntohl(pdpdu.datasetLength);
	if (datasetLen > MAX_DATASET_LENGTH) {
		/** The dataset is longer than the dataset buffer of dataframe. */
		xil_printf("PDU2DataFrame : The dataset length is greater than the dataset buffer of dataframe. \r\n");
		return -1;
	}
	u16 dataLen = dataFrame->portData_array - &(dataFrame->sequenceCounter_H) + datasetLen;
	fillBytes<u16>(&(dataFrame->dataLength_H), dataLen);

	memcpy(&(dataFrame->sequenceCounter_H), &(pdpdu.sequenceCounter), 4 + 2); //!< copy SequenceCounter(4) and ProtocalVersion(2).
	memcpy(&(dataFrame->comID_H), &(pdpdu.comId), 4);                         //!< copy COMID(4).
	memcpy(&(dataFrame->etbTopoCnt_H), &(pdpdu.etbTopoCnt), 4 + 4);           //!< copy etbTopoCnt(4) and opTrnTopoCnt(4).
	
	memcpy(&(dataFrame->datasetLength_H), &(pdpdu.datasetLength), 4);         //!< copy dataset length(4)
	memset(dataFrame->portData_array, 0, MAX_DATASET_LENGTH);
	memcpy(dataFrame->portData_array, pdpdu.dataset, datasetLen);         //!< copy data.

	fillCrc(&(dataFrame->CRC_H), &(dataFrame->sequenceCounter_H), dataLen, dataFrame->portData_array, datasetLen);
	return 0;
}

/**
 * @brief Retransmission from MD_PDU to RecMessageDataFrame.
 * @param[in] mdpdu is the reference to the MD_PDU that is to be transmitted to RecMessageDataFrame.
 * @param[in] ethNum is the index of EthIf.
 * @return A new RecMessageDataFrame created from the MD_PDU.
 */
s8 PDU2DataFrame(const MD_PDU& mdpdu, const int& ethNum, udp_pcb* pcb, RecMessageDataFrame* dataFrame)
{
	dataFrame->startByte = 0xFE;
	dataFrame->commandWord = (ethNum == 0) ? 0x08 : 0x88;
	
	u32 datasetLen = ntohl(mdpdu.datasetLength);
	if (datasetLen > MAX_DATASET_LENGTH) {
		/** The dataset is longer than the dataset buffer of dataframe. */
		xil_printf("PDU2DataFrame : The dataset length is greater than the dataset buffer of dataframe. \r\n");
		return -1;
	}
	u16 dataLen = dataFrame->portData_array - &(dataFrame->scrIP_H) + datasetLen;
	fillBytes<u16>(&(dataFrame->byteNum_H), dataLen);

	memcpy(&(dataFrame->scrIP_H), &(pcb->remote_ip.addr), 4);                 //!< copy source ip address(4).
	memcpy(&(dataFrame->sequenceCounter_H), &(mdpdu.sequenceCounter), 4 + 2); //!< copy SequenceCounter(4) and ProtocalVersion(2).
	memcpy(&(dataFrame->comID_H), &(mdpdu.comId), 4);                         //!< copy COMID(4)
	
	/** 
	 * @todo 1) How long is SessionId, 4 bytes or 4 * 4 bytes? 
	 * 		 2) SessionId should be copied into reply frame if needed.
	 */
	memcpy(dataFrame->sessionID, &(mdpdu.sessionId), 4 + 4);            //!< copy SessionId(4) and ReplyTimeOut(4).
	
	memcpy(&(dataFrame->datasetLength_H), &(mdpdu.datasetLength), 4);         //!< copy dataset length(4)
	memset(dataFrame->portData_array, 0, MAX_DATASET_LENGTH);
	memcpy(dataFrame->portData_array, mdpdu.dataset, datasetLen);         //!< copy data.

	fillCrc(&(dataFrame->CRC_H), &(dataFrame->scrIP_H), dataLen, dataFrame->portData_array, datasetLen);
	return 0;
}

/**
 * @breif       Retransmission from SendProcDataFrame to PD_PDU.
 * @param[in]   dataFrame is the reference to the SendProcDataFrame.
 * @param[in]   msgType is the message type of this PD_PDU.
 * 			    "Pr" = PD Request. "Pp" = PD Reply. "Pd" = PD Data. "Pe" = PD Data (Error).
 * @param[out]  dfabcPtr is the pointer to the DFABC.
 * @return      The status of the process.
 */
s8 DataFrame2PDU(BYTE* &data, const char msgType[2])
{
	/** @todo If the length of msgType is not equal to 2, deal with this case. */
	SendProcDataFrame* dataFrame = (SendProcDataFrame*)data;
	PD_PDU pdpdu;
	memcpy(&(pdpdu.sequenceCounter), &(dataFrame->sequenceCounter_H), 6); //!< copy SequenceCounter(4) and ProtocolVersion(2).
	pdpdu.msgType = (u16)((msgType[1] << 8) | msgType[0]);
	memcpy(&(pdpdu.comId), &(dataFrame->comID_H), 4);

	memset(&(pdpdu.etbTopoCnt), 0, 8); //!< set etbTopoCnt(4) and opTrnTopoCnt(4) to 0.
	memcpy(&(pdpdu.datasetLength), &(dataFrame->datasetLength_H), 4);
	if (ntohl(pdpdu.datasetLength) > MAX_DATASET_LENGTH) {
		/** The dataset length is greater than the dataset buffer of PDU. */
		xil_printf("DataFrame2PDU : The dataset length is greater than the dataset buffer of PDU. \r\n");
		return -1;
	}

	memset(&(pdpdu.reserved), 0, 12); //!< set Reserved(4), ReplyComId(4) and ReplyIpAddress(4) to 0.
//	pdpdu.headerFCS = fcs32((UNSIGNED8*)&pdpdu, PDPDU_HEADER_LENGTH - 4, 0xffffffff);
	pdpdu.headerFCS = fcs32(reinterpret_cast<UNSIGNED8*>(&pdpdu), PDPDU_HEADER_LENGTH - 4, 0xffffffff);
	
	data = &(dataFrame->portData_array[0]) - PDPDU_HEADER_LENGTH;
	memcpy(data, &pdpdu, PDPDU_HEADER_LENGTH);

	return 0;
}

/**
 * @breif       Retransmission from SendMessageDataFrame to MD_PDU.
 * @param[in]   dataFrame is the reference to the SendMessageDataFrame.
 * @param[in]   msgType is the message type of this MD_PDU.
 * 			    "Mn" = Notification (Request without reply). "Mr" = MD Request with reply.
 * 			    "Mp" = MD Reply without confirmation. "Mq" = MD Reply with confirmation.
 * 			    "Mc" = MD Confirm. "Me" = MD error.
 * 	@param[out] err indicates whether the generated PDU is valid or not.
 * @return A new created MD_PDU.
 */
s8 DataFrame2PDU(BYTE* &data, const char msgType[2], const s32 replyStatus,
				 const char* sourceUri, const char* destinationUri)
{
	/** @todo If the length of msgType is not equal to 2, deal with this case. */
	SendMessageDataFrame* dataFrame = (SendMessageDataFrame*)data;
	MD_PDU mdpdu;
	memcpy(&(mdpdu.sequenceCounter), &(dataFrame->sequenceCounter_H), 6); //!< copy SequenceCounter(4) and ProtocolVersion(2).
	mdpdu.msgType = (u16)((msgType[1] << 8) | msgType[0]);
	memcpy(&(mdpdu.comId), &(dataFrame->comID_H), 4);

	/** @todo What data should be filled in 'etbTopoCnt', 'opTrnTopoCnt', 'Reserved', 'ReplyComId' and 'ReplyAddress'? */
	memset(&(mdpdu.etbTopoCnt), 0, 8); //!< set etbTopoCnt(4) and opTrnTopoCnt(4) to 0.
	memcpy(&(mdpdu.datasetLength), &(dataFrame->datasetLength_H), 4);
	if (ntohl(mdpdu.datasetLength) > MAX_DATASET_LENGTH) {
		/** The dataset is longer than the dataset buffer of PDU. */
		xil_printf("DataFrame2PDU : The dataset length is greater than the dataset buffer of PDU. \r\n");
		return -1;
	}

	mdpdu.replyStatus = replyStatus;
	/** @todo How long is SessionId, 4 bytes or 4 * 4 bytes? */
	memset(mdpdu.sessionId, 0, 4 * 3);
	memcpy(mdpdu.sessionId + 3, dataFrame->sessionID, 4 + 4); //!< copy SessionId(4) and ReplyTimeOut(4).
	strncpy(mdpdu.sourceUri, sourceUri, sizeof(mdpdu.sourceUri));
	strncpy(mdpdu.destinationUri, destinationUri, sizeof(mdpdu.sourceUri));
	mdpdu.headerFCS = fcs32((UNSIGNED8*)&mdpdu, MDPDU_HEADER_LENGTH - 4, 0xffffffff);

	data = &(dataFrame->portData_array[0]) - MDPDU_HEADER_LENGTH;
	memcpy(data, &mdpdu, MDPDU_HEADER_LENGTH);

	return 0;
}
