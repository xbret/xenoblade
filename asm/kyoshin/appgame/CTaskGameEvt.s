.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CTaskGameEvt, global
/* 80295564 0025EB24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80295568 0025EB28  7C 08 02 A6 */	mflr r0
/* 8029556C 0025EB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295570 0025EB30  BF C1 00 08 */	stmw r30, 8(r1)
/* 80295574 0025EB34  7C 7E 1B 78 */	mr r30, r3
/* 80295578 0025EB38  7C 9F 23 78 */	mr r31, r4
/* 8029557C 0025EB3C  48 1A F4 9D */	bl __ct__8CProcessFv
/* 80295580 0025EB40  3C 60 80 54 */	lis r3, "__vt__22CTTask<12CTaskGameEvt>"@ha
/* 80295584 0025EB44  3C C0 80 54 */	lis r6, __vt__12CTaskGameEvt@ha
/* 80295588 0025EB48  38 63 C4 A0 */	addi r3, r3, "__vt__22CTTask<12CTaskGameEvt>"@l
/* 8029558C 0025EB4C  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80295590 0025EB50  38 C6 C3 B8 */	addi r6, r6, __vt__12CTaskGameEvt@l
/* 80295594 0025EB54  3D 20 80 51 */	lis r9, __ptmf_null@ha
/* 80295598 0025EB58  84 E9 CE 10 */	lwzu r7, __ptmf_null@l(r9)
/* 8029559C 0025EB5C  38 A6 00 24 */	addi r5, r6, 0x24
/* 802955A0 0025EB60  38 86 00 AC */	addi r4, r6, 0xac
/* 802955A4 0025EB64  7F C3 F3 78 */	mr r3, r30
/* 802955A8 0025EB68  80 09 00 04 */	lwz r0, 4(r9)
/* 802955AC 0025EB6C  90 1E 00 40 */	stw r0, 0x40(r30)
/* 802955B0 0025EB70  38 00 00 00 */	li r0, 0
/* 802955B4 0025EB74  90 FE 00 3C */	stw r7, 0x3c(r30)
/* 802955B8 0025EB78  80 E9 00 08 */	lwz r7, 8(r9)
/* 802955BC 0025EB7C  90 FE 00 44 */	stw r7, 0x44(r30)
/* 802955C0 0025EB80  81 09 00 00 */	lwz r8, 0(r9)
/* 802955C4 0025EB84  80 E9 00 04 */	lwz r7, 4(r9)
/* 802955C8 0025EB88  90 FE 00 4C */	stw r7, 0x4c(r30)
/* 802955CC 0025EB8C  91 1E 00 48 */	stw r8, 0x48(r30)
/* 802955D0 0025EB90  80 E9 00 08 */	lwz r7, 8(r9)
/* 802955D4 0025EB94  90 FE 00 50 */	stw r7, 0x50(r30)
/* 802955D8 0025EB98  90 DE 00 10 */	stw r6, 0x10(r30)
/* 802955DC 0025EB9C  90 BE 00 54 */	stw r5, 0x54(r30)
/* 802955E0 0025EBA0  90 9E 00 58 */	stw r4, 0x58(r30)
/* 802955E4 0025EBA4  93 FE 00 5C */	stw r31, 0x5c(r30)
/* 802955E8 0025EBA8  90 1E 00 60 */	stw r0, 0x60(r30)
/* 802955EC 0025EBAC  BB C1 00 08 */	lmw r30, 8(r1)
/* 802955F0 0025EBB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802955F4 0025EBB4  7C 08 03 A6 */	mtlr r0
/* 802955F8 0025EBB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802955FC 0025EBBC  4E 80 00 20 */	blr 
.endfn __ct__CTaskGameEvt

