#include "revolution/DVD.h"
#include "revolution/NAND.h"

static BOOL ExistFlag = FALSE;
static NANDCommandBlock NandCb;
static NANDFileInfo NandInfo;
static DVDCBCallback Callback;
static u32 NextOffset;
DVDErrorInfo __ErrorInfo ALIGN(32);
DVDErrorInfo __FirstErrorInfo ALIGN(32);

static void cbForNandClose(s32 result, NANDCommandBlock* block) {
    if (Callback) {
        Callback((result == 0) ? 1 : 2, NULL);
    }
}

static void cbForNandWrite(s32 result, NANDCommandBlock* block) {
    if (NANDCloseAsync(&NandInfo, cbForNandClose, &NandCb) != 0) {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

static void cbForNandSeek(s32 result, NANDCommandBlock* block) {
    if (result == (NextOffset + 1) * sizeof(DVDErrorInfo)) {
		if(NextOffset == 0){
			__ErrorInfo.nextOffset = (NextOffset + 1) % 7;
		}
        DCFlushRange((void*)&__ErrorInfo, sizeof(__ErrorInfo));

        if (NANDWriteAsync(&NandInfo, (void*)&__ErrorInfo, sizeof(__ErrorInfo), cbForNandWrite, &NandCb) != 0) {
            cbForNandWrite(-1, NULL);
        }
    }
    else {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

static void cbForNandWrite0(s32 result, NANDCommandBlock* block) {
    if (result == sizeof(__FirstErrorInfo)) {
        if (NANDSeekAsync(&NandInfo, (s32)(sizeof(DVDErrorInfo) * (1 + NextOffset)), 0, cbForNandSeek, &NandCb) != 0) {
            cbForNandSeek(-1, NULL);
        }
    }
    else {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

static void cbForNandSeek2(s32 result, NANDCommandBlock* block) {
    if (result == sizeof(DVDErrorInfo)) {
        __FirstErrorInfo.nextOffset = (__FirstErrorInfo.nextOffset + 1) % 7;

        if (NANDWriteAsync(&NandInfo, (void*)&__FirstErrorInfo, sizeof(__FirstErrorInfo), cbForNandWrite0, &NandCb) != 0) {
            cbForNandWrite0(-1, NULL);
        }
    }
    else {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

static void cbForNandRead(s32 result, NANDCommandBlock* block) {
    if (result == sizeof(DVDErrorInfo)) {
        NextOffset = __FirstErrorInfo.nextOffset;

        if (NANDSeekAsync(&NandInfo, sizeof(DVDErrorInfo), 0, cbForNandSeek2, &NandCb) != 0) {
            cbForNandSeek2(-1, NULL);
        }
    }
    else {
        __ErrorInfo.nextOffset = 1;
        if (NANDWriteAsync(&NandInfo, (void*)&__ErrorInfo, sizeof(__ErrorInfo), cbForNandWrite, &NandCb) != 0) {
            cbForNandWrite(-1, NULL);
        }
    }
}

static void cbForNandSeek0(s32 result, NANDCommandBlock* block) {
    if (result == 0) {
        NextOffset = 0;
        __ErrorInfo.nextOffset = 1;

        if (NANDWriteAsync(&NandInfo, (void*)&__FirstErrorInfo, sizeof(__FirstErrorInfo), cbForNandWrite0, &NandCb) != 0) {
            cbForNandWrite0(-1, NULL);
        }
    }
    else {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

static void cbForNandSeek1(s32 result, NANDCommandBlock* block) {
    if (result == sizeof(DVDErrorInfo)) {
        if (NANDReadAsync(&NandInfo, (void*)&__FirstErrorInfo, sizeof(__FirstErrorInfo), cbForNandRead, &NandCb) != 0) {
            cbForNandRead(-1, NULL);
        }
    }
    else {
        if (NANDSeekAsync(&NandInfo, 0, 0, cbForNandSeek0, &NandCb) != 0) {
            cbForNandSeek0(-1, NULL);
        }
    }
}

static void cbForNandOpen(s32 result, NANDCommandBlock* block) {
    if (result == 0) {
        if (ExistFlag) {
            if (NANDSeekAsync(&NandInfo, sizeof(DVDErrorInfo), 0, cbForNandSeek1, &NandCb) != 0) {
                cbForNandSeek1(-1, NULL);
            }
        }
        else {
            NextOffset = 0;
            __ErrorInfo.nextOffset = 1;
            if (NANDWriteAsync(&NandInfo, (void*)&__FirstErrorInfo, sizeof(__FirstErrorInfo), cbForNandWrite0, &NandCb) != 0) {
                cbForNandWrite0(-1, NULL);
            }
        }
    }
    else {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

static void cbForNandCreate(s32 result, NANDCommandBlock* block) {
    if (result == 0 || result == -6) {
        if (result == -6) {
            ExistFlag = TRUE;
        }

        if (NANDPrivateOpenAsync("/shared2/test2/dvderror.dat", &NandInfo, 3, cbForNandOpen, &NandCb) != 0) {
            if (Callback) {
               Callback(2, NULL);
            }
        }
    }
    else {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

static void cbForNandCreateDir(s32 result, NANDCommandBlock* block) {
    if (result == 0 || result == -6) {
        if (NANDPrivateCreateAsync("/shared2/test2/dvderror.dat", 0x3F, 0,  cbForNandCreate, &NandCb) != 0) {
            if (Callback) {
                Callback(2, NULL);
            }
        }
    }
    else {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

static void cbForPrepareControlRegister(u32 intType){
    if (intType == 1) {
        __ErrorInfo.status2 = DVDLowGetControlRegister();
    }else {
        __ErrorInfo.status2 = 0xffffffff;
    }

    if (NANDPrivateCreateDirAsync("/shared2/test2", 0x3f, 0, cbForNandCreateDir, &NandCb) != 0){
		if(Callback){
        	Callback(2, NULL);
		}
    }
    return;
}

static void cbForPrepareStatusRegister(u32 intType) {
    if (intType == 1) {
        __ErrorInfo.status = DVDLowGetStatusRegister();
    }else {
        __ErrorInfo.status = 0xFFFFFFFF;
    }

    if (!DVDLowPrepareControlRegister(cbForPrepareControlRegister)) {
        if (Callback) {
            Callback(2, NULL);
        }
    }
}

void __DVDStoreErrorCode(u32 error, DVDCBCallback callback) {
    __ErrorInfo.error = error;
    __ErrorInfo.dateTime = (u32)OSTicksToSeconds(OSGetTime());
    Callback = callback;
    DVDLowPrepareStatusRegister(cbForPrepareStatusRegister);
}
