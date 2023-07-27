#ifndef TRK_SERPOLL
#define TRK_SERPOLL

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

#ifdef __cplusplus
extern "C"{
#endif

extern void* gTRKInputPendingPtr;

void TRKGetInput();
void TRKProcessInput(int);
DSError TRKInitializeSerialHandler();
DSError TRKTerminateSerialHandler();

#ifdef __cplusplus
}
#endif
#endif
