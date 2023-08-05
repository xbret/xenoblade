#include "revolution/OS.h"
#include "revolution/IPC.h"
#include "revolution/DVD.h"
#include <string.h>
#include <stdbool.h>

typedef enum {
    DVD_IOCTL_INQUIRY = 0x12,
    DVD_IOCTL_READ_DISK_ID = 0x70,
    DVD_IOCTL_READ = 0x71,
    DVD_IOCTL_PREPARE_COVER_REGISTER = 0x7A,
    DVD_IOCTL_CLEAR_COVER_INTERRUPT = 0x86,
    DVD_IOCTL_RESET = 0x8A,
    DVD_IOCTL_CLOSE_PARTITION = 0x8C,
    DVD_IOCTL_UNENCRYPTED_READ = 0x8D,
    DVD_IOCTL_SEEK = 0xAB,
    DVD_IOCTL_SET_MAX_ROTATION = 0xDD,
    DVD_IOCTL_REQUEST_ERROR = 0xE0,
    DVD_IOCTL_STOP_MOTOR = 0xE3,
    DVD_IOCTL_AUDIO_BUFFER_CONFIG = 0xE4,
} DVDLowIoctl;

typedef enum {
    DVD_IOCTLV_OPEN_PARTITION = 0x8B,
} DVDLowIoctlv;

typedef enum callbackType {
    BOGUS_TYPE = 0,
    TRANSACTION_CB,
    COVER_CB,
    COVER_REG_CB
} callbackType_t;

typedef struct DVDLowDICommand {
    u8 theCommand;
    u8 pad1[3];
    u32 arg[7];
} DVDLowDICommand;

typedef struct DVDLowContext {
    DVDLowCallback callback;
    callbackType_t callbackType;
    u8 inUse; 
    u32 contextMagic;
    u32 contextNum;
    u32 pad[3];
} DVDLowContext;


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

IOSFd DiFD = -1;

static volatile bool requestInProgress = FALSE;
static bool breakRequested;
static bool callbackInProgress = FALSE;

static DVDLowContext dvdContexts[4] ALIGN(32);
static DVDLowDiRegs diRegValCache ALIGN(32);
static DVDLowRegBuffer registerBuf ALIGN(32);

static IPCIOVector ioVec[10] ALIGN(32);

static DVDTicketError lastTicketError ALIGN(32);
static DVDCoverStatus coverStatus ALIGN(32);
static DVDLowRegister statusRegister ALIGN(32);
static DVDLowRegister coverRegister ALIGN(32);
static DVDLowRegister controlRegister ALIGN(32);

static int freeCommandBuf = 0;
static DVDLowDICommand* diCommand;
static char* pathBuf;

static u32 readLength;
static u32 spinUpValue;

static int freeDvdContext = 0;
static bool dvdContextsInited = FALSE;
static bool DVDLowInitCalled = FALSE;

#define is_aligned(addr) (((u32)(addr) & 0x1F) == 0)

//Force bss ordering
void dummy(){
	dvdContexts[0].inUse = TRUE;
	diRegValCache.dicvr = 0;
}


static void* ddrAllocAligned32(const int size) {
    void* low, *high;

    if (!is_aligned(size)) {
        return 0;
    }

    low = IPCGetBufferLo();
    high = IPCGetBufferHi();

    if (!is_aligned(low)) {
        low = (void*)(((u32)low + 31) & 0x1F);
    }

    if ((u32)low + size > (u32)high) {
        OSReport("(ddrAllocAligned32) Not enough space to allocate %d bytes\n", size);
    }

    IPCSetBufferLo((void*)((u32)low + size));
    return low;
}


static BOOL allocateStructures(void) {
    if ((diCommand = ddrAllocAligned32(sizeof(DVDLowDICommand) * 4)) == 0) {
        OSReport("Allocation of diCommand blocks failed\n");
        return FALSE;
    }

    if ((pathBuf = ddrAllocAligned32(32)) == 0) {
        OSReport("Allocation of pathBuf failed\n");
        return FALSE;
    }

    return TRUE;    
}

