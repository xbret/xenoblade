.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn LSC_Create, global
/* 80391D58 0035B318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80391D5C 0035B31C  7C 08 02 A6 */	mflr r0
/* 80391D60 0035B320  90 01 00 14 */	stw r0, 0x14(r1)
/* 80391D64 0035B324  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80391D68 0035B328  7C 7F 1B 78 */	mr r31, r3
/* 80391D6C 0035B32C  48 00 0A A1 */	bl LSC_Enter
/* 80391D70 0035B330  7F E3 FB 78 */	mr r3, r31
/* 80391D74 0035B334  48 00 00 25 */	bl lsc_Create
/* 80391D78 0035B338  7C 7F 1B 78 */	mr r31, r3
/* 80391D7C 0035B33C  48 00 0A 95 */	bl LSC_Leave
/* 80391D80 0035B340  7F E3 FB 78 */	mr r3, r31
/* 80391D84 0035B344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80391D88 0035B348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80391D8C 0035B34C  7C 08 03 A6 */	mtlr r0
/* 80391D90 0035B350  38 21 00 10 */	addi r1, r1, 0x10
/* 80391D94 0035B354  4E 80 00 20 */	blr 
.endfn LSC_Create

.fn lsc_Create, global
/* 80391D98 0035B358  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80391D9C 0035B35C  7C 08 02 A6 */	mflr r0
/* 80391DA0 0035B360  2C 03 00 00 */	cmpwi r3, 0
/* 80391DA4 0035B364  90 01 00 24 */	stw r0, 0x24(r1)
/* 80391DA8 0035B368  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80391DAC 0035B36C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80391DB0 0035B370  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80391DB4 0035B374  7C 7D 1B 78 */	mr r29, r3
/* 80391DB8 0035B378  40 82 00 1C */	bne .L_80391DD4
/* 80391DBC 0035B37C  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 80391DC0 0035B380  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 80391DC4 0035B384  4C C6 31 82 */	crclr 6
/* 80391DC8 0035B388  4B FF FA 15 */	bl LSC_CallErrFunc_
/* 80391DCC 0035B38C  38 60 00 00 */	li r3, 0
/* 80391DD0 0035B390  48 00 01 40 */	b .L_80391F10
.L_80391DD4:
/* 80391DD4 0035B394  38 61 00 08 */	addi r3, r1, 8
/* 80391DD8 0035B398  48 00 0A 3D */	bl LSC_LockCrs
/* 80391DDC 0035B39C  3C 80 80 5F */	lis r4, lsc_obj@ha
/* 80391DE0 0035B3A0  38 00 00 20 */	li r0, 0x20
/* 80391DE4 0035B3A4  38 84 B3 80 */	addi r4, r4, lsc_obj@l
/* 80391DE8 0035B3A8  3B E0 00 00 */	li r31, 0
/* 80391DEC 0035B3AC  38 60 00 00 */	li r3, 0
/* 80391DF0 0035B3B0  7C 09 03 A6 */	mtctr r0
.L_80391DF4:
/* 80391DF4 0035B3B4  88 04 00 00 */	lbz r0, 0(r4)
/* 80391DF8 0035B3B8  7C 00 07 75 */	extsb. r0, r0
/* 80391DFC 0035B3BC  40 82 00 18 */	bne .L_80391E14
/* 80391E00 0035B3C0  1C 03 02 38 */	mulli r0, r3, 0x238
/* 80391E04 0035B3C4  3C 60 80 5F */	lis r3, lsc_obj@ha
/* 80391E08 0035B3C8  38 63 B3 80 */	addi r3, r3, lsc_obj@l
/* 80391E0C 0035B3CC  7F E3 02 14 */	add r31, r3, r0
/* 80391E10 0035B3D0  48 00 00 10 */	b .L_80391E20
.L_80391E14:
/* 80391E14 0035B3D4  38 84 02 38 */	addi r4, r4, 0x238
/* 80391E18 0035B3D8  38 63 00 01 */	addi r3, r3, 1
/* 80391E1C 0035B3DC  42 00 FF D8 */	bdnz .L_80391DF4
.L_80391E20:
/* 80391E20 0035B3E0  2C 1F 00 00 */	cmpwi r31, 0
/* 80391E24 0035B3E4  40 82 00 1C */	bne .L_80391E40
/* 80391E28 0035B3E8  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 80391E2C 0035B3EC  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 80391E30 0035B3F0  38 63 00 30 */	addi r3, r3, 0x30
/* 80391E34 0035B3F4  4C C6 31 82 */	crclr 6
/* 80391E38 0035B3F8  4B FF F9 A5 */	bl LSC_CallErrFunc_
/* 80391E3C 0035B3FC  48 00 00 C8 */	b .L_80391F04
.L_80391E40:
/* 80391E40 0035B400  7F E3 FB 78 */	mr r3, r31
/* 80391E44 0035B404  38 80 00 00 */	li r4, 0
/* 80391E48 0035B408  38 A0 02 38 */	li r5, 0x238
/* 80391E4C 0035B40C  4B C7 25 05 */	bl memset
/* 80391E50 0035B410  93 BF 00 08 */	stw r29, 8(r31)
/* 80391E54 0035B414  38 00 00 00 */	li r0, 0
/* 80391E58 0035B418  7F A3 EB 78 */	mr r3, r29
/* 80391E5C 0035B41C  38 80 00 01 */	li r4, 1
/* 80391E60 0035B420  98 1F 00 01 */	stb r0, 1(r31)
/* 80391E64 0035B424  80 BD 00 00 */	lwz r5, 0(r29)
/* 80391E68 0035B428  81 85 00 24 */	lwz r12, 0x24(r5)
/* 80391E6C 0035B42C  7D 89 03 A6 */	mtctr r12
/* 80391E70 0035B430  4E 80 04 21 */	bctrl 
/* 80391E74 0035B434  80 BD 00 00 */	lwz r5, 0(r29)
/* 80391E78 0035B438  7C 7E 1B 78 */	mr r30, r3
/* 80391E7C 0035B43C  7F A3 EB 78 */	mr r3, r29
/* 80391E80 0035B440  38 80 00 00 */	li r4, 0
/* 80391E84 0035B444  81 85 00 24 */	lwz r12, 0x24(r5)
/* 80391E88 0035B448  7D 89 03 A6 */	mtctr r12
/* 80391E8C 0035B44C  4E 80 04 21 */	bctrl 
/* 80391E90 0035B450  7C 83 F2 14 */	add r4, r3, r30
/* 80391E94 0035B454  3C 60 66 66 */	lis r3, 0x66666667@ha
/* 80391E98 0035B458  54 80 18 38 */	slwi r0, r4, 3
/* 80391E9C 0035B45C  90 9F 00 18 */	stw r4, 0x18(r31)
/* 80391EA0 0035B460  38 63 66 67 */	addi r3, r3, 0x66666667@l
/* 80391EA4 0035B464  38 A0 00 00 */	li r5, 0
/* 80391EA8 0035B468  7C 63 00 96 */	mulhw r3, r3, r0
/* 80391EAC 0035B46C  38 00 00 01 */	li r0, 1
/* 80391EB0 0035B470  7C 63 16 70 */	srawi r3, r3, 2
/* 80391EB4 0035B474  54 64 0F FE */	srwi r4, r3, 0x1f
/* 80391EB8 0035B478  7C 63 22 14 */	add r3, r3, r4
/* 80391EBC 0035B47C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 80391EC0 0035B480  90 BF 00 50 */	stw r5, 0x50(r31)
/* 80391EC4 0035B484  90 BF 00 70 */	stw r5, 0x70(r31)
/* 80391EC8 0035B488  90 BF 00 90 */	stw r5, 0x90(r31)
/* 80391ECC 0035B48C  90 BF 00 B0 */	stw r5, 0xb0(r31)
/* 80391ED0 0035B490  90 BF 00 D0 */	stw r5, 0xd0(r31)
/* 80391ED4 0035B494  90 BF 00 F0 */	stw r5, 0xf0(r31)
/* 80391ED8 0035B498  90 BF 01 10 */	stw r5, 0x110(r31)
/* 80391EDC 0035B49C  90 BF 01 30 */	stw r5, 0x130(r31)
/* 80391EE0 0035B4A0  90 BF 01 50 */	stw r5, 0x150(r31)
/* 80391EE4 0035B4A4  90 BF 01 70 */	stw r5, 0x170(r31)
/* 80391EE8 0035B4A8  90 BF 01 90 */	stw r5, 0x190(r31)
/* 80391EEC 0035B4AC  90 BF 01 B0 */	stw r5, 0x1b0(r31)
/* 80391EF0 0035B4B0  90 BF 01 D0 */	stw r5, 0x1d0(r31)
/* 80391EF4 0035B4B4  90 BF 01 F0 */	stw r5, 0x1f0(r31)
/* 80391EF8 0035B4B8  90 BF 02 10 */	stw r5, 0x210(r31)
/* 80391EFC 0035B4BC  90 BF 02 30 */	stw r5, 0x230(r31)
/* 80391F00 0035B4C0  98 1F 00 00 */	stb r0, 0(r31)
.L_80391F04:
/* 80391F04 0035B4C4  38 61 00 08 */	addi r3, r1, 8
/* 80391F08 0035B4C8  48 00 09 11 */	bl LSC_UnlockCrs
/* 80391F0C 0035B4CC  7F E3 FB 78 */	mr r3, r31
.L_80391F10:
/* 80391F10 0035B4D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80391F14 0035B4D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80391F18 0035B4D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80391F1C 0035B4DC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80391F20 0035B4E0  7C 08 03 A6 */	mtlr r0
/* 80391F24 0035B4E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80391F28 0035B4E8  4E 80 00 20 */	blr 
.endfn lsc_Create

