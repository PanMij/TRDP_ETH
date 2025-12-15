
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

DmaQueue dma_rx_queue;
u8 dma_tx_buffer[DMA_BUFFER_SIZE + sizeof(u16_t)] __attribute__((aligned(32)));

/**
 * @brief This function initializes the DMA queues.
 */
void DMA_InitQueues(void)
{
	dma_rx_queue.head = 0;
	dma_rx_queue.rear = 0;

	memset(dma_rx_queue.buffer, 0, sizeof(dma_rx_queue.buffer));
}

/** 
 * @brief This function enqueues a new DMA buffer into the specified queue.
 * 		  Only set the data length for the new buffer and move the rear pointer.
 * 		  Data is filled by the DMA controller.
 *
 * @param	queue is a pointer to the DMA queue
 * @param	length is the length of the data to be enqueued
 *
 * @return	0 if successful, -1 if the queue is full
 */
int DMA_EnQueue(DmaQueue *queue, int length)
{
	if (queue == NULL) {
		DEBUG_PRINTF("DMA_EnQueue : Invalid queue pointer! \r\n");
		return -1;
	}
	if (length <= 0) {
		DEBUG_PRINTF("DMA_EnQueue : Invalid data length! \r\n");
		return -1;
	}

	if (queue->len >= DMA_QUEUE_LEN) {
		DEBUG_PRINTF("DMA_EnQueue : DMA queue full! \r\n");
		return -1;
	}

	SYS_ARCH_DECL_PROTECT(lev);
    SYS_ARCH_PROTECT(lev);

	queue->buffer[queue->rear].dataLength = length;
	queue->rear = (queue->rear + 1) % DMA_QUEUE_LEN;
	queue->len++;

	SYS_ARCH_UNPROTECT(lev);
	return 0;
}

/**
 * @brief This function dequeues a DMA buffer from the specified queue.
 *
 * @param	queue is a pointer to the DMA queue
 *
 * @return	0 if successful, -1 if the queue is empty
 */
int DMA_DeQueue(DmaQueue *queue)
{
	if (queue == NULL) {
		DEBUG_PRINTF("DMA_DeQueue : Invalid queue pointer! \r\n");
		return -1;
	}

	if (queue->len <= 0) {
		DEBUG_PRINTF("DMA_DeQueue : DMA queue empty! \r\n");
		return -1;
	}

	SYS_ARCH_DECL_PROTECT(lev);
    SYS_ARCH_PROTECT(lev);

	queue->buffer[queue->head].dataLength = 0;
	queue->head = (queue->head + 1) % DMA_QUEUE_LEN;
	queue->len--;

	SYS_ARCH_UNPROTECT(lev);
	return 0;
}

/**
 * @brief This function gets the front DMA buffer from the specified queue.
 *
 * @param	queue is a pointer to the DMA queue
 *
 * @return	A pointer to the front DMA buffer cell, or NULL if the queue is empty
 */
DmaBufferCell* DMA_GetFront(DmaQueue *queue)
{
	if (queue == NULL) {
		DEBUG_PRINTF("DMA_GetFront : Invalid queue pointer! \r\n");
		return NULL;
	}

	if (queue->len <= 0) {
		DEBUG_PRINTF("DMA_GetFront : DMA queue empty! \r\n");
		return NULL;
	}

	return &queue->buffer[queue->head];
}

/**
 * @brief This function gets the length of the specified DMA queue.
 * 
 * @param	queue is a pointer to the DMA queue
 *
 * @return The length of the DMA queue, or -1 if the queue pointer is invalid.
 */
int DMA_GetQueueLength(DmaQueue *queue)
{
	if (queue == NULL) {
		DEBUG_PRINTF("DMA_GetQueueLength : Invalid queue pointer! \r\n");
		return -1;
	}

	return queue->len;
}

#if 0
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
#endif

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
#ifdef DMA_TX_INTR_ENABLED
	XIntc_Disconnect(IntcInstancePtr, TxIntrId);
#endif // DMA_TX_INTR_ENABLED
	XIntc_Disconnect(IntcInstancePtr, RxIntrId);
#else
#ifdef DMA_TX_INTR_ENABLED
	XScuGic_Disconnect(IntcInstancePtr, TxIntrId);
