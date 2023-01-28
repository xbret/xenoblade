.include "macros.inc"
.file "kyoshin/appgame/cf/CfObjectImplNpc.o"

# 0x8000A394 - 0x8000A3B4
.section extab, "a"
.balign 4

.obj "@etb_8000A394", local
.hidden "@etb_8000A394"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8000A394"

.obj "@etb_8000A39C", local
.hidden "@etb_8000A39C"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8000A39C"

.obj "@etb_8000A3A4", local
.hidden "@etb_8000A3A4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000A3A4"

.obj "@etb_8000A3AC", local
.hidden "@etb_8000A3AC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000A3AC"

# 0x80025E44 - 0x80025E74
.section extabindex, "a"
.balign 4

.obj "@eti_80025E44", local
.hidden "@eti_80025E44"
	.4byte fn_800CA6E4
	.4byte 0x000000D0
	.4byte "@etb_8000A394"
.endobj "@eti_80025E44"

.obj "@eti_80025E50", local
.hidden "@eti_80025E50"
	.4byte fn_800CA7B4
	.4byte 0x0000009C
	.4byte "@etb_8000A39C"
.endobj "@eti_80025E50"

.obj "@eti_80025E5C", local
.hidden "@eti_80025E5C"
	.4byte fn_800CA854
	.4byte 0x00000090
	.4byte "@etb_8000A3A4"
.endobj "@eti_80025E5C"

.obj "@eti_80025E68", local
.hidden "@eti_80025E68"
	.4byte fn_800CA8E4
	.4byte 0x00000040
	.4byte "@etb_8000A3AC"
.endobj "@eti_80025E68"

# 0x800CA6E4 - 0x800CA948
.text
.balign 4

.fn fn_800CA6E4, global
/* 800CA6E4 00093CA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800CA6E8 00093CA8  7C 08 02 A6 */	mflr r0
/* 800CA6EC 00093CAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CA6F0 00093CB0  38 00 FF FF */	li r0, -0x1
/* 800CA6F4 00093CB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800CA6F8 00093CB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800CA6FC 00093CBC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800CA700 00093CC0  93 81 00 10 */	stw r28, 0x10(r1)
/* 800CA704 00093CC4  7C 7C 1B 78 */	mr r28, r3
/* 800CA708 00093CC8  B0 03 03 68 */	sth r0, 0x368(r3)
/* 800CA70C 00093CCC  48 00 02 3D */	bl fn_800CA948
/* 800CA710 00093CD0  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 800CA714 00093CD4  80 04 00 64 */	lwz r0, 0x64(r4)
/* 800CA718 00093CD8  54 00 00 01 */	clrrwi. r0, r0, 31
/* 800CA71C 00093CDC  41 82 00 0C */	beq .L_800CA728
/* 800CA720 00093CE0  38 7C 00 28 */	addi r3, r28, 0x28
/* 800CA724 00093CE4  48 1D 64 69 */	bl fn_802A0B8C
.L_800CA728:
/* 800CA728 00093CE8  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 800CA72C 00093CEC  2C 03 00 00 */	cmpwi r3, 0x0
/* 800CA730 00093CF0  41 82 00 64 */	beq .L_800CA794
/* 800CA734 00093CF4  80 63 00 70 */	lwz r3, 0x70(r3)
/* 800CA738 00093CF8  4B FD FE 89 */	bl fn_800AA5C0
/* 800CA73C 00093CFC  3F E0 80 53 */	lis r31, lbl_8052E1D0@ha
/* 800CA740 00093D00  7C 7E 1B 78 */	mr r30, r3
/* 800CA744 00093D04  3B FF E1 D0 */	addi r31, r31, lbl_8052E1D0@l
/* 800CA748 00093D08  3B A0 00 00 */	li r29, 0x0
.L_800CA74C:
/* 800CA74C 00093D0C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 800CA750 00093D10  7F C3 F3 78 */	mr r3, r30
/* 800CA754 00093D14  48 1F 82 6D */	bl strstr
/* 800CA758 00093D18  2C 03 00 00 */	cmpwi r3, 0x0
/* 800CA75C 00093D1C  41 82 00 28 */	beq .L_800CA784
/* 800CA760 00093D20  81 9C 00 00 */	lwz r12, 0x0(r28)
/* 800CA764 00093D24  7F 83 E3 78 */	mr r3, r28
/* 800CA768 00093D28  38 80 04 00 */	li r4, 0x400
/* 800CA76C 00093D2C  38 A0 00 01 */	li r5, 0x1
/* 800CA770 00093D30  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 800CA774 00093D34  7D 89 03 A6 */	mtctr r12
/* 800CA778 00093D38  4E 80 04 21 */	bctrl
/* 800CA77C 00093D3C  B3 BC 03 68 */	sth r29, 0x368(r28)
/* 800CA780 00093D40  48 00 00 14 */	b .L_800CA794
.L_800CA784:
/* 800CA784 00093D44  3B BD 00 01 */	addi r29, r29, 0x1
/* 800CA788 00093D48  3B FF 00 04 */	addi r31, r31, 0x4
/* 800CA78C 00093D4C  28 1D 00 0A */	cmplwi r29, 0xa
/* 800CA790 00093D50  41 80 FF BC */	blt .L_800CA74C
.L_800CA794:
/* 800CA794 00093D54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CA798 00093D58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800CA79C 00093D5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800CA7A0 00093D60  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800CA7A4 00093D64  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800CA7A8 00093D68  7C 08 03 A6 */	mtlr r0
/* 800CA7AC 00093D6C  38 21 00 20 */	addi r1, r1, 0x20
/* 800CA7B0 00093D70  4E 80 00 20 */	blr
.endfn fn_800CA6E4

