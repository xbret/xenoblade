.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CWorkSystemMem, global
/* 804448B8 0040DE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804448BC 0040DE7C  7C 08 02 A6 */	mflr r0
/* 804448C0 0040DE80  38 C0 00 01 */	li r6, 1
/* 804448C4 0040DE84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804448C8 0040DE88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804448CC 0040DE8C  7C 7F 1B 78 */	mr r31, r3
/* 804448D0 0040DE90  4B FF 2C ED */	bl __ct__11CWorkThreadFPCcP11CWorkThreadi
/* 804448D4 0040DE94  3C 60 80 57 */	lis r3, __vt__14CWorkSystemMem@ha
/* 804448D8 0040DE98  38 00 FF FF */	li r0, -1
/* 804448DC 0040DE9C  38 63 F3 20 */	addi r3, r3, __vt__14CWorkSystemMem@l
/* 804448E0 0040DEA0  90 7F 00 00 */	stw r3, 0(r31)
/* 804448E4 0040DEA4  90 1F 01 C4 */	stw r0, 0x1c4(r31)
/* 804448E8 0040DEA8  93 ED BD 80 */	stw r31, lbl_80667F00@sda21(r13)
/* 804448EC 0040DEAC  4B FE FA B5 */	bl Heap_getRegionIndex2
/* 804448F0 0040DEB0  38 BF 00 04 */	addi r5, r31, 4
/* 804448F4 0040DEB4  38 80 0F E0 */	li r4, 0xfe0
/* 804448F8 0040DEB8  4B FE F7 49 */	bl heap_createRegion
/* 804448FC 0040DEBC  90 7F 01 C4 */	stw r3, 0x1c4(r31)
/* 80444900 0040DEC0  7F E3 FB 78 */	mr r3, r31
/* 80444904 0040DEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80444908 0040DEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044490C 0040DECC  7C 08 03 A6 */	mtlr r0
/* 80444910 0040DED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80444914 0040DED4  4E 80 00 20 */	blr 
.endfn __ct__CWorkSystemMem

.fn __dt__14CWorkSystemMemFv, global
/* 80444918 0040DED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044491C 0040DEDC  7C 08 02 A6 */	mflr r0
/* 80444920 0040DEE0  2C 03 00 00 */	cmpwi r3, 0
/* 80444924 0040DEE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80444928 0040DEE8  BF C1 00 08 */	stmw r30, 8(r1)
/* 8044492C 0040DEEC  7C 7E 1B 78 */	mr r30, r3
/* 80444930 0040DEF0  7C 9F 23 78 */	mr r31, r4
/* 80444934 0040DEF4  41 82 00 24 */	beq .L_80444958
/* 80444938 0040DEF8  38 00 00 00 */	li r0, 0
/* 8044493C 0040DEFC  90 0D BD 80 */	stw r0, lbl_80667F00@sda21(r13)
/* 80444940 0040DF00  38 80 00 00 */	li r4, 0
/* 80444944 0040DF04  4B FF 31 85 */	bl __dt__11CWorkThreadFv
/* 80444948 0040DF08  2C 1F 00 00 */	cmpwi r31, 0
/* 8044494C 0040DF0C  40 81 00 0C */	ble .L_80444958
/* 80444950 0040DF10  7F C3 F3 78 */	mr r3, r30
/* 80444954 0040DF14  4B FF 02 D9 */	bl __dl__FPv
.L_80444958:
/* 80444958 0040DF18  7F C3 F3 78 */	mr r3, r30
/* 8044495C 0040DF1C  BB C1 00 08 */	lmw r30, 8(r1)
/* 80444960 0040DF20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80444964 0040DF24  7C 08 03 A6 */	mtlr r0
/* 80444968 0040DF28  38 21 00 10 */	addi r1, r1, 0x10
/* 8044496C 0040DF2C  4E 80 00 20 */	blr 
.endfn __dt__14CWorkSystemMemFv