static void initDvdContexts(){
	u32 i;

    for (i = 0; i < 4; i++) {
        dvdContexts[i].callback = NULL;
        dvdContexts[i].callbackType = 0;
        dvdContexts[i].inUse = FALSE;
        dvdContexts[i].contextMagic = 0xFEEBDAED;
    	dvdContexts[i].contextNum = i;
    }

    freeDvdContext = 0;
}

static IOSError doTransactionCallback(IOSError ret, void* context) {
    DVDLowContext* dvdContext = context;

    if (dvdContext->contextMagic != 0xFEEBDAED) {
        OSReport("(doTransactionCallback) Error - context mangled!\n");
        dvdContext->contextMagic = 0xFEEBDAED;
        goto out;
    }

    requestInProgress = FALSE;

    if (dvdContext->callback != NULL) {
        int callbackArg;
        callbackInProgress = TRUE;
        callbackArg = ret;

        if (breakRequested == TRUE) {
            breakRequested = FALSE;
            callbackArg |= 8;
        }

        if (callbackArg & 1) {
            readLength = 0;
        }

        dvdContext->callback((u32)callbackArg);
        callbackInProgress = FALSE;
    }

out:
    dvdContext->inUse = FALSE;
    return 0;
}

//unused
static IOSError doCoverCallback(IOSError ret, void* context){
	DVDLowContext* dvdContext = context;

	requestInProgress = FALSE;

    if (dvdContext->contextMagic != 0xFEEBDAED) {
		OSReport("(doCoverCallback) Error - context mangled!\n");
        dvdContext->contextMagic = 0xFEEBDAED;
		goto out;
	}

    if (dvdContext->callback != NULL) {
		int callbackArg;
        callbackInProgress = TRUE;
		callbackArg = ret;

        if (breakRequested) {
            breakRequested = FALSE;
            callbackArg |= 8;
        }

        dvdContext->callback((u32)callbackArg);
        callbackInProgress = FALSE;
    }

out:
    dvdContext->inUse = FALSE;
    return 0;
}

static IOSError doPrepareCoverRegisterCallback(IOSError ret, void* context) {
    DVDLowContext* dvdContext;
    requestInProgress = FALSE;

    diRegValCache.dicvr = registerBuf.reg;
    dvdContext = (DVDLowContext*)context;

    if (dvdContext->contextMagic != 0xFEEBDAED) {
        OSReport("(doTransactionCallback) Error - context mangled!\n");
        dvdContext->contextMagic = 0xFEEBDAED;
    }
    else {
        if (dvdContext->callback != 0) {
            callbackInProgress = TRUE;

            if (breakRequested == TRUE) {
                breakRequested = FALSE;
                ret |= 8;
            }

            dvdContext->callback(ret);
            callbackInProgress = FALSE;
        }
    }

    dvdContext->inUse = FALSE;
    return 0;
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
    IOSError retVal;

    if (DVDLowInitCalled == FALSE) {
        DVDLowInitCalled = TRUE;
        retVal = IPCCltInit();

        if (retVal != IPC_RESULT_OK) {
            OSReport("IPCCltInit returned error: %d\n", retVal);
            return FALSE;
        }

        if (allocateStructures() == FALSE) {
            return FALSE;
        }

        if (dvdContextsInited == FALSE) {
            initDvdContexts();
            dvdContextsInited = TRUE;
        }
    }

    strncpy(pathBuf, "/dev/di", 32);
    DiFD = IOS_Open(pathBuf, 0);

    if (DiFD >= 0) {
        return TRUE;
    }
    else {
        switch (DiFD) {
            case IPC_RESULT_NOEXISTS_INTERNAL:
                OSReport("(DVDLowInit) Error: IOS_Open failed - pathname '/dev/di' does not exist\n");
                return FALSE;
                break;
            case IPC_RESULT_ACCESS_INTERNAL:
                OSReport("(DVDLowInit) Error: IOS_Open failed - calling thread lacks permission\n");
                return FALSE;
                break;
            case IPC_RESULT_CONN_MAX_INTERNAL:
                OSReport("(DVDLowInit) Error: IOS_Open failed - connection limit has been reached\n");
                return FALSE;
                break;
            default:
                OSReport("(DVDLowInit) IOS_Open failed, errorcode = %d\n", DiFD);
                return FALSE;
                break;
        }
    }
}

static void nextCommandBuf(int* bufNum);
static DVDLowContext* newContext(const DVDLowCallback callback, const callbackType_t type);

