.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn __ct__CMenuTitle, global
/* 802B5DEC 0027F3AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B5DF0 0027F3B0  7C 08 02 A6 */	mflr r0
/* 802B5DF4 0027F3B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B5DF8 0027F3B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B5DFC 0027F3BC  7C 7F 1B 78 */	mr r31, r3
/* 802B5E00 0027F3C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B5E04 0027F3C4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802B5E08 0027F3C8  7C BD 2B 78 */	mr r29, r5
/* 802B5E0C 0027F3CC  93 81 00 10 */	stw r28, 0x10(r1)
/* 802B5E10 0027F3D0  7C 9C 23 78 */	mr r28, r4
/* 802B5E14 0027F3D4  80 0D B3 90 */	lwz r0, lbl_80667510@sda21(r13)
/* 802B5E18 0027F3D8  2C 00 00 00 */	cmpwi r0, 0x0
/* 802B5E1C 0027F3DC  41 82 00 0C */	beq .L_802B5E28
/* 802B5E20 0027F3E0  38 60 00 00 */	li r3, 0x0
/* 802B5E24 0027F3E4  48 00 00 C8 */	b .L_802B5EEC
.L_802B5E28:
/* 802B5E28 0027F3E8  48 18 17 8D */	bl func_804375B4
/* 802B5E2C 0027F3EC  7C 64 1B 78 */	mr r4, r3
/* 802B5E30 0027F3F0  38 60 00 F0 */	li r3, 0xf0
/* 802B5E34 0027F3F4  48 17 EC 29 */	bl mm_malloc
/* 802B5E38 0027F3F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B5E3C 0027F3FC  7C 7E 1B 78 */	mr r30, r3
/* 802B5E40 0027F400  41 82 00 94 */	beq .L_802B5ED4
/* 802B5E44 0027F404  48 18 EB D5 */	bl __ct__8CProcessFv
/* 802B5E48 0027F408  3C 60 80 54 */	lis r3, __vt__CTTask_CMenuTitle@ha
/* 802B5E4C 0027F40C  3D 00 80 51 */	lis r8, lbl_8050CE10@ha
/* 802B5E50 0027F410  38 63 E8 C4 */	addi r3, r3, __vt__CTTask_CMenuTitle@l
/* 802B5E54 0027F414  90 7E 00 10 */	stw r3, 0x10(r30)
/* 802B5E58 0027F418  39 08 CE 10 */	addi r8, r8, lbl_8050CE10@l
/* 802B5E5C 0027F41C  3C A0 80 54 */	lis r5, __vt__CMenuTitle@ha
/* 802B5E60 0027F420  80 C8 00 04 */	lwz r6, 0x4(r8)
/* 802B5E64 0027F424  38 A5 E7 D0 */	addi r5, r5, __vt__CMenuTitle@l
/* 802B5E68 0027F428  80 08 00 00 */	lwz r0, 0x0(r8)
/* 802B5E6C 0027F42C  38 85 00 24 */	addi r4, r5, 0x24
/* 802B5E70 0027F430  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 802B5E74 0027F434  38 05 00 AC */	addi r0, r5, 0xac
/* 802B5E78 0027F438  38 7E 00 60 */	addi r3, r30, 0x60
/* 802B5E7C 0027F43C  90 DE 00 40 */	stw r6, 0x40(r30)
/* 802B5E80 0027F440  80 C8 00 08 */	lwz r6, 0x8(r8)
/* 802B5E84 0027F444  90 DE 00 44 */	stw r6, 0x44(r30)
/* 802B5E88 0027F448  80 C8 00 04 */	lwz r6, 0x4(r8)
/* 802B5E8C 0027F44C  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 802B5E90 0027F450  90 FE 00 48 */	stw r7, 0x48(r30)
/* 802B5E94 0027F454  90 DE 00 4C */	stw r6, 0x4c(r30)
/* 802B5E98 0027F458  80 C8 00 08 */	lwz r6, 0x8(r8)
/* 802B5E9C 0027F45C  90 DE 00 50 */	stw r6, 0x50(r30)
/* 802B5EA0 0027F460  90 BE 00 10 */	stw r5, 0x10(r30)
/* 802B5EA4 0027F464  90 9E 00 54 */	stw r4, 0x54(r30)
/* 802B5EA8 0027F468  90 1E 00 58 */	stw r0, 0x58(r30)
/* 802B5EAC 0027F46C  93 9E 00 5C */	stw r28, 0x5c(r30)
/* 802B5EB0 0027F470  48 00 14 45 */	bl func_802B72F4
/* 802B5EB4 0027F474  38 00 00 00 */	li r0, 0x0
/* 802B5EB8 0027F478  98 1E 00 E8 */	stb r0, 0xe8(r30)
/* 802B5EBC 0027F47C  38 00 00 01 */	li r0, 0x1
/* 802B5EC0 0027F480  C0 02 B4 50 */	lfs f0, lbl_8066B7D0@sda21(r2)
/* 802B5EC4 0027F484  98 1E 00 E9 */	stb r0, 0xe9(r30)
/* 802B5EC8 0027F488  98 1E 00 EA */	stb r0, 0xea(r30)
/* 802B5ECC 0027F48C  D0 1E 00 EC */	stfs f0, 0xec(r30)
/* 802B5ED0 0027F490  93 BE 00 80 */	stw r29, 0x80(r30)
.L_802B5ED4:
/* 802B5ED4 0027F494  93 CD B3 90 */	stw r30, lbl_80667510@sda21(r13)
/* 802B5ED8 0027F498  7F C3 F3 78 */	mr r3, r30
/* 802B5EDC 0027F49C  7F E4 FB 78 */	mr r4, r31
/* 802B5EE0 0027F4A0  38 A0 00 00 */	li r5, 0x0
/* 802B5EE4 0027F4A4  48 18 ED 91 */	bl func_80444C74
/* 802B5EE8 0027F4A8  80 6D B3 90 */	lwz r3, lbl_80667510@sda21(r13)
.L_802B5EEC:
/* 802B5EEC 0027F4AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B5EF0 0027F4B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B5EF4 0027F4B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B5EF8 0027F4B8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802B5EFC 0027F4BC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802B5F00 0027F4C0  7C 08 03 A6 */	mtlr r0
/* 802B5F04 0027F4C4  38 21 00 20 */	addi r1, r1, 0x20
/* 802B5F08 0027F4C8  4E 80 00 20 */	blr
.endfn __ct__CMenuTitle