.fn LSC_Destroy, global
/* 80391F2C 0035B4EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80391F30 0035B4F0  7C 08 02 A6 */	mflr r0
/* 80391F34 0035B4F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80391F38 0035B4F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80391F3C 0035B4FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80391F40 0035B500  7C 7E 1B 78 */	mr r30, r3
/* 80391F44 0035B504  48 00 08 C9 */	bl LSC_Enter
/* 80391F48 0035B508  2C 1E 00 00 */	cmpwi r30, 0
/* 80391F4C 0035B50C  41 82 00 BC */	beq .L_80392008
/* 80391F50 0035B510  48 00 08 BD */	bl LSC_Enter
/* 80391F54 0035B514  2C 1E 00 00 */	cmpwi r30, 0
/* 80391F58 0035B518  40 82 00 1C */	bne .L_80391F74
/* 80391F5C 0035B51C  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 80391F60 0035B520  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 80391F64 0035B524  38 63 00 5F */	addi r3, r3, 0x5f
/* 80391F68 0035B528  4C C6 31 82 */	crclr 6
/* 80391F6C 0035B52C  4B FF F8 71 */	bl LSC_CallErrFunc_
/* 80391F70 0035B530  48 00 00 7C */	b .L_80391FEC
.L_80391F74:
/* 80391F74 0035B534  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80391F78 0035B538  2C 03 00 00 */	cmpwi r3, 0
/* 80391F7C 0035B53C  41 82 00 10 */	beq .L_80391F8C
/* 80391F80 0035B540  4B FE F7 C5 */	bl ADXSTM_Stop
/* 80391F84 0035B544  38 00 00 00 */	li r0, 0
/* 80391F88 0035B548  98 1E 00 02 */	stb r0, 2(r30)
.L_80391F8C:
/* 80391F8C 0035B54C  88 1E 00 01 */	lbz r0, 1(r30)
/* 80391F90 0035B550  7C 00 07 75 */	extsb. r0, r0
/* 80391F94 0035B554  41 82 00 58 */	beq .L_80391FEC
/* 80391F98 0035B558  3B E0 00 00 */	li r31, 0
/* 80391F9C 0035B55C  9B FE 00 01 */	stb r31, 1(r30)
/* 80391FA0 0035B560  93 FE 00 2C */	stw r31, 0x2c(r30)
/* 80391FA4 0035B564  48 00 08 69 */	bl LSC_Enter
/* 80391FA8 0035B568  2C 1E 00 00 */	cmpwi r30, 0
/* 80391FAC 0035B56C  40 82 00 1C */	bne .L_80391FC8
/* 80391FB0 0035B570  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 80391FB4 0035B574  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 80391FB8 0035B578  38 63 00 88 */	addi r3, r3, 0x88
/* 80391FBC 0035B57C  4C C6 31 82 */	crclr 6
/* 80391FC0 0035B580  4B FF F8 1D */	bl LSC_CallErrFunc_
/* 80391FC4 0035B584  48 00 00 1C */	b .L_80391FE0
.L_80391FC8:
/* 80391FC8 0035B588  88 1E 00 01 */	lbz r0, 1(r30)
/* 80391FCC 0035B58C  7C 00 07 75 */	extsb. r0, r0
/* 80391FD0 0035B590  40 82 00 10 */	bne .L_80391FE0
/* 80391FD4 0035B594  93 FE 00 1C */	stw r31, 0x1c(r30)
/* 80391FD8 0035B598  93 FE 00 20 */	stw r31, 0x20(r30)
/* 80391FDC 0035B59C  93 FE 00 24 */	stw r31, 0x24(r30)
.L_80391FE0:
/* 80391FE0 0035B5A0  48 00 08 31 */	bl LSC_Leave
/* 80391FE4 0035B5A4  38 00 00 00 */	li r0, 0
/* 80391FE8 0035B5A8  90 1E 00 34 */	stw r0, 0x34(r30)
.L_80391FEC:
/* 80391FEC 0035B5AC  48 00 08 25 */	bl LSC_Leave
/* 80391FF0 0035B5B0  38 00 00 00 */	li r0, 0
/* 80391FF4 0035B5B4  7F C3 F3 78 */	mr r3, r30
/* 80391FF8 0035B5B8  98 1E 00 00 */	stb r0, 0(r30)
/* 80391FFC 0035B5BC  38 80 00 00 */	li r4, 0
/* 80392000 0035B5C0  38 A0 02 38 */	li r5, 0x238
/* 80392004 0035B5C4  4B C7 23 4D */	bl memset
.L_80392008:
/* 80392008 0035B5C8  48 00 08 09 */	bl LSC_Leave
/* 8039200C 0035B5CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80392010 0035B5D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80392014 0035B5D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80392018 0035B5D8  7C 08 03 A6 */	mtlr r0
/* 8039201C 0035B5DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80392020 0035B5E0  4E 80 00 20 */	blr 
.endfn LSC_Destroy

