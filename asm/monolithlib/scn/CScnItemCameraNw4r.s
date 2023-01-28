.include "macros.inc"
.file "monolithlib/scn/CScnItemCameraNw4r.o"

# 0x8001E210 - 0x8001E238
.section extab, "a"
.balign 4

.obj "@etb_8001E210", local
.hidden "@etb_8001E210"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001E210"

.obj "@etb_8001E218", local
.hidden "@etb_8001E218"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001E218"

.obj "@etb_8001E220", local
.hidden "@etb_8001E220"
	.4byte 0x090A0000
	.4byte 0x00000000
.endobj "@etb_8001E220"

.obj "@etb_8001E228", local
.hidden "@etb_8001E228"
	.4byte 0x090A0000
	.4byte 0x00000000
.endobj "@etb_8001E228"

.obj "@etb_8001E230", local
.hidden "@etb_8001E230"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001E230"

# 0x80036194 - 0x800361D0
.section extabindex, "a"
.balign 4

.obj "@eti_80036194", local
.hidden "@eti_80036194"
	.4byte fn_80481E6C
	.4byte 0x0000003C
	.4byte "@etb_8001E210"
.endobj "@eti_80036194"

.obj "@eti_800361A0", local
.hidden "@eti_800361A0"
	.4byte fn_80481EA8
	.4byte 0x00000058
	.4byte "@etb_8001E218"
.endobj "@eti_800361A0"

.obj "@eti_800361AC", local
.hidden "@eti_800361AC"
	.4byte fn_80481F00
	.4byte 0x0000009C
	.4byte "@etb_8001E220"
.endobj "@eti_800361AC"

.obj "@eti_800361B8", local
.hidden "@eti_800361B8"
	.4byte fn_80481F9C
	.4byte 0x0000009C
	.4byte "@etb_8001E228"
.endobj "@eti_800361B8"

.obj "@eti_800361C4", local
.hidden "@eti_800361C4"
	.4byte fn_80482054
	.4byte 0x00000040
	.4byte "@etb_8001E230"
.endobj "@eti_800361C4"

# 0x80481E6C - 0x80482094
.text
.balign 4

.fn fn_80481E6C, global
/* 80481E6C 0044B42C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80481E70 0044B430  7C 08 02 A6 */	mflr r0
/* 80481E74 0044B434  90 01 00 14 */	stw r0, 0x14(r1)
/* 80481E78 0044B438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80481E7C 0044B43C  7C 7F 1B 78 */	mr r31, r3
/* 80481E80 0044B440  48 01 CA 45 */	bl fn_8049E8C4
/* 80481E84 0044B444  3C 80 80 57 */	lis r4, __vt__CScnItemCameraNw4r@ha
/* 80481E88 0044B448  7F E3 FB 78 */	mr r3, r31
/* 80481E8C 0044B44C  38 84 14 D8 */	addi r4, r4, __vt__CScnItemCameraNw4r@l
/* 80481E90 0044B450  90 9F 00 00 */	stw r4, 0x0(r31)
/* 80481E94 0044B454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80481E98 0044B458  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80481E9C 0044B45C  7C 08 03 A6 */	mtlr r0
/* 80481EA0 0044B460  38 21 00 10 */	addi r1, r1, 0x10
/* 80481EA4 0044B464  4E 80 00 20 */	blr
.endfn fn_80481E6C

.fn fn_80481EA8, global
/* 80481EA8 0044B468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80481EAC 0044B46C  7C 08 02 A6 */	mflr r0
/* 80481EB0 0044B470  2C 03 00 00 */	cmpwi r3, 0x0
/* 80481EB4 0044B474  90 01 00 14 */	stw r0, 0x14(r1)
/* 80481EB8 0044B478  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80481EBC 0044B47C  7C 9F 23 78 */	mr r31, r4
/* 80481EC0 0044B480  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80481EC4 0044B484  7C 7E 1B 78 */	mr r30, r3
/* 80481EC8 0044B488  41 82 00 1C */	beq .L_80481EE4
/* 80481ECC 0044B48C  38 80 00 00 */	li r4, 0x0
/* 80481ED0 0044B490  48 01 CC 0D */	bl fn_8049EADC
/* 80481ED4 0044B494  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80481ED8 0044B498  40 81 00 0C */	ble .L_80481EE4
/* 80481EDC 0044B49C  7F C3 F3 78 */	mr r3, r30
/* 80481EE0 0044B4A0  4B FB 2D 4D */	bl __dl__FPv
.L_80481EE4:
/* 80481EE4 0044B4A4  7F C3 F3 78 */	mr r3, r30
/* 80481EE8 0044B4A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80481EEC 0044B4AC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80481EF0 0044B4B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80481EF4 0044B4B4  7C 08 03 A6 */	mtlr r0
/* 80481EF8 0044B4B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80481EFC 0044B4BC  4E 80 00 20 */	blr
.endfn fn_80481EA8

