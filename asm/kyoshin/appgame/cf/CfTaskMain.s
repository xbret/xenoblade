.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_80069710, global
/* 80069710 00032CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80069714 00032CD4  7C 08 02 A6 */	mflr r0
/* 80069718 00032CD8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8006971C 00032CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80069720 00032CE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80069724 00032CE4  7C 9F 23 78 */	mr r31, r4
/* 80069728 00032CE8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8006972C 00032CEC  7C 7E 1B 78 */	mr r30, r3
/* 80069730 00032CF0  41 82 00 1C */	beq .L_8006974C
/* 80069734 00032CF4  38 80 00 00 */	li r4, 0x0
/* 80069738 00032CF8  48 3D B4 01 */	bl func_80444B38
/* 8006973C 00032CFC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80069740 00032D00  40 81 00 0C */	ble .L_8006974C
/* 80069744 00032D04  7F C3 F3 78 */	mr r3, r30
/* 80069748 00032D08  48 3C B4 E5 */	bl __dl__FPv
.L_8006974C:
/* 8006974C 00032D0C  7F C3 F3 78 */	mr r3, r30
/* 80069750 00032D10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80069754 00032D14  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80069758 00032D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8006975C 00032D1C  7C 08 03 A6 */	mtlr r0
/* 80069760 00032D20  38 21 00 10 */	addi r1, r1, 0x10
/* 80069764 00032D24  4E 80 00 20 */	blr
.endfn func_80069710

.fn func_80069768, global
/* 80069768 00032D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006976C 00032D2C  7C 08 02 A6 */	mflr r0
/* 80069770 00032D30  2C 03 00 00 */	cmpwi r3, 0x0
/* 80069774 00032D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80069778 00032D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006977C 00032D3C  7C 9F 23 78 */	mr r31, r4
/* 80069780 00032D40  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80069784 00032D44  7C 7E 1B 78 */	mr r30, r3
/* 80069788 00032D48  41 82 00 20 */	beq .L_800697A8
/* 8006978C 00032D4C  41 82 00 0C */	beq .L_80069798
/* 80069790 00032D50  38 80 00 00 */	li r4, 0x0
/* 80069794 00032D54  48 3D B3 A5 */	bl func_80444B38
.L_80069798:
/* 80069798 00032D58  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8006979C 00032D5C  40 81 00 0C */	ble .L_800697A8
/* 800697A0 00032D60  7F C3 F3 78 */	mr r3, r30
/* 800697A4 00032D64  48 3C B4 89 */	bl __dl__FPv
.L_800697A8:
/* 800697A8 00032D68  7F C3 F3 78 */	mr r3, r30
/* 800697AC 00032D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800697B0 00032D70  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 800697B4 00032D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800697B8 00032D78  7C 08 03 A6 */	mtlr r0
/* 800697BC 00032D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 800697C0 00032D80  4E 80 00 20 */	blr
.endfn func_80069768

.fn func_800697C4, global
/* 800697C4 00032D84  4E 80 00 20 */	blr
.endfn func_800697C4

.fn func_800697C8, global
/* 800697C8 00032D88  4E 80 00 20 */	blr
.endfn func_800697C8

.fn func_800697CC, global
/* 800697CC 00032D8C  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 800697D0 00032D90  54 00 02 95 */	rlwinm. r0, r0, 0, 10, 10
/* 800697D4 00032D94  4C 82 00 20 */	bnelr
/* 800697D8 00032D98  48 01 61 EC */	b func_8007F9C4
/* 800697DC 00032D9C  4E 80 00 20 */	blr
.endfn func_800697CC

.fn func_800697E0, global
/* 800697E0 00032DA0  48 01 64 1C */	b func_8007FBFC
.endfn func_800697E0

.fn func_800697E4, global
/* 800697E4 00032DA4  48 01 64 48 */	b func_8007FC2C
.endfn func_800697E4

