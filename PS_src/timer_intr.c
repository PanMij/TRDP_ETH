#include "timer_intr.h"

volatile int TcpTmrFlag;
volatile int tmrFlag100ms, tmrFlag250ms, tmrFlag1000ms;
static volatile int timeStep;

static void TimerIntrHandler(void *CallBackRef)
{

    XScuTimer *TimerInstancePtr = (XScuTimer *) CallBackRef;
    XScuTimer_ClearInterruptStatus(TimerInstancePtr);
	TcpTmrFlag = 1;
	timeStep += 1;

	tmrFlag100ms = timeStep & 0x1;
	tmrFlag250ms = (timeStep & 0x7) == 0x5;
	tmrFlag1000ms = (timeStep & 0x1F) == 0x14;
}

void Timer_start(XScuTimer *TimerPtr)
{
	    XScuTimer_Start(TimerPtr);
	    TcpTmrFlag = 0;
	    timeStep = 0;
	    tmrFlag100ms = 0;
	    tmrFlag250ms = 0;
	    tmrFlag1000ms = 0;
}

void Timer_Setup_Intr_System(XScuGic *GicInstancePtr,XScuTimer *TimerInstancePtr, u16 TimerIntrId)
{
        XScuGic_Connect(GicInstancePtr, TimerIntrId,
                        (Xil_ExceptionHandler)TimerIntrHandler,//set up the timer interrupt
                        (void *)TimerInstancePtr);

        XScuGic_Enable(GicInstancePtr, TimerIntrId);//enable the interrupt for the Timer at GIC
        XScuTimer_EnableInterrupt(TimerInstancePtr);//enable interrupt on the timer
 }

int Timer_init(XScuTimer *TimerPtr,u32 Load_Value,u32 DeviceId)
{
     XScuTimer_Config *TMRConfigPtr;     //timer config
     //缁変焦婀佺�规碍妞傞崳銊ュ灥婵瀵�
     TMRConfigPtr = XScuTimer_LookupConfig(DeviceId);
     XScuTimer_CfgInitialize(TimerPtr, TMRConfigPtr,TMRConfigPtr->BaseAddr);
     //XScuTimer_SelfTest(&Timer);
     //閸旂姾娴囩拋鈩冩殶閸涖劍婀￠敍宀�顫嗛張澶婄暰閺冭泛娅掗惃鍕闁界喍璐烠PU閻ㄥ嫪绔撮崡濠忕礉娑擄拷333MHZ,婵″倹鐏夌拋鈩冩殶1S,閸旂姾娴囬崐闂磋礋1sx(333x1000x1000)(1/s)-1=0x13D92D3F
     XScuTimer_LoadTimer(TimerPtr, Load_Value);//F8F00600+0=reg=F8F00600
     //閼奉亜濮╃憗鍛版祰
     XScuTimer_EnableAutoReload(TimerPtr);//F8F00600+8=reg=F8F00608

     return 1;
}
