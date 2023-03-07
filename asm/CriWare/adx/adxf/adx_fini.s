.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn ADXF_Init, global
/* 8037C620 00345BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C624 00345BE4  7C 08 02 A6 */	mflr r0
/* 8037C628 00345BE8  3C 60 80 52 */	lis r3, adxf_build@ha
/* 8037C62C 00345BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C630 00345BF0  38 63 8E 20 */	addi r3, r3, adxf_build@l
/* 8037C634 00345BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C638 00345BF8  3F E0 80 5E */	lis r31, adxf_init_cnt@ha
/* 8037C63C 00345BFC  3B FF 34 28 */	addi r31, r31, adxf_init_cnt@l
/* 8037C640 00345C00  80 1F 00 00 */	lwz r0, 0(r31)
/* 8037C644 00345C04  90 7F 00 04 */	stw r3, 4(r31)
/* 8037C648 00345C08  2C 00 00 00 */	cmpwi r0, 0
/* 8037C64C 00345C0C  40 82 00 68 */	bne .L_8037C6B4
/* 8037C650 00345C10  38 7F 00 08 */	addi r3, r31, 8
/* 8037C654 00345C14  38 80 00 00 */	li r4, 0
/* 8037C658 00345C18  38 A0 03 40 */	li r5, 0x340
/* 8037C65C 00345C1C  4B C8 7C F5 */	bl memset
/* 8037C660 00345C20  38 7F 03 48 */	addi r3, r31, 0x348
/* 8037C664 00345C24  38 80 00 00 */	li r4, 0
/* 8037C668 00345C28  38 A0 04 00 */	li r5, 0x400
/* 8037C66C 00345C2C  4B C8 7C E5 */	bl memset
/* 8037C670 00345C30  38 7F 07 48 */	addi r3, r31, 0x748
/* 8037C674 00345C34  38 80 00 FF */	li r4, 0xff
/* 8037C678 00345C38  38 A0 01 00 */	li r5, 0x100
/* 8037C67C 00345C3C  4B C8 7C D5 */	bl memset
/* 8037C680 00345C40  38 7F 08 48 */	addi r3, r31, 0x848
/* 8037C684 00345C44  38 80 00 00 */	li r4, 0
/* 8037C688 00345C48  38 A0 00 20 */	li r5, 0x20
/* 8037C68C 00345C4C  4B C8 7C C5 */	bl memset
/* 8037C690 00345C50  38 80 00 00 */	li r4, 0
/* 8037C694 00345C54  38 60 FF FF */	li r3, -1
/* 8037C698 00345C58  38 00 00 01 */	li r0, 1
/* 8037C69C 00345C5C  90 9F 08 68 */	stw r4, 0x868(r31)
/* 8037C6A0 00345C60  90 9F 08 6C */	stw r4, 0x86c(r31)
/* 8037C6A4 00345C64  90 9F 08 70 */	stw r4, 0x870(r31)
/* 8037C6A8 00345C68  90 9F 08 74 */	stw r4, 0x874(r31)
/* 8037C6AC 00345C6C  90 7F 08 78 */	stw r3, 0x878(r31)
/* 8037C6B0 00345C70  90 1F 08 7C */	stw r0, 0x87c(r31)
.L_8037C6B4:
/* 8037C6B4 00345C74  80 7F 00 00 */	lwz r3, 0(r31)
/* 8037C6B8 00345C78  38 03 00 01 */	addi r0, r3, 1
/* 8037C6BC 00345C7C  90 1F 00 00 */	stw r0, 0(r31)
/* 8037C6C0 00345C80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037C6C4 00345C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C6C8 00345C88  7C 08 03 A6 */	mtlr r0
/* 8037C6CC 00345C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C6D0 00345C90  4E 80 00 20 */	blr 
.endfn ADXF_Init

