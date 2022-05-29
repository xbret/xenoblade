.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global OSGetMEM1ArenaHi
OSGetMEM1ArenaHi:
/* 803539A0 0031CF60  80 6D B8 E0 */	lwz r3, lbl_80667A60@sda21(r13)
/* 803539A4 0031CF64  4E 80 00 20 */	blr 

.balign 16, 0
.global OSGetMEM2ArenaHi
OSGetMEM2ArenaHi:
/* 803539B0 0031CF70  80 6D B8 E4 */	lwz r3, lbl_80667A64@sda21(r13)
/* 803539B4 0031CF74  4E 80 00 20 */	blr 

.balign 16, 0
.global OSGetArenaHi
OSGetArenaHi:
/* 803539C0 0031CF80  80 6D B8 E0 */	lwz r3, lbl_80667A60@sda21(r13)
/* 803539C4 0031CF84  4E 80 00 20 */	blr 

.balign 16, 0
.global OSGetMEM1ArenaLo
OSGetMEM1ArenaLo:
/* 803539D0 0031CF90  80 6D 99 E0 */	lwz r3, lbl_80665B60@sda21(r13)
/* 803539D4 0031CF94  4E 80 00 20 */	blr 

.balign 16, 0
.global OSGetMEM2ArenaLo
OSGetMEM2ArenaLo:
/* 803539E0 0031CFA0  80 6D 99 E4 */	lwz r3, lbl_80665B64@sda21(r13)
/* 803539E4 0031CFA4  4E 80 00 20 */	blr 

.balign 16, 0
.global OSGetArenaLo
OSGetArenaLo:
/* 803539F0 0031CFB0  80 6D 99 E0 */	lwz r3, lbl_80665B60@sda21(r13)
/* 803539F4 0031CFB4  4E 80 00 20 */	blr 

.balign 16, 0
.global OSSetMEM1ArenaHi
OSSetMEM1ArenaHi:
/* 80353A00 0031CFC0  90 6D B8 E0 */	stw r3, lbl_80667A60@sda21(r13)
/* 80353A04 0031CFC4  4E 80 00 20 */	blr 

.balign 16, 0
.global OSSetMEM2ArenaHi
OSSetMEM2ArenaHi:
/* 80353A10 0031CFD0  90 6D B8 E4 */	stw r3, lbl_80667A64@sda21(r13)
/* 80353A14 0031CFD4  4E 80 00 20 */	blr 

.balign 16, 0
.global OSSetArenaHi
OSSetArenaHi:
/* 80353A20 0031CFE0  90 6D B8 E0 */	stw r3, lbl_80667A60@sda21(r13)
/* 80353A24 0031CFE4  4E 80 00 20 */	blr 

.balign 16, 0
.global OSSetMEM1ArenaLo
OSSetMEM1ArenaLo:
/* 80353A30 0031CFF0  90 6D 99 E0 */	stw r3, lbl_80665B60@sda21(r13)
/* 80353A34 0031CFF4  4E 80 00 20 */	blr 

.balign 16, 0
.global OSSetMEM2ArenaLo
OSSetMEM2ArenaLo:
/* 80353A40 0031D000  90 6D 99 E4 */	stw r3, lbl_80665B64@sda21(r13)
/* 80353A44 0031D004  4E 80 00 20 */	blr 

.balign 16, 0
.global OSSetArenaLo
OSSetArenaLo:
/* 80353A50 0031D010  90 6D 99 E0 */	stw r3, lbl_80665B60@sda21(r13)
/* 80353A54 0031D014  4E 80 00 20 */	blr 

.balign 16, 0
.global OSAllocFromMEM1ArenaLo
OSAllocFromMEM1ArenaLo:
/* 80353A60 0031D020  80 0D 99 E0 */	lwz r0, lbl_80665B60@sda21(r13)
/* 80353A64 0031D024  38 A4 FF FF */	addi r5, r4, -1
/* 80353A68 0031D028  7C A6 28 F8 */	nor r6, r5, r5
/* 80353A6C 0031D02C  7C A4 02 14 */	add r5, r4, r0
/* 80353A70 0031D030  38 05 FF FF */	addi r0, r5, -1
/* 80353A74 0031D034  7C C0 00 38 */	and r0, r6, r0
/* 80353A78 0031D038  7C 60 1A 14 */	add r3, r0, r3
/* 80353A7C 0031D03C  7C 83 22 14 */	add r4, r3, r4
/* 80353A80 0031D040  7C 03 03 78 */	mr r3, r0
/* 80353A84 0031D044  38 04 FF FF */	addi r0, r4, -1
/* 80353A88 0031D048  7C C0 00 38 */	and r0, r6, r0
/* 80353A8C 0031D04C  90 0D 99 E0 */	stw r0, lbl_80665B60@sda21(r13)
/* 80353A90 0031D050  4E 80 00 20 */	blr 
.balign 16, 0