.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_80294CB4, global
/* 80294CB4 0025E274  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80294CB8 0025E278  7C 08 02 A6 */	mflr r0
/* 80294CBC 0025E27C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80294CC0 0025E280  39 61 00 20 */	addi r11, r1, 0x20
/* 80294CC4 0025E284  48 02 54 99 */	bl _savegpr_29
/* 80294CC8 0025E288  7C 7D 1B 78 */	mr r29, r3
/* 80294CCC 0025E28C  7C 9E 23 78 */	mr r30, r4
/* 80294CD0 0025E290  48 1A FD 49 */	bl __ct__8CProcessFv
/* 80294CD4 0025E294  3C 60 80 54 */	lis r3, __vt__CTTask_CTaskGamePic@ha
/* 80294CD8 0025E298  C0 22 B0 D8 */	lfs f1, float_8066B458@sda21(r2)
/* 80294CDC 0025E29C  38 63 C3 78 */	addi r3, r3, __vt__CTTask_CTaskGamePic@l
/* 80294CE0 0025E2A0  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80294CE4 0025E2A4  3D 00 80 51 */	lis r8, lbl_8050CE10@ha
/* 80294CE8 0025E2A8  3C A0 80 54 */	lis r5, __vt__CTaskGamePic@ha
/* 80294CEC 0025E2AC  84 68 CE 10 */	lwzu r3, lbl_8050CE10@l(r8)
/* 80294CF0 0025E2B0  38 A5 C2 90 */	addi r5, r5, __vt__CTaskGamePic@l
/* 80294CF4 0025E2B4  FC 40 08 90 */	fmr f2, f1
/* 80294CF8 0025E2B8  38 85 00 24 */	addi r4, r5, 0x24
/* 80294CFC 0025E2BC  80 08 00 04 */	lwz r0, 4(r8)
/* 80294D00 0025E2C0  FC 60 08 90 */	fmr f3, f1
/* 80294D04 0025E2C4  90 1D 00 40 */	stw r0, 0x40(r29)
/* 80294D08 0025E2C8  FC 80 08 90 */	fmr f4, f1
/* 80294D0C 0025E2CC  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80294D10 0025E2D0  38 05 00 AC */	addi r0, r5, 0xac
/* 80294D14 0025E2D4  3B E0 00 00 */	li r31, 0
/* 80294D18 0025E2D8  38 7D 00 90 */	addi r3, r29, 0x90
/* 80294D1C 0025E2DC  80 C8 00 08 */	lwz r6, 8(r8)
/* 80294D20 0025E2E0  90 DD 00 44 */	stw r6, 0x44(r29)
/* 80294D24 0025E2E4  80 E8 00 00 */	lwz r7, 0(r8)
/* 80294D28 0025E2E8  80 C8 00 04 */	lwz r6, 4(r8)
/* 80294D2C 0025E2EC  90 DD 00 4C */	stw r6, 0x4c(r29)
/* 80294D30 0025E2F0  90 FD 00 48 */	stw r7, 0x48(r29)
/* 80294D34 0025E2F4  80 C8 00 08 */	lwz r6, 8(r8)
/* 80294D38 0025E2F8  90 DD 00 50 */	stw r6, 0x50(r29)
/* 80294D3C 0025E2FC  90 BD 00 10 */	stw r5, 0x10(r29)
/* 80294D40 0025E300  90 9D 00 54 */	stw r4, 0x54(r29)
/* 80294D44 0025E304  90 1D 00 58 */	stw r0, 0x58(r29)
/* 80294D48 0025E308  93 DD 00 5C */	stw r30, 0x5c(r29)
/* 80294D4C 0025E30C  93 FD 00 60 */	stw r31, 0x60(r29)
/* 80294D50 0025E310  93 FD 00 64 */	stw r31, 0x64(r29)
/* 80294D54 0025E314  93 FD 00 68 */	stw r31, 0x68(r29)
/* 80294D58 0025E318  9B FD 00 8C */	stb r31, 0x8c(r29)
/* 80294D5C 0025E31C  4B DA BA 6D */	bl func_800407C8
/* 80294D60 0025E320  C0 22 B0 D8 */	lfs f1, float_8066B458@sda21(r2)
/* 80294D64 0025E324  38 7D 00 A0 */	addi r3, r29, 0xa0
/* 80294D68 0025E328  FC 40 08 90 */	fmr f2, f1
/* 80294D6C 0025E32C  FC 60 08 90 */	fmr f3, f1
/* 80294D70 0025E330  FC 80 08 90 */	fmr f4, f1
/* 80294D74 0025E334  4B DA BA 55 */	bl func_800407C8
/* 80294D78 0025E338  C0 22 B0 D8 */	lfs f1, float_8066B458@sda21(r2)
/* 80294D7C 0025E33C  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 80294D80 0025E340  FC 40 08 90 */	fmr f2, f1
/* 80294D84 0025E344  FC 60 08 90 */	fmr f3, f1
/* 80294D88 0025E348  FC 80 08 90 */	fmr f4, f1
/* 80294D8C 0025E34C  4B DA BA 3D */	bl func_800407C8
/* 80294D90 0025E350  93 FD 00 C0 */	stw r31, 0xc0(r29)
/* 80294D94 0025E354  39 61 00 20 */	addi r11, r1, 0x20
/* 80294D98 0025E358  7F A3 EB 78 */	mr r3, r29
/* 80294D9C 0025E35C  93 FD 00 C4 */	stw r31, 0xc4(r29)
/* 80294DA0 0025E360  48 02 54 09 */	bl _restgpr_29
/* 80294DA4 0025E364  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80294DA8 0025E368  7C 08 03 A6 */	mtlr r0
/* 80294DAC 0025E36C  38 21 00 20 */	addi r1, r1, 0x20
/* 80294DB0 0025E370  4E 80 00 20 */	blr 
.endfn func_80294CB4

.fn __dt__CTTask_CTaskGamePic, global
/* 80294DB4 0025E374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294DB8 0025E378  7C 08 02 A6 */	mflr r0
/* 80294DBC 0025E37C  2C 03 00 00 */	cmpwi r3, 0
/* 80294DC0 0025E380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294DC4 0025E384  BF C1 00 08 */	stmw r30, 8(r1)
/* 80294DC8 0025E388  7C 7E 1B 78 */	mr r30, r3
/* 80294DCC 0025E38C  7C 9F 23 78 */	mr r31, r4
/* 80294DD0 0025E390  41 82 00 1C */	beq .L_80294DEC
/* 80294DD4 0025E394  38 80 00 00 */	li r4, 0
/* 80294DD8 0025E398  48 1A FD 61 */	bl __dt__CProcess
/* 80294DDC 0025E39C  2C 1F 00 00 */	cmpwi r31, 0
/* 80294DE0 0025E3A0  40 81 00 0C */	ble .L_80294DEC
/* 80294DE4 0025E3A4  7F C3 F3 78 */	mr r3, r30
/* 80294DE8 0025E3A8  48 19 FE 45 */	bl __dl__FPv
.L_80294DEC:
/* 80294DEC 0025E3AC  7F C3 F3 78 */	mr r3, r30
/* 80294DF0 0025E3B0  BB C1 00 08 */	lmw r30, 8(r1)
/* 80294DF4 0025E3B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294DF8 0025E3B8  7C 08 03 A6 */	mtlr r0
/* 80294DFC 0025E3BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80294E00 0025E3C0  4E 80 00 20 */	blr
.endfn __dt__CTTask_CTaskGamePic

