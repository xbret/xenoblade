.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global func_802DAAE0
func_802DAAE0:
/* 802DAAE0 002A40A0  3C 80 80 54 */	lis r4, lbl_805435E0@ha
/* 802DAAE4 002A40A4  54 60 20 36 */	slwi r0, r3, 4
/* 802DAAE8 002A40A8  38 84 35 E0 */	addi r4, r4, lbl_805435E0@l
/* 802DAAEC 002A40AC  7C 64 02 14 */	add r3, r4, r0
/* 802DAAF0 002A40B0  4E 80 00 20 */	blr 
.balign 16, 0