.fn func_802B5F0C, global
/* 802B5F0C 0027F4CC  38 00 00 01 */	li r0, 0x1
/* 802B5F10 0027F4D0  98 03 00 E8 */	stb r0, 0xe8(r3)
/* 802B5F14 0027F4D4  4E 80 00 20 */	blr
.endfn func_802B5F0C

.fn func_802B5F18, global
/* 802B5F18 0027F4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B5F1C 0027F4DC  7C 08 02 A6 */	mflr r0
/* 802B5F20 0027F4E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B5F24 0027F4E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B5F28 0027F4E8  7C 7F 1B 78 */	mr r31, r3
/* 802B5F2C 0027F4EC  38 63 00 60 */	addi r3, r3, 0x60
/* 802B5F30 0027F4F0  48 00 16 35 */	bl func_802B7564
/* 802B5F34 0027F4F4  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B5F38 0027F4F8  41 82 00 0C */	beq .L_802B5F44
/* 802B5F3C 0027F4FC  38 00 00 02 */	li r0, 0x2
/* 802B5F40 0027F500  98 1F 00 E8 */	stb r0, 0xe8(r31)
.L_802B5F44:
/* 802B5F44 0027F504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B5F48 0027F508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B5F4C 0027F50C  7C 08 03 A6 */	mtlr r0
/* 802B5F50 0027F510  38 21 00 10 */	addi r1, r1, 0x10
/* 802B5F54 0027F514  4E 80 00 20 */	blr
.endfn func_802B5F18

.fn func_802B5F58, global
/* 802B5F58 0027F518  38 00 00 03 */	li r0, 0x3
/* 802B5F5C 0027F51C  98 03 00 E8 */	stb r0, 0xe8(r3)
/* 802B5F60 0027F520  38 63 00 60 */	addi r3, r3, 0x60
/* 802B5F64 0027F524  48 00 16 54 */	b func_802B75B8
.endfn func_802B5F58

