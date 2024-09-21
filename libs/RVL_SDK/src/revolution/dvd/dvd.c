#include <revolution/DVD.h>
#include <revolution/ESP.h>
#include <revolution/OS.h>

#define DISK_TOC_OFFSET 0x40000
#define DISK_TOC_SIZE ROUND_UP(sizeof(DVDGameToc), 32)

#define DISK_PART_OFFSET (DISK_TOC_OFFSET + DISK_TOC_SIZE)
#define DISK_PART_SIZE ROUND_UP(sizeof(DVDPartInfo), 32)

#define MAX_TRANSFER_SIZE 0x80000

typedef void (*DVDOptionalCommandChecker)(DVDCommandBlock* block,
                                          DVDLowCallback callback);

typedef void (*DVDCommandState)(DVDCommandBlock* block);

typedef enum {
    NAND_ERROR_GENERIC = 0x01234567,
    NAND_ERROR_TIMEOUT = 0x01234568,
    NAND_ERROR_SECURITY = 0x01234569
};

// High 8 bits of command result DIIMMVAL
typedef enum {
    REQUEST_STATE_OK = (0 << 24),
    REQUEST_STATE_COVER_OPENED = (1 << 24),
    REQUEST_STATE_DISK_CHANGED = (2 << 24),
    REQUEST_STATE_NO_DISK = (3 << 24),
    REQUEST_STATE_MOTOR_STOPPED = (4 << 24),
    REQUEST_STATE_DISK_ERROR = (5 << 24)
};

// Lower 24 bits of command result DIIMMVAL
typedef enum {
    REQUEST_ERROR_OK = 0x000000,
    REQUEST_ERROR_MOTOR_STOPPED = 0x020400,
    REQUEST_ERROR_ID_NOT_READ = 0x020401,
    REQUEST_ERROR_COVER_OPENED = 0x023A00,
    REQUEST_ERROR_SEEK_FAIL = 0x030200,
    REQUEST_ERROR_READ_FAIL = 0x031100,
    REQUEST_ERROR_XFER_FAIL = 0x040800,
    REQUEST_ERROR_BAD_OPCODE = 0x052000,
    REQUEST_ERROR_BAD_AUDIO_BUF = 0x052001,
    REQUEST_ERROR_OUT_OF_RANGE = 0x052100,
    REQUEST_ERROR_BAD_FIELD = 0x052400,
    REQUEST_ERROR_BAD_AUDIO_CMD = 0x052401,
    REQUEST_ERROR_BAD_PERIOD = 0x052402,
    REQUEST_ERROR_053000h = 0x053000,
    REQUEST_ERROR_END_OF_USER = 0x056300,
    REQUEST_ERROR_MEDIUM_CHANGED = 0x062800,
    REQUEST_ERROR_MEDIUM_REMOVAL = 0x0B5A01
};

typedef enum {
    ERROR_TYPE_OK,
    ERROR_TYPE_ERROR,
    ERROR_TYPE_FATAL,
    ERROR_TYPE_UNKNOWN
};

typedef enum {
    COMMAND_NONE,
    COMMAND_READ,
    COMMAND_SEEK,
    COMMAND_CHANGE_DISK,
    COMMAND_BSREAD,
    COMMAND_READID,
    COMMAND_INITSTREAM,
    COMMAND_CANCELSTREAM,
    COMMAND_STOP_STREAM_AT_END,
    COMMAND_REQUEST_AUDIO_ERROR,
    COMMAND_REQUEST_PLAY_ADDR,
    COMMAND_REQUEST_START_ADDR,
    COMMAND_REQUEST_LENGTH,
    COMMAND_AUDIO_BUFFER_CONFIG,
    COMMAND_INQUIRY,
    COMMAND_BS_CHANGE_DISK,
    COMMAND_STOP_MOTOR,

    COMMAND_RESET = 32,
    COMMAND_READ_UNENCRYPTED,
    COMMAND_OPEN_PARTITION,
    COMMAND_CLOSE_PARTITION,
    COMMAND_GET_COVER_READY,
    COMMAND_SET_MAX_ROTATION,
    COMMAND_GET_COVER_STATUS,
    COMMAND_REQUEST_ERROR,
    COMMAND_GET_DISK_ID_VALID,
    COMMAND_29h,
    COMMAND_OPEN_PARTITION_WITH_TMD
};

typedef enum {
    RESUME_POINT_NONE,
    RESUME_POINT_WRONG_DISK_ID,
    RESUME_POINT_DISK_ERROR,
    RESUME_POINT_NO_DISK,
    RESUME_POINT_COVER_OPENED,
    RESUME_POINT_OK,
    RESUME_POINT_DISK_CHANGED,
    RESUME_POINT_7 // Waiting for motor to stop with no pending DVD tasks?
};

typedef enum {
    MOTOR_STATE_WORKING,
    MOTOR_STATE_PENDING_STOP,
    MOTOR_STATE_STOPPED
};

typedef enum { PART_TYPE_DATA, PART_TYPE_UPDATE, PART_TYPE_CHANNEL };

typedef struct DVDBB2 {
    u32 dolOffset; // at 0x0
    u32 fstOffset; // at 0x4
    u32 fstSize;   // at 0x8
    u32 fstLimit;  // at 0xC
    char UNK_0x30[0x40 - 0x30];
} DVDBB2;

typedef struct DVDDiskHeader {
    DVDDiskID diskID;           // at 0x0
    char name[64];              // at 0x20
    u8 disableVerifyHash;       // at 0x60
    u8 disableDiscEncrypt;      // at 0x61
    char padding[0x400 - 0x62]; // at 0x62
    char UNK_0x400[0x20];
    DVDBB2 bb2; // at 0x420
} DVDDiskHeader;

typedef struct DVDPartInfo {
    u32 offset; // at 0x0
    u32 type;   // at 0x4
} DVDPartInfo;

typedef struct DVDGameToc {
    u32 numPartition; // at 0x0
    u8 UNK_0x4[0x20 - 0x4];
} DVDGameToc;


typedef struct DVDPartitionParams {
    ESTicket ticket;
    u8 padding0[ROUND_UP(sizeof(ESTicket), 32) - sizeof(ESTicket)];
    ESTicketView ticketView;
    u8 padding1[ROUND_UP(sizeof(ESTicketView), 32) - sizeof(ESTicketView)];
    u32 numTmdBytes;
    u8 padding2[28];
    ESTitleMeta tmd;
    u8 padding3[ROUND_UP(sizeof(ESTitleMeta), 32) - sizeof(ESTitleMeta)];
    u32 numCertBytes;
    u8 padding4[28];
    u8 certificates[4096];
    u32 dataWordOffset;
    u8 padding5[28];
    u8 h3Hash[H3_HASH_TABLE_SIZE];
} DVDPartitionParams;

static void defaultOptionalCommandChecker(DVDCommandBlock* block,
                                          DVDLowCallback callback);


const char* __DVDVersion = "<< RVL_SDK - DVD \trelease build: Feb 27 2009 10:01:59 (0x4302_145) >>";


static volatile u32 CommandInfoCounter = 0;
static volatile BOOL PauseFlag = FALSE;
static volatile BOOL PausingFlag = FALSE;
static volatile BOOL FatalErrorFlag = FALSE;
static volatile u32 Canceling = FALSE;
static volatile u32 ResumeFromHere = 0;
static volatile s32 NumInternalRetry = 0;
static volatile BOOL FirstTimeInBootrom = FALSE;
static volatile u32 Breaking = FALSE;
static volatile u32 WaitingForCoverOpen  = FALSE;
static volatile u32 WaitingForCoverClose = FALSE;
static volatile u32 MotorStopped = FALSE;
static volatile u32 ChangedDisc = FALSE;
static volatile BOOL PreparingCover = FALSE;
volatile u32  __DVDLayoutFormat = 0;
static BOOL DVDInitialized = FALSE;
static volatile u32 __BS2DVDLowIntType = FALSE;
static volatile BOOL Prepared = FALSE;
static DVDPartInfo* BootGameInfo = NULL;
static DVDPartInfo* PartInfo = NULL;
static DVDGameToc* GameToc = NULL;
static u32 __DVDNumTmdBytes ALIGN(32) = 0;
static volatile s64 LastResetEnd = 0;
static u32 MotorState = 0;
static volatile BOOL ResetRequired = FALSE;
static volatile u32 LastError = 0;
static volatile u32 CancelLastError = 0;
static DVDCommandCallback CancelCallback = NULL;
static volatile u32 CurrCommand = 0;
static OSBootInfo* bootInfo = NULL;
static DVDDiskID* IDShouldBe = NULL;
static DVDCommandBlock* executing = NULL;
DVDCommandState LastState = NULL;

static ESTitleMeta* Tmd;
static volatile BOOL AutoFinishing = FALSE;
static volatile u32 CoverState;

