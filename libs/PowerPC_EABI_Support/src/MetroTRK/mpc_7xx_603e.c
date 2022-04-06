#include "PowerPC_EABI_Support/MetroTRK/Processor/ppc/Generic/ppc_targimpl.h"

asm void TRKSaveExtended1Block(){
	nofralloc
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
    stmw r16, ProcessorState_PPC.Extended1.SR[0](r2)

    mftb r27, TBR_TBL_READ
    mftb r28, TBR_TBU_READ
    mfspr r29, SPR_HID0
    mfspr r30, SPR_HID1
    mfspr r31, SPR_SRR1
    stmw r27, ProcessorState_PPC.Extended1.TBL(r2)

    mfspr r15, SPR_PVR
    mfspr r16, SPR_IBAT0U
    mfspr r17, SPR_IBAT0L
    mfspr r18, SPR_IBAT1U
    mfspr r19, SPR_IBAT1L
    mfspr r20, SPR_IBAT2U
    mfspr r21, SPR_IBAT2L
    mfspr r22, SPR_IBAT3U
    mfspr r23, SPR_IBAT3L
    mfspr r24, SPR_DBAT0U
    mfspr r25, SPR_DBAT0L
    mfspr r26, SPR_DBAT1U
    mfspr r27, SPR_DBAT1L
    mfspr r28, SPR_DBAT2U
    mfspr r29, SPR_DBAT2L
    mfspr r30, SPR_DBAT3U
    mfspr r31, SPR_DBAT3L
    stmw r15, ProcessorState_PPC.Extended1.PVR(r2)

    mfspr r24, SPR_IBAT4U
    mfspr r25, SPR_IBAT4L
    mfspr r26, SPR_IBAT5U
    mfspr r27, SPR_IBAT5L
    mfspr r28, SPR_IBAT6U
    mfspr r29, SPR_IBAT6L
    mfspr r30, SPR_IBAT7U
    mfspr r31, SPR_IBAT7L
    stmw r24, ProcessorState_PPC.Extended1.IBAT4U(r2)

    mfspr r22, SPR_SDR1
    mfspr r23, SPR_DAR
    mfspr r24, SPR_DSISR
    mfspr r25, SPR_SPRG0
    mfspr r26, SPR_SPRG1
    mfspr r27, SPR_SPRG2
    mfspr r28, SPR_SPRG3
    mfspr r29, SPR_DEC
    mfspr r30, SPR_IABR
    mfspr r31, SPR_EAR
    stmw r22, ProcessorState_PPC.Extended1.SDR1(r2)

    mfspr r24, SPR_DABR
    mfspr r25, SPR_PMC1
    mfspr r26, SPR_PMC2
    mfspr r27, SPR_PMC3
    mfspr r28, SPR_PMC4
    mfspr r29, SPR_SIA
    mfspr r30, SPR_MMCR0
    mfspr r31, SPR_MMCR1
    stmw r24, ProcessorState_PPC.Extended1.DABR(r2)

    mfspr r29, SPR_IBAT7L
    mfspr r30, SPR_DBAT4U
    mfspr r31, SPR_DBAT4L
    stmw r29, ProcessorState_PPC.Extended1.IBAT7L(r2)

    mfspr r30, SPR_ICTC
    mfspr r31, SPR_L2CR
    stmw r30, ProcessorState_PPC.Extended1.ICTC(r2)

    mfspr r16, SPR_SRR0
    stw r16, ProcessorState_PPC.Extended1.SRR0(r2)

    mfspr r17, SPR_DBAT5U
    stw r17, ProcessorState_PPC.Extended1.DBAT5U(r2)

    mfspr r25, SPR_UMMCR0
    mfspr r26, SPR_UPMC1
    mfspr r27, SPR_UPMC2
    mfspr r28, SPR_USIA
    mfspr r29, SPR_UMMCR1
    mfspr r30, SPR_UPMC3
    mfspr r31, SPR_UPMC4
    stmw r25, ProcessorState_PPC.Extended1.UMMCR0(r2)

    mfspr r25, SPR_DBAT5L
    mfspr r26, SPR_DBAT6U
    mfspr r27, SPR_DBAT6L
    mfspr r28, SPR_DBAT7U
    mfspr r29, SPR_DBAT7L
    mfspr r30, SPR_HID2
    mfspr r31, SPR_HID4
    stmw r25, ProcessorState_PPC.Extended1.DBAT5L(r2)

    mfspr r20, SPR_GQR0
    mfspr r21, SPR_GQR1
    mfspr r22, SPR_GQR2
    mfspr r23, SPR_GQR3
    mfspr r24, SPR_GQR4
    mfspr r25, SPR_GQR5
    mfspr r26, SPR_GQR6
    mfspr r27, SPR_GQR7
    mfspr r28, SPR_HID2
    mfspr r29, SPR_WPAR
    mfspr r30, SPR_DMAU
    mfspr r31, SPR_DMAL
    stmw r20, ProcessorState_PPC.Extended1.GQR(r2)
    blr 
}

