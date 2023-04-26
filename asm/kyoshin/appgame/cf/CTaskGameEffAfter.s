.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CTaskGameEffAfter, global
/* 800614F4 0002AAB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800614F8 0002AAB8  7C 08 02 A6 */	mflr r0
/* 800614FC 0002AABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80061500 0002AAC0  BF C1 00 08 */	stmw r30, 8(r1)
/* 80061504 0002AAC4  7C 7E 1B 78 */	mr r30, r3
/* 80061508 0002AAC8  48 3D 60 AD */	bl getHeapIndex
/* 8006150C 0002AACC  7C 64 1B 78 */	mr r4, r3
/* 80061510 0002AAD0  38 60 00 54 */	li r3, 0x54
/* 80061514 0002AAD4  48 3D 35 49 */	bl heap_malloc
/* 80061518 0002AAD8  2C 03 00 00 */	cmpwi r3, 0
/* 8006151C 0002AADC  7C 7F 1B 78 */	mr r31, r3
/* 80061520 0002AAE0  41 82 00 58 */	beq .L_80061578
/* 80061524 0002AAE4  48 3E 34 F5 */	bl __ct__8CProcessFv
/* 80061528 0002AAE8  3C 60 80 53 */	lis r3, __vt__CTTask_CTaskGameEffAfter@ha
/* 8006152C 0002AAEC  3C A0 80 51 */	lis r5, __ptmf_null@ha
/* 80061530 0002AAF0  38 63 9E 80 */	addi r3, r3, __vt__CTTask_CTaskGameEffAfter@l
/* 80061534 0002AAF4  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80061538 0002AAF8  38 A5 CE 10 */	addi r5, r5, __ptmf_null@l
/* 8006153C 0002AAFC  80 05 00 04 */	lwz r0, 4(r5)
/* 80061540 0002AB00  3C 60 80 53 */	lis r3, __vt__CTaskGameEffAfter@ha
/* 80061544 0002AB04  80 85 00 00 */	lwz r4, 0(r5)
/* 80061548 0002AB08  38 63 9E 38 */	addi r3, r3, __vt__CTaskGameEffAfter@l
/* 8006154C 0002AB0C  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 80061550 0002AB10  90 1F 00 40 */	stw r0, 0x40(r31)
/* 80061554 0002AB14  80 05 00 08 */	lwz r0, 8(r5)
/* 80061558 0002AB18  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8006155C 0002AB1C  80 05 00 04 */	lwz r0, 4(r5)
/* 80061560 0002AB20  80 85 00 00 */	lwz r4, 0(r5)
/* 80061564 0002AB24  90 9F 00 48 */	stw r4, 0x48(r31)
/* 80061568 0002AB28  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8006156C 0002AB2C  80 05 00 08 */	lwz r0, 8(r5)
/* 80061570 0002AB30  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80061574 0002AB34  90 7F 00 10 */	stw r3, 0x10(r31)
.L_80061578:
/* 80061578 0002AB38  7F E3 FB 78 */	mr r3, r31
/* 8006157C 0002AB3C  7F C4 F3 78 */	mr r4, r30
/* 80061580 0002AB40  38 A0 00 00 */	li r5, 0
/* 80061584 0002AB44  48 3E 36 F1 */	bl func_80444C74
/* 80061588 0002AB48  7F E3 FB 78 */	mr r3, r31
/* 8006158C 0002AB4C  BB C1 00 08 */	lmw r30, 8(r1)
/* 80061590 0002AB50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80061594 0002AB54  7C 08 03 A6 */	mtlr r0
/* 80061598 0002AB58  38 21 00 10 */	addi r1, r1, 0x10
/* 8006159C 0002AB5C  4E 80 00 20 */	blr 
.endfn __ct__CTaskGameEffAfter

.fn __dt__CTTask_CTaskGameEffAfter, global
/* 800615A0 0002AB60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800615A4 0002AB64  7C 08 02 A6 */	mflr r0
/* 800615A8 0002AB68  2C 03 00 00 */	cmpwi r3, 0
/* 800615AC 0002AB6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800615B0 0002AB70  BF C1 00 08 */	stmw r30, 8(r1)
/* 800615B4 0002AB74  7C 7E 1B 78 */	mr r30, r3
/* 800615B8 0002AB78  7C 9F 23 78 */	mr r31, r4
/* 800615BC 0002AB7C  41 82 00 1C */	beq .L_800615D8
/* 800615C0 0002AB80  38 80 00 00 */	li r4, 0
/* 800615C4 0002AB84  48 3E 35 75 */	bl __dt__CProcess
/* 800615C8 0002AB88  2C 1F 00 00 */	cmpwi r31, 0
/* 800615CC 0002AB8C  40 81 00 0C */	ble .L_800615D8
/* 800615D0 0002AB90  7F C3 F3 78 */	mr r3, r30
/* 800615D4 0002AB94  48 3D 36 59 */	bl __dl__FPv
.L_800615D8:
/* 800615D8 0002AB98  7F C3 F3 78 */	mr r3, r30
/* 800615DC 0002AB9C  BB C1 00 08 */	lmw r30, 8(r1)
/* 800615E0 0002ABA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800615E4 0002ABA4  7C 08 03 A6 */	mtlr r0
/* 800615E8 0002ABA8  38 21 00 10 */	addi r1, r1, 0x10
/* 800615EC 0002ABAC  4E 80 00 20 */	blr 
.endfn __dt__CTTask_CTaskGameEffAfter

