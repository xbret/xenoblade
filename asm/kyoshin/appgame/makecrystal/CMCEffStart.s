.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80223D40
func_80223D40:
/* 80223D40 001ED300  3C C0 80 54 */	lis r6, __vt__CMCEffStart@ha
/* 80223D44 001ED304  38 A0 00 00 */	li r5, 0
/* 80223D48 001ED308  38 C6 98 CC */	addi r6, r6, __vt__CMCEffStart@l
/* 80223D4C 001ED30C  38 00 00 01 */	li r0, 1
/* 80223D50 001ED310  90 C3 00 00 */	stw r6, 0(r3)
/* 80223D54 001ED314  98 A3 00 04 */	stb r5, 4(r3)
/* 80223D58 001ED318  98 03 00 05 */	stb r0, 5(r3)
/* 80223D5C 001ED31C  90 83 00 08 */	stw r4, 8(r3)
/* 80223D60 001ED320  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80223D64 001ED324  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80223D68 001ED328  98 A3 00 14 */	stb r5, 0x14(r3)
/* 80223D6C 001ED32C  4E 80 00 20 */	blr 

.global func_80223D70
func_80223D70:
/* 80223D70 001ED330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223D74 001ED334  7C 08 02 A6 */	mflr r0
/* 80223D78 001ED338  2C 03 00 00 */	cmpwi r3, 0
/* 80223D7C 001ED33C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80223D80 001ED340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80223D84 001ED344  7C 7F 1B 78 */	mr r31, r3
/* 80223D88 001ED348  41 82 00 10 */	beq .L_80223D98
/* 80223D8C 001ED34C  2C 04 00 00 */	cmpwi r4, 0
/* 80223D90 001ED350  40 81 00 08 */	ble .L_80223D98
/* 80223D94 001ED354  48 21 0E 99 */	bl __dl__FPv
.L_80223D98:
/* 80223D98 001ED358  7F E3 FB 78 */	mr r3, r31
/* 80223D9C 001ED35C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80223DA0 001ED360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223DA4 001ED364  7C 08 03 A6 */	mtlr r0
/* 80223DA8 001ED368  38 21 00 10 */	addi r1, r1, 0x10
/* 80223DAC 001ED36C  4E 80 00 20 */	blr 

.global func_80223DB0
func_80223DB0:
/* 80223DB0 001ED370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223DB4 001ED374  7C 08 02 A6 */	mflr r0
/* 80223DB8 001ED378  90 01 00 14 */	stw r0, 0x14(r1)
/* 80223DBC 001ED37C  BF C1 00 08 */	stmw r30, 8(r1)
/* 80223DC0 001ED380  3F E0 80 50 */	lis r31, lbl_80504CFC@ha
/* 80223DC4 001ED384  7C 7E 1B 78 */	mr r30, r3
/* 80223DC8 001ED388  38 BF 4C FC */	addi r5, r31, lbl_80504CFC@l
/* 80223DCC 001ED38C  80 83 00 08 */	lwz r4, 8(r3)
/* 80223DD0 001ED390  38 63 00 0C */	addi r3, r3, 0xc
/* 80223DD4 001ED394  4B F1 30 B1 */	bl func_80136E84
/* 80223DD8 001ED398  38 DF 4C FC */	addi r6, r31, lbl_80504CFC@l
/* 80223DDC 001ED39C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80223DE0 001ED3A0  80 BE 00 08 */	lwz r5, 8(r30)
/* 80223DE4 001ED3A4  38 9E 00 10 */	addi r4, r30, 0x10
/* 80223DE8 001ED3A8  38 C6 00 17 */	addi r6, r6, 0x17
/* 80223DEC 001ED3AC  4B F1 31 1D */	bl func_80136F08
/* 80223DF0 001ED3B0  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80223DF4 001ED3B4  38 A0 00 01 */	li r5, 1
/* 80223DF8 001ED3B8  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80223DFC 001ED3BC  81 83 00 00 */	lwz r12, 0(r3)
/* 80223E00 001ED3C0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80223E04 001ED3C4  7D 89 03 A6 */	mtctr r12
/* 80223E08 001ED3C8  4E 80 04 21 */	bctrl 
/* 80223E0C 001ED3CC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80223E10 001ED3D0  38 80 00 00 */	li r4, 0
/* 80223E14 001ED3D4  81 83 00 00 */	lwz r12, 0(r3)
/* 80223E18 001ED3D8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80223E1C 001ED3DC  7D 89 03 A6 */	mtctr r12
/* 80223E20 001ED3E0  4E 80 04 21 */	bctrl 
/* 80223E24 001ED3E4  38 00 00 01 */	li r0, 1
/* 80223E28 001ED3E8  98 1E 00 14 */	stb r0, 0x14(r30)
/* 80223E2C 001ED3EC  BB C1 00 08 */	lmw r30, 8(r1)
/* 80223E30 001ED3F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223E34 001ED3F4  7C 08 03 A6 */	mtlr r0
/* 80223E38 001ED3F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80223E3C 001ED3FC  4E 80 00 20 */	blr 

