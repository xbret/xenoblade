#include <revolution/DVD.h>
#include <revolution/ESP.h>
#include <revolution/IPC.h>
#include <revolution/OS.h>
#include <string.h>
#include <stdbool.h>

#define DVD_LOW_CTX_MAX 4
#define DVD_LOW_CMD_MAX 4
#define DVD_LOW_CTX_MAGIC 0xFEEBDAED

typedef enum {
    DVD_IOCTL_INQUIRY = 0x12,
    DVD_IOCTL_READ_DISK_ID = 0x70,
    DVD_IOCTL_READ = 0x71,
    DVD_IOCTL_WAIT_FOR_COVER_CLOSE = 0x79,
    DVD_IOCTL_PREPARE_COVER_REGISTER = 0x7A,
    DVD_IOCTL_NOTIFY_RESET = 0x7E,
    DVD_IOCTL_SET_SPINUP_FLAG = 0x7F, // not meant to be called via ioctl
    DVD_IOCTL_READ_DVD_PHYSICAL = 0x80,
    DVD_IOCTL_READ_DVD_COPYRIGHT = 0x81,
    DVD_IOCTL_READ_DVD_DISC_KEY = 0x82,
    DVD_IOCTL_GET_LENGTH = 0x83,
    DVD_IOCTL_GET_IMM_BUFFER_REG = 0x84, // not used
    DVD_IOCTL_MASK_COVER_INTERRUPT = 0x85, // unconfirmed, function dummied out
    DVD_IOCTL_CLEAR_COVER_INTERRUPT = 0x86,
    DVD_IOCTL_UNMASK_STATUS_INTERRUPTS = 0x87, // unconfirmed, function dummied out
    DVD_IOCTL_GET_COVER_STATUS = 0x88,
    DVD_IOCTL_RESET = 0x8A,
    DVD_IOCTL_OPEN_PARTITION = 0x8B, // ioctl version is never used
    DVD_IOCTL_CLOSE_PARTITION = 0x8C,
    DVD_IOCTL_UNENCRYPTED_READ = 0x8D,
    DVD_IOCTL_ENABLE_DVD_VIDEO = 0x8E,
    DVD_IOCTL_GET_NO_DISC_OPEN_PARTITION_PARAMS = 0x90,
    DVD_IOCTL_NO_DISC_OPEN_PARTITION = 0x91,
    DVD_IOCTL_GET_NO_DISC_BUFFER_SIZES = 0x92,
    DVD_IOCTL_OPEN_PARTITION_TMD_TICKET = 0x93,
    DVD_IOCTL_OPEN_PARTITION_TMD_TICKETVIEW = 0x94,
    DVD_IOCTL_PREPARE_STATUS_REGISTER = 0x95,
    DVD_IOCTL_PREPARE_CONTROL_REGISTER = 0x96,
    DVD_IOCTL_REPORT_KEY = 0xA4,
    DVD_IOCTL_UNCHECKED_UNENCRYPTED_READ = 0xA8, // no corresponding function
    DVD_IOCTL_SEEK = 0xAB,
    DVD_IOCTL_READ_DVD = 0xD0,
    DVD_IOCTL_READ_DVD_CONFIG = 0xD1,
    DVD_IOCTL_STOP_LASER = 0xD2,
    DVD_IOCTL_OFFSET = 0xD9,
    DVD_IOCTL_READ_DISK_BCA = 0xDA,
    DVD_IOCTL_REQUEST_DISC_STATUS = 0xDB,
    DVD_IOCTL_REQUEST_RETRY_NUMBER = 0xDC,
    DVD_IOCTL_SET_MAX_ROTATION = 0xDD,
    DVD_IOCTL_SER_MEAS_CONTROL = 0xDF,
    DVD_IOCTL_REQUEST_ERROR = 0xE0,
    DVD_IOCTL_AUDIO_STREAM = 0xE1,
    DVD_IOCTL_REQUEST_AUDIO_STATUS = 0xE2,
    DVD_IOCTL_STOP_MOTOR = 0xE3,
    DVD_IOCTL_AUDIO_BUFFER_CONFIG = 0xE4,
} DVDLowIoctl;

typedef enum {
    DVD_IOCTLV_OPEN_PARTITION = 0x8B,
    DVD_IOCTLV_GET_NO_DISC_OPEN_PARTITION_PARAMS = 0x90,
    DVD_IOCTLV_NO_DISC_OPEN_PARTITION = 0x91,
    DVD_IOCTLV_GET_NO_DISC_BUFFER_SIZES = 0x92,
    DVD_IOCTLV_OPEN_PARTITION_TMD_TICKET = 0x93,
    DVD_IOCTLV_OPEN_PARTITION_TMD_TICKETVIEW = 0x94,
} DVDLowIoctlv;

typedef enum callbackType {
    BOGUS_TYPE = 0,
    TRANSACTION_CB,
    COVER_CB,
    COVER_REG_CB
} callbackType_t;

