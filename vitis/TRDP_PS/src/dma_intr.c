
/*
 *
 * www.osrc.cn
 * www.milinker.com
 * copyright by nan jin mi lian dian zi www.osrc.cn
*/

#include "dma_intr.h"

volatile int TxDone;
volatile int packet_trans_done;
volatile int first_trans_done;
volatile int Error;

/*****************************************************************************/
/*
*
* This function checks data buffer after the DMA transfer is finished.
*
* We use the static tx/rx buffers.
*
* @param	Length is the length to check
* @param	StartValue is the starting value of the first byte
*
* @return
*		- XST_SUCCESS if validation is successful
*		- XST_FAILURE if validation is failure.
*
* @note		None.
*
******************************************************************************/
 int DMA_CheckData(int Length, u8 StartValue)
{
	u8 *RxPacket;
	int Index = 0;
	u8 Value;

	RxPacket = (u8 *) RX_BUFFER_BASE;
	Value = StartValue;

	/* Invalidate the DestBuffer before receiving the data, in case the
	 * Data Cache is enabled
	 */
#ifndef __aarch64__
	Xil_DCacheInvalidateRange((u32)RxPacket, Length);
#endif

	for(Index = 0; Index < Length; Index++) {
		if (RxPacket[Index] != Value) {
			xil_printf("Data error %d: %x/%x\r\n",
			    Index, RxPacket[Index], Value);

			return XST_FAILURE;
		}
		Value = (Value + 1) & 0xFF;
	}

	return XST_SUCCESS;
}
/*****************************************************************************/
/**
*
* This function disables the interrupts for DMA engine.
*
* @param	IntcInstancePtr is the pointer to the INTC component instance
* @param	TxIntrId is interrupt ID associated w/ DMA TX channel
* @param	RxIntrId is interrupt ID associated w/ DMA RX channel
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
 void DMA_DisableIntrSystem(XScuGic * IntcInstancePtr,
					u16 TxIntrId, u16 RxIntrId)
{
#ifdef XPAR_INTC_0_DEVICE_ID
	/* Disconnect the interrupts for the DMA TX and RX channels */
	XIntc_Disconnect(IntcInstancePtr, TxIntrId);
	XIntc_Disconnect(IntcInstancePtr, RxIntrId);
#else
	XScuGic_Disconnect(IntcInstancePtr, TxIntrId);
	XScuGic_Disconnect(IntcInstancePtr, RxIntrId);
#endif
}
/*****************************************************************************/
/*
*
* This is the DMA TX Interrupt handler function.
*
* It gets the interrupt status from the hardware, acknowledges it, and if any
* error happens, it resets the hardware. Otherwise, if a completion interrupt
* is present, then sets the TxDone.flag
*
* @param	Callback is a pointer to TX channel of the DMA engine.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void DMA_TxIntrHandler(void *Callback)
{

	u32 IrqStatus;
	int TimeOut;
	XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

	/* Read pending interrupts */
	IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DMA_TO_DEVICE);

	/* Acknowledge pending interrupts */


	XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DMA_TO_DEVICE);

	/*
	 * If no interrupt is asserted, we do not do anything
	 */
	if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {

		return;
	}

	/*
	 * If error interrupt is asserted, raise error flag, reset the
	 * hardware to recover from the error, and return with no further
	 * processing.
	 */
	if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {
		xil_printf("tx error! \r\n");
		/*
		 * Reset should never fail for transmit channel
		 */
		XAxiDma_Reset(AxiDmaInst);

		TimeOut = RESET_TIMEOUT_COUNTER;

		while (TimeOut) {
			if (XAxiDma_ResetIsDone(AxiDmaInst)) {
				break;
			}

			TimeOut -= 1;
		}

		return;
	}

	/*
	 * If Completion interrupt is asserted, then set the TxDone flag
	 */
	if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {
		
		TxDone = 1;
	}
}

