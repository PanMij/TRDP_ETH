/*
 *
 * www.osrc.cn
 * www.milinker.com
 * copyright by nan jin mi lian dian zi www.osrc.cn
*/

#ifndef TIMER_INTR_H_
#define TIMER_INTR_H_

#include <stdio.h>
#include "xadcps.h"
#include "xil_types.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "xscutimer.h"
#include "tcp_transmission.h"

#ifdef __cplusplus
extern "C" {
#endif

extern volatile int TcpTmrFlag;
extern volatile int tmrFlag100ms, tmrFlag250ms, tmrFlag1s, tmrFlag5s;

//timer info
#define TIMER_DEVICE_ID     XPAR_XSCUTIMER_0_DEVICE_ID
#define TIMER_IRPT_INTR     XPAR_SCUTIMER_INTR

void Timer_start(XScuTimer *TimerPtr);
void Timer_Setup_Intr_System(XScuGic *GicInstancePtr,XScuTimer *TimerInstancePtr, u16 TimerIntrId);
int Timer_init(XScuTimer *TimerPtr,u32 Load_Value,u32 DeviceId);

#ifdef __cplusplus
}
#endif

#endif /* TIMER_INTR_H_ */
