.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_80185760, local
/* 80185760 0014ED20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80185764 0014ED24  7C 08 02 A6 */	mflr r0
/* 80185768 0014ED28  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018576C 0014ED2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80185770 0014ED30  7C 7F 1B 78 */	mr r31, r3
/* 80185774 0014ED34  4B F0 16 49 */	bl func_80086DBC
/* 80185778 0014ED38  90 61 00 0C */	stw r3, 0xc(r1)
/* 8018577C 0014ED3C  38 00 00 03 */	li r0, 3
/* 80185780 0014ED40  7F E3 FB 78 */	mr r3, r31
/* 80185784 0014ED44  38 81 00 08 */	addi r4, r1, 8
/* 80185788 0014ED48  98 01 00 08 */	stb r0, 8(r1)
/* 8018578C 0014ED4C  48 31 B8 11 */	bl vmRetValSet
/* 80185790 0014ED50  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80185794 0014ED54  38 60 00 01 */	li r3, 1
/* 80185798 0014ED58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018579C 0014ED5C  7C 08 03 A6 */	mtlr r0
/* 801857A0 0014ED60  38 21 00 20 */	addi r1, r1, 0x20
/* 801857A4 0014ED64  4E 80 00 20 */	blr 
.endfn func_80185760

.fn func_801857A8, local
/* 801857A8 0014ED68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801857AC 0014ED6C  7C 08 02 A6 */	mflr r0
/* 801857B0 0014ED70  90 01 00 24 */	stw r0, 0x24(r1)
/* 801857B4 0014ED74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801857B8 0014ED78  7C 7F 1B 78 */	mr r31, r3
/* 801857BC 0014ED7C  4B F0 15 E5 */	bl func_80086DA0
/* 801857C0 0014ED80  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 801857C4 0014ED84  38 00 00 03 */	li r0, 3
/* 801857C8 0014ED88  98 01 00 08 */	stb r0, 8(r1)
/* 801857CC 0014ED8C  7F E3 FB 78 */	mr r3, r31
/* 801857D0 0014ED90  38 81 00 08 */	addi r4, r1, 8
/* 801857D4 0014ED94  90 A1 00 0C */	stw r5, 0xc(r1)
/* 801857D8 0014ED98  48 31 B7 C5 */	bl vmRetValSet
/* 801857DC 0014ED9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801857E0 0014EDA0  38 60 00 01 */	li r3, 1
/* 801857E4 0014EDA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801857E8 0014EDA8  7C 08 03 A6 */	mtlr r0
/* 801857EC 0014EDAC  38 21 00 20 */	addi r1, r1, 0x20
/* 801857F0 0014EDB0  4E 80 00 20 */	blr 
.endfn func_801857A8

.fn pluginTimeRegist, global
/* 801857F4 0014EDB4  3C 60 80 50 */	lis r3, lbl_804FF040@ha
/* 801857F8 0014EDB8  3C 80 80 53 */	lis r4, lbl_80535B18@ha
/* 801857FC 0014EDBC  38 63 F0 40 */	addi r3, r3, lbl_804FF040@l
/* 80185800 0014EDC0  38 84 5B 18 */	addi r4, r4, lbl_80535B18@l
/* 80185804 0014EDC4  48 31 B3 8C */	b vmPluginRegist
.endfn pluginTimeRegist


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_804FF040, global
	.asciz "time"
	.balign 4
.endobj lbl_804FF040


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_80535B18, global
	.4byte lbl_8066A228
	.4byte func_80185760
	.4byte lbl_8066A230
	.4byte func_801857A8
	.4byte 0
	.4byte 0
.endobj lbl_80535B18


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_8066A228, global
	.asciz "range"
	.balign 4
.endobj lbl_8066A228

.obj lbl_8066A230, global
	.asciz "hour"
	.balign 4
.endobj lbl_8066A230



.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000E994", local
.hidden "@etb_8000E994"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000E994"

.obj "@etb_8000E99C", local
.hidden "@etb_8000E99C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000E99C"


.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800298C4", local
.hidden "@eti_800298C4"
	.4byte func_80185760
	.4byte 0x00000048
	.4byte "@etb_8000E994"
.endobj "@eti_800298C4"

.obj "@eti_800298D0", local
.hidden "@eti_800298D0"
	.4byte func_801857A8
	.4byte 0x0000004C
	.4byte "@etb_8000E99C"
.endobj "@eti_800298D0"
