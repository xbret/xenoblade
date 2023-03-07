#ifndef RVL_SDK_OS_ERROR_H
#define RVL_SDK_OS_ERROR_H
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

// Forward declarations
typedef struct OSContext;

#define OSError(...) OSPanic(__FILE__, __LINE__, __VA_ARGS__)
#define OSAssert(exp, ...)                                                     \
    if (!(exp))                                                                \
    OSPanic(__FILE__, __LINE__, __VA_ARGS__)

typedef enum {
    OS_ERR_SYSTEM_RESET,
    OS_ERR_MACHINE_CHECK,
    OS_ERR_DSI,
    OS_ERR_ISI,
    OS_ERR_EXT_INTERRUPT,
    OS_ERR_ALIGNMENT,
    OS_ERR_PROGRAM,
    OS_ERR_FP_UNAVAIL,
    OS_ERR_DECREMENTER,
    OS_ERR_SYSTEM_CALL,
    OS_ERR_TRACE,
    OS_ERR_PERF_MONITOR,
    OS_ERR_IABR,
    OS_ERR_SMI,
    OS_ERR_THERMAL_INT,
    OS_ERR_PROTECTION,
    OS_ERR_FP_EXCEPTION,

    OS_ERR_MAX
} OSErrorType;

typedef void (*OSErrorHandler)(u8, struct OSContext*, u32, u32, ...);

extern OSErrorHandler __OSErrorTable[OS_ERR_MAX];
extern u32 __OSFpscrEnableBits;

DECL_WEAK void OSReport(const char*, ...);
DECL_WEAK void OSPanic(const char*, int, const char*, ...);

OSErrorHandler OSSetErrorHandler(u16, OSErrorHandler);
void __OSUnhandledException(u8, struct OSContext*, u32, u32);

#ifdef __cplusplus
}
#endif
#endif