.fn __dt__CTaskGamePic, global
/* 80294E04 0025E3C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294E08 0025E3C8  7C 08 02 A6 */	mflr r0
/* 80294E0C 0025E3CC  2C 03 00 00 */	cmpwi r3, 0
/* 80294E10 0025E3D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294E14 0025E3D4  BF C1 00 08 */	stmw r30, 8(r1)
/* 80294E18 0025E3D8  7C 7E 1B 78 */	mr r30, r3
/* 80294E1C 0025E3DC  7C 9F 23 78 */	mr r31, r4
/* 80294E20 0025E3E0  41 82 00 20 */	beq .L_80294E40
/* 80294E24 0025E3E4  41 82 00 0C */	beq .L_80294E30
/* 80294E28 0025E3E8  38 80 00 00 */	li r4, 0
/* 80294E2C 0025E3EC  48 1A FD 0D */	bl __dt__CProcess
.L_80294E30:
/* 80294E30 0025E3F0  2C 1F 00 00 */	cmpwi r31, 0
/* 80294E34 0025E3F4  40 81 00 0C */	ble .L_80294E40
/* 80294E38 0025E3F8  7F C3 F3 78 */	mr r3, r30
/* 80294E3C 0025E3FC  48 19 FD F1 */	bl __dl__FPv
.L_80294E40:
/* 80294E40 0025E400  7F C3 F3 78 */	mr r3, r30
/* 80294E44 0025E404  BB C1 00 08 */	lmw r30, 8(r1)
/* 80294E48 0025E408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294E4C 0025E40C  7C 08 03 A6 */	mtlr r0
/* 80294E50 0025E410  38 21 00 10 */	addi r1, r1, 0x10
/* 80294E54 0025E414  4E 80 00 20 */	blr 
.endfn __dt__CTaskGamePic

.fn func_80294E58, global
/* 80294E58 0025E418  54 8C 40 2E */	slwi r12, r4, 8
/* 80294E5C 0025E41C  81 63 00 90 */	lwz r11, 0x90(r3)
/* 80294E60 0025E420  2C 04 00 00 */	cmpwi r4, 0
/* 80294E64 0025E424  81 43 00 94 */	lwz r10, 0x94(r3)
/* 80294E68 0025E428  81 23 00 98 */	lwz r9, 0x98(r3)
/* 80294E6C 0025E42C  81 03 00 9C */	lwz r8, 0x9c(r3)
/* 80294E70 0025E430  80 E5 00 00 */	lwz r7, 0(r5)
/* 80294E74 0025E434  80 C5 00 04 */	lwz r6, 4(r5)
/* 80294E78 0025E438  80 85 00 08 */	lwz r4, 8(r5)
/* 80294E7C 0025E43C  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80294E80 0025E440  91 63 00 A0 */	stw r11, 0xa0(r3)
/* 80294E84 0025E444  91 43 00 A4 */	stw r10, 0xa4(r3)
/* 80294E88 0025E448  91 23 00 A8 */	stw r9, 0xa8(r3)
/* 80294E8C 0025E44C  91 03 00 AC */	stw r8, 0xac(r3)
/* 80294E90 0025E450  90 E3 00 B0 */	stw r7, 0xb0(r3)
/* 80294E94 0025E454  90 C3 00 B4 */	stw r6, 0xb4(r3)
/* 80294E98 0025E458  90 83 00 B8 */	stw r4, 0xb8(r3)
/* 80294E9C 0025E45C  90 03 00 BC */	stw r0, 0xbc(r3)
/* 80294EA0 0025E460  91 83 00 C0 */	stw r12, 0xc0(r3)
/* 80294EA4 0025E464  91 83 00 C4 */	stw r12, 0xc4(r3)
/* 80294EA8 0025E468  4C 82 00 20 */	bnelr 
/* 80294EAC 0025E46C  90 E3 00 90 */	stw r7, 0x90(r3)
/* 80294EB0 0025E470  90 C3 00 94 */	stw r6, 0x94(r3)
/* 80294EB4 0025E474  90 83 00 98 */	stw r4, 0x98(r3)
/* 80294EB8 0025E478  90 03 00 9C */	stw r0, 0x9c(r3)
/* 80294EBC 0025E47C  4E 80 00 20 */	blr 
.endfn func_80294E58

.fn func_80294EC0, global
/* 80294EC0 0025E480  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80294EC4 0025E484  7C 08 02 A6 */	mflr r0
/* 80294EC8 0025E488  2C 03 00 00 */	cmpwi r3, 0
/* 80294ECC 0025E48C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80294ED0 0025E490  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 80294ED4 0025E494  7C 7D 1B 78 */	mr r29, r3
/* 80294ED8 0025E498  7C 9E 23 78 */	mr r30, r4
/* 80294EDC 0025E49C  7F BF EB 78 */	mr r31, r29
/* 80294EE0 0025E4A0  41 82 00 08 */	beq .L_80294EE8
/* 80294EE4 0025E4A4  3B E3 00 54 */	addi r31, r3, 0x54
.L_80294EE8:
/* 80294EE8 0025E4A8  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 80294EEC 0025E4AC  48 20 11 05 */	bl func_80495FF0
/* 80294EF0 0025E4B0  7F C4 F3 78 */	mr r4, r30
/* 80294EF4 0025E4B4  7F E5 FB 78 */	mr r5, r31
/* 80294EF8 0025E4B8  38 C0 00 00 */	li r6, 0
/* 80294EFC 0025E4BC  38 E0 00 00 */	li r7, 0
/* 80294F00 0025E4C0  48 1B 98 95 */	bl func_8044E794
/* 80294F04 0025E4C4  90 7D 00 60 */	stw r3, 0x60(r29)
/* 80294F08 0025E4C8  38 80 00 00 */	li r4, 0
/* 80294F0C 0025E4CC  48 1B A2 49 */	bl func_8044F154
/* 80294F10 0025E4D0  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 80294F14 0025E4D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80294F18 0025E4D8  7C 08 03 A6 */	mtlr r0
/* 80294F1C 0025E4DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80294F20 0025E4E0  4E 80 00 20 */	blr 
.endfn func_80294EC0