.fn func_802B5F68, global
/* 802B5F68 0027F528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B5F6C 0027F52C  7C 08 02 A6 */	mflr r0
/* 802B5F70 0027F530  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B5F74 0027F534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B5F78 0027F538  7C 7F 1B 78 */	mr r31, r3
/* 802B5F7C 0027F53C  38 63 00 60 */	addi r3, r3, 0x60
/* 802B5F80 0027F540  48 00 16 11 */	bl func_802B7590
/* 802B5F84 0027F544  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B5F88 0027F548  41 82 00 0C */	beq .L_802B5F94
/* 802B5F8C 0027F54C  38 00 00 04 */	li r0, 0x4
/* 802B5F90 0027F550  98 1F 00 E8 */	stb r0, 0xe8(r31)
.L_802B5F94:
/* 802B5F94 0027F554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B5F98 0027F558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B5F9C 0027F55C  7C 08 03 A6 */	mtlr r0
/* 802B5FA0 0027F560  38 21 00 10 */	addi r1, r1, 0x10
/* 802B5FA4 0027F564  4E 80 00 20 */	blr
.endfn func_802B5F68

.fn func_802B5FA8, global
/* 802B5FA8 0027F568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B5FAC 0027F56C  7C 08 02 A6 */	mflr r0
/* 802B5FB0 0027F570  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B5FB4 0027F574  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B5FB8 0027F578  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802B5FBC 0027F57C  7C 7E 1B 78 */	mr r30, r3
/* 802B5FC0 0027F580  4B DD 12 79 */	bl func_80087238
/* 802B5FC4 0027F584  7C 7F 1B 78 */	mr r31, r3
/* 802B5FC8 0027F588  38 60 FF FF */	li r3, -0x1
/* 802B5FCC 0027F58C  4B DD 0F D1 */	bl func_80086F9C
/* 802B5FD0 0027F590  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B5FD4 0027F594  38 60 1E FF */	li r3, 0x1eff
/* 802B5FD8 0027F598  41 82 00 0C */	beq .L_802B5FE4
/* 802B5FDC 0027F59C  3C 60 1F E0 */	lis r3, 0x1fe0
/* 802B5FE0 0027F5A0  38 63 06 0F */	addi r3, r3, 0x60f
.L_802B5FE4:
/* 802B5FE4 0027F5A4  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 802B5FE8 0027F5A8  7C 00 18 39 */	and. r0, r0, r3
/* 802B5FEC 0027F5AC  41 82 00 1C */	beq .L_802B6008
/* 802B5FF0 0027F5B0  38 00 00 05 */	li r0, 0x5
/* 802B5FF4 0027F5B4  98 1E 00 E8 */	stb r0, 0xe8(r30)
/* 802B5FF8 0027F5B8  38 7E 00 60 */	addi r3, r30, 0x60
/* 802B5FFC 0027F5BC  48 00 16 35 */	bl func_802B7630
/* 802B6000 0027F5C0  C0 02 B4 50 */	lfs f0, lbl_8066B7D0@sda21(r2)
/* 802B6004 0027F5C4  D0 1E 00 EC */	stfs f0, 0xec(r30)
.L_802B6008:
/* 802B6008 0027F5C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B600C 0027F5CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B6010 0027F5D0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802B6014 0027F5D4  7C 08 03 A6 */	mtlr r0
/* 802B6018 0027F5D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B601C 0027F5DC  4E 80 00 20 */	blr
.endfn func_802B5FA8

