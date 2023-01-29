.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn __ct__CLib, global
/* 80459790 00422D50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80459794 00422D54  7C 08 02 A6 */	mflr r0
/* 80459798 00422D58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045979C 00422D5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804597A0 00422D60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804597A4 00422D64  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804597A8 00422D68  4B FE A0 15 */	bl func_804437BC
/* 804597AC 00422D6C  3C 80 80 52 */	lis r4, lbl_805268A8@ha
/* 804597B0 00422D70  7C 7E 1B 78 */	mr r30, r3
/* 804597B4 00422D74  38 84 68 A8 */	addi r4, r4, lbl_805268A8@l
/* 804597B8 00422D78  3B E4 00 4A */	addi r31, r4, 0x4a
/* 804597BC 00422D7C  4B FD DD F9 */	bl func_804375B4
/* 804597C0 00422D80  7C 64 1B 78 */	mr r4, r3
/* 804597C4 00422D84  38 60 01 C8 */	li r3, 0x1c8
/* 804597C8 00422D88  4B FD B2 95 */	bl mm_malloc
/* 804597CC 00422D8C  2C 03 00 00 */	cmpwi r3, 0x0
/* 804597D0 00422D90  7C 7D 1B 78 */	mr r29, r3
/* 804597D4 00422D94  41 82 00 2C */	beq .L_80459800
/* 804597D8 00422D98  7F E4 FB 78 */	mr r4, r31
/* 804597DC 00422D9C  7F C5 F3 78 */	mr r5, r30
/* 804597E0 00422DA0  38 C0 00 08 */	li r6, 0x8
/* 804597E4 00422DA4  4B FD DD D9 */	bl __ct__CWorkThread
/* 804597E8 00422DA8  3C 60 80 57 */	lis r3, __vt__CLib@ha
/* 804597EC 00422DAC  38 00 00 0B */	li r0, 0xb
/* 804597F0 00422DB0  38 63 05 E8 */	addi r3, r3, __vt__CLib@l
/* 804597F4 00422DB4  90 7D 00 00 */	stw r3, 0x0(r29)
/* 804597F8 00422DB8  93 AD BE 28 */	stw r29, lbl_80667FA8@sda21(r13)
/* 804597FC 00422DBC  90 1D 00 50 */	stw r0, 0x50(r29)
.L_80459800:
/* 80459800 00422DC0  7F A3 EB 78 */	mr r3, r29
/* 80459804 00422DC4  7F C4 F3 78 */	mr r4, r30
/* 80459808 00422DC8  38 A0 00 00 */	li r5, 0x0
/* 8045980C 00422DCC  4B FD F3 CD */	bl func_80438BD8
/* 80459810 00422DD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80459814 00422DD4  7F A3 EB 78 */	mr r3, r29
/* 80459818 00422DD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045981C 00422DDC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80459820 00422DE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80459824 00422DE4  7C 08 03 A6 */	mtlr r0
/* 80459828 00422DE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8045982C 00422DEC  4E 80 00 20 */	blr
.endfn __ct__CLib

.fn func_80459830, global
/* 80459830 00422DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80459834 00422DF4  7C 08 02 A6 */	mflr r0
/* 80459838 00422DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045983C 00422DFC  4B EF 1D B5 */	bl MIXUpdateSettings
/* 80459840 00422E00  81 8D BE 34 */	lwz r12, lbl_80667FB4@sda21(r13)
/* 80459844 00422E04  2C 0C 00 00 */	cmpwi r12, 0x0
/* 80459848 00422E08  41 82 00 0C */	beq .L_80459854
/* 8045984C 00422E0C  7D 89 03 A6 */	mtctr r12
/* 80459850 00422E10  4E 80 04 21 */	bctrl
.L_80459854:
/* 80459854 00422E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80459858 00422E18  7C 08 03 A6 */	mtlr r0
/* 8045985C 00422E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80459860 00422E20  4E 80 00 20 */	blr
.endfn func_80459830

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.global __vt__CLib
__vt__CLib:
	.4byte __RTTI__CLib
	.4byte 0x00000000
	.4byte func_80459390
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
	.4byte func_80459580
	.4byte func_804596F4
	.4byte func_80039E30

.global CLib_hierarchy
CLib_hierarchy:
	.4byte __RTTI__IWorkEvent
	.4byte 0x00000000
	.4byte __RTTI__CWorkThread
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.section .sdata, "wa" # 0x80664180 - 0x80666600

.balign 8

.global __RTTI__CLib
__RTTI__CLib:
	.4byte CLib_typestr
	.4byte CLib_hierarchy

.section .sdata2, "a" # 0x80668380 - 0x8066DCE0

.balign 8

.global CLib_typestr
CLib_typestr:
	.4byte 0x434C6962
	.4byte 0x00000000

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001D498", local
.hidden "@etb_8001D498"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001D498"

.obj "@etb_8001D4A0", local
.hidden "@etb_8001D4A0"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001D4A0"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800350FC", local
.hidden "@eti_800350FC"
	.4byte __ct__CLib
	.4byte 0x000000A0
	.4byte "@etb_8001D498"
.endobj "@eti_800350FC"

.obj "@eti_80035108", local
.hidden "@eti_80035108"
	.4byte func_80459830
	.4byte 0x00000034
	.4byte "@etb_8001D4A0"
.endobj "@eti_80035108"