.fn func_80444970, global
/* 80444970 0040DF30  80 6D BD 80 */	lwz r3, lbl_80667F00@sda21(r13)
/* 80444974 0040DF34  80 63 01 C4 */	lwz r3, 0x1c4(r3)
/* 80444978 0040DF38  4E 80 00 20 */	blr 
.endfn func_80444970

.fn CWorkSystemMem_WorkThreadEvent4, global
/* 8044497C 0040DF3C  4B FF 40 7C */	b WorkThreadEvent4__11CWorkThreadFv
.endfn CWorkSystemMem_WorkThreadEvent4

.fn CWorkSystemMem_WorkThreadEvent5, global
/* 80444980 0040DF40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80444984 0040DF44  7C 08 02 A6 */	mflr r0
/* 80444988 0040DF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044498C 0040DF4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80444990 0040DF50  7C 7F 1B 78 */	mr r31, r3
/* 80444994 0040DF54  80 83 00 60 */	lwz r4, 0x60(r3)
/* 80444998 0040DF58  80 04 00 00 */	lwz r0, 0(r4)
/* 8044499C 0040DF5C  7C 00 20 40 */	cmplw r0, r4
/* 804449A0 0040DF60  40 82 00 60 */	bne .L_80444A00
/* 804449A4 0040DF64  80 E3 00 58 */	lwz r7, 0x58(r3)
/* 804449A8 0040DF68  38 A0 00 00 */	li r5, 0
/* 804449AC 0040DF6C  80 C7 00 60 */	lwz r6, 0x60(r7)
/* 804449B0 0040DF70  80 86 00 00 */	lwz r4, 0(r6)
/* 804449B4 0040DF74  48 00 00 0C */	b .L_804449C0
.L_804449B8:
/* 804449B8 0040DF78  80 84 00 00 */	lwz r4, 0(r4)
/* 804449BC 0040DF7C  38 A5 00 01 */	addi r5, r5, 1
.L_804449C0:
/* 804449C0 0040DF80  7C 04 30 40 */	cmplw r4, r6
/* 804449C4 0040DF84  40 82 FF F4 */	bne .L_804449B8
/* 804449C8 0040DF88  28 05 00 01 */	cmplwi r5, 1
/* 804449CC 0040DF8C  40 82 00 34 */	bne .L_80444A00
/* 804449D0 0040DF90  80 87 00 60 */	lwz r4, 0x60(r7)
/* 804449D4 0040DF94  80 84 00 00 */	lwz r4, 0(r4)
/* 804449D8 0040DF98  80 04 00 08 */	lwz r0, 8(r4)
/* 804449DC 0040DF9C  7C 00 18 40 */	cmplw r0, r3
/* 804449E0 0040DFA0  40 82 00 20 */	bne .L_80444A00
/* 804449E4 0040DFA4  80 63 01 C4 */	lwz r3, 0x1c4(r3)
/* 804449E8 0040DFA8  4B FE F9 C9 */	bl MemManager_804343B0
/* 804449EC 0040DFAC  38 00 FF FF */	li r0, -1
/* 804449F0 0040DFB0  90 1F 01 C4 */	stw r0, 0x1c4(r31)
/* 804449F4 0040DFB4  7F E3 FB 78 */	mr r3, r31
/* 804449F8 0040DFB8  4B FF 40 2D */	bl WorkThreadEvent5__11CWorkThreadFv
/* 804449FC 0040DFBC  48 00 00 08 */	b .L_80444A04
.L_80444A00:
/* 80444A00 0040DFC0  38 60 00 00 */	li r3, 0
.L_80444A04:
/* 80444A04 0040DFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80444A08 0040DFC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80444A0C 0040DFCC  7C 08 03 A6 */	mtlr r0
/* 80444A10 0040DFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80444A14 0040DFD4  4E 80 00 20 */	blr 
.endfn CWorkSystemMem_WorkThreadEvent5


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CWorkSystemMem_typestr, global
	.asciz "CWorkSystemMem"
	.balign 4