.global func_80223E40
func_80223E40:
/* 80223E40 001ED400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223E44 001ED404  7C 08 02 A6 */	mflr r0
/* 80223E48 001ED408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80223E4C 001ED40C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80223E50 001ED410  7C 7F 1B 78 */	mr r31, r3
/* 80223E54 001ED414  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80223E58 001ED418  2C 00 00 00 */	cmpwi r0, 0
/* 80223E5C 001ED41C  41 82 00 2C */	beq .L_80223E88
/* 80223E60 001ED420  88 03 00 04 */	lbz r0, 4(r3)
/* 80223E64 001ED424  2C 00 00 01 */	cmpwi r0, 1
/* 80223E68 001ED428  40 82 00 08 */	bne .L_80223E70
/* 80223E6C 001ED42C  48 00 00 D9 */	bl func_80223F44
.L_80223E70:
/* 80223E70 001ED430  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 80223E74 001ED434  38 80 00 00 */	li r4, 0
/* 80223E78 001ED438  81 83 00 00 */	lwz r12, 0(r3)
/* 80223E7C 001ED43C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80223E80 001ED440  7D 89 03 A6 */	mtctr r12
/* 80223E84 001ED444  4E 80 04 21 */	bctrl 
.L_80223E88:
/* 80223E88 001ED448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223E8C 001ED44C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80223E90 001ED450  7C 08 03 A6 */	mtlr r0
/* 80223E94 001ED454  38 21 00 10 */	addi r1, r1, 0x10
/* 80223E98 001ED458  4E 80 00 20 */	blr 

.global func_80223E9C
func_80223E9C:
/* 80223E9C 001ED45C  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80223EA0 001ED460  2C 00 00 00 */	cmpwi r0, 0
/* 80223EA4 001ED464  4D 82 00 20 */	beqlr 
/* 80223EA8 001ED468  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80223EAC 001ED46C  38 A0 00 00 */	li r5, 0
/* 80223EB0 001ED470  38 C0 00 01 */	li r6, 1
/* 80223EB4 001ED474  4B F1 31 84 */	b func_80137038
/* 80223EB8 001ED478  4E 80 00 20 */	blr 

.global func_80223EBC
func_80223EBC:
/* 80223EBC 001ED47C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223EC0 001ED480  7C 08 02 A6 */	mflr r0
/* 80223EC4 001ED484  90 01 00 14 */	stw r0, 0x14(r1)
/* 80223EC8 001ED488  38 00 00 00 */	li r0, 0
/* 80223ECC 001ED48C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80223ED0 001ED490  7C 7F 1B 78 */	mr r31, r3
/* 80223ED4 001ED494  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80223ED8 001ED498  98 03 00 14 */	stb r0, 0x14(r3)
/* 80223EDC 001ED49C  2C 04 00 00 */	cmpwi r4, 0
/* 80223EE0 001ED4A0  41 82 00 28 */	beq .L_80223F08
/* 80223EE4 001ED4A4  41 82 00 1C */	beq .L_80223F00
/* 80223EE8 001ED4A8  7C 83 23 78 */	mr r3, r4
/* 80223EEC 001ED4AC  38 80 00 01 */	li r4, 1
/* 80223EF0 001ED4B0  81 83 00 00 */	lwz r12, 0(r3)
/* 80223EF4 001ED4B4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80223EF8 001ED4B8  7D 89 03 A6 */	mtctr r12
/* 80223EFC 001ED4BC  4E 80 04 21 */	bctrl 
.L_80223F00:
/* 80223F00 001ED4C0  38 00 00 00 */	li r0, 0
/* 80223F04 001ED4C4  90 1F 00 0C */	stw r0, 0xc(r31)
.L_80223F08:
/* 80223F08 001ED4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223F0C 001ED4CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80223F10 001ED4D0  7C 08 03 A6 */	mtlr r0
/* 80223F14 001ED4D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80223F18 001ED4D8  4E 80 00 20 */	blr 