.fn func_802B6020, global
/* 802B6020 0027F5E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6024 0027F5E4  7C 08 02 A6 */	mflr r0
/* 802B6028 0027F5E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B602C 0027F5EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B6030 0027F5F0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802B6034 0027F5F4  7C 7E 1B 78 */	mr r30, r3
/* 802B6038 0027F5F8  38 63 00 60 */	addi r3, r3, 0x60
/* 802B603C 0027F5FC  48 00 15 55 */	bl func_802B7590
/* 802B6040 0027F600  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B6044 0027F604  40 82 00 48 */	bne .L_802B608C
/* 802B6048 0027F608  4B DD 11 F1 */	bl func_80087238
/* 802B604C 0027F60C  7C 7F 1B 78 */	mr r31, r3
/* 802B6050 0027F610  38 60 FF FF */	li r3, -0x1
/* 802B6054 0027F614  4B DD 0F 49 */	bl func_80086F9C
/* 802B6058 0027F618  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B605C 0027F61C  38 60 1E FF */	li r3, 0x1eff
/* 802B6060 0027F620  41 82 00 0C */	beq .L_802B606C
/* 802B6064 0027F624  3C 60 1F E0 */	lis r3, 0x1fe0
/* 802B6068 0027F628  38 63 06 0F */	addi r3, r3, 0x60f
.L_802B606C:
/* 802B606C 0027F62C  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 802B6070 0027F630  7C 00 18 39 */	and. r0, r0, r3
/* 802B6074 0027F634  41 82 00 0C */	beq .L_802B6080
/* 802B6078 0027F638  38 7E 00 60 */	addi r3, r30, 0x60
/* 802B607C 0027F63C  48 00 17 85 */	bl func_802B7800
.L_802B6080:
/* 802B6080 0027F640  C0 02 B4 54 */	lfs f0, lbl_8066B7D4@sda21(r2)
/* 802B6084 0027F644  D0 1E 00 EC */	stfs f0, 0xec(r30)
/* 802B6088 0027F648  48 00 00 2C */	b .L_802B60B4
.L_802B608C:
/* 802B608C 0027F64C  C0 5E 00 EC */	lfs f2, 0xec(r30)
/* 802B6090 0027F650  C0 22 B4 58 */	lfs f1, lbl_8066B7D8@sda21(r2)
/* 802B6094 0027F654  C0 02 B4 50 */	lfs f0, lbl_8066B7D0@sda21(r2)
/* 802B6098 0027F658  EC 22 08 2A */	fadds f1, f2, f1
/* 802B609C 0027F65C  D0 3E 00 EC */	stfs f1, 0xec(r30)
/* 802B60A0 0027F660  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802B60A4 0027F664  41 80 00 10 */	blt .L_802B60B4
/* 802B60A8 0027F668  38 00 00 06 */	li r0, 0x6
/* 802B60AC 0027F66C  D0 1E 00 EC */	stfs f0, 0xec(r30)
/* 802B60B0 0027F670  98 1E 00 E8 */	stb r0, 0xe8(r30)
.L_802B60B4:
/* 802B60B4 0027F674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B60B8 0027F678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B60BC 0027F67C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802B60C0 0027F680  7C 08 03 A6 */	mtlr r0
/* 802B60C4 0027F684  38 21 00 10 */	addi r1, r1, 0x10
/* 802B60C8 0027F688  4E 80 00 20 */	blr
.endfn func_802B6020