.fn __dt__CTTask_CTaskGameEvt, global
/* 80295600 0025EBC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80295604 0025EBC4  7C 08 02 A6 */	mflr r0
/* 80295608 0025EBC8  2C 03 00 00 */	cmpwi r3, 0
/* 8029560C 0025EBCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295610 0025EBD0  BF C1 00 08 */	stmw r30, 8(r1)
/* 80295614 0025EBD4  7C 7E 1B 78 */	mr r30, r3
/* 80295618 0025EBD8  7C 9F 23 78 */	mr r31, r4
/* 8029561C 0025EBDC  41 82 00 1C */	beq .L_80295638
/* 80295620 0025EBE0  38 80 00 00 */	li r4, 0
/* 80295624 0025EBE4  48 1A F5 15 */	bl __dt__CProcess
/* 80295628 0025EBE8  2C 1F 00 00 */	cmpwi r31, 0
/* 8029562C 0025EBEC  40 81 00 0C */	ble .L_80295638
/* 80295630 0025EBF0  7F C3 F3 78 */	mr r3, r30
/* 80295634 0025EBF4  48 19 F5 F9 */	bl __dl__FPv
.L_80295638:
/* 80295638 0025EBF8  7F C3 F3 78 */	mr r3, r30
/* 8029563C 0025EBFC  BB C1 00 08 */	lmw r30, 8(r1)
/* 80295640 0025EC00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295644 0025EC04  7C 08 03 A6 */	mtlr r0
/* 80295648 0025EC08  38 21 00 10 */	addi r1, r1, 0x10
/* 8029564C 0025EC0C  4E 80 00 20 */	blr
.endfn __dt__CTTask_CTaskGameEvt

.fn __dt__CTaskGameEvt, global
/* 80295650 0025EC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80295654 0025EC14  7C 08 02 A6 */	mflr r0
/* 80295658 0025EC18  2C 03 00 00 */	cmpwi r3, 0
/* 8029565C 0025EC1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80295660 0025EC20  BF C1 00 08 */	stmw r30, 8(r1)
/* 80295664 0025EC24  7C 7E 1B 78 */	mr r30, r3
/* 80295668 0025EC28  7C 9F 23 78 */	mr r31, r4
/* 8029566C 0025EC2C  41 82 00 20 */	beq .L_8029568C
/* 80295670 0025EC30  41 82 00 0C */	beq .L_8029567C
/* 80295674 0025EC34  38 80 00 00 */	li r4, 0
/* 80295678 0025EC38  48 1A F4 C1 */	bl __dt__CProcess
.L_8029567C:
/* 8029567C 0025EC3C  2C 1F 00 00 */	cmpwi r31, 0
/* 80295680 0025EC40  40 81 00 0C */	ble .L_8029568C
/* 80295684 0025EC44  7F C3 F3 78 */	mr r3, r30
/* 80295688 0025EC48  48 19 F5 A5 */	bl __dl__FPv
.L_8029568C:
/* 8029568C 0025EC4C  7F C3 F3 78 */	mr r3, r30
/* 80295690 0025EC50  BB C1 00 08 */	lmw r30, 8(r1)
/* 80295694 0025EC54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295698 0025EC58  7C 08 03 A6 */	mtlr r0
/* 8029569C 0025EC5C  38 21 00 10 */	addi r1, r1, 0x10
/* 802956A0 0025EC60  4E 80 00 20 */	blr 
.endfn __dt__CTaskGameEvt

.fn func_802956A4, global
/* 802956A4 0025EC64  4B EC F9 94 */	b func_80165038
.endfn func_802956A4

.fn func_802956A8, global
/* 802956A8 0025EC68  4B EC F6 54 */	b func_80164CFC
.endfn func_802956A8

.fn func_802956AC, global
/* 802956AC 0025EC6C  2C 03 00 00 */	cmpwi r3, 0
/* 802956B0 0025EC70  7C 64 1B 78 */	mr r4, r3
/* 802956B4 0025EC74  41 82 00 08 */	beq .L_802956BC
/* 802956B8 0025EC78  38 83 00 58 */	addi r4, r3, 0x58
.L_802956BC:
/* 802956BC 0025EC7C  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 802956C0 0025EC80  38 A0 00 0B */	li r5, 0xb
/* 802956C4 0025EC84  38 C0 00 00 */	li r6, 0
/* 802956C8 0025EC88  48 20 07 EC */	b func_80495EB4
.endfn func_802956AC

.fn func_802956CC, global
/* 802956CC 0025EC8C  2C 03 00 00 */	cmpwi r3, 0
/* 802956D0 0025EC90  7C 64 1B 78 */	mr r4, r3
/* 802956D4 0025EC94  41 82 00 08 */	beq .L_802956DC
/* 802956D8 0025EC98  38 83 00 58 */	addi r4, r3, 0x58
.L_802956DC:
/* 802956DC 0025EC9C  80 63 00 5C */	lwz r3, 0x5c(r3)
/* 802956E0 0025ECA0  48 20 08 70 */	b func_80495F50
.endfn func_802956CC

