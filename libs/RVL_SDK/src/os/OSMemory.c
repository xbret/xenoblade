#include "revolution/OS.h"

static BOOL OnShutdown(u32 pass, u32 event);
static OSShutdownFunctionInfo ShutdownFunctionInfo = {OnShutdown, 127, NULL,
                                                      NULL};

//unused
u32 OSGetPhysicalMem1Size(void) { return OS_PHYSICAL_MEM1_SIZE; }

u32 OSGetPhysicalMem2Size(void) { return OS_PHYSICAL_MEM2_SIZE; }

u32 OSGetConsoleSimulatedMem1Size(void) { return OS_SIMULATED_MEM1_SIZE; }

u32 OSGetConsoleSimulatedMem2Size(void) { return OS_SIMULATED_MEM2_SIZE; }

static BOOL OnShutdown(u32 pass, u32 event) {
#pragma unused(event)

    if (pass != OS_SD_PASS_FIRST) {
        MI_HW_REGS[MI_PROT_MEM0] = 0xFF;
        __OSMaskInterrupts(
            OS_INTR_MASK(OS_INTR_MEM_0) | OS_INTR_MASK(OS_INTR_MEM_1) |
            OS_INTR_MASK(OS_INTR_MEM_2) | OS_INTR_MASK(OS_INTR_MEM_3));
    }

    return TRUE;
}

// Typo
static void MEMIntrruptHandler(s32 intr, OSContext* ctx) {
#pragma unused(intr)

    u32 dsisr = MI_HW_REGS[MI_INTSR];
    u32 dar = (MI_HW_REGS[MI_ADDRHI] & 0x3ff) << 0x10 | MI_HW_REGS[MI_ADDRLO];
    MI_HW_REGS[MI_REG_0x20] = 0;

    if (__OSErrorTable[OS_ERR_PROTECTION] != NULL) {
        __OSErrorTable[OS_ERR_PROTECTION](OS_ERR_PROTECTION, ctx, dsisr, dar);
    } else {
        __OSUnhandledException(OS_ERR_PROTECTION, ctx, dsisr, dar);
    }
}

//unused
void OSProtectRange(){
}

static asm void ConfigMEM1_24MB(void) {
        nofralloc

    li r7, 0
    lis r4, 0x00000002@ha
    addi r4, r4, 0x00000002@l
    lis r3, 0x800001FF@ha
    addi r3, r3, 0x800001FF@l
    lis r6, 0x01000002@ha
    addi r6, r6, 0x01000002@l
    lis r5, 0x810000FF@ha
    addi r5, r5, 0x810000FF@l
    isync
    mtdbatu 0, r7
    mtdbatl 0, r4
    mtdbatu 0, r3
    isync
    mtibatu 0, r7
    mtibatl 0, r4
    mtibatu 0, r3
    isync
    mtdbatu 2, r7
    mtdbatl 2, r6
    mtdbatu 2, r5
    isync
    mtibatu 2, r7
    mtibatl 2, r6
    mtibatu 2, r5
    isync
    mfmsr r3
    ori r3, r3, 0x30
    mtsrr1 r3
    mflr r3
    mtsrr0 r3
    rfi
    }

