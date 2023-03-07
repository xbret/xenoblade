.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn SFXA_Init, global
/* 803D5C18 0039F1D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D5C1C 0039F1DC  7C 08 02 A6 */	mflr r0
/* 803D5C20 0039F1E0  38 80 00 00 */	li r4, 0
/* 803D5C24 0039F1E4  38 A0 01 28 */	li r5, 0x128
/* 803D5C28 0039F1E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5C2C 0039F1EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D5C30 0039F1F0  3F E0 80 62 */	lis r31, sfxa_work@ha
/* 803D5C34 0039F1F4  38 7F D3 70 */	addi r3, r31, sfxa_work@l
/* 803D5C38 0039F1F8  4B C2 E7 19 */	bl memset
/* 803D5C3C 0039F1FC  38 7F D3 70 */	addi r3, r31, sfxa_work@l
/* 803D5C40 0039F200  38 00 00 08 */	li r0, 8
/* 803D5C44 0039F204  90 03 00 04 */	stw r0, 4(r3)
/* 803D5C48 0039F208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D5C4C 0039F20C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5C50 0039F210  7C 08 03 A6 */	mtlr r0
/* 803D5C54 0039F214  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5C58 0039F218  4E 80 00 20 */	blr 
.endfn SFXA_Init

.fn SFXA_Create, global
/* 803D5C5C 0039F21C  3C 60 80 62 */	lis r3, sfxa_work@ha
/* 803D5C60 0039F220  38 63 D3 70 */	addi r3, r3, sfxa_work@l
/* 803D5C64 0039F224  80 03 00 04 */	lwz r0, 4(r3)
/* 803D5C68 0039F228  38 63 00 08 */	addi r3, r3, 8
/* 803D5C6C 0039F22C  7C 09 03 A6 */	mtctr r0
/* 803D5C70 0039F230  2C 00 00 00 */	cmpwi r0, 0
/* 803D5C74 0039F234  40 81 00 1C */	ble .L_803D5C90
.L_803D5C78:
/* 803D5C78 0039F238  80 03 00 00 */	lwz r0, 0(r3)
/* 803D5C7C 0039F23C  2C 00 00 00 */	cmpwi r0, 0
/* 803D5C80 0039F240  40 82 00 08 */	bne .L_803D5C88
/* 803D5C84 0039F244  48 00 00 10 */	b .L_803D5C94
.L_803D5C88:
/* 803D5C88 0039F248  38 63 00 24 */	addi r3, r3, 0x24
/* 803D5C8C 0039F24C  42 00 FF EC */	bdnz .L_803D5C78
.L_803D5C90:
/* 803D5C90 0039F250  38 60 00 00 */	li r3, 0
.L_803D5C94:
/* 803D5C94 0039F254  2C 03 00 00 */	cmpwi r3, 0
/* 803D5C98 0039F258  4D 82 00 20 */	beqlr 
/* 803D5C9C 0039F25C  39 00 00 00 */	li r8, 0
/* 803D5CA0 0039F260  38 00 00 1F */	li r0, 0x1f
/* 803D5CA4 0039F264  91 03 00 08 */	stw r8, 8(r3)
/* 803D5CA8 0039F268  38 E0 00 64 */	li r7, 0x64
/* 803D5CAC 0039F26C  38 C0 00 01 */	li r6, 1
/* 803D5CB0 0039F270  38 80 00 7F */	li r4, 0x7f
/* 803D5CB4 0039F274  90 03 00 0C */	stw r0, 0xc(r3)
/* 803D5CB8 0039F278  38 00 00 FF */	li r0, 0xff
/* 803D5CBC 0039F27C  3C A0 80 62 */	lis r5, sfxa_work@ha
/* 803D5CC0 0039F280  90 E3 00 10 */	stw r7, 0x10(r3)
/* 803D5CC4 0039F284  90 C3 00 04 */	stw r6, 4(r3)
/* 803D5CC8 0039F288  99 03 00 14 */	stb r8, 0x14(r3)
/* 803D5CCC 0039F28C  98 83 00 15 */	stb r4, 0x15(r3)
/* 803D5CD0 0039F290  98 03 00 16 */	stb r0, 0x16(r3)
/* 803D5CD4 0039F294  80 85 D3 70 */	lwz r4, sfxa_work@l(r5)
/* 803D5CD8 0039F298  38 04 00 01 */	addi r0, r4, 1
/* 803D5CDC 0039F29C  90 05 D3 70 */	stw r0, sfxa_work@l(r5)
/* 803D5CE0 0039F2A0  90 C3 00 00 */	stw r6, 0(r3)
/* 803D5CE4 0039F2A4  4E 80 00 20 */	blr 
.endfn SFXA_Create