.fn func_802B60CC, global
/* 802B60CC 0027F68C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B60D0 0027F690  7C 08 02 A6 */	mflr r0
/* 802B60D4 0027F694  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B60D8 0027F698  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B60DC 0027F69C  7C 7F 1B 78 */	mr r31, r3
/* 802B60E0 0027F6A0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802B60E4 0027F6A4  88 03 00 E9 */	lbz r0, 0xe9(r3)
/* 802B60E8 0027F6A8  2C 00 00 00 */	cmpwi r0, 0x0
/* 802B60EC 0027F6AC  41 82 00 FC */	beq .L_802B61E8
/* 802B60F0 0027F6B0  88 03 00 EA */	lbz r0, 0xea(r3)
/* 802B60F4 0027F6B4  2C 00 00 00 */	cmpwi r0, 0x0
/* 802B60F8 0027F6B8  41 82 00 08 */	beq .L_802B6100
/* 802B60FC 0027F6BC  48 00 00 EC */	b .L_802B61E8
.L_802B6100:
/* 802B6100 0027F6C0  4B DD 11 39 */	bl func_80087238
/* 802B6104 0027F6C4  7C 7E 1B 78 */	mr r30, r3
/* 802B6108 0027F6C8  38 60 FF FF */	li r3, -0x1
/* 802B610C 0027F6CC  4B DD 0E 91 */	bl func_80086F9C
/* 802B6110 0027F6D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B6114 0027F6D4  41 82 00 3C */	beq .L_802B6150
/* 802B6118 0027F6D8  80 1E 01 04 */	lwz r0, 0x104(r30)
/* 802B611C 0027F6DC  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 802B6120 0027F6E0  70 05 80 04 */	andi. r5, r0, 0x8004
/* 802B6124 0027F6E4  54 03 03 DE */	rlwinm r3, r0, 0, 15, 15
/* 802B6128 0027F6E8  50 03 07 38 */	rlwimi r3, r0, 0, 28, 28
/* 802B612C 0027F6EC  54 86 5F FE */	extrwi r6, r4, 1, 10
/* 802B6130 0027F6F0  7C 03 00 D0 */	neg r0, r3
/* 802B6134 0027F6F4  54 87 57 FE */	extrwi r7, r4, 1, 9
/* 802B6138 0027F6F8  7C 85 00 D0 */	neg r4, r5
/* 802B613C 0027F6FC  7C 00 1B 78 */	or r0, r0, r3
/* 802B6140 0027F700  7C 84 2B 78 */	or r4, r4, r5
/* 802B6144 0027F704  54 83 0F FE */	srwi r3, r4, 31
/* 802B6148 0027F708  54 00 0F FE */	srwi r0, r0, 31
/* 802B614C 0027F70C  48 00 00 38 */	b .L_802B6184
.L_802B6150:
/* 802B6150 0027F710  80 1E 01 04 */	lwz r0, 0x104(r30)
/* 802B6154 0027F714  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 802B6158 0027F718  70 05 80 04 */	andi. r5, r0, 0x8004
/* 802B615C 0027F71C  54 03 03 DE */	rlwinm r3, r0, 0, 15, 15
/* 802B6160 0027F720  50 03 07 38 */	rlwimi r3, r0, 0, 28, 28
/* 802B6164 0027F724  54 86 E7 FE */	extrwi r6, r4, 1, 27
/* 802B6168 0027F728  7C 03 00 D0 */	neg r0, r3
/* 802B616C 0027F72C  54 87 DF FE */	extrwi r7, r4, 1, 26
/* 802B6170 0027F730  7C 85 00 D0 */	neg r4, r5
/* 802B6174 0027F734  7C 00 1B 78 */	or r0, r0, r3
/* 802B6178 0027F738  7C 84 2B 78 */	or r4, r4, r5
/* 802B617C 0027F73C  54 83 0F FE */	srwi r3, r4, 31
/* 802B6180 0027F740  54 00 0F FE */	srwi r0, r0, 31
.L_802B6184:
/* 802B6184 0027F744  2C 06 00 00 */	cmpwi r6, 0x0
/* 802B6188 0027F748  41 82 00 20 */	beq .L_802B61A8
/* 802B618C 0027F74C  38 7F 00 60 */	addi r3, r31, 0x60
/* 802B6190 0027F750  48 00 15 CD */	bl func_802B775C
/* 802B6194 0027F754  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B6198 0027F758  41 82 00 50 */	beq .L_802B61E8
/* 802B619C 0027F75C  38 00 00 08 */	li r0, 0x8
/* 802B61A0 0027F760  98 1F 00 E8 */	stb r0, 0xe8(r31)
/* 802B61A4 0027F764  48 00 00 44 */	b .L_802B61E8
.L_802B61A8:
/* 802B61A8 0027F768  2C 07 00 00 */	cmpwi r7, 0x0
/* 802B61AC 0027F76C  41 82 00 18 */	beq .L_802B61C4
/* 802B61B0 0027F770  38 00 00 07 */	li r0, 0x7
/* 802B61B4 0027F774  98 1F 00 E8 */	stb r0, 0xe8(r31)
/* 802B61B8 0027F778  38 7F 00 60 */	addi r3, r31, 0x60
/* 802B61BC 0027F77C  48 00 14 1D */	bl func_802B75D8
/* 802B61C0 0027F780  48 00 00 28 */	b .L_802B61E8
.L_802B61C4:
/* 802B61C4 0027F784  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B61C8 0027F788  41 82 00 10 */	beq .L_802B61D8
/* 802B61CC 0027F78C  38 7F 00 60 */	addi r3, r31, 0x60
/* 802B61D0 0027F790  48 00 14 81 */	bl func_802B7650
/* 802B61D4 0027F794  48 00 00 14 */	b .L_802B61E8
.L_802B61D8:
/* 802B61D8 0027F798  2C 00 00 00 */	cmpwi r0, 0x0
/* 802B61DC 0027F79C  41 82 00 0C */	beq .L_802B61E8
/* 802B61E0 0027F7A0  38 7F 00 60 */	addi r3, r31, 0x60
/* 802B61E4 0027F7A4  48 00 14 F1 */	bl func_802B76D4
.L_802B61E8:
/* 802B61E8 0027F7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B61EC 0027F7AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B61F0 0027F7B0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802B61F4 0027F7B4  7C 08 03 A6 */	mtlr r0
/* 802B61F8 0027F7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B61FC 0027F7BC  4E 80 00 20 */	blr
.endfn func_802B60CC

