/*
 *
 * www.osrc.cn
 * www.milinker.com
 * copyright by nan jin mi lian dian zi www.osrc.cn
*/
#ifndef DMA_INTR_H
#define DMA_INTR_H

#include "xaxidma.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xdebug.h"
#include "xscugic.h"
#include "tcp_transmission.h"

/************************** Constant Definitions *****************************/

/*
 * Device hardware build related constants.
 */
#define DMA_DEV_ID		XPAR_AXIDMA_0_DEVICE_ID

#define RX_INTR_ID		XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR
#define TX_INTR_ID	    XPAR_FABRIC_AXI_DMA_0_MM2S_INTROUT_INTR
#define DMA_QUEUE_LEN       200  /// The length of DMA receiving queue
#define DMA_BUFFER_SIZE     1728 /// The address must be aligned to 32 bytes.

/* Timeout loop counter for reset
 */
#define RESET_TIMEOUT_COUNTER	10000

#ifdef __cplusplus
extern "C" {
#endif

extern volatile int TxDone;
extern volatile int packet_trans_done;
extern volatile int first_trans_done;

typedef struct DmaBufferCell {
	int dataLength;
	/** The address must be aligned to 32 bytes because of DMA requirements and cache-line alignment requirements. */
	u8 data[DMA_BUFFER_SIZE] __attribute__((aligned(32)));
} DmaBufferCell;

typedef struct DmaQueue {
	int head;
	int rear;
	int len;
	DmaBufferCell buffer[DMA_QUEUE_LEN];
} DmaQueue;

extern DmaQueue dma_rx_queue;
extern u8 dma_tx_buffer[DMA_BUFFER_SIZE + sizeof(u16_t)];

#if 0
int  DMA_CheckData(int Length, u8 StartValue);
#endif
int  DMA_Setup_Intr_System(XScuGic * IntcInstancePtr,XAxiDma * AxiDmaPtr, u16 TxIntrId, u16 RxIntrId);
int  DMA_Intr_Enable(XScuGic * IntcInstancePtr,XAxiDma *DMAPtr);
int  DMA_Intr_Init(XAxiDma *DMAPtr,u32 DeviceId);
int  DMA_continueTransfer(XAxiDma* DMAPtr);

void DMA_InitQueues(void);
int DMA_EnQueue(DmaQueue *queue, int length);
int DMA_DeQueue(DmaQueue *queue);
DmaBufferCell* DMA_GetFront(DmaQueue *queue);
int DMA_GetQueueLength(DmaQueue *queue);

#ifdef __cplusplus
}
#endif

#endif