BOOL DVDLowReadDiskID(DVDDiskID* diskID, DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;
    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);

    if (diskID == 0) {
        OSReport("@@@@@@ WARNING - Calling DVDLowReadDiskId with NULL ptr\n");
    }

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x70;

    rv = IOS_IoctlAsync(DiFD, 0x70, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), diskID, sizeof(DVDDiskID), doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowReadDiskID) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}


static inline void nextCommandBuf(int* bufNum) {
    (*bufNum)++;

    if (*bufNum >= 4) {
        *bufNum = 0;
    }
}

static inline DVDLowContext* newContext(const DVDLowCallback callback, const callbackType_t type) {
    int returnIndex;
    bool use = dvdContexts[freeDvdContext].inUse != 0;

    if (use == true)  {
        OSReport("(newContext) ERROR: freeDvdContext.inUse (#%d) is true\n", freeDvdContext);
        OSReport("(newContext) Now spinning in infinite loop\n");

        while (1) {
        }
    }

    if (dvdContexts[freeDvdContext].contextMagic != 0xFEEBDAED) {
        OSReport("(newContext) Something overwrote the context magic - spinning \n");
    
        while (1) {
        }
    }

    dvdContexts[freeDvdContext].callback = callback;
    dvdContexts[freeDvdContext].callbackType = type;
    dvdContexts[freeDvdContext].inUse = TRUE;
    returnIndex = freeDvdContext;
    freeDvdContext++;

    if (freeDvdContext >= 4) {
        freeDvdContext = 0;
    }

    return(dvdContexts + returnIndex);
}

