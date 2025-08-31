#include "reset.h"

void PsSoftwareReset(void)
{
	Xil_Out32(SLCR_UNLOCK_ADDR, UNLOCK_KEY); 
	Xil_Out32(PSS_RST_CTRL_REG, PSS_RST_MASK); 
}