.fn func_802956E4, global
/* 802956E4 0025ECA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802956E8 0025ECA8  7C 08 02 A6 */	mflr r0
/* 802956EC 0025ECAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802956F0 0025ECB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802956F4 0025ECB4  7C 7F 1B 78 */	mr r31, r3
/* 802956F8 0025ECB8  80 83 00 60 */	lwz r4, 0x60(r3)
/* 802956FC 0025ECBC  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80295700 0025ECC0  41 82 00 4C */	beq .L_8029574C
/* 80295704 0025ECC4  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80295708 0025ECC8  40 82 00 44 */	bne .L_8029574C
/* 8029570C 0025ECCC  4B DA EB C9 */	bl func_800442D4
/* 80295710 0025ECD0  2C 03 00 00 */	cmpwi r3, 0
/* 80295714 0025ECD4  41 82 00 38 */	beq .L_8029574C
/* 80295718 0025ECD8  4B EC F5 31 */	bl func_80164C48
/* 8029571C 0025ECDC  2C 03 00 00 */	cmpwi r3, 0
/* 80295720 0025ECE0  41 82 00 2C */	beq .L_8029574C
/* 80295724 0025ECE4  4B EC F2 31 */	bl func_80164954
/* 80295728 0025ECE8  2C 03 00 00 */	cmpwi r3, 0
/* 8029572C 0025ECEC  41 82 00 14 */	beq .L_80295740
/* 80295730 0025ECF0  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 80295734 0025ECF4  60 00 00 01 */	ori r0, r0, 1
/* 80295738 0025ECF8  90 1F 00 60 */	stw r0, 0x60(r31)
/* 8029573C 0025ECFC  48 00 00 10 */	b .L_8029574C
.L_80295740:
/* 80295740 0025ED00  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 80295744 0025ED04  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80295748 0025ED08  90 1F 00 60 */	stw r0, 0x60(r31)
.L_8029574C:
/* 8029574C 0025ED0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295750 0025ED10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80295754 0025ED14  7C 08 03 A6 */	mtlr r0
/* 80295758 0025ED18  38 21 00 10 */	addi r1, r1, 0x10
/* 8029575C 0025ED1C  4E 80 00 20 */	blr
.endfn func_802956E4

.fn func_80295760, global
/* 80295760 0025ED20  4E 80 00 20 */	blr
.endfn func_80295760

.fn func_80295764, global
/* 80295764 0025ED24  38 60 00 00 */	li r3, 0
/* 80295768 0025ED28  4E 80 00 20 */	blr 
.endfn func_80295764

.fn func_8029576C, global
/* 8029576C 0025ED2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80295770 0025ED30  7C 08 02 A6 */	mflr r0
/* 80295774 0025ED34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80295778 0025ED38  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 8029577C 0025ED3C  7C 7D 1B 78 */	mr r29, r3
/* 80295780 0025ED40  7C 9E 23 78 */	mr r30, r4
/* 80295784 0025ED44  48 1A 1E 31 */	bl getHeapIndex
/* 80295788 0025ED48  7C 64 1B 78 */	mr r4, r3
/* 8029578C 0025ED4C  38 60 00 64 */	li r3, 0x64
/* 80295790 0025ED50  48 19 F2 CD */	bl heap_malloc
/* 80295794 0025ED54  2C 03 00 00 */	cmpwi r3, 0
/* 80295798 0025ED58  7C 7F 1B 78 */	mr r31, r3
/* 8029579C 0025ED5C  41 82 00 10 */	beq .L_802957AC
/* 802957A0 0025ED60  7F C4 F3 78 */	mr r4, r30
/* 802957A4 0025ED64  4B FF FD C1 */	bl __ct__CTaskGameEvt
/* 802957A8 0025ED68  7C 7F 1B 78 */	mr r31, r3
.L_802957AC:
/* 802957AC 0025ED6C  7F E3 FB 78 */	mr r3, r31
/* 802957B0 0025ED70  7F A4 EB 78 */	mr r4, r29
/* 802957B4 0025ED74  38 A0 00 00 */	li r5, 0
/* 802957B8 0025ED78  48 1A F4 BD */	bl func_80444C74
/* 802957BC 0025ED7C  7F E3 FB 78 */	mr r3, r31
/* 802957C0 0025ED80  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 802957C4 0025ED84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802957C8 0025ED88  7C 08 03 A6 */	mtlr r0
/* 802957CC 0025ED8C  38 21 00 20 */	addi r1, r1, 0x20
/* 802957D0 0025ED90  4E 80 00 20 */	blr 
.endfn func_8029576C

