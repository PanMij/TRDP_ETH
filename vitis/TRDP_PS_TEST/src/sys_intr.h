 /*sys_intr.h
 * Created on: 2016骞�11鏈�22鏃�
 * www.osrc.cn
 * www.milinker.com
 * copyright by nan jin mi lian dian zi www.osrc.cn
*/

#ifndef SYS_INTR_H_
#define SYS_INTR_H_

#include "xparameters.h"
#include "xil_exception.h"
#include "xdebug.h"
#include "xscugic.h"
#include "tcp_transmission.h"

#define INTC_DEVICE_ID          XPAR_SCUGIC_SINGLE_DEVICE_ID

#ifdef __cplusplus
extern "C" {
#endif

int Init_Intr_System(XScuGic * IntcInstancePtr);
void Setup_Intr_Exception(XScuGic * IntcInstancePtr);

#ifdef __cplusplus
}
#endif

#endif /* SYS_INTR_H_ */
