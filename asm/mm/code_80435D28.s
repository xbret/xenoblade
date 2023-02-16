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
/* 80435D48 003FF308  48 00 02 5D */	bl func_80435FA4
/* 80435D4C 003FF30C  2C 03 00 00 */	cmpwi r3, 0
/* 80435D50 003FF310  40 82 00 24 */	bne .L_80435D74
/* 80435D54 003FF314  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80435D58 003FF318  48 00 02 4D */	bl func_80435FA4
/* 80435D5C 003FF31C  2C 03 00 00 */	cmpwi r3, 0
/* 80435D60 003FF320  40 82 00 14 */	bne .L_80435D74
/* 80435D64 003FF324  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80435D68 003FF328  48 00 02 3D */	bl func_80435FA4
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


.fn sinit_80435D94, local
/* 80435D94 003FF354  3D 00 80 66 */	lis r8, lbl_80659DB0@ha
/* 80435D98 003FF358  C0 22 C6 68 */	lfs f1, float_8066C9E8@sda21(r2)
/* 80435D9C 003FF35C  39 08 9D B0 */	addi r8, r8, lbl_80659DB0@l
/* 80435DA0 003FF360  C0 02 C6 6C */	lfs f0, float_8066C9EC@sda21(r2)
/* 80435DA4 003FF364  38 E8 00 00 */	addi r7, r8, 0
/* 80435DA8 003FF368  D0 28 00 00 */	stfs f1, 0(r8)
/* 80435DAC 003FF36C  38 C8 00 0C */	addi r6, r8, 0xc
/* 80435DB0 003FF370  38 A8 00 18 */	addi r5, r8, 0x18
/* 80435DB4 003FF374  38 88 00 24 */	addi r4, r8, 0x24
/* 80435DB8 003FF378  38 68 00 30 */	addi r3, r8, 0x30
/* 80435DBC 003FF37C  D0 27 00 04 */	stfs f1, 4(r7)
/* 80435DC0 003FF380  D0 27 00 08 */	stfs f1, 8(r7)
/* 80435DC4 003FF384  D0 08 00 0C */	stfs f0, 0xc(r8)
/* 80435DC8 003FF388  D0 26 00 04 */	stfs f1, 4(r6)
/* 80435DCC 003FF38C  D0 26 00 08 */	stfs f1, 8(r6)
/* 80435DD0 003FF390  D0 28 00 18 */	stfs f1, 0x18(r8)
/* 80435DD4 003FF394  D0 05 00 04 */	stfs f0, 4(r5)
/* 80435DD8 003FF398  D0 25 00 08 */	stfs f1, 8(r5)
/* 80435DDC 003FF39C  D0 28 00 24 */	stfs f1, 0x24(r8)
/* 80435DE0 003FF3A0  D0 24 00 04 */	stfs f1, 4(r4)
/* 80435DE4 003FF3A4  D0 04 00 08 */	stfs f0, 8(r4)
/* 80435DE8 003FF3A8  D0 08 00 30 */	stfs f0, 0x30(r8)
/* 80435DEC 003FF3AC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80435DF0 003FF3B0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80435DF4 003FF3B4  4E 80 00 20 */	blr
.endfn sinit_80435D94

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_80435D94

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8 #needed to align MTRand.o
.global float_8066C9E8
float_8066C9E8:
	.float 0


.global float_8066C9EC
float_8066C9EC:
	.float 1.0

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
