.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global AHXDCD_SetupAtbl
AHXDCD_SetupAtbl:
/* 8038D9C8 00356F88  3C 80 80 5F */	lis r4, lbl_805E9B08@ha
/* 8038D9CC 00356F8C  90 64 9B 08 */	stw r3, lbl_805E9B08@l(r4)
/* 8038D9D0 00356F90  4E 80 00 20 */	blr 

.global AHXCMN_SetAlcInfTbl
AHXCMN_SetAlcInfTbl:
/* 8038D9D4 00356F94  3C A0 80 5F */	lis r5, lbl_805E9B08@ha
/* 8038D9D8 00356F98  38 60 00 1E */	li r3, 0x1e
/* 8038D9DC 00356F9C  80 05 9B 08 */	lwz r0, lbl_805E9B08@l(r5)
/* 8038D9E0 00356FA0  90 04 00 00 */	stw r0, 0(r4)
/* 8038D9E4 00356FA4  4E 80 00 20 */	blr 