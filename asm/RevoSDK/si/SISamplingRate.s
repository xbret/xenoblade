.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global SISetSamplingRate
SISetSamplingRate:
/* 803626D0 0032BC90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803626D4 0032BC94  7C 08 02 A6 */	mflr r0
/* 803626D8 0032BC98  28 03 00 0B */	cmplwi r3, 0xb
/* 803626DC 0032BC9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803626E0 0032BCA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803626E4 0032BCA4  3F E0 80 56 */	lis r31, lbl_8055F1A8@ha
/* 803626E8 0032BCA8  3B FF F1 A8 */	addi r31, r31, lbl_8055F1A8@l
/* 803626EC 0032BCAC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803626F0 0032BCB0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803626F4 0032BCB4  7C 7D 1B 78 */	mr r29, r3
/* 803626F8 0032BCB8  40 81 00 08 */	ble lbl_80362700
/* 803626FC 0032BCBC  3B A0 00 0B */	li r29, 0xb
lbl_80362700:
/* 80362700 0032BCC0  4B FF 62 B1 */	bl OSDisableInterrupts
/* 80362704 0032BCC4  93 AD BA 00 */	stw r29, lbl_80667B80@sda21(r13)
/* 80362708 0032BCC8  7C 7E 1B 78 */	mr r30, r3
/* 8036270C 0032BCCC  48 00 3D F5 */	bl VIGetTvFormat
/* 80362710 0032BCD0  2C 03 00 00 */	cmpwi r3, 0
/* 80362714 0032BCD4  41 82 00 20 */	beq lbl_80362734
/* 80362718 0032BCD8  28 03 00 02 */	cmplwi r3, 2
/* 8036271C 0032BCDC  41 82 00 18 */	beq lbl_80362734
/* 80362720 0032BCE0  28 03 00 05 */	cmplwi r3, 5
/* 80362724 0032BCE4  41 82 00 10 */	beq lbl_80362734
/* 80362728 0032BCE8  28 03 00 01 */	cmplwi r3, 1
/* 8036272C 0032BCEC  41 82 00 10 */	beq lbl_8036273C
/* 80362730 0032BCF0  48 00 00 14 */	b lbl_80362744
lbl_80362734:
/* 80362734 0032BCF4  38 BF 00 00 */	addi r5, r31, 0
/* 80362738 0032BCF8  48 00 00 20 */	b lbl_80362758
lbl_8036273C:
/* 8036273C 0032BCFC  38 BF 00 30 */	addi r5, r31, 0x30
/* 80362740 0032BD00  48 00 00 18 */	b lbl_80362758
lbl_80362744:
/* 80362744 0032BD04  38 7F 00 60 */	addi r3, r31, 0x60
/* 80362748 0032BD08  4C C6 31 82 */	crclr 6
/* 8036274C 0032BD0C  4B FF 27 A5 */	bl OSReport
/* 80362750 0032BD10  3B A0 00 00 */	li r29, 0
/* 80362754 0032BD14  38 BF 00 00 */	addi r5, r31, 0
lbl_80362758:
/* 80362758 0032BD18  3C 60 CC 00 */	lis r3, 0xCC00206C@ha
/* 8036275C 0032BD1C  57 A0 10 3A */	slwi r0, r29, 2
/* 80362760 0032BD20  A0 83 20 6C */	lhz r4, 0xCC00206C@l(r3)
/* 80362764 0032BD24  7C 65 02 14 */	add r3, r5, r0
/* 80362768 0032BD28  7C 05 02 2E */	lhzx r0, r5, r0
/* 8036276C 0032BD2C  54 85 07 FE */	clrlwi r5, r4, 0x1f
/* 80362770 0032BD30  88 83 00 02 */	lbz r4, 2(r3)
/* 80362774 0032BD34  38 65 00 01 */	addi r3, r5, 1
/* 80362778 0032BD38  7C 63 01 D6 */	mullw r3, r3, r0
/* 8036277C 0032BD3C  4B FF F8 75 */	bl SISetXY
/* 80362780 0032BD40  7F C3 F3 78 */	mr r3, r30
/* 80362784 0032BD44  4B FF 62 6D */	bl OSRestoreInterrupts
/* 80362788 0032BD48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036278C 0032BD4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80362790 0032BD50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80362794 0032BD54  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80362798 0032BD58  7C 08 03 A6 */	mtlr r0
/* 8036279C 0032BD5C  38 21 00 20 */	addi r1, r1, 0x20
/* 803627A0 0032BD60  4E 80 00 20 */	blr 

.balign 16, 0
.global SIRefreshSamplingRate
SIRefreshSamplingRate:
/* 803627B0 0032BD70  80 6D BA 00 */	lwz r3, lbl_80667B80@sda21(r13)
/* 803627B4 0032BD74  4B FF FF 1C */	b SISetSamplingRate