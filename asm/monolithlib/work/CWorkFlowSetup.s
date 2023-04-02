.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CWorkFlowSetup, global
/* 804439CC 0040CF8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804439D0 0040CF90  7C 08 02 A6 */	mflr r0
/* 804439D4 0040CF94  38 C0 00 00 */	li r6, 0
/* 804439D8 0040CF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 804439DC 0040CF9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804439E0 0040CFA0  7C 7F 1B 78 */	mr r31, r3
/* 804439E4 0040CFA4  4B FF 3B D9 */	bl __ct__CWorkThread
/* 804439E8 0040CFA8  3C 60 80 57 */	lis r3, __vt__CWorkFlowSetup@ha
/* 804439EC 0040CFAC  38 00 00 00 */	li r0, 0
/* 804439F0 0040CFB0  38 63 F0 F8 */	addi r3, r3, __vt__CWorkFlowSetup@l
/* 804439F4 0040CFB4  90 7F 00 00 */	stw r3, 0(r31)
/* 804439F8 0040CFB8  7F E3 FB 78 */	mr r3, r31
/* 804439FC 0040CFBC  90 1F 01 C4 */	stw r0, 0x1c4(r31)
/* 80443A00 0040CFC0  93 ED BD 40 */	stw r31, lbl_80667EC0@sda21(r13)
/* 80443A04 0040CFC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80443A08 0040CFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80443A0C 0040CFCC  7C 08 03 A6 */	mtlr r0
/* 80443A10 0040CFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80443A14 0040CFD4  4E 80 00 20 */	blr 
.endfn __ct__CWorkFlowSetup

.fn __dt__CWorkFlowSetup, global
/* 80443A18 0040CFD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80443A1C 0040CFDC  7C 08 02 A6 */	mflr r0
/* 80443A20 0040CFE0  2C 03 00 00 */	cmpwi r3, 0
/* 80443A24 0040CFE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80443A28 0040CFE8  BF C1 00 08 */	stmw r30, 8(r1)
/* 80443A2C 0040CFEC  7C 7E 1B 78 */	mr r30, r3
/* 80443A30 0040CFF0  7C 9F 23 78 */	mr r31, r4
/* 80443A34 0040CFF4  41 82 00 24 */	beq .L_80443A58
/* 80443A38 0040CFF8  38 00 00 00 */	li r0, 0
/* 80443A3C 0040CFFC  90 0D BD 40 */	stw r0, lbl_80667EC0@sda21(r13)
/* 80443A40 0040D000  38 80 00 00 */	li r4, 0
/* 80443A44 0040D004  4B FF 40 85 */	bl __dt__CWorkThread
/* 80443A48 0040D008  2C 1F 00 00 */	cmpwi r31, 0
/* 80443A4C 0040D00C  40 81 00 0C */	ble .L_80443A58
/* 80443A50 0040D010  7F C3 F3 78 */	mr r3, r30
/* 80443A54 0040D014  4B FF 11 D9 */	bl __dl__FPv
.L_80443A58:
/* 80443A58 0040D018  7F C3 F3 78 */	mr r3, r30
/* 80443A5C 0040D01C  BB C1 00 08 */	lmw r30, 8(r1)
/* 80443A60 0040D020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80443A64 0040D024  7C 08 03 A6 */	mtlr r0
/* 80443A68 0040D028  38 21 00 10 */	addi r1, r1, 0x10
/* 80443A6C 0040D02C  4E 80 00 20 */	blr 
.endfn __dt__CWorkFlowSetup

.fn func_80443A70, global
/* 80443A70 0040D030  80 6D BD 40 */	lwz r3, lbl_80667EC0@sda21(r13)
/* 80443A74 0040D034  4E 80 00 20 */	blr 
.endfn func_80443A70

.fn CWorkFlowSetup_WorkThreadEvent4, global
/* 80443A78 0040D038  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80443A7C 0040D03C  7C 08 02 A6 */	mflr r0
/* 80443A80 0040D040  90 01 00 14 */	stw r0, 0x14(r1)
/* 80443A84 0040D044  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80443A88 0040D048  7C 7F 1B 78 */	mr r31, r3
/* 80443A8C 0040D04C  48 01 59 6D */	bl func_804593F8
/* 80443A90 0040D050  2C 03 00 00 */	cmpwi r3, 0
/* 80443A94 0040D054  41 82 00 1C */	beq .L_80443AB0
/* 80443A98 0040D058  7F E3 FB 78 */	mr r3, r31
/* 80443A9C 0040D05C  38 80 00 00 */	li r4, 0
/* 80443AA0 0040D060  4B FF 44 51 */	bl func_80437EF0
/* 80443AA4 0040D064  7F E3 FB 78 */	mr r3, r31
/* 80443AA8 0040D068  4B FF 4F 51 */	bl CWorkThread_WorkThreadEvent4
/* 80443AAC 0040D06C  48 00 00 08 */	b .L_80443AB4
.L_80443AB0:
/* 80443AB0 0040D070  38 60 00 00 */	li r3, 0
.L_80443AB4:
/* 80443AB4 0040D074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80443AB8 0040D078  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80443ABC 0040D07C  7C 08 03 A6 */	mtlr r0
/* 80443AC0 0040D080  38 21 00 10 */	addi r1, r1, 0x10
/* 80443AC4 0040D084  4E 80 00 20 */	blr 
.endfn CWorkFlowSetup_WorkThreadEvent4