.fn LSC_SetStmHndl, global
/* 80392024 0035B5E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80392028 0035B5E8  7C 08 02 A6 */	mflr r0
/* 8039202C 0035B5EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80392030 0035B5F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80392034 0035B5F4  7C 9F 23 78 */	mr r31, r4
/* 80392038 0035B5F8  93 C1 00 08 */	stw r30, 8(r1)
/* 8039203C 0035B5FC  7C 7E 1B 78 */	mr r30, r3
/* 80392040 0035B600  48 00 07 CD */	bl LSC_Enter
/* 80392044 0035B604  93 FE 00 28 */	stw r31, 0x28(r30)
/* 80392048 0035B608  48 00 07 C9 */	bl LSC_Leave
/* 8039204C 0035B60C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80392050 0035B610  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80392054 0035B614  83 C1 00 08 */	lwz r30, 8(r1)
/* 80392058 0035B618  7C 08 03 A6 */	mtlr r0
/* 8039205C 0035B61C  38 21 00 10 */	addi r1, r1, 0x10
/* 80392060 0035B620  4E 80 00 20 */	blr 
.endfn LSC_SetStmHndl

.fn LSC_EntryFname, global
/* 80392064 0035B624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80392068 0035B628  7C 08 02 A6 */	mflr r0
/* 8039206C 0035B62C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80392070 0035B630  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80392074 0035B634  7C 9F 23 78 */	mr r31, r4
/* 80392078 0035B638  93 C1 00 08 */	stw r30, 8(r1)
/* 8039207C 0035B63C  7C 7E 1B 78 */	mr r30, r3
/* 80392080 0035B640  48 00 07 8D */	bl LSC_Enter
/* 80392084 0035B644  3C C0 00 10 */	lis r6, 0x000FFFFF@ha
/* 80392088 0035B648  7F C3 F3 78 */	mr r3, r30
/* 8039208C 0035B64C  38 E6 FF FF */	addi r7, r6, 0x000FFFFF@l
/* 80392090 0035B650  7F E4 FB 78 */	mr r4, r31
/* 80392094 0035B654  38 A0 00 00 */	li r5, 0
/* 80392098 0035B658  38 C0 00 00 */	li r6, 0
/* 8039209C 0035B65C  48 00 00 89 */	bl lsc_EntryFileRange
/* 803920A0 0035B660  7C 7F 1B 78 */	mr r31, r3
/* 803920A4 0035B664  48 00 07 6D */	bl LSC_Leave
/* 803920A8 0035B668  7F E3 FB 78 */	mr r3, r31
/* 803920AC 0035B66C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803920B0 0035B670  83 C1 00 08 */	lwz r30, 8(r1)
/* 803920B4 0035B674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803920B8 0035B678  7C 08 03 A6 */	mtlr r0
/* 803920BC 0035B67C  38 21 00 10 */	addi r1, r1, 0x10
/* 803920C0 0035B680  4E 80 00 20 */	blr 
.endfn LSC_EntryFname

.fn LSC_EntryFileRange, global
/* 803920C4 0035B684  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803920C8 0035B688  7C 08 02 A6 */	mflr r0
/* 803920CC 0035B68C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803920D0 0035B690  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 803920D4 0035B694  7C 7B 1B 78 */	mr r27, r3
/* 803920D8 0035B698  7C 9C 23 78 */	mr r28, r4
/* 803920DC 0035B69C  7C BD 2B 78 */	mr r29, r5
/* 803920E0 0035B6A0  7C DE 33 78 */	mr r30, r6
/* 803920E4 0035B6A4  7C FF 3B 78 */	mr r31, r7
/* 803920E8 0035B6A8  48 00 07 25 */	bl LSC_Enter
/* 803920EC 0035B6AC  7F 63 DB 78 */	mr r3, r27
/* 803920F0 0035B6B0  7F 84 E3 78 */	mr r4, r28
/* 803920F4 0035B6B4  7F A5 EB 78 */	mr r5, r29
/* 803920F8 0035B6B8  7F C6 F3 78 */	mr r6, r30
/* 803920FC 0035B6BC  7F E7 FB 78 */	mr r7, r31
/* 80392100 0035B6C0  48 00 00 25 */	bl lsc_EntryFileRange
/* 80392104 0035B6C4  7C 7F 1B 78 */	mr r31, r3
/* 80392108 0035B6C8  48 00 07 09 */	bl LSC_Leave
/* 8039210C 0035B6CC  7F E3 FB 78 */	mr r3, r31
/* 80392110 0035B6D0  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80392114 0035B6D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80392118 0035B6D8  7C 08 03 A6 */	mtlr r0
/* 8039211C 0035B6DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80392120 0035B6E0  4E 80 00 20 */	blr 
.endfn LSC_EntryFileRange

