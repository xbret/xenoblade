#include "PowerPC_EABI_Support/MetroTRK/trk.h"
#include "PowerPC_EABI_Support/MetroTRK/targimpl.h"

asm void TRKSaveExtended1Block(){
    lis r2, gTRKCPUState@h
    ori r2, r2, gTRKCPUState@l
    mfsr r16, 0
    mfsr r17, 1
    mfsr r18, 2
    mfsr r19, 3
    mfsr r20, 4
    mfsr r21, 5
    mfsr r22, 6
    mfsr r23, 7
    mfsr r24, 8
    mfsr r25, 9
    mfsr r26, 0xa
    mfsr r27, 0xb
    mfsr r28, 0xc
    mfsr r29, 0xd
    mfsr r30, 0xe
    mfsr r31, 0xf
    stmw r16, 0x1a8(r2)
    mftb r27
    mftbu r28
    mfhid0 r29
    mfhid1 r30
    mfsrr1 r31
    stmw r27, 0x1e8(r2)
    mfpvr r15
    mfibatu r16, 0
    mfibatl r17, 0
    mfibatu r18, 1
    mfibatl r19, 1
    mfibatu r20, 2
    mfibatl r21, 2
    mfibatu r22, 3
    mfibatl r23, 3
    mfdbatu r24, 0
    mfdbatl r25, 0
    mfdbatu r26, 1
    mfdbatl r27, 1
    mfdbatu r28, 2
    mfdbatl r29, 2
    mfdbatu r30, 3
    mfdbatl r31, 3
    stmw r15, 0x1fc(r2)
    mfspr r24, IBAT4U
    mfspr r25, IBAT4L
    mfspr r26, IBAT5U
    mfspr r27, IBAT5L
    mfspr r28, IBAT6U
    mfspr r29, IBAT6L
    mfspr r30, IBAT7U
    mfspr r31, IBAT7L
    stmw r24, 0x240(r2)
    mfsdr1 r22
    mfdar r23
    mfdsisr r24
    mfsprg0 r25
    mfsprg1 r26
    mfsprg2 r27
    mfsprg3 r28
    mfdec r29
    mfiabr r30
    mfear r31
    stmw r22, 0x25c(r2)
    mfdabr r24
    mfpmc1 r25
    mfpmc2 r26
    mfpmc3 r27
    mfpmc4 r28
    mfsia r29
    mfmmcr0 r30
    mfmmcr1 r31
    stmw r24, 0x284(r2)
    mfspr r29, IBAT7L
    mfspr r30, DBAT4U
    mfspr r31, DBAT4L
    stmw r29, 0x2a4(r2)
    mfictc r30
    mfl2cr r31
    stmw r30, 0x2b0(r2)
    mfsrr0 r16
    stw r16, 0x2b8(r2)
    mfspr r17, DBAT5U
    stw r17, 0x2bc(r2)
    mfummcr0 r25
    mfupmc1 r26
    mfupmc2 r27
    mfusia r28
    mfummcr1 r29
    mfupmc3 r30
    mfupmc4 r31
    stmw r25, 0x2c0(r2)
    mfspr r25, DBAT5L
    mfspr r26, DBAT6U
    mfspr r27, DBAT6L
    mfspr r28, DBAT7U
    mfspr r29, DBAT7L
    mfspr r30, 0x398 //HID2
    mfspr r31, 0x3f3 //HID4
    stmw r25, 0x2dc(r2)
    mfgqr0 r20
    mfgqr1 r21
    mfgqr2 r22
    mfgqr3 r23
    mfgqr4 r24
    mfgqr5 r25
    mfgqr6 r26
    mfgqr7 r27
    mfspr r28, 0x398 //HID2
    mfwpar r29
    mfspr r30, DMA_U
    mfspr r31, DMA_L
    stmw r20, 0x2fc(r2)
    blr 
}

asm void TRKRestoreExtended1Block(){
    lis r2, gTRKCPUState@h
    ori r2, r2, gTRKCPUState@l
    lis r5, gTRKRestoreFlags@h
    ori r5, r5, gTRKRestoreFlags@l
    lbz r3, 0(r5)
    lbz r6, 1(r5)
    li r0, 0
    stb r0, 0(r5)
    stb r0, 1(r5)
    cmpwi r3, 0
    beq L_802CD2F8
    lwz r24, 0x1e8(r2)
    lwz r25, 0x1ec(r2)
    mttbl r24
    mttbu r25
L_802CD2F8:
    lmw r20, 0x2fc(r2)
    mtgqr0 r20
    mtgqr1 r21
    mtgqr2 r22
    mtgqr3 r23
    mtgqr4 r24
    mtgqr5 r25
    mtgqr6 r26
    mtgqr7 r27
    mtspr 0x398, r28 //HID2
    mtspr DMA_U, r30
    mtspr DMA_L, r31
    b L_802CD32C
L_802CD32C:
    lmw r19, 0x284(r2)
    mtdabr r19
    mtpmc1 r20
    mtpmc2 r21
    mtpmc3 r22
    mtpmc4 r23
    mtsia r24
    mtmmcr0 r25
    mtmmcr1 r26
    mtictc r30
    mtl2cr r31
    b L_802CD35C
L_802CD35C:
    lmw r16, 0x1a8(r2)
    mtsr 0, r16
    mtsr 1, r17
    mtsr 2, r18
    mtsr 3, r19
    mtsr 4, r20
    mtsr 5, r21
    mtsr 6, r22
    mtsr 7, r23
    mtsr 8, r24
    mtsr 9, r25
    mtsr 0xa, r26
    mtsr 0xb, r27
    mtsr 0xc, r28
    mtsr 0xd, r29
    mtsr 0xe, r30
    mtsr 0xf, r31
    lmw r12, 0x1f0(r2)
    mthid0 r12
    mthid1 r13
    mtsrr1 r14
    mtpvr r15
    mtibatu 0, r16
    mtibatl 0, r17
    mtibatu 1, r18
    mtibatl 1, r19
    mtibatu 2, r20
    mtibatl 2, r21
    mtibatu 3, r22
    mtibatl 3, r23
    mtdbatu 0, r24
    mtdbatl 0, r25
    mtdbatu 1, r26
    mtdbatl 1, r27
    mtdbatu 2, r28
    mtdbatl 2, r29
    mtdbatu 3, r30
    mtdbatl 3, r31
    lmw r22, 0x25c(r2)
    mtsdr1 r22
    mtdar r23
    mtdsisr r24
    mtsprg 0, r25
    mtsprg 1, r26
    mtsprg 2, r27
    mtsprg 3, r28
    mtiabr r30
    mtear r31
    blr
}