.global func_80223F1C
func_80223F1C:
/* 80223F1C 001ED4DC  88 63 00 05 */	lbz r3, 5(r3)
/* 80223F20 001ED4E0  4E 80 00 20 */	blr 

.global func_80223F24
func_80223F24:
/* 80223F24 001ED4E4  38 00 00 01 */	li r0, 1
/* 80223F28 001ED4E8  98 03 00 04 */	stb r0, 4(r3)
/* 80223F2C 001ED4EC  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80223F30 001ED4F0  38 00 00 00 */	li r0, 0
/* 80223F34 001ED4F4  C0 02 AA 90 */	lfs f0, float_8066AE10@sda21(r2)
/* 80223F38 001ED4F8  D0 04 00 10 */	stfs f0, 0x10(r4)
/* 80223F3C 001ED4FC  98 03 00 05 */	stb r0, 5(r3)
/* 80223F40 001ED500  4E 80 00 20 */	blr 

.global func_80223F44
func_80223F44:
/* 80223F44 001ED504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223F48 001ED508  7C 08 02 A6 */	mflr r0
/* 80223F4C 001ED50C  C0 22 AA 94 */	lfs f1, float_8066AE14@sda21(r2)
/* 80223F50 001ED510  90 01 00 14 */	stw r0, 0x14(r1)
/* 80223F54 001ED514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80223F58 001ED518  7C 7F 1B 78 */	mr r31, r3
/* 80223F5C 001ED51C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80223F60 001ED520  4B F1 34 E5 */	bl func_80137444
/* 80223F64 001ED524  2C 03 00 00 */	cmpwi r3, 0
/* 80223F68 001ED528  41 82 00 14 */	beq .L_80223F7C
/* 80223F6C 001ED52C  38 60 00 00 */	li r3, 0
/* 80223F70 001ED530  38 00 00 01 */	li r0, 1
/* 80223F74 001ED534  98 7F 00 04 */	stb r3, 4(r31)
/* 80223F78 001ED538  98 1F 00 05 */	stb r0, 5(r31)
.L_80223F7C:
/* 80223F7C 001ED53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223F80 001ED540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80223F84 001ED544  7C 08 03 A6 */	mtlr r0
/* 80223F88 001ED548  38 21 00 10 */	addi r1, r1, 0x10
/* 80223F8C 001ED54C  4E 80 00 20 */	blr 


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global CMCEffCylinder_typestr
CMCEffCylinder_typestr:
	.asciz "CMCEffCylinder"
	.balign 4

.global CMCEffDivide_typestr
CMCEffDivide_typestr:
	.asciz "CMCEffDivide"
	.balign 4

.global CMCEffUpRank_typestr
CMCEffUpRank_typestr:
	.asciz "CMCEffUpRank"
	.balign 4

.global CMCEffCrystal_typestr
CMCEffCrystal_typestr:
	.asciz "CMCEffCrystal"
	.balign 4

.global CMCEffFailure_typestr
CMCEffFailure_typestr:
	.asciz "CMCEffFailure"
	.balign 4

.global CMCEffSuccess_typestr
CMCEffSuccess_typestr:
	.asciz "CMCEffSuccess"
	.balign 4

.global CMCEffUpPrm_typestr
CMCEffUpPrm_typestr:
	.asciz "CMCEffUpPrm"

.global CMCEffUpGreen_typestr
CMCEffUpGreen_typestr:
	.asciz "CMCEffUpGreen"
	.balign 4

.global CMCEffUpBlue_typestr
CMCEffUpBlue_typestr:
	.asciz "CMCEffUpBlue"
	.balign 4

.global CMCEffUpRed_typestr
CMCEffUpRed_typestr:
	.asciz "CMCEffUpRed"

.global CMCEffStart_typestr
CMCEffStart_typestr:
	.asciz "CMCEffStart"


