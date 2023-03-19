.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_80451E50, global
/* 80451E50 0041B410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80451E54 0041B414  7C 08 02 A6 */	mflr r0
/* 80451E58 0041B418  38 C0 00 00 */	li r6, 0
/* 80451E5C 0041B41C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80451E60 0041B420  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80451E64 0041B424  7C 7F 1B 78 */	mr r31, r3
/* 80451E68 0041B428  4B FE 57 55 */	bl __ct__CWorkThread
/* 80451E6C 0041B42C  3C 60 80 57 */	lis r3, __vt__CDeviceFileJob@ha
/* 80451E70 0041B430  38 80 00 00 */	li r4, 0
/* 80451E74 0041B434  38 63 FD 20 */	addi r3, r3, __vt__CDeviceFileJob@l
/* 80451E78 0041B438  38 00 00 41 */	li r0, 0x41
/* 80451E7C 0041B43C  90 7F 00 00 */	stw r3, 0(r31)
/* 80451E80 0041B440  7F E3 FB 78 */	mr r3, r31
/* 80451E84 0041B444  90 9F 01 C4 */	stw r4, 0x1c4(r31)
/* 80451E88 0041B448  98 9F 01 C8 */	stb r4, 0x1c8(r31)
/* 80451E8C 0041B44C  90 9F 02 08 */	stw r4, 0x208(r31)
/* 80451E90 0041B450  90 9F 02 0C */	stw r4, 0x20c(r31)
/* 80451E94 0041B454  98 9F 02 10 */	stb r4, 0x210(r31)
/* 80451E98 0041B458  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80451E9C 0041B45C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80451EA0 0041B460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80451EA4 0041B464  7C 08 03 A6 */	mtlr r0
/* 80451EA8 0041B468  38 21 00 10 */	addi r1, r1, 0x10
/* 80451EAC 0041B46C  4E 80 00 20 */	blr 
.endfn func_80451E50

.fn func_80451EB0, global
/* 80451EB0 0041B470  38 60 00 00 */	li r3, 0
/* 80451EB4 0041B474  4E 80 00 20 */	blr 
.endfn func_80451EB0

.fn func_80451EB8, global
/* 80451EB8 0041B478  38 60 00 00 */	li r3, 0
/* 80451EBC 0041B47C  4E 80 00 20 */	blr 
.endfn func_80451EB8

.fn func_80451EC0, global
/* 80451EC0 0041B480  38 60 00 00 */	li r3, 0
/* 80451EC4 0041B484  4E 80 00 20 */	blr 
.endfn func_80451EC0

.fn __dt__CDeviceFileJob, global
/* 80451EC8 0041B488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80451ECC 0041B48C  7C 08 02 A6 */	mflr r0
/* 80451ED0 0041B490  2C 03 00 00 */	cmpwi r3, 0
/* 80451ED4 0041B494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80451ED8 0041B498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80451EDC 0041B49C  7C 9F 23 78 */	mr r31, r4
/* 80451EE0 0041B4A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80451EE4 0041B4A4  7C 7E 1B 78 */	mr r30, r3
/* 80451EE8 0041B4A8  41 82 00 1C */	beq .L_80451F04
/* 80451EEC 0041B4AC  38 80 00 00 */	li r4, 0
/* 80451EF0 0041B4B0  4B FE 5B D9 */	bl __dt__CWorkThread
/* 80451EF4 0041B4B4  2C 1F 00 00 */	cmpwi r31, 0
/* 80451EF8 0041B4B8  40 81 00 0C */	ble .L_80451F04
/* 80451EFC 0041B4BC  7F C3 F3 78 */	mr r3, r30
/* 80451F00 0041B4C0  4B FE 2D 2D */	bl __dl__FPv
.L_80451F04:
/* 80451F04 0041B4C4  7F C3 F3 78 */	mr r3, r30
/* 80451F08 0041B4C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80451F0C 0041B4CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80451F10 0041B4D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80451F14 0041B4D4  7C 08 03 A6 */	mtlr r0
/* 80451F18 0041B4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80451F1C 0041B4DC  4E 80 00 20 */	blr 
.endfn __dt__CDeviceFileJob


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CDeviceFileJob_typestr, global
	.asciz "CDeviceFileJob"
	.balign 4
.endobj CDeviceFileJob_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CDeviceFileJob, global
	.4byte __RTTI__CDeviceFileJob
	.4byte 0
	.4byte __dt__CDeviceFileJob
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
	.4byte func_804389F8
	.4byte func_80438A24
	.4byte CWorkThread_Event3
	.4byte func_80451EC0
	.4byte func_80451EB0
	.4byte func_80451EB8
.endobj __vt__CDeviceFileJob

.obj CDeviceFileJob_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte __RTTI__CWorkThread
	.4byte 0
	.4byte 0
.endobj CDeviceFileJob_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CDeviceFileJob, global
	.4byte CDeviceFileJob_typestr
	.4byte CDeviceFileJob_hierarchy
.endobj __RTTI__CDeviceFileJob

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001CF9C", local
.hidden "@etb_8001CF9C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CF9C"

.obj "@etb_8001CFA4", local
.hidden "@etb_8001CFA4"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001CFA4"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034C64", local
.hidden "@eti_80034C64"
	.4byte func_80451E50
	.4byte 0x00000060
	.4byte "@etb_8001CF9C"
.endobj "@eti_80034C64"

.obj "@eti_80034C70", local
.hidden "@eti_80034C70"
	.4byte __dt__CDeviceFileJob
	.4byte 0x00000058
	.4byte "@etb_8001CFA4"
.endobj "@eti_80034C70"