.fn fn_80481F00, global
/* 80481F00 0044B4C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80481F04 0044B4C4  7C 08 02 A6 */	mflr r0
/* 80481F08 0044B4C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80481F0C 0044B4CC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80481F10 0044B4D0  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 80481F14 0044B4D4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80481F18 0044B4D8  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 80481F1C 0044B4DC  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80481F20 0044B4E0  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 80481F24 0044B4E4  DB 81 00 10 */	stfd f28, 0x10(r1)
/* 80481F28 0044B4E8  F3 81 00 18 */	psq_st f28, 0x18(r1), 0, qr0
/* 80481F2C 0044B4EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80481F30 0044B4F0  7C 7F 1B 78 */	mr r31, r3
/* 80481F34 0044B4F4  48 01 CC BD */	bl fn_8049EBF0
/* 80481F38 0044B4F8  C3 FF 01 F0 */	lfs f31, 0x1f0(r31)
/* 80481F3C 0044B4FC  C3 DF 01 EC */	lfs f30, 0x1ec(r31)
/* 80481F40 0044B500  C3 BF 01 E8 */	lfs f29, 0x1e8(r31)
/* 80481F44 0044B504  C3 9F 01 E0 */	lfs f28, 0x1e0(r31)
/* 80481F48 0044B508  4B FC 66 01 */	bl fn_80448548
/* 80481F4C 0044B50C  EC 5D 00 72 */	fmuls f2, f29, f1
/* 80481F50 0044B510  38 7F 02 B8 */	addi r3, r31, 0x2b8
/* 80481F54 0044B514  FC 20 E0 90 */	fmr f1, f28
/* 80481F58 0044B518  38 9F 00 CC */	addi r4, r31, 0xcc
/* 80481F5C 0044B51C  FC 60 F0 90 */	fmr f3, f30
/* 80481F60 0044B520  FC 80 F8 90 */	fmr f4, f31
/* 80481F64 0044B524  4B F8 97 B9 */	bl Set__Q34nw4r4math7FRUSTUMFffffRCQ34nw4r4math5MTX34
/* 80481F68 0044B528  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80481F6C 0044B52C  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 80481F70 0044B530  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80481F74 0044B534  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 80481F78 0044B538  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80481F7C 0044B53C  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 80481F80 0044B540  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80481F84 0044B544  E3 81 00 18 */	psq_l f28, 0x18(r1), 0, qr0
/* 80481F88 0044B548  CB 81 00 10 */	lfd f28, 0x10(r1)
/* 80481F8C 0044B54C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80481F90 0044B550  7C 08 03 A6 */	mtlr r0
/* 80481F94 0044B554  38 21 00 50 */	addi r1, r1, 0x50
/* 80481F98 0044B558  4E 80 00 20 */	blr
.endfn fn_80481F00

.fn fn_80481F9C, global
/* 80481F9C 0044B55C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80481FA0 0044B560  7C 08 02 A6 */	mflr r0
/* 80481FA4 0044B564  90 01 00 54 */	stw r0, 0x54(r1)
/* 80481FA8 0044B568  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80481FAC 0044B56C  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 80481FB0 0044B570  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80481FB4 0044B574  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 80481FB8 0044B578  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80481FBC 0044B57C  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 80481FC0 0044B580  DB 81 00 10 */	stfd f28, 0x10(r1)
/* 80481FC4 0044B584  F3 81 00 18 */	psq_st f28, 0x18(r1), 0, qr0
/* 80481FC8 0044B588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80481FCC 0044B58C  7C 7F 1B 78 */	mr r31, r3
/* 80481FD0 0044B590  48 01 D9 15 */	bl fn_8049F8E4
/* 80481FD4 0044B594  C3 FF 01 F0 */	lfs f31, 0x1f0(r31)
/* 80481FD8 0044B598  C3 DF 01 EC */	lfs f30, 0x1ec(r31)
/* 80481FDC 0044B59C  C3 BF 01 E8 */	lfs f29, 0x1e8(r31)
/* 80481FE0 0044B5A0  C3 9F 01 E0 */	lfs f28, 0x1e0(r31)
/* 80481FE4 0044B5A4  4B FC 65 65 */	bl fn_80448548
/* 80481FE8 0044B5A8  EC 5D 00 72 */	fmuls f2, f29, f1
/* 80481FEC 0044B5AC  38 7F 02 B8 */	addi r3, r31, 0x2b8
/* 80481FF0 0044B5B0  FC 20 E0 90 */	fmr f1, f28
/* 80481FF4 0044B5B4  38 9F 00 CC */	addi r4, r31, 0xcc
/* 80481FF8 0044B5B8  FC 60 F0 90 */	fmr f3, f30
/* 80481FFC 0044B5BC  FC 80 F8 90 */	fmr f4, f31
/* 80482000 0044B5C0  4B F8 97 1D */	bl Set__Q34nw4r4math7FRUSTUMFffffRCQ34nw4r4math5MTX34
/* 80482004 0044B5C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80482008 0044B5C8  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 8048200C 0044B5CC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80482010 0044B5D0  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 80482014 0044B5D4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80482018 0044B5D8  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 8048201C 0044B5DC  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80482020 0044B5E0  E3 81 00 18 */	psq_l f28, 0x18(r1), 0, qr0
/* 80482024 0044B5E4  CB 81 00 10 */	lfd f28, 0x10(r1)
/* 80482028 0044B5E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048202C 0044B5EC  7C 08 03 A6 */	mtlr r0
/* 80482030 0044B5F0  38 21 00 50 */	addi r1, r1, 0x50
/* 80482034 0044B5F4  4E 80 00 20 */	blr
.endfn fn_80481F9C

