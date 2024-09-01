#include "PowerPC_EABI_Support/MetroTRK/dolphin_trk.h"
#include <revolution/BASE.h>
#include <revolution/DB.h>
#include <revolution/DVD.h>
#include <revolution/EXI.h>
#include <revolution/IPC.h>
#include <revolution/OS.h>
#include <revolution/PAD.h>
#include <revolution/SC.h>
#include <revolution/SI.h>
#include <string.h>

#define INVALID_NAME_CHAR(c) ('0' > c || ('9' < c && c < 'A') || c > 'Z')

OSExecParams __OSRebootParams;
static DVDDriveInfo DriveInfo ALIGN(32);
static DVDCommandBlock DriveBlock;

s64 __OSStartTime;
static OSBootInfo* BootInfo;
static u32* BI2DebugFlag;
static u32 BI2DebugFlagHolder;

static char GameNameBuffer[sizeof('ABCD') + 1];

static double ZeroF;     // for lfd
static float ZeroPS[2]; // for psl_l

static OSExceptionHandler* OSExceptionTable;

static BOOL AreWeInitialized;
DECL_WEAK BOOL __OSIsGcam;
BOOL __OSInNandBoot;
BOOL __OSInIPL;

const char* __OSVersion =
    "<< RVL_SDK - OS \trelease build: Feb 27 2009 10:04:29 (0x4302_145) >>";

static void OSExceptionInit(void);

void __OSDBINTSTART(void);
void __OSDBINTEND(void);
void __OSDBJUMPSTART(void);
void __OSDBJUMPDEST(void);
void __OSDBJUMPEND(void);
void __OSEVStart(void);
void __DBVECTOR(void);
void __OSEVSetNumber(void);
void __OSEVEnd(void);

CW_FORCE_BSS(OS_c, __OSRebootParams);


//unused
void __OSIsDebuggerPresent(){
}

asm void __OSFPRInit(void) {
        nofralloc

    // Set FP available bit
    mfmsr r3
    ori r3, r3, MSR_FP
    mtmsr r3

    // Check if paired-singles are enabled in HID2
    mfspr r3, 0x398 //HID2
    rlwinm. r3, r3, 3, 31, 31
    beq paired_singles_disabled

    lis r3, ZeroPS@ha
    addi r3, r3, ZeroPS@l
    psq_l f0, 0(r3), 0, 0
    ps_mr f1, f0
    ps_mr f2, f0
    ps_mr f3, f0
    ps_mr f4, f0
    ps_mr f5, f0
    ps_mr f6, f0
    ps_mr f7, f0
    ps_mr f8, f0
    ps_mr f9, f0
    ps_mr f10, f0
    ps_mr f11, f0
    ps_mr f12, f0
    ps_mr f13, f0
    ps_mr f14, f0
    ps_mr f15, f0
    ps_mr f16, f0
    ps_mr f17, f0
    ps_mr f18, f0
    ps_mr f19, f0
    ps_mr f20, f0
    ps_mr f21, f0
    ps_mr f22, f0
    ps_mr f23, f0
    ps_mr f24, f0
    ps_mr f25, f0
    ps_mr f26, f0
    ps_mr f27, f0
    ps_mr f28, f0
    ps_mr f29, f0
    ps_mr f30, f0
    ps_mr f31, f0

paired_singles_disabled:
    lfd f0, ZeroF
    fmr f1, f0
    fmr f2, f0
    fmr f3, f0
    fmr f4, f0
    fmr f5, f0
    fmr f6, f0
    fmr f7, f0
    fmr f8, f0
    fmr f9, f0
    fmr f10, f0
    fmr f11, f0
    fmr f12, f0
    fmr f13, f0
    fmr f14, f0
    fmr f15, f0
    fmr f16, f0
    fmr f17, f0
    fmr f18, f0
    fmr f19, f0
    fmr f20, f0
    fmr f21, f0
    fmr f22, f0
    fmr f23, f0
    fmr f24, f0
    fmr f25, f0
    fmr f26, f0
    fmr f27, f0
    fmr f28, f0
    fmr f29, f0
    fmr f30, f0
    fmr f31, f0
    mtfsf 0xff, f0

    blr
    }