.fn func_80294F24, global
/* 80294F24 0025E4E4  2C 03 00 00 */	cmpwi r3, 0
/* 80294F28 0025E4E8  7C 64 1B 78 */	mr r4, r3
/* 80294F2C 0025E4EC  41 82 00 08 */	beq .L_80294F34
/* 80294F30 0025E4F0  38 83 00 58 */	addi r4, r3, 0x58
.L_80294F34:
/* 80294F34 0025E4F4  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 80294F38 0025E4F8  38 A0 00 0B */	li r5, 0xb
/* 80294F3C 0025E4FC  38 C0 00 00 */	li r6, 0
/* 80294F40 0025E500  48 20 0F 74 */	b func_80495EB4
.endfn func_80294F24

.fn func_80294F44, global
/* 80294F44 0025E504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80294F48 0025E508  7C 08 02 A6 */	mflr r0
/* 80294F4C 0025E50C  2C 03 00 00 */	cmpwi r3, 0
/* 80294F50 0025E510  90 01 00 14 */	stw r0, 0x14(r1)
/* 80294F54 0025E514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80294F58 0025E518  7C 7F 1B 78 */	mr r31, r3
/* 80294F5C 0025E51C  7F E4 FB 78 */	mr r4, r31
/* 80294F60 0025E520  41 82 00 08 */	beq .L_80294F68
/* 80294F64 0025E524  38 83 00 58 */	addi r4, r3, 0x58
.L_80294F68:
/* 80294F68 0025E528  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 80294F6C 0025E52C  48 20 0F E5 */	bl func_80495F50
/* 80294F70 0025E530  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80294F74 0025E534  2C 03 00 00 */	cmpwi r3, 0
/* 80294F78 0025E538  41 82 00 10 */	beq .L_80294F88
/* 80294F7C 0025E53C  48 1B A1 9D */	bl func_8044F118
/* 80294F80 0025E540  38 00 00 00 */	li r0, 0
/* 80294F84 0025E544  90 1F 00 60 */	stw r0, 0x60(r31)
.L_80294F88:
/* 80294F88 0025E548  48 1B 3A BD */	bl func_80448A44
/* 80294F8C 0025E54C  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 80294F90 0025E550  2C 03 00 00 */	cmpwi r3, 0
/* 80294F94 0025E554  41 82 00 10 */	beq .L_80294FA4
/* 80294F98 0025E558  48 19 F5 41 */	bl func_804344D8
/* 80294F9C 0025E55C  38 00 00 00 */	li r0, 0
/* 80294FA0 0025E560  90 1F 00 64 */	stw r0, 0x64(r31)
.L_80294FA4:
/* 80294FA4 0025E564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294FA8 0025E568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80294FAC 0025E56C  7C 08 03 A6 */	mtlr r0
/* 80294FB0 0025E570  38 21 00 10 */	addi r1, r1, 0x10
/* 80294FB4 0025E574  4E 80 00 20 */	blr 
.endfn func_80294F44

.fn func_80294FB8, global
/* 80294FB8 0025E578  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80294FBC 0025E57C  3C 00 43 30 */	lis r0, 0x4330
/* 80294FC0 0025E580  80 83 00 C0 */	lwz r4, 0xc0(r3)
/* 80294FC4 0025E584  90 01 00 08 */	stw r0, 8(r1)
/* 80294FC8 0025E588  2C 04 00 00 */	cmpwi r4, 0
/* 80294FCC 0025E58C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80294FD0 0025E590  41 82 01 1C */	beq .L_802950EC
/* 80294FD4 0025E594  34 C4 FF 00 */	addic. r6, r4, -256
/* 80294FD8 0025E598  90 C3 00 C0 */	stw r6, 0xc0(r3)
/* 80294FDC 0025E59C  41 81 00 30 */	bgt .L_8029500C
/* 80294FE0 0025E5A0  80 E3 00 B0 */	lwz r7, 0xb0(r3)
/* 80294FE4 0025E5A4  38 00 00 00 */	li r0, 0
/* 80294FE8 0025E5A8  80 C3 00 B4 */	lwz r6, 0xb4(r3)
/* 80294FEC 0025E5AC  80 A3 00 B8 */	lwz r5, 0xb8(r3)
/* 80294FF0 0025E5B0  80 83 00 BC */	lwz r4, 0xbc(r3)
/* 80294FF4 0025E5B4  90 E3 00 90 */	stw r7, 0x90(r3)
/* 80294FF8 0025E5B8  90 C3 00 94 */	stw r6, 0x94(r3)
/* 80294FFC 0025E5BC  90 A3 00 98 */	stw r5, 0x98(r3)
/* 80295000 0025E5C0  90 83 00 9C */	stw r4, 0x9c(r3)
/* 80295004 0025E5C4  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 80295008 0025E5C8  48 00 00 E4 */	b .L_802950EC
.L_8029500C:
/* 8029500C 0025E5CC  7C C0 46 70 */	srawi r0, r6, 8
/* 80295010 0025E5D0  80 E3 00 C4 */	lwz r7, 0xc4(r3)
/* 80295014 0025E5D4  7C 00 01 94 */	addze r0, r0
/* 80295018 0025E5D8  C8 A2 B0 E8 */	lfd f5, double_8066B468@sda21(r2)
/* 8029501C 0025E5DC  54 05 40 2E */	slwi r5, r0, 8
/* 80295020 0025E5E0  C0 82 B0 DC */	lfs f4, float_8066B45C@sda21(r2)
/* 80295024 0025E5E4  7C C0 46 70 */	srawi r0, r6, 8
/* 80295028 0025E5E8  C1 02 B0 E0 */	lfs f8, float_8066B460@sda21(r2)
/* 8029502C 0025E5EC  7C 80 01 94 */	addze r4, r0
/* 80295030 0025E5F0  7C A5 30 50 */	subf r5, r5, r6
/* 80295034 0025E5F4  7C E0 46 70 */	srawi r0, r7, 8
/* 80295038 0025E5F8  C0 E3 00 B0 */	lfs f7, 0xb0(r3)
/* 8029503C 0025E5FC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80295040 0025E600  90 81 00 14 */	stw r4, 0x14(r1)
/* 80295044 0025E604  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80295048 0025E608  7C 00 01 94 */	addze r0, r0
/* 8029504C 0025E60C  54 04 40 2E */	slwi r4, r0, 8
/* 80295050 0025E610  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80295054 0025E614  7C E0 46 70 */	srawi r0, r7, 8
/* 80295058 0025E618  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8029505C 0025E61C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80295060 0025E620  7C 84 38 50 */	subf r4, r4, r7
/* 80295064 0025E624  7C 00 01 94 */	addze r0, r0
/* 80295068 0025E628  EC 40 28 28 */	fsubs f2, f0, f5
/* 8029506C 0025E62C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80295070 0025E630  EC 61 28 28 */	fsubs f3, f1, f5
/* 80295074 0025E634  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80295078 0025E638  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029507C 0025E63C  C0 C3 00 A0 */	lfs f6, 0xa0(r3)
/* 80295080 0025E640  90 81 00 0C */	stw r4, 0xc(r1)
/* 80295084 0025E644  EC 43 11 3A */	fmadds f2, f3, f4, f2
/* 80295088 0025E648  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8029508C 0025E64C  C8 21 00 08 */	lfd f1, 8(r1)
/* 80295090 0025E650  EC 00 28 28 */	fsubs f0, f0, f5
/* 80295094 0025E654  C0 63 00 B8 */	lfs f3, 0xb8(r3)
/* 80295098 0025E658  EC 21 28 28 */	fsubs f1, f1, f5
/* 8029509C 0025E65C  C0 A3 00 B4 */	lfs f5, 0xb4(r3)
/* 802950A0 0025E660  EC 01 01 3A */	fmadds f0, f1, f4, f0
/* 802950A4 0025E664  C0 23 00 BC */	lfs f1, 0xbc(r3)
/* 802950A8 0025E668  C0 83 00 A4 */	lfs f4, 0xa4(r3)
/* 802950AC 0025E66C  ED 22 00 24 */	fdivs f9, f2, f0
/* 802950B0 0025E670  C0 43 00 A8 */	lfs f2, 0xa8(r3)
/* 802950B4 0025E674  C0 03 00 AC */	lfs f0, 0xac(r3)
/* 802950B8 0025E678  ED 08 48 28 */	fsubs f8, f8, f9
/* 802950BC 0025E67C  EC E7 02 32 */	fmuls f7, f7, f8
/* 802950C0 0025E680  EC A5 02 32 */	fmuls f5, f5, f8
/* 802950C4 0025E684  EC 63 02 32 */	fmuls f3, f3, f8
/* 802950C8 0025E688  EC 21 02 32 */	fmuls f1, f1, f8
/* 802950CC 0025E68C  EC C6 3A 7A */	fmadds f6, f6, f9, f7
/* 802950D0 0025E690  EC 84 2A 7A */	fmadds f4, f4, f9, f5
/* 802950D4 0025E694  EC 42 1A 7A */	fmadds f2, f2, f9, f3
/* 802950D8 0025E698  D0 C3 00 90 */	stfs f6, 0x90(r3)
/* 802950DC 0025E69C  EC 00 0A 7A */	fmadds f0, f0, f9, f1
/* 802950E0 0025E6A0  D0 83 00 94 */	stfs f4, 0x94(r3)
/* 802950E4 0025E6A4  D0 43 00 98 */	stfs f2, 0x98(r3)
/* 802950E8 0025E6A8  D0 03 00 9C */	stfs f0, 0x9c(r3)
.L_802950EC:
/* 802950EC 0025E6AC  38 21 00 20 */	addi r1, r1, 0x20
/* 802950F0 0025E6B0  4E 80 00 20 */	blr
.endfn func_80294FB8

