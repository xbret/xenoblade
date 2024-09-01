#ifndef RVL_SDK_DVD_H
#define RVL_SDK_DVD_H
#include "types.h"
#include <revolution/OS.h>
#include <revolution/ESP.h>
#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    DVD_RESULT_COVER_CLOSED = -4,
    DVD_RESULT_CANCELED,
    DVD_RESULT_M2,
    DVD_RESULT_FATAL,
    DVD_RESULT_OK,
} DVDResult;

typedef enum {
    DVD_STATE_FATAL = -1,
    DVD_STATE_IDLE,
    DVD_STATE_BUSY,
    DVD_STATE_WAITING,
    DVD_STATE_COVER_CLOSED,
    DVD_STATE_NO_DISK,
    DVD_STATE_COVER_OPENED,
    DVD_STATE_WRONG_DISK_ID,
    DVD_STATE_7,
    DVD_STATE_PAUSED,
    DVD_STATE_9,
    DVD_STATE_CANCELED,
    DVD_STATE_DISK_ERROR,
    DVD_STATE_MOTOR_STOPPED,
} DVDAsyncState;

typedef enum {
    DVD_COVER_BUSY,
    DVD_COVER_OPENED,
    DVD_COVER_CLOSED,
} DVDCoverState;

// Forward declarations
typedef struct DVDDiskID;
typedef struct DVDCommandBlock;

typedef struct DVDDriveInfo {
    u16 revision;    // at 0x0
    u16 deviceCode;  // at 0x2
    u32 releaseDate; // at 0x4
    char padding[32 - 0x8];
} DVDDriveInfo;


typedef void (*DVDCBCallback)(s32 result, struct DVDCommandBlock* block);

typedef struct DVDCommandBlock {
    struct DVDCommandBlock* next;
    struct DVDCommandBlock* prev;
    u32 command;
    s32 state;
    u32 offset;
    u32 length;
    void* addr;
    u32 currTransferSize;
    u32 transferredSize;
    struct DVDDiskID* id;
    DVDCBCallback callback;
    void* userData;
} DVDCommandBlock;


typedef void (*DVDOptionalCommandChecker)(DVDCommandBlock* block, void (*cb)(u32));


typedef struct DVDBB2 {
    u32 bootFilePosition;
    u32 FSTPosition;
    u32 FSTLength;
    u32 FSTMaxLength;
    void* FSTAddress;
    u32 userPosition;
    u32 userLength;
    u32 padding0;
} DVDBB2;

typedef struct DVDGamePartition {
    ESTicket ticket;
    u32 tmdSize;
    ESTitleMeta* tmd;
    u32 certBlobSize;
    void* certBlob;      
    u8* h3Hashes;
    u8* encryptedArea;
} DVDGamePartition;

typedef struct DVDPartitionInfo {
    DVDGamePartition* gamePartition;
    u32 type;
} DVDPartitionInfo;

typedef struct DVDGameTOC {
    u32 numGamePartitions;
    DVDPartitionInfo* partitionInfos;
} DVDGameTOC;

typedef struct DVDPartitionParams {
    ESTicket ticket;
    u8 padding0[OSRoundUp32B(sizeof(ESTicket)) - sizeof(ESTicket)];
    ESTicketView ticketView;
    u8 padding1[OSRoundUp32B(sizeof(ESTicketView)) - sizeof(ESTicketView)];
    u32 numTmdBytes;
    u8 padding2[28];
    ESTitleMeta tmd;
    u8 padding3[OSRoundUp32B(sizeof(ESTitleMeta)) - sizeof(ESTitleMeta)];
    u32 numCertBytes;
    u8 padding4[28];
    u8 certificates[4096];
    u32 dataWordOffset;
    u8 padding5[28];
    u8 h3Hash[98304];
} DVDPartitionParams;

void DVDInit(void);
s32 DVDCancel(DVDCommandBlock* block);
BOOL DVDCancelAsync(DVDCommandBlock* block, DVDCBCallback callback);
BOOL DVDInquiryAsync(DVDCommandBlock*, DVDDriveInfo*, DVDCBCallback);
u32 __DVDGetCoverStatus(void);
void __DVDPrepareReset(void);
BOOL __DVDTestAlarm(const OSAlarm*);
s32 DVDGetDriveStatus(void);

#ifdef __cplusplus
}
#endif
#endif
