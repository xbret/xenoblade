.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802CB0BC
func_802CB0BC:
/* 802CB0BC 0029467C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CB0C0 00294680  7C 08 02 A6 */	mflr r0
/* 802CB0C4 00294684  3C 60 3F E9 */	lis r3, 0x3FE921FB@ha
/* 802CB0C8 00294688  C8 42 BA 18 */	lfd f2, lbl_8066BD98@sda21(r2)
/* 802CB0CC 0029468C  D8 21 00 08 */	stfd f1, 8(r1)
/* 802CB0D0 00294690  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CB0D4 00294694  38 03 21 FB */	addi r0, r3, 0x3FE921FB@l
/* 802CB0D8 00294698  80 61 00 08 */	lwz r3, 8(r1)
/* 802CB0DC 0029469C  54 63 00 7E */	clrlwi r3, r3, 1
/* 802CB0E0 002946A0  7C 03 00 00 */	cmpw r3, r0
/* 802CB0E4 002946A4  41 81 00 10 */	bgt lbl_802CB0F4
/* 802CB0E8 002946A8  38 60 00 00 */	li r3, 0
/* 802CB0EC 002946AC  4B FF F4 11 */	bl __kernel_sin
/* 802CB0F0 002946B0  48 00 00 88 */	b lbl_802CB178
lbl_802CB0F4:
/* 802CB0F4 002946B4  3C 00 7F F0 */	lis r0, 0x7ff0
/* 802CB0F8 002946B8  7C 03 00 00 */	cmpw r3, r0
/* 802CB0FC 002946BC  41 80 00 0C */	blt lbl_802CB108
/* 802CB100 002946C0  FC 21 08 28 */	fsub f1, f1, f1
/* 802CB104 002946C4  48 00 00 74 */	b lbl_802CB178
lbl_802CB108:
/* 802CB108 002946C8  38 61 00 10 */	addi r3, r1, 0x10
/* 802CB10C 002946CC  4B FF D8 A5 */	bl func_802C89B0
/* 802CB110 002946D0  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 802CB114 002946D4  41 82 00 18 */	beq lbl_802CB12C
/* 802CB118 002946D8  2C 00 00 01 */	cmpwi r0, 1
/* 802CB11C 002946DC  41 82 00 24 */	beq lbl_802CB140
/* 802CB120 002946E0  2C 00 00 02 */	cmpwi r0, 2
/* 802CB124 002946E4  41 82 00 2C */	beq lbl_802CB150
/* 802CB128 002946E8  48 00 00 40 */	b lbl_802CB168
lbl_802CB12C:
/* 802CB12C 002946EC  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 802CB130 002946F0  38 60 00 01 */	li r3, 1
/* 802CB134 002946F4  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 802CB138 002946F8  4B FF F3 C5 */	bl __kernel_sin
/* 802CB13C 002946FC  48 00 00 3C */	b lbl_802CB178
lbl_802CB140:
/* 802CB140 00294700  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 802CB144 00294704  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 802CB148 00294708  4B FF DB ED */	bl func_802C8D34
/* 802CB14C 0029470C  48 00 00 2C */	b lbl_802CB178
lbl_802CB150:
/* 802CB150 00294710  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 802CB154 00294714  38 60 00 01 */	li r3, 1
/* 802CB158 00294718  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 802CB15C 0029471C  4B FF F3 A1 */	bl __kernel_sin
/* 802CB160 00294720  FC 20 08 50 */	fneg f1, f1
/* 802CB164 00294724  48 00 00 14 */	b lbl_802CB178
lbl_802CB168:
/* 802CB168 00294728  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 802CB16C 0029472C  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 802CB170 00294730  4B FF DB C5 */	bl func_802C8D34
/* 802CB174 00294734  FC 20 08 50 */	fneg f1, f1
lbl_802CB178:
/* 802CB178 00294738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CB17C 0029473C  7C 08 03 A6 */	mtlr r0
/* 802CB180 00294740  38 21 00 20 */	addi r1, r1, 0x20
/* 802CB184 00294744  4E 80 00 20 */	blr 