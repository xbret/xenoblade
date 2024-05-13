.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CScrollBar, global
/* 801F3410 001BC9D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F3414 001BC9D4  7C 08 02 A6 */	mflr r0
/* 801F3418 001BC9D8  3C A0 80 54 */	lis r5, __vt__10CScrollBar@ha
/* 801F341C 001BC9DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F3420 001BC9E0  38 A5 85 90 */	addi r5, r5, __vt__10CScrollBar@l
/* 801F3424 001BC9E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F3428 001BC9E8  7C 9F 23 78 */	mr r31, r4
/* 801F342C 001BC9EC  93 C1 00 08 */	stw r30, 8(r1)
/* 801F3430 001BC9F0  7C 7E 1B 78 */	mr r30, r3
/* 801F3434 001BC9F4  90 A3 00 00 */	stw r5, 0(r3)
/* 801F3438 001BC9F8  38 63 00 04 */	addi r3, r3, 4
/* 801F343C 001BC9FC  48 26 C1 29 */	bl __ct__UnkClass_8045F564
/* 801F3440 001BCA00  C0 02 A6 78 */	lfs f0, float_8066A9F8@sda21(r2)
/* 801F3444 001BCA04  38 80 00 00 */	li r4, 0
/* 801F3448 001BCA08  38 00 00 01 */	li r0, 1
/* 801F344C 001BCA0C  90 9E 00 14 */	stw r4, 0x14(r30)
/* 801F3450 001BCA10  7F C3 F3 78 */	mr r3, r30
/* 801F3454 001BCA14  90 9E 00 18 */	stw r4, 0x18(r30)
/* 801F3458 001BCA18  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 801F345C 001BCA1C  90 9E 00 20 */	stw r4, 0x20(r30)
/* 801F3460 001BCA20  98 9E 00 24 */	stb r4, 0x24(r30)
/* 801F3464 001BCA24  98 9E 00 25 */	stb r4, 0x25(r30)
/* 801F3468 001BCA28  98 9E 00 26 */	stb r4, 0x26(r30)
/* 801F346C 001BCA2C  98 1E 00 27 */	stb r0, 0x27(r30)
/* 801F3470 001BCA30  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 801F3474 001BCA34  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 801F3478 001BCA38  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 801F347C 001BCA3C  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 801F3480 001BCA40  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 801F3484 001BCA44  9B FE 00 3C */	stb r31, 0x3c(r30)
/* 801F3488 001BCA48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F348C 001BCA4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F3490 001BCA50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F3494 001BCA54  7C 08 03 A6 */	mtlr r0
/* 801F3498 001BCA58  38 21 00 10 */	addi r1, r1, 0x10
/* 801F349C 001BCA5C  4E 80 00 20 */	blr 
.endfn __ct__CScrollBar

.fn __dt__CScrollBar, global
/* 801F34A0 001BCA60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F34A4 001BCA64  7C 08 02 A6 */	mflr r0
/* 801F34A8 001BCA68  2C 03 00 00 */	cmpwi r3, 0
/* 801F34AC 001BCA6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F34B0 001BCA70  BF C1 00 08 */	stmw r30, 8(r1)
/* 801F34B4 001BCA74  7C 7E 1B 78 */	mr r30, r3
/* 801F34B8 001BCA78  7C 9F 23 78 */	mr r31, r4
/* 801F34BC 001BCA7C  41 82 00 20 */	beq .L_801F34DC
/* 801F34C0 001BCA80  38 80 FF FF */	li r4, -1
/* 801F34C4 001BCA84  38 63 00 04 */	addi r3, r3, 4
/* 801F34C8 001BCA88  48 26 C0 B9 */	bl __dt__UnkClass_8045F564
/* 801F34CC 001BCA8C  2C 1F 00 00 */	cmpwi r31, 0
/* 801F34D0 001BCA90  40 81 00 0C */	ble .L_801F34DC
/* 801F34D4 001BCA94  7F C3 F3 78 */	mr r3, r30
/* 801F34D8 001BCA98  48 24 17 55 */	bl __dl__FPv
.L_801F34DC:
/* 801F34DC 001BCA9C  7F C3 F3 78 */	mr r3, r30
/* 801F34E0 001BCAA0  BB C1 00 08 */	lmw r30, 8(r1)
/* 801F34E4 001BCAA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F34E8 001BCAA8  7C 08 03 A6 */	mtlr r0
/* 801F34EC 001BCAAC  38 21 00 10 */	addi r1, r1, 0x10
/* 801F34F0 001BCAB0  4E 80 00 20 */	blr 
.endfn __dt__CScrollBar

.fn func_801F34F4, global
/* 801F34F4 001BCAB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F34F8 001BCAB8  7C 08 02 A6 */	mflr r0
/* 801F34FC 001BCABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F3500 001BCAC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F3504 001BCAC4  7C 7F 1B 78 */	mr r31, r3
/* 801F3508 001BCAC8  48 24 0E 99 */	bl Heap_getRegionIndex2
/* 801F350C 001BCACC  3C 80 80 50 */	lis r4, CScrollBar_strpool@ha
/* 801F3510 001BCAD0  7F E5 FB 78 */	mr r5, r31
/* 801F3514 001BCAD4  38 84 31 A4 */	addi r4, r4, CScrollBar_strpool@l
/* 801F3518 001BCAD8  38 C0 00 00 */	li r6, 0
/* 801F351C 001BCADC  38 E0 00 00 */	li r7, 0
/* 801F3520 001BCAE0  48 25 B2 75 */	bl CDeviceFile_openFile1
/* 801F3524 001BCAE4  90 7F 00 14 */	stw r3, 0x14(r31)
/* 801F3528 001BCAE8  48 25 BE DD */	bl func_8044F404
/* 801F352C 001BCAEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F3530 001BCAF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F3534 001BCAF4  7C 08 03 A6 */	mtlr r0
/* 801F3538 001BCAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 801F353C 001BCAFC  4E 80 00 20 */	blr 
.endfn func_801F34F4

