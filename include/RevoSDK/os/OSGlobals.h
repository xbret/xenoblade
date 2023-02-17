
#ifndef RVL_SDK_OS_GLOBALS_H
#define RVL_SDK_OS_GLOBALS_H
#include "RevoSDK/os/OSAddress.h"
#include "RevoSDK/os/OSThread.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSContext;
typedef struct OSExecParams;

/**
 * For more details, see:
 * https://www.gc-forever.com/yagcd/chap4.html#sec4
 * https://www.gc-forever.com/yagcd/chap13.html#sec13
 * https://wiibrew.org/wiki/Memory_map
 */

// Derive offsets for use with OSAddress functions
#define __DEF_ADDR_OFFSETS(name, addr)                                         \
    static const u32 OS_PHYS_##name = (addr)-0x80000000;                       \
    static const u32 OS_CACHED_##name = (addr);                                \
    static const u32 OS_UNCACHED_##name = (addr) + (0xC0000000 - 0x80000000);

// Define a global variable in *CACHED* MEM1.
// Can be accessed directly or with OSAddress functions.
#define OS_DEF_GLOBAL_VAR(type, name, addr)                                    \
    /* Memory-mapped value for direct access */                                \
    type OS_##name : (addr);                                                   \
    __DEF_ADDR_OFFSETS(name, addr)

// Define a global array in *CACHED* MEM1.
// Can be accessed directly or with OSAddress functions.
#define OS_DEF_GLOBAL_ARR(type, name, arr, addr)                               \
    /* Memory-mapped value for direct access */                                \
    type OS_##name arr : (addr);                                               \
    __DEF_ADDR_OFFSETS(name, addr)

// Define an global variable in the hardware-register range.
#define OS_DEF_HW_REG(type, name, addr)                                        \
    /* Memory-mapped value for direct access */                                \
    type OS_##name : (addr);

typedef struct OSBootInfo {
    u32 appName;    // at 0x0
    u16 appMaker;   // at 0x4
    u8 diskID;      // at 0x6
    u8 diskVer;     // at 0x7
    u8 strmEnable;  // at 0x8
    u8 strmBufSize; // at 0x9
    char UNK_0xA[0x18 - 0xA];
    u32 rvlDiscMagic; // at 0x18
    u32 gcDiscMagic;  // at 0x1C
    u32 bootMagic;    // at 0x20
    u32 aplVersion;   // at 0x24
    u32 physMemSize;  // at 0x28
    u32 consoleType;  // at 0x2C
    void* arenaLo;    // at 0x30
    void* arenaHi;    // at 0x34
    void* fstStart;   // at 0x38
    u32 fstSize;      // at 0x3C
} OSBootInfo;

typedef struct OSDebugInterface {
    BOOL usingDebugger;    // at 0x0
    u32 exceptionMask;     // at 0x4
    void* exceptionHook;   // at 0x8
    void* exceptionHookLR; // at 0xC
} OSDebugInterface;

typedef struct OSBI2 {
    u32 dbgMonitorSize;   // at 0x0
    u32 simulatedMemSize; // at 0x4
    u32 argumentOfs;      // at 0x8
    u32 debugFlag;        // at 0xC
    u32 trackLocation;    // at 0x10
    u32 trackSize;        // at 0x14
    u32 countryCode;      // at 0x18
    u32 WORD_0x1C;
    u32 WORD_0x20;
    u32 padSpec;            // at 0x24
    u32 totalTextDataLimit; // at 0x28
    u32 simulatedMem2Size;  // at 0x2C
} OSBI2;

/**
 * 0x80000000 - 0x80000100
 */