static asm void ConfigMEM2_52MB(void) {
        nofralloc

    li r7, 0
    lis r4, 0x10000002@ha
    addi r4, r4, 0x10000002@l
    lis r3, 0x900003FF@ha
    addi r3, r3, 0x900003FF@l
    lis r6, 0x1000002A@ha
    addi r6, r6, 0x1000002A@l
    lis r5, 0xD00007FF@ha
    addi r5, r5, 0xD00007FF@l
    isync
    mtspr DBAT4U, r7
    mtspr DBAT4L, r4
    mtspr DBAT4U, r3
    isync
    mtspr IBAT4U, r7
    mtspr IBAT4L, r7
    isync
    mtspr DBAT5U, r7
    mtspr DBAT5L, r6
    mtspr DBAT5U, r5
    isync
    mtspr IBAT5U, r7
    mtspr IBAT5L, r7
    isync
    lis r4, 0x12000002@ha
    addi r4, r4, 0x12000002@l
    lis r3, 0x920001FF@ha
    addi r3, r3, 0x920001FF@l
    lis r6, 0x13000002@ha
    addi r6, r6, 0x13000002@l
    lis r5, 0x9300007F@ha
    addi r5, r5, 0x9300007F@l
    isync
    mtspr DBAT6U, r7
    mtspr DBAT6L, r4
    mtspr DBAT6U, r3
    isync
    mtspr IBAT6U, r7
    mtspr IBAT6L, r7
    isync
    mtspr DBAT7U, r7
    mtspr DBAT7L, r6
    mtspr DBAT7U, r5
    isync
    mtspr IBAT7U, r7
    mtspr IBAT7L, r7
    isync
    mfmsr r3
    ori r3, r3, 0x30
    mtsrr1 r3
    mflr r3
    mtsrr0 r3
    rfi
    }

static asm void ConfigMEM2_56MB(void) {
        nofralloc

    li r7, 0
    lis r4, 0x10000002@ha
    addi r4, r4, 0x10000002@l
    lis r3, 0x900003FF@ha
    addi r3, r3, 0x900003FF@l
    lis r6, 0x1000002A@ha
    addi r6, r6, 0x1000002A@l
    lis r5, 0xD00007FF@ha
    addi r5, r5, 0xD00007FF@l
    isync
    mtspr DBAT4U, r7
    mtspr DBAT4L, r4
    mtspr DBAT4U, r3
    isync
    mtspr IBAT4U, r7
    mtspr IBAT4L, r7
    isync
    mtspr DBAT5U, r7
    mtspr DBAT5L, r6
    mtspr DBAT5U, r5
    isync
    mtspr IBAT5U, r7
    mtspr IBAT5L, r7
    isync
    lis r4, 0x12000002@ha
    addi r4, r4, 0x12000002@l
    lis r3, 0x920001FF@ha
    addi r3, r3, 0x920001FF@l
    lis r6, 0x13000002@ha
    addi r6, r6, 0x13000002@l
    lis r5, 0x930000FF@ha
    addi r5, r5, 0x930000FF@l
    isync
    mtspr DBAT6U, r7
    mtspr DBAT6L, r4
    mtspr DBAT6U, r3
    isync
    mtspr IBAT6U, r7
    mtspr IBAT6L, r7
    isync
    mtspr DBAT7U, r7
    mtspr DBAT7L, r6
    mtspr DBAT7U, r5
    isync
    mtspr IBAT7U, r7
    mtspr IBAT7L, r7
    isync
    mfmsr r3
    ori r3, r3, 0x30
    mtsrr1 r3
    mflr r3
    mtsrr0 r3
    rfi
    }

static asm void ConfigMEM2_64MB(void) {
        nofralloc

    li r7, 0
    lis r4, 0x10000002@ha
    addi r4, r4, 0x10000002@l
    lis r3, 0x900007FF@ha
    addi r3, r3, 0x900007FF@l
    lis r6, 0x1000002A@ha
    addi r6, r6, 0x1000002A@l
    lis r5, 0xD00007FF@ha
    addi r5, r5, 0xD00007FF@l
    isync
    mtspr DBAT4U, r7
    mtspr DBAT4L, r4
    mtspr DBAT4U, r3
    isync
    mtspr IBAT4U, r7
    mtspr IBAT4L, r7
    isync
    mtspr DBAT5U, r7
    mtspr DBAT5L, r6
    mtspr DBAT5U, r5
    isync
    mtspr IBAT5U, r7
    mtspr IBAT5L, r7
    isync
    mtspr IBAT6U, r7
    mtspr IBAT6L, r7
    isync
    mtspr IBAT7U, r7
    mtspr IBAT7L, r7
    isync
    mtspr DBAT6U, r7
    mtspr DBAT6L, r7
    isync
    mtspr DBAT7U, r7
    mtspr DBAT7L, r7
    isync
    mfmsr r3
    ori r3, r3, 0x30
    mtsrr1 r3
    mflr r3
    mtsrr0 r3
    rfi
    }

