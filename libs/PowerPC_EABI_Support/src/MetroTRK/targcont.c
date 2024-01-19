#include "PowerPC_EABI_Support/MetroTRK/targcont.h"

DSError TRKTargetContinue(void)
{
	TRKTargetSetStopped(false);
	UnreserveEXI2Port();
	TRKSwapAndGo();
	ReserveEXI2Port();
	return kNoError;
}