#endif // DMA_TX_INTR_ENABLED
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
		ERROR_PRINTF("tx error! \r\n");
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
		ERROR_PRINTF("rx error! \r\nRestarting...\r\n");
		/*
		 * Reset should never fail for transmit channel
		 */
		PsSoftwareReset();
#if 0
		XAxiDma_Reset(AxiDmaInst);

		TimeOut = RESET_TIMEOUT_COUNTER;

		while (TimeOut) {
			if (XAxiDma_ResetIsDone(AxiDmaInst)) {
				XAxiDma_Resume(AxiDmaInst);
				DMA_Intr_Enable(NULL, AxiDmaInst);
				INFO_PRINTF("DMA reset done \r\n");
				break;
			}

			TimeOut -= 1;
		}
#endif

		return;
	}

	/*
	 * If completion interrupt is asserted, then set RxDone flag
	 */
	if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {
		/** This function is an interrupt service routine which is invoked at the time the DMA RX finished. */
		if (DMA_GetQueueLength(&dma_rx_queue) < DMA_QUEUE_LEN) {
			int recvLen = XAxiDma_ReadReg(AxiDmaInst->RxBdRing[0].ChanBase,XAXIDMA_BUFFLEN_OFFSET);
			if (recvLen <= 0 || recvLen > DMA_BUFFER_SIZE) {
				DEBUG_PRINTF("DMA RX invalid length: %d \r\n", recvLen);
				return;
			}
			DMA_EnQueue(&dma_rx_queue, recvLen);
			/** Start the next RX transfer. */
			/** @todo If the RX queue is full, it's no need to start the next transfer immediately.
			 * 	      Instead, we should wait until there is space available in the queue.
			 * 		  In this case, the next transfer should be started in other place but here.
			 */
			DmaBufferCell* cell = &dma_rx_queue.buffer[dma_rx_queue.rear];
			u32 status = XAxiDma_SimpleTransfer(AxiDmaInst, (UINTPTR)(cell->data), (u32)DMA_BUFFER_SIZE, XAXIDMA_DEVICE_TO_DMA);
			if (status != XST_SUCCESS) {
				ERROR_PRINTF("DMA_RxIntrHandler : simple transfer error \r\n");
			}
		} else {
			DEBUG_PRINTF("DMA RX queue full! \r\n");
		}
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
#ifdef DMA_TX_INTR_ENABLED
	XScuGic_SetPriorityTriggerType(IntcInstancePtr, TxIntrId, 0xA0, 0x3);
#endif // DMA_TX_INTR_ENABLED
	XScuGic_SetPriorityTriggerType(IntcInstancePtr, RxIntrId, 0xA0, 0x3);
	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */

#ifdef DMA_TX_INTR_ENABLED
	Status = XScuGic_Connect(IntcInstancePtr, TxIntrId,
				(Xil_InterruptHandler)DMA_TxIntrHandler,
				AxiDmaPtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}
#endif // DMA_TX_INTR_ENABLED

	Status = XScuGic_Connect(IntcInstancePtr, RxIntrId,
				(Xil_InterruptHandler)DMA_RxIntrHandler,
				AxiDmaPtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

#ifdef DMA_TX_INTR_ENABLED
	XScuGic_Enable(IntcInstancePtr, TxIntrId);
#endif // DMA_TX_INTR_ENABLED
	XScuGic_Enable(IntcInstancePtr, RxIntrId);
	INFO_PRINTF("DMA interrupt system setup done. \r\n");
	return XST_SUCCESS;
}



int DMA_Intr_Enable(XScuGic * IntcInstancePtr,XAxiDma *DMAPtr)
{

	/* Disable all interrupts before setup */
#ifdef DMA_TX_INTR_ENABLED
	XAxiDma_IntrDisable(DMAPtr, XAXIDMA_IRQ_ALL_MASK,
						XAXIDMA_DMA_TO_DEVICE);
#endif // DMA_TX_INTR_ENABLED

	XAxiDma_IntrDisable(DMAPtr, XAXIDMA_IRQ_ALL_MASK,
				XAXIDMA_DEVICE_TO_DMA);

	/* Enable all interrupts */
#ifdef DMA_TX_INTR_ENABLED
	XAxiDma_IntrEnable(DMAPtr, XAXIDMA_IRQ_ALL_MASK,
							XAXIDMA_DMA_TO_DEVICE);
#endif // DMA_TX_INTR_ENABLED

	XAxiDma_IntrEnable(DMAPtr, XAXIDMA_IRQ_ALL_MASK,
							XAXIDMA_DEVICE_TO_DMA);
	
	INFO_PRINTF("DMA interrupts enabled. \r\n");
	return XST_SUCCESS;
}


int DMA_Intr_Init(XAxiDma *DMAPtr,u32 DeviceId)
{
	int Status;
	XAxiDma_Config *Config=NULL;

	Config = XAxiDma_LookupConfig(DeviceId);
	if (!Config) {
		ERROR_PRINTF("No config found for %d\r\n", DeviceId);
		return XST_FAILURE;
	}

	/* Initialize DMA engine */
	Status = XAxiDma_CfgInitialize(DMAPtr, Config);

	if (Status != XST_SUCCESS) {
		ERROR_PRINTF("Initialization failed %d\r\n", Status);
		return XST_FAILURE;
	}

	if(XAxiDma_HasSg(DMAPtr)){
		ERROR_PRINTF("Device configured as SG mode \r\n");
		return XST_FAILURE;
	}

	INFO_PRINTF("DMA engine initialized. \r\n");
	return XST_SUCCESS;
}

/**
 * @brief This function should be called periodically to check if the RX channel is idle.
 *        If idle, start the RX channel.
 * 
 * @param DMAPtr is a pointer to the DMA instance.
 * 
 * @return The status of the process.
 */
int  DMA_continueTransfer(XAxiDma* DMAPtr)
{
	int status = XST_SUCCESS;
	SYS_ARCH_DECL_PROTECT(lev);
	SYS_ARCH_PROTECT(lev);

	if (!first_trans_done) {
		/** Initialize the dma rx/tx queues */
		DMA_InitQueues();
		/** Start the first rx transfer */
		DmaBufferCell* cell = &dma_rx_queue.buffer[dma_rx_queue.rear];
		status = XAxiDma_SimpleTransfer(DMAPtr, (UINTPTR)(cell->data), (u32)DMA_BUFFER_SIZE, XAXIDMA_DEVICE_TO_DMA);
		if (status != XST_SUCCESS) {
			ERROR_PRINTF("DMA_continueTransfer : RX SimpleTransfer failed \r\n");
			SYS_ARCH_UNPROTECT(lev);
			return status;
		}
		first_trans_done = 1;
		SYS_ARCH_UNPROTECT(lev);
		return status;
	}
	
#ifdef DEBUG
	/** Read the DMA register for S2MM channel. */
	volatile int ctrlRegS2MM = XAxiDma_ReadReg(DMAPtr->RegBase, 0x30);
	volatile int ststRegS2MM = XAxiDma_ReadReg(DMAPtr->RegBase, 0x34);
#endif
	if (!XAxiDma_Busy(DMAPtr, XAXIDMA_DEVICE_TO_DMA)) {
		if (DMA_GetQueueLength(&dma_rx_queue) < DMA_QUEUE_LEN) {
			/** If S2MM is not busy and the dma queue is not full, start the next transfer */
			DmaBufferCell* cell = &dma_rx_queue.buffer[dma_rx_queue.rear];
			status = XAxiDma_SimpleTransfer(DMAPtr, (UINTPTR)(cell->data), (u32)DMA_BUFFER_SIZE, XAXIDMA_DEVICE_TO_DMA);
			if (status != XST_SUCCESS) {
				ERROR_PRINTF("DMA_continueTransfer : RX SimpleTransfer failed \r\n");
				SYS_ARCH_UNPROTECT(lev);
				return status;
			}
		}
	}

#ifdef DEBUG
	/** Read the DMA register for MM2S */
	volatile int ctrlRegMM2S = XAxiDma_ReadReg(DMAPtr->RegBase, 0x00);
	volatile int ststRegMM2S = XAxiDma_ReadReg(DMAPtr->RegBase, 0x04);
#endif
#ifdef DMA_TX_INTR_ENABLED
	if (!XAxiDma_Busy(DMAPtr, XAXIDMA_DMA_TO_DEVICE)) {
		TxDone = 1;
	}
#endif // DMA_TX_INTR_ENABLED

	SYS_ARCH_UNPROTECT(lev);
	return status;
}