// clang-format off
OS_DEF_GLOBAL_VAR(OSBootInfo, BOOT_INFO,             0x80000000);
OS_DEF_GLOBAL_VAR(OSDebugInterface, DEBUG_INTERFACE, 0x80000040);
OS_DEF_GLOBAL_ARR(u8, DB_INTEGRATOR_HOOK, [0x24],    0x80000060);
OS_DEF_GLOBAL_VAR(struct OSContext*, CURRENT_CONTEXT_PHYS,  0x800000C0);
OS_DEF_GLOBAL_VAR(u32, PREV_INTR_MASK,               0x800000C4);
OS_DEF_GLOBAL_VAR(u32, CURRENT_INTR_MASK,            0x800000C8);
OS_DEF_GLOBAL_VAR(u32, TV_FORMAT,                    0x800000CC);
OS_DEF_GLOBAL_VAR(u32, ARAM_SIZE,                    0x800000D0);
OS_DEF_GLOBAL_VAR(struct OSContext*, CURRENT_CONTEXT,       0x800000D4);
OS_DEF_GLOBAL_VAR(struct OSContext*, CURRENT_FPU_CONTEXT,   0x800000D8);
OS_DEF_GLOBAL_VAR(OSThreadQueue, THREAD_QUEUE,       0x800000DC);
OS_DEF_GLOBAL_VAR(OSThread*, CURRENT_THREAD,         0x800000E4);
OS_DEF_GLOBAL_VAR(u32, DEBUG_MONITOR_SIZE,           0x800000E8);
OS_DEF_GLOBAL_VAR(void*, DEBUG_MONITOR,              0x800000EC);
OS_DEF_GLOBAL_VAR(u32, SIMULATED_MEM_SIZE,           0x800000F0);
OS_DEF_GLOBAL_VAR(OSBI2*, DVD_BI2,                   0x800000F4);
OS_DEF_GLOBAL_VAR(u32, BUS_CLOCK_SPEED,              0x800000F8);
OS_DEF_GLOBAL_VAR(u32, CPU_CLOCK_SPEED,              0x800000FC);
// clang-format on

/**
 * 0x80003000 - 0x80003F00
 */
// clang-format off
OS_DEF_GLOBAL_ARR(void*, EXCEPTION_TABLE, [15],       0x80003000);
OS_DEF_GLOBAL_VAR(void*, INTR_HANDLER_TABLE,          0x80003040);
OS_DEF_GLOBAL_ARR(volatile s32, EXI_800030C0, [],     0x800030C0);
OS_DEF_GLOBAL_VAR(void*, FIRST_REL,                   0x800030C8);
OS_DEF_GLOBAL_VAR(void*, LAST_REL,                    0x800030CC);
OS_DEF_GLOBAL_VAR(void*, REL_NAME_TABLE,              0x800030D0);
OS_DEF_GLOBAL_VAR(u32, DOL_TOTAL_TEXT_DATA,           0x800030D4);
OS_DEF_GLOBAL_VAR(s64, SYSTEM_TIME,                   0x800030D8);
OS_DEF_GLOBAL_VAR(u16, GC_PAD_3_BTN,                  0x800030E4);
OS_DEF_GLOBAL_VAR(volatile u16, DVD_DEVICE_CODE_ADDR, 0x800030E6);
OS_DEF_GLOBAL_VAR(u8, BI2_DEBUG_FLAG,                 0x800030E8);
OS_DEF_GLOBAL_VAR(u8, PAD_SPEC,                       0x800030E9);
OS_DEF_GLOBAL_VAR(struct OSExecParams*, DOL_EXEC_PARAMS,     0x800030F0);
OS_DEF_GLOBAL_VAR(u32, PHYSICAL_MEM1_SIZE,            0x80003100);
OS_DEF_GLOBAL_VAR(u32, SIMULATED_MEM1_SIZE,           0x80003104);
OS_DEF_GLOBAL_VAR(void*, USABLE_MEM1_START,           0x8000310C);
OS_DEF_GLOBAL_VAR(void*, USABLE_MEM1_END,             0x80003110);
OS_DEF_GLOBAL_VAR(u32, PHYSICAL_MEM2_SIZE,            0x80003118);
OS_DEF_GLOBAL_VAR(u32, SIMULATED_MEM2_SIZE,           0x8000311C);
OS_DEF_GLOBAL_VAR(void*, ACCESSIBLE_MEM2_END,         0x80003120);
OS_DEF_GLOBAL_VAR(void*, USABLE_MEM2_START,           0x80003124);
OS_DEF_GLOBAL_VAR(void*, USABLE_MEM2_END,             0x80003128);
OS_DEF_GLOBAL_VAR(void*, IPC_BUFFER_START,            0x80003130);
OS_DEF_GLOBAL_VAR(void*, IPC_BUFFER_END,              0x80003134);
OS_DEF_GLOBAL_VAR(u32, HOLLYWOOD_REV,                 0x80003138);
OS_DEF_GLOBAL_VAR(u32, IOS_VERSION,                   0x80003140);
OS_DEF_GLOBAL_VAR(u32, IOS_BUILD_DATE,                0x80003144);
OS_DEF_GLOBAL_VAR(void*, IOS_HEAP_START,              0x80003148);
OS_DEF_GLOBAL_VAR(void*, IOS_HEAP_END,                0x8000314C);
OS_DEF_GLOBAL_VAR(u32, GDDR_VENDOR_CODE,              0x80003158);
OS_DEF_GLOBAL_VAR(u8, BOOT_PROGRAM_TARGET,            0x8000315C);
OS_DEF_GLOBAL_VAR(u8, APPLOADER_TARGET,               0x8000315D);
OS_DEF_GLOBAL_VAR(BOOL, MIOS_SHUTDOWN_FLAG,           0x80003164);
OS_DEF_GLOBAL_VAR(u32, CURRENT_APP_NAME,              0x80003180);
OS_DEF_GLOBAL_VAR(u8, CURRENT_APP_TYPE,               0x80003184);
OS_DEF_GLOBAL_VAR(u32, MINIMUM_IOS_VERSION,           0x80003188);
OS_DEF_GLOBAL_VAR(u32, NAND_TITLE_LAUNCH_CODE,        0x8000318C);
OS_DEF_GLOBAL_VAR(u32, NAND_TITLE_RETURN_CODE,        0x80003190);
OS_DEF_GLOBAL_ARR(u8, SC_PRDINFO, [0x100],            0x80003800);
// clang-format on

