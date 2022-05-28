.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802BEC3C
func_802BEC3C:
/* 802BEC3C 002881FC  3C 60 80 2C */	lis r3, func_802BC2CC@ha
/* 802BEC40 00288200  38 63 C2 CC */	addi r3, r3, func_802BC2CC@l
/* 802BEC44 00288204  90 6D B3 C4 */	stw r3, lbl_80667544@sda21(r13)
/* 802BEC48 00288208  4E 80 00 20 */	blr
