#include "PowerPC_EABI_Support/MetroTRK/trk.h"

__attribute__((used)) u8 padding[4]; //definitely fake
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