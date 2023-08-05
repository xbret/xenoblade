#ifndef RVL_SDK_DVD_BROADWAY_H
#define RVL_SDK_DVD_BROADWAY_H
#include "types.h"
#include "revolution/ESP.h"
#ifdef __cplusplus
extern "C" {
#endif

// Forward declarations
typedef struct DVDDiskID;
typedef struct DVDDriveInfo;
typedef struct OSAlarm;

/**
 * https://wiibrew.org/wiki//dev/di
 * Names adjusted to be closer to those seen in assertions
 */
typedef enum {
    DVD_INTTYPE_TC = (1 << 0),   //!< Transaction callback?
    DVD_INTTYPE_DE = (1 << 1),   //!< Drive error
    DVD_INTTYPE_CVR = (1 << 2),  //!< Something with DVD cover
    DVD_INTTYPE_BR = (1 << 3),   //!< Break requested
    DVD_INTTYPE_TIME = (1 << 4), //!< Time out
    DVD_INTTYPE_SERR = (1 << 5), //!< Security error
    DVD_INTTYPE_VERR = (1 << 6), //!< Verify error
    DVD_INTTYPE_ARGS = (1 << 7), //!< Bad arguments
} DVDLowIntType;

typedef struct DVDVideoReportKey {
    u8 data[32];
} DVDVideoReportKey;

typedef void (*DVDLowCallback)(u32 intType);

BOOL DVDLowInit(void);
BOOL DVDLowReadDiskID(struct DVDDiskID* out, DVDLowCallback callback);
BOOL DVDLowOpenPartition(const u32 offset, const ESTicket* const ticket,
u32 certsSize, const u8* const certs, ESTitleMeta* tmd, DVDLowCallback callback);
BOOL DVDLowClosePartition(DVDLowCallback callback);
BOOL DVDLowUnencryptedRead(void* dst, u32 size, u32 offset, DVDLowCallback callback);
BOOL DVDLowStopMotor(BOOL eject, BOOL kill, DVDLowCallback callback);
BOOL DVDLowInquiry(struct DVDDriveInfo* out, DVDLowCallback callback);
BOOL DVDLowRequestError(DVDLowCallback callback);
BOOL DVDLowSetSpinupFlag(BOOL enable);
BOOL DVDLowReset(DVDLowCallback callback);
BOOL DVDLowAudioBufferConfig(BOOL enable, u32 size, DVDLowCallback callback);
BOOL DVDLowSetMaximumRotation(u32 speed, DVDLowCallback callback);
BOOL DVDLowRead(void* dst, u32 size, u32 offset, DVDLowCallback callback);
BOOL DVDLowSeek(u32 offset, DVDLowCallback callback);
u32 DVDLowGetCoverRegister(void);
u32 DVDLowGetStatusRegister(void);
u32 DVDLowGetControlRegister(void);
BOOL DVDLowPrepareCoverRegister(DVDLowCallback callback);
BOOL DVDLowPrepareStatusRegister(DVDLowCallback callback);
BOOL DVDLowPrepareControlRegister(DVDLowCallback callback);
u32 DVDLowGetImmBufferReg(void);
BOOL DVDLowUnmaskStatusInterrupts(void);
BOOL DVDLowMaskCoverInterrupt(void);
BOOL DVDLowClearCoverInterrupt(DVDLowCallback callback);
BOOL __DVDLowTestAlarm(const struct OSAlarm* alarm);

#ifdef __cplusplus
}
#endif
#endif
