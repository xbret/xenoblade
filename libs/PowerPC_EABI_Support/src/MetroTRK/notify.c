#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"


int TRKDoNotifyStopped(int arg0){
	int sp8;
	int spC;
	int sp10;
	int retval; // r31

	retval = TRKGetFreeBuffer(&spC, (MessageBuffer*)&sp10);

	if (retval == 0) {
		if (arg0 == 0x90) {
			TRKTargetAddStopInfo(sp10);
		} else {
			TRKTargetAddExceptionInfo(sp10);
		}
		
		retval = TRKRequestSend(sp10, &sp8);

		if (retval == 0) {
			TRKReleaseBuffer(sp8);
		}
		TRKReleaseBuffer(spC);
	}
	return retval;
}
