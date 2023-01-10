.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __ct__cf__sArtsSet
__ct__cf__sArtsSet:
/* 80153BEC 0011D1AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80153BF0 0011D1B0  7C 08 02 A6 */	mflr r0
/* 80153BF4 0011D1B4  3D 80 80 53 */	lis r12, __vt__cf__sArtsSet@ha
/* 80153BF8 0011D1B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80153BFC 0011D1BC  39 8C 2D A8 */	addi r12, r12, __vt__cf__sArtsSet@l
/* 80153C00 0011D1C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80153C04 0011D1C4  7C 7F 1B 78 */	mr r31, r3
/* 80153C08 0011D1C8  91 83 00 34 */	stw r12, 0x34(r3)
/* 80153C0C 0011D1CC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80153C10 0011D1D0  7D 89 03 A6 */	mtctr r12
/* 80153C14 0011D1D4  4E 80 04 21 */	bctrl 
/* 80153C18 0011D1D8  7F E3 FB 78 */	mr r3, r31
/* 80153C1C 0011D1DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80153C20 0011D1E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80153C24 0011D1E4  7C 08 03 A6 */	mtlr r0
/* 80153C28 0011D1E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80153C2C 0011D1EC  4E 80 00 20 */	blr 

.global func_80153C30
func_80153C30:
/* 80153C30 0011D1F0  38 00 00 00 */	li r0, 0
/* 80153C34 0011D1F4  B0 03 00 00 */	sth r0, 0(r3)
/* 80153C38 0011D1F8  38 80 00 00 */	li r4, 0
/* 80153C3C 0011D1FC  38 A0 00 30 */	li r5, 0x30
/* 80153C40 0011D200  38 63 00 04 */	addi r3, r3, 4
/* 80153C44 0011D204  4B EB 07 0C */	b memset

.global func_80153C48
func_80153C48:
/* 80153C48 0011D208  54 A5 23 36 */	rlwinm r5, r5, 4, 0xc, 0x1b
/* 80153C4C 0011D20C  54 C0 0B FC */	rlwinm r0, r6, 1, 0xf, 0x1e
/* 80153C50 0011D210  7C 63 2A 14 */	add r3, r3, r5
/* 80153C54 0011D214  7C 63 02 14 */	add r3, r3, r0
/* 80153C58 0011D218  B0 83 00 04 */	sth r4, 4(r3)
/* 80153C5C 0011D21C  4E 80 00 20 */	blr 

.global func_80153C60
func_80153C60:
/* 80153C60 0011D220  54 84 20 36 */	slwi r4, r4, 4
/* 80153C64 0011D224  54 A0 08 3C */	slwi r0, r5, 1
/* 80153C68 0011D228  7C 63 22 14 */	add r3, r3, r4
/* 80153C6C 0011D22C  7C 63 02 14 */	add r3, r3, r0
/* 80153C70 0011D230  A0 63 00 04 */	lhz r3, 4(r3)
/* 80153C74 0011D234  4E 80 00 20 */	blr 

.global func_80153C78
func_80153C78:
/* 80153C78 0011D238  54 A0 E8 04 */	slwi r0, r5, 0x1d
/* 80153C7C 0011D23C  54 A6 0F FE */	srwi r6, r5, 0x1f
/* 80153C80 0011D240  7C A5 1E 70 */	srawi r5, r5, 3
/* 80153C84 0011D244  7C 06 00 50 */	subf r0, r6, r0
/* 80153C88 0011D248  7C A5 01 94 */	addze r5, r5
/* 80153C8C 0011D24C  54 00 18 3E */	rotlwi r0, r0, 3
/* 80153C90 0011D250  54 A5 20 36 */	slwi r5, r5, 4
/* 80153C94 0011D254  7C 00 32 14 */	add r0, r0, r6
/* 80153C98 0011D258  7C 63 2A 14 */	add r3, r3, r5
/* 80153C9C 0011D25C  54 00 08 3C */	slwi r0, r0, 1
/* 80153CA0 0011D260  7C 63 02 14 */	add r3, r3, r0
/* 80153CA4 0011D264  B0 83 00 04 */	sth r4, 4(r3)
/* 80153CA8 0011D268  4E 80 00 20 */	blr 

