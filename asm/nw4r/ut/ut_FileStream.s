.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn Cancel__Q34nw4r2ut10FileStreamFv, global
/* 8042BDFC 003F53BC  4E 80 00 20 */	blr 
.endfn Cancel__Q34nw4r2ut10FileStreamFv

.fn CancelAsync__Q34nw4r2ut10FileStreamFPFlPQ34nw4r2ut8IOStreamPv_vPv, global
/* 8042BE00 003F53C0  38 60 00 01 */	li r3, 1
/* 8042BE04 003F53C4  4E 80 00 20 */	blr
.endfn CancelAsync__Q34nw4r2ut10FileStreamFPFlPQ34nw4r2ut8IOStreamPv_vPv

.fn "__sinit_\ut_FileStream_cpp", local
/* 8042BE08 003F53C8  38 0D BC A0 */	addi r0, r13, typeInfo__Q34nw4r2ut8IOStream@sda21
/* 8042BE0C 003F53CC  90 0D BC A8 */	stw r0, typeInfo__Q34nw4r2ut10FileStream@sda21(r13)
/* 8042BE10 003F53D0  4E 80 00 20 */	blr
.endfn "__sinit_\ut_FileStream_cpp"

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte "__sinit_\ut_FileStream_cpp"

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj typeInfo__Q34nw4r2ut10FileStream, global
	.skip 0x8
.endobj typeInfo__Q34nw4r2ut10FileStream
