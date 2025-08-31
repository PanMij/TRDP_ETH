// ========================================================
// Circular Queue
// ========================================================

#include <string.h>
#include "arrayQueue.h"
#include "xil_printf.h"

static DFABC array_mem_pool[QUEUE_POOL_SIZE + 1];
static DFABC* poolHead = NULL;

/**
 * @brief Initialize the queue pool.
 */
void initQueuePool()
{
    memset(array_mem_pool, 0, sizeof(array_mem_pool));
    array_mem_pool[QUEUE_POOL_SIZE]._next = NULL;
    for (int i = 0; i < QUEUE_POOL_SIZE; ++i) {
        array_mem_pool[i]._next = &array_mem_pool[i + 1];
    }
    poolHead = &array_mem_pool[0];
}

/**
 * @brief    Allocate a DFABC from the queue pool and return the pointer to the DFABC.
 * @param[in] len is the length of the data.
 * @param[in] ethif is the pointer to the EthIf from which the data is received.
 * @return   The pointer to the allocated DFABC.
 */
DFABC* dfabc_malloc(int len, const void* ethif)
{
    if (poolHead->_next == NULL) {
        xil_printf("queue_malloc : Queue pool has run out.\r\n");
        return NULL;
    } else if (len > PAKET_LENGTH) {
    	xil_printf("queue_malloc : arg 'len' is larger than PAKET_LENGTH. \r\n");
    	return NULL;
    }

    DFABC* temp = poolHead->_next;
    poolHead->_next = temp->_next;

    temp->length = len;
    temp->ethif = ethif;

    return temp;
}

/**
 * @brief Copy the specific data to the data buffer of the DFABC.
 * @param[in] dfabcPtr is the pointer to the DFABC.
 * @param[in] data is the data to be copied into the data buffer.
 * @return The status of the process.
 */
int dfabc_take(DFABC* dfabcPtr, const unsigned char* data, int len)
{
	if (data == NULL) {
		xil_printf("dfabc_take : Input arg 'data' is NULL. \r\n");
		return -1;
	}

	if ((unsigned int)len != dfabcPtr->length) {
		xil_printf("dfabc_take : Input arg 'length' is not equal to dfabc->length. \r\n");
		return -1;
	}

	memcpy(dfabcPtr->buf, data, len);
	return 0;
}

/**
 * @brief Copy the specific data in the pbuf to the data buffer of the DFABC.
 * @param[in] dfabcPtr is the pointer to the DFABC.
 * @param[in] p        is the pointer to the pbuf.
 * @return The status of the process.
 */
int dfabc_take_from_pbuf(DFABC* dfabcPtr, struct pbuf* p)
{
	if (p == NULL) {
		xil_printf("dfabc_take_from_pbuf : Input pbuf is NULL. \r\n");
		return -1;
	}

	if (p->tot_len != dfabcPtr->length) {
		xil_printf("dfabc_take_from_pbuf : Input pbuf's length is not equal to dfabc->length. \r\n");
		return -1;
	}

	u16_t offset = 0;
	while (p != NULL) {
		memcpy(dfabcPtr->buf + offset, p->payload, p->len);
		offset += p->len;
		p = p->next;
	}
	return 0;
}

/**
 * @brief           Free the specific DFABC. Put it back to the queue pool.
 * @param[in] dfabc is the pointer to the DFABC to be freed.
 * @return None.
 */
void dfabc_free(DFABC* dfabc)
{
    if (dfabc != NULL) {
        dfabc->ethif = NULL;
        dfabc->_next = poolHead->_next;
        poolHead->_next = dfabc;
    }
}

/**
 * @brief          Initialize the queue.
 * @param[in] Q    The queue to be initialized.
 * @return         The status of the initialization. 
 * @retval         0: successful, -1: failed.
 */
int initQueue(arrayQueue* Q)
{
    if (Q != NULL) {
    	memset(Q, 0, sizeof(arrayQueue));
        Q->head = 0;
        Q->rear = 0;
        return 0;
    }
    return -1;
}

/**
 * @brief              Add a specific DFABC at the rear of the queue. 
 * @param[in] Q        The queue to which the DFABC is added.
 * @param[in] dfabcPtr The pointer to the DFABC that is to be added.   
 * @return             The status of enqueue. 
 * @retval             0: successful, -1: failed.
 */
