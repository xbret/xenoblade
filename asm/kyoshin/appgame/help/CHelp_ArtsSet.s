.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_802B7D9C, global
/* 802B7D9C 0028135C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7DA0 00281360  7C 08 02 A6 */	mflr r0
/* 802B7DA4 00281364  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7DA8 00281368  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B7DAC 0028136C  7C 7F 1B 78 */	mr r31, r3
/* 802B7DB0 00281370  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802B7DB4 00281374  2C 00 00 00 */	cmpwi r0, 0x0
/* 802B7DB8 00281378  41 82 00 1C */	beq .L_802B7DD4
/* 802B7DBC 0028137C  4B DC A5 39 */	bl func_800822F4
/* 802B7DC0 00281380  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802B7DC4 00281384  7C 03 00 00 */	cmpw r3, r0
/* 802B7DC8 00281388  40 80 00 0C */	bge .L_802B7DD4
/* 802B7DCC 0028138C  38 60 00 00 */	li r3, 0x0
/* 802B7DD0 00281390  48 00 00 08 */	b .L_802B7DD8
.L_802B7DD4:
/* 802B7DD4 00281394  4B F7 77 5D */	bl func_8022F530
.L_802B7DD8:
/* 802B7DD8 00281398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7DDC 0028139C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B7DE0 002813A0  7C 08 03 A6 */	mtlr r0
/* 802B7DE4 002813A4  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7DE8 002813A8  4E 80 00 20 */	blr
.endfn func_802B7D9C

# 0x8001BD60 - 0x8001BD68
.section extab, "a"
.balign 4

.obj "@etb_8001BD60", local
.hidden "@etb_8001BD60"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BD60"

# 0x800338D8 - 0x800338E4
.section extabindex, "a"
.balign 4

.obj "@eti_800338D8", local
.hidden "@eti_800338D8"
	.4byte func_802B7D9C
	.4byte 0x00000050
	.4byte "@etb_8001BD60"
.endobj "@eti_800338D8"
