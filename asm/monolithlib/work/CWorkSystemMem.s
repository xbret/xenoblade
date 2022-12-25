.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_804448B8
func_804448B8:
/* 804448B8 0040DE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804448BC 0040DE7C  7C 08 02 A6 */	mflr r0
/* 804448C0 0040DE80  38 C0 00 01 */	li r6, 1
/* 804448C4 0040DE84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804448C8 0040DE88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804448CC 0040DE8C  7C 7F 1B 78 */	mr r31, r3
/* 804448D0 0040DE90  4B FF 2C ED */	bl func_804375BC
/* 804448D4 0040DE94  3C 60 80 57 */	lis r3, __vt__CWorkSystemMem@ha
/* 804448D8 0040DE98  38 00 FF FF */	li r0, -1
/* 804448DC 0040DE9C  38 63 F3 20 */	addi r3, r3, __vt__CWorkSystemMem@l
/* 804448E0 0040DEA0  90 7F 00 00 */	stw r3, 0(r31)
/* 804448E4 0040DEA4  90 1F 01 C4 */	stw r0, 0x1c4(r31)
/* 804448E8 0040DEA8  93 ED BD 80 */	stw r31, lbl_80667F00@sda21(r13)
/* 804448EC 0040DEAC  4B FE FA B5 */	bl func_804343A0
/* 804448F0 0040DEB0  38 BF 00 04 */	addi r5, r31, 4
/* 804448F4 0040DEB4  38 80 0F E0 */	li r4, 0xfe0
/* 804448F8 0040DEB8  4B FE F7 49 */	bl func_80434040
/* 804448FC 0040DEBC  90 7F 01 C4 */	stw r3, 0x1c4(r31)
/* 80444900 0040DEC0  7F E3 FB 78 */	mr r3, r31
/* 80444904 0040DEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80444908 0040DEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044490C 0040DECC  7C 08 03 A6 */	mtlr r0
/* 80444910 0040DED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80444914 0040DED4  4E 80 00 20 */	blr 

.global func_80444918
func_80444918:
/* 80444918 0040DED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044491C 0040DEDC  7C 08 02 A6 */	mflr r0
/* 80444920 0040DEE0  2C 03 00 00 */	cmpwi r3, 0
/* 80444924 0040DEE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80444928 0040DEE8  BF C1 00 08 */	stmw r30, 8(r1)
/* 8044492C 0040DEEC  7C 7E 1B 78 */	mr r30, r3
/* 80444930 0040DEF0  7C 9F 23 78 */	mr r31, r4
/* 80444934 0040DEF4  41 82 00 24 */	beq lbl_80444958
/* 80444938 0040DEF8  38 00 00 00 */	li r0, 0
/* 8044493C 0040DEFC  90 0D BD 80 */	stw r0, lbl_80667F00@sda21(r13)
/* 80444940 0040DF00  38 80 00 00 */	li r4, 0
/* 80444944 0040DF04  4B FF 31 85 */	bl func_80437AC8
/* 80444948 0040DF08  2C 1F 00 00 */	cmpwi r31, 0
/* 8044494C 0040DF0C  40 81 00 0C */	ble lbl_80444958
/* 80444950 0040DF10  7F C3 F3 78 */	mr r3, r30
/* 80444954 0040DF14  4B FF 02 D9 */	bl __dl__FPv
lbl_80444958:
/* 80444958 0040DF18  7F C3 F3 78 */	mr r3, r30
/* 8044495C 0040DF1C  BB C1 00 08 */	lmw r30, 8(r1)
/* 80444960 0040DF20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80444964 0040DF24  7C 08 03 A6 */	mtlr r0
/* 80444968 0040DF28  38 21 00 10 */	addi r1, r1, 0x10
/* 8044496C 0040DF2C  4E 80 00 20 */	blr 

.global func_80444970
func_80444970:
/* 80444970 0040DF30  80 6D BD 80 */	lwz r3, lbl_80667F00@sda21(r13)
/* 80444974 0040DF34  80 63 01 C4 */	lwz r3, 0x1c4(r3)
/* 80444978 0040DF38  4E 80 00 20 */	blr 

