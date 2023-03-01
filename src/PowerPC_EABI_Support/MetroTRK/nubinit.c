#include "PowerPC_EABI_Support/MetroTRK/trk.h"

BOOL gTRKBigEndian;

TRKResult TRKInitializeNub(void)
{
	TRKResult TVar1;
	TRKResult TVar2;

	TVar1 = TRK_InitializeEndian();

	if (TVar1 == TRKSuccess) {
		TVar1 = TRKInitializeEventQueue();
	}
	if (TVar1 == TRKSuccess) {
		TVar1 = TRKInitializeMessageBuffers();
	}
	InitializeProgramEndTrap();
	if (TVar1 == TRKSuccess) {
		TVar1 = TRKInitializeSerialHandler();
	}
	if (TVar1 == TRKSuccess) {
		TVar1 = TRKInitializeTarget();
	}
	if (TVar1 == TRKSuccess) {

		TVar2 = TRKInitializeIntDrivenUART(1, 0, &gTRKInputPendingPtr);
		TRKTargetSetInputPendingPtr(gTRKInputPendingPtr);
		if (TVar2 != TRKSuccess) {
			TVar1 = TVar2;
		}
	}
	return TVar1;
}

extern TRKResult TRKTerminateSerialHandler(void);
TRKResult TRKTerminateNub(void)
{

	TRKTerminateSerialHandler();
	return TRKSuccess;
}

extern void TRK_board_display(char*);
void TRKNubWelcome(void)
{

	TRK_board_display("MetroTRK for Revolution v0.4");
	return;
}

BOOL TRK_InitializeEndian(void)
{
	u8 bendian[4];
	BOOL result   = FALSE;
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