.fn lsc_EntryFileRange, global
/* 80392124 0035B6E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80392128 0035B6E8  7C 08 02 A6 */	mflr r0
/* 8039212C 0035B6EC  2C 03 00 00 */	cmpwi r3, 0
/* 80392130 0035B6F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80392134 0035B6F4  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80392138 0035B6F8  7C 79 1B 78 */	mr r25, r3
/* 8039213C 0035B6FC  7C 9A 23 78 */	mr r26, r4
/* 80392140 0035B700  7C BB 2B 78 */	mr r27, r5
/* 80392144 0035B704  7C DC 33 78 */	mr r28, r6
/* 80392148 0035B708  7C FD 3B 78 */	mr r29, r7
/* 8039214C 0035B70C  40 82 00 20 */	bne .L_8039216C
/* 80392150 0035B710  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 80392154 0035B714  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 80392158 0035B718  38 63 00 B1 */	addi r3, r3, 0xb1
/* 8039215C 0035B71C  4C C6 31 82 */	crclr 6
/* 80392160 0035B720  4B FF F6 7D */	bl LSC_CallErrFunc_
/* 80392164 0035B724  38 60 FF FF */	li r3, -1
/* 80392168 0035B728  48 00 01 CC */	b .L_80392334
.L_8039216C:
/* 8039216C 0035B72C  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80392170 0035B730  2C 00 00 10 */	cmpwi r0, 0x10
/* 80392174 0035B734  41 80 00 0C */	blt .L_80392180
/* 80392178 0035B738  38 60 FF FF */	li r3, -1
/* 8039217C 0035B73C  48 00 01 B8 */	b .L_80392334
.L_80392180:
/* 80392180 0035B740  2C 04 00 00 */	cmpwi r4, 0
/* 80392184 0035B744  40 82 00 20 */	bne .L_803921A4
/* 80392188 0035B748  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 8039218C 0035B74C  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 80392190 0035B750  38 63 00 DA */	addi r3, r3, 0xda
/* 80392194 0035B754  4C C6 31 82 */	crclr 6
/* 80392198 0035B758  4B FF F6 45 */	bl LSC_CallErrFunc_
/* 8039219C 0035B75C  38 60 FF FF */	li r3, -1
/* 803921A0 0035B760  48 00 01 94 */	b .L_80392334
.L_803921A4:
/* 803921A4 0035B764  80 E3 00 1C */	lwz r7, 0x1c(r3)
/* 803921A8 0035B768  3C A0 80 00 */	lis r5, 0x7FFFFFFF@ha
/* 803921AC 0035B76C  38 C5 FF FF */	addi r6, r5, 0x7FFFFFFF@l
/* 803921B0 0035B770  38 A7 00 0F */	addi r5, r7, 0xf
/* 803921B4 0035B774  54 E0 28 34 */	slwi r0, r7, 5
/* 803921B8 0035B778  54 A7 E0 06 */	slwi r7, r5, 0x1c
/* 803921BC 0035B77C  54 A5 0F FE */	srwi r5, r5, 0x1f
/* 803921C0 0035B780  7F E3 02 14 */	add r31, r3, r0
/* 803921C4 0035B784  7C 05 38 50 */	subf r0, r5, r7
/* 803921C8 0035B788  54 00 20 3E */	rotlwi r0, r0, 4
/* 803921CC 0035B78C  7C 00 2A 14 */	add r0, r0, r5
/* 803921D0 0035B790  54 00 28 34 */	slwi r0, r0, 5
/* 803921D4 0035B794  7C A3 02 14 */	add r5, r3, r0
/* 803921D8 0035B798  7F 43 D3 78 */	mr r3, r26
/* 803921DC 0035B79C  80 E5 00 38 */	lwz r7, 0x38(r5)
/* 803921E0 0035B7A0  7C A6 38 50 */	subf r5, r6, r7
/* 803921E4 0035B7A4  7C 07 30 50 */	subf r0, r7, r6
/* 803921E8 0035B7A8  7C A5 00 F8 */	nor r5, r5, r0
/* 803921EC 0035B7AC  38 07 00 01 */	addi r0, r7, 1
/* 803921F0 0035B7B0  7C A5 FE 70 */	srawi r5, r5, 0x1f
/* 803921F4 0035B7B4  7C 1E 28 78 */	andc r30, r0, r5
/* 803921F8 0035B7B8  93 DF 00 38 */	stw r30, 0x38(r31)
/* 803921FC 0035B7BC  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 80392200 0035B7C0  4B F2 73 B9 */	bl strlen
/* 80392204 0035B7C4  38 00 00 00 */	li r0, 0
/* 80392208 0035B7C8  2C 03 00 00 */	cmpwi r3, 0
/* 8039220C 0035B7CC  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80392210 0035B7D0  38 80 00 00 */	li r4, 0
/* 80392214 0035B7D4  41 82 00 C0 */	beq .L_803922D4
/* 80392218 0035B7D8  28 03 00 08 */	cmplwi r3, 8
/* 8039221C 0035B7DC  38 A3 FF F8 */	addi r5, r3, -8
/* 80392220 0035B7E0  40 81 00 88 */	ble .L_803922A8
/* 80392224 0035B7E4  38 05 00 07 */	addi r0, r5, 7
/* 80392228 0035B7E8  54 00 E8 FE */	srwi r0, r0, 3
/* 8039222C 0035B7EC  7C 09 03 A6 */	mtctr r0
/* 80392230 0035B7F0  28 05 00 00 */	cmplwi r5, 0
/* 80392234 0035B7F4  40 81 00 74 */	ble .L_803922A8
.L_80392238:
/* 80392238 0035B7F8  80 BF 00 40 */	lwz r5, 0x40(r31)
/* 8039223C 0035B7FC  7C DA 22 14 */	add r6, r26, r4
/* 80392240 0035B800  7C 1A 20 AE */	lbzx r0, r26, r4
/* 80392244 0035B804  38 84 00 08 */	addi r4, r4, 8
/* 80392248 0035B808  7C A5 02 14 */	add r5, r5, r0
/* 8039224C 0035B80C  90 BF 00 40 */	stw r5, 0x40(r31)
/* 80392250 0035B810  88 06 00 01 */	lbz r0, 1(r6)
/* 80392254 0035B814  7C A5 02 14 */	add r5, r5, r0
/* 80392258 0035B818  90 BF 00 40 */	stw r5, 0x40(r31)
/* 8039225C 0035B81C  88 06 00 02 */	lbz r0, 2(r6)
/* 80392260 0035B820  7C A5 02 14 */	add r5, r5, r0
/* 80392264 0035B824  90 BF 00 40 */	stw r5, 0x40(r31)
/* 80392268 0035B828  88 06 00 03 */	lbz r0, 3(r6)
/* 8039226C 0035B82C  7C A5 02 14 */	add r5, r5, r0
/* 80392270 0035B830  90 BF 00 40 */	stw r5, 0x40(r31)
/* 80392274 0035B834  88 06 00 04 */	lbz r0, 4(r6)
/* 80392278 0035B838  7C A5 02 14 */	add r5, r5, r0
/* 8039227C 0035B83C  90 BF 00 40 */	stw r5, 0x40(r31)
/* 80392280 0035B840  88 06 00 05 */	lbz r0, 5(r6)
/* 80392284 0035B844  7C A5 02 14 */	add r5, r5, r0
/* 80392288 0035B848  90 BF 00 40 */	stw r5, 0x40(r31)
/* 8039228C 0035B84C  88 06 00 06 */	lbz r0, 6(r6)
/* 80392290 0035B850  7C A5 02 14 */	add r5, r5, r0
/* 80392294 0035B854  90 BF 00 40 */	stw r5, 0x40(r31)
/* 80392298 0035B858  88 06 00 07 */	lbz r0, 7(r6)
/* 8039229C 0035B85C  7C 05 02 14 */	add r0, r5, r0
/* 803922A0 0035B860  90 1F 00 40 */	stw r0, 0x40(r31)
/* 803922A4 0035B864  42 00 FF 94 */	bdnz .L_80392238
.L_803922A8:
/* 803922A8 0035B868  7C 04 18 50 */	subf r0, r4, r3
/* 803922AC 0035B86C  7C BA 22 14 */	add r5, r26, r4
/* 803922B0 0035B870  7C 09 03 A6 */	mtctr r0
/* 803922B4 0035B874  7C 04 18 40 */	cmplw r4, r3
/* 803922B8 0035B878  40 80 00 1C */	bge .L_803922D4
.L_803922BC:
/* 803922BC 0035B87C  88 05 00 00 */	lbz r0, 0(r5)
/* 803922C0 0035B880  38 A5 00 01 */	addi r5, r5, 1
/* 803922C4 0035B884  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 803922C8 0035B888  7C 03 02 14 */	add r0, r3, r0
/* 803922CC 0035B88C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 803922D0 0035B890  42 00 FF EC */	bdnz .L_803922BC
.L_803922D4:
/* 803922D4 0035B894  93 9F 00 48 */	stw r28, 0x48(r31)
/* 803922D8 0035B898  38 00 00 00 */	li r0, 0
/* 803922DC 0035B89C  93 BF 00 4C */	stw r29, 0x4c(r31)
/* 803922E0 0035B8A0  93 7F 00 44 */	stw r27, 0x44(r31)
/* 803922E4 0035B8A4  90 1F 00 50 */	stw r0, 0x50(r31)
/* 803922E8 0035B8A8  90 1F 00 54 */	stw r0, 0x54(r31)
/* 803922EC 0035B8AC  80 79 00 1C */	lwz r3, 0x1c(r25)
/* 803922F0 0035B8B0  88 19 00 01 */	lbz r0, 1(r25)
/* 803922F4 0035B8B4  38 83 00 01 */	addi r4, r3, 1
/* 803922F8 0035B8B8  80 B9 00 24 */	lwz r5, 0x24(r25)
/* 803922FC 0035B8BC  54 83 E0 06 */	slwi r3, r4, 0x1c
/* 80392300 0035B8C0  7C 00 07 74 */	extsb r0, r0
/* 80392304 0035B8C4  54 84 0F FE */	srwi r4, r4, 0x1f
/* 80392308 0035B8C8  38 A5 00 01 */	addi r5, r5, 1
/* 8039230C 0035B8CC  7C 64 18 50 */	subf r3, r4, r3
/* 80392310 0035B8D0  2C 00 00 01 */	cmpwi r0, 1
/* 80392314 0035B8D4  54 60 20 3E */	rotlwi r0, r3, 4
/* 80392318 0035B8D8  90 B9 00 24 */	stw r5, 0x24(r25)
/* 8039231C 0035B8DC  7C 00 22 14 */	add r0, r0, r4
/* 80392320 0035B8E0  90 19 00 1C */	stw r0, 0x1c(r25)
/* 80392324 0035B8E4  40 82 00 0C */	bne .L_80392330
/* 80392328 0035B8E8  38 00 00 02 */	li r0, 2
/* 8039232C 0035B8EC  98 19 00 01 */	stb r0, 1(r25)
.L_80392330:
/* 80392330 0035B8F0  7F C3 F3 78 */	mr r3, r30
.L_80392334:
/* 80392334 0035B8F4  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80392338 0035B8F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8039233C 0035B8FC  7C 08 03 A6 */	mtlr r0
/* 80392340 0035B900  38 21 00 30 */	addi r1, r1, 0x30
/* 80392344 0035B904  4E 80 00 20 */	blr 
.endfn lsc_EntryFileRange