.fn func_801F3540, global
/* 801F3540 001BCB00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F3544 001BCB04  7C 08 02 A6 */	mflr r0
/* 801F3548 001BCB08  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F354C 001BCB0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F3550 001BCB10  7C 7F 1B 78 */	mr r31, r3
/* 801F3554 001BCB14  88 03 00 24 */	lbz r0, 0x24(r3)
/* 801F3558 001BCB18  2C 00 00 00 */	cmpwi r0, 0
/* 801F355C 001BCB1C  41 82 00 40 */	beq .L_801F359C
/* 801F3560 001BCB20  88 03 00 26 */	lbz r0, 0x26(r3)
/* 801F3564 001BCB24  2C 00 00 01 */	cmpwi r0, 1
/* 801F3568 001BCB28  41 82 00 10 */	beq .L_801F3578
/* 801F356C 001BCB2C  2C 00 00 03 */	cmpwi r0, 3
/* 801F3570 001BCB30  41 82 00 10 */	beq .L_801F3580
/* 801F3574 001BCB34  48 00 00 10 */	b .L_801F3584
.L_801F3578:
/* 801F3578 001BCB38  48 00 03 85 */	bl func_801F38FC
/* 801F357C 001BCB3C  48 00 00 08 */	b .L_801F3584
.L_801F3580:
/* 801F3580 001BCB40  48 00 03 E1 */	bl func_801F3960
.L_801F3584:
/* 801F3584 001BCB44  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F3588 001BCB48  38 80 00 00 */	li r4, 0
/* 801F358C 001BCB4C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F3590 001BCB50  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801F3594 001BCB54  7D 89 03 A6 */	mtctr r12
/* 801F3598 001BCB58  4E 80 04 21 */	bctrl 
.L_801F359C:
/* 801F359C 001BCB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F35A0 001BCB60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F35A4 001BCB64  7C 08 03 A6 */	mtlr r0
/* 801F35A8 001BCB68  38 21 00 10 */	addi r1, r1, 0x10
/* 801F35AC 001BCB6C  4E 80 00 20 */	blr 
.endfn func_801F3540

.fn func_801F35B0, global
/* 801F35B0 001BCB70  88 03 00 24 */	lbz r0, 0x24(r3)
/* 801F35B4 001BCB74  2C 00 00 00 */	cmpwi r0, 0
/* 801F35B8 001BCB78  4D 82 00 20 */	beqlr 
/* 801F35BC 001BCB7C  88 03 00 26 */	lbz r0, 0x26(r3)
/* 801F35C0 001BCB80  2C 00 00 00 */	cmpwi r0, 0
/* 801F35C4 001BCB84  4D 82 00 20 */	beqlr 
/* 801F35C8 001BCB88  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801F35CC 001BCB8C  38 A0 00 00 */	li r5, 0
/* 801F35D0 001BCB90  38 C0 00 01 */	li r6, 1
/* 801F35D4 001BCB94  4B F4 3A 64 */	b func_80137038
/* 801F35D8 001BCB98  4E 80 00 20 */	blr 
.endfn func_801F35B0

.fn func_801F35DC, global
/* 801F35DC 001BCB9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F35E0 001BCBA0  7C 08 02 A6 */	mflr r0
/* 801F35E4 001BCBA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F35E8 001BCBA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F35EC 001BCBAC  7C 7F 1B 78 */	mr r31, r3
/* 801F35F0 001BCBB0  38 63 00 14 */	addi r3, r3, 0x14
/* 801F35F4 001BCBB4  4B F4 5A ED */	bl func_801390E0
/* 801F35F8 001BCBB8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F35FC 001BCBBC  38 00 00 00 */	li r0, 0
/* 801F3600 001BCBC0  98 1F 00 24 */	stb r0, 0x24(r31)
/* 801F3604 001BCBC4  2C 03 00 00 */	cmpwi r3, 0
/* 801F3608 001BCBC8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801F360C 001BCBCC  98 1F 00 25 */	stb r0, 0x25(r31)
/* 801F3610 001BCBD0  41 82 00 24 */	beq .L_801F3634
/* 801F3614 001BCBD4  41 82 00 18 */	beq .L_801F362C
/* 801F3618 001BCBD8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F361C 001BCBDC  38 80 00 01 */	li r4, 1
/* 801F3620 001BCBE0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F3624 001BCBE4  7D 89 03 A6 */	mtctr r12
/* 801F3628 001BCBE8  4E 80 04 21 */	bctrl 
.L_801F362C:
/* 801F362C 001BCBEC  38 00 00 00 */	li r0, 0
/* 801F3630 001BCBF0  90 1F 00 1C */	stw r0, 0x1c(r31)
.L_801F3634:
/* 801F3634 001BCBF4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801F3638 001BCBF8  4B F4 5A ED */	bl func_80139124
/* 801F363C 001BCBFC  38 00 00 00 */	li r0, 0
/* 801F3640 001BCC00  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801F3644 001BCC04  38 7F 00 04 */	addi r3, r31, 4
/* 801F3648 001BCC08  48 26 C1 31 */	bl func_8045F778
/* 801F364C 001BCC0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F3650 001BCC10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F3654 001BCC14  7C 08 03 A6 */	mtlr r0
/* 801F3658 001BCC18  38 21 00 10 */	addi r1, r1, 0x10
/* 801F365C 001BCC1C  4E 80 00 20 */	blr 
.endfn func_801F35DC

.fn func_801F3660, global
/* 801F3660 001BCC20  88 63 00 25 */	lbz r3, 0x25(r3)
/* 801F3664 001BCC24  4E 80 00 20 */	blr 
.endfn func_801F3660

.fn func_801F3668, global
/* 801F3668 001BCC28  88 63 00 27 */	lbz r3, 0x27(r3)
/* 801F366C 001BCC2C  4E 80 00 20 */	blr 
.endfn func_801F3668

.fn func_801F3670, global
/* 801F3670 001BCC30  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801F3674 001BCC34  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801F3678 001BCC38  4B FD EA D8 */	b func_801D2150
.endfn func_801F3670

