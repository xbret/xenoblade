.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __OSGetIPCBufferHi, global
/* 8035CFE0 003265A0  80 6D B9 58 */	lwz r3, IpcBufferHi@sda21(r13)
/* 8035CFE4 003265A4  4E 80 00 20 */	blr 
.endfn __OSGetIPCBufferHi

.balign 16, 0
.fn __OSGetIPCBufferLo, global
/* 8035CFF0 003265B0  80 6D 9A 18 */	lwz r3, IpcBufferLo@sda21(r13)
/* 8035CFF4 003265B4  4E 80 00 20 */	blr 
.endfn __OSGetIPCBufferLo

.balign 16, 0
.fn __OSInitIPCBuffer, global
/* 8035D000 003265C0  3C 60 80 00 */	lis r3, 0x80003130@ha
/* 8035D004 003265C4  80 03 31 30 */	lwz r0, 0x80003130@l(r3)
/* 8035D008 003265C8  90 0D 9A 18 */	stw r0, IpcBufferLo@sda21(r13)
/* 8035D00C 003265CC  80 03 31 34 */	lwz r0, 0x3134(r3)
/* 8035D010 003265D0  90 0D B9 58 */	stw r0, IpcBufferHi@sda21(r13)
/* 8035D014 003265D4  4E 80 00 20 */	blr 
.endfn __OSInitIPCBuffer

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj IpcBufferLo, local
	.4byte 0xFFFFFFFF
	.4byte 0
.endobj IpcBufferLo

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj IpcBufferHi, local
	.skip 0x8
.endobj IpcBufferHi
