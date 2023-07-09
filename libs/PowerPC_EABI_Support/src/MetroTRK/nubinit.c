#include "PowerPC_EABI_Support/MetroTRK/nubinit.h"
#include "PowerPC_EABI_Support/MetroTRK/serpoll.h"

extern DSError TRKInitializeTarget();

BOOL gTRKBigEndian;

DSError TRK_InitializeNub(void)
{
	DSError result;
	DSError resultTemp;

	result = TRK_InitializeEndian();

	if (result == kNoError) {
		result = TRKInitializeEventQueue();
	}
	if (result == kNoError) {
		result = TRK_InitializeMessageBuffers();
	}
	InitializeProgramEndTrap();
	if (result == kNoError) {
		result = TRKInitializeSerialHandler();
	}
	if (result == kNoError) {
		result = TRKInitializeTarget();
	}
	if (result == kNoError) {

		resultTemp = TRK_InitializeIntDrivenUART(1, 0, &gTRKInputPendingPtr);
		TRKTargetSetInputPendingPtr(gTRKInputPendingPtr);
		if (resultTemp != kNoError) {
			result = resultTemp;
		}
	}
	return result;
}

DSError TRK_TerminateNub(void)
{
	TRKTerminateSerialHandler();
	return kNoError;
}

void TRK_NubWelcome(void)
{
	TRK_board_display("MetroTRK for Revolution v0.4");
	return;
}

BOOL TRK_InitializeEndian(void)
{
	u8 bendian[4];
	BOOL result = FALSE;
	gTRKBigEndian = TRUE;

	bendian[0] = 0x12;
	bendian[1] = 0x34;
	bendian[2] = 0x56;
	bendian[3] = 0x78;

	if (*(u32*)bendian == 0x12345678) {
		gTRKBigEndian = TRUE;
	} else if (*(u32*)bendian == 0x78563412) {
		gTRKBigEndian = FALSE;
	} else {
		result = TRUE;
	}
	return result;
}
