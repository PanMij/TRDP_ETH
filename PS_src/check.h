#ifndef __CHECK_H__
#define __CHECH_H__

typedef unsigned long UNSIGNED32;
typedef unsigned short UNSIGNED16;
typedef unsigned char UNSIGNED8;

#ifdef __cplusplus
extern "C" {
#endif

UNSIGNED32 fcs32(UNSIGNED8 *buf, UNSIGNED32 len, UNSIGNED32 fcs);
UNSIGNED16 crc16(const unsigned char *buf, UNSIGNED32 len);

#ifdef __cplusplus
}
#endif

#endif
