#ifndef TRK_MSGHNDLR
#define TRK_MSGHNDLR

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"

#ifdef __cplusplus
extern "C"{
#endif

BOOL GetTRKConnected();
DSError TRK_DoConnect(MessageBuffer*);
DSError TRKDoDisconnect(MessageBuffer*);
DSError TRKDoReset(MessageBuffer*);
DSError TRKDoVersions(MessageBuffer*);
DSError TRKDoSupportMask(MessageBuffer*);
DSError TRKDoOverride(MessageBuffer*);
DSError TRKDoReadMemory(MessageBuffer*);
DSError TRKDoWriteMemory(MessageBuffer*);
DSError TRKDoReadRegisters(MessageBuffer*);
DSError TRKDoWriteRegisters(MessageBuffer*);
DSError TRKDoContinue(MessageBuffer*);
DSError TRKDoStep(MessageBuffer*);
DSError TRKDoStop(MessageBuffer*);
DSError TRKDoSetOption(MessageBuffer*);


#ifdef __cplusplus
}
#endif
#endif