static void DisableWriteGatherPipe(void) { PPCMthid2(PPCMfhid2() & ~HID2_WPE); }

//unused
void __OSGetBroadwayRev(){
}

u32 __OSGetHollywoodRev(void) {
    return *(u32*)OSPhysicalToCached(OS_PHYS_HOLLYWOOD_REV);
}

//unused
void __OSGetGDDRVendorCode(){
}

void __OSGetIOSRev(OSIOSRev* rev) {
    const u32 version = *(u32*)OSPhysicalToUncached(OS_PHYS_IOS_VERSION);
    const u32 builddate = *(u32*)OSPhysicalToUncached(OS_PHYS_IOS_BUILD_DATE);

    rev->idHi = version >> 24 & 0xFF;
    rev->idLo = version >> 16 & 0xFF;
    rev->verMajor = version >> 8 & 0xFF;
    rev->verMinor = version >> 0 & 0xFF;

    rev->buildMon = (builddate >> 16 & 0xF) + (builddate >> 20 & 0xF) * 10;
    rev->buildDay = (builddate >> 8 & 0xF) + (builddate >> 12 & 0xF) * 10;
    rev->buildYear =
        (builddate >> 0 & 0xF) + (builddate >> 4 & 0xF) * 10 + 2000;
}

u32 OSGetConsoleType(void) {
    u32 hollywood;
    u32 mem2size;

    if (BootInfo == NULL || BootInfo->consoleType == 0) {
        return 0x10000002;
    }

    hollywood = __OSGetHollywoodRev();

    if (OS_DVD_DEVICE_CODE_ADDR & 0x8000) {
        switch (OS_DVD_DEVICE_CODE_ADDR & ~0x8000) {
        case 0x0002:
        case 0x0003:
        case 0x0203:
            switch (hollywood) {
            case 0x00000000:
                return 0x00000010;
            case 0x00000001:
                return OS_CONSOLE_RVL_PP_1;
            case 0x00000002:
                return OS_CONSOLE_RVL_PP_2_1;
            case 0x00000010:
                return 0x00000020;
            case 0x00000011:
                return 0x00000021;
            }

            if (hollywood > 0x00000011) {
                return 0x00000021;
            }
        case 0x0202:
        case 0x0201:
            switch (hollywood) {
            case 0x00000000:
                return OS_CONSOLE_NDEV_1_0;
            case 0x00000001:
                return OS_CONSOLE_NDEV_1_1;
            case 0x00000002:
                return OS_CONSOLE_NDEV_1_2;
            case 0x00000010:
                return OS_CONSOLE_NDEV_2_0;
            case 0x00000011:
                return OS_CONSOLE_NDEV_2_1;
            }

            if (hollywood > 0x00000011) {
                return OS_CONSOLE_NDEV_2_1;
            }
        case 0x0300:
            return 0x00000100;
        }
    }

    mem2size = OSGetPhysicalMem2Size();

    switch (hollywood) {
    case 0x00000000:
        if (mem2size == OS_MEM_MB_TO_B(64)) {
            return 0x00000010;
        }
        return 0x10000010;
    case 0x00000001:
        if (mem2size == OS_MEM_MB_TO_B(64)) {
            return OS_CONSOLE_RVL_PP_1;
        }
        return 0x10000011;
    case 0x00000002:
        if (mem2size == OS_MEM_MB_TO_B(64)) {
            return OS_CONSOLE_RVL_PP_2_1;
        }
        return 0x10000012;
    case 0x00000010:
        if (mem2size == OS_MEM_MB_TO_B(64)) {
            return 0x00000020;
        }
        return 0x10000020;
    case 0x00000011:
        if (mem2size == OS_MEM_MB_TO_B(64)) {
            return 0x00000021;
        }
        return OS_CONSOLE_NDEV_2_1;
    }

    if (hollywood > 0x00000011) {
        if (mem2size == OS_MEM_MB_TO_B(64)) {
            return 0x00000021;
        }
        return OS_CONSOLE_NDEV_2_1;
    }

    return BootInfo->consoleType;
}