.fn func_801F367C, global
/* 801F367C 001BCC3C  88 03 00 26 */	lbz r0, 0x26(r3)
/* 801F3680 001BCC40  2C 00 00 00 */	cmpwi r0, 0
/* 801F3684 001BCC44  4C 82 00 20 */	bnelr 
/* 801F3688 001BCC48  38 80 00 01 */	li r4, 1
/* 801F368C 001BCC4C  38 00 00 00 */	li r0, 0
/* 801F3690 001BCC50  98 83 00 26 */	stb r4, 0x26(r3)
/* 801F3694 001BCC54  98 03 00 27 */	stb r0, 0x27(r3)
/* 801F3698 001BCC58  4E 80 00 20 */	blr 
.endfn func_801F367C

.fn func_801F369C, global
/* 801F369C 001BCC5C  88 03 00 26 */	lbz r0, 0x26(r3)
/* 801F36A0 001BCC60  28 00 00 02 */	cmplwi r0, 2
/* 801F36A4 001BCC64  4C 82 00 20 */	bnelr 
/* 801F36A8 001BCC68  38 80 00 03 */	li r4, 3
/* 801F36AC 001BCC6C  38 00 00 00 */	li r0, 0
/* 801F36B0 001BCC70  98 83 00 26 */	stb r4, 0x26(r3)
/* 801F36B4 001BCC74  98 03 00 27 */	stb r0, 0x27(r3)
/* 801F36B8 001BCC78  4E 80 00 20 */	blr 
.endfn func_801F369C

.fn func_801F36BC, global
/* 801F36BC 001BCC7C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 801F36C0 001BCC80  7C 08 02 A6 */	mflr r0
/* 801F36C4 001BCC84  90 01 00 74 */	stw r0, 0x74(r1)
/* 801F36C8 001BCC88  39 61 00 60 */	addi r11, r1, 0x60
/* 801F36CC 001BCC8C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 801F36D0 001BCC90  F3 E1 00 68 */	psq_st f31, 104(r1), 0, qr0
/* 801F36D4 001BCC94  48 0C 6A 81 */	bl _savegpr_27
/* 801F36D8 001BCC98  80 E3 00 1C */	lwz r7, 0x1c(r3)
/* 801F36DC 001BCC9C  3C C0 80 54 */	lis r6, lbl_80538578@ha
/* 801F36E0 001BCCA0  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 801F36E4 001BCCA4  7C 7B 1B 78 */	mr r27, r3
/* 801F36E8 001BCCA8  80 67 00 10 */	lwz r3, 0x10(r7)
/* 801F36EC 001BCCAC  7C BD 2B 78 */	mr r29, r5
/* 801F36F0 001BCCB0  54 00 10 3A */	slwi r0, r0, 2
/* 801F36F4 001BCCB4  38 C6 85 78 */	addi r6, r6, lbl_80538578@l
/* 801F36F8 001BCCB8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F36FC 001BCCBC  7C 9C 23 78 */	mr r28, r4
/* 801F3700 001BCCC0  7C 86 00 2E */	lwzx r4, r6, r0
/* 801F3704 001BCCC4  38 A0 00 01 */	li r5, 1
/* 801F3708 001BCCC8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F370C 001BCCCC  7D 89 03 A6 */	mtctr r12
/* 801F3710 001BCCD0  4E 80 04 21 */	bctrl 
/* 801F3714 001BCCD4  7C 1C E8 50 */	subf r0, r28, r29
/* 801F3718 001BCCD8  7C 7F 1B 78 */	mr r31, r3
/* 801F371C 001BCCDC  7C 1E 07 35 */	extsh. r30, r0
/* 801F3720 001BCCE0  41 81 00 58 */	bgt .L_801F3778
/* 801F3724 001BCCE4  38 61 00 10 */	addi r3, r1, 0x10
/* 801F3728 001BCCE8  38 9F 00 4C */	addi r4, r31, 0x4c
/* 801F372C 001BCCEC  4B F3 44 99 */	bl func_80127BC4
/* 801F3730 001BCCF0  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 801F3734 001BCCF4  7F E3 FB 78 */	mr r3, r31
/* 801F3738 001BCCF8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801F373C 001BCCFC  38 81 00 10 */	addi r4, r1, 0x10
/* 801F3740 001BCD00  4B F3 0B 49 */	bl func_80124288
/* 801F3744 001BCD04  C0 62 A6 78 */	lfs f3, float_8066A9F8@sda21(r2)
/* 801F3748 001BCD08  38 61 00 24 */	addi r3, r1, 0x24
/* 801F374C 001BCD0C  D0 7B 00 30 */	stfs f3, 0x30(r27)
/* 801F3750 001BCD10  C0 3B 00 34 */	lfs f1, 0x34(r27)
/* 801F3754 001BCD14  C0 5B 00 38 */	lfs f2, 0x38(r27)
/* 801F3758 001BCD18  4B F4 3F D1 */	bl func_80137728
/* 801F375C 001BCD1C  7C 64 1B 78 */	mr r4, r3
/* 801F3760 001BCD20  7F E3 FB 78 */	mr r3, r31
/* 801F3764 001BCD24  4B FD E9 ED */	bl func_801D2150
/* 801F3768 001BCD28  7F E3 FB 78 */	mr r3, r31
/* 801F376C 001BCD2C  38 80 00 00 */	li r4, 0
/* 801F3770 001BCD30  4B F3 0B 01 */	bl func_80124270
/* 801F3774 001BCD34  48 00 00 BC */	b .L_801F3830
.L_801F3778:
/* 801F3778 001BCD38  3C 00 43 30 */	lis r0, 0x4330
/* 801F377C 001BCD3C  93 81 00 34 */	stw r28, 0x34(r1)
/* 801F3780 001BCD40  C8 62 A6 80 */	lfd f3, double_8066AA00@sda21(r2)
/* 801F3784 001BCD44  90 01 00 30 */	stw r0, 0x30(r1)
/* 801F3788 001BCD48  C0 3B 00 2C */	lfs f1, 0x2c(r27)
/* 801F378C 001BCD4C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 801F3790 001BCD50  93 A1 00 3C */	stw r29, 0x3c(r1)
/* 801F3794 001BCD54  EC 80 18 28 */	fsubs f4, f0, f3
/* 801F3798 001BCD58  C0 02 A6 7C */	lfs f0, float_8066A9FC@sda21(r2)
/* 801F379C 001BCD5C  90 01 00 38 */	stw r0, 0x38(r1)
/* 801F37A0 001BCD60  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 801F37A4 001BCD64  EC 42 18 28 */	fsubs f2, f2, f3
/* 801F37A8 001BCD68  EC 44 10 24 */	fdivs f2, f4, f2
/* 801F37AC 001BCD6C  EF E1 00 B2 */	fmuls f31, f1, f2
/* 801F37B0 001BCD70  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801F37B4 001BCD74  40 80 00 08 */	bge .L_801F37BC
/* 801F37B8 001BCD78  FF E0 00 90 */	fmr f31, f0
.L_801F37BC:
/* 801F37BC 001BCD7C  38 61 00 08 */	addi r3, r1, 8
/* 801F37C0 001BCD80  38 9F 00 4C */	addi r4, r31, 0x4c
/* 801F37C4 001BCD84  4B F3 44 01 */	bl func_80127BC4
/* 801F37C8 001BCD88  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 801F37CC 001BCD8C  7F E3 FB 78 */	mr r3, r31
/* 801F37D0 001BCD90  38 81 00 08 */	addi r4, r1, 8
/* 801F37D4 001BCD94  4B F3 0A B5 */	bl func_80124288
/* 801F37D8 001BCD98  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 801F37DC 001BCD9C  3C 00 43 30 */	lis r0, 0x4330
/* 801F37E0 001BCDA0  90 61 00 44 */	stw r3, 0x44(r1)
/* 801F37E4 001BCDA4  38 61 00 18 */	addi r3, r1, 0x18
/* 801F37E8 001BCDA8  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 801F37EC 001BCDAC  90 01 00 40 */	stw r0, 0x40(r1)
/* 801F37F0 001BCDB0  EC 80 F8 28 */	fsubs f4, f0, f31
/* 801F37F4 001BCDB4  C8 42 A6 88 */	lfd f2, double_8066AA08@sda21(r2)
/* 801F37F8 001BCDB8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801F37FC 001BCDBC  C0 3B 00 34 */	lfs f1, 0x34(r27)
/* 801F3800 001BCDC0  EC 00 10 28 */	fsubs f0, f0, f2
/* 801F3804 001BCDC4  C0 5B 00 38 */	lfs f2, 0x38(r27)
/* 801F3808 001BCDC8  C0 62 A6 78 */	lfs f3, float_8066A9F8@sda21(r2)
/* 801F380C 001BCDCC  EC 04 00 24 */	fdivs f0, f4, f0
/* 801F3810 001BCDD0  D0 1B 00 30 */	stfs f0, 0x30(r27)
/* 801F3814 001BCDD4  4B F4 3F 15 */	bl func_80137728
/* 801F3818 001BCDD8  7C 64 1B 78 */	mr r4, r3
/* 801F381C 001BCDDC  7F E3 FB 78 */	mr r3, r31
/* 801F3820 001BCDE0  4B FD E9 31 */	bl func_801D2150
/* 801F3824 001BCDE4  7F E3 FB 78 */	mr r3, r31
/* 801F3828 001BCDE8  38 80 00 01 */	li r4, 1
/* 801F382C 001BCDEC  4B F3 0A 45 */	bl func_80124270
.L_801F3830:
/* 801F3830 001BCDF0  39 61 00 60 */	addi r11, r1, 0x60
/* 801F3834 001BCDF4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, qr0
/* 801F3838 001BCDF8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 801F383C 001BCDFC  48 0C 69 65 */	bl _restgpr_27
/* 801F3840 001BCE00  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801F3844 001BCE04  7C 08 03 A6 */	mtlr r0
/* 801F3848 001BCE08  38 21 00 70 */	addi r1, r1, 0x70
/* 801F384C 001BCE0C  4E 80 00 20 */	blr 
.endfn func_801F36BC