.fn LSC_Start, global
/* 80392348 0035B908  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039234C 0035B90C  7C 08 02 A6 */	mflr r0
/* 80392350 0035B910  90 01 00 24 */	stw r0, 0x24(r1)
/* 80392354 0035B914  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80392358 0035B918  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8039235C 0035B91C  7C 7E 1B 78 */	mr r30, r3
/* 80392360 0035B920  48 00 04 AD */	bl LSC_Enter
/* 80392364 0035B924  2C 1E 00 00 */	cmpwi r30, 0
/* 80392368 0035B928  40 82 00 1C */	bne .L_80392384
/* 8039236C 0035B92C  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 80392370 0035B930  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 80392374 0035B934  38 63 01 03 */	addi r3, r3, 0x103
/* 80392378 0035B938  4C C6 31 82 */	crclr 6
/* 8039237C 0035B93C  4B FF F4 61 */	bl LSC_CallErrFunc_
/* 80392380 0035B940  48 00 00 E0 */	b .L_80392460
.L_80392384:
/* 80392384 0035B944  38 61 00 08 */	addi r3, r1, 8
/* 80392388 0035B948  48 00 04 8D */	bl LSC_LockCrs
/* 8039238C 0035B94C  88 1E 00 01 */	lbz r0, 1(r30)
/* 80392390 0035B950  7C 00 07 75 */	extsb. r0, r0
/* 80392394 0035B954  41 82 00 A4 */	beq .L_80392438
/* 80392398 0035B958  48 00 04 75 */	bl LSC_Enter
/* 8039239C 0035B95C  2C 1E 00 00 */	cmpwi r30, 0
/* 803923A0 0035B960  40 82 00 1C */	bne .L_803923BC
/* 803923A4 0035B964  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 803923A8 0035B968  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 803923AC 0035B96C  38 63 00 5F */	addi r3, r3, 0x5f
/* 803923B0 0035B970  4C C6 31 82 */	crclr 6
/* 803923B4 0035B974  4B FF F4 29 */	bl LSC_CallErrFunc_
/* 803923B8 0035B978  48 00 00 7C */	b .L_80392434
.L_803923BC:
/* 803923BC 0035B97C  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 803923C0 0035B980  2C 03 00 00 */	cmpwi r3, 0
/* 803923C4 0035B984  41 82 00 10 */	beq .L_803923D4
/* 803923C8 0035B988  4B FE F3 7D */	bl ADXSTM_Stop
/* 803923CC 0035B98C  38 00 00 00 */	li r0, 0
/* 803923D0 0035B990  98 1E 00 02 */	stb r0, 2(r30)
.L_803923D4:
/* 803923D4 0035B994  88 1E 00 01 */	lbz r0, 1(r30)
/* 803923D8 0035B998  7C 00 07 75 */	extsb. r0, r0
/* 803923DC 0035B99C  41 82 00 58 */	beq .L_80392434
/* 803923E0 0035B9A0  3B E0 00 00 */	li r31, 0
/* 803923E4 0035B9A4  9B FE 00 01 */	stb r31, 1(r30)
/* 803923E8 0035B9A8  93 FE 00 2C */	stw r31, 0x2c(r30)
/* 803923EC 0035B9AC  48 00 04 21 */	bl LSC_Enter
/* 803923F0 0035B9B0  2C 1E 00 00 */	cmpwi r30, 0
/* 803923F4 0035B9B4  40 82 00 1C */	bne .L_80392410
/* 803923F8 0035B9B8  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 803923FC 0035B9BC  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 80392400 0035B9C0  38 63 00 88 */	addi r3, r3, 0x88
/* 80392404 0035B9C4  4C C6 31 82 */	crclr 6
/* 80392408 0035B9C8  4B FF F3 D5 */	bl LSC_CallErrFunc_
/* 8039240C 0035B9CC  48 00 00 1C */	b .L_80392428
.L_80392410:
/* 80392410 0035B9D0  88 1E 00 01 */	lbz r0, 1(r30)
/* 80392414 0035B9D4  7C 00 07 75 */	extsb. r0, r0
/* 80392418 0035B9D8  40 82 00 10 */	bne .L_80392428
/* 8039241C 0035B9DC  93 FE 00 1C */	stw r31, 0x1c(r30)
/* 80392420 0035B9E0  93 FE 00 20 */	stw r31, 0x20(r30)
/* 80392424 0035B9E4  93 FE 00 24 */	stw r31, 0x24(r30)
.L_80392428:
/* 80392428 0035B9E8  48 00 03 E9 */	bl LSC_Leave
/* 8039242C 0035B9EC  38 00 00 00 */	li r0, 0
/* 80392430 0035B9F0  90 1E 00 34 */	stw r0, 0x34(r30)
.L_80392434:
/* 80392434 0035B9F4  48 00 03 DD */	bl LSC_Leave
.L_80392438:
/* 80392438 0035B9F8  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8039243C 0035B9FC  2C 00 00 00 */	cmpwi r0, 0
/* 80392440 0035BA00  40 81 00 10 */	ble .L_80392450
/* 80392444 0035BA04  38 00 00 02 */	li r0, 2
/* 80392448 0035BA08  98 1E 00 01 */	stb r0, 1(r30)
/* 8039244C 0035BA0C  48 00 00 0C */	b .L_80392458
.L_80392450:
/* 80392450 0035BA10  38 00 00 01 */	li r0, 1
/* 80392454 0035BA14  98 1E 00 01 */	stb r0, 1(r30)
.L_80392458:
/* 80392458 0035BA18  38 61 00 08 */	addi r3, r1, 8
/* 8039245C 0035BA1C  48 00 03 BD */	bl LSC_UnlockCrs
.L_80392460:
/* 80392460 0035BA20  48 00 03 B1 */	bl LSC_Leave
/* 80392464 0035BA24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80392468 0035BA28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8039246C 0035BA2C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80392470 0035BA30  7C 08 03 A6 */	mtlr r0
/* 80392474 0035BA34  38 21 00 20 */	addi r1, r1, 0x20
/* 80392478 0035BA38  4E 80 00 20 */	blr 
.endfn LSC_Start