.fn func_802B6200, global
/* 802B6200 0027F7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6204 0027F7C4  7C 08 02 A6 */	mflr r0
/* 802B6208 0027F7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B620C 0027F7CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B6210 0027F7D0  7C 7F 1B 78 */	mr r31, r3
/* 802B6214 0027F7D4  38 63 00 60 */	addi r3, r3, 0x60
/* 802B6218 0027F7D8  48 00 13 79 */	bl func_802B7590
/* 802B621C 0027F7DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B6220 0027F7E0  41 82 00 0C */	beq .L_802B622C
/* 802B6224 0027F7E4  38 00 00 02 */	li r0, 0x2
/* 802B6228 0027F7E8  98 1F 00 E8 */	stb r0, 0xe8(r31)
.L_802B622C:
/* 802B622C 0027F7EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B6230 0027F7F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B6234 0027F7F4  7C 08 03 A6 */	mtlr r0
/* 802B6238 0027F7F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B623C 0027F7FC  4E 80 00 20 */	blr
.endfn func_802B6200

.fn func_802B6240, global
/* 802B6240 0027F800  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6244 0027F804  7C 08 02 A6 */	mflr r0
/* 802B6248 0027F808  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B624C 0027F80C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B6250 0027F810  7C 7F 1B 78 */	mr r31, r3
/* 802B6254 0027F814  38 63 00 60 */	addi r3, r3, 0x60
/* 802B6258 0027F818  48 00 13 39 */	bl func_802B7590
/* 802B625C 0027F81C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B6260 0027F820  41 82 00 0C */	beq .L_802B626C
/* 802B6264 0027F824  38 00 00 09 */	li r0, 0x9
/* 802B6268 0027F828  98 1F 00 E8 */	stb r0, 0xe8(r31)
.L_802B626C:
/* 802B626C 0027F82C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B6270 0027F830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B6274 0027F834  7C 08 03 A6 */	mtlr r0
/* 802B6278 0027F838  38 21 00 10 */	addi r1, r1, 0x10
/* 802B627C 0027F83C  4E 80 00 20 */	blr
.endfn func_802B6240

.fn func_802B6280, global
/* 802B6280 0027F840  4E 80 00 20 */	blr
.endfn func_802B6280

.fn func_802B6284, global
/* 802B6284 0027F844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B6288 0027F848  7C 08 02 A6 */	mflr r0
/* 802B628C 0027F84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B6290 0027F850  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B6294 0027F854  7C 7F 1B 78 */	mr r31, r3
/* 802B6298 0027F858  38 63 00 3C */	addi r3, r3, 0x3c
/* 802B629C 0027F85C  48 00 3A 55 */	bl __ptmf_test
/* 802B62A0 0027F860  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B62A4 0027F864  41 82 00 14 */	beq .L_802B62B8
/* 802B62A8 0027F868  7F E3 FB 78 */	mr r3, r31
/* 802B62AC 0027F86C  39 9F 00 3C */	addi r12, r31, 0x3c
/* 802B62B0 0027F870  48 00 3A AD */	bl __ptmf_scall
/* 802B62B4 0027F874  60 00 00 00 */	nop
.L_802B62B8:
/* 802B62B8 0027F878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B62BC 0027F87C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B62C0 0027F880  7C 08 03 A6 */	mtlr r0
/* 802B62C4 0027F884  38 21 00 10 */	addi r1, r1, 0x10
/* 802B62C8 0027F888  4E 80 00 20 */	blr
.endfn func_802B6284

.fn func_802B62CC, global
/* 802B62CC 0027F88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B62D0 0027F890  7C 08 02 A6 */	mflr r0
/* 802B62D4 0027F894  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B62D8 0027F898  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B62DC 0027F89C  7C 7F 1B 78 */	mr r31, r3
/* 802B62E0 0027F8A0  38 63 00 48 */	addi r3, r3, 0x48
/* 802B62E4 0027F8A4  48 00 3A 0D */	bl __ptmf_test
/* 802B62E8 0027F8A8  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B62EC 0027F8AC  41 82 00 14 */	beq .L_802B6300
/* 802B62F0 0027F8B0  7F E3 FB 78 */	mr r3, r31
/* 802B62F4 0027F8B4  39 9F 00 48 */	addi r12, r31, 0x48
/* 802B62F8 0027F8B8  48 00 3A 65 */	bl __ptmf_scall
/* 802B62FC 0027F8BC  60 00 00 00 */	nop
.L_802B6300:
/* 802B6300 0027F8C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B6304 0027F8C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B6308 0027F8C8  7C 08 03 A6 */	mtlr r0
/* 802B630C 0027F8CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B6310 0027F8D0  4E 80 00 20 */	blr
.endfn func_802B62CC