static BOOL autoInvalidation = TRUE;
static DVDOptionalCommandChecker checkOptionalCommand =
    defaultOptionalCommandChecker;

static DVDBB2 BB2 ALIGN(32);
static DVDDiskID CurrDiskID ALIGN(32);

static OSAlarm FatalAlarm;
static OSAlarm ResetAlarm;
static OSAlarm CoverAlarm;
extern BOOL __OSInIPL;

static u8  __DVDGameTocBuffer[DISK_TOC_SIZE] ALIGN(32);
static u8  __DVDPartInfoBuffer[DISK_PART_SIZE] ALIGN(32);
static u8 __DVDTmdBuffer[ROUND_UP(sizeof(ESTitleMeta), 32)] ALIGN(64);
static u8 __DVDTicketViewBuffer[ROUND_UP(sizeof(ESTicketView), 32)] ALIGN(64);

static DVDCommandBlock DummyCommandBlock;
DVDCommandBlock __DVDStopMotorCommandBlock;
DVDCommandBlock __DVDRestartMotorCommandBlock;

static void stateReadingFST(void);
static void stateError(u32 error);
static void stateTimeout(void);
static void stateSecurityError(void);
static void stateGettingError(void);
static void stateGoToRetry(void);
static void stateReadingTOC(DVDCommandBlock* block);
static void stateReadingPartitionInfo(DVDCommandBlock* block);
static void stateOpenPartition(DVDCommandBlock* block);
static void stateOpenPartition2(DVDCommandBlock* block);
static void stateCheckID2(DVDCommandBlock* block);
static void stateCheckID2a(DVDCommandBlock* block);
static void stateCheckID3(DVDCommandBlock* block);
static void stateCoverClosed(void);
static void stateDownRotation(DVDCommandBlock* block);
static void stateCoverClosed_CMD(DVDCommandBlock* block);
static void stateMotorStopped(DVDCommandBlock* block);
static void stateReady(void);
static void stateBusy(DVDCommandBlock* block);

static void cbForStateReadingFST(u32 intType);
static void cbForStateError(u32 intType);
static void cbForStoreErrorCode1(s32 result, s32 arg1);
static void cbForStoreErrorCode2(s32 result, s32 arg1);
static void cbForStoreErrorCode3(s32 result, s32 arg1);
static void cbForStateGettingError(u32 intType);
static void cbForUnrecoveredError(u32 intType);
static void cbForUnrecoveredErrorRetry(u32 intType);
static void cbForStateGoToRetry(u32 intType);
static void cbForStateOpenPartition(u32 intType);
static void cbForStateCheckID1(u32 intType);
static void cbForStateCheckID2(u32 intType);
static void cbForStateCheckID2a(u32 intType);
static void cbForStateCheckID3(u32 intType);
static void cbForStateReset(u32 intType);
static void cbForStateDownRotation(u32 intType);
static void cbForStateCoverClosed(u32 intType);
static void cbForStateMotorStopped(u32 intType);
static void cbForStateBusy(u32 intType);

static void cbForCancelSync(s32 result, DVDCommandBlock* block);

static void CoverAlarmHandler(OSAlarm*, OSContext*);
static void ResetAlarmHandler(OSAlarm*, OSContext*);

static void StampCommand(u32 command, u32 param1, u32 param2) {
    BOOL enabled = OSDisableInterrupts();

    if (CommandInfoCounter >= DVD_ERROR_CMD_MAX) {
        CommandInfoCounter = 0;
    }

    __ErrorInfo.info[CommandInfoCounter].command = command;
    __ErrorInfo.info[CommandInfoCounter].param1 = param1;
    __ErrorInfo.info[CommandInfoCounter].param2 = param2;
    __ErrorInfo.info[CommandInfoCounter].tick = OSGetTick();

    CommandInfoCounter++;
    OSRestoreInterrupts(enabled);
}

inline void StampIntType(u32 intType) {
    BOOL enabled = OSDisableInterrupts();

    if (CommandInfoCounter <= 0) {
        __ErrorInfo.info[DVD_ERROR_CMD_MAX - 1].intType = intType;
    } else {
        __ErrorInfo.info[CommandInfoCounter - 1].intType = intType;
    }

    OSRestoreInterrupts(enabled);
}

static void defaultOptionalCommandChecker(DVDCommandBlock* block,
                                          DVDLowCallback callback) {
#pragma unused(block)
#pragma unused(callback)
}

//unused
void __DVDSetOptionalCommandChecker(){
}

void DVDInit(void) {
    DVDDiskID* diskID;
    s32 rv;

    if (!DVDInitialized) {
        OSRegisterVersion(__DVDVersion);
        DVDInitialized = TRUE;

        DVDLowInit();

        if (!__OSInIPL && OS_LOCKED_FLAG == 0x80) {
            rv = ESP_InitLib();

            if (rv == 0) {
                rv = ESP_DiGetTicketView(NULL, (ESTicketView*)__DVDTicketViewBuffer);
            }

            if (rv == 0) {
                rv = ESP_DiGetTmd(NULL, &__DVDNumTmdBytes);
            }

            if (rv == 0) {
                rv = ESP_DiGetTmd((ESTitleMeta*)__DVDTmdBuffer, &__DVDNumTmdBytes);
            }

            ESP_CloseLib();
        }

        __DVDFSInit();
        __DVDClearWaitingQueue();

        MotorState = MOTOR_STATE_WORKING;
        bootInfo = (OSBootInfo*)OSPhysicalToCached(OS_PHYS_BOOT_INFO);
        IDShouldBe = &bootInfo->diskID;

        OSInitThreadQueue(&__DVDThreadQueue);
        DVDLowUnmaskStatusInterrupts();
        DVDLowMaskCoverInterrupt();

        if (bootInfo->bootMagic != OS_BOOT_MAGIC_JTAG &&
            bootInfo->bootMagic != OS_BOOT_MAGIC_BOOTROM) {
            FirstTimeInBootrom = TRUE;
        }

        memset(&__ErrorInfo, 0, sizeof(DVDErrorInfo));

        diskID = &((OSBootInfo*)OSPhysicalToCached(OS_PHYS_BOOT_INFO))->diskID;
        memcpy(__ErrorInfo.game, &diskID->game, sizeof(__ErrorInfo.game));
        __ErrorInfo.disk = diskID->disk;
        __ErrorInfo.version = diskID->version;

        __DVDLayoutFormat = 0;
        DVDSetAutoFatalMessaging(TRUE);
    }
}

static void stateReadingFST(void) {
    // UB if called?
    LastState = (DVDCommandState)stateReadingFST;

    // clang-format off
#line 1090
    OS_ASSERT(bootInfo->fstSize >= BB2.fstSize, "DVDChangeDisk(): FST in the new disc is too big.   ");
    // clang-format on

    DVDLowClearCoverInterrupt(NULL);

    StampCommand(COMMAND_READ, BB2.fstOffset >> __DVDLayoutFormat,
                 ROUND_UP(BB2.fstSize << (~__DVDLayoutFormat & 2), 32));

    DVDLowRead(bootInfo->fstStart,
               ROUND_UP(BB2.fstSize << (~__DVDLayoutFormat & 2), 32),
               BB2.fstOffset >> __DVDLayoutFormat, cbForStateReadingFST);
}

static void cbForStateReadingFST(u32 intType) {
    DVDCommandBlock* block;

    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;
        __DVDFSInit();

        block = executing;
        executing = &DummyCommandBlock;

        block->state = DVD_STATE_IDLE;
        if (block->callback) {
            (block->callback)(DVD_RESULT_OK, block);
        }

        stateReady();
    } else {
        stateGettingError();
    }
}

static void FatalAlarmHandler(OSAlarm* alarm, OSContext* ctx) {
#pragma unused(alarm)
#pragma unused(ctx)

    __DVDPrintFatalMessage();
}

static void cbForStateError(u32 intType) {
    DVDCommandBlock* block;

    if (__DVDGetAutoFatalMessaging()) {
        OSCreateAlarm(&FatalAlarm);
        OSSetAlarm(&FatalAlarm, 1, FatalAlarmHandler);
        return;
    }

    executing->state = DVD_STATE_FATAL;

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else {
        FatalErrorFlag = TRUE;

        block = executing;
        executing = &DummyCommandBlock;

        if (block->callback != NULL) {
            block->callback(DVD_RESULT_FATAL, block);
        }

        if (Canceling) {
            Canceling = FALSE;

            if (CancelCallback != NULL) {
                CancelCallback(DVD_RESULT_OK, block);
            }
        }

        stateReady();
    }
}

static void cbForStoreErrorCode1(s32 result, s32 arg1) {
#pragma unused(result)
#pragma unused(arg1)

    DVDLowStopMotor(FALSE, FALSE, cbForStateError);
}

static void stateError(u32 error) {
    __DVDStoreErrorCode(error, cbForStoreErrorCode1);
}