static void MemClear(void* mem, u32 size) {
    void* flush = (0x40000 < size) ? (u32)mem + (size - 0x40000) : mem;
    DCZeroRange(mem, size);
    DCFlushRange(flush, 0x40000);
}


static void ClearArena(void) DECOMP_DONT_INLINE {
    // System reset
    if (!((OSGetResetCode() >> 31) & 1)) {
        MemClear(OSGetArenaLo(), (u32)OSGetArenaHi() - (u32)OSGetArenaLo());
    }
    // Region doesn't exist, or begins somewhere outside of MEM1
    else if (__OSRebootParams.regionStart == NULL ||
             !OS_MEM_IS_MEM1(__OSRebootParams.regionStart)) {
        MemClear(OSGetArenaLo(), (u32)OSGetArenaHi() - (u32)OSGetArenaLo());
    }
    // Region begins after arena begins
    else if (OSGetArenaLo() < __OSRebootParams.regionStart) {
        // Region is outside of arena
        if (OSGetArenaHi() <= __OSRebootParams.regionStart) {
            MemClear(OSGetArenaLo(), (u32)OSGetArenaHi() - (u32)OSGetArenaLo());
        }
        // Region begins in arena
        else {
            // Clear arena area before region
            MemClear(OSGetArenaLo(),
                     (u32)__OSRebootParams.regionStart - (u32)OSGetArenaLo());

            // Region ends inside arena
            if (OSGetArenaHi() > __OSRebootParams.regionEnd) {
                // Clear arena area after region
                MemClear(__OSRebootParams.regionEnd,
                         (u32)OSGetArenaHi() - (u32)__OSRebootParams.regionEnd);
            }
        }
    }
}

static void ClearMEM2Arena(void) DECOMP_DONT_INLINE {
    // System reset
    if (!((OSGetResetCode() >> 31) & 1)) {
        MemClear(OSGetMEM2ArenaLo(),
                 (u32)OSGetMEM2ArenaHi() - (u32)OSGetMEM2ArenaLo());
    }
    // Region doesn't exist, or begins somewhere outside of MEM2
    else if (__OSRebootParams.regionStart == NULL ||
             !OS_MEM_IS_MEM2(__OSRebootParams.regionStart)) {
        MemClear(OSGetMEM2ArenaLo(),
                 (u32)OSGetMEM2ArenaHi() - (u32)OSGetMEM2ArenaLo());
    }
    // Region begins after arena begins
    else if (OSGetMEM2ArenaLo() < __OSRebootParams.regionStart) {
        // Region is outside of arena
        if (OSGetMEM2ArenaHi() <= __OSRebootParams.regionStart) {
            MemClear(OSGetMEM2ArenaLo(),
                     (u32)OSGetMEM2ArenaHi() - (u32)OSGetMEM2ArenaLo());
        }
        // Region begins in arena
        else {
            // Clear arena area before region
            MemClear(OSGetMEM2ArenaLo(), (u32)__OSRebootParams.regionStart -
                                             (u32)OSGetMEM2ArenaLo());
            // Region ends inside arena
            if (OSGetMEM2ArenaHi() > __OSRebootParams.regionEnd) {
                // Clear arena area after region
                MemClear(__OSRebootParams.regionEnd,
                         (u32)OSGetMEM2ArenaHi() -
                             (u32)__OSRebootParams.regionEnd);
            }
        }
    }
}

static void InquiryCallback(s32 arg0, DVDCommandBlock* block) {
#pragma unused(arg0)
    switch (block->state) {
    case 0:
        OS_DVD_DEVICE_CODE_ADDR = DriveInfo.deviceCode | 0x8000;
        break;
    default:
        OS_DVD_DEVICE_CODE_ADDR = 0x0001;
        break;
    }
}

