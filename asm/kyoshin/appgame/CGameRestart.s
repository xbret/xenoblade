.include "macros.inc"	

.section .text, "ax"  # 0x80039220 - 0x804F5900

#this class is inside CGame.cpp

.fn func_80039E40, global
/* 80039E40 00003400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80039E44 00003404  7C 08 02 A6 */	mflr r0
/* 80039E48 00003408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80039E4C 0000340C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80039E50 00003410  7C 7F 1B 78 */	mr r31, r3
/* 80039E54 00003414  80 63 01 EC */	lwz r3, 0x1ec(r3)
/* 80039E58 00003418  48 3F E7 51 */	bl func_804385A8
/* 80039E5C 0000341C  2C 03 00 00 */	cmpwi r3, 0
/* 80039E60 00003420  40 82 00 1C */	bne .L_80039E7C
/* 80039E64 00003424  4B FF FB CD */	bl GameMain
/* 80039E68 00003428  7F E3 FB 78 */	mr r3, r31
/* 80039E6C 0000342C  38 80 00 00 */	li r4, 0
/* 80039E70 00003430  48 3F E0 81 */	bl func_80437EF0
/* 80039E74 00003434  38 00 00 00 */	li r0, 0
/* 80039E78 00003438  90 0D A4 8C */	stw r0, lbl_8066660C@sda21(r13)
.L_80039E7C:
/* 80039E7C 0000343C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80039E80 00003440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80039E84 00003444  7C 08 03 A6 */	mtlr r0
/* 80039E88 00003448  38 21 00 10 */	addi r1, r1, 0x10
/* 80039E8C 0000344C  4E 80 00 20 */	blr 
.endfn func_80039E40

.fn __dt___unnamed_CGame_cpp_CGameRestart, global
/* 80039E90 00003450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80039E94 00003454  7C 08 02 A6 */	mflr r0
/* 80039E98 00003458  2C 03 00 00 */	cmpwi r3, 0
/* 80039E9C 0000345C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80039EA0 00003460  BF C1 00 08 */	stmw r30, 8(r1)
/* 80039EA4 00003464  7C 7E 1B 78 */	mr r30, r3
/* 80039EA8 00003468  7C 9F 23 78 */	mr r31, r4
/* 80039EAC 0000346C  41 82 00 1C */	beq .L_80039EC8
/* 80039EB0 00003470  38 80 00 00 */	li r4, 0
/* 80039EB4 00003474  48 3F F0 15 */	bl __dt__CProc
/* 80039EB8 00003478  2C 1F 00 00 */	cmpwi r31, 0
/* 80039EBC 0000347C  40 81 00 0C */	ble .L_80039EC8
/* 80039EC0 00003480  7F C3 F3 78 */	mr r3, r30
/* 80039EC4 00003484  48 3F AD 69 */	bl __dl__FPv
.L_80039EC8:
/* 80039EC8 00003488  7F C3 F3 78 */	mr r3, r30
/* 80039ECC 0000348C  BB C1 00 08 */	lmw r30, 8(r1)
/* 80039ED0 00003490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80039ED4 00003494  7C 08 03 A6 */	mtlr r0
/* 80039ED8 00003498  38 21 00 10 */	addi r1, r1, 0x10
/* 80039EDC 0000349C  4E 80 00 20 */	blr
.endfn __dt___unnamed_CGame_cpp_CGameRestart

.fn sinit_80039EE0, local
/* 80039EE0 000034A0  3C 60 80 57 */	lis r3, lbl_80573C80@ha
/* 80039EE4 000034A4  38 63 3C 80 */	addi r3, r3, lbl_80573C80@l
/* 80039EE8 000034A8  48 00 00 04 */	b __ct__80039EEC
.endfn sinit_80039EE0

.fn __ct__80039EEC, global
/* 80039EEC 000034AC  38 00 00 00 */	li r0, 0
/* 80039EF0 000034B0  98 03 00 00 */	stb r0, 0(r3)
/* 80039EF4 000034B4  90 03 00 40 */	stw r0, 0x40(r3)
/* 80039EF8 000034B8  4E 80 00 20 */	blr
.endfn __ct__80039EEC

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_80039EE0

.section .bss, "wa"  # 0x80573C80 - 0x8066417B



.obj lbl_80573C80, global
	.skip 0x48
.endobj lbl_80573C80
    
.section .sbss, "wa"  # 0x80666600 - 0x8066836F

#.balign 8

.obj lbl_8066660C, global
	.skip 0x4
.endobj lbl_8066660C

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800067B4", local
.hidden "@etb_800067B4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800067B4"

.obj "@etb_800067BC", local
.hidden "@etb_800067BC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800067BC"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800210EC", local
.hidden "@eti_800210EC"
	.4byte func_80039E40
	.4byte 0x00000050
	.4byte "@etb_800067B4"
.endobj "@eti_800210EC"

.obj "@eti_800210F8", local
.hidden "@eti_800210F8"
	.4byte __dt___unnamed_CGame_cpp_CGameRestart
	.4byte 0x00000050
	.4byte "@etb_800067BC"
.endobj "@eti_800210F8"