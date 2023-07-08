#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"
#include "PowerPC_EABI_Support/MetroTRK/dispatch.h"
#include "PowerPC_EABI_Support/MetroTRK/nubevent.h"
#include "PowerPC_EABI_Support/MetroTRK/mainloop.h"
#include "PowerPC_EABI_Support/MetroTRK/serpoll.h"

//unused
void TRKHandleRequestEvent(void){
}

//unused
void TRKHandleSupportEvent(void){
}

//unused
void TRKIdle(void){
}

/*
 * Perhaps the switch case takes TRK CMD defines as inputs?
 * As seen in Dolphin/trk.h
 */
void TRKNubMainLoop(void)
{
	MessageBuffer* msg;
	TRKEvent sp8;
	BOOL var_r31;
	BOOL var_r30;

	var_r31 = FALSE;
	var_r30 = FALSE;
	while (var_r31 == FALSE) {
		if (TRKGetNextEvent(&sp8) != FALSE) {
			var_r30 = FALSE;
			switch (sp8.mEventType) {
			case 0:
				break;
			case 2:
				msg = TRKGetBuffer(sp8.mBufferIndex);
				TRKDispatchMessage(msg);
				break;
			case 1:
				var_r31 = TRUE;
				break;
			case 3:
			case 4:
				TRKTargetInterrupt(&sp8);
				break;
			case 5:
				TRKTargetSupportRequest();
				break;
			}
			TRKDestructEvent(&sp8);
		} else if ((var_r30 == FALSE) || (*(u8*)gTRKInputPendingPtr != '\0')) {
			var_r30 = TRUE;
			TRKGetInput();
		} else {
			if (TRKTargetStopped() == FALSE) {
				TRKTargetContinue();
			}
			var_r30 = FALSE;
		}
	}
}
