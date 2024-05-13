.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__cf_CREvtObj, global
/* 80185690 0014EC50  3C C0 80 53 */	lis r6, __vt__Q22cf8CREvtObj@ha
/* 80185694 0014EC54  90 83 00 04 */	stw r4, 4(r3)
/* 80185698 0014EC58  38 C6 5A F0 */	addi r6, r6, __vt__Q22cf8CREvtObj@l
/* 8018569C 0014EC5C  3C A0 80 51 */	lis r5, __ptmf_null@ha
/* 801856A0 0014EC60  90 C3 00 00 */	stw r6, 0(r3)
/* 801856A4 0014EC64  84 85 CE 10 */	lwzu r4, __ptmf_null@l(r5)
/* 801856A8 0014EC68  80 05 00 04 */	lwz r0, 4(r5)
/* 801856AC 0014EC6C  90 03 00 0C */	stw r0, 0xc(r3)
/* 801856B0 0014EC70  90 83 00 08 */	stw r4, 8(r3)
/* 801856B4 0014EC74  80 05 00 08 */	lwz r0, 8(r5)
/* 801856B8 0014EC78  90 03 00 10 */	stw r0, 0x10(r3)
/* 801856BC 0014EC7C  4E 80 00 20 */	blr 
.endfn __ct__cf_CREvtObj

.fn __dt__801856C0, global
/* 801856C0 0014EC80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801856C4 0014EC84  7C 08 02 A6 */	mflr r0
/* 801856C8 0014EC88  2C 03 00 00 */	cmpwi r3, 0
/* 801856CC 0014EC8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801856D0 0014EC90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801856D4 0014EC94  7C 7F 1B 78 */	mr r31, r3
/* 801856D8 0014EC98  41 82 00 10 */	beq .L_801856E8
/* 801856DC 0014EC9C  2C 04 00 00 */	cmpwi r4, 0
/* 801856E0 0014ECA0  40 81 00 08 */	ble .L_801856E8
/* 801856E4 0014ECA4  4B FE 29 19 */	bl func_80167FFC
.L_801856E8:
/* 801856E8 0014ECA8  7F E3 FB 78 */	mr r3, r31
/* 801856EC 0014ECAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801856F0 0014ECB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801856F4 0014ECB4  7C 08 03 A6 */	mtlr r0
/* 801856F8 0014ECB8  38 21 00 10 */	addi r1, r1, 0x10
/* 801856FC 0014ECBC  4E 80 00 20 */	blr 
.endfn __dt__801856C0

.fn func_80185700, global
/* 80185700 0014ECC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80185704 0014ECC4  7C 08 02 A6 */	mflr r0
/* 80185708 0014ECC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018570C 0014ECCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80185710 0014ECD0  7C 7F 1B 78 */	mr r31, r3
/* 80185714 0014ECD4  38 63 00 08 */	addi r3, r3, 8
/* 80185718 0014ECD8  48 13 45 D9 */	bl __ptmf_test
/* 8018571C 0014ECDC  2C 03 00 00 */	cmpwi r3, 0
/* 80185720 0014ECE0  41 82 00 14 */	beq .L_80185734
/* 80185724 0014ECE4  7F E3 FB 78 */	mr r3, r31
/* 80185728 0014ECE8  39 9F 00 08 */	addi r12, r31, 8
/* 8018572C 0014ECEC  48 13 46 31 */	bl __ptmf_scall
/* 80185730 0014ECF0  60 00 00 00 */	nop 
.L_80185734:
/* 80185734 0014ECF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80185738 0014ECF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018573C 0014ECFC  7C 08 03 A6 */	mtlr r0
/* 80185740 0014ED00  38 21 00 10 */	addi r1, r1, 0x10
/* 80185744 0014ED04  4E 80 00 20 */	blr 
.endfn func_80185700

.fn func_80185748, global
/* 80185748 0014ED08  38 80 00 04 */	li r4, 4
/* 8018574C 0014ED0C  38 A0 00 01 */	li r5, 1
/* 80185750 0014ED10  4B FE 28 1C */	b func_80167F6C
.endfn func_80185748

.fn __dt__80185754, global
/* 80185754 0014ED14  4B FE 28 A8 */	b func_80167FFC
.endfn __dt__80185754

.fn func_80185758, global
/* 80185758 0014ED18  38 60 00 00 */	li r3, 0
/* 8018575C 0014ED1C  4E 80 00 20 */	blr 
.endfn func_80185758



.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__Q22cf8CREvtObj, global
	.4byte __RTTI__Q22cf8CREvtObj
	.4byte 0
	.4byte __dt__801856C0
	.4byte 0
	.4byte func_80169A34
	.4byte func_80185758
	.4byte func_80169048
	.4byte func_801809A8
	.4byte func_801696C4
	.4byte func_80185700
.endobj __vt__Q22cf8CREvtObj



.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000E984", local
.hidden "@etb_8000E984"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000E984"

.obj "@etb_8000E98C", local
.hidden "@etb_8000E98C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000E98C"


.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800298AC", local
.hidden "@eti_800298AC"
	.4byte __dt__801856C0
	.4byte 0x00000040
	.4byte "@etb_8000E984"
.endobj "@eti_800298AC"

.obj "@eti_800298B8", local
.hidden "@eti_800298B8"
	.4byte func_80185700
	.4byte 0x00000048
	.4byte "@etb_8000E98C"
.endobj "@eti_800298B8"

