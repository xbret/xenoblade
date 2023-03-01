#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"


/*
 * --INFO--
 * Address:	........
 * Size:	000080
 */
void TRKWaitForACK(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800BDD20
 * Size:	000098
 */
s32 TRKDoNotifyStopped(s32 arg0)
{
	s32 sp8;
	s32 spC;
	s32 sp10;
	s32 retval; // r31

	retval = TRKGetFreeBuffer(&spC, &sp10);

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