.global func_8044497C
func_8044497C:
/* 8044497C 0040DF3C  4B FF 40 7C */	b func_804389F8

.global func_80444980
func_80444980:
/* 80444980 0040DF40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80444984 0040DF44  7C 08 02 A6 */	mflr r0
/* 80444988 0040DF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044498C 0040DF4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80444990 0040DF50  7C 7F 1B 78 */	mr r31, r3
/* 80444994 0040DF54  80 83 00 60 */	lwz r4, 0x60(r3)
/* 80444998 0040DF58  80 04 00 00 */	lwz r0, 0(r4)
/* 8044499C 0040DF5C  7C 00 20 40 */	cmplw r0, r4
/* 804449A0 0040DF60  40 82 00 60 */	bne lbl_80444A00
/* 804449A4 0040DF64  80 E3 00 58 */	lwz r7, 0x58(r3)
/* 804449A8 0040DF68  38 A0 00 00 */	li r5, 0
/* 804449AC 0040DF6C  80 C7 00 60 */	lwz r6, 0x60(r7)
/* 804449B0 0040DF70  80 86 00 00 */	lwz r4, 0(r6)
/* 804449B4 0040DF74  48 00 00 0C */	b lbl_804449C0
lbl_804449B8:
/* 804449B8 0040DF78  80 84 00 00 */	lwz r4, 0(r4)
/* 804449BC 0040DF7C  38 A5 00 01 */	addi r5, r5, 1
lbl_804449C0:
/* 804449C0 0040DF80  7C 04 30 40 */	cmplw r4, r6
/* 804449C4 0040DF84  40 82 FF F4 */	bne lbl_804449B8
/* 804449C8 0040DF88  28 05 00 01 */	cmplwi r5, 1
/* 804449CC 0040DF8C  40 82 00 34 */	bne lbl_80444A00
/* 804449D0 0040DF90  80 87 00 60 */	lwz r4, 0x60(r7)
/* 804449D4 0040DF94  80 84 00 00 */	lwz r4, 0(r4)
/* 804449D8 0040DF98  80 04 00 08 */	lwz r0, 8(r4)
/* 804449DC 0040DF9C  7C 00 18 40 */	cmplw r0, r3
/* 804449E0 0040DFA0  40 82 00 20 */	bne lbl_80444A00
/* 804449E4 0040DFA4  80 63 01 C4 */	lwz r3, 0x1c4(r3)
/* 804449E8 0040DFA8  4B FE F9 C9 */	bl func_804343B0
/* 804449EC 0040DFAC  38 00 FF FF */	li r0, -1
/* 804449F0 0040DFB0  90 1F 01 C4 */	stw r0, 0x1c4(r31)
/* 804449F4 0040DFB4  7F E3 FB 78 */	mr r3, r31
/* 804449F8 0040DFB8  4B FF 40 2D */	bl func_80438A24
/* 804449FC 0040DFBC  48 00 00 08 */	b lbl_80444A04
lbl_80444A00:
/* 80444A00 0040DFC0  38 60 00 00 */	li r3, 0
lbl_80444A04:
/* 80444A04 0040DFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80444A08 0040DFC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80444A0C 0040DFCC  7C 08 03 A6 */	mtlr r0
/* 80444A10 0040DFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80444A14 0040DFD4  4E 80 00 20 */	blr 


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global CWorkSystemMem_typestr
CWorkSystemMem_typestr:
	.asciz "CWorkSystemMem"
	.balign 4

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global __vt__CWorkSystemMem
__vt__CWorkSystemMem:
	.4byte __RTTI__CWorkSystemMem
	.4byte 0
	.4byte func_80444918
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
	.4byte func_80438A50
	.4byte func_80039E3C
	.4byte func_80039E38
	.4byte func_8044497C
	.4byte func_80444980
	.4byte func_80039E30

.global CWorkSystemMem_hierarchy
CWorkSystemMem_hierarchy:
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte __RTTI__CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600


.global __RTTI__CWorkSystemMem
__RTTI__CWorkSystemMem:
	.4byte CWorkSystemMem_typestr
	.4byte CWorkSystemMem_hierarchy

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_80667F00
lbl_80667F00:
	.skip 0x8