.fn func_802950F4, global
/* 802950F4 0025E6B4  94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 802950F8 0025E6B8  7C 08 02 A6 */	mflr r0
/* 802950FC 0025E6BC  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 80295100 0025E6C0  39 61 01 E0 */	addi r11, r1, 0x1e0
/* 80295104 0025E6C4  48 02 50 55 */	bl _savegpr_28
/* 80295108 0025E6C8  88 03 00 8C */	lbz r0, 0x8c(r3)
/* 8029510C 0025E6CC  7C 7D 1B 78 */	mr r29, r3
/* 80295110 0025E6D0  2C 00 00 00 */	cmpwi r0, 0
/* 80295114 0025E6D4  41 82 02 5C */	beq .L_80295370
/* 80295118 0025E6D8  48 1A AA 39 */	bl func_8043FB50
/* 8029511C 0025E6DC  80 1D 00 68 */	lwz r0, 0x68(r29)
/* 80295120 0025E6E0  7C 7E 1B 78 */	mr r30, r3
/* 80295124 0025E6E4  2C 00 00 00 */	cmpwi r0, 0
/* 80295128 0025E6E8  41 82 02 48 */	beq .L_80295370
/* 8029512C 0025E6EC  80 6D BD FC */	lwz r3, lbl_80667F7C@sda21(r13)
/* 80295130 0025E6F0  48 1B 6D 09 */	bl func_8044BE38
/* 80295134 0025E6F4  83 FD 00 68 */	lwz r31, 0x68(r29)
/* 80295138 0025E6F8  7F C4 F3 78 */	mr r4, r30
/* 8029513C 0025E6FC  38 61 00 18 */	addi r3, r1, 0x18
/* 80295140 0025E700  48 1A 99 49 */	bl func_8043EA88
/* 80295144 0025E704  48 1B 33 C9 */	bl func_8044850C
/* 80295148 0025E708  2C 03 00 00 */	cmpwi r3, 0
/* 8029514C 0025E70C  41 82 00 3C */	beq .L_80295188
/* 80295150 0025E710  A0 7F 00 16 */	lhz r3, 0x16(r31)
/* 80295154 0025E714  38 80 00 64 */	li r4, 0x64
/* 80295158 0025E718  A8 01 00 1C */	lha r0, 0x1c(r1)
/* 8029515C 0025E71C  1C 63 00 4B */	mulli r3, r3, 0x4b
/* 80295160 0025E720  7C 63 23 D6 */	divw r3, r3, r4
/* 80295164 0025E724  7C 03 00 50 */	subf r0, r3, r0
/* 80295168 0025E728  7C 00 0E 70 */	srawi r0, r0, 1
/* 8029516C 0025E72C  7C 00 01 94 */	addze r0, r0
/* 80295170 0025E730  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80295174 0025E734  A0 1F 00 16 */	lhz r0, 0x16(r31)
/* 80295178 0025E738  1C 00 00 4B */	mulli r0, r0, 0x4b
/* 8029517C 0025E73C  7C 00 23 D6 */	divw r0, r0, r4
/* 80295180 0025E740  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80295184 0025E744  48 00 00 28 */	b .L_802951AC
.L_80295188:
/* 80295188 0025E748  48 1B 32 75 */	bl func_804483FC
/* 8029518C 0025E74C  AB 83 00 06 */	lha r28, 6(r3)
/* 80295190 0025E750  48 1B 32 6D */	bl func_804483FC
/* 80295194 0025E754  A8 63 00 04 */	lha r3, 4(r3)
/* 80295198 0025E758  38 00 00 00 */	li r0, 0
/* 8029519C 0025E75C  B0 61 00 1C */	sth r3, 0x1c(r1)
/* 802951A0 0025E760  B0 01 00 18 */	sth r0, 0x18(r1)
/* 802951A4 0025E764  B0 01 00 1A */	sth r0, 0x1a(r1)
/* 802951A8 0025E768  B3 81 00 1E */	sth r28, 0x1e(r1)
.L_802951AC:
/* 802951AC 0025E76C  38 61 01 00 */	addi r3, r1, 0x100
/* 802951B0 0025E770  48 1C 0F 85 */	bl func_80456134
/* 802951B4 0025E774  38 61 01 00 */	addi r3, r1, 0x100
/* 802951B8 0025E778  38 80 00 00 */	li r4, 0
/* 802951BC 0025E77C  48 1C 13 B5 */	bl func_80456570
/* 802951C0 0025E780  38 61 01 00 */	addi r3, r1, 0x100
/* 802951C4 0025E784  38 80 00 00 */	li r4, 0
/* 802951C8 0025E788  48 1C 13 B5 */	bl func_8045657C
/* 802951CC 0025E78C  C0 02 B0 E0 */	lfs f0, float_8066B460@sda21(r2)
/* 802951D0 0025E790  38 61 01 00 */	addi r3, r1, 0x100
/* 802951D4 0025E794  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802951D8 0025E798  38 81 00 20 */	addi r4, r1, 0x20
/* 802951DC 0025E79C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 802951E0 0025E7A0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802951E4 0025E7A4  48 1C 11 F5 */	bl func_804563D8
/* 802951E8 0025E7A8  80 01 01 00 */	lwz r0, 0x100(r1)
/* 802951EC 0025E7AC  7F C4 F3 78 */	mr r4, r30
/* 802951F0 0025E7B0  38 61 00 10 */	addi r3, r1, 0x10
/* 802951F4 0025E7B4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 802951F8 0025E7B8  90 01 01 00 */	stw r0, 0x100(r1)
/* 802951FC 0025E7BC  48 1A 98 8D */	bl func_8043EA88
/* 80295200 0025E7C0  38 61 01 00 */	addi r3, r1, 0x100
/* 80295204 0025E7C4  38 81 00 10 */	addi r4, r1, 0x10
/* 80295208 0025E7C8  48 1C 1B A5 */	bl func_80456DAC
/* 8029520C 0025E7CC  A0 BF 00 16 */	lhz r5, 0x16(r31)
/* 80295210 0025E7D0  38 61 01 00 */	addi r3, r1, 0x100
/* 80295214 0025E7D4  A0 DF 00 14 */	lhz r6, 0x14(r31)
/* 80295218 0025E7D8  38 9D 00 6C */	addi r4, r29, 0x6c
/* 8029521C 0025E7DC  48 1C 13 6D */	bl func_80456588
/* 80295220 0025E7E0  38 61 01 00 */	addi r3, r1, 0x100
/* 80295224 0025E7E4  38 80 00 06 */	li r4, 6
/* 80295228 0025E7E8  38 A0 00 04 */	li r5, 4
/* 8029522C 0025E7EC  48 1C 13 9D */	bl func_804565C8
/* 80295230 0025E7F0  A8 81 00 18 */	lha r4, 0x18(r1)
/* 80295234 0025E7F4  38 61 01 00 */	addi r3, r1, 0x100
/* 80295238 0025E7F8  A8 A1 00 1A */	lha r5, 0x1a(r1)
/* 8029523C 0025E7FC  38 C0 00 00 */	li r6, 0
/* 80295240 0025E800  38 E0 00 00 */	li r7, 0
/* 80295244 0025E804  48 1C 19 BD */	bl func_80456C00
/* 80295248 0025E808  A8 81 00 18 */	lha r4, 0x18(r1)
/* 8029524C 0025E80C  38 61 01 00 */	addi r3, r1, 0x100
/* 80295250 0025E810  A8 01 00 1C */	lha r0, 0x1c(r1)
/* 80295254 0025E814  38 E0 00 00 */	li r7, 0
/* 80295258 0025E818  A8 A1 00 1A */	lha r5, 0x1a(r1)
/* 8029525C 0025E81C  7C 04 02 14 */	add r0, r4, r0
/* 80295260 0025E820  A8 DF 00 16 */	lha r6, 0x16(r31)
/* 80295264 0025E824  7C 04 07 34 */	extsh r4, r0
/* 80295268 0025E828  48 1C 19 99 */	bl func_80456C00
/* 8029526C 0025E82C  AB 81 00 18 */	lha r28, 0x18(r1)
/* 80295270 0025E830  38 61 00 18 */	addi r3, r1, 0x18
/* 80295274 0025E834  48 00 01 15 */	bl func_80295388
/* 80295278 0025E838  7C 60 1B 78 */	mr r0, r3
/* 8029527C 0025E83C  A8 FF 00 14 */	lha r7, 0x14(r31)
/* 80295280 0025E840  7F 84 E3 78 */	mr r4, r28
/* 80295284 0025E844  38 61 01 00 */	addi r3, r1, 0x100
/* 80295288 0025E848  7C 05 07 34 */	extsh r5, r0
/* 8029528C 0025E84C  38 C0 00 00 */	li r6, 0
/* 80295290 0025E850  48 1C 19 71 */	bl func_80456C00
/* 80295294 0025E854  A8 81 00 18 */	lha r4, 0x18(r1)
/* 80295298 0025E858  38 61 00 18 */	addi r3, r1, 0x18
/* 8029529C 0025E85C  A8 01 00 1C */	lha r0, 0x1c(r1)
/* 802952A0 0025E860  7C 04 02 14 */	add r0, r4, r0
/* 802952A4 0025E864  7C 1C 07 34 */	extsh r28, r0
/* 802952A8 0025E868  48 00 00 E1 */	bl func_80295388
/* 802952AC 0025E86C  7C 60 1B 78 */	mr r0, r3
/* 802952B0 0025E870  A8 DF 00 16 */	lha r6, 0x16(r31)
/* 802952B4 0025E874  A8 FF 00 14 */	lha r7, 0x14(r31)
/* 802952B8 0025E878  7F 84 E3 78 */	mr r4, r28
/* 802952BC 0025E87C  38 61 01 00 */	addi r3, r1, 0x100
/* 802952C0 0025E880  7C 05 07 34 */	extsh r5, r0
/* 802952C4 0025E884  48 1C 19 3D */	bl func_80456C00
/* 802952C8 0025E888  38 61 01 00 */	addi r3, r1, 0x100
/* 802952CC 0025E88C  48 1C 1A BD */	bl func_80456D88
/* 802952D0 0025E890  38 61 01 00 */	addi r3, r1, 0x100
/* 802952D4 0025E894  38 80 FF FF */	li r4, -1
/* 802952D8 0025E898  48 1C 0E D5 */	bl __dt__804561AC
/* 802952DC 0025E89C  80 6D BD FC */	lwz r3, lbl_80667F7C@sda21(r13)
/* 802952E0 0025E8A0  48 1B 6B 59 */	bl func_8044BE38
/* 802952E4 0025E8A4  38 61 00 30 */	addi r3, r1, 0x30
/* 802952E8 0025E8A8  48 1C 0E 4D */	bl func_80456134
/* 802952EC 0025E8AC  38 61 00 30 */	addi r3, r1, 0x30
/* 802952F0 0025E8B0  38 80 00 00 */	li r4, 0
/* 802952F4 0025E8B4  48 1C 12 7D */	bl func_80456570
/* 802952F8 0025E8B8  38 61 00 30 */	addi r3, r1, 0x30
/* 802952FC 0025E8BC  38 80 00 00 */	li r4, 0
/* 80295300 0025E8C0  48 1C 12 7D */	bl func_8045657C
/* 80295304 0025E8C4  38 61 00 30 */	addi r3, r1, 0x30
/* 80295308 0025E8C8  38 9D 00 90 */	addi r4, r29, 0x90
/* 8029530C 0025E8CC  48 1C 11 95 */	bl func_804564A0
/* 80295310 0025E8D0  38 61 00 30 */	addi r3, r1, 0x30
/* 80295314 0025E8D4  38 80 00 09 */	li r4, 9
/* 80295318 0025E8D8  38 A0 00 01 */	li r5, 1
/* 8029531C 0025E8DC  48 1C 12 AD */	bl func_804565C8
/* 80295320 0025E8E0  48 1B 30 DD */	bl func_804483FC
/* 80295324 0025E8E4  AB 83 00 06 */	lha r28, 6(r3)
/* 80295328 0025E8E8  48 1B 30 D5 */	bl func_804483FC
/* 8029532C 0025E8EC  A8 63 00 04 */	lha r3, 4(r3)
/* 80295330 0025E8F0  38 00 00 00 */	li r0, 0
/* 80295334 0025E8F4  B0 61 00 0C */	sth r3, 0xc(r1)
/* 80295338 0025E8F8  38 61 00 30 */	addi r3, r1, 0x30
/* 8029533C 0025E8FC  38 81 00 08 */	addi r4, r1, 8
/* 80295340 0025E900  B0 01 00 08 */	sth r0, 8(r1)
/* 80295344 0025E904  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80295348 0025E908  B3 81 00 0E */	sth r28, 0xe(r1)
/* 8029534C 0025E90C  48 1C 17 C1 */	bl func_80456B0C
/* 80295350 0025E910  38 61 00 30 */	addi r3, r1, 0x30
/* 80295354 0025E914  48 1C 1A 35 */	bl func_80456D88
/* 80295358 0025E918  38 61 00 30 */	addi r3, r1, 0x30
/* 8029535C 0025E91C  38 80 FF FF */	li r4, -1
/* 80295360 0025E920  48 1C 0E 4D */	bl __dt__804561AC
/* 80295364 0025E924  80 6D BD FC */	lwz r3, lbl_80667F7C@sda21(r13)
/* 80295368 0025E928  48 1B 6A D1 */	bl func_8044BE38
/* 8029536C 0025E92C  48 1A DA 3D */	bl func_80442DA8
.L_80295370:
/* 80295370 0025E930  39 61 01 E0 */	addi r11, r1, 0x1e0
/* 80295374 0025E934  48 02 4E 31 */	bl _restgpr_28
/* 80295378 0025E938  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 8029537C 0025E93C  7C 08 03 A6 */	mtlr r0
/* 80295380 0025E940  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 80295384 0025E944  4E 80 00 20 */	blr 
.endfn func_802950F4