typedef struct DVDLowContext {
    DVDLowCallback callback; // at 0x0
    callbackType_t callbackType; // at 0x4
    u8 inUse;  // at 0x8
    u32 magic; // at 0xC
    u32 id;    // at 0x10
    char padding[32 - 0x14];
} DVDLowContext;

typedef struct DVDLowDICommand {
    u8 command; // at 0x0
    u32 arg1;   // at 0x4
    u32 arg2;   // at 0x8
    u32 arg3;   // at 0xC
    u32 arg4;   // at 0x10
    u32 arg5;   // at 0x14
    u32 arg6;   // at 0x18
    u32 arg7;   // at 0x1C
} DVDLowDICommand;

typedef struct DVDLowDiRegs {
    u32 diimmbuf; // at 0x0
    u32 dicvr;    // at 0x4
    char padding[32 - 0x8];
} DVDLowDiRegs;

typedef struct DVDLowRegBuffer {
    u32 reg; // at 0x0
    char padding[32 - 0x4];
} DVDLowRegBuffer;

typedef struct DVDTicketError{
    u32 error; // at 0x0
    char padding[32 - 0x4];
} DVDTicketError;

typedef struct DVDCoverStatus{
    u32 status; // at 0x0
    char padding[32 - 0x4];
} DVDCoverStatus;

typedef struct DVDLowRegister{
    u32 reg; // at 0x0
    char padding[32 - 0x4];
} DVDLowRegister;

typedef struct DVDVideoReportKey {
    u8 data[32];
} DVDVideoReportKey;

static s32 DiFD = -1;

static volatile bool requestInProgress = FALSE;
static bool breakRequested;
static bool callbackInProgress = FALSE;
static DVDLowDICommand* diCommand;
static char* pathBuf;
static u32 readLength;
static u32 spinUpValue;
static s32 freeCommandBuf = 0;
static s32 freeDvdContext = 0;
static bool dvdContextsInited = FALSE;
static bool DVDLowInitCalled = FALSE;

static DVDLowContext dvdContexts[DVD_LOW_CTX_MAX] ALIGN(32);
static DVDLowDiRegs diRegValCache ALIGN(32);
static DVDLowRegBuffer registerBuf ALIGN(32);
static IPCIOVector ioVec[10] ALIGN(32);
static DVDTicketError lastTicketError ALIGN(32);
static DVDCoverStatus coverStatus ALIGN(32);
static DVDLowRegister statusRegister ALIGN(32);
static DVDLowRegister coverRegister ALIGN(32);
static DVDLowRegister controlRegister ALIGN(32);

#define is_aligned(addr) (((u32)(addr) & 0x1F) == 0)

DECOMP_FORCEACTIVE(dvd_broadway_c, dvdContexts);

static void nextCommandBuf(void);
static DVDLowContext* newContext(const DVDLowCallback callback, const callbackType_t type);

static void* ddrAllocAligned32(const int size) {
    u8* lo, *hi;

    if (!is_aligned(size)) {
        return 0;
    }

    lo = IPCGetBufferLo();
    hi = IPCGetBufferHi();

    // @bug Incorrect rounding (& 31) results in pointer mod 32
    if (!is_aligned(lo)) {
        lo = (void*)(((u32)lo + 31) & 31);
    }

    if (lo + size > hi) {
        OSReport("(ddrAllocAligned32) Not enough space to allocate %d bytes\n",
                 size);
    }

    IPCSetBufferLo(lo + size);
    return lo;
}

static BOOL allocateStructures(void) {
    diCommand = ddrAllocAligned32(sizeof(DVDLowDICommand) * DVD_LOW_CMD_MAX);
    if (diCommand == NULL) {
        OSReport("Allocation of diCommand blocks failed\n");
        return FALSE;
    }

    pathBuf = ddrAllocAligned32(32);
    if (pathBuf == NULL) {
        OSReport("Allocation of pathBuf failed\n");
        return FALSE;
    }

    return TRUE;
}

static void initDvdContexts(){
    int i;
    for (i = 0; i < DVD_LOW_CTX_MAX; i++) {
        dvdContexts[i].callback = NULL;
        dvdContexts[i].callbackType = 0;
        dvdContexts[i].inUse = FALSE;
        dvdContexts[i].magic = DVD_LOW_CTX_MAGIC;
        dvdContexts[i].id = i;
    }

    freeDvdContext = 0;
}

static s32 doTransactionCallback(s32 intType, void* context) {
    DVDLowContext* ctx = (DVDLowContext*)context;

    if (ctx->magic != DVD_LOW_CTX_MAGIC) {
        OSReport("(doTransactionCallback) Error - context mangled!\n");
        ctx->magic = DVD_LOW_CTX_MAGIC;
    } else {
        requestInProgress = FALSE;

        if (ctx->callback != NULL) {
            callbackInProgress = TRUE;

            if (breakRequested == TRUE) {
                breakRequested = FALSE;
                intType |= DVD_INTTYPE_BR;
            }

            if (intType & DVD_INTTYPE_TC) {
                readLength = 0;
            }

            ctx->callback(intType);

            callbackInProgress = FALSE;
        }
    }

    ctx->inUse = FALSE;
    return IPC_RESULT_OK;
}