.fn func_800615F0, global
/* 800615F0 0002ABB0  4E 80 00 20 */	blr 
.endfn func_800615F0

.fn func_800615F4, global
/* 800615F4 0002ABB4  4E 80 00 20 */	blr 
.endfn func_800615F4

.fn func_800615F8, global
/* 800615F8 0002ABB8  4E 80 00 20 */	blr 
.endfn func_800615F8

.fn __dt__CTaskGameEffAfter, global
/* 800615FC 0002ABBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80061600 0002ABC0  7C 08 02 A6 */	mflr r0
/* 80061604 0002ABC4  2C 03 00 00 */	cmpwi r3, 0
/* 80061608 0002ABC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006160C 0002ABCC  BF C1 00 08 */	stmw r30, 8(r1)
/* 80061610 0002ABD0  7C 7E 1B 78 */	mr r30, r3
/* 80061614 0002ABD4  7C 9F 23 78 */	mr r31, r4
/* 80061618 0002ABD8  41 82 00 20 */	beq .L_80061638
/* 8006161C 0002ABDC  41 82 00 0C */	beq .L_80061628
/* 80061620 0002ABE0  38 80 00 00 */	li r4, 0
/* 80061624 0002ABE4  48 3E 35 15 */	bl __dt__CProcess
.L_80061628:
/* 80061628 0002ABE8  2C 1F 00 00 */	cmpwi r31, 0
/* 8006162C 0002ABEC  40 81 00 0C */	ble .L_80061638
/* 80061630 0002ABF0  7F C3 F3 78 */	mr r3, r30
/* 80061634 0002ABF4  48 3D 35 F9 */	bl __dl__FPv
.L_80061638:
/* 80061638 0002ABF8  7F C3 F3 78 */	mr r3, r30
/* 8006163C 0002ABFC  BB C1 00 08 */	lmw r30, 8(r1)
/* 80061640 0002AC00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80061644 0002AC04  7C 08 03 A6 */	mtlr r0
/* 80061648 0002AC08  38 21 00 10 */	addi r1, r1, 0x10
/* 8006164C 0002AC0C  4E 80 00 20 */	blr 
.endfn __dt__CTaskGameEffAfter

.fn func_80061650, global
/* 80061650 0002AC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80061654 0002AC14  7C 08 02 A6 */	mflr r0
/* 80061658 0002AC18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006165C 0002AC1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80061660 0002AC20  7C 7F 1B 78 */	mr r31, r3
/* 80061664 0002AC24  38 63 00 3C */	addi r3, r3, 0x3c
/* 80061668 0002AC28  48 25 86 89 */	bl __ptmf_test
/* 8006166C 0002AC2C  2C 03 00 00 */	cmpwi r3, 0
/* 80061670 0002AC30  41 82 00 14 */	beq .L_80061684
/* 80061674 0002AC34  7F E3 FB 78 */	mr r3, r31
/* 80061678 0002AC38  39 9F 00 3C */	addi r12, r31, 0x3c
/* 8006167C 0002AC3C  48 25 86 E1 */	bl __ptmf_scall
/* 80061680 0002AC40  60 00 00 00 */	nop 
.L_80061684:
/* 80061684 0002AC44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80061688 0002AC48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006168C 0002AC4C  7C 08 03 A6 */	mtlr r0
/* 80061690 0002AC50  38 21 00 10 */	addi r1, r1, 0x10
/* 80061694 0002AC54  4E 80 00 20 */	blr 
.endfn func_80061650