.fn func_801F3850, global
/* 801F3850 001BCE10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F3854 001BCE14  7C 08 02 A6 */	mflr r0
/* 801F3858 001BCE18  3C C0 80 54 */	lis r6, lbl_80538578@ha
/* 801F385C 001BCE1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F3860 001BCE20  38 C6 85 78 */	addi r6, r6, lbl_80538578@l
/* 801F3864 001BCE24  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801F3868 001BCE28  7C 9F 23 78 */	mr r31, r4
/* 801F386C 001BCE2C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801F3870 001BCE30  7C 7E 1B 78 */	mr r30, r3
/* 801F3874 001BCE34  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 801F3878 001BCE38  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 801F387C 001BCE3C  80 65 00 10 */	lwz r3, 0x10(r5)
/* 801F3880 001BCE40  38 A0 00 01 */	li r5, 1
/* 801F3884 001BCE44  54 00 10 3A */	slwi r0, r0, 2
/* 801F3888 001BCE48  81 83 00 00 */	lwz r12, 0(r3)
/* 801F388C 001BCE4C  7C 86 00 2E */	lwzx r4, r6, r0
/* 801F3890 001BCE50  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F3894 001BCE54  7D 89 03 A6 */	mtctr r12
/* 801F3898 001BCE58  4E 80 04 21 */	bctrl 
/* 801F389C 001BCE5C  3C 00 43 30 */	lis r0, 0x4330
/* 801F38A0 001BCE60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F38A4 001BCE64  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 801F38A8 001BCE68  7C 7F 1B 78 */	mr r31, r3
/* 801F38AC 001BCE6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 801F38B0 001BCE70  38 61 00 08 */	addi r3, r1, 8
/* 801F38B4 001BCE74  C8 42 A6 80 */	lfd f2, double_8066AA00@sda21(r2)
/* 801F38B8 001BCE78  FC 80 00 50 */	fneg f4, f0
/* 801F38BC 001BCE7C  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 801F38C0 001BCE80  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 801F38C4 001BCE84  EC 41 10 28 */	fsubs f2, f1, f2
/* 801F38C8 001BCE88  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 801F38CC 001BCE8C  C0 62 A6 78 */	lfs f3, float_8066A9F8@sda21(r2)
/* 801F38D0 001BCE90  EC 44 00 BA */	fmadds f2, f4, f2, f0
/* 801F38D4 001BCE94  4B F4 3E 55 */	bl func_80137728
/* 801F38D8 001BCE98  7C 64 1B 78 */	mr r4, r3
/* 801F38DC 001BCE9C  7F E3 FB 78 */	mr r3, r31
/* 801F38E0 001BCEA0  4B FD E8 71 */	bl func_801D2150
/* 801F38E4 001BCEA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F38E8 001BCEA8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801F38EC 001BCEAC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801F38F0 001BCEB0  7C 08 03 A6 */	mtlr r0
/* 801F38F4 001BCEB4  38 21 00 30 */	addi r1, r1, 0x30
/* 801F38F8 001BCEB8  4E 80 00 20 */	blr 
.endfn func_801F3850

