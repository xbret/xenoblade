#ifndef TRK_TARGIMPL
#define TRK_TARGIMPL

#include "types.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/nubevent.h"
#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"

#ifdef __cplusplus
extern "C"{
#endif

typedef enum ValidMemoryOptions {
	kValidMemoryReadable,
	kValidMemoryWriteable
} ValidMemoryOptions;

typedef enum MemoryAccessOptions {
	kUserMemory,
	kDebuggerMemory
} MemoryAccessOptions;

u32 __TRK_get_MSR();

void TRKTargetSetStopped(BOOL);
void TRKTargetSetInputPendingPtr(void*);

DSError TRKTargetAccessMemory(void*,u32,size_t*,MemoryAccessOptions,BOOL);
DSError TRKTargetAccessDefault(u32,u32,MessageBuffer*,size_t*,BOOL);
DSError TRKTargetAccessFP(u32,u32,MessageBuffer*,size_t*,BOOL);
DSError TRKTargetAccessExtended1(u32,u32,MessageBuffer*,size_t*,BOOL);
DSError TRKTargetAccessExtended2(u32,u32,MessageBuffer*,size_t*,BOOL);

DSError TRKTargetVersions(u8*);
DSError TRKTargetCheckException();

void TRK_InterruptHandler();
void TRKSwapAndGo();

DSError TRKTargetInterrupt(TRKEvent*);

void TRKTargetAddStopInfo(MessageBuffer*);
void TRKTargetAddExceptionInfo(MessageBuffer*);

DSError TRKTargetSingleStep(u8,BOOL);
DSError TRKTargetStepOutOfRange(u32,u32,BOOL);

u32 TRKTargetGetPC();

DSError TRKTargetSupportRequest();
DSError TRKTargetFlushCache(u32,u32,u32);

BOOL TRKTargetStopped();
void TRKTargetSetStopped(BOOL);
DSError TRKTargetStop();

void TRKTargetSetInputPendingPtr(void*);

#ifdef __cplusplus
}
#endif
#endif
