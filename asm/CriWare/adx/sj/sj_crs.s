.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn SJCRS_Init, global
/* 803968CC 0035FE8C  3C 80 80 5F */	lis r4, sj_init_count@ha
/* 803968D0 0035FE90  80 64 5D 28 */	lwz r3, sj_init_count@l(r4)
/* 803968D4 0035FE94  38 03 00 01 */	addi r0, r3, 1
/* 803968D8 0035FE98  90 04 5D 28 */	stw r0, sj_init_count@l(r4)
/* 803968DC 0035FE9C  80 04 5D 28 */	lwz r0, sj_init_count@l(r4)
/* 803968E0 0035FEA0  2C 00 00 01 */	cmpwi r0, 1
/* 803968E4 0035FEA4  4C 82 00 20 */	bnelr 
/* 803968E8 0035FEA8  38 00 00 00 */	li r0, 0
/* 803968EC 0035FEAC  3C 60 80 5F */	lis r3, sjcrs_lvl@ha
/* 803968F0 0035FEB0  90 03 5D 20 */	stw r0, sjcrs_lvl@l(r3)
/* 803968F4 0035FEB4  4E 80 00 20 */	blr 
.endfn SJCRS_Init

.fn SJCRS_Finish, global
/* 803968F8 0035FEB8  3C 80 80 5F */	lis r4, sj_init_count@ha
/* 803968FC 0035FEBC  80 64 5D 28 */	lwz r3, sj_init_count@l(r4)
/* 80396900 0035FEC0  38 03 FF FF */	addi r0, r3, -1
/* 80396904 0035FEC4  90 04 5D 28 */	stw r0, sj_init_count@l(r4)
/* 80396908 0035FEC8  80 04 5D 28 */	lwz r0, sj_init_count@l(r4)
/* 8039690C 0035FECC  2C 00 00 00 */	cmpwi r0, 0
/* 80396910 0035FED0  4C 82 00 20 */	bnelr 
/* 80396914 0035FED4  38 00 00 00 */	li r0, 0
/* 80396918 0035FED8  3C 60 80 5F */	lis r3, sjcrs_lvl@ha
/* 8039691C 0035FEDC  90 03 5D 20 */	stw r0, sjcrs_lvl@l(r3)
/* 80396920 0035FEE0  4E 80 00 20 */	blr 
.endfn SJCRS_Finish

.fn SJCRS_Lock, global
/* 80396924 0035FEE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80396928 0035FEE8  7C 08 02 A6 */	mflr r0
/* 8039692C 0035FEEC  3C 60 80 5F */	lis r3, sjcrs_lvl@ha
/* 80396930 0035FEF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80396934 0035FEF4  80 03 5D 20 */	lwz r0, sjcrs_lvl@l(r3)
/* 80396938 0035FEF8  2C 00 00 00 */	cmpwi r0, 0
/* 8039693C 0035FEFC  40 82 00 10 */	bne .L_8039694C
/* 80396940 0035FF00  4B FC 20 71 */	bl OSDisableInterrupts
/* 80396944 0035FF04  3C 80 80 5F */	lis r4, sjcrs_msk@ha
/* 80396948 0035FF08  90 64 5D 24 */	stw r3, sjcrs_msk@l(r4)
.L_8039694C:
/* 8039694C 0035FF0C  3C 80 80 5F */	lis r4, sjcrs_lvl@ha
/* 80396950 0035FF10  80 64 5D 20 */	lwz r3, sjcrs_lvl@l(r4)
/* 80396954 0035FF14  38 03 00 01 */	addi r0, r3, 1
/* 80396958 0035FF18  90 04 5D 20 */	stw r0, sjcrs_lvl@l(r4)
/* 8039695C 0035FF1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80396960 0035FF20  7C 08 03 A6 */	mtlr r0
/* 80396964 0035FF24  38 21 00 10 */	addi r1, r1, 0x10
/* 80396968 0035FF28  4E 80 00 20 */	blr 
.endfn SJCRS_Lock

.fn SJCRS_Unlock, global
/* 8039696C 0035FF2C  3C 80 80 5F */	lis r4, sjcrs_lvl@ha
/* 80396970 0035FF30  80 64 5D 20 */	lwz r3, sjcrs_lvl@l(r4)
/* 80396974 0035FF34  38 03 FF FF */	addi r0, r3, -1
/* 80396978 0035FF38  90 04 5D 20 */	stw r0, sjcrs_lvl@l(r4)
/* 8039697C 0035FF3C  80 04 5D 20 */	lwz r0, sjcrs_lvl@l(r4)
/* 80396980 0035FF40  2C 00 00 00 */	cmpwi r0, 0
/* 80396984 0035FF44  4C 82 00 20 */	bnelr 
/* 80396988 0035FF48  3C 60 80 5F */	lis r3, sjcrs_msk@ha
/* 8039698C 0035FF4C  80 63 5D 24 */	lwz r3, sjcrs_msk@l(r3)
/* 80396990 0035FF50  4B FC 20 60 */	b OSRestoreInterrupts
/* 80396994 0035FF54  4E 80 00 20 */	blr 
.endfn SJCRS_Unlock

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj sjcrs_lvl, global
	.skip 0x4
.endobj sjcrs_lvl

.obj sjcrs_msk, global
	.skip 0x4
.endobj sjcrs_msk

.obj sj_init_count, global
	.skip 0x8
.endobj sj_init_count