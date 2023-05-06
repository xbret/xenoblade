#include "PowerPC_EABI_Support/MetroTRK/trk.h"

TRKResult TRKTargetContinue(void)
{
	TRKTargetSetStopped(0);
	UnreserveEXI2Port();
	TRKSwapAndGo();
	ReserveEXI2Port();
	return TRKSuccess;
}