.fn func_802957D4, global
/* 802957D4 0025ED94  4E 80 00 20 */	blr 
.endfn func_802957D4

.fn func_802957D8, global
/* 802957D8 0025ED98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802957DC 0025ED9C  7C 08 02 A6 */	mflr r0
/* 802957E0 0025EDA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802957E4 0025EDA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802957E8 0025EDA8  7C 7F 1B 78 */	mr r31, r3
/* 802957EC 0025EDAC  38 63 00 3C */	addi r3, r3, 0x3c
/* 802957F0 0025EDB0  48 02 45 01 */	bl __ptmf_test
/* 802957F4 0025EDB4  2C 03 00 00 */	cmpwi r3, 0
/* 802957F8 0025EDB8  41 82 00 14 */	beq .L_8029580C
/* 802957FC 0025EDBC  7F E3 FB 78 */	mr r3, r31
/* 80295800 0025EDC0  39 9F 00 3C */	addi r12, r31, 0x3c
/* 80295804 0025EDC4  48 02 45 59 */	bl __ptmf_scall
/* 80295808 0025EDC8  60 00 00 00 */	nop 
.L_8029580C:
/* 8029580C 0025EDCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295810 0025EDD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80295814 0025EDD4  7C 08 03 A6 */	mtlr r0
/* 80295818 0025EDD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029581C 0025EDDC  4E 80 00 20 */	blr 
.endfn func_802957D8

.fn func_80295820, global
/* 80295820 0025EDE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80295824 0025EDE4  7C 08 02 A6 */	mflr r0
/* 80295828 0025EDE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029582C 0025EDEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80295830 0025EDF0  7C 7F 1B 78 */	mr r31, r3
/* 80295834 0025EDF4  38 63 00 48 */	addi r3, r3, 0x48
/* 80295838 0025EDF8  48 02 44 B9 */	bl __ptmf_test
/* 8029583C 0025EDFC  2C 03 00 00 */	cmpwi r3, 0
/* 80295840 0025EE00  41 82 00 14 */	beq .L_80295854
/* 80295844 0025EE04  7F E3 FB 78 */	mr r3, r31
/* 80295848 0025EE08  39 9F 00 48 */	addi r12, r31, 0x48
/* 8029584C 0025EE0C  48 02 45 11 */	bl __ptmf_scall
/* 80295850 0025EE10  60 00 00 00 */	nop 
.L_80295854:
/* 80295854 0025EE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80295858 0025EE18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029585C 0025EE1C  7C 08 03 A6 */	mtlr r0
/* 80295860 0025EE20  38 21 00 10 */	addi r1, r1, 0x10
/* 80295864 0025EE24  4E 80 00 20 */	blr 
.endfn func_80295820

.fn CTaskGameEvt_OnFileEvent, global
/* 80295868 0025EE28  38 63 FF AC */	addi r3, r3, -84
/* 8029586C 0025EE2C  4B FF FE F8 */	b func_80295764
.endfn CTaskGameEvt_OnFileEvent

.fn func_80295870, global
/* 80295870 0025EE30  38 63 FF AC */	addi r3, r3, -84
/* 80295874 0025EE34  4B FF FD DC */	b __dt__CTaskGameEvt
.endfn func_80295870

.fn func_80295878, global
/* 80295878 0025EE38  38 63 FF A8 */	addi r3, r3, -88
/* 8029587C 0025EE3C  4B FF FE E4 */	b func_80295760
.endfn func_80295878

.fn func_80295880, global
/* 80295880 0025EE40  38 63 FF A8 */	addi r3, r3, -88
/* 80295884 0025EE44  4B FF FD CC */	b __dt__CTaskGameEvt
.endfn func_80295880

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CTaskGameEvt_typestr, global
	.asciz "CTaskGameEvt"
	.balign 4
.endobj CTaskGameEvt_typestr

.obj CTTask_CTaskGameEvt_typestr, global
	.asciz "CTTask<CTaskGameEvt>"
	.balign 4