.fn func_802B6314, global
/* 802B6314 0027F8D4  38 63 FF AC */	addi r3, r3, -0x54
/* 802B6318 0027F8D8  4B FF F9 08 */	b func_802B5C20
.endfn func_802B6314

.fn func_802B631C, global
/* 802B631C 0027F8DC  38 63 FF A8 */	addi r3, r3, -0x58
/* 802B6320 0027F8E0  4B FF FA 60 */	b func_802B5D80
.endfn func_802B631C

.fn func_802B6324, global
/* 802B6324 0027F8E4  38 63 FF A8 */	addi r3, r3, -0x58
/* 802B6328 0027F8E8  4B FF F8 F8 */	b func_802B5C20
.endfn func_802B6324

# 0x8050CA18 - 0x8050CA38
.rodata
.balign 8

.global CMenuTitle_typestr
CMenuTitle_typestr:
	.4byte 0x434D656E
	.4byte 0x75546974
	.4byte 0x6C650000

.global CTTask_CMenuTitle_typestr
CTTask_CMenuTitle_typestr:
	.4byte 0x43545461
	.4byte 0x736B3C43
	.4byte 0x4D656E75
	.4byte 0x5469746C
	.4byte 0x653E0000

# 0x8053E7D0 - 0x8053E908
.data
.balign 8

.global __vt__CMenuTitle
__vt__CMenuTitle:
	.4byte __RTTI__CMenuTitle
	.4byte 0x00000000
	.4byte func_802B5C20
	.4byte CChildListNode_Reset
	.4byte func_802B5C90
	.4byte func_802B5CE0
	.4byte func_802B5D34
	.4byte func_802B62CC
	.4byte func_80043F20
	.4byte __RTTI__CMenuTitle
	.4byte 0xFFFFFFAC
	.4byte func_802B6314
	.4byte func_80039E28
	.4byte func_80039E20
	.4byte func_80039E18
	.4byte func_80039E10
	.4byte func_80039E0C
	.4byte func_80039E04
	.4byte func_80039DFC
	.4byte func_80039DF4
	.4byte func_80039DEC
	.4byte func_80039DE4
	.4byte func_80039DDC
	.4byte func_80039DD4
	.4byte func_80039DCC
	.4byte func_80039DC4
	.4byte func_80039DBC
	.4byte func_80039DB4
	.4byte func_80039DAC
	.4byte func_80039DA4
	.4byte func_80039D9C
	.4byte func_80039D94
	.4byte func_80039D8C
	.4byte func_80039D84
	.4byte func_80039D7C
	.4byte func_80039D74
	.4byte func_80039D6C
	.4byte func_80039D64
	.4byte func_80039D5C
	.4byte func_80039D54
	.4byte func_80039D4C
	.4byte func_80039D44
	.4byte func_80039D40
	.4byte __RTTI__CMenuTitle
	.4byte 0xFFFFFFA8
	.4byte func_802B6324
	.4byte func_802B631C
	.4byte func_802B5D80

.global CMenuTitle_hierarchy
CMenuTitle_hierarchy:
	.4byte __RTTI__IScnRender
	.4byte 0x00000058
	.4byte __RTTI__IWorkEvent
	.4byte 0x00000054
	.4byte __RTTI__CDoubleListNode
	.4byte 0x00000000
	.4byte __RTTI__CChildListNode
	.4byte 0x00000000
	.4byte __RTTI__CProcess
	.4byte 0x00000000
	.4byte __RTTI__CTTask_CMenuTitle
	.4byte 0x00000000
	.4byte 0x00000000

.global __vt__CTTask_CMenuTitle
__vt__CTTask_CMenuTitle:
	.4byte __RTTI__CTTask_CMenuTitle
	.4byte 0x00000000
	.4byte func_802B5BC8
	.4byte CChildListNode_Reset
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte func_802B6284
	.4byte func_802B62CC
	.4byte func_80043F20

.global CTTask_CMenuTitle_hierarchy
CTTask_CMenuTitle_hierarchy:
	.4byte __RTTI__CDoubleListNode
	.4byte 0x00000000
	.4byte __RTTI__CChildListNode
	.4byte 0x00000000
	.4byte __RTTI__CProcess
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

# 0x80665778 - 0x80665788
.section .sdata, "wa"
.balign 8

.global __RTTI__CMenuTitle
__RTTI__CMenuTitle:
	.4byte CMenuTitle_typestr
	.4byte CMenuTitle_hierarchy