static void cbForStoreErrorCode2(s32 result, s32 arg1) {
#pragma unused(result)
#pragma unused(arg1)

    DVDLowSetSpinupFlag(FALSE);
    DVDLowReset(cbForStateError);
    ResetRequired = FALSE;
    ResumeFromHere = RESUME_POINT_NONE;
}

static void stateTimeout(void) {
    __DVDStoreErrorCode(NAND_ERROR_TIMEOUT, cbForStoreErrorCode2);
}

static void stateSecurityError(void) {
    __DVDStoreErrorCode(NAND_ERROR_SECURITY, cbForStoreErrorCode2);
}

static void stateGettingError(void) {
    StampCommand(COMMAND_REQUEST_ERROR, 0, 0);
    DVDLowRequestError(cbForStateGettingError);
}

static u32 CategorizeError(u32 diimmval) {
    if (diimmval == REQUEST_ERROR_MOTOR_STOPPED) {
        LastError = diimmval;
        return ERROR_TYPE_ERROR;
    }

    // Mask out state bits
    diimmval &= ~0xFF000000;

    if (diimmval == REQUEST_ERROR_MEDIUM_CHANGED ||
        diimmval == REQUEST_ERROR_COVER_OPENED ||
        diimmval == REQUEST_ERROR_053000h ||
        diimmval == REQUEST_ERROR_MEDIUM_REMOVAL) {
        return ERROR_TYPE_OK;
    }

    if (diimmval == REQUEST_ERROR_BAD_OPCODE &&
        (executing->command == COMMAND_SET_MAX_ROTATION ||
         LastState == stateDownRotation)) {
        return ERROR_TYPE_OK;
    }

    NumInternalRetry++;

    if (NumInternalRetry == 2) {
        if (diimmval == LastError) {
            LastError = diimmval;
            return ERROR_TYPE_ERROR;
        }

        LastError = diimmval;
        return ERROR_TYPE_FATAL;
    }

    LastError = diimmval;

    if (diimmval == REQUEST_ERROR_READ_FAIL ||
        executing->command == COMMAND_READID) {
        return ERROR_TYPE_FATAL;
    }

    return ERROR_TYPE_UNKNOWN;
}

static BOOL CheckCancel(u32 resume) {
    DVDCommandBlock* block;

    if (Canceling) {
        ResumeFromHere = resume;
        Canceling = FALSE;

        block = executing;
        executing = &DummyCommandBlock;

        block->state = DVD_STATE_CANCELED;
        if (block->callback != NULL) {
            block->callback(DVD_RESULT_CANCELED, block);
        }

        if (CancelCallback != NULL) {
            CancelCallback(DVD_RESULT_OK, block);
        }

        stateReady();
        return TRUE;
    }

    return FALSE;
}

static void cbForStoreErrorCode3(s32 result, s32 arg1) {
#pragma unused(result)
#pragma unused(arg1)

    stateGoToRetry();
}

static void cbForStateGettingError(u32 intType) {
    u32 diimmval;
    u32 state;
    u32 resume;
    u32 category;

    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_DE) {
        stateError(NAND_ERROR_GENERIC);
        return;
    }

    diimmval = DVDLowGetImmBufferReg();
    state = diimmval & 0xFF000000;
    category = CategorizeError(diimmval);

    if (category == ERROR_TYPE_ERROR) {
        stateError(diimmval);
        return;
    }

    if (category == ERROR_TYPE_FATAL || category == ERROR_TYPE_UNKNOWN) {
        resume = RESUME_POINT_NONE;
    } else if (state == REQUEST_STATE_COVER_OPENED) {
        resume = RESUME_POINT_COVER_OPENED;
    } else if (state == REQUEST_STATE_DISK_CHANGED) {
        resume = RESUME_POINT_DISK_CHANGED;
    } else if (state == REQUEST_STATE_NO_DISK) {
        resume = RESUME_POINT_NO_DISK;
    } else if (state == REQUEST_STATE_OK) {
        if (diimmval == REQUEST_ERROR_053000h) {
            resume = RESUME_POINT_WRONG_DISK_ID;
        } else {
            resume = RESUME_POINT_OK;
        }
    } else {
        resume = RESUME_POINT_OK;
    }

    if (CheckCancel(resume)) {
        return;
    }

    if (category == ERROR_TYPE_FATAL) {
        __DVDStoreErrorCode(diimmval, cbForStoreErrorCode3);
        return;
    }

    if (category == ERROR_TYPE_UNKNOWN) {
        if ((diimmval & ~0xFF000000) == REQUEST_ERROR_READ_FAIL) {
            StampCommand(COMMAND_SEEK, executing->offset, 0);
            DVDLowSeek(executing->offset, cbForUnrecoveredError);
        } else {
            LastState(executing);
        }

        return;
    }

    if (state == REQUEST_STATE_COVER_OPENED) {
        executing->state = DVD_STATE_COVER_OPENED;
        stateMotorStopped(executing);
        return;
    }

    if (state == REQUEST_STATE_DISK_CHANGED) {
        executing->state = DVD_STATE_COVER_CLOSED;
        stateCoverClosed();
        return;
    }

    if (state == REQUEST_STATE_NO_DISK) {
        executing->state = DVD_STATE_NO_DISK;
        stateMotorStopped(executing);
        return;
    }

    if (state == REQUEST_STATE_OK) {
        if (diimmval == REQUEST_ERROR_053000h) {
            StampCommand(COMMAND_STOP_MOTOR, 0, 0);
            DVDLowStopMotor(FALSE, FALSE, cbForStateCheckID1);
        } else {
            stateError(NAND_ERROR_GENERIC);
        }

        return;
    }

    stateError(NAND_ERROR_GENERIC);
}

static void cbForUnrecoveredError(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else if (intType & DVD_INTTYPE_TC) {
        stateGoToRetry();
    } else {
        StampCommand(COMMAND_REQUEST_ERROR, 0, 0);
        DVDLowRequestError(cbForUnrecoveredErrorRetry);
    }
}

static void cbForUnrecoveredErrorRetry(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else if (intType & DVD_INTTYPE_DE) {
        stateError(NAND_ERROR_GENERIC);
    } else {
        stateError(DVDLowGetImmBufferReg());
    }
}

static void stateGoToRetry(void) {
    StampCommand(COMMAND_STOP_MOTOR, 0, 0);
    DVDLowStopMotor(FALSE, FALSE, cbForStateGoToRetry);
}

static void cbForStateGoToRetry(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (intType & DVD_INTTYPE_DE) {
        stateError(NAND_ERROR_GENERIC);
        return;
    }

    NumInternalRetry = 0;

    if (CurrCommand == COMMAND_BSREAD || CurrCommand == COMMAND_READID ||
        CurrCommand == COMMAND_AUDIO_BUFFER_CONFIG ||
        CurrCommand == COMMAND_READ_UNENCRYPTED ||
        CurrCommand == COMMAND_OPEN_PARTITION ||
        CurrCommand == COMMAND_29h ||
        CurrCommand == COMMAND_OPEN_PARTITION_WITH_TMD ||
        CurrCommand == COMMAND_BS_CHANGE_DISK ||
        CurrCommand == COMMAND_SET_MAX_ROTATION) {
        ResetRequired = TRUE;
    }

    if (!CheckCancel(RESUME_POINT_DISK_ERROR)) {
        executing->state = DVD_STATE_DISK_ERROR;
        stateMotorStopped(executing);
    }
}

static void stateCheckID(void) {
    switch (CurrCommand) {
    case COMMAND_CHANGE_DISK:
        ChangedDisc = FALSE;

        if (DVDCompareDiskID(&CurrDiskID, executing->id)) {
            memcpy(IDShouldBe, &CurrDiskID, sizeof(DVDDiskID));
            executing->state = DVD_STATE_BUSY;
            DCInvalidateRange(&BB2, sizeof(DVDBB2));

            NumInternalRetry = 0;
            stateReadingTOC(executing);
        } else {
            StampCommand(COMMAND_STOP_MOTOR, 0, 0);
            DVDLowStopMotor(FALSE, FALSE, cbForStateCheckID1);
        }
        break;
    default:
        if (memcmp(&CurrDiskID, IDShouldBe, sizeof(DVDDiskID)) != 0) {
            StampCommand(COMMAND_STOP_MOTOR, 0, 0);
            DVDLowStopMotor(FALSE, FALSE, cbForStateCheckID1);
        } else {
            NumInternalRetry = 0;
            stateReadingTOC(executing);
        }
        break;
    }
}

//unused
static void stateCheckID3(DVDCommandBlock* block) {
    StampCommand(COMMAND_AUDIO_BUFFER_CONFIG, IDShouldBe->strmEnable, 10);
    DVDLowAudioBufferConfig((BOOL)IDShouldBe->strmEnable, 10, cbForStateCheckID3);
}

