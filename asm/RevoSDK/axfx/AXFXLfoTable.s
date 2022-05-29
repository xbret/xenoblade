.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802DAAD0
func_802DAAD0:
/* 802DAAD0 002A4090  3C 60 80 54 */	lis r3, lbl_805433E0@ha
/* 802DAAD4 002A4094  38 63 33 E0 */	addi r3, r3, lbl_805433E0@l
/* 802DAAD8 002A4098  4E 80 00 20 */	blr 
.balign 16, 0