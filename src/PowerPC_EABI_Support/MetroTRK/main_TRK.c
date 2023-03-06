#include "PowerPC_EABI_Support/MetroTRK/trk.h"

static s32 TRK_mainError;

int TRK_main(void)
{
	TRK_mainError = TRKInitializeNub();

	if (!TRK_mainError) {
		TRKNubWelcome();
		TRKNubMainLoop();
	}

	TRK_mainError = TRKTerminateNub();

	return TRK_mainError;
}