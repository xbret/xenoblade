.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global DCT_GetVerStr
DCT_GetVerStr:
/* 803BB718 00384CD8  3C 60 80 52 */	lis r3, DCT_version_str@ha
/* 803BB71C 00384CDC  3C 80 80 61 */	lis r4, cri_verstr_ptr@ha
/* 803BB720 00384CE0  38 63 FE 30 */	addi r3, r3, DCT_version_str@l
/* 803BB724 00384CE4  90 64 A2 88 */	stw r3, cri_verstr_ptr@l(r4)
/* 803BB728 00384CE8  4E 80 00 20 */	blr 