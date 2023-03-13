.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.fn frame, local
/* 8003A0E0 000036A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A0E4 000036A4  7C 08 02 A6 */	mflr r0
/* 8003A0E8 000036A8  38 80 00 01 */	li r4, 1
/* 8003A0EC 000036AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A0F0 000036B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A0F4 000036B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A0F8 000036B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8003A0FC 000036BC  7C 7D 1B 78 */	mr r29, r3
/* 8003A100 000036C0  48 46 6B 79 */	bl vmArgPtrGet
/* 8003A104 000036C4  7C 64 1B 78 */	mr r4, r3
/* 8003A108 000036C8  38 60 00 02 */	li r3, 2
/* 8003A10C 000036CC  48 46 6C C1 */	bl vmArgIntGet
/* 8003A110 000036D0  7C 7E 1B 78 */	mr r30, r3
/* 8003A114 000036D4  7F A3 EB 78 */	mr r3, r29
/* 8003A118 000036D8  48 46 6E CD */	bl vmWkIdxGet
/* 8003A11C 000036DC  2C 03 00 00 */	cmpwi r3, 0
/* 8003A120 000036E0  7C 7F 1B 78 */	mr r31, r3
/* 8003A124 000036E4  40 82 00 30 */	bne .L_8003A154
/* 8003A128 000036E8  7F A3 EB 78 */	mr r3, r29
/* 8003A12C 000036EC  38 80 00 00 */	li r4, 0
/* 8003A130 000036F0  48 46 6E C5 */	bl vmWkGet
/* 8003A134 000036F4  57 C0 60 26 */	slwi r0, r30, 0xc
/* 8003A138 000036F8  90 03 00 00 */	stw r0, 0(r3)
/* 8003A13C 000036FC  7F A3 EB 78 */	mr r3, r29
/* 8003A140 00003700  38 9F 00 01 */	addi r4, r31, 1
/* 8003A144 00003704  48 46 6E A9 */	bl vmWkIdxSet
/* 8003A148 00003708  7F A3 EB 78 */	mr r3, r29
/* 8003A14C 0000370C  48 46 6E 8D */	bl vmWaitModeSet
/* 8003A150 00003710  48 00 00 28 */	b .L_8003A178
.L_8003A154:
/* 8003A154 00003714  7F A3 EB 78 */	mr r3, r29
/* 8003A158 00003718  38 80 00 00 */	li r4, 0
/* 8003A15C 0000371C  48 46 6E 99 */	bl vmWkGet
/* 8003A160 00003720  80 83 00 00 */	lwz r4, 0(r3)
/* 8003A164 00003724  34 04 F0 00 */	addic. r0, r4, -4096
/* 8003A168 00003728  90 03 00 00 */	stw r0, 0(r3)
/* 8003A16C 0000372C  40 81 00 0C */	ble .L_8003A178
/* 8003A170 00003730  7F A3 EB 78 */	mr r3, r29
/* 8003A174 00003734  48 46 6E 65 */	bl vmWaitModeSet
.L_8003A178:
/* 8003A178 00003738  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A17C 0000373C  38 60 00 00 */	li r3, 0
/* 8003A180 00003740  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A184 00003744  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8003A188 00003748  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A18C 0000374C  7C 08 03 A6 */	mtlr r0
/* 8003A190 00003750  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A194 00003754  4E 80 00 20 */	blr 
.endfn frame

.fn pluginWaitRegist, global
/* 8003A198 00003758  3C 60 80 4F */	lis r3, lbl_804F5D18@ha
/* 8003A19C 0000375C  3C 80 80 53 */	lis r4, lbl_80528478@ha
/* 8003A1A0 00003760  38 63 5D 18 */	addi r3, r3, lbl_804F5D18@l
/* 8003A1A4 00003764  38 84 84 78 */	addi r4, r4, lbl_80528478@l
/* 8003A1A8 00003768  48 46 69 E8 */	b vmPluginRegist
.endfn pluginWaitRegist


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8


.obj lbl_804F5D18, global
	.asciz "wait"
	.balign 4
.endobj lbl_804F5D18

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_80528478, global
	.4byte lbl_80668420
	.4byte frame
	.4byte 0
	.4byte 0
.endobj lbl_80528478


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_80668420, global
	.asciz "frame"
	.balign 4
.endobj lbl_80668420


.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800067F4", local
.hidden "@etb_800067F4"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_800067F4"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002114C", local
.hidden "@eti_8002114C"
	.4byte frame
	.4byte 0x000000B8
	.4byte "@etb_800067F4"
.endobj "@eti_8002114C"