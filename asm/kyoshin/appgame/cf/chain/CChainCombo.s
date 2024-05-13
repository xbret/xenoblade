.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__Q22cf11CChainComboFv, global
/* 80293D90 0025D350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80293D94 0025D354  7C 08 02 A6 */	mflr r0
/* 80293D98 0025D358  3C 80 80 54 */	lis r4, __vt__Q22cf11CChainCombo@ha
/* 80293D9C 0025D35C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293DA0 0025D360  38 84 C1 4C */	addi r4, r4, __vt__Q22cf11CChainCombo@l
/* 80293DA4 0025D364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293DA8 0025D368  7C 7F 1B 78 */	mr r31, r3
/* 80293DAC 0025D36C  90 83 00 14 */	stw r4, 0x14(r3)
/* 80293DB0 0025D370  38 63 00 0C */	addi r3, r3, 0xc
/* 80293DB4 0025D374  48 00 0A 71 */	bl func_80294824__FPv
/* 80293DB8 0025D378  38 00 00 00 */	li r0, 0
/* 80293DBC 0025D37C  90 1F 00 00 */	stw r0, 0(r31)
/* 80293DC0 0025D380  38 7F 00 0C */	addi r3, r31, 0xc
/* 80293DC4 0025D384  90 1F 00 04 */	stw r0, 4(r31)
/* 80293DC8 0025D388  98 1F 00 08 */	stb r0, 8(r31)
/* 80293DCC 0025D38C  48 00 0A 69 */	bl func_80294834__FPv
/* 80293DD0 0025D390  48 01 65 69 */	bl func_802AA338__Fv
/* 80293DD4 0025D394  7F E3 FB 78 */	mr r3, r31
/* 80293DD8 0025D398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80293DDC 0025D39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80293DE0 0025D3A0  7C 08 03 A6 */	mtlr r0
/* 80293DE4 0025D3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80293DE8 0025D3A8  4E 80 00 20 */	blr 
.endfn __ct__Q22cf11CChainComboFv

.fn func1__Q22cf11CChainComboFv, global
/* 80293DEC 0025D3AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80293DF0 0025D3B0  7C 08 02 A6 */	mflr r0
/* 80293DF4 0025D3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293DF8 0025D3B8  38 00 00 00 */	li r0, 0
/* 80293DFC 0025D3BC  90 03 00 00 */	stw r0, 0(r3)
/* 80293E00 0025D3C0  90 03 00 04 */	stw r0, 4(r3)
/* 80293E04 0025D3C4  98 03 00 08 */	stb r0, 8(r3)
/* 80293E08 0025D3C8  38 63 00 0C */	addi r3, r3, 0xc
/* 80293E0C 0025D3CC  48 00 0A 29 */	bl func_80294834__FPv
/* 80293E10 0025D3D0  48 01 65 29 */	bl func_802AA338__Fv
/* 80293E14 0025D3D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80293E18 0025D3D8  7C 08 03 A6 */	mtlr r0
/* 80293E1C 0025D3DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80293E20 0025D3E0  4E 80 00 20 */	blr 
.endfn func1__Q22cf11CChainComboFv

