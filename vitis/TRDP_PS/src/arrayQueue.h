#ifndef __ARRAYQUEUE_H__
#define __ARRAYQUEUE_H__

#include "lwip/pbuf.h"

#define QUEUE_POOL_SIZE (1000)                 //!< The pool size of Queue unit (DFABC).
#define REAL_QUEUE_SIZE (100)                  //!< The real size of the queue.
#define QUEUE_SIZE (REAL_QUEUE_SIZE + 1)       //!< A redundance space is needed to distinguish empty queue and full queue.
#define PAKET_LENGTH (4096)                    //!< If this value is modified, the same value in tcp_transmission.h must be modified as well.

#ifdef __cplusplus
extern "C" {
#endif

/** The structure of DFABC. */
typedef struct DFABC {
	struct DFABC* _next;                         //!< pointer to the next DFABC.

	const void* ethif;                           //!< pointer to related EthIf.
    struct pbuf* p;                              //!< pointer to the pbuf chain.
} DFABC;

 /** The structure of the queue. */
typedef struct {
	int rear;                       //!< index of the queue rear
	int head;                       //!< index of the queue head.
	int qlen;				        //!< the length of the queue, which is the number of elements in the queue.
	DFABC* elemData[QUEUE_SIZE];    //!< the data part of arrayQueue
} arrayQueue;

void initQueuePool();
DFABC* dfabc_malloc(unsigned char* data, int len, const void* ethif = NULL);
DFABC* dfabc_malloc_from_pbuf(struct pbuf* p, const void* ethif = NULL);
int dfabc_take(DFABC* dfabcPtr, struct pbuf* p);
void dfabc_free(DFABC* dfabc);

int initQueue(arrayQueue* Q);
int enQueue(arrayQueue* Q, DFABC* dfabcPtr);
int enQueue_pbuf(arrayQueue* Q, struct pbuf* p, const void* ethif = NULL);
DFABC* getFront(const arrayQueue* Q);
int deQueue(arrayQueue* Q);
int clearQueue(arrayQueue* Q);
int isEmpty(const arrayQueue* Q);
int lenQueue(const arrayQueue* Q);

#ifdef __cplusplus
}
#endif

#endif
