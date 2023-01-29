.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_80479EDC, global
/* 80479EDC 0044349C  88 0D BF F8 */	lbz r0, lbl_80668178@sda21(r13)
/* 80479EE0 004434A0  7C 00 07 75 */	extsb. r0, r0
/* 80479EE4 004434A4  40 82 00 18 */	bne .L_80479EFC
/* 80479EE8 004434A8  3C 60 80 57 */	lis r3, __vt__mpfsys_MPFDrawBillboard@ha
/* 80479EEC 004434AC  38 00 00 01 */	li r0, 0x1
/* 80479EF0 004434B0  38 63 14 90 */	addi r3, r3, __vt__mpfsys_MPFDrawBillboard@l
/* 80479EF4 004434B4  90 6D BF FC */	stw r3, lbl_8066817C@sda21(r13)
/* 80479EF8 004434B8  98 0D BF F8 */	stb r0, lbl_80668178@sda21(r13)
.L_80479EFC:
/* 80479EFC 004434BC  38 6D BF FC */	addi r3, r13, lbl_8066817C@sda21
/* 80479F00 004434C0  4E 80 00 20 */	blr
.endfn func_80479EDC

# 0x80668178 - 0x80668180
.section .sbss, "wa", @nobits
.balign 8
.global lbl_80668178
lbl_80668178:
	.skip 0x4
.global lbl_8066817C
lbl_8066817C:
	.skip 0x4