static void ReportOSInfo(void) {
    OSConsoleType type;
    OSIOSRev rev;
    u32 category;
    u32 tdev;

    OSReport("\nRevolution OS\n");
    OSReport("Kernel built : %s %s\n", "Feb 27 2009", "10:04:29");

    OSReport("Console Type : ");
    type = OSGetConsoleType();
    category = type & OS_CONSOLE_MASK;
    switch (category) {
    case OS_CONSOLE_MASK_RVL:
        switch ((u32)type) {
        case OS_CONSOLE_RVL_PP_1:
            OSReport("Pre-production board 1\n");
            break;
        case OS_CONSOLE_RVL_PP_2_1:
            OSReport("Pre-production board 2-1\n");
            break;
        case OS_CONSOLE_RVL_PP_2_2:
            OSReport("Pre-production board 2-2\n");
            break;
        case OS_CONSOLE_RVA_1:
            OSReport("RVA 1\n");
            break;
        default:
            OSReport("Retail %d\n", type);
            break;
        }
        break;
    case OS_CONSOLE_MASK_EMU:
        switch (type) {
        case OS_CONSOLE_NDEV_2_1:
            OSReport("NDEV 2.1\n");
            break;
        case OS_CONSOLE_NDEV_2_0:
            OSReport("NDEV 2.0\n");
            break;
        case OS_CONSOLE_NDEV_1_2:
            OSReport("NDEV 1.2\n");
            break;
        case OS_CONSOLE_NDEV_1_1:
            OSReport("NDEV 1.1\n");
            break;
        case OS_CONSOLE_NDEV_1_0:
            OSReport("NDEV 1.0\n");
            break;
        case OS_CONSOLE_RVL_EMU:
            OSReport("Revolution Emulator\n");
            break;
        default:
            OSReport("Emulation platform (%08x)\n", type);
            break;
        }
        break;
    case OS_CONSOLE_MASK_TDEV:
        tdev = type & 0x0FFFFFFF;
        OSReport("TDEV-based emulation HW%d\n", tdev - 3);
        break;
    default:
        OSReport("%08x\n", type);
        break;
    }

    __OSGetIOSRev(&rev);
    OSReport("Firmware     : %d.%d.%d ", rev.idLo, rev.verMajor, rev.verMinor);
    OSReport("(%d/%d/%d)\n", rev.buildMon, rev.buildDay, rev.buildYear);

    OSReport("Memory %d MB\n", OS_MEM_B_TO_MB(OSGetConsoleSimulatedMem1Size() +
                                              OSGetConsoleSimulatedMem2Size()));
    OSReport("MEM1 Arena : 0x%x - 0x%x\n", OSGetMEM1ArenaLo(),
             OSGetMEM1ArenaHi());
    OSReport("MEM2 Arena : 0x%x - 0x%x\n", OSGetMEM2ArenaLo(),
             OSGetMEM2ArenaHi());
}


static void CheckTargets(void) {
    switch (*(u8*)OSPhysicalToCached(OS_PHYS_BOOT_PROGRAM_TARGET)) {
    case 0x81:
        OSReport("OS ERROR: boot program is not for RVL target. Please use "
                 "correct boot program.\n");
#line 1153
        OSError("Failed to run app");
        break;
    case 0x80:
    default:
        break;
    }

    switch (*(u8*)OSPhysicalToCached(OS_PHYS_APPLOADER_TARGET)) {
    case 0x81:
        OSReport("OS ERROR: apploader[D].img is not for RVL target. Please use "
                 "correct apploader[D].img.\n");
#line 1171
        OSError("Failed to run app");
        break;
    case 0x80:
    default:
        break;
    }
}

