#include "PowerPC_EABI_Support/MetroTRK/trk.h"

BOOL gTRKBigEndian;

TRKResult TRK_InitializeNub(void)
{
	TRKResult result;
	TRKResult resultTemp;

	result = TRK_InitializeEndian();

	if (result == TRKSuccess) {
		result = TRKInitializeEventQueue();
	}
	if (result == TRKSuccess) {
		result = TRKInitializeMessageBuffers();
	}
	InitializeProgramEndTrap();
	if (result == TRKSuccess) {
		result = TRKInitializeSerialHandler();
	}
	if (result == TRKSuccess) {
		result = TRKInitializeTarget();
	}
	if (result == TRKSuccess) {

		resultTemp = TRKInitializeIntDrivenUART(1, 0, &gTRKInputPendingPtr);
		TRKTargetSetInputPendingPtr(gTRKInputPendingPtr);
		if (resultTemp != TRKSuccess) {
			result = resultTemp;
		}
	}
	return result;
}

TRKResult TRK_TerminateNub(void)
{
	TRKTerminateSerialHandler();
	return TRKSuccess;
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