/*****************************************************************************/
/*
*
* This is the DMA RX interrupt handler function
*
* It gets the interrupt status from the hardware, acknowledges it, and if any
* error happens, it resets the hardware. Otherwise, if a completion interrupt
* is present, then it sets the RxDone flag.
*
* @param	Callback is a pointer to RX channel of the DMA engine.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void DMA_RxIntrHandler(void *Callback)
{
	u32 IrqStatus;
	int TimeOut;
	XAxiDma *AxiDmaInst = (XAxiDma *)Callback;

	/* Read pending interrupts */
	IrqStatus = XAxiDma_IntrGetIrq(AxiDmaInst, XAXIDMA_DEVICE_TO_DMA);

	/* Acknowledge pending interrupts */
	XAxiDma_IntrAckIrq(AxiDmaInst, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

	/*
	 * If no interrupt is asserted, we do not do anything
	 */
	if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
		return;
	}

	/*
	 * If error interrupt is asserted, raise error flag, reset the
	 * hardware to recover from the error, and return with no further
	 * processing.
	 */
	if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {
		xil_printf("rx error! \r\n");
		/*
		 * Reset should never fail for transmit channel
		 */
		XAxiDma_Reset(AxiDmaInst);

		TimeOut = RESET_TIMEOUT_COUNTER;

		while (TimeOut) {
			if (XAxiDma_ResetIsDone(AxiDmaInst)) {
				XAxiDma_Resume(AxiDmaInst);
				DMA_Intr_Enable(NULL, AxiDmaInst);
				xil_printf("DMA reset done \r\n");
				break;
			}

			TimeOut -= 1;
		}

		return;
	}

	/*
	 * If completion interrupt is asserted, then set RxDone flag
	 */
	if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {
		/** This function is an interrupt service routine which is invoked at the time the DMA RX finished. */
		packet_trans_done = 1;

		if (Q_C_recv.qlen < REAL_QUEUE_SIZE) {
			int dd3 = XAxiDma_ReadReg(AxiDma.RxBdRing[0].ChanBase,XAXIDMA_BUFFLEN_OFFSET);
			Xil_DCacheInvalidateRange((u32)(RxBufferPtr[r_packet_index & 0]) + 0x1000, dd3);
			DFABC* dfabcPtr = dfabc_malloc((unsigned char*)RxBufferPtr[r_packet_index & 0] + 0x1000, dd3);
			if (dfabcPtr == NULL) {
				xil_printf("DMA_RxIntrHandler : dfabc_malloc failed. \r\n");
				DMA_checkStatus(AxiDmaInst);
				return;
			}
			enQueue(&Q_C_recv, dfabcPtr);
		} else {
			xil_printf("DMA_RxIntrHandler : Q_C_recv overflows. \r\n");
		}

		if (eth_config_done[0] == 1 && eth_config_done[1] == 1) {
#if 1
			unsigned char* ptr = (unsigned char*)RxBufferPtr[r_packet_index & 0] + 0x1000;
			if (*(ptr + 42) == 0xFE &&
				(*(ptr + 43) == 0x89 || *(ptr + 43) == 0x09)) /// Only for specific packet
#endif
			++stats_test.dmaIntrCnt;
		}

		DMA_checkStatus(AxiDmaInst);
	}
}