.fn func_800697E8, global
/* 800697E8 00032DA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800697EC 00032DAC  7C 08 02 A6 */	mflr r0
/* 800697F0 00032DB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800697F4 00032DB4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800697F8 00032DB8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800697FC 00032DBC  7C 9E 23 78 */	mr r30, r4
/* 80069800 00032DC0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80069804 00032DC4  7C 7D 1B 78 */	mr r29, r3
/* 80069808 00032DC8  48 3C DD AD */	bl func_804375B4
/* 8006980C 00032DCC  7C 64 1B 78 */	mr r4, r3
/* 80069810 00032DD0  38 60 00 5C */	li r3, 0x5c
/* 80069814 00032DD4  48 3C B2 49 */	bl mm_malloc
/* 80069818 00032DD8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8006981C 00032DDC  7C 7F 1B 78 */	mr r31, r3
/* 80069820 00032DE0  41 82 00 64 */	beq .L_80069884
/* 80069824 00032DE4  48 3D B1 F5 */	bl __ct__8CProcessFv
/* 80069828 00032DE8  3C 60 80 53 */	lis r3, __vt__CTTask_cf_CfTaskMain@ha
/* 8006982C 00032DEC  3C C0 80 51 */	lis r6, lbl_8050CE10@ha
/* 80069830 00032DF0  38 63 A7 28 */	addi r3, r3, __vt__CTTask_cf_CfTaskMain@l
/* 80069834 00032DF4  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80069838 00032DF8  38 C6 CE 10 */	addi r6, r6, lbl_8050CE10@l
/* 8006983C 00032DFC  80 86 00 04 */	lwz r4, 0x4(r6)
/* 80069840 00032E00  3C 60 80 53 */	lis r3, __vt__cf_CfTaskMain@ha
/* 80069844 00032E04  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 80069848 00032E08  38 63 A6 50 */	addi r3, r3, __vt__cf_CfTaskMain@l
/* 8006984C 00032E0C  90 BF 00 3C */	stw r5, 0x3c(r31)
/* 80069850 00032E10  38 03 00 24 */	addi r0, r3, 0x24
/* 80069854 00032E14  90 9F 00 40 */	stw r4, 0x40(r31)
/* 80069858 00032E18  80 86 00 08 */	lwz r4, 0x8(r6)
/* 8006985C 00032E1C  90 9F 00 44 */	stw r4, 0x44(r31)
/* 80069860 00032E20  80 86 00 04 */	lwz r4, 0x4(r6)
/* 80069864 00032E24  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 80069868 00032E28  90 BF 00 48 */	stw r5, 0x48(r31)
/* 8006986C 00032E2C  90 9F 00 4C */	stw r4, 0x4c(r31)
/* 80069870 00032E30  80 86 00 08 */	lwz r4, 0x8(r6)
/* 80069874 00032E34  90 9F 00 50 */	stw r4, 0x50(r31)
/* 80069878 00032E38  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8006987C 00032E3C  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80069880 00032E40  93 DF 00 58 */	stw r30, 0x58(r31)
.L_80069884:
/* 80069884 00032E44  7F E3 FB 78 */	mr r3, r31
/* 80069888 00032E48  7F A4 EB 78 */	mr r4, r29
/* 8006988C 00032E4C  38 A0 00 00 */	li r5, 0x0
/* 80069890 00032E50  48 3D B3 E5 */	bl func_80444C74
/* 80069894 00032E54  7F E3 FB 78 */	mr r3, r31
/* 80069898 00032E58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8006989C 00032E5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800698A0 00032E60  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800698A4 00032E64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800698A8 00032E68  7C 08 03 A6 */	mtlr r0
/* 800698AC 00032E6C  38 21 00 20 */	addi r1, r1, 0x20
/* 800698B0 00032E70  4E 80 00 20 */	blr
.endfn func_800697E8

.fn func_800698B4, global
/* 800698B4 00032E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800698B8 00032E78  7C 08 02 A6 */	mflr r0
/* 800698BC 00032E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800698C0 00032E80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800698C4 00032E84  7C 7F 1B 78 */	mr r31, r3
/* 800698C8 00032E88  38 63 00 3C */	addi r3, r3, 0x3c
/* 800698CC 00032E8C  48 25 04 25 */	bl __ptmf_test
/* 800698D0 00032E90  2C 03 00 00 */	cmpwi r3, 0x0
/* 800698D4 00032E94  41 82 00 14 */	beq .L_800698E8
/* 800698D8 00032E98  7F E3 FB 78 */	mr r3, r31
/* 800698DC 00032E9C  39 9F 00 3C */	addi r12, r31, 0x3c
/* 800698E0 00032EA0  48 25 04 7D */	bl __ptmf_scall
/* 800698E4 00032EA4  60 00 00 00 */	nop
.L_800698E8:
/* 800698E8 00032EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800698EC 00032EAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800698F0 00032EB0  7C 08 03 A6 */	mtlr r0
/* 800698F4 00032EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 800698F8 00032EB8  4E 80 00 20 */	blr
.endfn func_800698B4

.fn func_800698FC, global
/* 800698FC 00032EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80069900 00032EC0  7C 08 02 A6 */	mflr r0
/* 80069904 00032EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80069908 00032EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006990C 00032ECC  7C 7F 1B 78 */	mr r31, r3
/* 80069910 00032ED0  38 63 00 48 */	addi r3, r3, 0x48
/* 80069914 00032ED4  48 25 03 DD */	bl __ptmf_test
/* 80069918 00032ED8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8006991C 00032EDC  41 82 00 14 */	beq .L_80069930
/* 80069920 00032EE0  7F E3 FB 78 */	mr r3, r31
/* 80069924 00032EE4  39 9F 00 48 */	addi r12, r31, 0x48
/* 80069928 00032EE8  48 25 04 35 */	bl __ptmf_scall
/* 8006992C 00032EEC  60 00 00 00 */	nop
.L_80069930:
/* 80069930 00032EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80069934 00032EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80069938 00032EF8  7C 08 03 A6 */	mtlr r0
/* 8006993C 00032EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80069940 00032F00  4E 80 00 20 */	blr
.endfn func_800698FC

