.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global LSC_Init
LSC_Init:
/* 803918AC 0035AE6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803918B0 0035AE70  7C 08 02 A6 */	mflr r0
/* 803918B4 0035AE74  3C 80 80 52 */	lis r4, lsc_build@ha
/* 803918B8 0035AE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 803918BC 0035AE7C  38 61 00 08 */	addi r3, r1, 8
/* 803918C0 0035AE80  80 04 BA 58 */	lwz r0, lsc_build@l(r4)
/* 803918C4 0035AE84  48 00 0F 51 */	bl LSC_LockCrs
/* 803918C8 0035AE88  3C 60 80 5F */	lis r3, lsc_init_cnt@ha
/* 803918CC 0035AE8C  80 03 B3 78 */	lwz r0, lsc_init_cnt@l(r3)
/* 803918D0 0035AE90  2C 00 00 00 */	cmpwi r0, 0
/* 803918D4 0035AE94  40 82 00 24 */	bne .L_803918F8
/* 803918D8 0035AE98  3C 60 80 5F */	lis r3, lsc_obj@ha
/* 803918DC 0035AE9C  38 80 00 00 */	li r4, 0
/* 803918E0 0035AEA0  38 63 B3 80 */	addi r3, r3, lsc_obj@l
/* 803918E4 0035AEA4  38 A0 47 00 */	li r5, 0x4700
/* 803918E8 0035AEA8  4B C7 2A 69 */	bl memset
/* 803918EC 0035AEAC  38 60 00 00 */	li r3, 0
/* 803918F0 0035AEB0  38 80 00 00 */	li r4, 0
/* 803918F4 0035AEB4  4B FF FE B5 */	bl LSC_EntryErrFunc
.L_803918F8:
/* 803918F8 0035AEB8  3C A0 80 5F */	lis r5, lsc_init_cnt@ha
/* 803918FC 0035AEBC  38 61 00 08 */	addi r3, r1, 8
/* 80391900 0035AEC0  80 85 B3 78 */	lwz r4, lsc_init_cnt@l(r5)
/* 80391904 0035AEC4  38 04 00 01 */	addi r0, r4, 1
/* 80391908 0035AEC8  90 05 B3 78 */	stw r0, lsc_init_cnt@l(r5)
/* 8039190C 0035AECC  48 00 0F 0D */	bl LSC_UnlockCrs
/* 80391910 0035AED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80391914 0035AED4  7C 08 03 A6 */	mtlr r0
/* 80391918 0035AED8  38 21 00 10 */	addi r1, r1, 0x10
/* 8039191C 0035AEDC  4E 80 00 20 */	blr 

.global LSC_Finish
LSC_Finish:
/* 80391920 0035AEE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80391924 0035AEE4  7C 08 02 A6 */	mflr r0
/* 80391928 0035AEE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039192C 0035AEEC  38 61 00 08 */	addi r3, r1, 8
/* 80391930 0035AEF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80391934 0035AEF4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80391938 0035AEF8  48 00 0E DD */	bl LSC_LockCrs
/* 8039193C 0035AEFC  3C 60 80 5F */	lis r3, lsc_init_cnt@ha
/* 80391940 0035AF00  80 03 B3 78 */	lwz r0, lsc_init_cnt@l(r3)
/* 80391944 0035AF04  34 00 FF FF */	addic. r0, r0, -1
/* 80391948 0035AF08  90 03 B3 78 */	stw r0, lsc_init_cnt@l(r3)
/* 8039194C 0035AF0C  40 82 00 54 */	bne .L_803919A0
/* 80391950 0035AF10  3F E0 80 5F */	lis r31, lsc_obj@ha
/* 80391954 0035AF14  3B C0 00 00 */	li r30, 0
/* 80391958 0035AF18  3B FF B3 80 */	addi r31, r31, lsc_obj@l
.L_8039195C:
/* 8039195C 0035AF1C  88 1F 00 00 */	lbz r0, 0(r31)
/* 80391960 0035AF20  2C 00 00 01 */	cmpwi r0, 1
/* 80391964 0035AF24  40 82 00 0C */	bne .L_80391970
/* 80391968 0035AF28  7F E3 FB 78 */	mr r3, r31
/* 8039196C 0035AF2C  48 00 05 C1 */	bl LSC_Destroy
.L_80391970:
/* 80391970 0035AF30  3B DE 00 01 */	addi r30, r30, 1
/* 80391974 0035AF34  3B FF 02 38 */	addi r31, r31, 0x238
/* 80391978 0035AF38  2C 1E 00 20 */	cmpwi r30, 0x20
/* 8039197C 0035AF3C  41 80 FF E0 */	blt .L_8039195C
/* 80391980 0035AF40  3C 60 80 5F */	lis r3, lsc_obj@ha
/* 80391984 0035AF44  38 80 00 00 */	li r4, 0
/* 80391988 0035AF48  38 63 B3 80 */	addi r3, r3, lsc_obj@l
/* 8039198C 0035AF4C  38 A0 47 00 */	li r5, 0x4700
/* 80391990 0035AF50  4B C7 29 C1 */	bl memset
/* 80391994 0035AF54  38 60 00 00 */	li r3, 0
/* 80391998 0035AF58  38 80 00 00 */	li r4, 0
/* 8039199C 0035AF5C  4B FF FE 0D */	bl LSC_EntryErrFunc
.L_803919A0:
/* 803919A0 0035AF60  38 61 00 08 */	addi r3, r1, 8
/* 803919A4 0035AF64  48 00 0E 75 */	bl LSC_UnlockCrs
/* 803919A8 0035AF68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803919AC 0035AF6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803919B0 0035AF70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803919B4 0035AF74  7C 08 03 A6 */	mtlr r0
/* 803919B8 0035AF78  38 21 00 20 */	addi r1, r1, 0x20
/* 803919BC 0035AF7C  4E 80 00 20 */	blr 


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_8051BA28
lbl_8051BA28:
	.asciz "\nLSC/WII Ver.2.30 Build:Nov 13 2008 10:52:58\n"
	.balign 4


.global lsc_build
lsc_build:
	# ROM: 0x517B58
	.4byte lbl_8051BA28
	.4byte 0