.fn func_80295388, global
/* 80295388 0025E948  A8 83 00 02 */	lha r4, 2(r3)
/* 8029538C 0025E94C  A8 03 00 06 */	lha r0, 6(r3)
/* 80295390 0025E950  7C 04 02 14 */	add r0, r4, r0
/* 80295394 0025E954  7C 03 07 34 */	extsh r3, r0
/* 80295398 0025E958  4E 80 00 20 */	blr
.endfn func_80295388

.fn func_8029539C, global
/* 8029539C 0025E95C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802953A0 0025E960  7C 08 02 A6 */	mflr r0
/* 802953A4 0025E964  90 01 00 14 */	stw r0, 0x14(r1)
/* 802953A8 0025E968  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802953AC 0025E96C  7C 7F 1B 78 */	mr r31, r3
/* 802953B0 0025E970  80 A3 00 60 */	lwz r5, 0x60(r3)
/* 802953B4 0025E974  80 04 00 04 */	lwz r0, 4(r4)
/* 802953B8 0025E978  7C 00 28 40 */	cmplw r0, r5
/* 802953BC 0025E97C  40 82 00 74 */	bne .L_80295430
/* 802953C0 0025E980  80 04 00 00 */	lwz r0, 0(r4)
/* 802953C4 0025E984  2C 00 00 01 */	cmpwi r0, 1
/* 802953C8 0025E988  40 82 00 58 */	bne .L_80295420
/* 802953CC 0025E98C  80 85 00 04 */	lwz r4, 4(r5)
/* 802953D0 0025E990  38 00 00 00 */	li r0, 0
/* 802953D4 0025E994  90 05 00 04 */	stw r0, 4(r5)
/* 802953D8 0025E998  90 83 00 64 */	stw r4, 0x64(r3)
/* 802953DC 0025E99C  90 83 00 68 */	stw r4, 0x68(r3)
/* 802953E0 0025E9A0  7C 83 23 78 */	mr r3, r4
/* 802953E4 0025E9A4  48 0C D3 DD */	bl TPLBind
/* 802953E8 0025E9A8  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 802953EC 0025E9AC  38 9F 00 6C */	addi r4, r31, 0x6c
/* 802953F0 0025E9B0  38 A0 00 00 */	li r5, 0
/* 802953F4 0025E9B4  48 0C D5 0D */	bl TPLGetGXTexObjFromPalette
/* 802953F8 0025E9B8  C0 22 B0 D8 */	lfs f1, float_8066B458@sda21(r2)
/* 802953FC 0025E9BC  38 7F 00 6C */	addi r3, r31, 0x6c
/* 80295400 0025E9C0  38 80 00 01 */	li r4, 1
/* 80295404 0025E9C4  38 A0 00 01 */	li r5, 1
/* 80295408 0025E9C8  FC 40 08 90 */	fmr f2, f1
/* 8029540C 0025E9CC  38 C0 00 00 */	li r6, 0
/* 80295410 0025E9D0  FC 60 08 90 */	fmr f3, f1
/* 80295414 0025E9D4  38 E0 00 00 */	li r7, 0
/* 80295418 0025E9D8  39 00 00 00 */	li r8, 0
/* 8029541C 0025E9DC  48 08 70 F5 */	bl GXInitTexObjLOD
.L_80295420:
/* 80295420 0025E9E0  38 00 00 00 */	li r0, 0
/* 80295424 0025E9E4  90 1F 00 60 */	stw r0, 0x60(r31)
/* 80295428 0025E9E8  38 60 00 01 */	li r3, 1
/* 8029542C 0025E9EC  48 00 00 08 */	b .L_80295434
.L_80295430:
/* 80295430 0025E9F0  38 60 00 00 */	li r3, 0
.L_80295434:
/* 80295434 0025E9F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295438 0025E9F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029543C 0025E9FC  7C 08 03 A6 */	mtlr r0
/* 80295440 0025EA00  38 21 00 10 */	addi r1, r1, 0x10
/* 80295444 0025EA04  4E 80 00 20 */	blr 
.endfn func_8029539C