//unused
static void stateCheckID2a(DVDCommandBlock* block) {
    StampCommand(COMMAND_AUDIO_BUFFER_CONFIG, IDShouldBe->strmEnable, 10);
    DVDLowAudioBufferConfig((BOOL)IDShouldBe->strmEnable, 10, cbForStateCheckID2a);
}

//unused
static void cbForStateCheckID2a(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;
        stateCheckID2(executing);
    } else {
        stateGettingError();
    }
}

static void cbForStateReadingTOC(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;
        GameToc = (DVDGameToc*)__DVDGameTocBuffer;
        stateReadingPartitionInfo(executing);
    } else {
        stateGettingError();
    }
}

static void stateReadingTOC(DVDCommandBlock* block) {
#pragma unused(block)

    DVDLowClearCoverInterrupt(NULL);

    StampCommand(COMMAND_READ_UNENCRYPTED, DVD_LOW_OFFSET(DISK_TOC_OFFSET),
                 DISK_TOC_SIZE);

    DVDLowUnencryptedRead(__DVDGameTocBuffer, DISK_TOC_SIZE,
                          DVD_LOW_OFFSET(DISK_TOC_OFFSET),
                          cbForStateReadingTOC);
}

static void cbForStateReadingPartitionInfo(u32 intType) {
    s16 i;

    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;
        PartInfo = (DVDPartInfo*)__DVDPartInfoBuffer;
        BootGameInfo = NULL;

        if (OS_BOOT_PARTITION_OFFSET != 0) {
            BootGameInfo = PartInfo;
            BootGameInfo->type = OS_BOOT_PARTITION_TYPE;
            BootGameInfo->offset = OS_BOOT_PARTITION_OFFSET;
        } else {
            for (i = 0; i < GameToc->numPartition; i++) {
                if (PartInfo->type == OS_BOOT_PARTITION_TYPE) {
                    BootGameInfo = PartInfo;
                }

                PartInfo++;
            }
        }

        if (BootGameInfo != NULL) {
            switch (CurrCommand) {
            case COMMAND_CHANGE_DISK:
                NumInternalRetry = 0;
                stateOpenPartition(executing);
                break;
            default:
                NumInternalRetry = 0;
                stateOpenPartition2(executing);
                break;
            }
        } else if (!CheckCancel(RESUME_POINT_WRONG_DISK_ID)) {
            executing->state = DVD_STATE_WRONG_DISK_ID;
            stateMotorStopped(executing);
        }
    } else {
        stateGettingError();
    }
}

static void stateReadingPartitionInfo(DVDCommandBlock* block) {
#pragma unused(block)

    DVDLowClearCoverInterrupt(NULL);

    StampCommand(COMMAND_READ_UNENCRYPTED, DVD_LOW_OFFSET(DISK_PART_OFFSET),
                 DISK_PART_SIZE);

    DVDLowUnencryptedRead(__DVDPartInfoBuffer, DISK_PART_SIZE,
                          DVD_LOW_OFFSET(DISK_PART_OFFSET),
                          cbForStateReadingPartitionInfo);
}

static void cbForStateOpenPartition(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;
        stateCheckID2(executing);
    } else {
        stateGettingError();
    }
}

static void stateOpenPartition(DVDCommandBlock* block) {
#pragma unused(block)

    DVDLowClearCoverInterrupt(NULL);
    StampCommand(COMMAND_OPEN_PARTITION, BootGameInfo->offset, 0);

    if (OS_LOCKED_FLAG == 0x80) {
        DVDLowOpenPartitionWithTmdAndTicketView(BootGameInfo->offset, (ESTicketView*)__DVDTicketViewBuffer,
        __DVDNumTmdBytes, (ESTitleMeta*)__DVDTmdBuffer, 0, NULL, cbForStateOpenPartition);
    } else {
        DVDLowOpenPartition(BootGameInfo->offset, NULL, 0, 0, (ESTitleMeta*)__DVDTmdBuffer, cbForStateOpenPartition);
    }
}

static void cbForStateOpenPartition2(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;
        if (!CheckCancel(RESUME_POINT_NONE)) {
            executing->state = DVD_STATE_BUSY;
            stateBusy(executing);
        }
    } else {
        stateGettingError();
    }
}

static void stateOpenPartition2(DVDCommandBlock* block) {
#pragma unused(block)

    DVDLowClearCoverInterrupt(NULL);
    StampCommand(COMMAND_OPEN_PARTITION, BootGameInfo->offset, 0);

    if (OS_LOCKED_FLAG == 0x80) {
        DVDLowOpenPartitionWithTmdAndTicketView(BootGameInfo->offset, (ESTicketView*)__DVDTicketViewBuffer,
        __DVDNumTmdBytes, (ESTitleMeta*)__DVDTmdBuffer, 0, NULL, cbForStateOpenPartition2);
    } else {
        DVDLowOpenPartition(BootGameInfo->offset, NULL, 0, 0, (ESTitleMeta*)__DVDTmdBuffer,
                            cbForStateOpenPartition2);
    }
}

static void stateCheckID2(DVDCommandBlock* block) {
#pragma unused(block)

    DVDLowClearCoverInterrupt(NULL);

    StampCommand(COMMAND_READ, DVD_LOW_OFFSET(offsetof(DVDDiskHeader, bb2)),
                 sizeof(DVDBB2));

    DVDLowRead(&BB2, sizeof(DVDBB2),
               DVD_LOW_OFFSET(offsetof(DVDDiskHeader, bb2)),
               cbForStateCheckID2);
}

static void cbForStateCheckID1(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else if (intType & DVD_INTTYPE_DE) {
        stateError(NAND_ERROR_GENERIC);
    } else {
        NumInternalRetry = 0;
        if (!CheckCancel(RESUME_POINT_WRONG_DISK_ID)) {
            executing->state = DVD_STATE_WRONG_DISK_ID;
            stateMotorStopped(executing);
        }
    }
}

static void cbForStateCheckID2(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;
        stateReadingFST();
    } else {
        stateGettingError();
    }
}

//unused
static void cbForStateCheckID3(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;

        if (!CheckCancel(RESUME_POINT_NONE)) {
            executing->state = DVD_STATE_BUSY;
            stateBusy(executing);
        }
    } else {
        stateGettingError();
    }
}

//unused
//static
void AlarmHandler(){
}

static void stateCoverClosed(void) {
    DVDCommandBlock* block;

    MotorState = MOTOR_STATE_PENDING_STOP;

    switch (CurrCommand) {
    case COMMAND_READID:
    case COMMAND_BSREAD:
    case COMMAND_READ_UNENCRYPTED:
    case COMMAND_OPEN_PARTITION:
    case COMMAND_29h:
    case COMMAND_OPEN_PARTITION_WITH_TMD:
    case COMMAND_AUDIO_BUFFER_CONFIG:
    case COMMAND_BS_CHANGE_DISK:
    case COMMAND_SET_MAX_ROTATION:
        __DVDClearWaitingQueue();

        block = executing;
        executing = &DummyCommandBlock;

        if (block->callback != NULL) {
            block->callback(DVD_RESULT_COVER_CLOSED, block);
        }

        stateReady();
        break;
    case COMMAND_RESET:
        MotorState = MOTOR_STATE_WORKING;
    // FALLTHROUGH
    case COMMAND_CLOSE_PARTITION:
    case COMMAND_GET_COVER_READY:
    case COMMAND_GET_COVER_STATUS:
        executing->state = DVD_STATE_BUSY;
        stateBusy(executing);
        break;
    case COMMAND_READ:
    case COMMAND_SEEK:
        if (__OSInIPL) {
            break;
        }
    // FALLTHROUGH
    default:
        MotorState = MOTOR_STATE_WORKING;
        DVDLowSetSpinupFlag(TRUE);
        DVDLowReset(cbForStateReset);
        break;
    }
}

static void ResetAlarmHandler(OSAlarm* alarm, OSContext* ctx) {
#pragma unused(alarm)
#pragma unused(ctx)

    if (OS_DVD_DEVICE_CODE == MAKE_DVD_DEVICE_CODE(0x0003)) {
        LastState = stateDownRotation;
        stateDownRotation(executing);
    } else {
        DCInvalidateRange(&CurrDiskID, sizeof(DVDDiskID));
        LastState = stateCoverClosed_CMD;
        stateCoverClosed_CMD(executing);
    }
}

static void cbForStateReset(u32 intType) {
    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else if (intType & DVD_INTTYPE_TC) {
        LastResetEnd = __OSGetSystemTime();
        ResetRequired = FALSE;
        ResumeFromHere = RESUME_POINT_NONE;
        OSCreateAlarm(&ResetAlarm);
        OSSetAlarm(&ResetAlarm, OSMillisecondsToTicks(100), ResetAlarmHandler);
    } else {
        stateGettingError();
    }
}