//unused
static s32 doCoverCallback(s32 intType, void* context){
    DVDLowContext* ctx = (DVDLowContext*)context;

    requestInProgress = FALSE;

    if (ctx->magic != DVD_LOW_CTX_MAGIC) {
        OSReport("(doCoverCallback) Error - context mangled!\n");
        ctx->magic = DVD_LOW_CTX_MAGIC;
    } else {
        if (ctx->callback != NULL) {
            callbackInProgress = TRUE;

            if (breakRequested == TRUE) {
                breakRequested = FALSE;
                intType |= DVD_INTTYPE_BR;
            }

            ctx->callback(intType);

            callbackInProgress = FALSE;
        }
    }

    ctx->inUse = FALSE;
    return IPC_RESULT_OK;
}

static s32 doPrepareCoverRegisterCallback(s32 intType, void* context) {
    DVDLowContext* ctx = (DVDLowContext*)context;

    requestInProgress = FALSE;
    diRegValCache.dicvr = registerBuf.reg;

    if (ctx->magic != DVD_LOW_CTX_MAGIC) {
        OSReport("(doTransactionCallback) Error - context mangled!\n");
        ctx->magic = DVD_LOW_CTX_MAGIC;
    } else {
        if (ctx->callback != NULL) {
            callbackInProgress = TRUE;

            if (breakRequested == TRUE) {
                breakRequested = FALSE;
                intType |= DVD_INTTYPE_BR;
            }

            ctx->callback(intType);

            callbackInProgress = FALSE;
        }
    }

    ctx->inUse = FALSE;
    return IPC_RESULT_OK;
}

BOOL DVDLowFinalize(void) {
    IOSError ret = IOS_Close(DiFD);

    if (ret != IPC_RESULT_OK) {
        OSReport("(DVDLowFinish) Error: IOS_Close failed\n");
        return FALSE;
    }

    DVDLowInitCalled = FALSE;
    return TRUE;
}

BOOL DVDLowInit(void) {
    IPCResult result;

    if (!DVDLowInitCalled) {
        DVDLowInitCalled = TRUE;
        result = IPCCltInit();

        if (result != IPC_RESULT_OK) {
            OSReport("IPCCltInit returned error: %d\n", result);
            return FALSE;
        }

        if (!allocateStructures()) {
            return FALSE;
        }

        if (!dvdContextsInited) {
            initDvdContexts();
            dvdContextsInited = TRUE;
        }
    }

    strncpy(pathBuf, "/dev/di", 32);
    DiFD = IOS_Open(pathBuf, IPC_OPEN_NONE);

    if (DiFD >= 0) {
        return TRUE;
    }

    switch (DiFD) {
    case IPC_RESULT_NOEXISTS_INTERNAL:
        OSReport("(DVDLowInit) Error: IOS_Open failed - pathname '/dev/di' "
                 "does not exist\n");
        return FALSE;
    case IPC_RESULT_ACCESS_INTERNAL:
        OSReport("(DVDLowInit) Error: IOS_Open failed - calling thread lacks "
                 "permission\n");
        return FALSE;
    case IPC_RESULT_CONN_MAX_INTERNAL:
        OSReport("(DVDLowInit) Error: IOS_Open failed - connection limit has "
                 "been reached\n");
        return FALSE;
    default:
        OSReport("(DVDLowInit) IOS_Open failed, errorcode = %d\n", DiFD);
        return FALSE;
    }
}

BOOL DVDLowReadDiskID(DVDDiskID* out, DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);

    if (out == NULL) {
        OSReport("@@@@@@ WARNING - Calling DVDLowReadDiskId with NULL ptr\n");
    }

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_READ_DISK_ID;

    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_READ_DISK_ID,
                            &diCommand[freeCommandBuf], sizeof(DVDLowDICommand),
                            out, sizeof(DVDDiskID), doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowReadDiskID) IOS_IoctlAsync returned error: %d\n",
                 result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

static void nextCommandBuf(void) {
    if (++freeCommandBuf >= DVD_LOW_CMD_MAX) {
        freeCommandBuf = 0;
    }
}

static DECOMP_INLINE DVDLowContext* newContext(const DVDLowCallback callback, const callbackType_t type) {
    s32 id;
    bool use = dvdContexts[freeDvdContext].inUse != 0;

    // The last operation somehow did not complete
    if (use == true)  {
        OSReport("(newContext) ERROR: freeDvdContext.inUse (#%d) is true\n", freeDvdContext);
        OSReport("(newContext) Now spinning in infinite loop\n");

        while (TRUE) {
            ;
        }
    }

    // Memory corruption
    if (dvdContexts[freeDvdContext].magic != DVD_LOW_CTX_MAGIC) {
        OSReport("(newContext) Something overwrote the context magic - spinning \n");
    
        while (TRUE) {
            ;
        }
    }

    dvdContexts[freeDvdContext].callback = callback;
    dvdContexts[freeDvdContext].callbackType = type;
    dvdContexts[freeDvdContext].inUse = TRUE;
    
    id = freeDvdContext;

    if (++freeDvdContext >= DVD_LOW_CTX_MAX) {
        freeDvdContext = 0;
    }

    return &dvdContexts[id];
}