.fn func_801F38FC, global
/* 801F38FC 001BCEBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F3900 001BCEC0  7C 08 02 A6 */	mflr r0
/* 801F3904 001BCEC4  C0 22 A6 90 */	lfs f1, float_8066AA10@sda21(r2)
/* 801F3908 001BCEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F390C 001BCECC  C0 02 A6 94 */	lfs f0, float_8066AA14@sda21(r2)
/* 801F3910 001BCED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F3914 001BCED4  7C 7F 1B 78 */	mr r31, r3
/* 801F3918 001BCED8  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 801F391C 001BCEDC  EC 42 08 2A */	fadds f2, f2, f1
/* 801F3920 001BCEE0  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 801F3924 001BCEE4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801F3928 001BCEE8  41 80 00 24 */	blt .L_801F394C
/* 801F392C 001BCEEC  80 63 00 20 */	lwz r3, 0x20(r3)
/* 801F3930 001BCEF0  4B F4 3B 15 */	bl func_80137444
/* 801F3934 001BCEF4  2C 03 00 00 */	cmpwi r3, 0
/* 801F3938 001BCEF8  41 82 00 14 */	beq .L_801F394C
/* 801F393C 001BCEFC  38 60 00 02 */	li r3, 2
/* 801F3940 001BCF00  38 00 00 01 */	li r0, 1
/* 801F3944 001BCF04  98 7F 00 26 */	stb r3, 0x26(r31)
/* 801F3948 001BCF08  98 1F 00 27 */	stb r0, 0x27(r31)
.L_801F394C:
/* 801F394C 001BCF0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F3950 001BCF10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F3954 001BCF14  7C 08 03 A6 */	mtlr r0
/* 801F3958 001BCF18  38 21 00 10 */	addi r1, r1, 0x10
/* 801F395C 001BCF1C  4E 80 00 20 */	blr 
.endfn func_801F38FC

.fn func_801F3960, global
/* 801F3960 001BCF20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F3964 001BCF24  7C 08 02 A6 */	mflr r0
/* 801F3968 001BCF28  C0 22 A6 90 */	lfs f1, float_8066AA10@sda21(r2)
/* 801F396C 001BCF2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F3970 001BCF30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F3974 001BCF34  7C 7F 1B 78 */	mr r31, r3
/* 801F3978 001BCF38  80 63 00 20 */	lwz r3, 0x20(r3)
/* 801F397C 001BCF3C  4B F4 3B 95 */	bl func_80137510
/* 801F3980 001BCF40  2C 03 00 00 */	cmpwi r3, 0
/* 801F3984 001BCF44  41 82 00 1C */	beq .L_801F39A0
/* 801F3988 001BCF48  C0 02 A6 78 */	lfs f0, float_8066A9F8@sda21(r2)
/* 801F398C 001BCF4C  38 60 00 00 */	li r3, 0
/* 801F3990 001BCF50  38 00 00 01 */	li r0, 1
/* 801F3994 001BCF54  98 7F 00 26 */	stb r3, 0x26(r31)
/* 801F3998 001BCF58  98 1F 00 27 */	stb r0, 0x27(r31)
/* 801F399C 001BCF5C  D0 1F 00 28 */	stfs f0, 0x28(r31)
.L_801F39A0:
/* 801F39A0 001BCF60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F39A4 001BCF64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F39A8 001BCF68  7C 08 03 A6 */	mtlr r0
/* 801F39AC 001BCF6C  38 21 00 10 */	addi r1, r1, 0x10
/* 801F39B0 001BCF70  4E 80 00 20 */	blr 
.endfn func_801F3960

.fn func_801F39B4, global
/* 801F39B4 001BCF74  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 801F39B8 001BCF78  2C 00 00 00 */	cmpwi r0, 0
/* 801F39BC 001BCF7C  4D 82 00 20 */	beqlr 
/* 801F39C0 001BCF80  38 00 00 01 */	li r0, 1
/* 801F39C4 001BCF84  98 03 00 25 */	stb r0, 0x25(r3)
/* 801F39C8 001BCF88  98 03 00 24 */	stb r0, 0x24(r3)
/* 801F39CC 001BCF8C  4E 80 00 20 */	blr 
.endfn func_801F39B4