int enQueue(arrayQueue* Q, DFABC* dfabcPtr)
{
    if (dfabcPtr != NULL) {
        /** Check whether the queue is full or not. */
        if ((Q->rear + 1) % QUEUE_SIZE - Q->head != 0) {
            Q->elemData[Q->rear] = dfabcPtr;
            Q->rear = (Q->rear + 1) % QUEUE_SIZE;
            return 0;
        } else {
        	xil_printf("enQueue at 0x%X : overflows.\r\n", Q);
        }
    } else {
    	xil_printf("enQueue at 0x%X : pointer dfabcPtr is NULL.\r\n", Q);
    }
    return -1;
}

#if 0
/**
 * @brief              Add a specific DFABC at the rear of the queue from a pbuf chain.
 * @param[in] Q        The queue to which the DFABC is added.
 * @param[in] p        The pointer to the pbuf chain which is to be added.
 * @return             The status of enqueue.
 * @retval             0: successful, -1: failed.
 */
int enQueue_pbuf(arrayQueue* Q, struct pbuf* p, const void* ethif)
{
	if (p != NULL && p->tot_len <= PAKET_LENGTH) {
		if ((Q->rear + 1) % QUEUE_SIZE - Q->head != 0) {
			u16 totalLen = p->tot_len;
			Q->elemData[Q->rear].ethif = ethif;
			Q->elemData[Q->rear].length = totalLen;

			unsigned char* cur = Q->elemData[Q->rear].buf;
			while (p != NULL) {
				memcpy(cur, p->payload, p->len);
				cur += p->len;
				p = p->next;
			}
			cur = NULL;

			Q->rear = (Q->rear + 1) % QUEUE_SIZE;
			return 0;
		} else {
			xil_printf("enQueue_pbuf at 0x%p : overflows. \r\n", Q);
		}
	} else {
		xil_printf("enQueue_pbuf at 0x%p : pointer is NULL or data length is greater than %d. \r\n", Q, PAKET_LENGTH);
	}
	return -1;
}
#endif

/**
 * @brief       Get the element at the head of the queue.
 * @param[in] Q is the specific queue.
 * @return      Return the pointer to the dfabc at the head if the queue is not empty, otherwise NULL.
 */
DFABC* getFront(const arrayQueue* Q)
{
	DFABC* dfabcPtr = NULL;
	if (!isEmpty(Q)) {
		dfabcPtr = Q->elemData[Q->head];
	} else {
		xil_printf("getFront at 0x%X : queue is empty. \r\n", Q);
	}
	return dfabcPtr;
}

/**
 * @brief               Pop a specific DFABC at the head of the queue.
 * @param[in] Q         The queue from which the DFABC is popped.
 * @return              The status of dequeue. 
 * @retval              0: successful, -1: failed.
 */
int deQueue(arrayQueue* Q)
{
	if (!isEmpty(Q)) {
		dfabc_free(Q->elemData[Q->head]);
		Q->elemData[Q->head] = NULL;
		Q->head = (Q->head + 1) % QUEUE_SIZE;
		return 0;
	} else {
		xil_printf("deQueue at 0x%X : queue is empty. \r\n", Q);
	}
    return -1;
}

/**
 * @brief              Remove all elements from the queue.
 * @param[in] Q        The queue that needs to be cleared. 
 * @return             The status of clearing the queue.
 * @retval             0: successful, -1: failed.
 */
int clearQueue(arrayQueue* Q)
{
	for (int i = 0; i < QUEUE_SIZE; ++i) {
		dfabc_free(Q->elemData[i]);
		Q->elemData[i] = NULL;
	}
    Q->head = 0;
    Q->rear = 0;
    return 0;
}

/**
 * @brief       Check whether the queue is empty or not.
 * @param[in] Q Check this queue.
 * @return      None.
 */
int isEmpty(const arrayQueue* Q)
{
	return Q->head == Q->rear;
}

/**
 * @brief       Calculate the length of the queue.
 * @param[in] Q is a pointer to the queue.
 * @return      the length of the specific queue.
 */
int lenQueue(const arrayQueue* Q)
{
    return (QUEUE_SIZE + Q->rear - Q->head) % QUEUE_SIZE;
}