BOOL DVDLowOpenPartition(const u32 offset, const ESTicket* const eTicket, const u32 numCertBytes, const u8* const certificates, ESTitleMeta* tmd, DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;
    
    if (eTicket != NULL && !is_aligned(eTicket)) {
        OSReport("(DVDLowOpenPartition) eTicket memory is unaligned\n");
        return FALSE;
    }

    if (certificates != NULL && !is_aligned(certificates)) {
        OSReport("(DVDLowOpenPartition) certificates memory is unaligned\n");
        return FALSE;
    }

    if (tmd != NULL && !is_aligned(tmd)) {
        //Typo: should say "tmd memory is unaligned"
        OSReport("(DVDLowOpenPartition) certificates memory is unaligned\n");
        return FALSE;
    }

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTLV_OPEN_PARTITION;
    diCommand[freeCommandBuf].arg1 = offset;

    // Input vector 1: DI command
    ioVec[0].base = &diCommand[freeCommandBuf];
    ioVec[0].length = sizeof(DVDLowDICommand);

    // Input vector 2: eTicket
    ioVec[1].base = (void*)eTicket;
    if (eTicket == NULL) {
        ioVec[1].length = 0;
    } else {
        ioVec[1].length = sizeof(ESTicket);
    }

    // Input vector 3: Shared certs
    ioVec[2].base = (void*)certificates;
    if (certificates == NULL) {
        ioVec[2].length = 0;
    } else {
        ioVec[2].length = numCertBytes;
    }

    // Output vector 1: TMD
    ioVec[3].base = tmd;
    ioVec[3].length = sizeof(ESTitleMeta);

    // Output vector 2: Ticket error
    ioVec[4].base = &lastTicketError;
    ioVec[4].length = sizeof(lastTicketError);

    result = IOS_IoctlvAsync(DiFD, DVD_IOCTLV_OPEN_PARTITION, 3, 2,
                             ioVec, doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowOpenPartition) IOS_IoctlvAsync returned error: %d\n",
                result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

//unused
BOOL DVDLowOpenPartitionWithTmdAndTicket(const u32 offset, const ESTicket* const eTicket, const u32 numTmdBytes, const ESTitleMeta* const tmd, const u32 numCertBytes, const u8* const certificates, DVDLowCallback callback){
    DVDLowContext* ctx;
    IPCResult result;

    if ((eTicket != NULL) && !is_aligned(eTicket)) {
        OSReport("(%s) eTicket memory is unaligned\n", __FUNCTION__);
        return FALSE;
    }

    if(certificates != 0 && !is_aligned(certificates)){
        return FALSE;
    }

    if(tmd == NULL){
        OSReport("(%s) tmd parameter cannot be NULL\n", __FUNCTION__);
        return FALSE;
    }else if(!is_aligned(tmd)){
         OSReport("(%s) tmd memory is unaligned\n", __FUNCTION__);
        return FALSE;
    }
    
    if(eTicket == NULL){
        OSReport("(%s) eTicket parameter cannot be NULL\n", __FUNCTION__);
        return FALSE;
    }else if(!is_aligned(eTicket)){
        OSReport("(%s) eTicket memory is unaligned\n", __FUNCTION__);
        return FALSE;
    }

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTLV_OPEN_PARTITION_TMD_TICKET;
    diCommand[freeCommandBuf].arg1 = offset;

    // Input vector 1: DI command
    ioVec[0].base = &diCommand[freeCommandBuf];
    ioVec[0].length = sizeof(DVDLowDICommand);

    // Input vector 2: eTicket
    ioVec[1].base = (u8*)eTicket;
    ioVec[1].length = sizeof(ESTicket);

    // Input vector 3: TMD
    ioVec[2].base = (void*)tmd;
    ioVec[2].length = numTmdBytes;

    // Input vector 4: Shared certs
    ioVec[3].base = (void*)certificates;
    if (certificates == NULL) {
        ioVec[3].length = 0;
    }else{
        ioVec[3].length = numCertBytes;
    }

    // Output vector 1: Ticket error
    ioVec[4].base = &lastTicketError;
    ioVec[4].length = sizeof(lastTicketError);

    result = IOS_IoctlvAsync(DiFD, DVD_IOCTLV_OPEN_PARTITION_TMD_TICKET,
                             4, 1, ioVec, doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowOpenPartition) IOS_IoctlvAsync returned error: %d\n",
                result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowOpenPartitionWithTmdAndTicketView(const u32 offset, const ESTicketView* const eTicketView, const u32 numTmdBytes, const ESTitleMeta* const tmd, const u32 numCertBytes, const u8* const certificates, DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;
    
    if (certificates != 0 && !is_aligned(certificates)) {
        return FALSE;
    }

    if (tmd == 0) {
        OSReport("(%s) tmd parameter cannot be NULL\n", __FUNCTION__);
        return FALSE;
    } else if (!is_aligned(tmd)) {
        OSReport("(%s) tmd memory is unaligned\n", __FUNCTION__);
        return FALSE;
    }

    if (eTicketView == 0) {
        OSReport("(%s) eTicketView parameter cannot be NULL\n", __FUNCTION__);
        return FALSE;
    } else if (!is_aligned(eTicketView)) {
        OSReport("(%s) eTicketView memory is unaligned\n", __FUNCTION__);
        return FALSE;
    }

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);
    nextCommandBuf();

    diCommand[freeCommandBuf].command = DVD_IOCTLV_OPEN_PARTITION_TMD_TICKETVIEW;
    diCommand[freeCommandBuf].arg1 = offset;

    // Input vector 1: DI command
    ioVec[0].base = &diCommand[freeCommandBuf];
    ioVec[0].length = sizeof(DVDLowDICommand);

    // Input vector 2: Ticket view
    ioVec[1].base = (void*)eTicketView;
    ioVec[1].length = sizeof(ESTicketView);

    // Input vector 3: TMD
    ioVec[2].base = (void*)tmd;
    ioVec[2].length = numTmdBytes;

    // Input vector 4: Shared certs
    ioVec[3].base = (void*)certificates;
    if (certificates == 0) {
        ioVec[3].length = 0;
    } else {
        ioVec[3].length = numCertBytes;
    }

    // Output vector 1: Last ticket error
    ioVec[4].base = &lastTicketError;
    ioVec[4].length = sizeof(lastTicketError);

    result = IOS_IoctlvAsync(DiFD, DVD_IOCTLV_OPEN_PARTITION_TMD_TICKETVIEW,
                             4, 1, ioVec, doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowOpenPartition) IOS_IoctlvAsync returned error: %d\n",
                result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowGetNoDiscBufferSizes(const u32 offset, u32* numTmdBytes, u32* numCertBytes, DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    if (numTmdBytes == NULL || numCertBytes == NULL) {
        OSReport("(%s) Error: NULL pointer argument\n", __FUNCTION__);
        return FALSE;
    }

    if (!is_aligned(numTmdBytes)) {
        OSReport("(%s) numTmdBytes memory is unaligned\n", __FUNCTION__);
        return FALSE;
    }

    if (!is_aligned(numCertBytes)) {
        OSReport("(%s) certificates memory is unaligned\n", __FUNCTION__);
        return FALSE;
    }

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);
    nextCommandBuf();

    diCommand[freeCommandBuf].command = DVD_IOCTLV_GET_NO_DISC_BUFFER_SIZES;
    diCommand[freeCommandBuf].arg1 = offset;

    // Input vector 1: DI command
    ioVec[0].base = (u8*)&diCommand[freeCommandBuf];
    ioVec[0].length = sizeof(DVDLowDICommand);

    // Output vector 1: TMD length
    ioVec[1].base = (u8*)numTmdBytes;
    ioVec[1].length = 4;

    // Output vector 2: Shared certs length
    ioVec[2].base = (u8*)numCertBytes;
    ioVec[2].length = 4;

    result = IOS_IoctlvAsync(DiFD, DVD_IOCTLV_GET_NO_DISC_BUFFER_SIZES,
                             1, 2, ioVec, doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (%s) IOS_IoctlvAsync returned error: %d\n", __FUNCTION__,
                result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowGetNoDiscOpenPartitionParams(const u32 offset, ESTicket* eTicket, u32* numTmdBytes, ESTitleMeta* tmd, u32* numCertBytes, u8* certificates, u32* dataWordOffset, u8* h3HashPtr, DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    if (eTicket == 0 || numTmdBytes == 0 || tmd == 0 || numCertBytes == 0 || certificates == 0 || dataWordOffset == 0 || h3HashPtr == 0) {
        OSReport("(%s) Error: NULL pointer argument\n", __FUNCTION__);
        return FALSE;
    }

    if (!is_aligned(eTicket) || !is_aligned(numTmdBytes) || !is_aligned(tmd) || !is_aligned(numCertBytes) || !is_aligned(certificates) || !is_aligned(dataWordOffset) || !is_aligned(h3HashPtr)) {
        OSReport("(%s) pointer argument is unaligned\n", __FUNCTION__);
        return FALSE;
    }

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);
    nextCommandBuf();

    diCommand[freeCommandBuf].command = DVD_IOCTLV_GET_NO_DISC_OPEN_PARTITION_PARAMS;
    diCommand[freeCommandBuf].arg1 = offset;

    // Input vector 1: DI command
    ioVec[0].base = (u8*)&diCommand[freeCommandBuf];
    ioVec[0].length = sizeof(DVDLowDICommand);

    // Input vector 2: TMD length
    ioVec[1].base = (u8*)numTmdBytes;
    ioVec[1].length = 4;

    // Input vector 3: Shared certs length
    ioVec[2].base = (u8*)numCertBytes;
    ioVec[2].length = 4;

    // Output vector 1: eTicket
    ioVec[3].base = (u8*)eTicket;
    ioVec[3].length = sizeof(ESTicket);

    // Output vector 2: TMD length
    ioVec[4].base = (u8*)numTmdBytes;
    ioVec[4].length = 4;

    // Output vector 3: TMD
    ioVec[5].base = (u8*)tmd;
    ioVec[5].length = *numTmdBytes;

    // Output vector 4: Shared certs length
    ioVec[6].base = (u8*)numCertBytes;
    ioVec[6].length = 4;

    // Output vector 5: Shared certs
    ioVec[7].base = certificates;
    ioVec[7].length = *numCertBytes;

    // Output vector 6: Offset
    ioVec[8].base = (u8*)dataWordOffset;
    ioVec[8].length = 4;

    // Output vector 7: H3 hash table pointer
    ioVec[9].base = h3HashPtr;
    ioVec[9].length = H3_HASH_TABLE_SIZE;

    result = IOS_IoctlvAsync(DiFD, DVD_IOCTLV_GET_NO_DISC_OPEN_PARTITION_PARAMS,
                             3, 7, ioVec, doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (%s) IOS_IoctlvAsync returned error: %d\n", __FUNCTION__,
                result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

CW_FORCE_STRINGS(DVD_BROADWAY_C_1, "DVDLowNoDiscOpenPartition");

//unused
void DVDLowNoDiscOpenPartition(){
}

BOOL DVDLowClosePartition(DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_CLOSE_PARTITION;

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);

    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_CLOSE_PARTITION,
                            &diCommand[freeCommandBuf], sizeof(DVDLowDICommand),
                            NULL, 0, doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport(
            "@@@ (DVDLowClosePartition) IOS_IoctlAsync returned error: %d\n",
            result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowUnencryptedRead(void* dst, u32 size, u32 offset,
                           DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);

    readLength = size;

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_UNENCRYPTED_READ;
    diCommand[freeCommandBuf].arg1 = size;
    diCommand[freeCommandBuf].arg2 = offset;

    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_UNENCRYPTED_READ,
                            &diCommand[freeCommandBuf], sizeof(DVDLowDICommand),
                            dst, size, doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport(
            "@@@ (DVDLowUnencryptedRead) IOS_IoctlAsync returned error: %d\n",
            result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowStopMotor(BOOL eject, BOOL kill, DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_STOP_MOTOR;
    diCommand[freeCommandBuf].arg1 = eject;
    diCommand[freeCommandBuf].arg2 = kill;

    result =
        IOS_IoctlAsync(DiFD, DVD_IOCTL_STOP_MOTOR, &diCommand[freeCommandBuf],
                       sizeof(DVDLowDICommand), &diRegValCache,
                       sizeof(DVDLowDiRegs), doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowStopMotor) IOS_IoctlAsync returned error: %d\n",
                 result);
        ctx->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

//unused
BOOL DVDLowWaitForCoverClose(DVDLowCallback callback){
    DVDLowContext* ctx;
    IPCResult result;
    
    requestInProgress = TRUE;
    ctx = newContext(callback, 2);
    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_WAIT_FOR_COVER_CLOSE;
    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_WAIT_FOR_COVER_CLOSE, &diCommand[freeCommandBuf],
                            sizeof(DVDLowDICommand), 0, 0,
                            doCoverCallback, ctx);
    
    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowWaitForCoverClose) IOS_IoctlAsync returned error: %d\n",
                 result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowInquiry(DVDDriveInfo* out, DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_INQUIRY;

    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_INQUIRY, &diCommand[freeCommandBuf],
                            sizeof(DVDLowDICommand), out, sizeof(DVDDriveInfo),
                            doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowInquiry) IOS_IoctlAsync returned error: %d\n",
                 result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowRequestError(DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_REQUEST_ERROR;

    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_REQUEST_ERROR,
                            &diCommand[freeCommandBuf], sizeof(DVDLowDICommand),
                            &diRegValCache, sizeof(DVDLowDiRegs),
                            doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowRequestError) IOS_IoctlAsync returned error: %d\n",
                 result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

// clang-format off
DECOMP_FORCEACTIVE(dvd_broadway_c,
                   "(DVDLowSetSpinupFlag): Synch functions can't be called in callbacks\n",
                   "@@@ (DVDLowNotifyReset) IOS_IoctlAsync returned error: %d\n");
// clang-format on

BOOL DVDLowSetSpinupFlag(BOOL enable) {
    spinUpValue = enable;
    return TRUE;
}

//unused
void DVDLowNotifyReset(){
}

BOOL DVDLowReset(DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_RESET;
    diCommand[freeCommandBuf].arg1 = spinUpValue;

    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_RESET, &diCommand[freeCommandBuf],
                            sizeof(DVDLowDICommand), NULL, 0,
                            doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowReset) IOS_IoctlAsync returned error: %d\n",
                 result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowAudioBufferConfig(BOOL enable, u32 size, DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_AUDIO_BUFFER_CONFIG;
    diCommand[freeCommandBuf].arg1 = enable;
    diCommand[freeCommandBuf].arg2 = size;

    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_AUDIO_BUFFER_CONFIG,
                            &diCommand[freeCommandBuf], sizeof(DVDLowDICommand),
                            &diRegValCache, sizeof(DVDLowDiRegs),
                            doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport(
            "@@@ (DVDLowAudioBufferConfig) IOS_IoctlAsync returned error: %d\n",
            result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

//unused
void DVDLowBreak(){
}

//unused
void DVDLowClearCallback(){
}

//unused
u32 DVDLowGetCoverStatus(){
    u32 status;
    IPCResult result;
    
    if (callbackInProgress == true) {
        OSReport("(DVDLowGetCoverStatus): Synch functions can\'t be called in callbacks\n");
        return 0;
    }

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_GET_COVER_STATUS;

    result = IOS_Ioctl(DiFD, DVD_IOCTL_GET_COVER_STATUS, &diCommand[freeCommandBuf],
                       sizeof(DVDLowDICommand), &coverStatus, sizeof(DVDCoverStatus));
    status = coverStatus.status;

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowGetCoverStatus) IOS_Ioctl returned error: %d\n", result);
        status = 0xDEADDEAD;
    }

    return status;
}

CW_FORCE_STRINGS(DVD_BROADWAY_C_3,
"@@@ (DVDLowReadDVD) IOS_IoctlAsync returned error: %d\n",
"@@@ (DVDLowReadDVDConfig) IOS_IoctlAsync returned error: %d\n",
"@@@ (DVDLowReadDvdCopyright) IOS_IoctlAsync returned error: %d\n",
"@@@ (DVDLowReadDvdPhysical) IOS_IoctlAsync returned error: %d\n",
"@@@ (DVDLowReadDvdDiscKey) IOS_IoctlAsync returned error: %d\n");


//unused
void DVDLowReadDvd(){
}

//unused
void DVDLowReadDvdConfig(){
}

//unused
void DVDLowReadDvdCopyright(){
}

//unused
void DVDLowReadDvdPhysical(){
}

//unused
void DVDLowReadDvdDiscKey(){
}


BOOL DVDLowReportKey(DVDVideoReportKey* reportKey, u32 format, u32 lsn, DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);
    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_REPORT_KEY;
    diCommand[freeCommandBuf].arg1 = format >> 16;
    diCommand[freeCommandBuf].arg2 = lsn;

    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_REPORT_KEY, &diCommand[freeCommandBuf],
                            sizeof(DVDLowDICommand), reportKey, sizeof(DVDVideoReportKey),
                            doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowReportKey) IOS_IoctlAsync returned error: %d\n",
                result);
        ctx->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

CW_FORCE_STRINGS(DVD_BROADWAY_C_4,
"@@@ (DVDLowOffset) IOS_IoctlAsync returned error: %d\n",
"@@@ (DVDLowStopLaser) IOS_IoctlAsync returned error: %d\n",
"@@@ (DVDLowReadDiskBca) IOS_IoctlAsync returned error: %d\n",
"@@@ (DVDLowSerMeasControl) IOS_IoctlAsync returned error: %d\n",
"@@@ (DVDLowRequestDiscStatus) IOS_IoctlAsync returned error: %d\n",
"@@@ (DVDLowRequestRetryNumber) IOS_IoctlAsync returned error: %d\n");

//unused
void DVDLowOffset(){
}

//unused
void DVDLowStopLaser(){
}

//unused
void DVDLowReadDiskBca(){
}

//unused
void DVDLowSerMeasControl(){
}

//unused
void DVDLowRequestDiscStatus(){
}

//unused
void DVDLowRequestRetryNumber(){
}


BOOL DVDLowSetMaximumRotation(u32 subcmd, DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);
    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_SET_MAX_ROTATION;
    diCommand[freeCommandBuf].arg1 = (subcmd >> 16) & 3;

    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_SET_MAX_ROTATION, &diCommand[freeCommandBuf],
                            sizeof(DVDLowDICommand), 0, 0,
                            doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowSetMaxRotation) IOS_IoctlAsync returned error: %d\n",
                result);
        ctx->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowRead(void* destAddr, u32 size, u32 offset, DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    if (!is_aligned(destAddr)) {
        OSReport(
            "(DVDLowRead): ERROR - destAddr buffer is not 32 byte aligned\n");
        return FALSE;
    }

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);

    readLength = size;

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_READ;
    diCommand[freeCommandBuf].arg1 = size;
    diCommand[freeCommandBuf].arg2 = offset;

    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_READ, &diCommand[freeCommandBuf],
                            sizeof(DVDLowDICommand), destAddr, size,
                            doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowRead) IOS_IoctlAsync returned error: %d\n",
                 result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowSeek(u32 offset, DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_SEEK;
    diCommand[freeCommandBuf].arg1 = offset;

    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_SEEK, &diCommand[freeCommandBuf],
                            sizeof(DVDLowDICommand), NULL, 0,
                            doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowSeek) IOS_IoctlAsync returned error: %d\n",
                 result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