.endobj CWorkSystemMem_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__14CWorkSystemMem, global
	.4byte __RTTI__14CWorkSystemMem
	.4byte 0
	.4byte __dt__14CWorkSystemMemFv
	.4byte WorkEvent1__10IWorkEventFv
	.4byte OnFileEvent__10IWorkEventFP10CEventFile
	.4byte WorkEvent3__10IWorkEventFv
	.4byte WorkEvent4__10IWorkEventFv
	.4byte WorkEvent5__10IWorkEventFPv
	.4byte WorkEvent6__10IWorkEventFv
	.4byte WorkEvent7__10IWorkEventFv
	.4byte WorkEvent8__10IWorkEventFv
	.4byte WorkEvent9__10IWorkEventFv
	.4byte WorkEvent10__10IWorkEventFv
	.4byte WorkEvent11__10IWorkEventFv
	.4byte WorkEvent12__10IWorkEventFv
	.4byte WorkEvent13__10IWorkEventFv
	.4byte WorkEvent14__10IWorkEventFv
	.4byte WorkEvent15__10IWorkEventFv
	.4byte WorkEvent16__10IWorkEventFv
	.4byte WorkEvent17__10IWorkEventFv
	.4byte WorkEvent18__10IWorkEventFv
	.4byte WorkEvent19__10IWorkEventFv
	.4byte WorkEvent20__10IWorkEventFv
	.4byte WorkEvent21__10IWorkEventFv
	.4byte WorkEvent22__10IWorkEventFv
	.4byte WorkEvent23__10IWorkEventFv
	.4byte WorkEvent24__10IWorkEventFv
	.4byte WorkEvent25__10IWorkEventFv
	.4byte WorkEvent26__10IWorkEventFv
	.4byte WorkEvent27__10IWorkEventFv
	.4byte WorkEvent28__10IWorkEventFv
	.4byte WorkEvent29__10IWorkEventFv
	.4byte WorkEvent30__10IWorkEventFv
	.4byte WorkEvent31__10IWorkEventFv
	.4byte wkUpdate__11CWorkThreadFv
	.4byte WorkThreadEvent2__11CWorkThreadFv
	.4byte WorkThreadEvent3__11CWorkThreadFv
	.4byte CWorkSystemMem_WorkThreadEvent4
	.4byte CWorkSystemMem_WorkThreadEvent5
	.4byte WorkThreadEvent6__11CWorkThreadFv
.endobj __vt__14CWorkSystemMem

.obj CWorkSystemMem_hierarchy, global
	.4byte __RTTI__10IWorkEvent
	.4byte 0
	.4byte __RTTI__11CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CWorkSystemMem_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__14CWorkSystemMem, global
	.4byte CWorkSystemMem_typestr
	.4byte CWorkSystemMem_hierarchy
.endobj __RTTI__14CWorkSystemMem

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667F00, global
	.skip 0x8
.endobj lbl_80667F00

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C870", local
.hidden "@etb_8001C870"
	.4byte 0x08080000
	.4byte 0x00000038
	.4byte 0x00030010
	.4byte 0x00000000
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte __dt__11CWorkThreadFv
.endobj "@etb_8001C870"

.obj "@etb_8001C88C", local
.hidden "@etb_8001C88C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001C88C"

.obj "@etb_8001C894", local
.hidden "@etb_8001C894"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C894"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034484", local
.hidden "@eti_80034484"
	.4byte __ct__CWorkSystemMem
	.4byte 0x00000060
	.4byte "@etb_8001C870"
.endobj "@eti_80034484"

.obj "@eti_80034490", local
.hidden "@eti_80034490"
	.4byte __dt__14CWorkSystemMemFv
	.4byte 0x00000058
	.4byte "@etb_8001C88C"
.endobj "@eti_80034490"

.obj "@eti_8003449C", local
.hidden "@eti_8003449C"
	.4byte CWorkSystemMem_WorkThreadEvent5
	.4byte 0x00000098
	.4byte "@etb_8001C894"
.endobj "@eti_8003449C"