.fn func_80295448, global
/* 80295448 0025EA08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029544C 0025EA0C  7C 08 02 A6 */	mflr r0
/* 80295450 0025EA10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80295454 0025EA14  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 80295458 0025EA18  7C 7D 1B 78 */	mr r29, r3
/* 8029545C 0025EA1C  7C 9E 23 78 */	mr r30, r4
/* 80295460 0025EA20  48 1A 21 55 */	bl func_804375B4
/* 80295464 0025EA24  7C 64 1B 78 */	mr r4, r3
/* 80295468 0025EA28  38 60 00 C8 */	li r3, 0xc8
/* 8029546C 0025EA2C  48 19 F5 F1 */	bl mm_malloc
/* 80295470 0025EA30  2C 03 00 00 */	cmpwi r3, 0
/* 80295474 0025EA34  7C 7F 1B 78 */	mr r31, r3
/* 80295478 0025EA38  41 82 00 10 */	beq .L_80295488
/* 8029547C 0025EA3C  7F C4 F3 78 */	mr r4, r30
/* 80295480 0025EA40  4B FF F8 35 */	bl func_80294CB4
/* 80295484 0025EA44  7C 7F 1B 78 */	mr r31, r3
.L_80295488:
/* 80295488 0025EA48  7F E3 FB 78 */	mr r3, r31
/* 8029548C 0025EA4C  7F A4 EB 78 */	mr r4, r29
/* 80295490 0025EA50  38 A0 00 00 */	li r5, 0
/* 80295494 0025EA54  48 1A F7 E1 */	bl func_80444C74
/* 80295498 0025EA58  7F E3 FB 78 */	mr r3, r31
/* 8029549C 0025EA5C  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 802954A0 0025EA60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802954A4 0025EA64  7C 08 03 A6 */	mtlr r0
/* 802954A8 0025EA68  38 21 00 20 */	addi r1, r1, 0x20
/* 802954AC 0025EA6C  4E 80 00 20 */	blr 
.endfn func_80295448

