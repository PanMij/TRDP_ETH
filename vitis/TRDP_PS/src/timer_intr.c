/*
 *
 * www.osrc.cn
 * www.milinker.com
 * copyright by nan jin mi lian dian zi www.osrc.cn
*/

#include "timer_intr.h"

volatile int TcpTmrFlag;
volatile int tmrFlag100ms, tmrFlag250ms, tmrFlag1s, tmrFlag5s;
static volatile int timeStep;

static void TimerIntrHandler(void *CallBackRef)
{

    XScuTimer *TimerInstancePtr = (XScuTimer *) CallBackRef;
    XScuTimer_ClearInterruptStatus(TimerInstancePtr);
	TcpTmrFlag = 1;
	timeStep += 1;

	tmrFlag100ms = (timeStep % 2 == 0);
	tmrFlag250ms = (timeStep % 5 == 0);
	tmrFlag1s = (timeStep % 20 == 0);
	tmrFlag5s = (timeStep % 100 == 0);
}

void Timer_start(XScuTimer *TimerPtr)
{
	    XScuTimer_Start(TimerPtr);
	    TcpTmrFlag = 0;
	    timeStep = 0;
	    tmrFlag100ms = 0;
	    tmrFlag250ms = 0;
	    tmrFlag1s = 0;
	    tmrFlag5s = 0;
        xil_printf("Timer started. \r\n");
}

void Timer_Setup_Intr_System(XScuGic *GicInstancePtr,XScuTimer *TimerInstancePtr, u16 TimerIntrId)
{
    XScuGic_Connect(GicInstancePtr, TimerIntrId,
                    (Xil_ExceptionHandler)TimerIntrHandler,//set up the timer interrupt
                    (void *)TimerInstancePtr);

    XScuGic_Enable(GicInstancePtr, TimerIntrId);//enable the interrupt for the Timer at GIC
    XScuTimer_EnableInterrupt(TimerInstancePtr);//enable interrupt on the timer

    xil_printf("Timer interrupts enabled. \r\n");
}

int Timer_init(XScuTimer *TimerPtr,u32 Load_Value,u32 DeviceId)
{
    XScuTimer_Config *TMRConfigPtr;     //timer config
    //缂佸鐒﹀﹢浣猴拷瑙勭濡炲倿宕抽妸銉ョ仴濠殿喖顑呯�碉拷
    TMRConfigPtr = XScuTimer_LookupConfig(DeviceId);
    XScuTimer_CfgInitialize(TimerPtr, TMRConfigPtr,TMRConfigPtr->BaseAddr);
    //XScuTimer_SelfTest(&Timer);
    //闁告梻濮惧ù鍥╂媼閳╁啯娈堕柛娑栧妽濠�锟犳晬瀹�锟介～鍡涘嫉婢跺﹦鏆伴柡鍐硾濞呮帡鎯冮崟顒侇槯闂佺晫鍠嶇拹鐑燩U闁汇劌瀚粩鎾础婵犲繒绀夊☉鎿勬嫹333MHZ,濠碘�冲�归悘澶屾媼閳╁啯娈�1S,闁告梻濮惧ù鍥磹闂傜绀�1sx(333x1000x1000)(1/s)-1=0x13D92D3F
    XScuTimer_LoadTimer(TimerPtr, Load_Value);//F8F00600+0=reg=F8F00600
    //闁煎浜滄慨鈺冩啑閸涚増绁�
    XScuTimer_EnableAutoReload(TimerPtr);//F8F00600+8=reg=F8F00608

    xil_printf("Timer initialized. \r\n");
    return XST_SUCCESS;
}
