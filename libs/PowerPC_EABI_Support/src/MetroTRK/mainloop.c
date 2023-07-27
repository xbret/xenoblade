#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"
#include "PowerPC_EABI_Support/MetroTRK/dispatch.h"
#include "PowerPC_EABI_Support/MetroTRK/nubevent.h"
#include "PowerPC_EABI_Support/MetroTRK/mainloop.h"
#include "PowerPC_EABI_Support/MetroTRK/serpoll.h"

//unused
void TRK_HandleRequestEvent(void){
}

//unused
void TRKHandleSupportEvent(void){
}

//unused
void TRK_Idle(void){
}

/*
 * Perhaps the switch case takes TRK CMD defines as inputs?
 * As seen in Dolphin/trk.h
 */
void TRK_NubMainLoop(void){
	MessageBuffer* msg;
	NubEvent event;
	BOOL var_r31 = FALSE;
	BOOL var_r30 = FALSE;

	while (var_r31 == FALSE) {
		if (TRKGetNextEvent(&event) != FALSE) {
			var_r30 = FALSE;
			switch (event.fType) {
			case kNullEvent:
				break;
			case kRequestEvent:
				msg = TRKGetBuffer(event.fMessageBufferID);
				TRK_DispatchMessage(msg);
				break;
			case kShutdownEvent:
				var_r31 = TRUE;
				break;
			case kBreakpointEvent:
			case kExceptionEvent:
				TRKTargetInterrupt(&event);
				break;
			case kSupportEvent:
				TRKTargetSupportRequest();
				break;
			}
			TRKDestructEvent(&event);
		} else if (var_r30 == FALSE || *(u8*)gTRKInputPendingPtr != 0) {
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
