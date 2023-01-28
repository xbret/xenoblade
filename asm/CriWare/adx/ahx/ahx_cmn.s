.include "macros.inc"
.file "CriWare/adx/ahx/ahx_cmn.o"

# 0x8038D9C8 - 0x8038D9E8
.text
.balign 4

.fn AHXDCD_SetupAtbl, global
/* 8038D9C8 00356F88  3C 80 80 5F */	lis r4, lbl_805E9B08@ha
/* 8038D9CC 00356F8C  90 64 9B 08 */	stw r3, lbl_805E9B08@l(r4)
/* 8038D9D0 00356F90  4E 80 00 20 */	blr
.endfn AHXDCD_SetupAtbl

.fn AHXCMN_SetAlcInfTbl, global
/* 8038D9D4 00356F94  3C A0 80 5F */	lis r5, lbl_805E9B08@ha
/* 8038D9D8 00356F98  38 60 00 1E */	li r3, 0x1e
/* 8038D9DC 00356F9C  80 05 9B 08 */	lwz r0, lbl_805E9B08@l(r5)
/* 8038D9E0 00356FA0  90 04 00 00 */	stw r0, 0x0(r4)
/* 8038D9E4 00356FA4  4E 80 00 20 */	blr
.endfn AHXCMN_SetAlcInfTbl

# 0x805E9B08 - 0x805E9B10
.section .bss, "wa", @nobits
.balign 8
.sym lbl_805E9B08, global
	.skip 0x8