.fn ADXF_Finish, global
/* 8037C6D4 00345C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C6D8 00345C98  7C 08 02 A6 */	mflr r0
/* 8037C6DC 00345C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C6E0 00345CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037C6E4 00345CA4  3F E0 80 5E */	lis r31, adxf_init_cnt@ha
/* 8037C6E8 00345CA8  3B FF 34 28 */	addi r31, r31, adxf_init_cnt@l
/* 8037C6EC 00345CAC  80 1F 00 00 */	lwz r0, 0(r31)
/* 8037C6F0 00345CB0  34 00 FF FF */	addic. r0, r0, -1
/* 8037C6F4 00345CB4  90 1F 00 00 */	stw r0, 0(r31)
/* 8037C6F8 00345CB8  40 82 00 6C */	bne .L_8037C764
/* 8037C6FC 00345CBC  48 00 1A C1 */	bl ADXF_CloseAll
/* 8037C700 00345CC0  38 00 00 00 */	li r0, 0
/* 8037C704 00345CC4  38 60 00 01 */	li r3, 1
/* 8037C708 00345CC8  38 A0 FF FF */	li r5, -1
/* 8037C70C 00345CCC  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 8037C710 00345CD0  38 7F 08 48 */	addi r3, r31, 0x848
/* 8037C714 00345CD4  38 80 00 00 */	li r4, 0
/* 8037C718 00345CD8  90 BF 08 78 */	stw r5, 0x878(r31)
/* 8037C71C 00345CDC  38 A0 00 20 */	li r5, 0x20
/* 8037C720 00345CE0  90 1F 08 74 */	stw r0, 0x874(r31)
/* 8037C724 00345CE4  90 1F 08 70 */	stw r0, 0x870(r31)
/* 8037C728 00345CE8  90 1F 08 6C */	stw r0, 0x86c(r31)
/* 8037C72C 00345CEC  90 1F 08 68 */	stw r0, 0x868(r31)
/* 8037C730 00345CF0  4B C8 7C 21 */	bl memset
/* 8037C734 00345CF4  38 7F 07 48 */	addi r3, r31, 0x748
/* 8037C738 00345CF8  38 80 00 FF */	li r4, 0xff
/* 8037C73C 00345CFC  38 A0 01 00 */	li r5, 0x100
/* 8037C740 00345D00  4B C8 7C 11 */	bl memset
/* 8037C744 00345D04  38 7F 03 48 */	addi r3, r31, 0x348
/* 8037C748 00345D08  38 80 00 00 */	li r4, 0
/* 8037C74C 00345D0C  38 A0 04 00 */	li r5, 0x400
/* 8037C750 00345D10  4B C8 7C 01 */	bl memset
/* 8037C754 00345D14  38 7F 00 08 */	addi r3, r31, 8
/* 8037C758 00345D18  38 80 00 00 */	li r4, 0
/* 8037C75C 00345D1C  38 A0 03 40 */	li r5, 0x340
/* 8037C760 00345D20  4B C8 7B F1 */	bl memset
.L_8037C764:
/* 8037C764 00345D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C768 00345D28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037C76C 00345D2C  7C 08 03 A6 */	mtlr r0
/* 8037C770 00345D30  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C774 00345D34  4E 80 00 20 */	blr 
.endfn ADXF_Finish

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj adxf_build, global
	.asciz "\nADXF/WII Ver.7.71 Build:Nov 13 2008 10:52:48\n"
	.asciz "Append: MW4199 WII30Jul2008Patch02\n"
	.balign 4
	.4byte 0
.endobj adxf_build

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj adxf_init_cnt, global
	.skip 0x4
.endobj adxf_init_cnt

.obj cri_verstr_ptr, local
	.skip 0x4
.endobj cri_verstr_ptr

.obj adxf_obj, global
	.skip 0x340
.endobj adxf_obj

.obj adxf_ptinfo, global
	.skip 0x400
.endobj adxf_ptinfo

.obj adxf_cmd_hstry, global
	.skip 0x100
.endobj adxf_cmd_hstry

.obj adxf_cmd_ncall, global
	.skip 0x20
.endobj adxf_cmd_ncall

.obj adxf_hstry_no, global
	.skip 0x4
.endobj adxf_hstry_no

.obj adxf_ocbi_fg, global
	.skip 0x4
.endobj adxf_ocbi_fg

.obj adxf_flno, global
	.skip 0x4
.endobj adxf_flno

.obj adxf_ldptnw_hn, global
	.skip 0x4
.endobj adxf_ldptnw_hn

.obj adxf_ldptnw_ptid, global
	.skip 0x4
.endobj adxf_ldptnw_ptid

.obj adxf_ldptnw_last_stat, global
	.skip 0x4
.endobj adxf_ldptnw_last_stat