static void stateDownRotation(DVDCommandBlock* block) {
#pragma unused(block)

    DVDLowClearCoverInterrupt(NULL);
    StampCommand(COMMAND_SET_MAX_ROTATION, 0, 0);
    DVDLowSetMaximumRotation(DVD_LOW_SPEED(2), cbForStateDownRotation);
}

static void cbForStateDownRotation(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else if (intType & DVD_INTTYPE_TC) {
        DCInvalidateRange(&CurrDiskID, sizeof(DVDDiskID));
        LastState = stateCoverClosed_CMD;
        stateCoverClosed_CMD(executing);
    } else {
        stateGettingError();
    }
}

static void stateCoverClosed_CMD(DVDCommandBlock* block) {
    if (CurrCommand == COMMAND_GET_DISK_ID_VALID) {
        NumInternalRetry = 0;

        if (!CheckCancel(RESUME_POINT_NONE)) {
            executing->state = DVD_STATE_BUSY;
            stateBusy(executing);
        }
    } else {
        DVDLowClearCoverInterrupt(NULL);

        StampCommand(COMMAND_READID,
                 DVD_LOW_OFFSET(offsetof(DVDDiskHeader, diskID)),
                 sizeof(DVDDiskID));
        
        DVDLowReadDiskID(&CurrDiskID, cbForStateCoverClosed);
    }
}

static void cbForStateCoverClosed(u32 intType) {
    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
    } else if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
    } else if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;
        stateCheckID();
    } else {
        stateGettingError();
    }
}

static void cbForPrepareCoverRegister(u32 intType) {
#pragma unused(intType)

    PreparingCover = FALSE;

    if (WaitingForCoverClose) {
        if ((DVDLowGetCoverRegister() & DVD_DICVR_CVR) == 0) {
            OSCancelAlarm(&CoverAlarm);
            WaitingForCoverClose = FALSE;
            cbForStateMotorStopped(DVD_INTTYPE_CVR);
        }
    } else if (DVDLowGetCoverRegister() & DVD_DICVR_CVR) {
        WaitingForCoverOpen = FALSE;
        WaitingForCoverClose = TRUE;

        if (MotorState == MOTOR_STATE_STOPPED) {
            executing->state = DVD_STATE_MOTOR_STOPPED;
        } else {
            executing->state = DVD_STATE_COVER_OPENED;
        }
    } else if (DVDLowGetCoverRegister() & DVD_DICVR_CVRINT) {
        OSCancelAlarm(&CoverAlarm);
        WaitingForCoverOpen = FALSE;
        DVDLowClearCoverInterrupt(NULL);
        cbForStateMotorStopped(DVD_INTTYPE_CVR);
    }
}

static void CoverAlarmHandler(OSAlarm* alarm, OSContext* ctx) {
#pragma unused(alarm)
#pragma unused(ctx)

    if (!PreparingCover) {
        PreparingCover = TRUE;
        DVDLowPrepareCoverRegister(cbForPrepareCoverRegister);
    }
}

static void stateMotorStopped(DVDCommandBlock* block) {
#pragma unused(block)

    MotorState = MOTOR_STATE_PENDING_STOP;

    if (WaitingForCoverOpen || WaitingForCoverClose) {
        return;
    }

    WaitingForCoverOpen = TRUE;

    OSCreateAlarm(&CoverAlarm);
    OSSetPeriodicAlarm(&CoverAlarm, OSGetTick(), OSMillisecondsToTicks(100),
                       CoverAlarmHandler);
}

static void cbForStateMotorStopped(u32 intType) {
    WaitingForCoverClose = FALSE;

    if (CurrCommand == COMMAND_CHANGE_DISK) {
        ChangedDisc = TRUE;
    }

    if (MotorState == MOTOR_STATE_STOPPED) {
        if (executing != NULL) {
            executing->state = DVD_STATE_MOTOR_STOPPED;
        }
    } else {
        DVDLowMaskCoverInterrupt();

        if (executing != NULL) {
            executing->state = DVD_STATE_COVER_CLOSED;
            stateCoverClosed();
        } else {
            ResumeFromHere = RESUME_POINT_7;
        }
    }
}

static void stateReady(void) {
    DVDCommandBlock* block;

    if (PauseFlag) {
        PausingFlag = TRUE;
        executing = NULL;
        return;
    }

    if (!__DVDCheckWaitingQueue()) {
        executing = NULL;
        return;
    }

    executing = __DVDPopWaitingQueue();

    if (FatalErrorFlag) {
        executing->state = DVD_STATE_FATAL;

        block = executing;
        executing = &DummyCommandBlock;

        if (block->callback != NULL) {
            block->callback(DVD_RESULT_FATAL, block);
        }

        stateReady();
        return;
    }

    CurrCommand = executing->command;

    if (CurrCommand == COMMAND_RESET || CurrCommand == COMMAND_INQUIRY ||
        CurrCommand == COMMAND_CLOSE_PARTITION) {
        ResumeFromHere = RESUME_POINT_NONE;
    }

    if (ResumeFromHere != RESUME_POINT_NONE) {
        switch (ResumeFromHere) {
        case RESUME_POINT_DISK_ERROR:
            executing->state = DVD_STATE_DISK_ERROR;
            stateMotorStopped(executing);
            break;
        case RESUME_POINT_NO_DISK:
            executing->state = DVD_STATE_NO_DISK;
            stateMotorStopped(executing);
            break;
        case RESUME_POINT_COVER_OPENED:
            executing->state = DVD_STATE_COVER_OPENED;
            stateMotorStopped(executing);
            break;
        case RESUME_POINT_WRONG_DISK_ID:
        case RESUME_POINT_DISK_CHANGED:
        case RESUME_POINT_7:
            executing->state = DVD_STATE_COVER_CLOSED;
            stateCoverClosed();
            break;
        case RESUME_POINT_OK:
            stateError(CancelLastError);
            break;
        }

        ResumeFromHere = RESUME_POINT_NONE;
        return;
    }

    switch (MotorState) {
    case MOTOR_STATE_STOPPED:
        if (MotorStopped) {
            executing->state = DVD_STATE_MOTOR_STOPPED;
        } else {
            executing->state = DVD_STATE_COVER_CLOSED;
            stateCoverClosed();
        }
        break;
    case MOTOR_STATE_WORKING:
        executing->state = DVD_STATE_BUSY;
        stateBusy(executing);
        break;
    case MOTOR_STATE_PENDING_STOP:
    default:
        stateCoverClosed();
        break;
    }
}