.fn fn_800CA7B4, global
/* 800CA7B4 00093D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CA7B8 00093D78  7C 08 02 A6 */	mflr r0
/* 800CA7BC 00093D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CA7C0 00093D80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CA7C4 00093D84  7C 7F 1B 78 */	mr r31, r3
/* 800CA7C8 00093D88  80 03 00 14 */	lwz r0, 0x14(r3)
/* 800CA7CC 00093D8C  2C 00 00 00 */	cmpwi r0, 0x0
/* 800CA7D0 00093D90  41 82 00 6C */	beq .L_800CA83C
/* 800CA7D4 00093D94  81 83 00 00 */	lwz r12, 0x0(r3)
/* 800CA7D8 00093D98  81 8C 00 DC */	lwz r12, 0xdc(r12)
/* 800CA7DC 00093D9C  7D 89 03 A6 */	mtctr r12
/* 800CA7E0 00093DA0  4E 80 04 21 */	bctrl
/* 800CA7E4 00093DA4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800CA7E8 00093DA8  80 03 00 90 */	lwz r0, 0x90(r3)
/* 800CA7EC 00093DAC  2C 00 00 00 */	cmpwi r0, 0x0
/* 800CA7F0 00093DB0  41 82 00 4C */	beq .L_800CA83C
/* 800CA7F4 00093DB4  A8 1F 03 68 */	lha r0, 0x368(r31)
/* 800CA7F8 00093DB8  2C 00 00 00 */	cmpwi r0, 0x0
/* 800CA7FC 00093DBC  41 80 00 28 */	blt .L_800CA824
/* 800CA800 00093DC0  80 63 00 98 */	lwz r3, 0x98(r3)
/* 800CA804 00093DC4  3C 80 80 4F */	lis r4, lbl_804F7FD0@ha
/* 800CA808 00093DC8  54 00 10 3A */	slwi r0, r0, 2
/* 800CA80C 00093DCC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 800CA810 00093DD0  38 84 7F D0 */	addi r4, r4, lbl_804F7FD0@l
/* 800CA814 00093DD4  7C 24 04 2E */	lfsx f1, r4, r0
/* 800CA818 00093DD8  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 800CA81C 00093DDC  7D 89 03 A6 */	mtctr r12
/* 800CA820 00093DE0  4E 80 04 21 */	bctrl
.L_800CA824:
/* 800CA824 00093DE4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800CA828 00093DE8  80 03 00 64 */	lwz r0, 0x64(r3)
/* 800CA82C 00093DEC  54 00 00 01 */	clrrwi. r0, r0, 31
/* 800CA830 00093DF0  41 82 00 0C */	beq .L_800CA83C
/* 800CA834 00093DF4  38 7F 00 28 */	addi r3, r31, 0x28
/* 800CA838 00093DF8  48 1D 65 D1 */	bl fn_802A0E08
.L_800CA83C:
/* 800CA83C 00093DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CA840 00093E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CA844 00093E04  7C 08 03 A6 */	mtlr r0
/* 800CA848 00093E08  38 21 00 10 */	addi r1, r1, 0x10
/* 800CA84C 00093E0C  4E 80 00 20 */	blr
.endfn fn_800CA7B4

.fn fn_800CA850, global
/* 800CA850 00093E10  4E 80 00 20 */	blr
.endfn fn_800CA850