.endobj CTTask_CTaskGameEvt_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__12CTaskGameEvt, global
	.4byte __RTTI__12CTaskGameEvt
	.4byte 0
	.4byte __dt__CTaskGameEvt
	.4byte CChildListNode_Reset
	.4byte func_802956AC
	.4byte func_802956CC
	.4byte func_802956E4
	.4byte func_802957D4
	.4byte CProcess_func_80043F20
	.4byte __RTTI__12CTaskGameEvt
	.4byte 0xFFFFFFAC
	.4byte func_80295870
	.4byte IWorkEvent_WorkEvent1
	.4byte CTaskGameEvt_OnFileEvent
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
	.4byte __RTTI__12CTaskGameEvt
	.4byte 0xFFFFFFA8
	.4byte func_80295880
	.4byte func_80295878
	.4byte func_80295760
	.4byte func_80295764
.endobj __vt__12CTaskGameEvt

.obj CTaskGameEvt_hierarchy, global
	.4byte __RTTI__15CDoubleListNode
	.4byte 0
	.4byte __RTTI__14CChildListNode
	.4byte 0
	.4byte __RTTI__8CProcess
	.4byte 0
	.4byte "__RTTI__22CTTask<12CTaskGameEvt>"
	.4byte 0
	.4byte 0
.endobj CTaskGameEvt_hierarchy


.obj "__vt__22CTTask<12CTaskGameEvt>", global
	.4byte "__RTTI__22CTTask<12CTaskGameEvt>"
	.4byte 0
	.4byte __dt__CTTask_CTaskGameEvt
	.4byte CChildListNode_Reset
	.4byte 0
	.4byte 0
	.4byte func_802957D8
	.4byte func_80295820
	.4byte CProcess_func_80043F20
.endobj "__vt__22CTTask<12CTaskGameEvt>"

.obj CTTask_CTaskGameEvt_hierarchy, global
	.4byte __RTTI__15CDoubleListNode
	.4byte 0
	.4byte __RTTI__14CChildListNode
	.4byte 0
	.4byte __RTTI__8CProcess
	.4byte 0
	.4byte 0
.endobj CTTask_CTaskGameEvt_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__12CTaskGameEvt, global
	.4byte CTaskGameEvt_typestr
	.4byte CTaskGameEvt_hierarchy
.endobj __RTTI__12CTaskGameEvt

.obj "__RTTI__22CTTask<12CTaskGameEvt>", global
	.4byte CTTask_CTaskGameEvt_typestr
	.4byte CTTask_CTaskGameEvt_hierarchy
.endobj "__RTTI__22CTTask<12CTaskGameEvt>"

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80019B50", local
.hidden "@etb_80019B50"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80019B50"

.obj "@etb_80019B58", local
.hidden "@etb_80019B58"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80019B58"

.obj "@etb_80019B60", local
.hidden "@etb_80019B60"
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
.endobj "@etb_80019B60"

.obj "@etb_80019B88", local
.hidden "@etb_80019B88"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80019B88"

.obj "@etb_80019B90", local
.hidden "@etb_80019B90"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80019B90"

.obj "@etb_80019B98", local
.hidden "@etb_80019B98"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80019B98"

.obj "@etb_80019BA0", local
.hidden "@etb_80019BA0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80019BA0"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80031DB4", local
.hidden "@eti_80031DB4"
	.4byte __ct__CTaskGameEvt
	.4byte 0x0000009C
	.4byte "@etb_80019B50"
.endobj "@eti_80031DB4"

.obj "@eti_80031DC0", local
.hidden "@eti_80031DC0"
	.4byte __dt__CTTask_CTaskGameEvt
	.4byte 0x00000050
	.4byte "@etb_80019B58"
.endobj "@eti_80031DC0"

.obj "@eti_80031DCC", local
.hidden "@eti_80031DCC"
	.4byte __dt__CTaskGameEvt
	.4byte 0x00000054
	.4byte "@etb_80019B60"
.endobj "@eti_80031DCC"

.obj "@eti_80031DD8", local
.hidden "@eti_80031DD8"
	.4byte func_802956E4
	.4byte 0x0000007C
	.4byte "@etb_80019B88"
.endobj "@eti_80031DD8"

.obj "@eti_80031DE4", local
.hidden "@eti_80031DE4"
	.4byte func_8029576C
	.4byte 0x00000068
	.4byte "@etb_80019B90"
.endobj "@eti_80031DE4"

.obj "@eti_80031DF0", local
.hidden "@eti_80031DF0"
	.4byte func_802957D8
	.4byte 0x00000048
	.4byte "@etb_80019B98"
.endobj "@eti_80031DF0"

.obj "@eti_80031DFC", local
.hidden "@eti_80031DFC"
	.4byte func_80295820
	.4byte 0x00000048
	.4byte "@etb_80019BA0"
.endobj "@eti_80031DFC"