.fn func_80293E24, global
/* 80293E24 0025D3E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80293E28 0025D3E8  7C 08 02 A6 */	mflr r0
/* 80293E2C 0025D3EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80293E30 0025D3F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80293E34 0025D3F4  7C 7F 1B 78 */	mr r31, r3
/* 80293E38 0025D3F8  7C 83 23 78 */	mr r3, r4
/* 80293E3C 0025D3FC  81 84 00 00 */	lwz r12, 0(r4)
/* 80293E40 0025D400  81 8C 02 A4 */	lwz r12, 0x2a4(r12)
/* 80293E44 0025D404  7D 89 03 A6 */	mtctr r12
/* 80293E48 0025D408  4E 80 04 21 */	bctrl 
/* 80293E4C 0025D40C  80 63 00 50 */	lwz r3, 0x50(r3)
/* 80293E50 0025D410  80 1F 00 00 */	lwz r0, 0(r31)
/* 80293E54 0025D414  88 63 00 3E */	lbz r3, 0x3e(r3)
/* 80293E58 0025D418  2C 03 00 08 */	cmpwi r3, 8
/* 80293E5C 0025D41C  40 82 00 0C */	bne .L_80293E68
/* 80293E60 0025D420  38 00 00 00 */	li r0, 0
/* 80293E64 0025D424  48 00 00 24 */	b .L_80293E88
.L_80293E68:
/* 80293E68 0025D428  2C 00 00 08 */	cmpwi r0, 8
/* 80293E6C 0025D42C  40 82 00 0C */	bne .L_80293E78
/* 80293E70 0025D430  38 00 00 00 */	li r0, 0
/* 80293E74 0025D434  48 00 00 14 */	b .L_80293E88
.L_80293E78:
/* 80293E78 0025D438  7C 83 00 50 */	subf r4, r3, r0
/* 80293E7C 0025D43C  7C 00 18 50 */	subf r0, r0, r3
/* 80293E80 0025D440  7C 80 03 78 */	or r0, r4, r0
/* 80293E84 0025D444  54 00 0F FE */	srwi r0, r0, 0x1f
.L_80293E88:
/* 80293E88 0025D448  2C 00 00 00 */	cmpwi r0, 0
/* 80293E8C 0025D44C  41 82 00 0C */	beq .L_80293E98
/* 80293E90 0025D450  38 00 00 00 */	li r0, 0
/* 80293E94 0025D454  90 1F 00 04 */	stw r0, 4(r31)
.L_80293E98:
/* 80293E98 0025D458  90 7F 00 00 */	stw r3, 0(r31)
/* 80293E9C 0025D45C  4B EA AC 15 */	bl func_8013EAB0
/* 80293EA0 0025D460  80 7F 00 04 */	lwz r3, 4(r31)
/* 80293EA4 0025D464  2C 03 00 05 */	cmpwi r3, 5
/* 80293EA8 0025D468  40 80 00 30 */	bge .L_80293ED8
/* 80293EAC 0025D46C  38 83 00 01 */	addi r4, r3, 1
/* 80293EB0 0025D470  3C 00 43 30 */	lis r0, 0x4330
/* 80293EB4 0025D474  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 80293EB8 0025D478  90 61 00 0C */	stw r3, 0xc(r1)
/* 80293EBC 0025D47C  C8 22 B0 C0 */	lfd f1, double_8066B440@sda21(r2)
/* 80293EC0 0025D480  38 7F 00 0C */	addi r3, r31, 0xc
/* 80293EC4 0025D484  90 01 00 08 */	stw r0, 8(r1)
/* 80293EC8 0025D488  C8 01 00 08 */	lfd f0, 8(r1)
/* 80293ECC 0025D48C  90 9F 00 04 */	stw r4, 4(r31)
/* 80293ED0 0025D490  EC 20 08 28 */	fsubs f1, f0, f1
/* 80293ED4 0025D494  48 00 09 71 */	bl func_80294844
.L_80293ED8:
/* 80293ED8 0025D498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80293EDC 0025D49C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80293EE0 0025D4A0  7C 08 03 A6 */	mtlr r0
/* 80293EE4 0025D4A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80293EE8 0025D4A8  4E 80 00 20 */	blr 
.endfn func_80293E24

