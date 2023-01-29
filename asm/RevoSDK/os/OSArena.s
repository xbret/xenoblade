.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16

.fn OSGetMEM1ArenaHi, global
/* 803539A0 0031CF60  80 6D B8 E0 */	lwz r3, __OSArenaHi@sda21(r13)
/* 803539A4 0031CF64  4E 80 00 20 */	blr
.endfn OSGetMEM1ArenaHi
/* 803539A8 0031CF68  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803539AC 0031CF6C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSGetMEM2ArenaHi, global
/* 803539B0 0031CF70  80 6D B8 E4 */	lwz r3, s_mem2ArenaHi@sda21(r13)
/* 803539B4 0031CF74  4E 80 00 20 */	blr
.endfn OSGetMEM2ArenaHi
/* 803539B8 0031CF78  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803539BC 0031CF7C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSGetArenaHi, global
/* 803539C0 0031CF80  80 6D B8 E0 */	lwz r3, __OSArenaHi@sda21(r13)
/* 803539C4 0031CF84  4E 80 00 20 */	blr
.endfn OSGetArenaHi
/* 803539C8 0031CF88  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803539CC 0031CF8C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSGetMEM1ArenaLo, global
/* 803539D0 0031CF90  80 6D 99 E0 */	lwz r3, __OSArenaLo@sda21(r13)
/* 803539D4 0031CF94  4E 80 00 20 */	blr
.endfn OSGetMEM1ArenaLo
/* 803539D8 0031CF98  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803539DC 0031CF9C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSGetMEM2ArenaLo, global
/* 803539E0 0031CFA0  80 6D 99 E4 */	lwz r3, s_mem2ArenaLo@sda21(r13)
/* 803539E4 0031CFA4  4E 80 00 20 */	blr
.endfn OSGetMEM2ArenaLo
/* 803539E8 0031CFA8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803539EC 0031CFAC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSGetArenaLo, global
/* 803539F0 0031CFB0  80 6D 99 E0 */	lwz r3, __OSArenaLo@sda21(r13)
/* 803539F4 0031CFB4  4E 80 00 20 */	blr
.endfn OSGetArenaLo
/* 803539F8 0031CFB8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 803539FC 0031CFBC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSSetMEM1ArenaHi, global
/* 80353A00 0031CFC0  90 6D B8 E0 */	stw r3, __OSArenaHi@sda21(r13)
/* 80353A04 0031CFC4  4E 80 00 20 */	blr
.endfn OSSetMEM1ArenaHi
/* 80353A08 0031CFC8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80353A0C 0031CFCC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSSetMEM2ArenaHi, global
/* 80353A10 0031CFD0  90 6D B8 E4 */	stw r3, s_mem2ArenaHi@sda21(r13)
/* 80353A14 0031CFD4  4E 80 00 20 */	blr
.endfn OSSetMEM2ArenaHi
/* 80353A18 0031CFD8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80353A1C 0031CFDC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSSetArenaHi, global
/* 80353A20 0031CFE0  90 6D B8 E0 */	stw r3, __OSArenaHi@sda21(r13)
/* 80353A24 0031CFE4  4E 80 00 20 */	blr
.endfn OSSetArenaHi
/* 80353A28 0031CFE8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80353A2C 0031CFEC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSSetMEM1ArenaLo, global
/* 80353A30 0031CFF0  90 6D 99 E0 */	stw r3, __OSArenaLo@sda21(r13)
/* 80353A34 0031CFF4  4E 80 00 20 */	blr
.endfn OSSetMEM1ArenaLo
/* 80353A38 0031CFF8  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80353A3C 0031CFFC  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSSetMEM2ArenaLo, global
/* 80353A40 0031D000  90 6D 99 E4 */	stw r3, s_mem2ArenaLo@sda21(r13)
/* 80353A44 0031D004  4E 80 00 20 */	blr
.endfn OSSetMEM2ArenaLo
/* 80353A48 0031D008  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80353A4C 0031D00C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSSetArenaLo, global
/* 80353A50 0031D010  90 6D 99 E0 */	stw r3, __OSArenaLo@sda21(r13)
/* 80353A54 0031D014  4E 80 00 20 */	blr
.endfn OSSetArenaLo
/* 80353A58 0031D018  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80353A5C 0031D01C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn OSAllocFromMEM1ArenaLo, global
/* 80353A60 0031D020  80 0D 99 E0 */	lwz r0, __OSArenaLo@sda21(r13)
/* 80353A64 0031D024  38 A4 FF FF */	addi r5, r4, -0x1
/* 80353A68 0031D028  7C A6 28 F8 */	nor r6, r5, r5
/* 80353A6C 0031D02C  7C A4 02 14 */	add r5, r4, r0
/* 80353A70 0031D030  38 05 FF FF */	addi r0, r5, -0x1
/* 80353A74 0031D034  7C C0 00 38 */	and r0, r6, r0
/* 80353A78 0031D038  7C 60 1A 14 */	add r3, r0, r3
/* 80353A7C 0031D03C  7C 83 22 14 */	add r4, r3, r4
/* 80353A80 0031D040  7C 03 03 78 */	mr r3, r0
/* 80353A84 0031D044  38 04 FF FF */	addi r0, r4, -0x1
/* 80353A88 0031D048  7C C0 00 38 */	and r0, r6, r0
/* 80353A8C 0031D04C  90 0D 99 E0 */	stw r0, __OSArenaLo@sda21(r13)
/* 80353A90 0031D050  4E 80 00 20 */	blr
.endfn OSAllocFromMEM1ArenaLo
/* 80353A94 0031D054  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80353A98 0031D058  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 80353A9C 0031D05C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.section .sdata, "wa" # 0x80664180 - 0x80666600

.balign 8

__OSArenaLo:
	.4byte 0xFFFFFFFF

s_mem2ArenaLo:
	.4byte 0xFFFFFFFF

.section .sbss, "wa", @nobits # 0x80666600 - 0x8066836F

.balign 8

__OSArenaHi:
	.skip 0x4

s_mem2ArenaHi:
	.skip 0x4
