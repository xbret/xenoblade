.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_8042BDD0, global
/* 8042BDD0 003F5390  38 60 00 00 */	li r3, 0x0
/* 8042BDD4 003F5394  4E 80 00 20 */	blr
.endfn func_8042BDD0

.fn func_8042BDD8, global
/* 8042BDD8 003F5398  38 60 00 00 */	li r3, 0x0
/* 8042BDDC 003F539C  4E 80 00 20 */	blr
.endfn func_8042BDD8

.fn func_8042BDE0, global
/* 8042BDE0 003F53A0  38 60 00 00 */	li r3, 0x0
/* 8042BDE4 003F53A4  4E 80 00 20 */	blr
.endfn func_8042BDE0

.fn func_8042BDE8, global
/* 8042BDE8 003F53A8  38 60 00 00 */	li r3, 0x0
/* 8042BDEC 003F53AC  4E 80 00 20 */	blr
.endfn func_8042BDE8

.fn sinit_8042BDF0, global
/* 8042BDF0 003F53B0  38 00 00 00 */	li r0, 0x0
/* 8042BDF4 003F53B4  90 0D BC A0 */	stw r0, lbl_80667E20@sda21(r13)
/* 8042BDF8 003F53B8  4E 80 00 20 */	blr
.endfn sinit_8042BDF0

# 0x804F5A30 - 0x804F5A34
.section .ctors, "a"
.balign 4
	.4byte sinit_8042BDF0