.fn CWorkFlowSetup_WorkThreadEvent5, global
/* 80443AC8 0040D088  80 83 00 60 */	lwz r4, 0x60(r3)
/* 80443ACC 0040D08C  80 04 00 00 */	lwz r0, 0(r4)
/* 80443AD0 0040D090  7C 00 20 40 */	cmplw r0, r4
/* 80443AD4 0040D094  41 82 00 0C */	beq .L_80443AE0
/* 80443AD8 0040D098  38 60 00 00 */	li r3, 0
/* 80443ADC 0040D09C  4E 80 00 20 */	blr
.L_80443AE0:
/* 80443AE0 0040D0A0  4B FF 4F 44 */	b CWorkThread_WorkThreadEvent5
/* 80443AE4 0040D0A4  4E 80 00 20 */	blr 
.endfn CWorkFlowSetup_WorkThreadEvent5

.fn func_80443AE8, global
/* 80443AE8 0040D0A8  80 6D BD 48 */	lwz r3, lbl_80667EC8@sda21(r13)
/* 80443AEC 0040D0AC  4E 80 00 20 */	blr 
.endfn func_80443AE8

.fn func_80443AF0, global
/* 80443AF0 0040D0B0  80 6D BD 50 */	lwz r3, lbl_80667ED0@sda21(r13)
/* 80443AF4 0040D0B4  4E 80 00 20 */	blr 
.endfn func_80443AF0

.fn func_80443AF8, global
/* 80443AF8 0040D0B8  80 6D BD 58 */	lwz r3, lbl_80667ED8@sda21(r13)
/* 80443AFC 0040D0BC  4E 80 00 20 */	blr 
.endfn func_80443AF8

.fn func_80443B00, global
/* 80443B00 0040D0C0  80 6D BD 60 */	lwz r3, lbl_80667EE0@sda21(r13)
/* 80443B04 0040D0C4  4E 80 00 20 */	blr 
.endfn func_80443B00


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CWorkFlowSetup_typestr, global
	.asciz "CWorkFlowSetup"
	.balign 4
.endobj CWorkFlowSetup_typestr


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CWorkFlowSetup, global
	.4byte __RTTI__CWorkFlowSetup
	.4byte 0
	.4byte __dt__CWorkFlowSetup
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
	.4byte CWorkThread_wkUpdate
	.4byte CWorkThread_WorkThreadEvent2
	.4byte CWorkThread_WorkThreadEvent3
	.4byte CWorkFlowSetup_WorkThreadEvent4
	.4byte CWorkFlowSetup_WorkThreadEvent5
	.4byte CWorkThread_WorkThreadEvent6
.endobj __vt__CWorkFlowSetup

.obj CWorkFlowSetup_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte __RTTI__CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CWorkFlowSetup_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CWorkFlowSetup, global
	.4byte CWorkFlowSetup_typestr
	.4byte CWorkFlowSetup_hierarchy
.endobj __RTTI__CWorkFlowSetup

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667EC0, global
	.skip 0x8
.endobj lbl_80667EC0

.obj lbl_80667EC8, global
	.skip 0x8
.endobj lbl_80667EC8

.obj lbl_80667ED0, global
	.skip 0x8
.endobj lbl_80667ED0

.obj lbl_80667ED8, global
	.skip 0x8
.endobj lbl_80667ED8

.obj lbl_80667EE0, global
	.skip 0x8
.endobj lbl_80667EE0

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C75C", local
.hidden "@etb_8001C75C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C75C"

.obj "@etb_8001C764", local
.hidden "@etb_8001C764"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001C764"

.obj "@etb_8001C76C", local
.hidden "@etb_8001C76C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C76C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034358", local
.hidden "@eti_80034358"
	.4byte __ct__CWorkFlowSetup
	.4byte 0x0000004C
	.4byte "@etb_8001C75C"
.endobj "@eti_80034358"

.obj "@eti_80034364", local
.hidden "@eti_80034364"
	.4byte __dt__CWorkFlowSetup
	.4byte 0x00000058
	.4byte "@etb_8001C764"
.endobj "@eti_80034364"

.obj "@eti_80034370", local
.hidden "@eti_80034370"
	.4byte CWorkFlowSetup_WorkThreadEvent4
	.4byte 0x00000050
	.4byte "@etb_8001C76C"
.endobj "@eti_80034370"
