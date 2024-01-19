#ifndef TRK_TARGIMPL
#define TRK_TARGIMPL

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"
#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/nubevent.h"
#include "PowerPC_EABI_Support/MetroTRK/msgbuf.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Board/dolphin/target.h"

typedef enum ValidMemoryOptions {
	kValidMemoryReadable,
	kValidMemoryWriteable
} ValidMemoryOptions;

typedef enum MemoryAccessOptions {
	kUserMemory,
	kDebuggerMemory
} MemoryAccessOptions;

/*
enum
{
    kInvalidMemory = 0x0700,
    kInvalidRegister,
    kCWDSException,
    kUnsupportedError,
    kInvalidProcessId,
    kInvalidThreadId,
    kOsError
};
*/

typedef struct DSVersions {
    ui8 kernelMajor;
    ui8 kernelMinor;
    ui8 protocolMajor;
    ui8 protocolMinor;
} DSVersions;

typedef struct DSCPUType {
    ui8 cpuMajor;
    ui8 cpuMinor;
    ui8 bigEndian;
    ui8 defaultTypeSize;
    ui8 fpTypeSize;
    ui8 extended1TypeSize;
    ui8 extended2TypeSize;
} DSCPUType;

void TRKTargetSetStopped(bool);
void TRKTargetSetInputPendingPtr(void*);

DSError TRKTargetAccessMemory(void*,void*,size_t*,MemoryAccessOptions,bool);
DSError TRKTargetAccessDefault(ui32,ui32,MessageBuffer*,size_t*,bool);
DSError TRKTargetAccessFP(ui32,ui32,MessageBuffer*,size_t*,bool);
DSError TRKTargetAccessExtended1(ui32,ui32,MessageBuffer*,size_t*,bool);
DSError TRKTargetAccessExtended2(ui32,ui32,MessageBuffer*,size_t*,bool);

DSError TRKTargetVersions(DSVersions*);
DSError TRKTargetSupportMask(DSSupportMask*);
//DSError TRKTargetCPUType(DSCPUType*);
DSError TRKTargetCheckException();
DSError TRKInitializeTarget();
DSError TRKTargetContinue();

void TRKSwapAndGo();

DSError TRKTargetInterrupt(NubEvent*);

DSError TRKTargetAddStopInfo(MessageBuffer*);
void TRKTargetAddExceptionInfo(MessageBuffer*);

DSError TRKTargetSingleStep(ui8,bool);
DSError TRKTargetStepOutOfRange(ui32,ui32,bool);

ui32 TRKTargetGetPC();

DSError TRKTargetSupportRequest();
DSError TRKTargetFlushCache(ui8,void*,void*);

bool TRKTargetStopped();
void TRKTargetSetStopped(bool);
DSError TRKTargetStop();

void *TRKTargetTranslate(ui32*);

void TRK_InterruptHandler(ui16);

#if TRK_TRANSPORT_INT_DRIVEN
void TRKTargetSetInputPendingPtr(void*);
#endif


/*
** Define aliases for the functions which have both OS and non-OS
** variants.  Each alias references the variant which is appropriate
** for the current protocol level.
*/
#if DS_PROTOCOL < DS_PROTOCOL_RTOS

    #define XTargetAccessMemory       TRKTargetAccessMemory
    #define XTargetAccessDefault      TRKTargetAccessDefault
    #define XTargetAccessFP           TRKTargetAccessFP
    #define XTargetAccessExtended1    TRKTargetAccessExtended1
    #define XTargetAccessExtended2    TRKTargetAccessExtended2
    #define XTargetContinue           TRKTargetContinue
    #define XTargetSingleStep         TRKTargetSingleStep
    #define XTargetStepOutOfRange     TRKTargetStepOutOfRange
    #define XTargetGetPC              TRKTargetGetPC
    #define XTargetStopped            TRKTargetStopped
    #define XTargetStop               TRKTargetStop
    #define XTargetAddStopInfo        TRKTargetAddStopInfo
    #define XTargetAddExceptionInfo   TRKTargetAddExceptionInfo

#else /* #if DS_PROTOCOL < DS_PROTOCOL_RTOS */

    #define XTargetAccessMemory       OsTargetAccessMemory
    #define XTargetAccessDefault      OsTargetAccessDefault
    #define XTargetAccessFP           OsTargetAccessFP
    #define XTargetAccessExtended1    OsTargetAccessExtended1
    #define XTargetAccessExtended2    OsTargetAccessExtended2
    #define XTargetContinue           OsTargetContinue
    #define XTargetSingleStep         OsTargetSingleStep
    #define XTargetStepOutOfRange     OsTargetStepOutOfRange
    #define XTargetGetPC              OsTargetGetPC
    #define XTargetStopped            OsTargetStopped
    #define XTargetStop               OsTargetStop
    #define XTargetAddStopInfo        OsTargetAddStopInfo
    #define XTargetAddExceptionInfo   OsTargetAddExceptionInfo

#endif /* #if DS_PROTOCOL < DS_PROTOCOL_RTOS */

#endif
