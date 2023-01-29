.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn sinit_8042BE14, global
/* 8042BE14 003F53D4  38 0D BC A8 */	addi r0, r13, lbl_80667E28@sda21
/* 8042BE18 003F53D8  90 0D BC B0 */	stw r0, lbl_80667E30@sda21(r13)
/* 8042BE1C 003F53DC  4E 80 00 20 */	blr
.endfn sinit_8042BE14

# 0x804F5A38 - 0x804F5A3C
.section .ctors, "a"
.balign 4
	.4byte sinit_8042BE14

# 0x80667E28 - 0x80667E38
.section .sbss, "wa", @nobits
.balign 8
.global lbl_80667E28
lbl_80667E28:
	.skip 0x8
.global lbl_80667E30
lbl_80667E30:
	.skip 0x8