.fn func_80069944, global
/* 80069944 00032F04  38 63 FF AC */	addi r3, r3, -0x54
/* 80069948 00032F08  4B FF FE 20 */	b func_80069768
.endfn func_80069944

.section .rodata, "a" # 0x804F5B20 - 0x805281E0

.balign 8

.global cf_CfTaskMain_typestr
cf_CfTaskMain_typestr:
	.4byte 0x63663A3A
	.4byte 0x43665461
	.4byte 0x736B4D61
	.4byte 0x696E0000

.global CTTask_cf_CfTaskMain_typestr
CTTask_cf_CfTaskMain_typestr:
	.4byte 0x43545461
	.4byte 0x736B3C63
	.4byte 0x663A3A43
	.4byte 0x66546173
	.4byte 0x6B4D6169
	.4byte 0x6E3E0000

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.global __vt__cf_CfTaskMain
__vt__cf_CfTaskMain:
	.4byte __RTTI__cf_CfTaskMain
	.4byte 0x00000000
	.4byte func_80069768
	.4byte CChildListNode_Reset
	.4byte func_800697C4
	.4byte func_800697C8
	.4byte func_800697CC
	.4byte func_800697E0
	.4byte func_800697E4
	.4byte __RTTI__cf_CfTaskMain
	.4byte 0xFFFFFFAC
	.4byte func_80069944
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

.global cf_CfTaskMain_hierarchy
cf_CfTaskMain_hierarchy:
	.4byte __RTTI__IWorkEvent
	.4byte 0x00000054
	.4byte __RTTI__CDoubleListNode
	.4byte 0x00000000
	.4byte __RTTI__CChildListNode
	.4byte 0x00000000
	.4byte __RTTI__CProcess
	.4byte 0x00000000
	.4byte __RTTI__CTTask_cf_CfTaskMain
	.4byte 0x00000000
	.4byte 0x00000000

.global __vt__CTTask_cf_CfTaskMain
__vt__CTTask_cf_CfTaskMain:
	.4byte __RTTI__CTTask_cf_CfTaskMain
	.4byte 0x00000000
	.4byte func_80069710
	.4byte CChildListNode_Reset
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte func_800698B4
	.4byte func_800698FC
	.4byte func_80043F20

.global CTTask_cf_CfTaskMain_hierarchy
CTTask_cf_CfTaskMain_hierarchy:
	.4byte __RTTI__CDoubleListNode
	.4byte 0x00000000
	.4byte __RTTI__CChildListNode
	.4byte 0x00000000
	.4byte __RTTI__CProcess
	.4byte 0x00000000
	.4byte 0x00000000

.section .sdata, "wa" # 0x80664180 - 0x80666600

.balign 8

.global __RTTI__cf_CfTaskMain
__RTTI__cf_CfTaskMain:
	.4byte cf_CfTaskMain_typestr
	.4byte cf_CfTaskMain_hierarchy

.global __RTTI__CTTask_cf_CfTaskMain
__RTTI__CTTask_cf_CfTaskMain:
	.4byte CTTask_cf_CfTaskMain_typestr
	.4byte CTTask_cf_CfTaskMain_hierarchy

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80007F28", local
.hidden "@etb_80007F28"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80007F28"

.obj "@etb_80007F30", local
.hidden "@etb_80007F30"
	.4byte 0x10080000
	.4byte 0x00000030
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000054
	.4byte __dt__IWorkEvent
.endobj "@etb_80007F30"

.obj "@etb_80007F4C", local
.hidden "@etb_80007F4C"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80007F4C"

.obj "@etb_80007F54", local
.hidden "@etb_80007F54"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80007F54"

.obj "@etb_80007F5C", local
.hidden "@etb_80007F5C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80007F5C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800231C8", local
.hidden "@eti_800231C8"
	.4byte func_80069710
	.4byte 0x00000058
	.4byte "@etb_80007F28"
.endobj "@eti_800231C8"

.obj "@eti_800231D4", local
.hidden "@eti_800231D4"
	.4byte func_80069768
	.4byte 0x0000005C
	.4byte "@etb_80007F30"
.endobj "@eti_800231D4"

.obj "@eti_800231E0", local
.hidden "@eti_800231E0"
	.4byte func_800697E8
	.4byte 0x000000CC
	.4byte "@etb_80007F4C"
.endobj "@eti_800231E0"

.obj "@eti_800231EC", local
.hidden "@eti_800231EC"
	.4byte func_800698B4
	.4byte 0x00000048
	.4byte "@etb_80007F54"
.endobj "@eti_800231EC"

.obj "@eti_800231F8", local
.hidden "@eti_800231F8"
	.4byte func_800698FC
	.4byte 0x00000048
	.4byte "@etb_80007F5C"
.endobj "@eti_800231F8"