.fn func_80061698, global
/* 80061698 0002AC58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006169C 0002AC5C  7C 08 02 A6 */	mflr r0
/* 800616A0 0002AC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 800616A4 0002AC64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800616A8 0002AC68  7C 7F 1B 78 */	mr r31, r3
/* 800616AC 0002AC6C  38 63 00 48 */	addi r3, r3, 0x48
/* 800616B0 0002AC70  48 25 86 41 */	bl __ptmf_test
/* 800616B4 0002AC74  2C 03 00 00 */	cmpwi r3, 0
/* 800616B8 0002AC78  41 82 00 14 */	beq .L_800616CC
/* 800616BC 0002AC7C  7F E3 FB 78 */	mr r3, r31
/* 800616C0 0002AC80  39 9F 00 48 */	addi r12, r31, 0x48
/* 800616C4 0002AC84  48 25 86 99 */	bl __ptmf_scall
/* 800616C8 0002AC88  60 00 00 00 */	nop 
.L_800616CC:
/* 800616CC 0002AC8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800616D0 0002AC90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800616D4 0002AC94  7C 08 03 A6 */	mtlr r0
/* 800616D8 0002AC98  38 21 00 10 */	addi r1, r1, 0x10
/* 800616DC 0002AC9C  4E 80 00 20 */	blr 
.endfn func_80061698

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CTaskGameEffAfter_typestr, global
	.asciz "CTaskGameEffAfter"
	.balign 4
.endobj CTaskGameEffAfter_typestr

.obj CTTask_CTaskGameEffAfter_typestr, global
	.asciz "CTTask<CTaskGameEffAfter>"
	.balign 4
.endobj CTTask_CTaskGameEffAfter_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CTaskGameEffAfter, global
	.4byte __RTTI__CTaskGameEffAfter
	.4byte 0
	.4byte __dt__CTaskGameEffAfter
	.4byte CChildListNode_Reset
	.4byte func_800615F8
	.4byte func_800615F4
	.4byte func_80061650
	.4byte func_800615F0
	.4byte CProcess_func_80043F20
.endobj __vt__CTaskGameEffAfter

.obj CTaskGameEffAfter_hierarchy, global
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte __RTTI__CTTask_CTaskGameEffAfter
	.4byte 0
	.4byte 0
.endobj CTaskGameEffAfter_hierarchy


.obj __vt__CTTask_CTaskGameEffAfter, global
	.4byte __RTTI__CTTask_CTaskGameEffAfter
	.4byte 0
	.4byte __dt__CTTask_CTaskGameEffAfter
	.4byte CChildListNode_Reset
	.4byte 0
	.4byte 0
	.4byte func_80061650
	.4byte func_80061698
	.4byte CProcess_func_80043F20
.endobj __vt__CTTask_CTaskGameEffAfter

.obj CTTask_CTaskGameEffAfter_hierarchy, global
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte 0
.endobj CTTask_CTaskGameEffAfter_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CTaskGameEffAfter, global
	.4byte CTaskGameEffAfter_typestr
	.4byte CTaskGameEffAfter_hierarchy
.endobj __RTTI__CTaskGameEffAfter

.obj __RTTI__CTTask_CTaskGameEffAfter, global
	.4byte CTTask_CTaskGameEffAfter_typestr
	.4byte CTTask_CTaskGameEffAfter_hierarchy
.endobj __RTTI__CTTask_CTaskGameEffAfter



.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000798C", local
.hidden "@etb_8000798C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000798C"

.obj "@etb_80007994", local
.hidden "@etb_80007994"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80007994"

.obj "@etb_8000799C", local
.hidden "@etb_8000799C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000799C"

.obj "@etb_800079A4", local
.hidden "@etb_800079A4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800079A4"

.obj "@etb_800079AC", local
.hidden "@etb_800079AC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800079AC"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80022A24", local
.hidden "@eti_80022A24"
	.4byte __ct__CTaskGameEffAfter
	.4byte 0x000000AC
	.4byte "@etb_8000798C"
.endobj "@eti_80022A24"

.obj "@eti_80022A30", local
.hidden "@eti_80022A30"
	.4byte __dt__CTTask_CTaskGameEffAfter
	.4byte 0x00000050
	.4byte "@etb_80007994"
.endobj "@eti_80022A30"

.obj "@eti_80022A3C", local
.hidden "@eti_80022A3C"
	.4byte __dt__CTaskGameEffAfter
	.4byte 0x00000054
	.4byte "@etb_8000799C"
.endobj "@eti_80022A3C"

.obj "@eti_80022A48", local
.hidden "@eti_80022A48"
	.4byte func_80061650
	.4byte 0x00000048
	.4byte "@etb_800079A4"
.endobj "@eti_80022A48"

.obj "@eti_80022A54", local
.hidden "@eti_80022A54"
	.4byte func_80061698
	.4byte 0x00000048
	.4byte "@etb_800079AC"
.endobj "@eti_80022A54"