.fn fn_800CA854, global
/* 800CA854 00093E14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800CA858 00093E18  7C 08 02 A6 */	mflr r0
/* 800CA85C 00093E1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CA860 00093E20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800CA864 00093E24  7C 7F 1B 78 */	mr r31, r3
/* 800CA868 00093E28  48 00 43 79 */	bl fn_800CEBE0
/* 800CA86C 00093E2C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800CA870 00093E30  38 81 00 14 */	addi r4, r1, 0x14
/* 800CA874 00093E34  38 A1 00 10 */	addi r5, r1, 0x10
/* 800CA878 00093E38  38 C1 00 0C */	addi r6, r1, 0xc
/* 800CA87C 00093E3C  80 63 00 70 */	lwz r3, 0x70(r3)
/* 800CA880 00093E40  38 E1 00 08 */	addi r7, r1, 0x8
/* 800CA884 00093E44  4B FD FA 95 */	bl fn_800AA318
/* 800CA888 00093E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CA88C 00093E4C  28 00 00 02 */	cmplwi r0, 0x2
/* 800CA890 00093E50  40 82 00 40 */	bne .L_800CA8D0
/* 800CA894 00093E54  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800CA898 00093E58  28 00 00 08 */	cmplwi r0, 0x8
/* 800CA89C 00093E5C  40 82 00 34 */	bne .L_800CA8D0
/* 800CA8A0 00093E60  4B FB 7A 55 */	bl fn_800822F4
/* 800CA8A4 00093E64  28 03 01 67 */	cmplwi r3, 0x167
/* 800CA8A8 00093E68  41 80 00 28 */	blt .L_800CA8D0
/* 800CA8AC 00093E6C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800CA8B0 00093E70  3C 80 80 50 */	lis r4, lbl_804F800C@ha
/* 800CA8B4 00093E74  38 84 80 0C */	addi r4, r4, lbl_804F800C@l
/* 800CA8B8 00093E78  38 A0 00 00 */	li r5, 0x0
/* 800CA8BC 00093E7C  80 63 00 98 */	lwz r3, 0x98(r3)
/* 800CA8C0 00093E80  81 83 00 00 */	lwz r12, 0x0(r3)
/* 800CA8C4 00093E84  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 800CA8C8 00093E88  7D 89 03 A6 */	mtctr r12
/* 800CA8CC 00093E8C  4E 80 04 21 */	bctrl
.L_800CA8D0:
/* 800CA8D0 00093E90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CA8D4 00093E94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800CA8D8 00093E98  7C 08 03 A6 */	mtlr r0
/* 800CA8DC 00093E9C  38 21 00 20 */	addi r1, r1, 0x20
/* 800CA8E0 00093EA0  4E 80 00 20 */	blr
.endfn fn_800CA854

.fn fn_800CA8E4, global
/* 800CA8E4 00093EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CA8E8 00093EA8  7C 08 02 A6 */	mflr r0
/* 800CA8EC 00093EAC  2C 03 00 00 */	cmpwi r3, 0x0
/* 800CA8F0 00093EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CA8F4 00093EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CA8F8 00093EB8  7C 7F 1B 78 */	mr r31, r3
/* 800CA8FC 00093EBC  41 82 00 10 */	beq .L_800CA90C
/* 800CA900 00093EC0  2C 04 00 00 */	cmpwi r4, 0x0
/* 800CA904 00093EC4  40 81 00 08 */	ble .L_800CA90C
/* 800CA908 00093EC8  48 36 A3 25 */	bl __dl__FPv
.L_800CA90C:
/* 800CA90C 00093ECC  7F E3 FB 78 */	mr r3, r31
/* 800CA910 00093ED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CA914 00093ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CA918 00093ED8  7C 08 03 A6 */	mtlr r0
/* 800CA91C 00093EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 800CA920 00093EE0  4E 80 00 20 */	blr
.endfn fn_800CA8E4

.fn fn_800CA924, global
/* 800CA924 00093EE4  38 63 00 68 */	addi r3, r3, 0x68
/* 800CA928 00093EE8  4E 80 00 20 */	blr
.endfn fn_800CA924

.fn fn_800CA92C, global
/* 800CA92C 00093EEC  4E 80 00 20 */	blr
.endfn fn_800CA92C

.fn fn_800CA930, global
/* 800CA930 00093EF0  4E 80 00 20 */	blr
.endfn fn_800CA930

.fn fn_800CA934, global
/* 800CA934 00093EF4  4E 80 00 20 */	blr
.endfn fn_800CA934

.fn fn_800CA938, global
/* 800CA938 00093EF8  38 63 FF F4 */	addi r3, r3, -0xc
/* 800CA93C 00093EFC  4B FF FF A8 */	b fn_800CA8E4
.endfn fn_800CA938

.fn fn_800CA940, global
/* 800CA940 00093F00  38 63 FF F0 */	addi r3, r3, -0x10
/* 800CA944 00093F04  4B FF FF A0 */	b fn_800CA8E4
.endfn fn_800CA940

# 0x804F7FD0 - 0x804F8018
.rodata
.balign 8
.sym lbl_804F7FD0, global
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3DCCCCCD

.obj cf_CfObjectImplNpc_typestr, global
	.4byte 0x63663A3A
	.4byte 0x43664F62
	.4byte 0x6A656374
	.4byte 0x496D706C
	.4byte 0x4E706300