.fn LSC_Stop, global
/* 8039247C 0035BA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80392480 0035BA40  7C 08 02 A6 */	mflr r0
/* 80392484 0035BA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80392488 0035BA48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039248C 0035BA4C  93 C1 00 08 */	stw r30, 8(r1)
/* 80392490 0035BA50  7C 7E 1B 78 */	mr r30, r3
/* 80392494 0035BA54  48 00 03 79 */	bl LSC_Enter
/* 80392498 0035BA58  2C 1E 00 00 */	cmpwi r30, 0
/* 8039249C 0035BA5C  40 82 00 1C */	bne .L_803924B8
/* 803924A0 0035BA60  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 803924A4 0035BA64  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 803924A8 0035BA68  38 63 00 5F */	addi r3, r3, 0x5f
/* 803924AC 0035BA6C  4C C6 31 82 */	crclr 6
/* 803924B0 0035BA70  4B FF F3 2D */	bl LSC_CallErrFunc_
/* 803924B4 0035BA74  48 00 00 7C */	b .L_80392530
.L_803924B8:
/* 803924B8 0035BA78  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 803924BC 0035BA7C  2C 03 00 00 */	cmpwi r3, 0
/* 803924C0 0035BA80  41 82 00 10 */	beq .L_803924D0
/* 803924C4 0035BA84  4B FE F2 81 */	bl ADXSTM_Stop
/* 803924C8 0035BA88  38 00 00 00 */	li r0, 0
/* 803924CC 0035BA8C  98 1E 00 02 */	stb r0, 2(r30)
.L_803924D0:
/* 803924D0 0035BA90  88 1E 00 01 */	lbz r0, 1(r30)
/* 803924D4 0035BA94  7C 00 07 75 */	extsb. r0, r0
/* 803924D8 0035BA98  41 82 00 58 */	beq .L_80392530
/* 803924DC 0035BA9C  3B E0 00 00 */	li r31, 0
/* 803924E0 0035BAA0  9B FE 00 01 */	stb r31, 1(r30)
/* 803924E4 0035BAA4  93 FE 00 2C */	stw r31, 0x2c(r30)
/* 803924E8 0035BAA8  48 00 03 25 */	bl LSC_Enter
/* 803924EC 0035BAAC  2C 1E 00 00 */	cmpwi r30, 0
/* 803924F0 0035BAB0  40 82 00 1C */	bne .L_8039250C
/* 803924F4 0035BAB4  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 803924F8 0035BAB8  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 803924FC 0035BABC  38 63 00 88 */	addi r3, r3, 0x88
/* 80392500 0035BAC0  4C C6 31 82 */	crclr 6
/* 80392504 0035BAC4  4B FF F2 D9 */	bl LSC_CallErrFunc_
/* 80392508 0035BAC8  48 00 00 1C */	b .L_80392524
.L_8039250C:
/* 8039250C 0035BACC  88 1E 00 01 */	lbz r0, 1(r30)
/* 80392510 0035BAD0  7C 00 07 75 */	extsb. r0, r0
/* 80392514 0035BAD4  40 82 00 10 */	bne .L_80392524
/* 80392518 0035BAD8  93 FE 00 1C */	stw r31, 0x1c(r30)
/* 8039251C 0035BADC  93 FE 00 20 */	stw r31, 0x20(r30)
/* 80392520 0035BAE0  93 FE 00 24 */	stw r31, 0x24(r30)
.L_80392524:
/* 80392524 0035BAE4  48 00 02 ED */	bl LSC_Leave
/* 80392528 0035BAE8  38 00 00 00 */	li r0, 0
/* 8039252C 0035BAEC  90 1E 00 34 */	stw r0, 0x34(r30)
.L_80392530:
/* 80392530 0035BAF0  48 00 02 E1 */	bl LSC_Leave
/* 80392534 0035BAF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80392538 0035BAF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039253C 0035BAFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80392540 0035BB00  7C 08 03 A6 */	mtlr r0
/* 80392544 0035BB04  38 21 00 10 */	addi r1, r1, 0x10
/* 80392548 0035BB08  4E 80 00 20 */	blr
.endfn LSC_Stop

.fn LSC_Pause, global
/* 8039254C 0035BB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80392550 0035BB10  7C 08 02 A6 */	mflr r0
/* 80392554 0035BB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80392558 0035BB18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039255C 0035BB1C  7C 9F 23 78 */	mr r31, r4
/* 80392560 0035BB20  93 C1 00 08 */	stw r30, 8(r1)
/* 80392564 0035BB24  7C 7E 1B 78 */	mr r30, r3
/* 80392568 0035BB28  48 00 02 A5 */	bl LSC_Enter
/* 8039256C 0035BB2C  2C 1E 00 00 */	cmpwi r30, 0
/* 80392570 0035BB30  40 82 00 1C */	bne .L_8039258C
/* 80392574 0035BB34  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 80392578 0035BB38  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 8039257C 0035BB3C  38 63 01 2C */	addi r3, r3, 0x12c
/* 80392580 0035BB40  4C C6 31 82 */	crclr 6
/* 80392584 0035BB44  4B FF F2 59 */	bl LSC_CallErrFunc_
/* 80392588 0035BB48  48 00 00 20 */	b .L_803925A8
.L_8039258C:
/* 8039258C 0035BB4C  2C 1F 00 01 */	cmpwi r31, 1
/* 80392590 0035BB50  40 82 00 10 */	bne .L_803925A0
/* 80392594 0035BB54  38 00 00 01 */	li r0, 1
/* 80392598 0035BB58  98 1E 00 04 */	stb r0, 4(r30)
/* 8039259C 0035BB5C  48 00 00 0C */	b .L_803925A8
.L_803925A0:
/* 803925A0 0035BB60  38 00 00 00 */	li r0, 0
/* 803925A4 0035BB64  98 1E 00 04 */	stb r0, 4(r30)
.L_803925A8:
/* 803925A8 0035BB68  48 00 02 69 */	bl LSC_Leave
/* 803925AC 0035BB6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803925B0 0035BB70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803925B4 0035BB74  83 C1 00 08 */	lwz r30, 8(r1)
/* 803925B8 0035BB78  7C 08 03 A6 */	mtlr r0
/* 803925BC 0035BB7C  38 21 00 10 */	addi r1, r1, 0x10
/* 803925C0 0035BB80  4E 80 00 20 */	blr 
.endfn LSC_Pause