.fn CScrollBar_OnFileEvent, global
/* 801F39D0 001BCF90  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801F39D4 001BCF94  7C 08 02 A6 */	mflr r0
/* 801F39D8 001BCF98  90 01 00 44 */	stw r0, 0x44(r1)
/* 801F39DC 001BCF9C  39 61 00 40 */	addi r11, r1, 0x40
/* 801F39E0 001BCFA0  48 0C 67 79 */	bl _savegpr_28
/* 801F39E4 001BCFA4  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 801F39E8 001BCFA8  7C 7F 1B 78 */	mr r31, r3
/* 801F39EC 001BCFAC  80 04 00 04 */	lwz r0, 4(r4)
/* 801F39F0 001BCFB0  7C 05 00 40 */	cmplw r5, r0
/* 801F39F4 001BCFB4  40 82 01 D0 */	bne .L_801F3BC4
/* 801F39F8 001BCFB8  48 24 09 A9 */	bl Heap_getRegionIndex2
/* 801F39FC 001BCFBC  3F A0 80 50 */	lis r29, CScrollBar_strpool@ha
/* 801F3A00 001BCFC0  7C 64 1B 78 */	mr r4, r3
/* 801F3A04 001BCFC4  3B BD 31 A4 */	addi r29, r29, CScrollBar_strpool@l
/* 801F3A08 001BCFC8  38 7F 00 04 */	addi r3, r31, 4
/* 801F3A0C 001BCFCC  38 DD 00 14 */	addi r6, r29, 0x14
/* 801F3A10 001BCFD0  38 A0 30 00 */	li r5, 0x3000
/* 801F3A14 001BCFD4  38 E0 00 01 */	li r7, 1
/* 801F3A18 001BCFD8  48 26 BC 69 */	bl func_8045F680
/* 801F3A1C 001BCFDC  38 61 00 08 */	addi r3, r1, 8
/* 801F3A20 001BCFE0  38 9F 00 04 */	addi r4, r31, 4
/* 801F3A24 001BCFE4  48 26 BE 35 */	bl __ct__Class_8045F858
/* 801F3A28 001BCFE8  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 801F3A2C 001BCFEC  38 00 00 00 */	li r0, 0
/* 801F3A30 001BCFF0  38 60 00 00 */	li r3, 0
/* 801F3A34 001BCFF4  83 C4 00 04 */	lwz r30, 4(r4)
/* 801F3A38 001BCFF8  90 04 00 04 */	stw r0, 4(r4)
/* 801F3A3C 001BCFFC  48 24 10 11 */	bl func_80434A4C
/* 801F3A40 001BD000  48 26 B7 75 */	bl CLibLayout_getArcResourceAccessorInstance
/* 801F3A44 001BD004  90 7F 00 18 */	stw r3, 0x18(r31)
/* 801F3A48 001BD008  7F C4 F3 78 */	mr r4, r30
/* 801F3A4C 001BD00C  38 BD 00 1F */	addi r5, r29, 0x1f
/* 801F3A50 001BD010  48 21 64 B9 */	bl Attach__Q34nw4r3lyt19ArcResourceAccessorFPvPCc
/* 801F3A54 001BD014  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801F3A58 001BD018  38 7F 00 1C */	addi r3, r31, 0x1c
/* 801F3A5C 001BD01C  38 BD 00 23 */	addi r5, r29, 0x23
/* 801F3A60 001BD020  4B F4 34 25 */	bl func_80136E84
/* 801F3A64 001BD024  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F3A68 001BD028  38 9F 00 20 */	addi r4, r31, 0x20
/* 801F3A6C 001BD02C  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 801F3A70 001BD030  38 DD 00 34 */	addi r6, r29, 0x34
/* 801F3A74 001BD034  4B F4 34 95 */	bl func_80136F08
/* 801F3A78 001BD038  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F3A7C 001BD03C  38 A0 00 01 */	li r5, 1
/* 801F3A80 001BD040  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 801F3A84 001BD044  81 83 00 00 */	lwz r12, 0(r3)
/* 801F3A88 001BD048  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F3A8C 001BD04C  7D 89 03 A6 */	mtctr r12
/* 801F3A90 001BD050  4E 80 04 21 */	bctrl 
/* 801F3A94 001BD054  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F3A98 001BD058  38 80 00 00 */	li r4, 0
/* 801F3A9C 001BD05C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F3AA0 001BD060  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 801F3AA4 001BD064  7D 89 03 A6 */	mtctr r12
/* 801F3AA8 001BD068  4E 80 04 21 */	bctrl 
/* 801F3AAC 001BD06C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F3AB0 001BD070  3C 80 80 54 */	lis r4, lbl_80538578@ha
/* 801F3AB4 001BD074  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 801F3AB8 001BD078  38 84 85 78 */	addi r4, r4, lbl_80538578@l
/* 801F3ABC 001BD07C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801F3AC0 001BD080  38 A0 00 01 */	li r5, 1
/* 801F3AC4 001BD084  54 00 10 3A */	slwi r0, r0, 2
/* 801F3AC8 001BD088  81 83 00 00 */	lwz r12, 0(r3)
/* 801F3ACC 001BD08C  7C 84 00 2E */	lwzx r4, r4, r0
/* 801F3AD0 001BD090  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F3AD4 001BD094  7D 89 03 A6 */	mtctr r12
/* 801F3AD8 001BD098  4E 80 04 21 */	bctrl 
/* 801F3ADC 001BD09C  7C 7D 1B 78 */	mr r29, r3
/* 801F3AE0 001BD0A0  38 61 00 10 */	addi r3, r1, 0x10
/* 801F3AE4 001BD0A4  38 9D 00 4C */	addi r4, r29, 0x4c
/* 801F3AE8 001BD0A8  4B F3 40 DD */	bl func_80127BC4
/* 801F3AEC 001BD0AC  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 801F3AF0 001BD0B0  3F C0 80 54 */	lis r30, lbl_80538560@ha
/* 801F3AF4 001BD0B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 801F3AF8 001BD0B8  3B DE 85 60 */	addi r30, r30, lbl_80538560@l
/* 801F3AFC 001BD0BC  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 801F3B00 001BD0C0  3B 80 00 00 */	li r28, 0
/* 801F3B04 001BD0C4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 801F3B08 001BD0C8  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 801F3B0C 001BD0CC  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801F3B10 001BD0D0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801F3B14 001BD0D4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801F3B18 001BD0D8  90 01 00 20 */	stw r0, 0x20(r1)
/* 801F3B1C 001BD0DC  D0 5F 00 2C */	stfs f2, 0x2c(r31)
/* 801F3B20 001BD0E0  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 801F3B24 001BD0E4  D0 1F 00 38 */	stfs f0, 0x38(r31)
.L_801F3B28:
/* 801F3B28 001BD0E8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F3B2C 001BD0EC  57 80 15 BA */	rlwinm r0, r28, 2, 0x16, 0x1d
/* 801F3B30 001BD0F0  7C 9E 00 2E */	lwzx r4, r30, r0
/* 801F3B34 001BD0F4  38 A0 00 01 */	li r5, 1
/* 801F3B38 001BD0F8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801F3B3C 001BD0FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F3B40 001BD100  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F3B44 001BD104  7D 89 03 A6 */	mtctr r12
/* 801F3B48 001BD108  4E 80 04 21 */	bctrl 
/* 801F3B4C 001BD10C  38 80 00 00 */	li r4, 0
/* 801F3B50 001BD110  4B F3 07 21 */	bl func_80124270
/* 801F3B54 001BD114  3B 9C 00 01 */	addi r28, r28, 1
/* 801F3B58 001BD118  28 1C 00 06 */	cmplwi r28, 6
/* 801F3B5C 001BD11C  41 80 FF CC */	blt .L_801F3B28
/* 801F3B60 001BD120  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F3B64 001BD124  3C 80 80 54 */	lis r4, lbl_80538560@ha
/* 801F3B68 001BD128  88 1F 00 3C */	lbz r0, 0x3c(r31)
/* 801F3B6C 001BD12C  38 84 85 60 */	addi r4, r4, lbl_80538560@l
/* 801F3B70 001BD130  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801F3B74 001BD134  38 A0 00 01 */	li r5, 1
/* 801F3B78 001BD138  54 00 10 3A */	slwi r0, r0, 2
/* 801F3B7C 001BD13C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F3B80 001BD140  7C 84 00 2E */	lwzx r4, r4, r0
/* 801F3B84 001BD144  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F3B88 001BD148  7D 89 03 A6 */	mtctr r12
/* 801F3B8C 001BD14C  4E 80 04 21 */	bctrl 
/* 801F3B90 001BD150  38 80 00 01 */	li r4, 1
/* 801F3B94 001BD154  4B F3 06 DD */	bl func_80124270
/* 801F3B98 001BD158  7F E3 FB 78 */	mr r3, r31
/* 801F3B9C 001BD15C  4B FF FE 19 */	bl func_801F39B4
/* 801F3BA0 001BD160  38 00 00 00 */	li r0, 0
/* 801F3BA4 001BD164  90 1F 00 14 */	stw r0, 0x14(r31)
/* 801F3BA8 001BD168  38 7F 00 04 */	addi r3, r31, 4
/* 801F3BAC 001BD16C  48 26 BC 65 */	bl func_8045F810
/* 801F3BB0 001BD170  38 61 00 08 */	addi r3, r1, 8
/* 801F3BB4 001BD174  38 80 FF FF */	li r4, -1
/* 801F3BB8 001BD178  48 26 BD 11 */	bl __dt__Class_8045F858
/* 801F3BBC 001BD17C  38 60 00 01 */	li r3, 1
/* 801F3BC0 001BD180  48 00 00 08 */	b .L_801F3BC8
.L_801F3BC4:
/* 801F3BC4 001BD184  38 60 00 00 */	li r3, 0
.L_801F3BC8:
/* 801F3BC8 001BD188  39 61 00 40 */	addi r11, r1, 0x40
/* 801F3BCC 001BD18C  48 0C 65 D9 */	bl _restgpr_28
/* 801F3BD0 001BD190  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801F3BD4 001BD194  7C 08 03 A6 */	mtlr r0
/* 801F3BD8 001BD198  38 21 00 40 */	addi r1, r1, 0x40
/* 801F3BDC 001BD19C  4E 80 00 20 */	blr 
.endfn CScrollBar_OnFileEvent


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8