.global lbl_80504CFC
lbl_80504CFC:
	.asciz "mf10_cry06_start.brlyt"
	.asciz "mf10_cry06_start_in.brlan"
	.asciz "mf10_cry02_prt00.brlyt"
	.asciz "mf10_cry02_prt00_in.brlan"
	.asciz "mf10_cry02_prt01.brlyt"
	.asciz "mf10_cry02_prt01_in.brlan"
	.asciz "mf10_cry02_prt02.brlyt"
	.asciz "mf10_cry02_prt02_in.brlan"
	.asciz "mf10_cry02_prt03.brlyt"
	.asciz "mf10_cry02_prt03_in.brlan"
	.asciz "txt_bns"
	.asciz "mf10_cry06_comp.brlyt"
	.asciz "mf10_cry06_comp_in.brlan"
	.asciz "mf10_cry06_comp_out.brlan"
	.asciz "mf10_cry06_fail.brlyt"
	.asciz "mf10_cry06_fail_in.brlan"
	.asciz "mf10_cry02_trc.brlyt"
	.asciz "mf10_cry02_trc_in.brlan"
	.asciz "mf10_cry02_trc_out.brlan"
	.asciz "mf10_cry03_crys.brlyt"
	.asciz "mf10_cry03_crys_in.brlan"
	.asciz "mf10_cry03_crys_change.brlan"
	.asciz "mf10_cry03_crys_spl.brlan"
	.asciz "mf10_cry03_crys_out.brlan"
	.asciz "mf10_cry04_lst.brlyt"
	.asciz "mf10_cry04_lst_roop.brlan"
	.asciz "nul_trc01"
	.asciz "name"
	.asciz "MNU_item"
	.asciz "%s%s"
	.asciz "txt_listname01"
	.asciz "atr_type"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "mf10_cry00_crys01.tpl"
	.asciz "mf10_cry00_crys02.tpl"
	.asciz "mf10_cry00_crys03.tpl"
	.asciz "mf10_cry00_crys04.tpl"
	.asciz "mf10_cry00_crys05.tpl"
	.asciz "mf10_cry00_crys06.tpl"
	.asciz "pic_crs"
	.asciz "pic_crs01"
	.asciz "mf10_cry05_rank.brlyt"
	.asciz "mf10_cry05_rank_in.brlan"
	.asciz "mf10_cry05_spl.brlyt"
	.asciz "mf10_cry05_spl_in.brlan"
	.asciz "mf10_cry06_chn.brlyt"
	.asciz "mf10_cry06_chn_in.brlan"
	.asciz "mf10_cry06_chn_change.brlan"
	.asciz "mf10_cry06_chn_out.brlan"
	.asciz "txt_num"
	.balign 4
	.4byte 0

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__CMCEffCylinder
__vt__CMCEffCylinder:
	.4byte __RTTI__CMCEffCylinder
	.4byte 0
	.4byte func_80225D38
	.4byte func_80225D78


.global __vt__CMCEffDivide
__vt__CMCEffDivide:
	.4byte __RTTI__CMCEffDivide
	.4byte 0
	.4byte func_80225C08
	.4byte func_80225C48
	.4byte func_80225CD8

.global CMCEffDivide_hierarchy
CMCEffDivide_hierarchy:
	.4byte __RTTI__CMCEffStart
	.4byte 0
	.4byte 0


.global __vt__CMCEffUpRank
__vt__CMCEffUpRank:
	.4byte __RTTI__CMCEffUpRank
	.4byte 0
	.4byte func_80225AD4
	.4byte func_80225B14
	.4byte func_80225BA4

.global CMCEffUpRank_hierarchy
CMCEffUpRank_hierarchy:
	.4byte __RTTI__CMCEffStart
	.4byte 0
	.4byte 0


.global __vt__CMCEffCrystal
__vt__CMCEffCrystal:
	.4byte __RTTI__CMCEffCrystal
	.4byte 0
	.4byte func_80224CA4
	.4byte func_80224CE4


.global __vt__CMCEffFailure
__vt__CMCEffFailure:
	.4byte __RTTI__CMCEffFailure
	.4byte 0
	.4byte func_80224B7C
	.4byte func_80224BBC
	.4byte func_80223F24

.global CMCEffFailure_hierarchy
CMCEffFailure_hierarchy:
	.4byte __RTTI__CMCEffStart
	.4byte 0
	.4byte 0


.global __vt__CMCEffSuccess
__vt__CMCEffSuccess:
	.4byte __RTTI__CMCEffSuccess
	.4byte 0
	.4byte func_80224720
	.4byte func_80224760


.global __vt__CMCEffUpPrm
__vt__CMCEffUpPrm:
	.4byte __RTTI__CMCEffUpPrm
	.4byte 0
	.4byte func_80224374


.global __vt__CMCEffUpGreen
__vt__CMCEffUpGreen:
	.4byte __RTTI__CMCEffUpGreen
	.4byte 0
	.4byte func_80224234
	.4byte func_80224274
	.4byte func_80224304

.global CMCEffUpGreen_hierarchy
CMCEffUpGreen_hierarchy:
	.4byte __RTTI__CMCEffStart
	.4byte 0
	.4byte 0