BOOL DVDLowOpenPartition(const u32 partitionWordOffset, const ESTicket* const eTicket, const u32 numCertBytes, const u8* const certificates, ESTitleMeta* tmd, DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;
    
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
    dvdContext = newContext(callback, 1);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x8B;
    diCommand[freeCommandBuf].arg[0] = partitionWordOffset;
    ioVec[0].base = (u8*)&diCommand[freeCommandBuf];
    ioVec[0].length = sizeof(DVDLowDICommand);

    ioVec[1].base = (u8*)eTicket;
    if (eTicket == 0) {
        ioVec[1].length = 0;
    }
    else {
        ioVec[1].length = sizeof(ESTicket);
    }

    ioVec[2].base = (u8*)certificates;
    if (certificates == 0) {
        ioVec[2].length = 0;
    }
    else {
        ioVec[2].length = numCertBytes; 
    }

    ioVec[3].base = (u8*)tmd;
    ioVec[3].length = sizeof(ESTitleMeta);

    ioVec[4].base = (u8*)&lastTicketError;
    ioVec[4].length = sizeof(lastTicketError);

    rv = IOS_IoctlvAsync(DiFD, 0x8B, 3, 2, ioVec, doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowOpenPartition) IOS_IoctlvAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

//unused
BOOL DVDLowOpenPartitionWithTmdAndTicket(const u32 partitionWordOffset, const ESTicket* const eTicket, const u32 numTmdBytes, const ESTitleMeta* const tmd, const u32 numCertBytes, const u8* const certificates, DVDLowCallback callback){
	DVDLowContext* dvdContext;
    IOSError rv;

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
    dvdContext = newContext(callback, 1);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x93;
    diCommand[freeCommandBuf].arg[0] = partitionWordOffset;
    ioVec[0].base = (u8*)&diCommand[freeCommandBuf];
    ioVec[0].length = sizeof(DVDLowDICommand);

	ioVec[1].base = (u8*)eTicket;
    ioVec[1].length = sizeof(ESTicket);

	ioVec[2].base = (u8*)tmd;
    ioVec[2].length = numTmdBytes;

    ioVec[3].base = (u8*)certificates;
    if (certificates == NULL) {
        ioVec[3].length = 0;
    }else{
		ioVec[3].length = numCertBytes;
	}

	ioVec[4].base = (u8*)&lastTicketError;
    ioVec[4].length = sizeof(lastTicketError);

    rv = IOS_IoctlvAsync(DiFD, 0x93, 4, 1, ioVec, doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowOpenPartition) IOS_IoctlvAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

	return TRUE;
}

BOOL DVDLowOpenPartitionWithTmdAndTicketView(const u32 partitionWordOffset, const ESTicketView* const eTicketView, const u32 numTmdBytes, const ESTitleMeta* const tmd, const u32 numCertBytes, const u8* const certificates, DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;
    
    if (certificates != 0 && !is_aligned(certificates)) {
        return FALSE;
    }

    if (tmd == 0) {
        OSReport("(%s) tmd parameter cannot be NULL\n", __FUNCTION__);
        return FALSE;
    }
    else if (!is_aligned(tmd)) {
        OSReport("(%s) tmd memory is unaligned\n", __FUNCTION__);
        return FALSE;
    }

    if (eTicketView == 0) {
        OSReport("(%s) eTicketView parameter cannot be NULL\n", __FUNCTION__);
        return FALSE;
    }
    else if (!is_aligned(eTicketView)) {
        OSReport("(%s) eTicketView memory is unaligned\n", __FUNCTION__);
        return FALSE;
    }

    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x94;
    diCommand[freeCommandBuf].arg[0] = partitionWordOffset;
    ioVec[0].base = (u8*)&diCommand[freeCommandBuf];
    ioVec[0].length = sizeof(DVDLowDICommand);

    ioVec[1].base = (u8*)eTicketView;
    ioVec[1].length = sizeof(ESTicketView);

    ioVec[2].base = (u8*)tmd;
    ioVec[2].length = numTmdBytes;

    ioVec[3].base = (u8*)certificates;
    if (certificates == 0) {
        ioVec[3].length = 0;
    }
    else {
        ioVec[3].length = numCertBytes; 
    }

    ioVec[4].base = (u8*)&lastTicketError;
    ioVec[4].length = sizeof(lastTicketError);

    rv = IOS_IoctlvAsync(DiFD, 0x94, 4, 1, ioVec, doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowOpenPartition) IOS_IoctlvAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowGetNoDiscBufferSizes(const u32 partitionWordOffset, u32* numTmdBytes, u32* numCertBytes, DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;

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
    dvdContext = newContext(callback, 1);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x92;
    diCommand[freeCommandBuf].arg[0] = partitionWordOffset;

    ioVec[0].base = (u8*)&diCommand[freeCommandBuf];
    ioVec[0].length = sizeof(DVDLowDICommand);

    ioVec[1].base = (u8*)numTmdBytes;
    ioVec[1].length = 4;

    ioVec[2].base = (u8*)numCertBytes;
    ioVec[2].length = 4;

    rv = IOS_IoctlvAsync(DiFD, 0x92, 1, 2, ioVec, doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (%s) IOS_IoctlvAsync returned error: %d\n", __FUNCTION__, rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowGetNoDiscOpenPartitionParams(const u32 partitionWordOffset, ESTicket* eTicket, u32* numTmdBytes, ESTitleMeta* tmd, u32* numCertBytes, u8* certificates, u32* dataWordOffset, u8* h3HashPtr, DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;

    if (eTicket == 0 || numTmdBytes == 0 || tmd == 0 || numCertBytes == 0 || certificates == 0 || dataWordOffset == 0 || h3HashPtr == 0) {
        OSReport("(%s) Error: NULL pointer argument\n", __FUNCTION__);
        return FALSE;
    }

    if (!is_aligned(eTicket) || !is_aligned(numTmdBytes) || !is_aligned(tmd) || !is_aligned(numCertBytes) || !is_aligned(certificates) || !is_aligned(dataWordOffset) || !is_aligned(h3HashPtr)) {
        OSReport("(%s) pointer argument is unaligned\n", __FUNCTION__);
        return FALSE;
    }

    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x90;
    diCommand[freeCommandBuf].arg[0] = partitionWordOffset;

    ioVec[0].base = (u8*)&diCommand[freeCommandBuf];
    ioVec[0].length = sizeof(DVDLowDICommand);

    ioVec[1].base = (u8*)numTmdBytes;
    ioVec[1].length = 4;

    ioVec[2].base = (u8*)numCertBytes;
    ioVec[2].length = 4;

    ioVec[3].base = (u8*)eTicket;
    ioVec[3].length = sizeof(ESTicket);

    ioVec[4].base = (u8 *) numTmdBytes;
    ioVec[4].length = 4;

    ioVec[5].base = (u8*)tmd;
    ioVec[5].length = *numTmdBytes;

    ioVec[6].base = (u8*)numCertBytes;
    ioVec[6].length = 4;

    ioVec[7].base = certificates;
    ioVec[7].length = *numCertBytes;

    ioVec[8].base = (u8*)dataWordOffset;
    ioVec[8].length = 4;

    ioVec[9].base = h3HashPtr;
    ioVec[9].length = 98304;

    rv = IOS_IoctlvAsync(DiFD, 0x90, 3, 7, ioVec, doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (%s) IOS_IoctlvAsync returned error: %d\n", __FUNCTION__, rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

CW_FORCE_STRINGS(DVD_BROADWAY_C_1, "DVDLowNoDiscOpenPartition");

//unused
void DVDLowNoDiscOpenPartition(){
}

BOOL DVDLowClosePartition(DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x8C;

    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    rv = IOS_IoctlAsync(DiFD, 0x8C, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), 0, 0, doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowClosePartition) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowUnencryptedRead(void* destAddr, u32 length, u32 wordOffset, DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;

    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    readLength = length;
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x8D;
    diCommand[freeCommandBuf].arg[0] = length;
    diCommand[freeCommandBuf].arg[1] = wordOffset;

    rv = IOS_IoctlAsync(DiFD, 0x8D, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), destAddr, length, doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowUnencryptedRead) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowStopMotor(BOOL eject, BOOL saving, DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;

    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0xE3;
    diCommand[freeCommandBuf].arg[0] = eject;
    diCommand[freeCommandBuf].arg[1] = saving;

    rv = IOS_IoctlAsync(DiFD, 0xE3, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), &diRegValCache, sizeof(DVDLowDiRegs), doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowStopMotor) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

//unused
BOOL DVDLowWaitForCoverClose(DVDLowCallback callback){
	DVDLowContext* dvdContext;
    IOSError rv;
    
    requestInProgress = TRUE;
    dvdContext = newContext(callback, 2);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x79;
    rv = IOS_IoctlAsync(DiFD, 0x79, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), 0, 0, doCoverCallback, dvdContext);
    
	if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowWaitForCoverClose) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowInquiry(DVDDriveInfo* info, DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;

    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x12;
    rv = IOS_IoctlAsync(DiFD, 0x12, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), info, sizeof(DVDDriveInfo), doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowInquiry) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowRequestError(DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;

    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0xE0;
    rv = IOS_IoctlAsync(DiFD, 0xE0, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), &diRegValCache, sizeof(DVDLowDiRegs), doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowRequestError) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

CW_FORCE_STRINGS(DVD_BROADWAY_C_2,
	"(DVDLowSetSpinupFlag): Synch functions can't be called in callbacks\n",
	"@@@ (DVDLowNotifyReset) IOS_IoctlAsync returned error: %d\n");

BOOL DVDLowSetSpinupFlag(BOOL spinUp) {
    spinUpValue = spinUp;
    return TRUE;
}

//unused
void DVDLowNotifyReset(){
}

BOOL DVDLowReset(DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;

    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x8A;
    diCommand[freeCommandBuf].arg[0] = spinUpValue;
    rv = IOS_IoctlAsync(DiFD, 0x8A, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), 0, 0, doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowReset) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowAudioBufferConfig(BOOL enable, u32 size, DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;

    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0xE4;
    diCommand[freeCommandBuf].arg[0] = enable;
    diCommand[freeCommandBuf].arg[1] = size;
    rv = IOS_IoctlAsync(DiFD, 0xE4, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), &diRegValCache, sizeof(DVDLowDiRegs), doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowAudioBufferConfig) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
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
	u32 result;
    IOSError rv;
    
    if (callbackInProgress == true) {
        OSReport("(DVDLowGetCoverStatus): Synch functions can\'t be called in callbacks\n");
        return 0;
    }

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x88;
    rv = IOS_Ioctl(DiFD, 0x88, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), &coverStatus, sizeof(DVDCoverStatus));
    result = coverStatus.status;

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowGetCoverStatus) IOS_Ioctl returned error: %d\n", rv);
        result = 0xDEADDEAD;
    }

    return result;
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
    DVDLowContext* dvdContext;
    IOSError rv;

    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0xA4;
    diCommand[freeCommandBuf].arg[0] = format >> 16;
    diCommand[freeCommandBuf].arg[1] = lsn;

    rv = IOS_IoctlAsync(DiFD, 0xA4, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), reportKey, sizeof(DVDVideoReportKey), doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowReportKey) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
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
    DVDLowContext* dvdContext;
    IOSError rv;

    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0xDD;
    diCommand[freeCommandBuf].arg[0] = (subcmd >> 16) & 3;
    rv = IOS_IoctlAsync(DiFD, 0xDD, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), 0, 0, doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowSetMaxRotation) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowRead(void* destAddr, u32 length, u32 wordOffset, DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;

    if (!is_aligned(destAddr)) {
        OSReport("(DVDLowRead): ERROR - destAddr buffer is not 32 byte aligned\n");
        return FALSE;
    }

    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    readLength = length;
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x71;
    diCommand[freeCommandBuf].arg[0] = length;
    diCommand[freeCommandBuf].arg[1] = wordOffset;
    rv = IOS_IoctlAsync(DiFD, 0x71, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), destAddr, length, doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowRead) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowSeek(u32 wordOffset, DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;

    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0xAB;
    diCommand[freeCommandBuf].arg[0] = wordOffset;
    rv = IOS_IoctlAsync(DiFD, 0xAB, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), 0, 0, doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowSeek) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