.fn fn_80482038, global
/* 80482038 0044B5F8  38 63 02 B8 */	addi r3, r3, 0x2b8
/* 8048203C 0044B5FC  4B F8 A1 20 */	b IntersectSphere__Q34nw4r4math7FRUSTUMCFPCQ34nw4r4math6SPHERE
.endfn fn_80482038

.fn fn_80482040, global
/* 80482040 0044B600  38 60 00 00 */	li r3, 0x0
/* 80482044 0044B604  4E 80 00 20 */	blr
.endfn fn_80482040

.fn fn_80482048, global
/* 80482048 0044B608  4E 80 00 20 */	blr
.endfn fn_80482048

.fn fn_8048204C, global
/* 8048204C 0044B60C  38 63 00 10 */	addi r3, r3, 0x10
/* 80482050 0044B610  4E 80 00 20 */	blr
.endfn fn_8048204C

.fn fn_80482054, global
/* 80482054 0044B614  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80482058 0044B618  7C 08 02 A6 */	mflr r0
/* 8048205C 0044B61C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80482060 0044B620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80482064 0044B624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80482068 0044B628  7C 7F 1B 78 */	mr r31, r3
/* 8048206C 0044B62C  41 82 00 10 */	beq .L_8048207C
/* 80482070 0044B630  2C 04 00 00 */	cmpwi r4, 0x0
/* 80482074 0044B634  40 81 00 08 */	ble .L_8048207C
/* 80482078 0044B638  4B FB 2B B5 */	bl __dl__FPv
.L_8048207C:
/* 8048207C 0044B63C  7F E3 FB 78 */	mr r3, r31
/* 80482080 0044B640  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80482084 0044B644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80482088 0044B648  7C 08 03 A6 */	mtlr r0
/* 8048208C 0044B64C  38 21 00 10 */	addi r1, r1, 0x10
/* 80482090 0044B650  4E 80 00 20 */	blr
.endfn fn_80482054

# 0x80527798 - 0x805277C0
.rodata
.balign 8

.obj CScnItemCameraNw4r_typestr, global
	.4byte 0x4353636E
	.4byte 0x4974656D
	.4byte 0x43616D65
	.4byte 0x72614E77
	.4byte 0x34720000

.obj CScnItemCamera_typestr, global
	.4byte 0x4353636E
	.4byte 0x4974656D
	.4byte 0x43616D65
	.4byte 0x72610000
	.4byte 0x00000000

# 0x805714D8 - 0x80571520
.data
.balign 8

.obj __vt__CScnItemCameraNw4r, global
	.4byte __RTTI__CScnItemCameraNw4r
	.4byte 0x00000000
	.4byte fn_80481EA8
	.4byte fn_8049F9A4
	.4byte fn_80482048
	.4byte fn_80481F9C
	.4byte fn_8048204C
	.4byte fn_80482040
	.4byte fn_80482038
	.4byte fn_80481F00

.obj CScnItemCameraNw4r_hierarchy, global
	.4byte __RTTI__CScnItem
	.4byte 0x00000000
	.4byte __RTTI__CScnItemCamera
	.4byte 0x00000000
	.4byte 0x00000000

.obj CScnItemCamera_hierarchy, global
	.4byte __RTTI__CScnItem
	.4byte 0x00000000
	.4byte 0x00000000

# 0x806661C8 - 0x806661D8
.section .sdata, "wa"
.balign 8

.obj __RTTI__CScnItemCameraNw4r, global
	.4byte CScnItemCameraNw4r_typestr
	.4byte CScnItemCameraNw4r_hierarchy

.obj __RTTI__CScnItemCamera, global
	.4byte CScnItemCamera_typestr
	.4byte CScnItemCamera_hierarchy