.global __vt__CMCEffUpBlue
__vt__CMCEffUpBlue:
	.4byte __RTTI__CMCEffUpBlue
	.4byte 0
	.4byte func_80224100
	.4byte func_80224140
	.4byte func_802241D0

.global CMCEffUpBlue_hierarchy
CMCEffUpBlue_hierarchy:
	.4byte __RTTI__CMCEffStart
	.4byte 0
	.4byte 0


.global __vt__CMCEffUpRed
__vt__CMCEffUpRed:
	.4byte __RTTI__CMCEffUpRed
	.4byte 0
	.4byte func_80223FCC
	.4byte func_8022400C
	.4byte func_8022409C

.global CMCEffUpRed_hierarchy
CMCEffUpRed_hierarchy:
	.4byte __RTTI__CMCEffStart
	.4byte 0
	.4byte 0


.global __vt__CMCEffStart
__vt__CMCEffStart:
	.4byte __RTTI__CMCEffStart
	.4byte 0
	.4byte func_80223D70
	.4byte func_80223DB0
	.4byte func_80223F24


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global __RTTI__CMCEffCylinder
__RTTI__CMCEffCylinder:
	.4byte CMCEffCylinder_typestr
	.4byte 0

.global __RTTI__CMCEffDivide
__RTTI__CMCEffDivide:
	.4byte CMCEffDivide_typestr
	.4byte CMCEffDivide_hierarchy

.global __RTTI__CMCEffUpRank
__RTTI__CMCEffUpRank:
	.4byte CMCEffUpRank_typestr
	.4byte CMCEffUpRank_hierarchy

.global __RTTI__CMCEffCrystal
__RTTI__CMCEffCrystal:
	.4byte CMCEffCrystal_typestr
	.4byte 0

.global __RTTI__CMCEffFailure
__RTTI__CMCEffFailure:
	.4byte CMCEffFailure_typestr
	.4byte CMCEffFailure_hierarchy

.global __RTTI__CMCEffSuccess
__RTTI__CMCEffSuccess:
	.4byte CMCEffSuccess_typestr
	.4byte 0

.global __RTTI__CMCEffUpPrm
__RTTI__CMCEffUpPrm:
	.4byte CMCEffUpPrm_typestr
	.4byte 0

.global __RTTI__CMCEffUpGreen
__RTTI__CMCEffUpGreen:
	.4byte CMCEffUpGreen_typestr
	.4byte CMCEffUpGreen_hierarchy

.global __RTTI__CMCEffUpBlue
__RTTI__CMCEffUpBlue:
	.4byte CMCEffUpBlue_typestr
	.4byte CMCEffUpBlue_hierarchy

.global __RTTI__CMCEffUpRed
__RTTI__CMCEffUpRed:
	.4byte CMCEffUpRed_typestr
	.4byte CMCEffUpRed_hierarchy

.global __RTTI__CMCEffStart
__RTTI__CMCEffStart:
	.4byte CMCEffStart_typestr
	.4byte 0

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_8066AE10
float_8066AE10:
	.float 0


.global float_8066AE14
float_8066AE14:
	.float 1.0


.global double_8066AE18
double_8066AE18:
	.8byte 0x4330000080000000 #signed int to float constant

.global float_8066AE20
float_8066AE20:
	.float 5 #0x40A00000
	.4byte 0

.section extab, "a"  # 0x800066E0 - 0x80021020

.global lbl_80014F8C
lbl_80014F8C:
	.4byte 0x08080000
	.4byte 0

.global lbl_80014F94
lbl_80014F94:
	.4byte 0x10080000
	.4byte 0

.global lbl_80014F9C
lbl_80014F9C:
	.4byte 0x08080000
	.4byte 0

.global lbl_80014FA4
lbl_80014FA4:
	.4byte 0x08080000
	.4byte 0

.global lbl_80014FAC
lbl_80014FAC:
	.4byte 0x080A0000
	.4byte 0


.section extabindex, "a"  # 0x80021020 - 0x80039220

.4byte func_80223D70
	.4byte 0x00000040
	.4byte lbl_80014F8C
	.4byte func_80223DB0
	.4byte 0x00000090
	.4byte lbl_80014F94
	.4byte func_80223E40
	.4byte 0x0000005C
	.4byte lbl_80014F9C
	.4byte func_80223EBC
	.4byte 0x00000060
	.4byte lbl_80014FA4
	.4byte func_80223F44
	.4byte 0x0000004C
	.4byte lbl_80014FAC