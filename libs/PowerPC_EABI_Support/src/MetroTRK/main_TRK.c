#include "PowerPC_EABI_Support/MetroTRK/trk.h"

static s32 TRK_mainError;

int TRK_main(void)
{
	TRK_mainError = TRK_InitializeNub();

	if (!TRK_mainError) {
		TRK_NubWelcome();
		TRKNubMainLoop();
	}

	TRK_mainError = TRK_TerminateNub();

	return TRK_mainError;
}
