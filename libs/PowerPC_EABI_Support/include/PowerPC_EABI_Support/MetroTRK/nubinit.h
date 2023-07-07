#ifndef TRK_NUBINIT
#define TRK_NUBINIT

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"

#ifdef __cplusplus
extern "C"{
#endif

DSError TRK_InitializeNub(void);
DSError TRK_TerminateNub(void);
void TRK_NubWelcome(void);

#ifdef __cplusplus
}
#endif
#endif
