#include "PowerPC_EABI_Support/MetroTRK/main_TRK.h"
#include "PowerPC_EABI_Support/MetroTRK/mainloop.h"

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
