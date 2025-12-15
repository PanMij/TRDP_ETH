#ifndef __RESET_H__
#define __RESET_H__

#include "xil_io.h"

#define SLCR_UNLOCK_ADDR 0xF8000008 //SLCR_UNLOCK
#define PSS_RST_CTRL_REG 0xF8000200 //PSS_RST_CTRL
#define FPGA_RST_CTRL_REG 0xF8000240 //FPGA_RST_CTRL
#define UNLOCK_KEY 0xDF0D
#define PSS_RST_MASK 0x01
#define PL_RST_MASK 0x01

#ifdef __cplusplus
extern "C" {
#endif

void PsSoftwareReset(void);

#ifdef __cplusplus
}
#endif

#endif /* __RESET_H__ */
