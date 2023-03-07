.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn ReadAsync__Q34nw4r2ut8IOStreamFPvUlPFlPQ34nw4r2ut8IOStreamPv_vPv, global
/* 8042BDD0 003F5390  38 60 00 00 */	li r3, 0
/* 8042BDD4 003F5394  4E 80 00 20 */	blr
.endfn ReadAsync__Q34nw4r2ut8IOStreamFPvUlPFlPQ34nw4r2ut8IOStreamPv_vPv

.fn Write__Q34nw4r2ut8IOStreamFPCvUl, global
/* 8042BDD8 003F5398  38 60 00 00 */	li r3, 0
/* 8042BDDC 003F539C  4E 80 00 20 */	blr
.endfn Write__Q34nw4r2ut8IOStreamFPCvUl

.fn WriteAsync__Q34nw4r2ut8IOStreamFPCvUlPFlPQ34nw4r2ut8IOStreamPv_vPv, global
/* 8042BDE0 003F53A0  38 60 00 00 */	li r3, 0
/* 8042BDE4 003F53A4  4E 80 00 20 */	blr
.endfn WriteAsync__Q34nw4r2ut8IOStreamFPCvUlPFlPQ34nw4r2ut8IOStreamPv_vPv

.fn IsBusy__Q34nw4r2ut8IOStreamCFv, global
/* 8042BDE8 003F53A8  38 60 00 00 */	li r3, 0
/* 8042BDEC 003F53AC  4E 80 00 20 */	blr
.endfn IsBusy__Q34nw4r2ut8IOStreamCFv

.fn "__sinit_\ut_IOStream_cpp", local
/* 8042BDF0 003F53B0  38 00 00 00 */	li r0, 0
/* 8042BDF4 003F53B4  90 0D BC A0 */	stw r0, typeInfo__Q34nw4r2ut8IOStream@sda21(r13)
/* 8042BDF8 003F53B8  4E 80 00 20 */	blr
.endfn "__sinit_\ut_IOStream_cpp"

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte "__sinit_\ut_IOStream_cpp"


.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj typeInfo__Q34nw4r2ut8IOStream, global
	.skip 0x8
.endobj typeInfo__Q34nw4r2ut8IOStream
