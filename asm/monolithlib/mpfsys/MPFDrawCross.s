.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_80479F04, global
/* 80479F04 004434C4  88 0D C0 00 */	lbz r0, lbl_80668180@sda21(r13)
/* 80479F08 004434C8  7C 00 07 75 */	extsb. r0, r0
/* 80479F0C 004434CC  40 82 00 18 */	bne .L_80479F24
/* 80479F10 004434D0  3C 60 80 57 */	lis r3, __vt__mpfsys_MPFDrawCross@ha
/* 80479F14 004434D4  38 00 00 01 */	li r0, 0x1
/* 80479F18 004434D8  38 63 14 70 */	addi r3, r3, __vt__mpfsys_MPFDrawCross@l
/* 80479F1C 004434DC  90 6D C0 04 */	stw r3, lbl_80668184@sda21(r13)
/* 80479F20 004434E0  98 0D C0 00 */	stb r0, lbl_80668180@sda21(r13)
.L_80479F24:
/* 80479F24 004434E4  38 6D C0 04 */	addi r3, r13, lbl_80668184@sda21
/* 80479F28 004434E8  4E 80 00 20 */	blr
.endfn func_80479F04

.section .sbss, "wa", @nobits # 0x80666600 - 0x8066836F

.balign 8
.global lbl_80668180
lbl_80668180:
	.skip 0x4
.global lbl_80668184
lbl_80668184:
	.skip 0x4