.global func_80153CAC
func_80153CAC:
/* 80153CAC 0011D26C  54 80 E8 04 */	slwi r0, r4, 0x1d
/* 80153CB0 0011D270  54 85 0F FE */	srwi r5, r4, 0x1f
/* 80153CB4 0011D274  7C 84 1E 70 */	srawi r4, r4, 3
/* 80153CB8 0011D278  7C 05 00 50 */	subf r0, r5, r0
/* 80153CBC 0011D27C  7C 84 01 94 */	addze r4, r4
/* 80153CC0 0011D280  54 00 18 3E */	rotlwi r0, r0, 3
/* 80153CC4 0011D284  54 84 20 36 */	slwi r4, r4, 4
/* 80153CC8 0011D288  7C 00 2A 14 */	add r0, r0, r5
/* 80153CCC 0011D28C  7C 63 22 14 */	add r3, r3, r4
/* 80153CD0 0011D290  54 00 08 3C */	slwi r0, r0, 1
/* 80153CD4 0011D294  7C 63 02 14 */	add r3, r3, r0
/* 80153CD8 0011D298  A0 63 00 04 */	lhz r3, 4(r3)
/* 80153CDC 0011D29C  4E 80 00 20 */	blr 

.global func_80153CE0
func_80153CE0:
/* 80153CE0 0011D2A0  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80153CE4 0011D2A4  54 80 08 3C */	slwi r0, r4, 1
/* 80153CE8 0011D2A8  54 A4 20 36 */	slwi r4, r5, 4
/* 80153CEC 0011D2AC  7C 63 22 14 */	add r3, r3, r4
/* 80153CF0 0011D2B0  7C 63 02 14 */	add r3, r3, r0
/* 80153CF4 0011D2B4  A0 63 00 04 */	lhz r3, 4(r3)
/* 80153CF8 0011D2B8  4E 80 00 20 */	blr 

.global func_80153CFC
func_80153CFC:
/* 80153CFC 0011D2BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80153D00 0011D2C0  7C 08 02 A6 */	mflr r0
/* 80153D04 0011D2C4  38 80 00 00 */	li r4, 0
/* 80153D08 0011D2C8  38 A0 00 30 */	li r5, 0x30
/* 80153D0C 0011D2CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80153D10 0011D2D0  38 00 00 00 */	li r0, 0
/* 80153D14 0011D2D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80153D18 0011D2D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80153D1C 0011D2DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80153D20 0011D2E0  93 81 00 10 */	stw r28, 0x10(r1)
/* 80153D24 0011D2E4  7C 7C 1B 78 */	mr r28, r3
/* 80153D28 0011D2E8  B0 03 00 00 */	sth r0, 0(r3)
/* 80153D2C 0011D2EC  38 63 00 04 */	addi r3, r3, 4
/* 80153D30 0011D2F0  4B EB 06 21 */	bl memset
/* 80153D34 0011D2F4  3B FC 00 38 */	addi r31, r28, 0x38
/* 80153D38 0011D2F8  3B A0 00 00 */	li r29, 0
.L_80153D3C:
/* 80153D3C 0011D2FC  7F FE FB 78 */	mr r30, r31
/* 80153D40 0011D300  3B 80 00 00 */	li r28, 0
.L_80153D44:
/* 80153D44 0011D304  81 9E 00 84 */	lwz r12, 0x84(r30)
/* 80153D48 0011D308  7F C3 F3 78 */	mr r3, r30
/* 80153D4C 0011D30C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80153D50 0011D310  7D 89 03 A6 */	mtctr r12
/* 80153D54 0011D314  4E 80 04 21 */	bctrl 
/* 80153D58 0011D318  3B 9C 00 01 */	addi r28, r28, 1
/* 80153D5C 0011D31C  3B DE 00 8C */	addi r30, r30, 0x8c
/* 80153D60 0011D320  2C 1C 00 08 */	cmpwi r28, 8
/* 80153D64 0011D324  41 80 FF E0 */	blt .L_80153D44
/* 80153D68 0011D328  3B BD 00 01 */	addi r29, r29, 1
/* 80153D6C 0011D32C  3B FF 04 60 */	addi r31, r31, 0x460
/* 80153D70 0011D330  2C 1D 00 03 */	cmpwi r29, 3
/* 80153D74 0011D334  41 80 FF C8 */	blt .L_80153D3C
/* 80153D78 0011D338  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80153D7C 0011D33C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80153D80 0011D340  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80153D84 0011D344  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80153D88 0011D348  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80153D8C 0011D34C  7C 08 03 A6 */	mtlr r0
/* 80153D90 0011D350  38 21 00 20 */	addi r1, r1, 0x20
/* 80153D94 0011D354  4E 80 00 20 */	blr 