.sym lbl_804F800C, global
	.4byte 0x636F7265
	.4byte 0x00000000
	.4byte 0x00000000

# 0x8052E1D0 - 0x8052E310
.data
.balign 8
.sym lbl_8052E1D0, global
	.4byte lbl_806694D0
	.4byte lbl_806694D8
	.4byte lbl_806694E0
	.4byte lbl_806694E8
	.4byte lbl_806694F0
	.4byte lbl_806694F8
	.4byte lbl_80669500
	.4byte lbl_80669508
	.4byte lbl_80669510
	.4byte lbl_80669518

.obj __vt__cf_CfObjectImplNpc, global
	.4byte __RTTI__cf_CfObjectImplNpc
	.4byte 0x00000000
	.4byte fn_800CA8E4
	.4byte fn_80054A20
	.4byte fn_800CC5DC
	.4byte fn_800CC638
	.4byte fn_800CC964
	.4byte fn_800CD268
	.4byte fn_800CD460
	.4byte fn_800CD5C0
	.4byte fn_800CD5DC
	.4byte fn_800CEB68
	.4byte fn_80087448
	.4byte fn_8008742C
	.4byte fn_8008743C
	.4byte fn_80087424
	.4byte fn_800459FC
	.4byte fn_80087410
	.4byte fn_800873FC
	.4byte fn_800873E8
	.4byte fn_800873D4
	.4byte fn_800873C8
	.4byte fn_800873AC
	.4byte fn_80087390
	.4byte fn_80087378
	.4byte fn_80087364
	.4byte fn_80087334
	.4byte fn_80087348
	.4byte fn_800CE8E4
	.4byte fn_800CA854
	.4byte fn_800CE544
	.4byte fn_800CE6A0
	.4byte fn_800CE8AC
	.4byte fn_800CEA34
	.4byte fn_800CAB30
	.4byte fn_800CB454
	.4byte fn_800CB21C
	.4byte fn_800CB9AC
	.4byte fn_800CB94C
	.4byte fn_80087330
	.4byte fn_800CA6E4
	.4byte fn_800CA7B4
	.4byte fn_800CA934
	.4byte fn_800CA930
	.4byte fn_800CA92C
	.4byte __RTTI__cf_CfObjectImplNpc
	.4byte 0xFFFFFFF4
	.4byte fn_800CA938
	.4byte fn_800CA6CC
	.4byte __RTTI__cf_CfObjectImplNpc
	.4byte 0xFFFFFFF0
	.4byte fn_800CA940
	.4byte fn_800C5988
	.4byte fn_800CAB2C
	.4byte fn_800CBBD8
	.4byte fn_800CA850
	.4byte fn_800CC020
	.4byte fn_800CA924
	.4byte fn_800CEE28
	.4byte fn_800CFFA0

.obj cf_CfObjectImplNpc_hierarchy, global
	.4byte __RTTI__cf_IObjectInfo
	.4byte 0x00000010
	.4byte __RTTI__IActParamEvent
	.4byte 0x00000000
	.4byte __RTTI__cf_CfObjectImpl
	.4byte 0x00000000
	.4byte __RTTI__cf_CfObjectImplMove
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

# 0x80664628 - 0x80664638
.section .sdata, "wa"
.balign 8

.obj __RTTI__cf_CfObjectImplObj, global
	.4byte cf_CfObjectImplObj_typestr
	.4byte cf_CfObjectImplObj_hierarchy

.obj __RTTI__cf_CfObjectImplNpc, global
	.4byte cf_CfObjectImplNpc_typestr
	.4byte cf_CfObjectImplNpc_hierarchy

# 0x806694D0 - 0x80669520
.section .sdata2, "a"
.balign 8
.sym lbl_806694D0, global
	.byte 0x6E, 0x70, 0x30
.sym lbl_806694D3, global
	.4byte 0x32303330
	.byte 0x00
.sym lbl_806694D8, global
	.4byte 0x6E703633
	.4byte 0x30313000
.sym lbl_806694E0, global
	.4byte 0x6E703636
	.4byte 0x30313000
.sym lbl_806694E8, global
	.4byte 0x6E703637
	.4byte 0x30313000
.sym lbl_806694F0, global
	.4byte 0x6E703731
	.4byte 0x30313000
.sym lbl_806694F8, global
	.4byte 0x6E703733
	.4byte 0x30313000
.sym lbl_80669500, global
	.4byte 0x6E703736
	.4byte 0x30313000
.sym lbl_80669508, global
	.4byte 0x6E703737
	.4byte 0x30313000
.sym lbl_80669510, global
	.4byte 0x6E703831
	.4byte 0x30313000
.sym lbl_80669518, global
	.4byte 0x6E703435
	.4byte 0x30383000