asm void TRKRestoreExtended1Block(){
	nofralloc
    lis r2, gTRKCPUState@h
    ori r2, r2, gTRKCPUState@l

    lis r5, gTRKRestoreFlags@h
    ori r5, r5, gTRKRestoreFlags@l
    lbz r3, ProcessorRestoreFlags_PPC.TBR(r5)
    lbz r6, ProcessorRestoreFlags_PPC.DEC(r5)

    li r0, 0
    stb r0, ProcessorRestoreFlags_PPC.TBR(r5)
    stb r0, ProcessorRestoreFlags_PPC.DEC(r5)
    cmpwi r3, 0
    beq no_tbr_restore

    lwz r24, ProcessorState_PPC.Extended1.TBL(r2)
    lwz r25, ProcessorState_PPC.Extended1.TBU(r2)
    mtspr TBR_TBL_WRITE, r24
    mtspr TBR_TBU_WRITE, r25

no_tbr_restore:
    lmw r20, ProcessorState_PPC.Extended1.GQR(r2)
    mtspr SPR_GQR0, r20
    mtspr SPR_GQR1, r21
    mtspr SPR_GQR2, r22
    mtspr SPR_GQR3, r23
    mtspr SPR_GQR4, r24
    mtspr SPR_GQR5, r25
    mtspr SPR_GQR6, r26
    mtspr SPR_GQR7, r27
    mtspr SPR_HID2, r28
    mtspr SPR_DMAU, r30
    mtspr SPR_DMAL, r31
    b __603e_specific_restore
	//Stubbed code only present in Wii MetroTRK v0.1
__603e_specific_restore:
    lmw r19, ProcessorState_PPC.Extended1.DABR(r2)
    mtspr SPR_DABR, r19
    mtspr SPR_PMC1, r20
    mtspr SPR_PMC2, r21
    mtspr SPR_PMC3, r22
    mtspr SPR_PMC4, r23
    mtspr SPR_SIA, r24
    mtspr SPR_MMCR0, r25
    mtspr SPR_MMCR1, r26
    mtspr SPR_ICTC, r30
    mtspr SPR_L2CR, r31
    b __end_specific_restore
	//Stubbed code only present in Wii MetroTRK v0.1
__end_specific_restore:
    lmw r16, ProcessorState_PPC.Extended1.SR[0](r2)
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

    lmw r12, ProcessorState_PPC.Extended1.HID0(r2)
    mtspr SPR_HID0, r12
    mtspr SPR_HID1, r13
    mtspr SPR_SRR1, r14
    mtspr SPR_PVR, r15
    mtspr SPR_IBAT0U, r16
    mtspr SPR_IBAT0L, r17
    mtspr SPR_IBAT1U, r18
    mtspr SPR_IBAT1L, r19
    mtspr SPR_IBAT2U, r20
    mtspr SPR_IBAT2L, r21
    mtspr SPR_IBAT3U, r22
    mtspr SPR_IBAT3L, r23
    mtspr SPR_DBAT0U, r24
    mtspr SPR_DBAT0L, r25
    mtspr SPR_DBAT1U, r26
    mtspr SPR_DBAT1L, r27
    mtspr SPR_DBAT2U, r28
    mtspr SPR_DBAT2L, r29
    mtspr SPR_DBAT3U, r30
    mtspr SPR_DBAT3L, r31

    lmw r22, ProcessorState_PPC.Extended1.SDR1(r2)
    mtspr SPR_SDR1, r22
    mtspr SPR_DAR, r23
    mtspr SPR_DSISR, r24
    mtspr SPR_SPRG0, r25
    mtspr SPR_SPRG1, r26
    mtspr SPR_SPRG2, r27
    mtspr SPR_SPRG3, r28
	
    mtspr SPR_IABR, r30
    mtspr SPR_EAR, r31
    blr
}