static void CheckFirmare(void){
    OSIOSRev rev;
    const GXColor bgColor = {0,0,255,0};
    const GXColor textColor = {255,255,255,0};

    __OSGetIOSRev(&rev);

    const u32 myVersion = rev.idLo << 16 | rev.verMajor << 8 | rev.verMinor;
    
    if (rev.idLo != (OS_MINIMUM_IOS_VERSION >> 16)
        || rev.idLo == (OS_MINIMUM_IOS_VERSION >> 16) && myVersion < OS_MINIMUM_IOS_VERSION) {
        OSReport("OS ERROR: This firmware is an improper version for this SDK. Please use a correct Firmware.\n");
        OSFatal(textColor, bgColor, "\n\nERROR #002\nAn error has occurred.\nPress the Eject Button, remove the\nGame Disc, and turn off the power to \nthe console. \nPlease read the Wii Operations Manual \nfor further instructions.\n");
#line 1236
        OSError("Failed to run app");
      }
}

static u8 GetAppType(){
    if (__OSInIPL) {
        return OS_APP_TYPE_IPL;
    }

    return *(u8*)OSPhysicalToCached(OS_PHYS_CURRENT_APP_TYPE);
}

static void __OSRegisterVersion(const char* ver) {
    OSReport("%s\n", ver);
}