.global func_80153D98
func_80153D98:
/* 80153D98 0011D358  1C 84 04 60 */	mulli r4, r4, 0x460
/* 80153D9C 0011D35C  1C 05 00 8C */	mulli r0, r5, 0x8c
/* 80153DA0 0011D360  7C 63 22 14 */	add r3, r3, r4
/* 80153DA4 0011D364  7C 63 02 14 */	add r3, r3, r0
/* 80153DA8 0011D368  38 63 00 38 */	addi r3, r3, 0x38
/* 80153DAC 0011D36C  4E 80 00 20 */	blr 

.global func_80153DB0
func_80153DB0:
/* 80153DB0 0011D370  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80153DB4 0011D374  1C 04 00 8C */	mulli r0, r4, 0x8c
/* 80153DB8 0011D378  1C 85 04 60 */	mulli r4, r5, 0x460
/* 80153DBC 0011D37C  7C 63 22 14 */	add r3, r3, r4
/* 80153DC0 0011D380  7C 63 02 14 */	add r3, r3, r0
/* 80153DC4 0011D384  38 63 00 38 */	addi r3, r3, 0x38
/* 80153DC8 0011D388  4E 80 00 20 */	blr 

.global func_80153DCC
func_80153DCC:
/* 80153DCC 0011D38C  7C 66 1B 78 */	mr r6, r3
/* 80153DD0 0011D390  39 00 00 00 */	li r8, 0
/* 80153DD4 0011D394  38 00 00 08 */	li r0, 8
.L_80153DD8:
/* 80153DD8 0011D398  7C C7 33 78 */	mr r7, r6
/* 80153DDC 0011D39C  39 20 00 00 */	li r9, 0
/* 80153DE0 0011D3A0  7C 09 03 A6 */	mtctr r0
.L_80153DE4:
/* 80153DE4 0011D3A4  88 A7 00 AF */	lbz r5, 0xaf(r7)
/* 80153DE8 0011D3A8  7C 04 28 00 */	cmpw r4, r5
/* 80153DEC 0011D3AC  40 82 00 28 */	bne .L_80153E14
/* 80153DF0 0011D3B0  80 A7 00 58 */	lwz r5, 0x58(r7)
/* 80153DF4 0011D3B4  2C 05 00 00 */	cmpwi r5, 0
/* 80153DF8 0011D3B8  41 82 00 1C */	beq .L_80153E14
/* 80153DFC 0011D3BC  1C 88 04 60 */	mulli r4, r8, 0x460
/* 80153E00 0011D3C0  1C 09 00 8C */	mulli r0, r9, 0x8c
/* 80153E04 0011D3C4  7C 63 22 14 */	add r3, r3, r4
/* 80153E08 0011D3C8  7C 63 02 14 */	add r3, r3, r0
/* 80153E0C 0011D3CC  38 63 00 38 */	addi r3, r3, 0x38
/* 80153E10 0011D3D0  4E 80 00 20 */	blr
.L_80153E14:
/* 80153E14 0011D3D4  38 E7 00 8C */	addi r7, r7, 0x8c
/* 80153E18 0011D3D8  39 29 00 01 */	addi r9, r9, 1
/* 80153E1C 0011D3DC  42 00 FF C8 */	bdnz .L_80153DE4
/* 80153E20 0011D3E0  39 08 00 01 */	addi r8, r8, 1
/* 80153E24 0011D3E4  38 C6 04 60 */	addi r6, r6, 0x460
/* 80153E28 0011D3E8  2C 08 00 03 */	cmpwi r8, 3
/* 80153E2C 0011D3EC  41 80 FF AC */	blt .L_80153DD8
/* 80153E30 0011D3F0  3C 60 80 57 */	lis r3, lbl_80577580@ha
/* 80153E34 0011D3F4  38 63 75 80 */	addi r3, r3, lbl_80577580@l
/* 80153E38 0011D3F8  4E 80 00 20 */	blr 

