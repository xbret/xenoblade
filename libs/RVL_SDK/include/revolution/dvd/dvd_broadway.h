#ifndef RVL_SDK_DVD_BROADWAY_H
#define RVL_SDK_DVD_BROADWAY_H
#include <types.h>
#ifdef __cplusplus
extern "C" {
#endif

#define DVD_LOW_OFFSET(x) ((x) >> 2)
#define DVD_LOW_SPEED(x) (((x)&3) << 16)

// Forward declarations
#ifdef __MWERKS__
typedef struct DVDDiskID;
typedef struct DVDDriveInfo;
typedef struct ESTicket;
typedef struct ESTicketView;
typedef struct ESTitleMeta;
typedef struct OSAlarm;
typedef struct DVDVideoReportKey;
#else
typedef struct DVDDiskID DVDDiskID;
typedef struct DVDDriveInfo DVDDriveInfo;
typedef struct ESTicket ESTicket;
typedef struct ESTicketView ESTicketView;
typedef struct ESTitleMeta ESTitleMeta;
typedef struct OSAlarm OSAlarm;
typedef struct DVDVideoReportKey DVDVideoReportKey;
#endif

typedef enum {
    DVD_INTTYPE_TC = (1 << 0),   // Transaction callback?
    DVD_INTTYPE_DE = (1 << 1),   // Drive error
    DVD_INTTYPE_CVR = (1 << 2),  // Something with DVD cover
    DVD_INTTYPE_BR = (1 << 3),   // Break requested
    DVD_INTTYPE_TIME = (1 << 4), // Time out
    DVD_INTTYPE_SERR = (1 << 5), // Security error
    DVD_INTTYPE_VERR = (1 << 6), // Verify error
    DVD_INTTYPE_ARGS = (1 << 7), // Bad arguments
} DVDLowIntType;

// DICVR - DI Cover Register (via DVDLowGetCoverRegister)
#define DVD_DICVR_CVR (1 << 0)
#define DVD_DICVR_CVRINTMASK (1 << 1)
#define DVD_DICVR_CVRINT (1 << 2)

typedef void (*DVDLowCallback)(u32 intType);

BOOL DVDLowInit(void);
BOOL DVDLowReadDiskID(struct DVDDiskID* out, DVDLowCallback callback);
//BOOL DVDLowOpenPartition(const u32 offset, const struct ESTicket* const ticket,
//                         u32 certsSize, const void* const certs, struct ESTitleMeta* tmd,
//                         DVDLowCallback callback);
BOOL DVDLowOpenPartitionWithTmdAndTicketView(const u32, const struct ESTicketView* const, const u32, const struct ESTitleMeta* const, const u32, const u8* const, DVDLowCallback);
BOOL DVDLowGetNoDiscBufferSizes(const u32 offset, u32* numTmdBytes, u32* numCertBytes, DVDLowCallback callback);
BOOL DVDLowGetNoDiscOpenPartitionParams(const u32 offset, struct ESTicket* eTicket, u32* numTmdBytes, struct ESTitleMeta* tmd, u32* numCertBytes, u8* certificates, u32* dataWordOffset, u8* h3HashPtr, DVDLowCallback callback);
BOOL DVDLowOpenPartition(const u32, const struct ESTicket* const, const u32, const u8* const, struct ESTitleMeta *, DVDLowCallback);
BOOL DVDLowClosePartition(DVDLowCallback callback);
BOOL DVDLowUnencryptedRead(void* dst, u32 size, u32 offset,
                           DVDLowCallback callback);
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
BOOL DVDLowPrepareCoverRegister(DVDLowCallback callback);
u32 DVDLowGetImmBufferReg(void);
BOOL DVDLowUnmaskStatusInterrupts(void);
BOOL DVDLowMaskCoverInterrupt(void);
BOOL DVDLowClearCoverInterrupt(DVDLowCallback callback);
BOOL __DVDLowTestAlarm(const struct OSAlarm* alarm);

#ifdef __cplusplus
}
#endif
#endif
