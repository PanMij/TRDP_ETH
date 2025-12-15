#include "reset.h"

void PsSoftwareReset(void)
{
	Xil_Out32(SLCR_UNLOCK_ADDR, UNLOCK_KEY); //解锁SLCR寄存器

	Xil_Out32(FPGA_RST_CTRL_REG, PL_RST_MASK); //PL复位
	// 延时确保复位有效
	volatile int i;
	for (i = 0; i < 1000; i++);
	Xil_Out32(FPGA_RST_CTRL_REG, 0x0); //释放PL复位

	Xil_Out32(PSS_RST_CTRL_REG, PSS_RST_MASK); //PS复位
}
