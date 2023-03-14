.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_80435D28, global
/* 80435D28 003FF2E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80435D2C 003FF2EC  7C 08 02 A6 */	mflr r0
/* 80435D30 003FF2F0  C0 23 00 00 */	lfs f1, 0(r3)
/* 80435D34 003FF2F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80435D38 003FF2F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80435D3C 003FF2FC  3B E0 00 00 */	li r31, 0
/* 80435D40 003FF300  93 C1 00 08 */	stw r30, 8(r1)
/* 80435D44 003FF304  7C 7E 1B 78 */	mr r30, r3
/* 80435D48 003FF308  48 00 02 5D */	bl func_80435FA4__2mmFf
/* 80435D4C 003FF30C  2C 03 00 00 */	cmpwi r3, 0
/* 80435D50 003FF310  40 82 00 24 */	bne .L_80435D74
/* 80435D54 003FF314  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80435D58 003FF318  48 00 02 4D */	bl func_80435FA4__2mmFf
/* 80435D5C 003FF31C  2C 03 00 00 */	cmpwi r3, 0
/* 80435D60 003FF320  40 82 00 14 */	bne .L_80435D74
/* 80435D64 003FF324  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80435D68 003FF328  48 00 02 3D */	bl func_80435FA4__2mmFf
/* 80435D6C 003FF32C  2C 03 00 00 */	cmpwi r3, 0
/* 80435D70 003FF330  41 82 00 08 */	beq .L_80435D78
.L_80435D74:
/* 80435D74 003FF334  3B E0 00 01 */	li r31, 1
.L_80435D78:
/* 80435D78 003FF338  7F E3 FB 78 */	mr r3, r31
/* 80435D7C 003FF33C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80435D80 003FF340  83 C1 00 08 */	lwz r30, 8(r1)
/* 80435D84 003FF344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80435D88 003FF348  7C 08 03 A6 */	mtlr r0
/* 80435D8C 003FF34C  38 21 00 10 */	addi r1, r1, 0x10
/* 80435D90 003FF350  4E 80 00 20 */	blr
.endfn func_80435D28


.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C070", local
.hidden "@etb_8001C070"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_8001C070"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033C74", local
.hidden "@eti_80033C74"
	.4byte func_80435D28
	.4byte 0x0000006C
	.4byte "@etb_8001C070"
.endobj "@eti_80033C74"
