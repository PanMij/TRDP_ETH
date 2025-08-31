#ifndef __RETRANSMISSION_H__
#define __RETRANSMISSION_H__

#include "lwip/udp.h"
#include "Structures.h"
#include "arrayQueue.h"
#include <algorithm>

#define FCS_LENGTH (4)
#define CRC_LENGTH (2)
#define PDPDU_HEADER_LENGTH (40)
#define MDPDU_HEADER_LENGTH (116)

s8 PDU2DataFrame(const PD_PDU& pdpdu, const int& ethNum, RecProcDataFrame* dataFrame);
s8 PDU2DataFrame(const MD_PDU& mdpdu, const int& ethNum, udp_pcb* pcb, RecMessageDataFrame* dataFrame);
s8 DataFrame2PDU(BYTE* &data, const char msgType[2]);
s8 DataFrame2PDU(BYTE* &data, const char msgType[2], const s32 replyStatus,
				 const char* sourceUri, const char* destinationUri);

/**
 * @brief Swap big endian and little endian.
 * @param[in] data is the number to be swapped.
 * @return The swapped number.
 */
template<typename T>
inline T reverse(const T& data) {
	T res = data;
	int n = sizeof(T);
	BYTE *p1 = (BYTE*)&res;
	std::reverse(p1, p1 + n);
	return res;
}

/**
 * @brief Concatenate some consecutive bytes to a number (u8, u16, u32, ...).
 * @param[in] start is the pointer to the first byte.
 * @return An integer converted from the bytes.
 */
template<typename T>
inline T catBytes(const BYTE* start) {
	return *((T*)start);
}

/**
 * @brief Fill corresponding big endian bytes with their little endian bytes.
 * @param[in] start is a pointer to the first byte.
 * @param[in] data is the number to be filled with.
 * @return None.
 */
template<typename T>
inline void fillBytes(BYTE* start, const T& data) {
	int n = sizeof(T);
	while (n > 0) {
		*(start++) = data >> (--n * 8);
	}
}

#endif
