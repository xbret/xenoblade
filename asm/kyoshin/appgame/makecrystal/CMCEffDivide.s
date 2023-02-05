.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn func_80225BCC, global
/* 80225BCC 001EF18C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225BD0 001EF190  7C 08 02 A6 */	mflr r0
/* 80225BD4 001EF194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225BD8 001EF198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80225BDC 001EF19C  7C 7F 1B 78 */	mr r31, r3
/* 80225BE0 001EF1A0  4B FF E1 61 */	bl func_80223D40
/* 80225BE4 001EF1A4  3C 80 80 54 */	lis r4, __vt__CMCEffDivide@ha
/* 80225BE8 001EF1A8  7F E3 FB 78 */	mr r3, r31
/* 80225BEC 001EF1AC  38 84 97 E0 */	addi r4, r4, __vt__CMCEffDivide@l
/* 80225BF0 001EF1B0  90 9F 00 00 */	stw r4, 0(r31)
/* 80225BF4 001EF1B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80225BF8 001EF1B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225BFC 001EF1BC  7C 08 03 A6 */	mtlr r0
/* 80225C00 001EF1C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80225C04 001EF1C4  4E 80 00 20 */	blr 
.endfn func_80225BCC

.fn func_80225C08, global
/* 80225C08 001EF1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225C0C 001EF1CC  7C 08 02 A6 */	mflr r0
/* 80225C10 001EF1D0  2C 03 00 00 */	cmpwi r3, 0
/* 80225C14 001EF1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225C18 001EF1D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80225C1C 001EF1DC  7C 7F 1B 78 */	mr r31, r3
/* 80225C20 001EF1E0  41 82 00 10 */	beq .L_80225C30
/* 80225C24 001EF1E4  2C 04 00 00 */	cmpwi r4, 0
/* 80225C28 001EF1E8  40 81 00 08 */	ble .L_80225C30
/* 80225C2C 001EF1EC  48 20 F0 01 */	bl __dl__FPv
.L_80225C30:
/* 80225C30 001EF1F0  7F E3 FB 78 */	mr r3, r31
/* 80225C34 001EF1F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80225C38 001EF1F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225C3C 001EF1FC  7C 08 03 A6 */	mtlr r0
/* 80225C40 001EF200  38 21 00 10 */	addi r1, r1, 0x10
/* 80225C44 001EF204  4E 80 00 20 */	blr 
.endfn func_80225C08

.fn func_80225C48, global
/* 80225C48 001EF208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225C4C 001EF20C  7C 08 02 A6 */	mflr r0
/* 80225C50 001EF210  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225C54 001EF214  BF C1 00 08 */	stmw r30, 8(r1)
/* 80225C58 001EF218  3F E0 80 50 */	lis r31, CMCEffCrystal_strpool@ha
/* 80225C5C 001EF21C  3B FF 4C FC */	addi r31, r31, CMCEffCrystal_strpool@l
/* 80225C60 001EF220  7C 7E 1B 78 */	mr r30, r3
/* 80225C64 001EF224  38 BF 03 77 */	addi r5, r31, 0x377
/* 80225C68 001EF228  80 83 00 08 */	lwz r4, 8(r3)
/* 80225C6C 001EF22C  38 63 00 0C */	addi r3, r3, 0xc
/* 80225C70 001EF230  4B F1 12 15 */	bl func_80136E84
/* 80225C74 001EF234  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80225C78 001EF238  38 9E 00 10 */	addi r4, r30, 0x10
/* 80225C7C 001EF23C  80 BE 00 08 */	lwz r5, 8(r30)
/* 80225C80 001EF240  38 DF 03 8C */	addi r6, r31, 0x38c
/* 80225C84 001EF244  4B F1 12 85 */	bl func_80136F08
/* 80225C88 001EF248  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80225C8C 001EF24C  38 A0 00 01 */	li r5, 1
/* 80225C90 001EF250  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80225C94 001EF254  81 83 00 00 */	lwz r12, 0(r3)
/* 80225C98 001EF258  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80225C9C 001EF25C  7D 89 03 A6 */	mtctr r12
/* 80225CA0 001EF260  4E 80 04 21 */	bctrl 
/* 80225CA4 001EF264  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80225CA8 001EF268  38 80 00 00 */	li r4, 0
/* 80225CAC 001EF26C  81 83 00 00 */	lwz r12, 0(r3)
/* 80225CB0 001EF270  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80225CB4 001EF274  7D 89 03 A6 */	mtctr r12
/* 80225CB8 001EF278  4E 80 04 21 */	bctrl 
/* 80225CBC 001EF27C  38 00 00 01 */	li r0, 1
/* 80225CC0 001EF280  98 1E 00 14 */	stb r0, 0x14(r30)
/* 80225CC4 001EF284  BB C1 00 08 */	lmw r30, 8(r1)
/* 80225CC8 001EF288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225CCC 001EF28C  7C 08 03 A6 */	mtlr r0
/* 80225CD0 001EF290  38 21 00 10 */	addi r1, r1, 0x10
/* 80225CD4 001EF294  4E 80 00 20 */	blr 
.endfn func_80225C48

.fn func_80225CD8, global
/* 80225CD8 001EF298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225CDC 001EF29C  7C 08 02 A6 */	mflr r0
/* 80225CE0 001EF2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225CE4 001EF2A4  4B FF E2 41 */	bl func_80223F24
/* 80225CE8 001EF2A8  38 60 00 8D */	li r3, 0x8d
/* 80225CEC 001EF2AC  4B F1 23 8D */	bl func_80138078
/* 80225CF0 001EF2B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225CF4 001EF2B4  7C 08 03 A6 */	mtlr r0
/* 80225CF8 001EF2B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80225CFC 001EF2BC  4E 80 00 20 */	blr 
.endfn func_80225CD8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80015184", local
.hidden "@etb_80015184"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80015184"

.obj "@etb_8001518C", local
.hidden "@etb_8001518C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001518C"

.obj "@etb_80015194", local
.hidden "@etb_80015194"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80015194"

.obj "@etb_8001519C", local
.hidden "@etb_8001519C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001519C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002E0F4", local
.hidden "@eti_8002E0F4"
	.4byte func_80225BCC
	.4byte 0x0000003C
	.4byte "@etb_80015184"
.endobj "@eti_8002E0F4"

.obj "@eti_8002E100", local
.hidden "@eti_8002E100"
	.4byte func_80225C08
	.4byte 0x00000040
	.4byte "@etb_8001518C"
.endobj "@eti_8002E100"

.obj "@eti_8002E10C", local
.hidden "@eti_8002E10C"
	.4byte func_80225C48
	.4byte 0x00000090
	.4byte "@etb_80015194"
.endobj "@eti_8002E10C"

.obj "@eti_8002E118", local
.hidden "@eti_8002E118"
	.4byte func_80225CD8
	.4byte 0x00000028
	.4byte "@etb_8001519C"
.endobj "@eti_8002E118"