void OSInit(void) {
    OSBI2* bi2;
    void* mem1lo;
    void* mem1hi;
    void* mem2lo;
    void* mem2hi;

    if (!AreWeInitialized) {
        AreWeInitialized = TRUE;

        __OSStartTime = __OSGetSystemTime();
        OSDisableInterrupts();
        __OSGetExecParams(&__OSRebootParams);

        PPCMtmmcr0(0);
        PPCMtmmcr1(0);
        PPCMtpmc1(0);
        PPCMtpmc2(0);
        PPCMtpmc3(0);
        PPCMtpmc4(0);
        PPCMthid4(HID4_H4A | HID4_SBE | HID4_PS1_CTL | (1 << 23) |
                  HID4_L2_CCFI);
        PPCDisableSpeculation();
        PPCSetFpNonIEEEMode();

        BootInfo = (OSBootInfo*)OSPhysicalToCached(OS_PHYS_BOOT_INFO);
        BI2DebugFlag = NULL;
        __DVDLongFileNameFlag = FALSE;

        // DVD BI2 information
        bi2 = *(OSBI2**)OSPhysicalToCached(OS_PHYS_DVD_BI2);
        if (bi2 != NULL) {
            // Use from DVD and update OS globals
            BI2DebugFlag = &bi2->debugFlag;
            __PADSpec = bi2->padSpec;
            *(u8*)OSPhysicalToCached(OS_PHYS_BI2_DEBUG_FLAG) = *BI2DebugFlag;
            *(u8*)OSPhysicalToCached(OS_PHYS_PAD_SPEC) = __PADSpec;
        } else if (BootInfo->arenaHi != NULL) {
            // Use from OS globals
            BI2DebugFlagHolder =
                *(u8*)OSPhysicalToCached(OS_PHYS_BI2_DEBUG_FLAG);
            BI2DebugFlag = &BI2DebugFlagHolder;
            __PADSpec = *(u8*)OSPhysicalToCached(OS_PHYS_PAD_SPEC);
        }

        __DVDLongFileNameFlag = TRUE;

        // Initialize MEM1 arena lo
        mem1lo = *(void**)OSPhysicalToCached(OS_PHYS_USABLE_MEM1_START);
        if (mem1lo == NULL) {
            // Use the linker-generated arena if it is in MEM1...
            if (OS_MEM_IS_MEM1(_db_stack_addr)) {
                // ...and if the OS boot info does not specify one
                mem1lo =
                    BootInfo->arenaLo == NULL ? _db_stack_addr : BootInfo->arenaLo;

                /**
                 * Linker generates stack/arena in this order:
                 * 1. Program stack (32K)
                 * 2. Debug stack (8K)
                 * 3. Program arena
                 *
                 * By using the end of the debug stack as the arena start,
                 * we can avoid wasting the 8K allocated for the debug stack
                 * (if there is no debugger attached).
                 *
                 * If the arena instead starts in MEM2, this optimization is
                 * also performed.
                 */
                if (BootInfo->arenaLo == NULL && BI2DebugFlag != NULL &&
                    *BI2DebugFlag < 2) {
                    mem1lo = ROUND_UP_PTR(_db_stack_end, 32);
                }
            } else {
                // ???
                mem1lo = (void*)0x80004000;
            }
        }
        OSSetMEM1ArenaLo(mem1lo);

        // Initialize MEM1 arena hi
        mem1hi = *(void**)OSPhysicalToCached(OS_PHYS_USABLE_MEM1_END);
        if (mem1hi == NULL) {
            // Use the linker-generated arena if OS boot info does not specify
            // one
            mem1hi = BootInfo->arenaHi == NULL ? __ArenaHi : BootInfo->arenaHi;
        }
        OSSetMEM1ArenaHi(mem1hi);

        // Initialize MEM2 arena lo
        mem2lo = *(void**)OSPhysicalToCached(OS_PHYS_USABLE_MEM2_START);
        if (mem2lo != NULL) {
            // Use the linker-generated arena if it is in MEM2
            if (OS_MEM_IS_MEM2(_db_stack_addr)) {
                mem2lo = _db_stack_addr;

                // Use debugger stack if it would be wasted
                if (BI2DebugFlag != NULL && *BI2DebugFlag < 2) {
                    mem2lo = ROUND_UP_PTR(_stack_addr, 32);
                }
            }
            // First 2K of MEM2 is reserved?
            else if (mem2lo >= (void*)0x90000000 &&
                     mem2lo < (void*)0x90000800) {
                mem2lo = (void*)0x90000800;
            }
            OSSetMEM2ArenaLo(mem2lo);
        }

        // Initialize MEM2 arena hi
        mem2hi = *(void**)OSPhysicalToCached(OS_PHYS_USABLE_MEM2_END);
        if (mem2hi != NULL) {
            OSSetMEM2ArenaHi(mem2hi);
        }

        // Initialize other modules
        __OSInitIPCBuffer();
        OSExceptionInit();
        __OSInitSystemCall();
        __OSInitAlarm();
        __OSModuleInit();
        __OSInterruptInit();
        __OSContextInit();
        __OSCacheInit();
        EXIInit();
        SIInit();
        __OSInitSram();
        __OSThreadInit();
        __OSInitAudioSystem();

        DisableWriteGatherPipe();

        if (!__OSInIPL) {
            __OSInitMemoryProtection();
        }

        ReportOSInfo();
        __OSRegisterVersion(__OSVersion);

        // Check for debugger just like earlier
        if (BI2DebugFlag != NULL && *BI2DebugFlag >= 2) {
            EnableMetroTRKInterrupts();
        }

        if (!__OSInNandBoot && !__OSInReboot) {
            ClearArena();
            ClearMEM2Arena();
        }

        OSEnableInterrupts();
        IPCCltInit();

        if (!__OSInNandBoot && !__OSInReboot) {
            __OSInitSTM();

            SCInit();
            while (SCCheckStatus() == SC_STATUS_1) {
                ;
            }

            __OSInitNet();
        }

        if (!__OSInIPL) {
            CheckTargets();
            CheckFirmare();
            DVDInit();

            if (__OSIsGcam) {
                OS_DVD_DEVICE_CODE_ADDR = 0x9000;
            } else if (OS_DVD_DEVICE_CODE_ADDR == 0) {
                DCInvalidateRange(&DriveInfo, sizeof(DVDDriveInfo));
                DVDInquiryAsync(&DriveBlock, &DriveInfo, InquiryCallback);
            }
        

            if(GetAppType() == 0x80 && !__OSInReboot && !__DVDCheckDevice()){
                    OSReturnToMenu();
            }
        }

        if (!__OSInIPL && !__OSInNandBoot) {
            __OSInitPlayTime();
        }

        if (!__OSInIPL && !__OSInNandBoot && !__OSInReboot) {
            __OSStartPlayRecord();
        }
    }
}

// Physical addresses
// (Must be defined down here because of data pooling)
static u32 __OSExceptionLocations[OS_EXC_MAX] = {
    0x0100, 0x0200, 0x0300, 0x0400, 0x0500, 0x0600, 0x0700, 0x0800,
    0x0900, 0x0C00, 0x0D00, 0x0F00, 0x1300, 0x1400, 0x1700};