.fn func_80293EEC, global
/* 80293EEC 0025D4AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80293EF0 0025D4B0  7C 08 02 A6 */	mflr r0
/* 80293EF4 0025D4B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293EF8 0025D4B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293EFC 0025D4BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80293F00 0025D4C0  7C 7E 1B 78 */	mr r30, r3
/* 80293F04 0025D4C4  88 03 00 08 */	lbz r0, 8(r3)
/* 80293F08 0025D4C8  2C 00 00 00 */	cmpwi r0, 0
/* 80293F0C 0025D4CC  41 82 00 8C */	beq .L_80293F98
/* 80293F10 0025D4D0  81 84 3E 9C */	lwz r12, 0x3e9c(r4)
/* 80293F14 0025D4D4  38 64 3E 9C */	addi r3, r4, 0x3e9c
/* 80293F18 0025D4D8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80293F1C 0025D4DC  7D 89 03 A6 */	mtctr r12
/* 80293F20 0025D4E0  4E 80 04 21 */	bctrl 
/* 80293F24 0025D4E4  4B E2 31 69 */	bl func_800B708C
/* 80293F28 0025D4E8  4B ED BF 0D */	bl func_8016FE34
/* 80293F2C 0025D4EC  2C 03 00 00 */	cmpwi r3, 0
/* 80293F30 0025D4F0  7C 7F 1B 78 */	mr r31, r3
/* 80293F34 0025D4F4  41 82 00 6C */	beq .L_80293FA0
/* 80293F38 0025D4F8  38 60 00 64 */	li r3, 0x64
/* 80293F3C 0025D4FC  48 1A 1F C1 */	bl mtRand__2mlFi
/* 80293F40 0025D500  2C 03 00 05 */	cmpwi r3, 5
/* 80293F44 0025D504  40 80 00 10 */	bge .L_80293F54
/* 80293F48 0025D508  3C 60 80 54 */	lis r3, lbl_8053C140@ha
/* 80293F4C 0025D50C  80 83 C1 40 */	lwz r4, lbl_8053C140@l(r3)
/* 80293F50 0025D510  48 00 00 28 */	b .L_80293F78
.L_80293F54:
/* 80293F54 0025D514  2C 03 00 19 */	cmpwi r3, 0x19
/* 80293F58 0025D518  40 80 00 14 */	bge .L_80293F6C
/* 80293F5C 0025D51C  3C 60 80 54 */	lis r3, lbl_8053C140@ha
/* 80293F60 0025D520  38 63 C1 40 */	addi r3, r3, lbl_8053C140@l
/* 80293F64 0025D524  80 83 00 04 */	lwz r4, 4(r3)
/* 80293F68 0025D528  48 00 00 10 */	b .L_80293F78
.L_80293F6C:
/* 80293F6C 0025D52C  3C 60 80 54 */	lis r3, lbl_8053C140@ha
/* 80293F70 0025D530  38 63 C1 40 */	addi r3, r3, lbl_8053C140@l
/* 80293F74 0025D534  80 83 00 08 */	lwz r4, 8(r3)
.L_80293F78:
/* 80293F78 0025D538  81 9F 00 00 */	lwz r12, 0(r31)
/* 80293F7C 0025D53C  7F E3 FB 78 */	mr r3, r31
/* 80293F80 0025D540  81 8C 01 84 */	lwz r12, 0x184(r12)
/* 80293F84 0025D544  7D 89 03 A6 */	mtctr r12
/* 80293F88 0025D548  4E 80 04 21 */	bctrl 
/* 80293F8C 0025D54C  7F E4 FB 78 */	mr r4, r31
/* 80293F90 0025D550  38 60 00 BF */	li r3, 0xbf
/* 80293F94 0025D554  48 00 C8 61 */	bl func_802A07F4
.L_80293F98:
/* 80293F98 0025D558  38 00 00 00 */	li r0, 0
/* 80293F9C 0025D55C  98 1E 00 08 */	stb r0, 8(r30)
.L_80293FA0:
/* 80293FA0 0025D560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80293FA4 0025D564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80293FA8 0025D568  83 C1 00 08 */	lwz r30, 8(r1)
/* 80293FAC 0025D56C  7C 08 03 A6 */	mtlr r0
/* 80293FB0 0025D570  38 21 00 10 */	addi r1, r1, 0x10
/* 80293FB4 0025D574  4E 80 00 20 */	blr
.endfn func_80293EEC

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj cf_CChainCombo_typestr, global
	.asciz "cf::CChainCombo"
.endobj cf_CChainCombo_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8053C140, global
	.4byte 0x00000708
	.4byte 0x000004B0
	.4byte 0x00000258
.endobj lbl_8053C140


.obj __vt__Q22cf11CChainCombo, global
	.4byte __RTTI__Q22cf11CChainCombo
	.4byte 0
	.4byte __dt__Q22cf11CChainComboFv
.endobj __vt__Q22cf11CChainCombo

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__Q22cf11CChainCombo, global
	.4byte cf_CChainCombo_typestr
	.4byte 0
.endobj __RTTI__Q22cf11CChainCombo


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj double_8066B440, global
	.8byte 0x4330000080000000 #signed int to float constant
.endobj double_8066B440

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80019930", local
.hidden "@etb_80019930"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80019930"

.obj "@etb_80019938", local
.hidden "@etb_80019938"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80019938"

.obj "@etb_80019940", local
.hidden "@etb_80019940"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80019940"

.obj "@etb_80019948", local
.hidden "@etb_80019948"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80019948"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80031C64", local
.hidden "@eti_80031C64"
	.4byte __ct__Q22cf11CChainComboFv
	.4byte 0x0000005C
	.4byte "@etb_80019930"
.endobj "@eti_80031C64"

.obj "@eti_80031C70", local
.hidden "@eti_80031C70"
	.4byte func1__Q22cf11CChainComboFv
	.4byte 0x00000038
	.4byte "@etb_80019938"
.endobj "@eti_80031C70"

.obj "@eti_80031C7C", local
.hidden "@eti_80031C7C"
	.4byte func_80293E24
	.4byte 0x000000C8
	.4byte "@etb_80019940"
.endobj "@eti_80031C7C"

.obj "@eti_80031C88", local
.hidden "@eti_80031C88"
	.4byte func_80293EEC
	.4byte 0x000000CC
	.4byte "@etb_80019948"
.endobj "@eti_80031C88"