/*****************************************************************************/
/*
*
* This function setups the interrupt system so interrupts can occur for the
* DMA, it assumes INTC component exists in the hardware system.
*
* @param	IntcInstancePtr is a pointer to the instance of the INTC.
* @param	AxiDmaPtr is a pointer to the instance of the DMA engine
* @param	TxIntrId is the TX channel Interrupt ID.
* @param	RxIntrId is the RX channel Interrupt ID.
*
* @return
*		- XST_SUCCESS if successful,
*		- XST_FAILURE.if not succesful
*
* @note		None.
*
******************************************************************************/
int DMA_Setup_Intr_System(XScuGic * IntcInstancePtr,XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId)
{
	int Status;
	XScuGic_SetPriorityTriggerType(IntcInstancePtr, TxIntrId, 0xA0, 0x3);
	XScuGic_SetPriorityTriggerType(IntcInstancePtr, RxIntrId, 0xA0, 0x3);
	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */

	Status = XScuGic_Connect(IntcInstancePtr, TxIntrId,
				(Xil_InterruptHandler)DMA_TxIntrHandler,
				AxiDmaPtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	Status = XScuGic_Connect(IntcInstancePtr, RxIntrId,
				(Xil_InterruptHandler)DMA_RxIntrHandler,
				AxiDmaPtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	XScuGic_Enable(IntcInstancePtr, TxIntrId);
	XScuGic_Enable(IntcInstancePtr, RxIntrId);
	xil_printf("DMA interrupt system setup done. \r\n");
	return XST_SUCCESS;
}



int DMA_Intr_Enable(XScuGic * IntcInstancePtr,XAxiDma *DMAPtr)
{

	/* Disable all interrupts before setup */

	XAxiDma_IntrDisable(DMAPtr, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DMA_TO_DEVICE);

	XAxiDma_IntrDisable(DMAPtr, XAXIDMA_IRQ_ALL_MASK,
				XAXIDMA_DEVICE_TO_DMA);

	/* Enable all interrupts */

	XAxiDma_IntrEnable(DMAPtr, XAXIDMA_IRQ_ALL_MASK,
							XAXIDMA_DMA_TO_DEVICE);

	XAxiDma_IntrEnable(DMAPtr, XAXIDMA_IRQ_ALL_MASK,
							XAXIDMA_DEVICE_TO_DMA);
	
	xil_printf("DMA interrupts enabled. \r\n");
	return XST_SUCCESS;
}


int DMA_Intr_Init(XAxiDma *DMAPtr,u32 DeviceId)
{
	int Status;
	XAxiDma_Config *Config=NULL;

	Config = XAxiDma_LookupConfig(DeviceId);
	if (!Config) {
		xil_printf("No config found for %d\r\n", DeviceId);
		return XST_FAILURE;
	}

	/* Initialize DMA engine */
	Status = XAxiDma_CfgInitialize(DMAPtr, Config);

	if (Status != XST_SUCCESS) {
		xil_printf("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if(XAxiDma_HasSg(DMAPtr)){
		xil_printf("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	xil_printf("DMA engine initialized. \r\n");
	return XST_SUCCESS;
}

/**
 * @brief This function should be called periodically to check if the RX channel is idle.
 *        If idle, start the RX channel.
 */
int  DMA_checkStatus(XAxiDma* DMAPtr)
{
	int status = XST_SUCCESS;

	if (!first_trans_done) {
		first_trans_done = 1;
		status = XAxiDma_SimpleTransfer(DMAPtr, (u32)(RxBufferPtr[r_packet_index & 0] + 0x1000), (u32)PAKET_LENGTH, XAXIDMA_DEVICE_TO_DMA);
		if (status != XST_SUCCESS) {
			xil_printf("DMA_checkStatus error \r\n");
		}
	}

	/** Read the DMA register for S2MM channel. */
	volatile int ctrlRegS2MM = XAxiDma_ReadReg(DMAPtr->RegBase, 0x30);
	volatile int ststRegS2MM = XAxiDma_ReadReg(DMAPtr->RegBase, 0x34);
	if (!XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {
		packet_trans_done = 0;
		/**
		 * @note It is crucial to reserve a 0x1000 space for the header.
		 */
		status = XAxiDma_SimpleTransfer(DMAPtr, (u32)(RxBufferPtr[r_packet_index & 0] + 0x1000), (u32)PAKET_LENGTH, XAXIDMA_DEVICE_TO_DMA);
		if (status != XST_SUCCESS) {
			xil_printf("DMA_checkStatus error \r\n");
		}
#ifdef DEBUG
		ctrlRegS2MM = XAxiDma_ReadReg(DMAPtr->RegBase, 0x30);
		ststRegS2MM = XAxiDma_ReadReg(DMAPtr->RegBase, 0x34);
#endif // DEBUG
	}

	/** Read the DMA register for MM2S */
	volatile int ctrlRegMM2S = XAxiDma_ReadReg(DMAPtr->RegBase, 0x00);
	volatile int ststRegMM2S = XAxiDma_ReadReg(DMAPtr->RegBase, 0x04);
	if (!XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE)) {
		TxDone = 1;
	}

	return status;
}