static void stateBusy(DVDCommandBlock* block) {
    DVDCommandBlock* current;

    LastState = stateBusy;

    switch (block->command) {
    case COMMAND_SEEK:
    case COMMAND_CHANGE_DISK:
    case COMMAND_READID:
    case COMMAND_AUDIO_BUFFER_CONFIG:
    case COMMAND_INQUIRY:
    case COMMAND_BS_CHANGE_DISK:
    case COMMAND_STOP_MOTOR:
    case COMMAND_OPEN_PARTITION:
    case COMMAND_SET_MAX_ROTATION:
    case COMMAND_29h:
    case COMMAND_OPEN_PARTITION_WITH_TMD:
        StampCommand(block->command, block->offset, block->length);
        break;
    default:
        break;
    }

    switch (block->command) {
    case COMMAND_READID:
        DVDLowClearCoverInterrupt(NULL);
        block->transferSize = sizeof(DVDDiskID);
        DVDLowReadDiskID(block->addr, cbForStateBusy);
        break;
    case COMMAND_READ:
    case COMMAND_BSREAD:
        if (block->length <= 0) {
            current = executing;
            executing = &DummyCommandBlock;

            current->state = DVD_STATE_IDLE;
            if (current->callback != NULL) {
                current->callback(DVD_RESULT_OK, current);
            }

            stateReady();
        } else {
            DVDLowClearCoverInterrupt(NULL);

            block->transferSize =
                block->length - block->transferTotal > MAX_TRANSFER_SIZE
                    ? MAX_TRANSFER_SIZE
                    : block->length - block->transferTotal;

            StampCommand(block->command,
                         block->offset + DVD_LOW_OFFSET(block->transferTotal),
                         block->transferSize);

            DVDLowRead((char*)block->addr + block->transferTotal,
                       block->transferSize,
                       block->offset + DVD_LOW_OFFSET(block->transferTotal),
                       cbForStateBusy);
        }
        break;
    case COMMAND_SEEK:
        DVDLowClearCoverInterrupt(NULL);
        DVDLowSeek(block->offset, cbForStateBusy);
        break;
    case COMMAND_CHANGE_DISK:
        DVDLowStopMotor(FALSE, FALSE, cbForStateBusy);
        break;
    case COMMAND_BS_CHANGE_DISK:
        DVDLowStopMotor(FALSE, FALSE, cbForStateBusy);
        break;
    case COMMAND_AUDIO_BUFFER_CONFIG:
        DVDLowClearCoverInterrupt(NULL);
        DVDLowAudioBufferConfig(block->offset, block->length, cbForStateBusy);
        break;
    case COMMAND_INQUIRY:
        DVDLowClearCoverInterrupt(NULL);
        block->transferSize = sizeof(DVDDriveInfo);
        DVDLowInquiry(block->addr, cbForStateBusy);
        break;
    case COMMAND_STOP_MOTOR:
        DVDLowClearCoverInterrupt(NULL);
        DVDLowStopMotor(FALSE, FALSE, cbForStateBusy);
        break;
    case COMMAND_RESET:
        DVDLowSetSpinupFlag(TRUE);
        DVDLowReset(cbForStateBusy);
        break;
    case COMMAND_READ_UNENCRYPTED:
        if (block->length <= 0) {
            current = executing;
            executing = &DummyCommandBlock;

            current->state = DVD_STATE_IDLE;
            if (current->callback != NULL) {
                current->callback(DVD_RESULT_OK, current);
            }

            stateReady();
        } else {
            DVDLowClearCoverInterrupt(NULL);

            block->transferSize =
                block->length - block->transferTotal > MAX_TRANSFER_SIZE
                    ? MAX_TRANSFER_SIZE
                    : block->length - block->transferTotal;

            StampCommand(block->command,
                         block->offset + DVD_LOW_OFFSET(block->transferTotal),
                         block->transferSize);

            DVDLowUnencryptedRead(
                (char*)block->addr + block->transferTotal, block->transferSize,
                block->offset + DVD_LOW_OFFSET(block->transferTotal),
                cbForStateBusy);
        }
        break;
    case COMMAND_OPEN_PARTITION:
        DVDLowClearCoverInterrupt(NULL);
        DVDLowOpenPartition(block->offset, NULL, 0, NULL, block->addr,
                            cbForStateBusy);
        break;
    case COMMAND_CLOSE_PARTITION:
        DVDLowClearCoverInterrupt(NULL);
        DVDLowClosePartition(cbForStateBusy);
        break;
    case COMMAND_GET_COVER_STATUS:
        DVDLowPrepareCoverRegister(cbForStateBusy);
        break;
    case COMMAND_GET_COVER_READY:
        DVDLowPrepareCoverRegister(cbForStateBusy);
        break;
    case COMMAND_SET_MAX_ROTATION:
        DVDLowClearCoverInterrupt(NULL);
        DVDLowSetMaximumRotation(DVD_LOW_SPEED(2), cbForStateBusy);
        break;
    case COMMAND_GET_DISK_ID_VALID:
        DVDLowClearCoverInterrupt(NULL);
        block->addr = &CurrDiskID;
        block->transferSize = sizeof(DVDDiskID);
        DVDLowReadDiskID(block->addr, cbForStateBusy);
        break;
    case COMMAND_29h:
    {
        DVDPartitionParams* params;
        DVDLowClearCoverInterrupt(NULL);
        params = block->addr;

        if (!params->numTmdBytes && !params->numCertBytes) {
            DVDLowGetNoDiscBufferSizes(block->offset, &params->numTmdBytes,
            &params->numCertBytes, cbForStateBusy);
        } else {
            DVDLowGetNoDiscOpenPartitionParams(block->offset, &params->ticket,
            &params->numTmdBytes, &params->tmd, &params->numCertBytes,
            params->certificates, &params->dataWordOffset,
            params->h3Hash, cbForStateBusy);
        }
        break;
    }
    case COMMAND_OPEN_PARTITION_WITH_TMD:
    {
        DVDPartitionParams* params;
        DVDLowClearCoverInterrupt(NULL);
        params = block->addr;
        DVDLowOpenPartitionWithTmdAndTicketView(block->offset, &params->ticketView,
        params->numTmdBytes, &params->tmd,
        params->numCertBytes, params->certificates, cbForStateBusy);
        break;
    }
    default:
        checkOptionalCommand(block, cbForStateBusy);
        break;
    }
}

static u32 ImmCommand[] = {-1, -1, -1};
static u32 DmaCommand[] = {-1};


#define USE_DMA(command) \
    ((command == COMMAND_READ) ||               \
    (command == COMMAND_BSREAD) ||              \
    (command == COMMAND_READID) ||              \
    (command == COMMAND_READ_UNENCRYPTED) ||    \
    (command == COMMAND_INQUIRY))

#define REQUEST_AUDIO_STATUS(command) \
    ((command == COMMAND_REQUEST_AUDIO_ERROR) ||  \
    (command == COMMAND_REQUEST_PLAY_ADDR)  ||    \
    (command == COMMAND_REQUEST_START_ADDR) ||    \
    (command == COMMAND_REQUEST_LENGTH))

//unused
void __DVDSetImmCommand(){
}

//unused
void __DVDSetDmaCommand(){
}