static void OSExceptionInit(void) {
    u32* dst;
    u8 i;
    u32* pInst;
    u32 inst;
    void* vectorCode;
    u32 vectorSize;
    int j;
    u32* code;

    // Instruction that will be modified
    pInst = (u32*)__OSEVSetNumber;
    inst = *pInst;

    // OS exception vector
    vectorCode = __OSEVStart;
    vectorSize = (u32)__OSEVEnd - (u32)__OSEVStart;

    dst = (u32*)OSPhysicalToCached(OS_PHYS_DB_INTEGRATOR_HOOK);
    // Code is empty if DB integrator has not yet been installed
    if (*dst == 0) {
        DBPrintf("Installing OSDBIntegrator\n");
        memcpy(dst, __OSDBINTSTART, (u32)__OSDBINTEND - (u32)__OSDBINTSTART);
        DCFlushRangeNoSync(dst, (u32)__OSDBINTEND - (u32)__OSDBINTSTART);
        __sync();
        ICInvalidateRange(dst, (u32)__OSDBINTEND - (u32)__OSDBINTSTART);
    }

    for (i = 0; i < OS_EXC_MAX; i++) {
        if (BI2DebugFlag != NULL && *BI2DebugFlag >= 2 &&
            __DBIsExceptionMarked(i)) {
            DBPrintf(">>> OSINIT: exception %d commandeered by TRK\n", i);
        } else {
            // Modify li instruction with exception ID
            *pInst = inst | i;

            if (__DBIsExceptionMarked(i)) {
                DBPrintf(">>> OSINIT: exception %d vectored to debugger\n", i);
                memcpy(__DBVECTOR, __OSDBJUMPSTART,
                       (u32)__OSDBJUMPEND - (u32)__OSDBJUMPSTART);
            } else {
                code = (u32*)__DBVECTOR;
                for (j = 0; j < (u32)__OSDBJUMPEND - (u32)__OSDBJUMPSTART;
                     j += sizeof(u32), code++) {
                    // Write nop
                    *code = 0x60000000;
                }
            }

            dst = OSPhysicalToCached(__OSExceptionLocations[i]);
            memcpy(dst, vectorCode, vectorSize);
            DCFlushRangeNoSync(dst, vectorSize);
            __sync();
            ICInvalidateRange(dst, vectorSize);
        }
    }

    OSExceptionTable =
        (OSExceptionHandler*)OSPhysicalToCached(OS_PHYS_EXCEPTION_TABLE);
    for (i = 0; i < OS_EXC_MAX; i++) {
        __OSSetExceptionHandler(i, OSDefaultExceptionHandler);
    }

    // Restore original instruction
    *pInst = inst;
    DBPrintf("Exceptions initialized...\n");
}

static asm void __OSDBIntegrator(void) {
        nofralloc

    entry __OSDBINTSTART

    // Access OS debug interface
    li r5, OS_PHYS_DEBUG_INTERFACE

    // Save exception hook return address
    mflr r3
    stw r3, OSDebugInterface.exceptionHookLR(r5)

    // Load exception hook
    lwz r3, OSDebugInterface.exceptionHook(r5)
    // Physical -> Cached
    oris r3, r3, 0x8000
    mtlr r3

    // Setup MMU
    li r3, (MSR_IR | MSR_DR)
    mtmsr r3

    // Call exception hook
    blr

    entry __OSDBINTEND
    }

static asm void __OSDBJump(void){
        nofralloc

    entry __OSDBJUMPSTART

    bla 0x60

    entry __OSDBJUMPEND
    }

OSExceptionHandler
    __OSSetExceptionHandler(u8 type, OSExceptionHandler handler) {
    const OSExceptionHandler old = OSExceptionTable[type];
    OSExceptionTable[type] = handler;
    return old;
}

OSExceptionHandler __OSGetExceptionHandler(u8 type) {
    return OSExceptionTable[type];
}