.fn SFXA_Destroy, global
/* 803D5CE8 0039F2A8  2C 03 00 00 */	cmpwi r3, 0
/* 803D5CEC 0039F2AC  4D 82 00 20 */	beqlr 
/* 803D5CF0 0039F2B0  38 00 00 00 */	li r0, 0
/* 803D5CF4 0039F2B4  3C 80 80 62 */	lis r4, sfxa_work@ha
/* 803D5CF8 0039F2B8  90 03 00 00 */	stw r0, 0(r3)
/* 803D5CFC 0039F2BC  80 64 D3 70 */	lwz r3, sfxa_work@l(r4)
/* 803D5D00 0039F2C0  38 03 FF FF */	addi r0, r3, -1
/* 803D5D04 0039F2C4  90 04 D3 70 */	stw r0, sfxa_work@l(r4)
/* 803D5D08 0039F2C8  4E 80 00 20 */	blr 
.endfn SFXA_Destroy

.fn SFXA_MakeAlpLumiTbl, global
/* 803D5D0C 0039F2CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D5D10 0039F2D0  7C 08 02 A6 */	mflr r0
/* 803D5D14 0039F2D4  7C A6 2B 78 */	mr r6, r5
/* 803D5D18 0039F2D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D5D1C 0039F2DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D5D20 0039F2E0  7C 7F 1B 78 */	mr r31, r3
/* 803D5D24 0039F2E4  81 83 00 18 */	lwz r12, 0x18(r3)
/* 803D5D28 0039F2E8  80 03 00 08 */	lwz r0, 8(r3)
/* 803D5D2C 0039F2EC  2C 0C 00 00 */	cmpwi r12, 0
/* 803D5D30 0039F2F0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 803D5D34 0039F2F4  80 A3 00 10 */	lwz r5, 0x10(r3)
/* 803D5D38 0039F2F8  41 82 00 10 */	beq .L_803D5D48
/* 803D5D3C 0039F2FC  7C 03 03 78 */	mr r3, r0
/* 803D5D40 0039F300  7D 89 03 A6 */	mtctr r12
/* 803D5D44 0039F304  4E 80 04 21 */	bctrl 
.L_803D5D48:
/* 803D5D48 0039F308  38 00 00 00 */	li r0, 0
/* 803D5D4C 0039F30C  90 1F 00 04 */	stw r0, 4(r31)
/* 803D5D50 0039F310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D5D54 0039F314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D5D58 0039F318  7C 08 03 A6 */	mtlr r0
/* 803D5D5C 0039F31C  38 21 00 10 */	addi r1, r1, 0x10
/* 803D5D60 0039F320  4E 80 00 20 */	blr 
.endfn SFXA_MakeAlpLumiTbl

.fn SFXA_MakeAlp3110Tbl, global
/* 803D5D64 0039F324  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 803D5D68 0039F328  88 83 00 14 */	lbz r4, 0x14(r3)
/* 803D5D6C 0039F32C  2C 0C 00 00 */	cmpwi r12, 0
/* 803D5D70 0039F330  88 03 00 15 */	lbz r0, 0x15(r3)
/* 803D5D74 0039F334  88 C3 00 16 */	lbz r6, 0x16(r3)
/* 803D5D78 0039F338  4D 82 00 20 */	beqlr 
/* 803D5D7C 0039F33C  7C A3 2B 78 */	mr r3, r5
/* 803D5D80 0039F340  7C 05 03 78 */	mr r5, r0
/* 803D5D84 0039F344  7D 89 03 A6 */	mtctr r12
/* 803D5D88 0039F348  4E 80 04 20 */	bctr 
/* 803D5D8C 0039F34C  4E 80 00 20 */	blr 
.endfn SFXA_MakeAlp3110Tbl

.fn SFXA_MakeAlp3211Tbl, global
/* 803D5D90 0039F350  81 83 00 20 */	lwz r12, 0x20(r3)
/* 803D5D94 0039F354  88 83 00 14 */	lbz r4, 0x14(r3)
/* 803D5D98 0039F358  2C 0C 00 00 */	cmpwi r12, 0
/* 803D5D9C 0039F35C  88 03 00 15 */	lbz r0, 0x15(r3)
/* 803D5DA0 0039F360  88 C3 00 16 */	lbz r6, 0x16(r3)
/* 803D5DA4 0039F364  4D 82 00 20 */	beqlr 
/* 803D5DA8 0039F368  7C A3 2B 78 */	mr r3, r5
/* 803D5DAC 0039F36C  7C 05 03 78 */	mr r5, r0
/* 803D5DB0 0039F370  7D 89 03 A6 */	mtctr r12
/* 803D5DB4 0039F374  4E 80 04 20 */	bctr 
/* 803D5DB8 0039F378  4E 80 00 20 */	blr 
.endfn SFXA_MakeAlp3211Tbl

.fn SFXA_IsNeedUpdateLumiTbl, global
/* 803D5DBC 0039F37C  80 63 00 04 */	lwz r3, 4(r3)
/* 803D5DC0 0039F380  4E 80 00 20 */	blr 
.endfn SFXA_IsNeedUpdateLumiTbl

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj sfxa_work, global
	.skip 0x128
.endobj sfxa_work