.include "macros.inc"
.file "RevoSDK/os/OSIpc.o"

# 0x8035CFE0 - 0x8035D020
.text
.balign 16

.fn __OSGetIPCBufferHi, global
/* 8035CFE0 003265A0  80 6D B9 58 */	lwz r3, IpcBufferHi@sda21(r13)
/* 8035CFE4 003265A4  4E 80 00 20 */	blr
.endfn __OSGetIPCBufferHi
/* 8035CFE8 003265A8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8035CFEC 003265AC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn __OSGetIPCBufferLo, global
/* 8035CFF0 003265B0  80 6D 9A 18 */	lwz r3, IpcBufferLo@sda21(r13)
/* 8035CFF4 003265B4  4E 80 00 20 */	blr
.endfn __OSGetIPCBufferLo
/* 8035CFF8 003265B8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8035CFFC 003265BC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn __OSInitIPCBuffer, global
/* 8035D000 003265C0  3C 60 80 00 */	lis r3, 0x8000
/* 8035D004 003265C4  80 03 31 30 */	lwz r0, 0x3130(r3)
/* 8035D008 003265C8  90 0D 9A 18 */	stw r0, IpcBufferLo@sda21(r13)
/* 8035D00C 003265CC  80 03 31 34 */	lwz r0, 0x3134(r3)
/* 8035D010 003265D0  90 0D B9 58 */	stw r0, IpcBufferHi@sda21(r13)
/* 8035D014 003265D4  4E 80 00 20 */	blr
.endfn __OSInitIPCBuffer
/* 8035D018 003265D8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8035D01C 003265DC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

# 0x80665B98 - 0x80665BA0
.section .sdata, "wa"
.balign 8

.obj IpcBufferLo, local
	.4byte 0xFFFFFFFF
.endobj IpcBufferLo
	.4byte 0x00000000

# 0x80667AD8 - 0x80667AE0
.section .sbss, "wa", @nobits
.balign 8

.obj IpcBufferHi, local
	.skip 0x4
.endobj IpcBufferHi
	.skip 0x4