.fn func_802954B0, global
/* 802954B0 0025EA70  4E 80 00 20 */	blr 
.endfn func_802954B0

.fn func_802954B4, global
/* 802954B4 0025EA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802954B8 0025EA78  7C 08 02 A6 */	mflr r0
/* 802954BC 0025EA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802954C0 0025EA80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802954C4 0025EA84  7C 7F 1B 78 */	mr r31, r3
/* 802954C8 0025EA88  38 63 00 3C */	addi r3, r3, 0x3c
/* 802954CC 0025EA8C  48 02 48 25 */	bl __ptmf_test
/* 802954D0 0025EA90  2C 03 00 00 */	cmpwi r3, 0
/* 802954D4 0025EA94  41 82 00 14 */	beq .L_802954E8
/* 802954D8 0025EA98  7F E3 FB 78 */	mr r3, r31
/* 802954DC 0025EA9C  39 9F 00 3C */	addi r12, r31, 0x3c
/* 802954E0 0025EAA0  48 02 48 7D */	bl __ptmf_scall
/* 802954E4 0025EAA4  60 00 00 00 */	nop 
.L_802954E8:
/* 802954E8 0025EAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802954EC 0025EAAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802954F0 0025EAB0  7C 08 03 A6 */	mtlr r0
/* 802954F4 0025EAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 802954F8 0025EAB8  4E 80 00 20 */	blr 
.endfn func_802954B4

.fn func_802954FC, global
/* 802954FC 0025EABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80295500 0025EAC0  7C 08 02 A6 */	mflr r0
/* 80295504 0025EAC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295508 0025EAC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029550C 0025EACC  7C 7F 1B 78 */	mr r31, r3
/* 80295510 0025EAD0  38 63 00 48 */	addi r3, r3, 0x48
/* 80295514 0025EAD4  48 02 47 DD */	bl __ptmf_test
/* 80295518 0025EAD8  2C 03 00 00 */	cmpwi r3, 0
/* 8029551C 0025EADC  41 82 00 14 */	beq .L_80295530
/* 80295520 0025EAE0  7F E3 FB 78 */	mr r3, r31
/* 80295524 0025EAE4  39 9F 00 48 */	addi r12, r31, 0x48
/* 80295528 0025EAE8  48 02 48 35 */	bl __ptmf_scall
/* 8029552C 0025EAEC  60 00 00 00 */	nop 
.L_80295530:
/* 80295530 0025EAF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295534 0025EAF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80295538 0025EAF8  7C 08 03 A6 */	mtlr r0
/* 8029553C 0025EAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80295540 0025EB00  4E 80 00 20 */	blr 
.endfn func_802954FC

.fn CTaskGamePic_OnInit, global
/* 80295544 0025EB04  38 63 FF AC */	addi r3, r3, -84
/* 80295548 0025EB08  4B FF FE 54 */	b func_8029539C
.endfn CTaskGamePic_OnInit

.fn func_8029554C, global
/* 8029554C 0025EB0C  38 63 FF AC */	addi r3, r3, -84
/* 80295550 0025EB10  4B FF F8 B4 */	b __dt__CTaskGamePic
.endfn func_8029554C

.fn func_80295554, global
/* 80295554 0025EB14  38 63 FF A8 */	addi r3, r3, -88
/* 80295558 0025EB18  4B FF FB 9C */	b func_802950F4
.endfn func_80295554

.fn func_8029555C, global
/* 8029555C 0025EB1C  38 63 FF A8 */	addi r3, r3, -88
/* 80295560 0025EB20  4B FF F8 A4 */	b __dt__CTaskGamePic
.endfn func_8029555C

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CTaskGamePic_typestr, global
	.asciz "CTaskGamePic"
	.balign 4
.endobj CTaskGamePic_typestr

.obj CTTask_CTaskGamePic_typestr, global
	.asciz "CTTask<CTaskGamePic>"
	.balign 4
