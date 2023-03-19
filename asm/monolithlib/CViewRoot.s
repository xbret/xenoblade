.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_804434FC, global
/* 804434FC 0040CABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80443500 0040CAC0  7C 08 02 A6 */	mflr r0
/* 80443504 0040CAC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80443508 0040CAC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8044350C 0040CACC  3F E0 80 52 */	lis r31, lbl_80525F84@ha
/* 80443510 0040CAD0  3B FF 5F 84 */	addi r31, r31, lbl_80525F84@l
/* 80443514 0040CAD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80443518 0040CAD8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8044351C 0040CADC  7C 7D 1B 78 */	mr r29, r3
/* 80443520 0040CAE0  4B FF 40 95 */	bl getMemRegionIndex
/* 80443524 0040CAE4  7C 64 1B 78 */	mr r4, r3
/* 80443528 0040CAE8  38 60 05 20 */	li r3, 0x520
/* 8044352C 0040CAEC  4B FF 15 31 */	bl heap_malloc
/* 80443530 0040CAF0  2C 03 00 00 */	cmpwi r3, 0
/* 80443534 0040CAF4  7C 7E 1B 78 */	mr r30, r3
/* 80443538 0040CAF8  41 82 01 A4 */	beq .L_804436DC
/* 8044353C 0040CAFC  7F E4 FB 78 */	mr r4, r31
/* 80443540 0040CB00  7F A5 EB 78 */	mr r5, r29
/* 80443544 0040CB04  38 C0 00 80 */	li r6, 0x80
/* 80443548 0040CB08  4B FF 40 75 */	bl __ct__CWorkThread
/* 8044354C 0040CB0C  3C 60 80 57 */	lis r3, __vt__CViewRoot@ha
/* 80443550 0040CB10  3C C0 80 57 */	lis r6, __vt___reslist_base_unsigned_long@ha
/* 80443554 0040CB14  38 63 EF 88 */	addi r3, r3, __vt__CViewRoot@l
/* 80443558 0040CB18  90 7E 00 00 */	stw r3, 0(r30)
/* 8044355C 0040CB1C  39 20 00 20 */	li r9, 0x20
/* 80443560 0040CB20  3C 80 80 57 */	lis r4, __vt__reslist_unsigned_long@ha
/* 80443564 0040CB24  91 3E 02 D0 */	stw r9, 0x2d0(r30)
/* 80443568 0040CB28  38 1E 01 C4 */	addi r0, r30, 0x1c4
/* 8044356C 0040CB2C  3B E0 00 00 */	li r31, 0
/* 80443570 0040CB30  39 1E 02 D4 */	addi r8, r30, 0x2d4
/* 80443574 0040CB34  90 1E 02 C4 */	stw r0, 0x2c4(r30)
/* 80443578 0040CB38  38 FE 03 E4 */	addi r7, r30, 0x3e4
/* 8044357C 0040CB3C  38 C6 EB 10 */	addi r6, r6, __vt___reslist_base_unsigned_long@l
/* 80443580 0040CB40  38 BE 04 FC */	addi r5, r30, 0x4fc
/* 80443584 0040CB44  93 FE 02 CC */	stw r31, 0x2cc(r30)
/* 80443588 0040CB48  38 84 EA F8 */	addi r4, r4, __vt__reslist_unsigned_long@l
/* 8044358C 0040CB4C  38 00 00 16 */	li r0, 0x16
/* 80443590 0040CB50  38 60 06 00 */	li r3, 0x600
/* 80443594 0040CB54  93 FE 02 C8 */	stw r31, 0x2c8(r30)
/* 80443598 0040CB58  91 3E 03 E0 */	stw r9, 0x3e0(r30)
/* 8044359C 0040CB5C  91 1E 03 D4 */	stw r8, 0x3d4(r30)
/* 804435A0 0040CB60  93 FE 03 DC */	stw r31, 0x3dc(r30)
/* 804435A4 0040CB64  93 FE 03 D8 */	stw r31, 0x3d8(r30)
/* 804435A8 0040CB68  91 3E 04 F0 */	stw r9, 0x4f0(r30)
/* 804435AC 0040CB6C  90 FE 04 E4 */	stw r7, 0x4e4(r30)
/* 804435B0 0040CB70  93 FE 04 EC */	stw r31, 0x4ec(r30)
/* 804435B4 0040CB74  93 FE 04 E8 */	stw r31, 0x4e8(r30)
/* 804435B8 0040CB78  90 DE 04 F4 */	stw r6, 0x4f4(r30)
/* 804435BC 0040CB7C  93 FE 05 08 */	stw r31, 0x508(r30)
/* 804435C0 0040CB80  93 FE 05 0C */	stw r31, 0x50c(r30)
/* 804435C4 0040CB84  9B FE 05 10 */	stb r31, 0x510(r30)
/* 804435C8 0040CB88  90 BE 04 F8 */	stw r5, 0x4f8(r30)
/* 804435CC 0040CB8C  90 A5 00 00 */	stw r5, 0(r5)
/* 804435D0 0040CB90  80 BE 04 F8 */	lwz r5, 0x4f8(r30)
/* 804435D4 0040CB94  90 A5 00 04 */	stw r5, 4(r5)
/* 804435D8 0040CB98  90 9E 04 F4 */	stw r4, 0x4f4(r30)
/* 804435DC 0040CB9C  93 FE 05 14 */	stw r31, 0x514(r30)
/* 804435E0 0040CBA0  93 FE 05 18 */	stw r31, 0x518(r30)
/* 804435E4 0040CBA4  93 FE 05 1C */	stw r31, 0x51c(r30)
/* 804435E8 0040CBA8  93 CD BD 30 */	stw r30, lbl_80667EB0@sda21(r13)
/* 804435EC 0040CBAC  90 1E 00 50 */	stw r0, 0x50(r30)
/* 804435F0 0040CBB0  80 9E 00 54 */	lwz r4, 0x54(r30)
/* 804435F4 0040CBB4  4B FF 14 8D */	bl heap_malloc_1
/* 804435F8 0040CBB8  38 00 00 08 */	li r0, 8
/* 804435FC 0040CBBC  90 7E 05 08 */	stw r3, 0x508(r30)
/* 80443600 0040CBC0  38 80 00 00 */	li r4, 0
/* 80443604 0040CBC4  7C 09 03 A6 */	mtctr r0
.L_80443608:
/* 80443608 0040CBC8  80 7E 05 08 */	lwz r3, 0x508(r30)
/* 8044360C 0040CBCC  7F E3 21 2E */	stwx r31, r3, r4
/* 80443610 0040CBD0  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 80443614 0040CBD4  7C 60 22 14 */	add r3, r0, r4
/* 80443618 0040CBD8  93 E3 00 0C */	stw r31, 0xc(r3)
/* 8044361C 0040CBDC  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 80443620 0040CBE0  7C 60 22 14 */	add r3, r0, r4
/* 80443624 0040CBE4  93 E3 00 18 */	stw r31, 0x18(r3)
/* 80443628 0040CBE8  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 8044362C 0040CBEC  7C 60 22 14 */	add r3, r0, r4
/* 80443630 0040CBF0  93 E3 00 24 */	stw r31, 0x24(r3)
/* 80443634 0040CBF4  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 80443638 0040CBF8  7C 60 22 14 */	add r3, r0, r4
/* 8044363C 0040CBFC  93 E3 00 30 */	stw r31, 0x30(r3)
/* 80443640 0040CC00  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 80443644 0040CC04  7C 60 22 14 */	add r3, r0, r4
/* 80443648 0040CC08  93 E3 00 3C */	stw r31, 0x3c(r3)
/* 8044364C 0040CC0C  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 80443650 0040CC10  7C 60 22 14 */	add r3, r0, r4
/* 80443654 0040CC14  93 E3 00 48 */	stw r31, 0x48(r3)
/* 80443658 0040CC18  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 8044365C 0040CC1C  7C 60 22 14 */	add r3, r0, r4
/* 80443660 0040CC20  38 84 00 60 */	addi r4, r4, 0x60
/* 80443664 0040CC24  93 E3 00 54 */	stw r31, 0x54(r3)
/* 80443668 0040CC28  80 7E 05 08 */	lwz r3, 0x508(r30)
/* 8044366C 0040CC2C  7F E3 21 2E */	stwx r31, r3, r4
/* 80443670 0040CC30  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 80443674 0040CC34  7C 60 22 14 */	add r3, r0, r4
/* 80443678 0040CC38  93 E3 00 0C */	stw r31, 0xc(r3)
/* 8044367C 0040CC3C  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 80443680 0040CC40  7C 60 22 14 */	add r3, r0, r4
/* 80443684 0040CC44  93 E3 00 18 */	stw r31, 0x18(r3)
/* 80443688 0040CC48  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 8044368C 0040CC4C  7C 60 22 14 */	add r3, r0, r4
/* 80443690 0040CC50  93 E3 00 24 */	stw r31, 0x24(r3)
/* 80443694 0040CC54  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 80443698 0040CC58  7C 60 22 14 */	add r3, r0, r4
/* 8044369C 0040CC5C  93 E3 00 30 */	stw r31, 0x30(r3)
/* 804436A0 0040CC60  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 804436A4 0040CC64  7C 60 22 14 */	add r3, r0, r4
/* 804436A8 0040CC68  93 E3 00 3C */	stw r31, 0x3c(r3)
/* 804436AC 0040CC6C  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 804436B0 0040CC70  7C 60 22 14 */	add r3, r0, r4
/* 804436B4 0040CC74  93 E3 00 48 */	stw r31, 0x48(r3)
/* 804436B8 0040CC78  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 804436BC 0040CC7C  7C 60 22 14 */	add r3, r0, r4
/* 804436C0 0040CC80  38 84 00 60 */	addi r4, r4, 0x60
/* 804436C4 0040CC84  93 E3 00 54 */	stw r31, 0x54(r3)
/* 804436C8 0040CC88  42 00 FF 40 */	bdnz .L_80443608
/* 804436CC 0040CC8C  38 00 00 80 */	li r0, 0x80
/* 804436D0 0040CC90  90 1E 05 0C */	stw r0, 0x50c(r30)
/* 804436D4 0040CC94  38 00 00 00 */	li r0, 0
/* 804436D8 0040CC98  98 0D BD 34 */	stb r0, lbl_80667EB4@sda21(r13)
.L_804436DC:
/* 804436DC 0040CC9C  7F C3 F3 78 */	mr r3, r30
/* 804436E0 0040CCA0  7F A4 EB 78 */	mr r4, r29
/* 804436E4 0040CCA4  38 A0 00 00 */	li r5, 0
/* 804436E8 0040CCA8  4B FF 54 F1 */	bl func_80438BD8
/* 804436EC 0040CCAC  7F C3 F3 78 */	mr r3, r30
/* 804436F0 0040CCB0  38 80 00 00 */	li r4, 0
/* 804436F4 0040CCB4  4B FF 4E D9 */	bl func_804385CC
/* 804436F8 0040CCB8  7F C3 F3 78 */	mr r3, r30
/* 804436FC 0040CCBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80443700 0040CCC0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80443704 0040CCC4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80443708 0040CCC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8044370C 0040CCCC  7C 08 03 A6 */	mtlr r0
/* 80443710 0040CCD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80443714 0040CCD4  4E 80 00 20 */	blr 
.endfn func_804434FC


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CViewRoot_typestr, global
	.asciz "CViewRoot"
	.balign 4