/**
 * PI hardware globals
 */
// clang-format off
OS_DEF_HW_REG(volatile u32, PI_INTSR, 0xCC003000);
OS_DEF_HW_REG(volatile u32, PI_INTMR, 0xCC003004);
OS_DEF_HW_REG(volatile u32, PI_RESET, 0xCC003024);
// clang-format on

/**
 * MI hardware globals
 */
// clang-format off
OS_DEF_HW_REG(volatile u16, MI_INTMR, 0xCC00401C);
// clang-format on

/**
 * DSP hardware globals
 */
// clang-format off
OS_DEF_HW_REG(volatile u16, DSP_DSPMBOX_HI,       0xCC005000);
OS_DEF_HW_REG(volatile u16, DSP_DSPMBOX_LO,       0xCC005002);
OS_DEF_HW_REG(volatile u16, DSP_CPUMBOX_HI,       0xCC005004);
OS_DEF_HW_REG(volatile u16, DSP_CPUMBOX_LO,       0xCC005006);
OS_DEF_HW_REG(volatile u16, DSP_CSR,              0xCC00500A);
OS_DEF_HW_REG(volatile u16, DSP_AR_SIZE,          0xCC005012);
OS_DEF_HW_REG(volatile u32, DSP_AR_DMA_MMADDR,    0xCC005020);
OS_DEF_HW_REG(volatile u16, DSP_AR_DMA_MMADDR_HI, 0xCC005020);
OS_DEF_HW_REG(volatile u16, DSP_AR_DMA_MMADDR_LO, 0xCC005022);
OS_DEF_HW_REG(volatile u32, DSP_AR_DMA_ARADDR,    0xCC005024);
OS_DEF_HW_REG(volatile u16, DSP_AR_DMA_ARADDR_HI, 0xCC005024);
OS_DEF_HW_REG(volatile u16, DSP_AR_DMA_ARADDR_LO, 0xCC005026);
OS_DEF_HW_REG(volatile u32, DSP_AR_DMA_CNT,       0xCC005028);
OS_DEF_HW_REG(volatile u16, DSP_AI_DMA_ADDR_HI,   0xCC005030);
OS_DEF_HW_REG(volatile u16, DSP_AI_DMA_ADDR_LO,   0xCC005032);
OS_DEF_HW_REG(volatile u16, DSP_AI_DMA_CONTROL,   0xCC005036);
// clang-format on

/**
 * AI hardware globals
 */
// clang-format off
OS_DEF_HW_REG(volatile u32, AI_INTMR, 0xCD006C00);
// clang-format on

/**
 * DI hardware globals
 */
// clang-format off
OS_DEF_HW_REG(volatile u32, DI_DMA_ADDR, 0xCD006014);
OS_DEF_HW_REG(volatile u32, DI_CONFIG,   0xCD006024);
// clang-format on

/**
 * Misc/unknown globals
 */
// clang-format off
OS_DEF_HW_REG(volatile u32, UNK_CD000034, 0xCD000034);
OS_DEF_HW_REG(volatile u32, UNK_CD800180, 0xCD800180);
OS_DEF_HW_REG(volatile u32, UNK_CD8001CC, 0xCD8001CC);
OS_DEF_HW_REG(volatile u32, UNK_CD8001D0, 0xCD8001D0);
// clang-format on

#ifdef __cplusplus
}
#endif
#endif