static asm void ConfigMEM2_112MB(void) {
        nofralloc

    li r7, 0
    lis r4, 0x10000002@ha
    addi r4, r4, 0x10000002@l
    lis r3, 0x900007FF@ha
    addi r3, r3, 0x900007FF@l
    lis r6, 0x1000002A@ha
    addi r6, r6, 0x1000002A@l
    lis r5, 0xD0000FFF@ha
    addi r5, r5, 0xD0000FFF@l
    isync
    mtspr DBAT4U, r7
    mtspr DBAT4L, r4
    mtspr DBAT4U, r3
    isync
    mtspr IBAT4U, r7
    mtspr IBAT4L, r7
    isync
    mtspr DBAT5U, r7
    mtspr DBAT5L, r6
    mtspr DBAT5U, r5
    isync
    mtspr IBAT5U, r7
    mtspr IBAT5L, r7
    isync
    lis r4, 0x14000002@ha
    addi r4, r4, 0x14000002@l
    lis r3, 0x940003FF@ha
    addi r3, r3, 0x940003FF@l
    lis r6, 0x16000002@ha
    addi r6, r6, 0x16000002@l
    lis r5, 0x960001FF@ha
    addi r5, r5, 0x960001FF@l
    isync
    mtspr DBAT6U, r7
    mtspr DBAT6L, r4
    mtspr DBAT6U, r3
    isync
    mtspr IBAT6U, r7
    mtspr IBAT6L, r7
    isync
    mtspr DBAT7U, r7
    mtspr DBAT7L, r6
    mtspr DBAT7U, r5
    isync
    mtspr IBAT7U, r7
    mtspr IBAT7L, r7
    isync
    mfmsr r3
    ori r3, r3, 0x30
    mtsrr1 r3
    mflr r3
    mtsrr0 r3
    rfi
    }

static asm void ConfigMEM2_128MB(void) {
        nofralloc

    li r7, 0
    lis r4, 0x10000002@ha
    addi r4, r4, 0x10000002@l
    lis r3, 0x90000FFF@ha
    addi r3, r3, 0x90000FFF@l
    lis r6, 0x1000002A@ha
    addi r6, r6, 0x1000002A@l
    lis r5, 0xD0000FFF@ha
    addi r5, r5, 0xD0000FFF@l
    isync
    mtspr DBAT4U, r7
    mtspr DBAT4L, r4
    mtspr DBAT4U, r3
    isync
    mtspr IBAT4U, r7
    mtspr IBAT4L, r7
    isync
    mtspr DBAT5U, r7
    mtspr DBAT5L, r6
    mtspr DBAT5U, r5
    isync
    mtspr IBAT5U, r7
    mtspr IBAT5L, r7
    isync
    mtspr IBAT6U, r7
    mtspr IBAT6L, r7
    isync
    mtspr IBAT7U, r7
    mtspr IBAT7L, r7
    isync
    mtspr DBAT6U, r7
    mtspr DBAT6L, r7
    isync
    mtspr DBAT7U, r7
    mtspr DBAT7L, r7
    isync
    mfmsr r3
    ori r3, r3, 0x30
    mtsrr1 r3
    mflr r3
    mtsrr0 r3
    rfi
    }

//unused
void DisableInstsOnMEM1Hi8MB(){
}

//unused
void DisableInstsOnMEM1Hi16MB(){
}

//unused
void EnableInstsOnMEM2Lo8MB(){
}

//unused
void EnableInstsOnMEM2Lo16MB(){
}