.fn LSC_ExecServer, global
/* 803925C4 0035BB84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803925C8 0035BB88  7C 08 02 A6 */	mflr r0
/* 803925CC 0035BB8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803925D0 0035BB90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803925D4 0035BB94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803925D8 0035BB98  48 00 02 35 */	bl LSC_Enter
/* 803925DC 0035BB9C  38 61 00 08 */	addi r3, r1, 8
/* 803925E0 0035BBA0  48 00 02 35 */	bl LSC_LockCrs
/* 803925E4 0035BBA4  3F C0 80 5F */	lis r30, lsc_obj@ha
/* 803925E8 0035BBA8  3B E0 00 00 */	li r31, 0
/* 803925EC 0035BBAC  3B DE B3 80 */	addi r30, r30, lsc_obj@l
.L_803925F0:
/* 803925F0 0035BBB0  88 1E 00 00 */	lbz r0, 0(r30)
/* 803925F4 0035BBB4  2C 00 00 01 */	cmpwi r0, 1
/* 803925F8 0035BBB8  40 82 00 0C */	bne .L_80392604
/* 803925FC 0035BBBC  7F C3 F3 78 */	mr r3, r30
/* 80392600 0035BBC0  4B FF F6 39 */	bl lsc_ExecHndl
.L_80392604:
/* 80392604 0035BBC4  3B FF 00 01 */	addi r31, r31, 1
/* 80392608 0035BBC8  3B DE 02 38 */	addi r30, r30, 0x238
/* 8039260C 0035BBCC  2C 1F 00 20 */	cmpwi r31, 0x20
/* 80392610 0035BBD0  41 80 FF E0 */	blt .L_803925F0
/* 80392614 0035BBD4  38 61 00 08 */	addi r3, r1, 8
/* 80392618 0035BBD8  48 00 02 01 */	bl LSC_UnlockCrs
/* 8039261C 0035BBDC  48 00 01 F5 */	bl LSC_Leave
/* 80392620 0035BBE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80392624 0035BBE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80392628 0035BBE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8039262C 0035BBEC  7C 08 03 A6 */	mtlr r0
/* 80392630 0035BBF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80392634 0035BBF4  4E 80 00 20 */	blr 
.endfn LSC_ExecServer

.fn LSC_GetStat, global
/* 80392638 0035BBF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039263C 0035BBFC  7C 08 02 A6 */	mflr r0
/* 80392640 0035BC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80392644 0035BC04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80392648 0035BC08  7C 7F 1B 78 */	mr r31, r3
/* 8039264C 0035BC0C  48 00 01 C1 */	bl LSC_Enter
/* 80392650 0035BC10  2C 1F 00 00 */	cmpwi r31, 0
/* 80392654 0035BC14  40 82 00 20 */	bne .L_80392674
/* 80392658 0035BC18  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 8039265C 0035BC1C  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 80392660 0035BC20  38 63 01 55 */	addi r3, r3, 0x155
/* 80392664 0035BC24  4C C6 31 82 */	crclr 6
/* 80392668 0035BC28  4B FF F1 75 */	bl LSC_CallErrFunc_
/* 8039266C 0035BC2C  3B E0 FF FF */	li r31, -1
/* 80392670 0035BC30  48 00 00 0C */	b .L_8039267C
.L_80392674:
/* 80392674 0035BC34  8B FF 00 01 */	lbz r31, 1(r31)
/* 80392678 0035BC38  7F FF 07 74 */	extsb r31, r31
.L_8039267C:
/* 8039267C 0035BC3C  48 00 01 95 */	bl LSC_Leave
/* 80392680 0035BC40  7F E3 FB 78 */	mr r3, r31
/* 80392684 0035BC44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80392688 0035BC48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039268C 0035BC4C  7C 08 03 A6 */	mtlr r0
/* 80392690 0035BC50  38 21 00 10 */	addi r1, r1, 0x10
/* 80392694 0035BC54  4E 80 00 20 */	blr 
.endfn LSC_GetStat

.fn LSC_GetNumStm, global
/* 80392698 0035BC58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039269C 0035BC5C  7C 08 02 A6 */	mflr r0
/* 803926A0 0035BC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 803926A4 0035BC64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803926A8 0035BC68  7C 7F 1B 78 */	mr r31, r3
/* 803926AC 0035BC6C  48 00 01 61 */	bl LSC_Enter
/* 803926B0 0035BC70  2C 1F 00 00 */	cmpwi r31, 0
/* 803926B4 0035BC74  40 82 00 20 */	bne .L_803926D4
/* 803926B8 0035BC78  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 803926BC 0035BC7C  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 803926C0 0035BC80  38 63 01 7E */	addi r3, r3, 0x17e
/* 803926C4 0035BC84  4C C6 31 82 */	crclr 6
/* 803926C8 0035BC88  4B FF F1 15 */	bl LSC_CallErrFunc_
/* 803926CC 0035BC8C  3B E0 FF FF */	li r31, -1
/* 803926D0 0035BC90  48 00 00 08 */	b .L_803926D8
.L_803926D4:
/* 803926D4 0035BC94  83 FF 00 24 */	lwz r31, 0x24(r31)
.L_803926D8:
/* 803926D8 0035BC98  48 00 01 39 */	bl LSC_Leave
/* 803926DC 0035BC9C  7F E3 FB 78 */	mr r3, r31
/* 803926E0 0035BCA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803926E4 0035BCA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803926E8 0035BCA8  7C 08 03 A6 */	mtlr r0
/* 803926EC 0035BCAC  38 21 00 10 */	addi r1, r1, 0x10
/* 803926F0 0035BCB0  4E 80 00 20 */	blr
.endfn LSC_GetNumStm