static asm void OSExceptionVector(void) {
        nofralloc

    entry __OSEVStart

    mtsprg0 r4
    
    // Currrent OS context (physical address)
    lwz r4, 0x000000C0(0)
    stw r3, OSContext.gprs[3](r4)
    mfsprg0 r3
    stw r3, OSContext.gprs[4](r4)
    stw r5, OSContext.gprs[5](r4)
    lhz r3, OSContext.state(r4)
    ori r3, r3, 0x2
    sth r3, OSContext.state(r4)
    mfcr r3
    stw r3, OSContext.cr(r4)
    mflr r3
    stw r3, OSContext.lr(r4)
    mfctr r3

    entry __OSDBJUMPDEST

    stw r3, OSContext.ctr(r4)
    mfxer r3
    stw r3, OSContext.xer(r4)
    mfsrr0 r3
    stw r3, OSContext.srr0(r4)
    mfsrr1 r3
    stw r3, OSContext.srr1(r4)
    mr r5, r3

    entry __DBVECTOR

    nop
    mfmsr r3
    ori r3, r3, (MSR_IR | MSR_DR)
    mtsrr1 r3

    entry __OSEVSetNumber

    li r3, 0
    // Currrent OS context (cached address)
    lwz r4, 0x000000D4(r0)
    rlwinm. r5, r5, 0, 30, 30
    bne lbl_800ECF70
    lis r5, OSDefaultExceptionHandler@ha
    addi r5, r5, OSDefaultExceptionHandler@l
    mtsrr0 r5
    rfi

lbl_800ECF70:
    rlwinm r5, r3, 2, 22, 29
    lwz r5, 0x3000(r5)
    mtsrr0 r5
    rfi

    entry __OSEVEnd

    nop
    }

asm void OSDefaultExceptionHandler(u8 type, register OSContext* ctx) {
        nofralloc

    stw r0, ctx->gprs[0]
    stw r1, ctx->gprs[1]
    stw r2, ctx->gprs[2]
    stmw r6, ctx->gprs[6]

    mfgqr1 r0
    stw r0, ctx->gqrs[1]
    mfgqr2 r0
    stw r0, ctx->gqrs[2]
    mfgqr3 r0
    stw r0, ctx->gqrs[3]
    mfgqr4 r0
    stw r0, ctx->gqrs[4]
    mfgqr5 r0
    stw r0, ctx->gqrs[5]
    mfgqr6 r0
    stw r0, ctx->gqrs[6]
    mfgqr7 r0
    stw r0, ctx->gqrs[7]

    mfdsisr r5
    mfdar r6

    stwu r1, -8(r1)
    b __OSUnhandledException
    }

void __OSPSInit(void) {
    PPCMthid2(PPCMfhid2() | (1 << 31) | HID2_PSE);
    ICFlashInvalidate();

        asm {
        sync
        li r3, 0
        mtgqr0 r3
        mtgqr1 r3
        mtgqr2 r3
        mtgqr3 r3
        mtgqr4 r3
        mtgqr5 r3
        mtgqr6 r3
        mtgqr7 r3
    }
    }

u32 __OSGetDIConfig(void) { return OS_DI_CONFIG & 0xFF; }

void OSRegisterVersion(const char* ver) { __OSRegisterVersion(ver); }

// Must be defined down here because of data pooling
static const char* AppGameNameForSysMenu = "HAEA";

const char* OSGetAppGamename(void) {
    int i;
    const char* temp = (const char*)OSPhysicalToCached(OS_PHYS_CURRENT_APP_NAME_1);
    const char* name = temp;

    if (__OSInIPL){
        name = AppGameNameForSysMenu;
    }else if(INVALID_NAME_CHAR(*temp)){
        name = (const char*)OSPhysicalToCached(OS_PHYS_CURRENT_APP_NAME);
    }

    for (i = 0; i < 4; i++) {
        GameNameBuffer[i] = name[i];
    }
    GameNameBuffer[4] = '\0';

    return GameNameBuffer;
}

u8 OSGetAppType(void) {
    return GetAppType();
}
