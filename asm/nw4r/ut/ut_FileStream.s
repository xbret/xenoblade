.include "macros.inc"
.file "nw4r/ut/ut_FileStream.o"

# 0x8042BDFC - 0x8042BE14
.text
.balign 4

.fn fn_8042BDFC, global
/* 8042BDFC 003F53BC  4E 80 00 20 */	blr
.endfn fn_8042BDFC

.fn fn_8042BE00, global
/* 8042BE00 003F53C0  38 60 00 01 */	li r3, 0x1
/* 8042BE04 003F53C4  4E 80 00 20 */	blr
.endfn fn_8042BE00

.fn sinit_8042BE08, global
/* 8042BE08 003F53C8  38 0D BC A0 */	addi r0, r13, lbl_80667E20@sda21
/* 8042BE0C 003F53CC  90 0D BC A8 */	stw r0, lbl_80667E28@sda21(r13)
/* 8042BE10 003F53D0  4E 80 00 20 */	blr
.endfn sinit_8042BE08

# 0x804F5A34 - 0x804F5A38
.section .ctors, "a"
.balign 4
	.4byte sinit_8042BE08

# 0x80667E20 - 0x80667E28
.section .sbss, "wa", @nobits
.balign 8
.sym lbl_80667E20, global
	.skip 0x8
