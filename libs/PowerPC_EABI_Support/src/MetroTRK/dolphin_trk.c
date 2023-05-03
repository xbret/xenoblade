#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/dolphin_trk.h"
#include "PowerPC_EABI_Support/MetroTRK/__exception.h"
#include "revolution/OS.h"


static u32 TRK_ISR_OFFSETS[16] = {
    0x100,
    0x200,
    0x300,
    0x400,
    0x500,
    0x600,
    0x700,
    0x800,
    0x900,
    0xC00,
    0xD00,
    0xF00,
    0x1300,
    0x1400,
    0x1700,
    0
};

static u32 lc_base;

//u32 r3, u32 r4, u32 r5
asm void InitMetroTRK(){
    nofralloc
    addi r1, r1, -4
    stw r3, 0(r1)
    lis r3, gTRKCPUState@h
    ori r3,r3, gTRKCPUState@l
    stmw r0, 0(r3)
    lwz r4, 0(r1)
    addi r1, r1, 4
    stw r1, 0x4(r3)
    stw r4, 0xc(r3)
    mflr r4
    stw r4, 0x84(r3)
    stw r4, 0x80(r3)
    mfcr r4
    stw r4, 0x88(r3)
    mfmsr r4
    ori r3, r4, 0x8000
    xori r3, r3, 0x8000
    mtmsr r3
    mtsrr1 r4
    bl TRKSaveExtended1Block
    lis r3, gTRKCPUState@h
    ori r3, r3, gTRKCPUState@l
    lmw r0, 0(r3)
    li r0,0
    mtiabr r0
    mtdabr r0
    lis r1, _db_stack_addr@h
    ori r1, r1, _db_stack_addr@l
    mr r3,r5
    bl InitMetroTRKCommTable
    cmpwi r3,1
    bne L_802CBF90
    lwz r4, 0x84(r3)
    mtlr r4
    lmw r0, 0(r3)
    blr
L_802CBF90:
    b TRK_main
    blr
}

//u32 r3, u32 r4, u32 r5
asm void InitMetroTRK_BBA(){
    nofralloc
    addi r1, r1, -4
    stw r3, 0(r1)
    lis r3, gTRKCPUState@h
    ori r3, r3, gTRKCPUState@l
    stmw r0, 0(r3)
    lwz r4, 0(r1)
    addi r1, r1, 4
    stw r1, 4(r3)
    stw r4, 0xc(r3)
    mflr r4
    stw r4, 0x84(r3)
    stw r4, 0x80(r3)
    mfcr r4
    stw r4, 0x88(r3)
    mfmsr r4
    ori r3, r4, 0x8000
    mtmsr r3
    mtsrr1 r4
    bl TRKSaveExtended1Block
    lis r3, gTRKCPUState@h
    ori r3, r3, gTRKCPUState@l
    lmw r0, 0(r3)
    li r0, 0
    mtiabr r0
    mtdabr r0
    lis r1, _db_stack_addr@h
    ori r1, r1, _db_stack_addr@l
    li r3, 2
    bl InitMetroTRKCommTable
    cmpwi r3, 1
    bne L_802CC024
    lwz r4, 0x84(r3)
    mtlr r4
    lmw r0, 0(r3)
    blr
L_802CC024:
    b TRK_main
    blr
}

void EnableMetroTRKInterrupts(){
    EnableEXI2Interrupts();
}

u32 TRKTargetTranslate(u32 r3){
    if(r3 >= lc_base && r3 < lc_base + 0x4000){
        if(gTRKCPUState.unk238 & 3) return r3;
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

    if(r3 <= 0x44 && r3 + 0x4000 > 0x44 && (gTRKCPUState.unk238 & 0x3)){
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

TRKResult TRKInitializeTarget(){
    gTRKState.mIsStopped = TRUE;
    gTRKState.unk8C = __TRK_get_MSR();
    lc_base = 0xE0000000;
    return TRKSuccess;
}

void __TRKreset(){
    OSResetSystem(0, 0, 0);
}