.global func_80153E3C
func_80153E3C:
/* 80153E3C 0011D3FC  1C 84 04 60 */	mulli r4, r4, 0x460
/* 80153E40 0011D400  1C 05 00 8C */	mulli r0, r5, 0x8c
/* 80153E44 0011D404  7C 63 22 14 */	add r3, r3, r4
/* 80153E48 0011D408  7C 63 02 14 */	add r3, r3, r0
/* 80153E4C 0011D40C  38 63 00 38 */	addi r3, r3, 0x38
/* 80153E50 0011D410  4E 80 00 20 */	blr 

.global func_80153E54
func_80153E54:
/* 80153E54 0011D414  54 80 E8 04 */	slwi r0, r4, 0x1d
/* 80153E58 0011D418  54 85 0F FE */	srwi r5, r4, 0x1f
/* 80153E5C 0011D41C  7C 84 1E 70 */	srawi r4, r4, 3
/* 80153E60 0011D420  7C 05 00 50 */	subf r0, r5, r0
/* 80153E64 0011D424  7C 84 01 94 */	addze r4, r4
/* 80153E68 0011D428  54 00 18 3E */	rotlwi r0, r0, 3
/* 80153E6C 0011D42C  1C 84 04 60 */	mulli r4, r4, 0x460
/* 80153E70 0011D430  7C 00 2A 14 */	add r0, r0, r5
/* 80153E74 0011D434  1C 00 00 8C */	mulli r0, r0, 0x8c
/* 80153E78 0011D438  7C 63 22 14 */	add r3, r3, r4
/* 80153E7C 0011D43C  7C 63 02 14 */	add r3, r3, r0
/* 80153E80 0011D440  38 63 00 38 */	addi r3, r3, 0x38
/* 80153E84 0011D444  4E 80 00 20 */	blr 

.global func_80153E88
func_80153E88:
/* 80153E88 0011D448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80153E8C 0011D44C  7C 08 02 A6 */	mflr r0
/* 80153E90 0011D450  38 80 00 00 */	li r4, 0
/* 80153E94 0011D454  38 A0 00 0C */	li r5, 0xc
/* 80153E98 0011D458  90 01 00 14 */	stw r0, 0x14(r1)
/* 80153E9C 0011D45C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80153EA0 0011D460  93 C1 00 08 */	stw r30, 8(r1)
/* 80153EA4 0011D464  7C 7E 1B 78 */	mr r30, r3
/* 80153EA8 0011D468  4B EB 04 A9 */	bl memset
/* 80153EAC 0011D46C  3B FE 00 10 */	addi r31, r30, 0x10
/* 80153EB0 0011D470  3B C0 00 00 */	li r30, 0
.L_80153EB4:
/* 80153EB4 0011D474  81 9F 00 84 */	lwz r12, 0x84(r31)
/* 80153EB8 0011D478  7F E3 FB 78 */	mr r3, r31
/* 80153EBC 0011D47C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80153EC0 0011D480  7D 89 03 A6 */	mtctr r12
/* 80153EC4 0011D484  4E 80 04 21 */	bctrl 
/* 80153EC8 0011D488  3B DE 00 01 */	addi r30, r30, 1
/* 80153ECC 0011D48C  3B FF 00 88 */	addi r31, r31, 0x88
/* 80153ED0 0011D490  2C 1E 00 06 */	cmpwi r30, 6
/* 80153ED4 0011D494  41 80 FF E0 */	blt .L_80153EB4
/* 80153ED8 0011D498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80153EDC 0011D49C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80153EE0 0011D4A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80153EE4 0011D4A4  7C 08 03 A6 */	mtlr r0
/* 80153EE8 0011D4A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80153EEC 0011D4AC  4E 80 00 20 */	blr 