static BOOL IsImmCommandWithResult(u32 command) {
    u32 i;

    if (REQUEST_AUDIO_STATUS(command)) {
        return TRUE;
    }

    for (i = 0; i < LENGTHOF(ImmCommand); i++) {
        if (command == ImmCommand[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL IsDmaCommand(u32 command) {
    u32 i;

    if (USE_DMA(command)) {
        return TRUE;
    }

    for (i = 0; i < LENGTHOF(DmaCommand); i++) {
        if (command == DmaCommand[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

static void cbForStateBusy(u32 intType) {
    DVDCommandBlock* block;

    StampIntType(intType);

    if (intType == DVD_INTTYPE_TIME) {
        stateTimeout();
        return;
    }

    if (intType == DVD_INTTYPE_SERR) {
        stateSecurityError();
        return;
    }

    if (CurrCommand == COMMAND_CHANGE_DISK ||
        CurrCommand == COMMAND_BS_CHANGE_DISK) {
        if (intType & DVD_INTTYPE_DE) {
            stateError(NAND_ERROR_GENERIC);
        } else {
            NumInternalRetry = 0;

            if (CurrCommand == COMMAND_BS_CHANGE_DISK) {
                ResetRequired = TRUE;
            }

            if (!CheckCancel(RESUME_POINT_7) &&
                MotorState != MOTOR_STATE_STOPPED) {
                executing->state = DVD_STATE_7;
                stateMotorStopped(executing);
            }
        }

        return;
    }

    if (IsDmaCommand(CurrCommand)) {
        executing->transferTotal += intType & (DVD_INTTYPE_BR | DVD_INTTYPE_TC)
                                        ? executing->transferSize
                                        : 0;
    }

    if (Breaking) {
        Breaking = FALSE;
        Canceling = FALSE;

        block = executing;
        executing = &DummyCommandBlock;

        block->state = DVD_STATE_CANCELED;
        if (block->callback != NULL) {
            block->callback(DVD_RESULT_CANCELED, block);
        }

        if (CancelCallback != NULL) {
            CancelCallback(DVD_RESULT_OK, block);
        }

        stateReady();
        return;
    }

    if (intType & DVD_INTTYPE_TC) {
        NumInternalRetry = 0;

        if (CurrCommand == COMMAND_STOP_MOTOR) {
            if (executing->offset > 0) {
                MotorState = MOTOR_STATE_STOPPED;
            } else {
                MotorState = MOTOR_STATE_PENDING_STOP;
            }

            block = executing;
            executing = &DummyCommandBlock;

            block->state = DVD_STATE_IDLE;
            if (block->callback != NULL) {
                block->callback(DVD_RESULT_OK, block);
            }

            stateReady();
        } else if (CurrCommand == COMMAND_RESET) {
            LastResetEnd = __OSGetSystemTime();
            ResetRequired = FALSE;
            ResumeFromHere = RESUME_POINT_NONE;

            block = executing;
            executing = &DummyCommandBlock;

            block->state = DVD_STATE_IDLE;
            if (block->callback != NULL) {
                block->callback(DVD_RESULT_OK, block);
            }

            stateReady();
        } else if (CheckCancel(RESUME_POINT_NONE)) {
            return;
        } else if (CurrCommand == COMMAND_GET_COVER_STATUS) {
            u32 dicvr;
            u32 status;

            dicvr = DVDLowGetCoverRegister();

            if (__OSGetSystemTime() - LastResetEnd < OSMillisecondsToTicks(100)) {
                status = DVD_COVER_BUSY;
            } else if (dicvr & DVD_DICVR_CVR) {
                status = DVD_COVER_OPENED;
            } else {
                status = DVD_COVER_CLOSED;
            }

            block = executing;
            executing = &DummyCommandBlock;

            block->state = DVD_STATE_IDLE;
            block->offset = status;

            if (block->callback != NULL) {
                block->callback(status, block);
            }

            stateReady();
        } else if (CurrCommand == COMMAND_GET_COVER_READY) {
            u32 dicvr;
            BOOL busy;

            dicvr = DVDLowGetCoverRegister();

            if ((dicvr & DVD_DICVR_CVRINT) >> 2 || (dicvr & DVD_DICVR_CVR)) {
                busy = FALSE;
            } else if (ResumeFromHere) {
                busy = FALSE;
            } else {
                busy = TRUE;
            }

            block = executing;
            executing = &DummyCommandBlock;

            block->state = DVD_STATE_IDLE;
            block->offset = busy; // ???

            if (block->callback != NULL) {
                block->callback(busy, block);
            }

            stateReady();
        }else if (CurrCommand == COMMAND_GET_DISK_ID_VALID) {
            if (DVDCompareDiskID(&CurrDiskID, executing->id)) {
                memcpy(IDShouldBe, &CurrDiskID, sizeof(DVDDiskID));
                block = executing;
                executing = &DummyCommandBlock;

                block->state = DVD_STATE_IDLE;
                block->offset = (u32)TRUE; // ???
                if (block->callback != NULL) {
                    (block->callback)(1, block);
                }

                NumInternalRetry = 0;

                stateReady();
            } else {
                StampCommand(16, 0, 0);
                DVDLowStopMotor(FALSE, FALSE, cbForStateCheckID1);
            }
        } else if (CurrCommand == COMMAND_29h) {
            DVDPartitionParams* params;

            params = (DVDPartitionParams*)(executing->addr);
            if (params->dataWordOffset == 0) {
                stateBusy(executing);
            } else {
                block = executing;
                executing = &DummyCommandBlock;

                block->state = DVD_STATE_IDLE;
                if (block->callback != NULL) {
                    (block->callback)(DVD_RESULT_OK, block);
                }

                stateReady();
            }
        } else if (IsDmaCommand(CurrCommand)) {
            if (executing->transferTotal != executing->length) {
                stateBusy(executing);
            } else {
                block = executing;
                executing = &DummyCommandBlock;

                block->state = DVD_STATE_IDLE;
                if (block->callback != NULL) {
                    block->callback(block->transferTotal, block);
                }

                stateReady();
            }
        } else if (IsImmCommandWithResult(CurrCommand)) {
            u32 imm;

            if ((CurrCommand == COMMAND_REQUEST_START_ADDR) ||
                (CurrCommand == COMMAND_REQUEST_PLAY_ADDR)) {
                imm = DVDLowGetImmBufferReg() << 2;
            } else {
                imm = DVDLowGetImmBufferReg();
            }

            block = executing;
            executing = &DummyCommandBlock;

            block->state = DVD_STATE_IDLE;
            if (block->callback != NULL) {
                block->callback(imm, block);
            }

            stateReady();
        } else {
            block = executing;
            executing = &DummyCommandBlock;

            block->state = DVD_STATE_IDLE;
            if (block->callback != NULL) {
                block->callback(DVD_RESULT_OK, block);
            }

            stateReady();
        }

        return;
    }

    if (CurrCommand == COMMAND_INQUIRY) {
        stateError(NAND_ERROR_GENERIC);
        return;
    }

    if ((USE_DMA(CurrCommand)) &&
        (executing->transferTotal == executing->length)) {
        if (CheckCancel(RESUME_POINT_NONE)) {
            return;
        }

        block = executing;
        executing = &DummyCommandBlock;

        block->state = DVD_STATE_IDLE;
        if (block->callback != NULL) {
            block->callback(block->transferTotal, block);
        }

        stateReady();
        return;
    }

    stateGettingError();
}

//unused
void __DVDGetIssueCommandAddr(){
}

static BOOL issueCommand(s32 prio, DVDCommandBlock* block) {
    BOOL enabled;
    BOOL success;

    if (autoInvalidation && USE_DMA(block->command)) {
        DCInvalidateRange(block->addr, block->length);
    }

    enabled = OSDisableInterrupts();

    block->state = DVD_STATE_WAITING;
    success = __DVDPushWaitingQueue(prio, block);

    if (executing == NULL && !PauseFlag) {
        stateReady();
    }

    OSRestoreInterrupts(enabled);
    return success;
}

BOOL DVDReadAbsAsyncPrio(DVDCommandBlock* block, void* dst, u32 size,
                         u32 offset, DVDCommandCallback callback, s32 prio) {
    block->command = COMMAND_READ;
    block->addr = dst;
    block->length = size;
    block->offset = offset;
    block->transferTotal = 0;
    block->callback = callback;

    return issueCommand(prio, block);
}

//unused
void DVDSeekAbsAsyncPrio(){
}

//unused
void DVDReadAbsAsyncForBS(){
}

//unused
void DVDReadDiskID(){
}

//unused
void __DVDAudioBufferConfig(){
}

//unused
void DVDChangeDiskAsyncForBS(){
}

//unused
void DVDChangeDiskAsync(){
}

//unused
void DVDChangeDisk(){
}

//unused
//static
void cbForChangeDiskSync(){
}

//unused
void DVDStopMotorAsync(){
}

//unused
void DVDStopMotor(){
}

//unused
//static
void cbForStopMotorSync(){
}

BOOL DVDInquiryAsync(DVDCommandBlock* block, DVDDriveInfo* info,
                     DVDCommandCallback callback) {
    block->command = COMMAND_INQUIRY;
    block->addr = info;
    block->length = sizeof(DVDDriveInfo);
    block->transferTotal = 0;
    block->callback = callback;

    return issueCommand(DVD_PRIO_MEDIUM, block);
}

//unused
void DVDInquiry(){
}

//unused
//static
void cbForInquirySync(){
}

//unused
void DVDResetAsync(){
}

//unused
void DVDReset(){
}

//unused
//static
void cbForResetSync(){
}

//unused
void DVDResetRequired(){
}


s32 DVDGetCommandBlockStatus(const DVDCommandBlock* block) {
    s32 state;
    DVDCommandBlock* next;
    BOOL enabled = OSDisableInterrupts();

    if (block->state == DVD_STATE_COVER_CLOSED) {
        state = DVD_STATE_BUSY;
    } else if (block->state == DVD_STATE_COVER_OPENED) {
        state = DVD_STATE_NO_DISK;
    } else if (executing == &__DVDStopMotorCommandBlock) {
        next = __DVDGetNextWaitingQueue();

        if (next != NULL) {
            if (block == next) {
                state = DVD_STATE_BUSY;
            } else {
                state = block->state;
            }
        } else if (block == &__DVDStopMotorCommandBlock) {
            state = DVD_STATE_IDLE;
        } else {
            state = block->state;
        }
    } else {
        state = block->state;
    }

    OSRestoreInterrupts(enabled);
    return state;
}

s32 DVDGetDriveStatus(void) {
    BOOL enabled;
    s32 state;

    enabled = OSDisableInterrupts();

    if (FatalErrorFlag) {
        state = DVD_STATE_FATAL;
    } else if (PausingFlag) {
        state = DVD_STATE_PAUSED;
    } else if (executing == NULL) {
        state = DVD_STATE_IDLE;
    } else if (executing == &DummyCommandBlock) {
        state = DVD_STATE_IDLE;
    } else {
        state = DVDGetCommandBlockStatus(executing);
    }

    OSRestoreInterrupts(enabled);
    return state;
}

//unused
void __DVDGetDriveStatus(){
}

BOOL DVDSetAutoInvalidation(BOOL autoInval) {
    BOOL prev = autoInvalidation;
    autoInvalidation = autoInval;
    return prev;
}

static BOOL __DVDLowBreak(void) {
    Breaking = TRUE;
    return TRUE;
}

void DVDPause(void) {
    BOOL enabled = OSDisableInterrupts();

    PauseFlag = TRUE;

    if (executing == NULL) {
        PausingFlag = TRUE;
    }

    OSRestoreInterrupts(enabled);
}

void DVDResume(void) {
    BOOL enabled = OSDisableInterrupts();

    PauseFlag = FALSE;

    if (PausingFlag) {
        PausingFlag = FALSE;
        stateReady();
    }

    OSRestoreInterrupts(enabled);
}

BOOL DVDCancelAsync(DVDCommandBlock* block, DVDCommandCallback callback) {
    BOOL enabled = OSDisableInterrupts();

    switch (block->state) {
    case DVD_STATE_FATAL:
    case DVD_STATE_IDLE:
    case DVD_STATE_CANCELED:
        if (callback != NULL) {
            callback(DVD_RESULT_OK, block);
        }
        break;
    case DVD_STATE_BUSY:
        if (Canceling) {
            OSRestoreInterrupts(enabled);
            return FALSE;
        }

        Canceling = TRUE;
        CancelCallback = callback;

        if (block->command == COMMAND_BSREAD ||
            block->command == COMMAND_READ_UNENCRYPTED ||
            block->command == COMMAND_OPEN_PARTITION ||
            block->command == COMMAND_29h ||
            block->command == COMMAND_OPEN_PARTITION_WITH_TMD ||
            block->command == COMMAND_READ) {
            __DVDLowBreak();
        }
        break;
    case DVD_STATE_WAITING:
        __DVDDequeueWaitingQueue(block);

        block->state = DVD_STATE_CANCELED;
        if (block->callback != NULL) {
            block->callback(DVD_RESULT_CANCELED, block);
        }

        if (callback != NULL) {
            callback(DVD_RESULT_OK, block);
        }
        break;
    case DVD_STATE_COVER_CLOSED:
        switch (block->command) {
        case COMMAND_BSREAD:
        case COMMAND_READID:
        case COMMAND_AUDIO_BUFFER_CONFIG:
        case COMMAND_BS_CHANGE_DISK:
        case COMMAND_READ_UNENCRYPTED:
        case COMMAND_OPEN_PARTITION:
        case COMMAND_SET_MAX_ROTATION:
        case COMMAND_29h:
        case COMMAND_OPEN_PARTITION_WITH_TMD:
            if (callback != NULL) {
                callback(DVD_RESULT_OK, block);
            }
            break;
        case COMMAND_READ:
        case COMMAND_SEEK:
            if (__OSInIPL) {
                executing = &DummyCommandBlock;

                block->state = DVD_STATE_CANCELED;
                if (block->callback != NULL) {
                    block->callback(DVD_RESULT_CANCELED, block);
                }

                if (callback != NULL) {
                    callback(DVD_RESULT_OK, block);
                }

                stateReady();
                break;
            }
        // FALLTHROUGH
        default:
            if (Canceling) {
                OSRestoreInterrupts(enabled);
                return FALSE;
            }

            Canceling = TRUE;
            CancelCallback = callback;
            break;
        }
        break;
    case DVD_STATE_NO_DISK:
    case DVD_STATE_COVER_OPENED:
    case DVD_STATE_WRONG_DISK_ID:
    case DVD_STATE_7:
    case DVD_STATE_DISK_ERROR:
        if (!WaitingForCoverClose && !WaitingForCoverOpen) {
            OSRestoreInterrupts(enabled);
            return FALSE;
        }

        if (WaitingForCoverOpen) {
            OSCancelAlarm(&CoverAlarm);
            WaitingForCoverOpen = FALSE;
        }

        if (block->state == DVD_STATE_NO_DISK) {
            ResumeFromHere = RESUME_POINT_NO_DISK;
        }

        if (block->state == DVD_STATE_COVER_OPENED) {
            ResumeFromHere = RESUME_POINT_COVER_OPENED;
        }

        if (block->state == DVD_STATE_WRONG_DISK_ID) {
            ResumeFromHere = RESUME_POINT_WRONG_DISK_ID;
        }

        if (block->state == DVD_STATE_DISK_ERROR) {
            ResumeFromHere = RESUME_POINT_DISK_ERROR;
        }

        if (block->state == DVD_STATE_7) {
            ResumeFromHere = RESUME_POINT_7;
        }

        executing = &DummyCommandBlock;

        block->state = DVD_STATE_CANCELED;
        if (block->callback != NULL) {
            block->callback(DVD_RESULT_CANCELED, block);
        }

        if (callback != NULL) {
            callback(DVD_RESULT_OK, block);
        }

        stateReady();
        break;
    case DVD_STATE_MOTOR_STOPPED:
        executing = &DummyCommandBlock;

        block->state = DVD_STATE_CANCELED;
        if (block->callback != NULL) {
            block->callback(DVD_RESULT_CANCELED, block);
        }

        if (callback != NULL) {
            callback(DVD_RESULT_OK, block);
        }

        stateReady();
        break;
    }

    OSRestoreInterrupts(enabled);
    return TRUE;
}

s32 DVDCancel(DVDCommandBlock* block) {
    BOOL enabled;

    if (!DVDCancelAsync(block, cbForCancelSync)) {
        return DVD_RESULT_FATAL;
    }

    enabled = OSDisableInterrupts();

    while (TRUE) {
        s32 state = block->state;
        if (state == DVD_STATE_IDLE || state == DVD_STATE_FATAL ||
            state == DVD_STATE_CANCELED) {
            break;
        }

        if (state == DVD_STATE_COVER_CLOSED) {
            u32 command = block->command;
            if (command == COMMAND_BSREAD || command == COMMAND_READID ||
                command == COMMAND_AUDIO_BUFFER_CONFIG ||
                command == COMMAND_READ_UNENCRYPTED ||
                command == COMMAND_OPEN_PARTITION ||
                command == COMMAND_29h ||
                command == COMMAND_OPEN_PARTITION_WITH_TMD ||
                command == COMMAND_BS_CHANGE_DISK ||
                command == COMMAND_SET_MAX_ROTATION) {
                break;
            }
        }

        OSSleepThread(&__DVDThreadQueue);
    }

    OSRestoreInterrupts(enabled);
    return DVD_RESULT_OK;
}

static void cbForCancelSync(s32 result, DVDCommandBlock* block) {
#pragma unused(result)
#pragma unused(block)

    OSWakeupThread(&__DVDThreadQueue);
}

BOOL DVDCancelAllAsync(DVDCommandCallback callback) {
    BOOL success;
    DVDCommandBlock* block;
    BOOL enabled = OSDisableInterrupts();
    DVDPause();

    while ((block = __DVDPopWaitingQueue()) != NULL) {
        DVDCancelAsync(block, NULL);
    }

    if (executing != NULL) {
        success = DVDCancelAsync(executing, callback);
    } else {
        success = TRUE;
        if (callback != NULL) {
            callback(DVD_RESULT_OK, NULL);
        }
    }

    DVDResume();
    OSRestoreInterrupts(enabled);
    return success;
}

//unused
void DVDCancelAll(){
}

//unused
//static
void cbForCancelAllSync(){
}


const DVDDiskID* DVDGetCurrentDiskID(void) {
    return &((OSBootInfo*)OSPhysicalToCached(OS_PHYS_BOOT_INFO))->diskID;
}

//unused
void __DVDGetCoverStatusAsync(){
}

static void __BS2DVDLowCallback(u32 intType) {
    __BS2DVDLowIntType = intType;
}

u32 __DVDGetCoverStatus(void) {
    u32 dicvr;

    __BS2DVDLowIntType = 0;
    DVDLowPrepareCoverRegister(__BS2DVDLowCallback);

    while (__BS2DVDLowIntType == 0) {
        ;
    }

    if ((__BS2DVDLowIntType & DVD_INTTYPE_TC) == 0) {
        return DVD_COVER_BUSY;
    }

    dicvr = DVDLowGetCoverRegister();

    if (__OSGetSystemTime() - LastResetEnd < OSMillisecondsToTicks(100)) {
        return DVD_COVER_BUSY;
    }

    if (dicvr & DVD_DICVR_CVR) {
        return DVD_COVER_OPENED;
    }

    return DVD_COVER_CLOSED;
}

void __DVDResetWithNoSpinup(void) {
    __BS2DVDLowIntType = 0;
    DVDLowSetSpinupFlag(FALSE);
    DVDLowReset(__BS2DVDLowCallback);

    while (!__BS2DVDLowIntType) {
        ;
    }
}

//unused
BOOL DVDCheckDiskAsync(DVDCommandBlock* block, DVDCommandCallback callback) {
}

//unused
void DVDIsDiskIdentified(){
}

void __DVDPrepareResetAsync(DVDCommandCallback callback) {
    BOOL enabled = OSDisableInterrupts();

    __DVDClearWaitingQueue();

    if (Canceling) {
        CancelCallback = callback;
    } else {
        if (executing != NULL) {
            executing->callback = NULL;
        }

        DVDCancelAllAsync(callback);
    }

    OSRestoreInterrupts(enabled);
}

static void Callback(s32 result, DVDCommandBlock* block) {
#pragma unused(result)
#pragma unused(block)

    Prepared = TRUE;
}

void __DVDPrepareReset(void) {
    OSDisableInterrupts();
    Prepared = FALSE;
    __DVDPrepareResetAsync(Callback);
    OSEnableInterrupts();

    while (Prepared != TRUE) {
        ;
    }
}

BOOL __DVDTestAlarm(const OSAlarm* alarm) {
    if (alarm == &ResetAlarm) {
        return TRUE;
    }

    return __DVDLowTestAlarm(alarm);
}

//unused
void DVDOpenPartitionAsync(){
}

//unused
void DVDClosePartitionAsync(){
}

//unused
void DVDUnencryptedReadAbsAsyncForBS(){
}

BOOL __DVDStopMotorAsync(DVDCommandBlock* block, DVDCommandCallback callback) {
#pragma unused(block)
#pragma unused(callback)

    return TRUE;
}

void __DVDRestartMotor(void) {}

//unused
void DVDDownRotationAsync(){
}

//unused
void DVDPrepareDiskAsync(){
}

//unused
void DVDGetPartitionParamsAsync(){
}

//unused
void DVDOpenPartitionWithParamsAsync(){
}