.endobj CViewRoot_typestr


.obj lbl_80525F84, global
	.asciz "CViewRoot"
	.balign 4
.endobj lbl_80525F84


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CViewRoot, global
	.4byte __RTTI__CViewRoot
	.4byte 0
	.4byte __dt__CViewRoot
	.4byte IWorkEvent_WorkEvent1
	.4byte IWorkEvent_OnFileEvent
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
	.4byte func_80438A50
	.4byte CWorkThread_Event1
	.4byte CWorkThread_Event2
	.4byte func_80443214
	.4byte func_80443388
	.4byte CWorkThread_Event3
.endobj __vt__CViewRoot

.obj CViewRoot_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte __RTTI__CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CViewRoot_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CViewRoot, global
	.4byte CViewRoot_typestr
	.4byte CViewRoot_hierarchy
.endobj __RTTI__CViewRoot

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C6D8", local
.hidden "@etb_8001C6D8"
	.4byte 0x18080000
	.4byte 0x000000FC
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x000004F4
	.4byte __dt__reslist_unsigned_long
	.4byte 0x0780001E
	.4byte 0x000003E4
	.4byte __dt__80442084
	.4byte 0x0780001E
	.4byte 0x000002D4
	.4byte __dt__80442084
	.4byte 0x0780001E
	.4byte 0x000001C4
	.4byte __dt__80442084
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__CWorkThread
.endobj "@etb_8001C6D8"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800342F8", local
.hidden "@eti_800342F8"
	.4byte func_804434FC
	.4byte 0x0000021C
	.4byte "@etb_8001C6D8"
.endobj "@eti_800342F8"
