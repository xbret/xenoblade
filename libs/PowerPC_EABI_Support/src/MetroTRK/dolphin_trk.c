#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/mem_TRK.h"
#include "PowerPC_EABI_Support/MetroTRK/dolphin_trk.h"
#include "PowerPC_EABI_Support/MetroTRK/dolphin_trk_glue.h"
#include "PowerPC_EABI_Support/MetroTRK/__exception.h"
#include "PowerPC_EABI_Support/MetroTRK/mpc_7xx_603e.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Generic/ppc_targimpl.h"
#include "PowerPC_EABI_Support/MetroTRK/main_TRK.h"
#include "revolution/OS.h"


static u32 TRK_ISR_OFFSETS[16] = {
    PPC_SystemReset,
    PPC_MachineCheck,
    PPC_DataStorage,
    PPC_InstructionStorage,
    PPC_ExternalInterrupt,
    PPC_Alignment,
    PPC_Program,
    PPC_FloatingPointUnavaiable,
    PPC_Decrementer,
    PPC_SystemCall,
    PPC_Trace,
    PPC_PerformanceMonitor,
    PPC_InstructionAddressBreakpoint,
    PPC_SystemManagementInterrupt,
    PPC_ThermalManagementInterrupt,
    0
};

static u32 lc_base;

//r5: hardware id
asm void InitMetroTRK(){
    nofralloc
    addi r1, r1, -4
    stw r3, 0(r1)
    lis r3, gTRKCPUState@h
    ori r3, r3, gTRKCPUState@l
    stmw r0, TRKCPUState.gprs(r3) //Save the gprs
    lwz r4, 0(r1)
    addi r1, r1, 4
    stw r1, TRKCPUState.gprs[1](r3)
    stw r4, TRKCPUState.gprs[3](r3)
    mflr r4
    stw r4, TRKCPUState.lr(r3)
    stw r4, TRKCPUState.pc(r3)
    mfcr r4
    stw r4, TRKCPUState.cr(r3)
    mfmsr r4
    ori r3, r4, 0x8000
    xori r3, r3, 0x8000
    mtmsr r3
    mtsrr1 r4
	//Save misc registers to gTRKCPUState
    bl TRKSaveExtended1Block
    lis r3, gTRKCPUState@h
    ori r3, r3, gTRKCPUState@l
    lmw r0, TRKCPUState.gprs(r3) //Restore the gprs
	//Reset IABR and DABR
    li r0, 0
    mtiabr r0
    mtdabr r0
	//Restore stack pointer
    lis r1, _db_stack_addr@h
    ori r1, r1, _db_stack_addr@l
    mr r3, r5
    bl InitMetroTRKCommTable //Initialize comm table
	/*
	If InitMetroTRKCommTable returned 1 (failure), an invalid hardware
	id or the id for GDEV was somehow passed. Since only BBA or NDEV
	are supported, we return early. Otherwise, we proceed with
	starting up TRK.
	*/
    cmpwi r3, 1
    bne initCommTableSuccess
	/*
	BUG: The code probably orginally reloaded gTRKCPUState here, but
	as is it will read the returned value of InitMetroTRKCommTable
	as a TRKCPUState struct pointer, causing the CPU to return to
	a garbage code address.
	*/
    lwz r4, TRKCPUState.lr(r3)
    mtlr r4
    lmw r0, TRKCPUState.gprs(r3) //Restore the gprs
    blr
initCommTableSuccess:
    b TRK_main //Jump to TRK_main
    blr
}

asm void InitMetroTRK_BBA(){
    nofralloc
    addi r1, r1, -4
    stw r3, 0(r1)
    lis r3, gTRKCPUState@h
    ori r3, r3, gTRKCPUState@l
    stmw r0, TRKCPUState.gprs(r3) //Save the gprs
    lwz r4, 0(r1)
    addi r1, r1, 4
    stw r1, TRKCPUState.gprs[1](r3)
    stw r4, TRKCPUState.gprs[3](r3)
    mflr r4
    stw r4, TRKCPUState.lr(r3)
    stw r4, TRKCPUState.pc(r3)
    mfcr r4
    stw r4, TRKCPUState.cr(r3)
    mfmsr r4
    ori r3, r4, 0x8000
    mtmsr r3
    mtsrr1 r4
	//Save misc registers to gTRKCPUState
    bl TRKSaveExtended1Block
    lis r3, gTRKCPUState@h
    ori r3, r3, gTRKCPUState@l
    lmw r0, TRKCPUState.gprs(r3) //Restore the gprs
	//Reset IABR and DABR
    li r0, 0
    mtiabr r0
    mtdabr r0
	//Restore the stack pointer
    lis r1, _db_stack_addr@h
    ori r1, r1, _db_stack_addr@l
    li r3, 2
    bl InitMetroTRKCommTable //Initialize comm table as BBA hardware
	/*
	If InitMetroTRKCommTable returned 1 (failure), something went wrong 
	or whatever reason. If everything goes as expected, we proceed with
	starting up TRK.
	*/
    cmpwi r3, 1
    bne initCommTableSuccess
	/*
	BUG: The code probably orginally reloaded gTRKCPUState here, but
	as is it will read the returned value of InitMetroTRKCommTable
	as a TRKCPUState struct pointer, causing the CPU to return to
	a garbage code address.
	*/
    lwz r4, TRKCPUState.lr(r3)
    mtlr r4
    lmw r0, TRKCPUState.gprs(r3)
    blr
initCommTableSuccess:
    b TRK_main //Jump to TRK_main
    blr
}

void EnableMetroTRKInterrupts(){
    EnableEXI2Interrupts();
}

u32 TRKTargetTranslate(u32 r3){
    if(r3 >= lc_base && r3 < lc_base + 0x4000){
        if(gTRKCPUState.dbatl3 & 3) return r3;
    }

    if(r3 < 0x3000000){
        return (r3 & 0x3FFFFFFF) | 0x80000000;
    }

    if(r3 >= 0x10000000 && 0x1C000000 > r3){
        return (r3 & 0x3FFFFFFF) | 0x90000000;
    }
    
    return r3;
}

static void TRK_copy_vector(u32 offset){
    void* destPtr = (void*)TRKTargetTranslate(offset);
    TRK_memcpy(destPtr, (void*)(gTRKInterruptVectorTable + offset), 0x100);
    TRK_flush_cache(destPtr, 0x100);
}

void __TRK_copy_vectors(){
    u32 r3 = lc_base;

    if(r3 <= 0x44 && r3 + 0x4000 > 0x44 && (gTRKCPUState.dbatl3 & 0x3)){
        r3 = 0x44;
    }else{
        r3 = 0x80000044;
    }

    u32* isrOffsetPtr = TRK_ISR_OFFSETS;
    int i = 0;
    u32 r29 = *(u32*)r3;

    do{
        if((r29 & (1 << i)) && i != 4){
            TRK_copy_vector(*isrOffsetPtr);
        }

        i++;
        isrOffsetPtr++;
    }while(i <= 14);
}

DSError TRKInitializeTarget(){
    gTRKState.stopped = TRUE;
    gTRKState.msr = __TRK_get_MSR();
    lc_base = 0xE0000000;
    return kNoError;
}

void __TRKreset(){
	//Looks like the devs forgot to update this lol
    OSResetSystem(0, 0, 0);
}
