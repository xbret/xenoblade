#include "PowerPC_EABI_Support/MetroTRK/notify.h"
#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"
#include "PowerPC_EABI_Support/MetroTRK/targimpl.h"
#include "PowerPC_EABI_Support/MetroTRK/support.h"


DSError TRKDoNotifyStopped(MessageCommandID cmdId){
	int sp8;
	int spC;
	MessageBuffer* buffer;
	DSError result;

	result = TRKGetFreeBuffer(&spC, &buffer);

	if (result == kNoError) {
		if(cmdId == kDSNotifyStopped){
			TRKTargetAddStopInfo(buffer);
		}else{
			TRKTargetAddExceptionInfo(buffer);
		}
		
		result = TRKRequestSend(buffer, &sp8);

		if(result == kNoError){
			TRKReleaseBuffer(sp8);
		}

		TRKReleaseBuffer(spC);
	}

	return result;
}
