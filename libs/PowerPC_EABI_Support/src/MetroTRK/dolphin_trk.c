#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/mem_TRK.h"
#include "PowerPC_EABI_Support/MetroTRK/dolphin_trk.h"
#include "PowerPC_EABI_Support/MetroTRK/dolphin_trk_glue.h"
#include "PowerPC_EABI_Support/MetroTRK/__exception.h"
#include "PowerPC_EABI_Support/MetroTRK/mpc_7xx_603e.h"
#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Generic/ppc_targimpl.h"
#include "PowerPC_EABI_Support/MetroTRK/main_TRK.h"
#include "PowerPC_EABI_Support/MetroTRK/rvl_mem.h"

#define EXCEPTION_SIZE  0x100
#define NUM_EXCEPTIONS  15

static ui32 TRK_ISR_OFFSETS[NUM_EXCEPTIONS] = {
    PPC_SYSTEMRESET,
    PPC_MACHINECHECK,
    PPC_DATAACCESSERROR,
    PPC_INSTACCESSERROR,
    PPC_EXTERNALINTERRUPT,
    PPC_ALIGNMENTERROR,
    PPC_PROGRAMERROR,
    PPC_FPUNAVAILABLE,
    PPC_DECREMENTERINTERRUPT,
    PPC_SYSTEMCALL,
    PPC_TRACE,
    PPC_PERFORMANCE_MONITOR,
    PPC7xx_603E_INSTR_ADDR_BREAK,
    PPC7xx_603E_SYS_MANAGE,
    PPC_THERMAL_MANAGE
};

static ui32* lc_base;

//r5: hardware id
asm void InitMetroTRK(){
    nofralloc
    addi r1, r1, -4
    stw r3, 0(r1)
    lis r3, gTRKCPUState@h
    ori r3, r3, gTRKCPUState@l
    stmw r0, ProcessorState_PPC.Default.GPR(r3) //Save the gprs
    lwz r4, 0(r1)
    addi r1, r1, 4
    stw r1, ProcessorState_PPC.Default.GPR[1](r3)
    stw r4, ProcessorState_PPC.Default.GPR[3](r3)
    mflr r4
    stw r4, ProcessorState_PPC.Default.LR(r3)
    stw r4, ProcessorState_PPC.Default.PC(r3)
    mfcr r4
    stw r4, ProcessorState_PPC.Default.CR(r3)
	//???
    mfmsr r4
    ori r3, r4, MSR_EE
    xori r3, r3, MSR_EE
    mtmsr r3
    mtsrr1 r4 //Copy msr to srr1
	//Save misc registers to gTRKCPUState
    bl TRKSaveExtended1Block
    lis r3, gTRKCPUState@h
    ori r3, r3, gTRKCPUState@l
    lmw r0, ProcessorState_PPC.Default.GPR(r3) //Restore the gprs
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
    lwz r4, ProcessorState_PPC.Default.LR(r3)
    mtlr r4
    lmw r0, ProcessorState_PPC.Default.GPR(r3) //Restore the gprs
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
    stmw r0, ProcessorState_PPC.Default.GPR(r3) //Save the gprs
    lwz r4, 0(r1)
    addi r1, r1, 4
    stw r1, ProcessorState_PPC.Default.GPR[1](r3)
    stw r4, ProcessorState_PPC.Default.GPR[3](r3)
    mflr r4
    stw r4, ProcessorState_PPC.Default.LR(r3)
    stw r4, ProcessorState_PPC.Default.PC(r3)
    mfcr r4
    stw r4, ProcessorState_PPC.Default.CR(r3)
	//Turn on external interrupts
    mfmsr r4
    ori r3, r4, MSR_EE
    mtmsr r3
    mtsrr1 r4 //Copy original msr to srr1
	//Save misc registers to gTRKCPUState
    bl TRKSaveExtended1Block
    lis r3, gTRKCPUState@h
    ori r3, r3, gTRKCPUState@l
    lmw r0, ProcessorState_PPC.Default.GPR(r3) //Restore the gprs
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
    lwz r4, ProcessorState_PPC.Default.LR(r3)
    mtlr r4
    lmw r0, ProcessorState_PPC.Default.GPR(r3)
    blr
initCommTableSuccess:
    b TRK_main //Jump to TRK_main
    blr
}

void EnableMetroTRKInterrupts(){
    EnableEXI2Interrupts();
}

void* TRKTargetTranslate(ui32* addr){
	if(addr >= lc_base && addr < &lc_base[0x1000]){
        if(gTRKCPUState.Extended1.DBAT2L & 3) return addr;
    }

    if((ui32)addr < 0x3000000){
        return (void*)(((ui32)addr & 0x3FFFFFFF) | BOOTINFO);
    }

    if((ui32)addr >= 0x10000000 && 0x1C000000 > (ui32)addr){
        return (void*)(((ui32)addr & 0x3FFFFFFF) | MEM2_CACHED);
    }
    
    return addr;
}

static void TRK_copy_vector(ui32 offset){
    void* destPtr = (void*)TRKTargetTranslate((ui32*)offset);
    TRK_memcpy(destPtr, (void*)(gTRKInterruptVectorTable + offset), EXCEPTION_SIZE);
    TRK_flush_cache(destPtr, EXCEPTION_SIZE);
}

void __TRK_copy_vectors(){
    ui32* data_ptr;
	ui32* isrOffsetPtr;
	int i;
	ui32 data;

    if((ui32)lc_base <= DB_EXCEPTION_MASK && (ui32)&lc_base[0x1000] > DB_EXCEPTION_MASK && gTRKCPUState.Extended1.DBAT2L & 0x3){
        data_ptr = (ui32*)DB_EXCEPTION_MASK;
    }else{
        data_ptr = (ui32*)(BOOTINFO + DB_EXCEPTION_MASK);
    }

    isrOffsetPtr = TRK_ISR_OFFSETS;
    i = 0;
	data = *data_ptr;

    do{
        if((data & (1 << i)) != 0 && i != 4){
            TRK_copy_vector(*isrOffsetPtr);
        }

        i++;
        isrOffsetPtr++;
    }while(i <= 14);
}

DSError TRKInitializeTarget(){
    gTRKState.stopped = true;
    gTRKState.MSR = __TRK_get_MSR();
    lc_base = (ui32*)0xE0000000;
    return kNoError;
}

void __TRKreset(){
	//Looks like the devs forgot to update this lol
    OSResetSystem(false, 0, false);
}
