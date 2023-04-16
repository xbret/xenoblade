.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.fn sinit_8042BE14, local
/* 8042BE14 003F53D4  38 0D BC A8 */	addi r0, r13, typeInfo__Q34nw4r2ut10FileStream@sda21
/* 8042BE18 003F53D8  90 0D BC B0 */	stw r0, typeInfo__Q34nw4r2ut13DvdFileStream@sda21(r13)
/* 8042BE1C 003F53DC  4E 80 00 20 */	blr 
.endfn sinit_8042BE14

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte sinit_8042BE14

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj typeInfo__Q34nw4r2ut13DvdFileStream, global
	.skip 0x8
.endobj typeInfo__Q34nw4r2ut13DvdFileStream