.endobj CTTask_CTaskGamePic_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CTaskGamePic, global
	.4byte __RTTI__CTaskGamePic
	.4byte 0
	.4byte __dt__CTaskGamePic
	.4byte CChildListNode_Reset
	.4byte func_80294F24
	.4byte func_80294F44
	.4byte func_80294FB8
	.4byte func_802954B0
	.4byte func_80043F20
	.4byte __RTTI__CTaskGamePic
	.4byte 0xFFFFFFAC
	.4byte func_8029554C
	.4byte IWorkEvent_WorkEvent1
	.4byte CTaskGamePic_OnInit
	.4byte IWorkEvent_WorkEvent3
	.4byte IWorkEvent_WorkEvent4
	.4byte IWorkEvent_WorkEvent5
	.4byte IWorkEvent_WorkEvent6
	.4byte IWorkEvent_WorkEvent7
	.4byte IWorkEvent_WorkEvent8
	.4byte IWorkEvent_WorkEvent9
	.4byte IWorkEvent_WorkEvent10
	.4byte IWorkEvent_WorkEvent11
	.4byte IWorkEvent_WorkEvent12
	.4byte IWorkEvent_WorkEvent13
	.4byte IWorkEvent_WorkEvent14
	.4byte IWorkEvent_WorkEvent15
	.4byte IWorkEvent_WorkEvent16
	.4byte IWorkEvent_WorkEvent17
	.4byte IWorkEvent_WorkEvent18
	.4byte IWorkEvent_WorkEvent19
	.4byte IWorkEvent_WorkEvent20
	.4byte IWorkEvent_WorkEvent21
	.4byte IWorkEvent_WorkEvent22
	.4byte IWorkEvent_WorkEvent23
	.4byte IWorkEvent_WorkEvent24
	.4byte IWorkEvent_WorkEvent25
	.4byte IWorkEvent_WorkEvent26
	.4byte IWorkEvent_WorkEvent27
	.4byte IWorkEvent_WorkEvent28
	.4byte IWorkEvent_WorkEvent29
	.4byte IWorkEvent_WorkEvent30
	.4byte IWorkEvent_WorkEvent31
	.4byte __RTTI__CTaskGamePic
	.4byte 0xFFFFFFA8
	.4byte func_8029555C
	.4byte func_80295554
	.4byte func_802950F4
	.4byte func_8029539C
.endobj __vt__CTaskGamePic

.obj CTaskGamePic_hierarchy, global
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte __RTTI__CTTask_CTaskGamePic
	.4byte 0
	.4byte 0
.endobj CTaskGamePic_hierarchy


.obj __vt__CTTask_CTaskGamePic, global
	.4byte __RTTI__CTTask_CTaskGamePic
	.4byte 0
	.4byte __dt__CTTask_CTaskGamePic
	.4byte CChildListNode_Reset
	.4byte 0
	.4byte 0
	.4byte func_802954B4
	.4byte func_802954FC
	.4byte func_80043F20
.endobj __vt__CTTask_CTaskGamePic

.obj CTTask_CTaskGamePic_hierarchy, global
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte 0
.endobj CTTask_CTaskGamePic_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CTaskGamePic, global
	.4byte CTaskGamePic_typestr
	.4byte CTaskGamePic_hierarchy
.endobj __RTTI__CTaskGamePic

.obj __RTTI__CTTask_CTaskGamePic, global
	.4byte CTTask_CTaskGamePic_typestr
	.4byte CTTask_CTaskGamePic_hierarchy
.endobj __RTTI__CTTask_CTaskGamePic


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066B458, global
	.float 0
.endobj float_8066B458


.obj float_8066B45C, global
	.float 0.00390625 #0x3B800000
.endobj float_8066B45C


.obj float_8066B460, global
	.float 1.0
	.4byte 0
.endobj float_8066B460


.obj double_8066B468, global
	.8byte 0x4330000080000000 #signed int to float constant
.endobj double_8066B468

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80019AB8", local
.hidden "@etb_80019AB8"
	.4byte 0x180A0000
	.4byte 0x00000000
.endobj "@etb_80019AB8"

.obj "@etb_80019AC0", local
.hidden "@etb_80019AC0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80019AC0"

.obj "@etb_80019AC8", local
.hidden "@etb_80019AC8"
	.4byte 0x10080000
	.4byte 0x0000002C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0680001E
	.4byte 0x00000058
	.4byte __dt__IScnRender
	.4byte 0x8680001E
	.4byte 0x00000054
	.4byte __dt__IWorkEvent
.endobj "@etb_80019AC8"

.obj "@etb_80019AF0", local
.hidden "@etb_80019AF0"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80019AF0"

.obj "@etb_80019AF8", local
.hidden "@etb_80019AF8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80019AF8"

.obj "@etb_80019B00", local
.hidden "@etb_80019B00"
	.4byte 0x000A0000
	.4byte 0x00000000
.endobj "@etb_80019B00"

.obj "@etb_80019B08", local
.hidden "@etb_80019B08"
	.4byte 0x200A0000
	.4byte 0x000000CC
	.4byte 0x00440018
	.4byte 0x00000204
	.4byte 0x00180020
	.4byte 0x00000000
	.4byte 0x82000100
	.4byte __dt__804561AC
	.4byte 0x82000030
	.4byte __dt__804561AC
.endobj "@etb_80019B08"

.obj "@etb_80019B30", local
.hidden "@etb_80019B30"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80019B30"

.obj "@etb_80019B38", local
.hidden "@etb_80019B38"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80019B38"

.obj "@etb_80019B40", local
.hidden "@etb_80019B40"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80019B40"

.obj "@etb_80019B48", local
.hidden "@etb_80019B48"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80019B48"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80031D30", local
.hidden "@eti_80031D30"
	.4byte func_80294CB4
	.4byte 0x00000100
	.4byte "@etb_80019AB8"
.endobj "@eti_80031D30"

.obj "@eti_80031D3C", local
.hidden "@eti_80031D3C"
	.4byte __dt__CTTask_CTaskGamePic
	.4byte 0x00000050
	.4byte "@etb_80019AC0"
.endobj "@eti_80031D3C"

.obj "@eti_80031D48", local
.hidden "@eti_80031D48"
	.4byte __dt__CTaskGamePic
	.4byte 0x00000054
	.4byte "@etb_80019AC8"
.endobj "@eti_80031D48"

.obj "@eti_80031D54", local
.hidden "@eti_80031D54"
	.4byte func_80294EC0
	.4byte 0x00000064
	.4byte "@etb_80019AF0"
.endobj "@eti_80031D54"

.obj "@eti_80031D60", local
.hidden "@eti_80031D60"
	.4byte func_80294F44
	.4byte 0x00000074
	.4byte "@etb_80019AF8"
.endobj "@eti_80031D60"

.obj "@eti_80031D6C", local
.hidden "@eti_80031D6C"
	.4byte func_80294FB8
	.4byte 0x0000013C
	.4byte "@etb_80019B00"
.endobj "@eti_80031D6C"

.obj "@eti_80031D78", local
.hidden "@eti_80031D78"
	.4byte func_802950F4
	.4byte 0x00000294
	.4byte "@etb_80019B08"
.endobj "@eti_80031D78"

.obj "@eti_80031D84", local
.hidden "@eti_80031D84"
	.4byte func_8029539C
	.4byte 0x000000AC
	.4byte "@etb_80019B30"
.endobj "@eti_80031D84"

.obj "@eti_80031D90", local
.hidden "@eti_80031D90"
	.4byte func_80295448
	.4byte 0x00000068
	.4byte "@etb_80019B38"
.endobj "@eti_80031D90"

.obj "@eti_80031D9C", local
.hidden "@eti_80031D9C"
	.4byte func_802954B4
	.4byte 0x00000048
	.4byte "@etb_80019B40"
.endobj "@eti_80031D9C"

.obj "@eti_80031DA8", local
.hidden "@eti_80031DA8"
	.4byte func_802954FC
	.4byte 0x00000048
	.4byte "@etb_80019B48"
.endobj "@eti_80031DA8"