static asm void RealMode(register void* config) {
        nofralloc

    clrlwi config, config, 2
    mtsrr0 config
    mfmsr config
    rlwinm config, config, 0, 0x1c, 0x19
    mtsrr1 config
    rfi
    }

//Does nothing. There might've been extra code while was commented out/removed.
static void WeirdAssInline(u32 size){
    //Loops forever unless the input value is 0xBA2CF
    do{
    }while(size != 0xBA2CF);
}

static void BATConfig(u32 size) {
    u32 mem1sim;
    u32 mem1phys;
    void* mem2end;

    mem1sim = OSGetConsoleSimulatedMem1Size();
    mem1phys = OSGetPhysicalMem1Size();
    if (OSGetConsoleSimulatedMem1Size() < mem1phys &&
        mem1sim == OS_MEM_MB_TO_B(24)) {
        DCInvalidateRange((void*)0x81800000, OS_MEM_MB_TO_B(24));
        MI_HW_REGS[MI_REG_0x28] = 2;
    }

    if (mem1sim <= OS_MEM_MB_TO_B(24)) {
        RealMode(ConfigMEM1_24MB);
    }

    mem2end = *(void**)OSPhysicalToCached(OS_PHYS_ACCESSIBLE_MEM2_END);
    if (OSGetConsoleSimulatedMem2Size() <= OS_MEM_MB_TO_B(64)) {
        if (mem2end <= (void*)0x93400000) {
            RealMode(ConfigMEM2_52MB);
        } else if (mem2end <= (char*)0x93400000 + OS_MEM_MB_TO_B(4)) {
            RealMode(ConfigMEM2_56MB);
        } else {
            RealMode(ConfigMEM2_64MB);
        }
    } else if (OSGetConsoleSimulatedMem2Size() <= OS_MEM_MB_TO_B(128)) {
        if (mem2end <= (void*)0x97000000) {
            RealMode(ConfigMEM2_112MB);
        } else {
            RealMode(ConfigMEM2_128MB);
        }
    }

    WeirdAssInline(size);
}

//unused
void OSDisableCodeExecOnMEM1Hi8MB(){
}

//unused
void OSDisableCodeExecOnMEM1Hi16MB(){
}

void __OSRestoreCodeExecOnMEM1(u32 size){
    RealMode(ConfigMEM1_24MB);
    WeirdAssInline(size);
}

//unused
void OSEnableCodeExecOnMEM2Lo16MB(){
}

//unused
void OSEnableCodeExecOnMEM2Lo8MB(){
}

void __OSInitMemoryProtection(void) {
    static BOOL initialized = FALSE;

    if(!initialized){
        const BOOL enabled = OSDisableInterrupts();

        MI_HW_REGS[MI_REG_0x20] = 0;
        MI_HW_REGS[MI_PROT_MEM0] = 0xFF;

        __OSMaskInterrupts(
            OS_INTR_MASK(OS_INTR_MEM_0) | OS_INTR_MASK(OS_INTR_MEM_1) |
            OS_INTR_MASK(OS_INTR_MEM_2) | OS_INTR_MASK(OS_INTR_MEM_3));
        __OSSetInterruptHandler(OS_INTR_MEM_0, MEMIntrruptHandler);
        __OSSetInterruptHandler(OS_INTR_MEM_1, MEMIntrruptHandler);
        __OSSetInterruptHandler(OS_INTR_MEM_2, MEMIntrruptHandler);
        __OSSetInterruptHandler(OS_INTR_MEM_3, MEMIntrruptHandler);
        __OSSetInterruptHandler(OS_INTR_MEM_ADDRESS, MEMIntrruptHandler);
        OSRegisterShutdownFunction(&ShutdownFunctionInfo);

        BATConfig(0xBA2CF);
        __OSUnmaskInterrupts(OS_INTR_MASK(OS_INTR_MEM_ADDRESS));

        initialized = TRUE;
        
        OSRestoreInterrupts(enabled);
    }
}