//unused
u32 DVDLowGetCoverReg(){
    u32 val;
    IPCResult result;
    
    if (callbackInProgress == true) {
        OSReport("(DVDLowGetCoverReg): Synch functions can\'t be called in callbacks\n");
        return 0;
    }
    
    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_PREPARE_COVER_REGISTER;
    result = IOS_Ioctl(DiFD, DVD_IOCTL_PREPARE_COVER_REGISTER, &diCommand[freeCommandBuf],
                       sizeof(DVDLowDICommand), &coverRegister, sizeof(coverRegister));
    val = coverRegister.reg;

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowGetCoverReg) IOS_Ioctl returned error: %d\n",
                result);
        val = 0;
    }
    
    return val;
}

u32 DVDLowGetCoverRegister(void) {
    return diRegValCache.dicvr;
}

u32 DVDLowGetStatusRegister(void) {
    return statusRegister.reg;
}

u32 DVDLowGetControlRegister(void){
    return controlRegister.reg;
}

BOOL DVDLowPrepareCoverRegister(DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_PREPARE_COVER_REGISTER;

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);

    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_PREPARE_COVER_REGISTER,
                            &diCommand[freeCommandBuf], sizeof(DVDLowDICommand),
                            &registerBuf, sizeof(DVDLowRegBuffer),
                            doPrepareCoverRegisterCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowPrepareCoverRegsiter) IOS_IoctlAsync returned error: %d\n",
                 result);
        ctx->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowPrepareStatusRegister(DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_PREPARE_STATUS_REGISTER;
    requestInProgress = TRUE;
    ctx = newContext(callback, 1);
    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_PREPARE_STATUS_REGISTER, &diCommand[freeCommandBuf],
                            sizeof(DVDLowDICommand), &statusRegister, sizeof(statusRegister),
                            doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        //another typo lol
        OSReport("@@@ (DVDLowPrepareStatusRegsiter) IOS_IoctlAsync returned error: %d\n",
                result);
        ctx->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowPrepareControlRegister(DVDLowCallback callback){
    DVDLowContext* ctx;
    IPCResult result;
    
    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_PREPARE_CONTROL_REGISTER;
    requestInProgress = TRUE;
    ctx = newContext(callback, 1);
    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_PREPARE_CONTROL_REGISTER, &diCommand[freeCommandBuf],
                            sizeof(DVDLowDICommand), &controlRegister, sizeof(statusRegister),
                            doTransactionCallback, ctx);
    
    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowPrepareControlRegister) IOS_IoctlAsync returned error: %d\n",
                result);
        ctx->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