.obj lbl_805030F0, global
	.asciz "nul_scr00"
	.balign 4
.endobj lbl_805030F0

.obj lbl_805030FC, global
	.asciz "nul_scr01"
	.balign 4
.endobj lbl_805030FC

.obj lbl_80503108, global
	.asciz "nul_scr02"
	.balign 4
.endobj lbl_80503108

.obj lbl_80503114, global
	.asciz "nul_scr03"
	.balign 4
.endobj lbl_80503114

.obj lbl_80503120, global
	.asciz "nul_scr04"
	.balign 4
.endobj lbl_80503120

.obj lbl_8050312C, global
	.asciz "nul_scr05"
	.balign 4
.endobj lbl_8050312C

.obj lbl_80503138, global
	.asciz "pic_scr00_bar"
	.balign 4
.endobj lbl_80503138

.obj lbl_80503148, global
	.asciz "pic_scr01_bar"
	.balign 4
.endobj lbl_80503148

.obj lbl_80503158, global
	.asciz "pic_scr02_bar"
	.balign 4
.endobj lbl_80503158

.obj lbl_80503168, global
	.asciz "pic_scr03_bar"
	.balign 4
.endobj lbl_80503168

.obj lbl_80503178, global
	.asciz "pic_scr04_bar"
	.balign 4
.endobj lbl_80503178

.obj lbl_80503188, global
	.asciz "pic_scr05_bar"
	.balign 4
.endobj lbl_80503188

.obj CScrollBar_typestr, global
	.asciz "CScrollBar"
	.balign 4
.endobj CScrollBar_typestr


.obj CScrollBar_strpool, global
	.asciz "/menu/ScrollBar.arc"
	.asciz "CScrollBar"
	.asciz "arc"
	.asciz "mf00_scr00.brlyt"
	.asciz "mf00_scr00_info_in.brlan"
	.balign 4
	.4byte 0
.endobj CScrollBar_strpool

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_80538560, global
	.4byte lbl_805030F0
	.4byte lbl_805030FC
	.4byte lbl_80503108
	.4byte lbl_80503114
	.4byte lbl_80503120
	.4byte lbl_8050312C
.endobj lbl_80538560


.obj lbl_80538578, global
	.4byte lbl_80503138
	.4byte lbl_80503148
	.4byte lbl_80503158
	.4byte lbl_80503168
	.4byte lbl_80503178
	.4byte lbl_80503188