//unused
u32 DVDLowGetCoverReg(){
    u32 val;
	IOSError rv;
    
    if (callbackInProgress == true) {
        OSReport("(DVDLowGetCoverReg): Synch functions can\'t be called in callbacks\n");
        return 0;
    }
    
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x7a;
    rv = IOS_Ioctl(DiFD, 0x7a, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), &coverRegister, sizeof(coverRegister));
    val = coverRegister.reg;

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowGetCoverReg) IOS_Ioctl returned error: %d\n", rv);
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
    DVDLowContext* dvdContext;
    IOSError rv;

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x7A;
    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    rv = IOS_IoctlAsync(DiFD, 0x7A, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), &registerBuf, sizeof(registerBuf), doPrepareCoverRegisterCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
		//typo
        OSReport("@@@ (DVDLowPrepareCoverRegsiter) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowPrepareStatusRegister(DVDLowCallback callback) {
    DVDLowContext* dvdContext;
    IOSError rv;

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x95;
    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    rv = IOS_IoctlAsync(DiFD, 0x95, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), &statusRegister, sizeof(statusRegister), doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
		//another typo lol
        OSReport("@@@ (DVDLowPrepareStatusRegsiter) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

BOOL DVDLowPrepareControlRegister(DVDLowCallback callback){
	DVDLowContext* dvdContext;
    IOSError rv;
    
    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x96;
    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    rv = IOS_IoctlAsync(DiFD, 0x96, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), &controlRegister, sizeof(statusRegister), doTransactionCallback, dvdContext);
    
	if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowPrepareControlRegister) IOS_IoctlAsync returned error: %d\n", rv);
		dvdContext->inUse = FALSE;
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
    DVDLowContext* dvdContext;
    IOSError rv;

    nextCommandBuf(&freeCommandBuf);
    diCommand[freeCommandBuf].theCommand = 0x86;
    requestInProgress = TRUE;
    dvdContext = newContext(callback, 1);
    rv = IOS_IoctlAsync(DiFD, 0x86, &diCommand[freeCommandBuf], sizeof(DVDLowDICommand), 0, 0, doTransactionCallback, dvdContext);

    if (rv != IPC_RESULT_OK) {
        OSReport("@@@ (DVDLowClearCoverInterrupt) IOS_IoctlAsync returned error: %d\n", rv);
        dvdContext->inUse = FALSE;
        return FALSE;
    }

    return TRUE;
}

//unused
void DVDLowGetLastEticketError(){
}

BOOL __DVDLowTestAlarm(const OSAlarm *) {
    return FALSE;
}

CW_FORCE_STRINGS(DVD_BROADWAY_C_5,
"@@@ (DVDLowEnableDvdVideo) IOS_IoctlAsync returned error: %d\n");

//unused
void DVDLowEnableDvdVideo(){
}