//unused
void DVDLowGetLength(){
}

u32 DVDLowGetImmBufferReg(void) {
    return diRegValCache.diimmbuf;
}

BOOL DVDLowUnmaskStatusInterrupts(void) {
    return TRUE;
}

BOOL DVDLowMaskCoverInterrupt(void) {
    return TRUE;
}

//unused
void DVDLowUnmaskCoverInterrupt(){
}

BOOL DVDLowClearCoverInterrupt(DVDLowCallback callback) {
    DVDLowContext* ctx;
    IPCResult result;

    nextCommandBuf();
    diCommand[freeCommandBuf].command = DVD_IOCTL_CLEAR_COVER_INTERRUPT;

    requestInProgress = TRUE;
    ctx = newContext(callback, 1);

    result = IOS_IoctlAsync(DiFD, DVD_IOCTL_CLEAR_COVER_INTERRUPT,
                            &diCommand[freeCommandBuf], sizeof(DVDLowDICommand),
                            NULL, 0, doTransactionCallback, ctx);

    if (result != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowClearCoverInterrupt) IOS_IoctlAsync returned error: %d\n",
                 result);
        ctx->inUse = FALSE;

        return FALSE;
    }

    return TRUE;
}

//unused
void DVDLowGetLastEticketError(){
}

BOOL __DVDLowTestAlarm(const OSAlarm* alarm) {
#pragma unused(alarm)

    return FALSE;
}

// clang-format off
DECOMP_FORCEACTIVE(dvd_broadway_c, "@@@ (DVDLowEnableDvdVideo) IOS_IoctlAsync returned error: %d\n");
// clang-format on

//unused
void DVDLowEnableDvdVideo(){
}
