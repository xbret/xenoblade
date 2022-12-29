.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.global CfCamDirectionIntf_update
CfCamDirectionIntf_update:
/* 8006B3EC 000349AC  4E 80 00 20 */	blr 

.global CfCamDirectionIntf_setPos
CfCamDirectionIntf_setPos:
/* 8006B3F0 000349B0  80 C5 00 00 */	lwz r6, 0(r5)
/* 8006B3F4 000349B4  80 65 00 04 */	lwz r3, 4(r5)
/* 8006B3F8 000349B8  80 05 00 08 */	lwz r0, 8(r5)
/* 8006B3FC 000349BC  90 C4 00 28 */	stw r6, 0x28(r4)
/* 8006B400 000349C0  90 64 00 2C */	stw r3, 0x2c(r4)
/* 8006B404 000349C4  90 04 00 30 */	stw r0, 0x30(r4)
/* 8006B408 000349C8  90 C4 02 74 */	stw r6, 0x274(r4)
/* 8006B40C 000349CC  90 64 02 78 */	stw r3, 0x278(r4)
/* 8006B410 000349D0  90 04 02 7C */	stw r0, 0x27c(r4)
/* 8006B414 000349D4  4E 80 00 20 */	blr 

.global CfCamDirectionIntf_setDir
CfCamDirectionIntf_setDir:
/* 8006B418 000349D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8006B41C 000349DC  7C 08 02 A6 */	mflr r0
/* 8006B420 000349E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006B424 000349E4  38 61 00 08 */	addi r3, r1, 8
/* 8006B428 000349E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8006B42C 000349EC  7C BF 2B 78 */	mr r31, r5
/* 8006B430 000349F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8006B434 000349F4  7C 9E 23 78 */	mr r30, r4
/* 8006B438 000349F8  C0 24 02 84 */	lfs f1, 0x284(r4)
/* 8006B43C 000349FC  38 84 02 74 */	addi r4, r4, 0x274
/* 8006B440 00034A00  48 00 94 C1 */	bl func_80074900
/* 8006B444 00034A04  80 61 00 08 */	lwz r3, 8(r1)
/* 8006B448 00034A08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8006B44C 00034A0C  90 1E 02 6C */	stw r0, 0x26c(r30)
/* 8006B450 00034A10  90 7E 02 68 */	stw r3, 0x268(r30)
/* 8006B454 00034A14  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8006B458 00034A18  90 1E 02 70 */	stw r0, 0x270(r30)
/* 8006B45C 00034A1C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8006B460 00034A20  80 1F 00 04 */	lwz r0, 4(r31)
/* 8006B464 00034A24  90 1E 02 60 */	stw r0, 0x260(r30)
/* 8006B468 00034A28  90 7E 02 5C */	stw r3, 0x25c(r30)
/* 8006B46C 00034A2C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8006B470 00034A30  90 1E 02 64 */	stw r0, 0x264(r30)
/* 8006B474 00034A34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8006B478 00034A38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8006B47C 00034A3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006B480 00034A40  7C 08 03 A6 */	mtlr r0
/* 8006B484 00034A44  38 21 00 20 */	addi r1, r1, 0x20
/* 8006B488 00034A48  4E 80 00 20 */	blr 

.global CfCamDirectionIntf_setLookat
CfCamDirectionIntf_setLookat:
/* 8006B48C 00034A4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8006B490 00034A50  7C 08 02 A6 */	mflr r0
/* 8006B494 00034A54  38 64 02 74 */	addi r3, r4, 0x274
/* 8006B498 00034A58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8006B49C 00034A5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8006B4A0 00034A60  7C BF 2B 78 */	mr r31, r5
/* 8006B4A4 00034A64  38 A1 00 08 */	addi r5, r1, 8
/* 8006B4A8 00034A68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8006B4AC 00034A6C  7C 9E 23 78 */	mr r30, r4
/* 8006B4B0 00034A70  38 84 02 68 */	addi r4, r4, 0x268
/* 8006B4B4 00034A74  48 00 94 F9 */	bl func_800749AC
/* 8006B4B8 00034A78  C0 02 87 70 */	lfs f0, lbl_80668AF0@sda21(r2)
/* 8006B4BC 00034A7C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8006B4C0 00034A80  80 9F 00 00 */	lwz r4, 0(r31)
/* 8006B4C4 00034A84  80 7F 00 04 */	lwz r3, 4(r31)
/* 8006B4C8 00034A88  80 1F 00 08 */	lwz r0, 8(r31)
/* 8006B4CC 00034A8C  90 9E 02 68 */	stw r4, 0x268(r30)
/* 8006B4D0 00034A90  90 7E 02 6C */	stw r3, 0x26c(r30)
/* 8006B4D4 00034A94  90 1E 02 70 */	stw r0, 0x270(r30)
/* 8006B4D8 00034A98  80 61 00 08 */	lwz r3, 8(r1)
/* 8006B4DC 00034A9C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8006B4E0 00034AA0  90 1E 02 60 */	stw r0, 0x260(r30)
/* 8006B4E4 00034AA4  90 7E 02 5C */	stw r3, 0x25c(r30)
/* 8006B4E8 00034AA8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8006B4EC 00034AAC  90 1E 02 64 */	stw r0, 0x264(r30)
/* 8006B4F0 00034AB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8006B4F4 00034AB4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8006B4F8 00034AB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8006B4FC 00034ABC  7C 08 03 A6 */	mtlr r0
/* 8006B500 00034AC0  38 21 00 20 */	addi r1, r1, 0x20
/* 8006B504 00034AC4  4E 80 00 20 */	blr 

.section extab, "wa"  # 0x800066E0 - 0x80021020

.global lbl_80008088
lbl_80008088:
	.4byte 0x100A0000
	.4byte 0

.global lbl_80008090
lbl_80008090:
	.4byte 0x100A0000
	.4byte 0


.section extabindex_, "wa"  # 0x80021020 - 0x80039220

	.4byte CfCamDirectionIntf_setDir
	.4byte 0x00000074
	.4byte lbl_80008088
	.4byte CfCamDirectionIntf_setLookat
	.4byte 0x0000007C
	.4byte lbl_80008090