.fn LSC_SetFlowLimit, global
/* 803926F4 0035BCB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803926F8 0035BCB8  7C 08 02 A6 */	mflr r0
/* 803926FC 0035BCBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80392700 0035BCC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80392704 0035BCC4  7C 9F 23 78 */	mr r31, r4
/* 80392708 0035BCC8  93 C1 00 08 */	stw r30, 8(r1)
/* 8039270C 0035BCCC  7C 7E 1B 78 */	mr r30, r3
/* 80392710 0035BCD0  48 00 00 FD */	bl LSC_Enter
/* 80392714 0035BCD4  2C 1E 00 00 */	cmpwi r30, 0
/* 80392718 0035BCD8  40 82 00 1C */	bne .L_80392734
/* 8039271C 0035BCDC  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 80392720 0035BCE0  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 80392724 0035BCE4  38 63 02 EC */	addi r3, r3, 0x2ec
/* 80392728 0035BCE8  4C C6 31 82 */	crclr 6
/* 8039272C 0035BCEC  4B FF F0 B1 */	bl LSC_CallErrFunc_
/* 80392730 0035BCF0  48 00 00 38 */	b .L_80392768
.L_80392734:
/* 80392734 0035BCF4  2C 1F 00 00 */	cmpwi r31, 0
/* 80392738 0035BCF8  41 80 00 10 */	blt .L_80392748
/* 8039273C 0035BCFC  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80392740 0035BD00  7C 1F 00 00 */	cmpw r31, r0
/* 80392744 0035BD04  40 81 00 20 */	ble .L_80392764
.L_80392748:
/* 80392748 0035BD08  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 8039274C 0035BD0C  7F E4 FB 78 */	mr r4, r31
/* 80392750 0035BD10  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 80392754 0035BD14  38 63 03 15 */	addi r3, r3, 0x315
/* 80392758 0035BD18  4C C6 31 82 */	crclr 6
/* 8039275C 0035BD1C  4B FF F0 81 */	bl LSC_CallErrFunc_
/* 80392760 0035BD20  48 00 00 08 */	b .L_80392768
.L_80392764:
/* 80392764 0035BD24  93 FE 00 14 */	stw r31, 0x14(r30)
.L_80392768:
/* 80392768 0035BD28  48 00 00 A9 */	bl LSC_Leave
/* 8039276C 0035BD2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80392770 0035BD30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80392774 0035BD34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80392778 0035BD38  7C 08 03 A6 */	mtlr r0
/* 8039277C 0035BD3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80392780 0035BD40  4E 80 00 20 */	blr 
.endfn LSC_SetFlowLimit

.fn LSC_CallStatFunc, global
/* 80392784 0035BD44  3C 80 80 5F */	lis r4, lbl_805EFA80@ha
/* 80392788 0035BD48  38 84 FA 80 */	addi r4, r4, lbl_805EFA80@l
/* 8039278C 0035BD4C  81 84 00 00 */	lwz r12, 0(r4)
/* 80392790 0035BD50  2C 0C 00 00 */	cmpwi r12, 0
/* 80392794 0035BD54  4D 82 00 20 */	beqlr 
/* 80392798 0035BD58  80 64 00 04 */	lwz r3, 4(r4)
/* 8039279C 0035BD5C  80 84 00 08 */	lwz r4, 8(r4)
/* 803927A0 0035BD60  7D 89 03 A6 */	mtctr r12
/* 803927A4 0035BD64  4E 80 04 20 */	bctr 
/* 803927A8 0035BD68  4E 80 00 20 */	blr 
.endfn LSC_CallStatFunc

.fn LSC_SetLpFlg, global
/* 803927AC 0035BD6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803927B0 0035BD70  7C 08 02 A6 */	mflr r0
/* 803927B4 0035BD74  90 01 00 14 */	stw r0, 0x14(r1)
/* 803927B8 0035BD78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803927BC 0035BD7C  7C 9F 23 78 */	mr r31, r4
/* 803927C0 0035BD80  93 C1 00 08 */	stw r30, 8(r1)
/* 803927C4 0035BD84  7C 7E 1B 78 */	mr r30, r3
/* 803927C8 0035BD88  48 00 00 45 */	bl LSC_Enter
/* 803927CC 0035BD8C  2C 1E 00 00 */	cmpwi r30, 0
/* 803927D0 0035BD90  40 82 00 1C */	bne .L_803927EC
/* 803927D4 0035BD94  3C 60 80 52 */	lis r3, lsc_strpool@ha
/* 803927D8 0035BD98  38 63 BA B8 */	addi r3, r3, lsc_strpool@l
/* 803927DC 0035BD9C  38 63 03 69 */	addi r3, r3, 0x369
/* 803927E0 0035BDA0  4C C6 31 82 */	crclr 6
/* 803927E4 0035BDA4  4B FF EF F9 */	bl LSC_CallErrFunc_
/* 803927E8 0035BDA8  48 00 00 08 */	b .L_803927F0
.L_803927EC:
/* 803927EC 0035BDAC  9B FE 00 03 */	stb r31, 3(r30)
.L_803927F0:
/* 803927F0 0035BDB0  48 00 00 21 */	bl LSC_Leave
/* 803927F4 0035BDB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803927F8 0035BDB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803927FC 0035BDBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80392800 0035BDC0  7C 08 03 A6 */	mtlr r0
/* 80392804 0035BDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80392808 0035BDC8  4E 80 00 20 */	blr 
.endfn LSC_SetLpFlg

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lsc_strpool, global
	.asciz "E2005012801: Invalid parameter=sj (LSC_Create)\n"
	.asciz "E2005012802: Not enough instance (LSC_Create)\n"
	.asciz "E2005012807: Invalid parameter lsc=NULL\n"
	.asciz "E2005012805: Invalid parameter lsc=NULL\n"
	.asciz "E2005012803: Invalid parameter lsc=NULL\n"
	.asciz "E2005012804: Invalid parameter fname=%s\n"
	.asciz "E2005012806: Invalid parameter lsc=NULL\n"
	.asciz "E2005012808: Invalid parameter lsc=NULL\n"
	.asciz "E2005012809: Invalid parameter lsc=NULL\n"
	.asciz "E2005012810: Invalid parameter lsc=NULL\n"
	.asciz "E2005012811: Invalid parameter lsc=NULL\n"
	.asciz "E2005012812: Invalid parameter no=%d\n"
	.asciz "E2005012813: Invalid parameter lsc=NULL\n"
	.asciz "E2005012814: Can not find stream ID =%d\n"
	.asciz "E2005012815: Invalid parameter lsc=NULL\n"
	.asciz "E2005012816: Can not find stream ID =%d\n"
	.asciz "E2005012817: Invalid parameter lsc=NULL\n"
	.asciz "E2005012818: Can not find stream ID =%d\n"
	.asciz "E2005012819: Invalid parameter lsc=NULL\n"
	.asciz "E2005012820: Invalid parameter min_val=%d\n"
	.asciz "E2005012821: Invalid parameter lsc=NULL\n"
	.asciz "E2005012822: Invalid parameter lsc=NULL\n"
	.balign 4
	.4byte 0
.endobj lsc_strpool

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj lsc_obj, global
	.skip 0x4700
.endobj lsc_obj

.obj lbl_805EFA80, global
	.skip 0x10
.endobj lbl_805EFA80