.endobj lbl_80538578


.obj __vt__10CScrollBar, global
	.4byte __RTTI__10CScrollBar
	.4byte 0
	.4byte __dt__CScrollBar
	.4byte IWorkEvent_WorkEvent1
	.4byte CScrollBar_OnFileEvent
	.4byte IWorkEvent_WorkEvent3
	.4byte IWorkEvent_WorkEvent4
	.4byte IWorkEvent_WorkEvent5
	.4byte IWorkEvent_WorkEvent6
	.4byte IWorkEvent_WorkEvent7
	.4byte IWorkEvent_WorkEvent8
	.4byte IWorkEvent_WorkEvent9
	.4byte IWorkEvent_WorkEvent10
	.4byte IWorkEvent_WorkEvent11
	.4byte IWorkEvent_WorkEvent12
	.4byte IWorkEvent_WorkEvent13
	.4byte IWorkEvent_WorkEvent14
	.4byte IWorkEvent_WorkEvent15
	.4byte IWorkEvent_WorkEvent16
	.4byte IWorkEvent_WorkEvent17
	.4byte IWorkEvent_WorkEvent18
	.4byte IWorkEvent_WorkEvent19
	.4byte IWorkEvent_WorkEvent20
	.4byte IWorkEvent_WorkEvent21
	.4byte IWorkEvent_WorkEvent22
	.4byte IWorkEvent_WorkEvent23
	.4byte IWorkEvent_WorkEvent24
	.4byte IWorkEvent_WorkEvent25
	.4byte IWorkEvent_WorkEvent26
	.4byte IWorkEvent_WorkEvent27
	.4byte IWorkEvent_WorkEvent28
	.4byte IWorkEvent_WorkEvent29
	.4byte IWorkEvent_WorkEvent30
	.4byte IWorkEvent_WorkEvent31
.endobj __vt__10CScrollBar

.obj CScrollBar_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CScrollBar_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__10CScrollBar, global
	.4byte CScrollBar_typestr
	.4byte CScrollBar_hierarchy
.endobj __RTTI__10CScrollBar

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066A9F8, global
	.float 0
.endobj float_8066A9F8


.obj float_8066A9FC, global
	.float 4
.endobj float_8066A9FC


.obj double_8066AA00, global
	.8byte 0x4330000000000000 #unsigned int to float constant
.endobj double_8066AA00

.obj double_8066AA08, global
	.8byte 0x4330000080000000 #signed int to float constant
.endobj double_8066AA08

.obj float_8066AA10, global
	.float 1.0
.endobj float_8066AA10


.obj float_8066AA14, global
	.float 5
.endobj float_8066AA14


.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800121F4", local
.hidden "@etb_800121F4"
	.4byte 0x100A0000
	.4byte 0x00000030
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__IWorkEvent
.endobj "@etb_800121F4"

.obj "@etb_80012210", local
.hidden "@etb_80012210"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80012210"

.obj "@etb_80012218", local
.hidden "@etb_80012218"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80012218"

.obj "@etb_80012220", local
.hidden "@etb_80012220"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80012220"

.obj "@etb_80012228", local
.hidden "@etb_80012228"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80012228"

.obj "@etb_80012230", local
.hidden "@etb_80012230"
	.4byte 0x284A0000
	.4byte 0x00000000
.endobj "@etb_80012230"

.obj "@etb_80012238", local
.hidden "@etb_80012238"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_80012238"

.obj "@etb_80012240", local
.hidden "@etb_80012240"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80012240"

.obj "@etb_80012248", local
.hidden "@etb_80012248"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80012248"

.obj "@etb_80012250", local
.hidden "@etb_80012250"
	.4byte 0x200A0000
	.4byte 0x00000070
	.4byte 0x005C0010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__Class_8045F858
.endobj "@etb_80012250"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002C2DC", local
.hidden "@eti_8002C2DC"
	.4byte __ct__CScrollBar
	.4byte 0x00000090
	.4byte "@etb_800121F4"
.endobj "@eti_8002C2DC"

.obj "@eti_8002C2E8", local
.hidden "@eti_8002C2E8"
	.4byte __dt__CScrollBar
	.4byte 0x00000054
	.4byte "@etb_80012210"
.endobj "@eti_8002C2E8"

.obj "@eti_8002C2F4", local
.hidden "@eti_8002C2F4"
	.4byte func_801F34F4
	.4byte 0x0000004C
	.4byte "@etb_80012218"
.endobj "@eti_8002C2F4"

.obj "@eti_8002C300", local
.hidden "@eti_8002C300"
	.4byte func_801F3540
	.4byte 0x00000070
	.4byte "@etb_80012220"
.endobj "@eti_8002C300"

.obj "@eti_8002C30C", local
.hidden "@eti_8002C30C"
	.4byte func_801F35DC
	.4byte 0x00000084
	.4byte "@etb_80012228"
.endobj "@eti_8002C30C"

.obj "@eti_8002C318", local
.hidden "@eti_8002C318"
	.4byte func_801F36BC
	.4byte 0x00000194
	.4byte "@etb_80012230"
.endobj "@eti_8002C318"

.obj "@eti_8002C324", local
.hidden "@eti_8002C324"
	.4byte func_801F3850
	.4byte 0x000000AC
	.4byte "@etb_80012238"
.endobj "@eti_8002C324"

.obj "@eti_8002C330", local
.hidden "@eti_8002C330"
	.4byte func_801F38FC
	.4byte 0x00000064
	.4byte "@etb_80012240"
.endobj "@eti_8002C330"

.obj "@eti_8002C33C", local
.hidden "@eti_8002C33C"
	.4byte func_801F3960
	.4byte 0x00000054
	.4byte "@etb_80012248"
.endobj "@eti_8002C33C"

.obj "@eti_8002C348", local
.hidden "@eti_8002C348"
	.4byte CScrollBar_OnFileEvent
	.4byte 0x00000210
	.4byte "@etb_80012250"
.endobj "@eti_8002C348"
