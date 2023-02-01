.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

#Seek__Q34nw4r2ut10FileStreamFlUl or Cancel__Q34nw4r2ut10FileStreamFv
.fn func_8042BDFC, global
/* 8042BDFC 003F53BC  4E 80 00 20 */	blr 
.endfn func_8042BDFC

#GetBufferAlign__Q34nw4r2ut8IOStreamCFv, GetSizeAlign__Q34nw4r2ut8IOStreamCFv or GetOffsetAlign__Q34nw4r2ut8IOStreamCFv
.fn func_8042BE00, global
/* 8042BE00 003F53C0  38 60 00 01 */	li r3, 1
/* 8042BE04 003F53C4  4E 80 00 20 */	blr
.endfn func_8042BE00

.fn sinit_8042BE08, local
/* 8042BE08 003F53C8  38 0D BC A0 */	addi r0, r13, lbl_80667E20@sda21
/* 8042BE0C 003F53CC  90 0D BC A8 */	stw r0, lbl_80667E28@sda21(r13)
/* 8042BE10 003F53D0  4E 80 00 20 */	blr
.endfn sinit_8042BE08

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte sinit_8042BE08

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_80667E20
lbl_80667E20:
	.skip 0x8