.global func_80153EF0
func_80153EF0:
/* 80153EF0 0011D4B0  1C 04 00 88 */	mulli r0, r4, 0x88
/* 80153EF4 0011D4B4  7C 63 02 14 */	add r3, r3, r0
/* 80153EF8 0011D4B8  38 63 00 10 */	addi r3, r3, 0x10
/* 80153EFC 0011D4BC  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_804FD1A8
lbl_804FD1A8:
	.float 6.5
	.float 8.0
	.float 10.0
	.4byte 0x41480000
	.4byte 0x41700000
	.4byte 0


.global lbl_804FD1C0
lbl_804FD1C0:
	.4byte 0x40400000
	.4byte 0x40800000
	.4byte 0x40B00000
	.4byte 0x40E00000
	.4byte 0x41080000
	.float 10.0


.global lbl_804FD1D8
lbl_804FD1D8:
	.float 1.0
	.4byte 0x3F99999A
	.float 1.5
	.4byte 0x3FE66666
	.4byte 0x40066666
	.4byte 0x4019999A


.global lbl_804FD1F0
lbl_804FD1F0:
	.4byte 0
	.4byte 0
	.4byte 0x40400000
	.4byte 0x40A00000
	.float 10.0
	.4byte 0x41700000


.global lbl_804FD208
lbl_804FD208:
	.4byte 0
	.4byte 0
	.4byte 0x00000100
	.4byte 0x00000020
	.4byte 0
	.4byte 0
	.4byte 0x00000020
	.4byte 0x00000100
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000020
	.4byte 0x00000100


.global cf_CAttackSet_typestr
cf_CAttackSet_typestr:
	.asciz "cf::CAttackSet"
	.balign 4

.global cf__sAttackSet_typestr
cf__sAttackSet_typestr:
	.asciz "cf::_sAttackSet"

.global cf_CArtsSet_typestr
cf_CArtsSet_typestr:
	.asciz "cf::CArtsSet"
	.balign 4

.global cf__sArtsSet_typestr
cf__sArtsSet_typestr:
	.asciz "cf::_sArtsSet"
	.balign 4

.global cf_CArtsParam_typestr
cf_CArtsParam_typestr:
	.asciz "cf::CArtsParam"
	.balign 4

.global cf_CAttackParam_typestr
cf_CAttackParam_typestr:
	.asciz "cf::CAttackParam"
	.balign 4
	.4byte 0

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__cf_CAttackSet
__vt__cf_CAttackSet:
	.4byte __RTTI__cf_CAttackSet
	.4byte 0
	.4byte func_80153E88

.global cf_CAttackSet_hierarchy
cf_CAttackSet_hierarchy:
	.4byte __RTTI__cf__sAttackSet
	.4byte 0
	.4byte 0


.global __vt__cf_CArtsSet
__vt__cf_CArtsSet:
	.4byte __RTTI__cf_CArtsSet
	.4byte 0
	.4byte func_80153CFC

.global cf_CArtsSet_hierarchy
cf_CArtsSet_hierarchy:
	.4byte __RTTI__cf__sArtsSet
	.4byte 0
	.4byte 0


.global __vt__cf__sArtsSet
__vt__cf__sArtsSet:
	.4byte __RTTI__cf__sArtsSet
	.4byte 0
	.4byte func_80153C30
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__cf_CAttackSet
__RTTI__cf_CAttackSet:
	.4byte cf_CAttackSet_typestr
	.4byte cf_CAttackSet_hierarchy

.global __RTTI__cf__sAttackSet
__RTTI__cf__sAttackSet:
	.4byte cf__sAttackSet_typestr
	.4byte 0

.global __RTTI__cf_CArtsSet
__RTTI__cf_CArtsSet:
	.4byte cf_CArtsSet_typestr
	.4byte cf_CArtsSet_hierarchy

.global __RTTI__cf__sArtsSet
__RTTI__cf__sArtsSet:
	.4byte cf__sArtsSet_typestr
	.4byte 0


.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_8000D32C
lbl_8000D32C:
	.4byte 0x08080000
	.4byte 0

.global lbl_8000D334
lbl_8000D334:
	.4byte 0x20080000
	.4byte 0

.global lbl_8000D33C
lbl_8000D33C:
	.4byte 0x10080000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

	.4byte __ct__cf__sArtsSet
	.4byte 0x00000044
	.4byte lbl_8000D32C
	.4byte func_80153CFC
	.4byte 0x0000009C
	.4byte lbl_8000D334
	.4byte func_80153E88
	.4byte 0x00000068
	.4byte lbl_8000D33C