.global __RTTI__CTTask_CMenuTitle
__RTTI__CTTask_CMenuTitle:
	.4byte CTTask_CMenuTitle_typestr
	.4byte CTTask_CMenuTitle_hierarchy

# 0x80667510 - 0x80667518
.section .sbss, "wa", @nobits
.balign 8
.global lbl_80667510
lbl_80667510:
	.skip 0x8

# 0x8066B7D0 - 0x8066B7E0
.section .sdata2, "a"
.balign 8
.global lbl_8066B7D0
lbl_8066B7D0:
	.4byte 0x41200000
.global lbl_8066B7D4
lbl_8066B7D4:
	.4byte 0x00000000
.global lbl_8066B7D8
lbl_8066B7D8:
	.4byte 0x3F800000
	.4byte 0x00000000

# 0x8001BAD8 - 0x8001BB54
.section extab, "a"
.balign 4

.obj "@etb_8001BAD8", local
.hidden "@etb_8001BAD8"
	.4byte 0x200A0000
	.4byte 0x000000C8
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0680001E
	.4byte 0x00000058
	.4byte func_8004031C
	.4byte 0x0680001E
	.4byte 0x00000054
	.4byte __dt__IWorkEvent
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte func_802B5BC8
.endobj "@etb_8001BAD8"

.obj "@etb_8001BB0C", local
.hidden "@etb_8001BB0C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BB0C"

.obj "@etb_8001BB14", local
.hidden "@etb_8001BB14"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BB14"

.obj "@etb_8001BB1C", local
.hidden "@etb_8001BB1C"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_8001BB1C"

.obj "@etb_8001BB24", local
.hidden "@etb_8001BB24"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_8001BB24"

.obj "@etb_8001BB2C", local
.hidden "@etb_8001BB2C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001BB2C"

.obj "@etb_8001BB34", local
.hidden "@etb_8001BB34"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BB34"

.obj "@etb_8001BB3C", local
.hidden "@etb_8001BB3C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BB3C"

.obj "@etb_8001BB44", local
.hidden "@etb_8001BB44"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BB44"

.obj "@etb_8001BB4C", local
.hidden "@etb_8001BB4C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BB4C"

# 0x80033608 - 0x80033680
.section extabindex, "a"
.balign 4

.obj "@eti_80033608", local
.hidden "@eti_80033608"
	.4byte __ct__CMenuTitle
	.4byte 0x00000120
	.4byte "@etb_8001BAD8"
.endobj "@eti_80033608"

.obj "@eti_80033614", local
.hidden "@eti_80033614"
	.4byte func_802B5F18
	.4byte 0x00000040
	.4byte "@etb_8001BB0C"
.endobj "@eti_80033614"

.obj "@eti_80033620", local
.hidden "@eti_80033620"
	.4byte func_802B5F68
	.4byte 0x00000040
	.4byte "@etb_8001BB14"
.endobj "@eti_80033620"

.obj "@eti_8003362C", local
.hidden "@eti_8003362C"
	.4byte func_802B5FA8
	.4byte 0x00000078
	.4byte "@etb_8001BB1C"
.endobj "@eti_8003362C"

.obj "@eti_80033638", local
.hidden "@eti_80033638"
	.4byte func_802B6020
	.4byte 0x000000AC
	.4byte "@etb_8001BB24"
.endobj "@eti_80033638"

.obj "@eti_80033644", local
.hidden "@eti_80033644"
	.4byte func_802B60CC
	.4byte 0x00000134
	.4byte "@etb_8001BB2C"
.endobj "@eti_80033644"

.obj "@eti_80033650", local
.hidden "@eti_80033650"
	.4byte func_802B6200
	.4byte 0x00000040
	.4byte "@etb_8001BB34"
.endobj "@eti_80033650"

.obj "@eti_8003365C", local
.hidden "@eti_8003365C"
	.4byte func_802B6240
	.4byte 0x00000040
	.4byte "@etb_8001BB3C"
.endobj "@eti_8003365C"

.obj "@eti_80033668", local
.hidden "@eti_80033668"
	.4byte func_802B6284
	.4byte 0x00000048
	.4byte "@etb_8001BB44"
.endobj "@eti_80033668"

.obj "@eti_80033674", local
.hidden "@eti_80033674"
	.4byte func_802B62CC
	.4byte 0x00000048
	.4byte "@etb_8001BB4C"
.endobj "@eti_80033674"
