.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn adxwii_err_dvd, global
/* 8039B290 00364850  7C 83 23 78 */	mr r3, r4
/* 8039B294 00364854  4B FE EF 84 */	b ADXERR_CallErrFunc1_
.endfn adxwii_err_dvd

.fn ADXWII_SetupDvdFs, global
/* 8039B298 00364858  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039B29C 0036485C  7C 08 02 A6 */	mflr r0
/* 8039B2A0 00364860  3C 80 80 52 */	lis r4, adxwiisdk_build@ha
/* 8039B2A4 00364864  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039B2A8 00364868  80 04 CD 84 */	lwz r0, adxwiisdk_build@l(r4)
/* 8039B2AC 0036486C  38 80 00 00 */	li r4, 0
/* 8039B2B0 00364870  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8039B2B4 00364874  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039B2B8 00364878  3F C0 80 3A */	lis r30, adxwii_err_dvd@ha
/* 8039B2BC 0036487C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8039B2C0 00364880  7C 7D 1B 78 */	mr r29, r3
/* 8039B2C4 00364884  38 7E B2 90 */	addi r3, r30, adxwii_err_dvd@l
/* 8039B2C8 00364888  4B FF 55 F1 */	bl cvFsEntryErrFunc
/* 8039B2CC 0036488C  3F E0 80 52 */	lis r31, lbl_8051CD88@ha
/* 8039B2D0 00364890  3C 80 80 39 */	lis r4, mfCiGetInterface@ha
/* 8039B2D4 00364894  38 7F CD 88 */	addi r3, r31, lbl_8051CD88@l
/* 8039B2D8 00364898  38 A0 00 00 */	li r5, 0
/* 8039B2DC 0036489C  38 84 28 1C */	addi r4, r4, mfCiGetInterface@l
/* 8039B2E0 003648A0  4B FF 42 D9 */	bl cvFsAddDev
/* 8039B2E4 003648A4  38 7E B2 90 */	addi r3, r30, adxwii_err_dvd@l
/* 8039B2E8 003648A8  38 80 00 00 */	li r4, 0
/* 8039B2EC 003648AC  4B FF 55 CD */	bl cvFsEntryErrFunc
/* 8039B2F0 003648B0  3B FF CD 88 */	addi r31, r31, lbl_8051CD88@l
/* 8039B2F4 003648B4  3C 80 80 39 */	lis r4, gcCiGetInterface@ha
/* 8039B2F8 003648B8  38 7F 00 04 */	addi r3, r31, 4
/* 8039B2FC 003648BC  38 A0 00 00 */	li r5, 0
/* 8039B300 003648C0  38 84 09 78 */	addi r4, r4, gcCiGetInterface@l
/* 8039B304 003648C4  4B FF 42 B5 */	bl cvFsAddDev
/* 8039B308 003648C8  38 7F 00 04 */	addi r3, r31, 4
/* 8039B30C 003648CC  4B FF 45 61 */	bl cvFsSetDefDev
/* 8039B310 003648D0  2C 1D 00 00 */	cmpwi r29, 0
/* 8039B314 003648D4  41 82 00 1C */	beq .L_8039B330
/* 8039B318 003648D8  80 DD 00 00 */	lwz r6, 0(r29)
/* 8039B31C 003648DC  38 60 00 00 */	li r3, 0
/* 8039B320 003648E0  38 80 00 00 */	li r4, 0
/* 8039B324 003648E4  38 A0 00 00 */	li r5, 0
/* 8039B328 003648E8  4B FF 64 75 */	bl gcCiSetRdMode
/* 8039B32C 003648EC  48 00 00 18 */	b .L_8039B344
.L_8039B330:
/* 8039B330 003648F0  38 60 00 00 */	li r3, 0
/* 8039B334 003648F4  38 80 00 00 */	li r4, 0
/* 8039B338 003648F8  38 A0 00 00 */	li r5, 0
/* 8039B33C 003648FC  38 C0 00 00 */	li r6, 0
/* 8039B340 00364900  4B FF 64 5D */	bl gcCiSetRdMode
.L_8039B344:
/* 8039B344 00364904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039B348 00364908  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039B34C 0036490C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039B350 00364910  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8039B354 00364914  7C 08 03 A6 */	mtlr r0
/* 8039B358 00364918  38 21 00 20 */	addi r1, r1, 0x20
/* 8039B35C 0036491C  4E 80 00 20 */	blr
.endfn ADXWII_SetupDvdFs

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_8051CD48
lbl_8051CD48:
	.asciz "\nADXWIISDK Ver.30Jul2008Patch02 Build:Nov 13 2008 10:53:01\n"


adxwiisdk_build:
	.4byte lbl_8051CD48


.global lbl_8051CD88
lbl_8051CD88:
	.asciz "MFS"
	.asciz "GCD"