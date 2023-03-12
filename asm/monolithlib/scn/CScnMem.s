.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CScnMem, global
/* 8048EAA8 00458068  3C A0 80 57 */	lis r5, __vt__CScnMem@ha
/* 8048EAAC 0045806C  38 80 00 00 */	li r4, 0
/* 8048EAB0 00458070  38 A5 1E 00 */	addi r5, r5, __vt__CScnMem@l
/* 8048EAB4 00458074  38 00 FF FF */	li r0, -1
/* 8048EAB8 00458078  90 A3 00 00 */	stw r5, 0(r3)
/* 8048EABC 0045807C  90 83 00 04 */	stw r4, 4(r3)
/* 8048EAC0 00458080  90 03 00 08 */	stw r0, 8(r3)
/* 8048EAC4 00458084  90 83 00 0C */	stw r4, 0xc(r3)
/* 8048EAC8 00458088  4E 80 00 20 */	blr 
.endfn __ct__CScnMem

.fn __dt__CScnMem, global
/* 8048EACC 0045808C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EAD0 00458090  7C 08 02 A6 */	mflr r0
/* 8048EAD4 00458094  2C 03 00 00 */	cmpwi r3, 0
/* 8048EAD8 00458098  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EADC 0045809C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048EAE0 004580A0  7C 9F 23 78 */	mr r31, r4
/* 8048EAE4 004580A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8048EAE8 004580A8  7C 7E 1B 78 */	mr r30, r3
/* 8048EAEC 004580AC  41 82 00 28 */	beq .L_8048EB14
/* 8048EAF0 004580B0  3C 80 80 57 */	lis r4, __vt__CScnMem@ha
/* 8048EAF4 004580B4  38 84 1E 00 */	addi r4, r4, __vt__CScnMem@l
/* 8048EAF8 004580B8  90 83 00 00 */	stw r4, 0(r3)
/* 8048EAFC 004580BC  80 63 00 08 */	lwz r3, 8(r3)
/* 8048EB00 004580C0  4B FA 58 B1 */	bl func_804343B0
/* 8048EB04 004580C4  2C 1F 00 00 */	cmpwi r31, 0
/* 8048EB08 004580C8  40 81 00 0C */	ble .L_8048EB14
/* 8048EB0C 004580CC  7F C3 F3 78 */	mr r3, r30
/* 8048EB10 004580D0  4B FA 61 1D */	bl __dl__FPv
.L_8048EB14:
/* 8048EB14 004580D4  7F C3 F3 78 */	mr r3, r30
/* 8048EB18 004580D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048EB1C 004580DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048EB20 004580E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EB24 004580E4  7C 08 03 A6 */	mtlr r0
/* 8048EB28 004580E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EB2C 004580EC  4E 80 00 20 */	blr 
.endfn __dt__CScnMem

.fn func_8048EB30, global
/* 8048EB30 004580F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EB34 004580F4  7C 08 02 A6 */	mflr r0
/* 8048EB38 004580F8  3C E0 80 52 */	lis r7, lbl_805278C0@ha
/* 8048EB3C 004580FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EB40 00458100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048EB44 00458104  7C 7F 1B 78 */	mr r31, r3
/* 8048EB48 00458108  90 83 00 04 */	stw r4, 4(r3)
/* 8048EB4C 0045810C  7C A3 2B 78 */	mr r3, r5
/* 8048EB50 00458110  7C C4 33 78 */	mr r4, r6
/* 8048EB54 00458114  38 A7 78 C0 */	addi r5, r7, lbl_805278C0@l
/* 8048EB58 00458118  90 DF 00 0C */	stw r6, 0xc(r31)
/* 8048EB5C 0045811C  4B FA 54 E5 */	bl func_80434040
/* 8048EB60 00458120  90 7F 00 08 */	stw r3, 8(r31)
/* 8048EB64 00458124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048EB68 00458128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EB6C 0045812C  7C 08 03 A6 */	mtlr r0
/* 8048EB70 00458130  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EB74 00458134  4E 80 00 20 */	blr 
.endfn func_8048EB30

.fn __ct__CScnNw4r, global
/* 8048EB78 00458138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EB7C 0045813C  7C 08 02 A6 */	mflr r0
/* 8048EB80 00458140  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EB84 00458144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048EB88 00458148  7C 7F 1B 78 */	mr r31, r3
/* 8048EB8C 0045814C  48 00 70 A1 */	bl __ct__CScn
/* 8048EB90 00458150  3C 80 80 57 */	lis r4, __vt__CScnNw4r@ha
/* 8048EB94 00458154  7F E3 FB 78 */	mr r3, r31
/* 8048EB98 00458158  38 84 1E 10 */	addi r4, r4, __vt__CScnNw4r@l
/* 8048EB9C 0045815C  90 9F 00 10 */	stw r4, 0x10(r31)
/* 8048EBA0 00458160  38 04 00 24 */	addi r0, r4, 0x24
/* 8048EBA4 00458164  90 1F 00 54 */	stw r0, 0x54(r31)
/* 8048EBA8 00458168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048EBAC 0045816C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EBB0 00458170  7C 08 03 A6 */	mtlr r0
/* 8048EBB4 00458174  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EBB8 00458178  4E 80 00 20 */	blr
.endfn __ct__CScnNw4r

.fn __dt__CScnNw4r, global
/* 8048EBBC 0045817C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EBC0 00458180  7C 08 02 A6 */	mflr r0
/* 8048EBC4 00458184  2C 03 00 00 */	cmpwi r3, 0
/* 8048EBC8 00458188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EBCC 0045818C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048EBD0 00458190  7C 9F 23 78 */	mr r31, r4
/* 8048EBD4 00458194  93 C1 00 08 */	stw r30, 8(r1)
/* 8048EBD8 00458198  7C 7E 1B 78 */	mr r30, r3
/* 8048EBDC 0045819C  41 82 00 1C */	beq .L_8048EBF8
/* 8048EBE0 004581A0  38 80 00 00 */	li r4, 0
/* 8048EBE4 004581A4  48 00 71 D5 */	bl __dt__CScn
/* 8048EBE8 004581A8  2C 1F 00 00 */	cmpwi r31, 0
/* 8048EBEC 004581AC  40 81 00 0C */	ble .L_8048EBF8
/* 8048EBF0 004581B0  7F C3 F3 78 */	mr r3, r30
/* 8048EBF4 004581B4  4B FA 60 39 */	bl __dl__FPv
.L_8048EBF8:
/* 8048EBF8 004581B8  7F C3 F3 78 */	mr r3, r30
/* 8048EBFC 004581BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048EC00 004581C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048EC04 004581C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EC08 004581C8  7C 08 03 A6 */	mtlr r0
/* 8048EC0C 004581CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EC10 004581D0  4E 80 00 20 */	blr 
.endfn __dt__CScnNw4r

.fn func_8048EC14, global
/* 8048EC14 004581D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048EC18 004581D8  7C 08 02 A6 */	mflr r0
/* 8048EC1C 004581DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048EC20 004581E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8048EC24 004581E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8048EC28 004581E8  7C 9E 23 78 */	mr r30, r4
/* 8048EC2C 004581EC  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8048EC30 004581F0  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8048EC34 004581F4  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 8048EC38 004581F8  7C 04 00 40 */	cmplw r4, r0
/* 8048EC3C 004581FC  41 80 00 20 */	blt .L_8048EC5C
/* 8048EC40 00458200  3C 60 80 57 */	lis r3, lbl_80571F68@ha
/* 8048EC44 00458204  3C A0 80 57 */	lis r5, lbl_80571F40@ha
/* 8048EC48 00458208  38 63 1F 68 */	addi r3, r3, lbl_80571F68@l
/* 8048EC4C 0045820C  38 80 02 2B */	li r4, 0x22b
/* 8048EC50 00458210  38 A5 1F 40 */	addi r5, r5, lbl_80571F40@l
/* 8048EC54 00458214  4C C6 31 82 */	crclr 6
/* 8048EC58 00458218  4B F4 89 2D */	bl Panic__Q24nw4r2dbFPCciPCce
.L_8048EC5C:
/* 8048EC5C 0045821C  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 8048EC60 00458220  57 C0 10 3A */	slwi r0, r30, 2
/* 8048EC64 00458224  3B C0 00 00 */	li r30, 0
/* 8048EC68 00458228  7F E3 00 2E */	lwzx r31, r3, r0
/* 8048EC6C 0045822C  2C 1F 00 00 */	cmpwi r31, 0
/* 8048EC70 00458230  41 82 00 34 */	beq .L_8048ECA4
/* 8048EC74 00458234  3C 80 80 52 */	lis r4, TYPE_NAME__Q34nw4r3g3d8ScnGroup@ha
/* 8048EC78 00458238  7F E3 FB 78 */	mr r3, r31
/* 8048EC7C 0045823C  38 84 10 A0 */	addi r4, r4, TYPE_NAME__Q34nw4r3g3d8ScnGroup@l
/* 8048EC80 00458240  90 81 00 08 */	stw r4, 8(r1)
/* 8048EC84 00458244  38 81 00 08 */	addi r4, r1, 8
/* 8048EC88 00458248  81 9F 00 00 */	lwz r12, 0(r31)
/* 8048EC8C 0045824C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8048EC90 00458250  7D 89 03 A6 */	mtctr r12
/* 8048EC94 00458254  4E 80 04 21 */	bctrl 
/* 8048EC98 00458258  2C 03 00 00 */	cmpwi r3, 0
/* 8048EC9C 0045825C  41 82 00 08 */	beq .L_8048ECA4
/* 8048ECA0 00458260  3B C0 00 01 */	li r30, 1
.L_8048ECA4:
/* 8048ECA4 00458264  2C 1E 00 00 */	cmpwi r30, 0
/* 8048ECA8 00458268  41 82 00 0C */	beq .L_8048ECB4
/* 8048ECAC 0045826C  7F E3 FB 78 */	mr r3, r31
/* 8048ECB0 00458270  48 00 00 08 */	b .L_8048ECB8
.L_8048ECB4:
/* 8048ECB4 00458274  38 60 00 00 */	li r3, 0
.L_8048ECB8:
/* 8048ECB8 00458278  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048ECBC 0045827C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8048ECC0 00458280  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8048ECC4 00458284  7C 08 03 A6 */	mtlr r0
/* 8048ECC8 00458288  38 21 00 20 */	addi r1, r1, 0x20
/* 8048ECCC 0045828C  4E 80 00 20 */	blr 
.endfn func_8048EC14

.fn func_8048ECD0, global
/* 8048ECD0 00458290  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8048ECD4 00458294  4E 80 00 20 */	blr 
.endfn func_8048ECD0

.fn func_8048ECD8, global
/* 8048ECD8 00458298  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8048ECDC 0045829C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8048ECE0 004582A0  4E 80 00 20 */	blr 
.endfn func_8048ECD8

.fn func_8048ECE4, global
/* 8048ECE4 004582A4  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8048ECE8 004582A8  48 00 10 F4 */	b func_8048FDDC
.endfn func_8048ECE4

.fn func_8048ECEC, global
/* 8048ECEC 004582AC  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8048ECF0 004582B0  48 00 10 F4 */	b func_8048FDE4
.endfn func_8048ECEC

.fn func_8048ECF4, global
/* 8048ECF4 004582B4  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8048ECF8 004582B8  48 00 10 F4 */	b func_8048FDEC
.endfn func_8048ECF4

.fn func_8048ECFC, global
/* 8048ECFC 004582BC  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8048ED00 004582C0  48 00 11 0C */	b func_8048FE0C
.endfn func_8048ECFC

.fn func_8048ED04, global
/* 8048ED04 004582C4  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 8048ED08 004582C8  48 00 11 24 */	b func_8048FE2C
.endfn func_8048ED04

.fn CScn_WorkEvent4, global
/* 8048ED0C 004582CC  38 63 FF AC */	addi r3, r3, -84
/* 8048ED10 004582D0  48 00 7C 60 */	b func_80496970
.endfn CScn_WorkEvent4

.fn CScn_WorkEvent3, global
/* 8048ED14 004582D4  38 63 FF AC */	addi r3, r3, -84
/* 8048ED18 004582D8  48 00 7C 44 */	b func_8049695C
.endfn CScn_WorkEvent3

.fn func_8048ED1C, global
/* 8048ED1C 004582DC  38 63 FF AC */	addi r3, r3, -84
/* 8048ED20 004582E0  4B FF FE 9C */	b __dt__CScnNw4r
.endfn func_8048ED1C

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_805278C0, global
	.asciz "CScnMem"
.endobj lbl_805278C0

.obj CScnNw4r_typestr, global
	.asciz "CScnNw4r"
	.balign 4
.endobj CScnNw4r_typestr

.obj CTTask_CScn_typestr, global
	.asciz "CTTask<CScn>"
	.balign 4
	.4byte 0
.endobj CTTask_CScn_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CScnMem, global
	.4byte __RTTI__CScnMem
	.4byte 0
	.4byte __dt__CScnMem
	.4byte 0
.endobj __vt__CScnMem

.obj __vt__CScnNw4r, global
	.4byte __RTTI__CScnNw4r
	.4byte 0
	.4byte __dt__CScnNw4r
	.4byte CChildListNode_Reset
	.4byte func_80496580
	.4byte func_80496584
	.4byte func_804967B0
	.4byte func_8049683C
	.4byte func_80043F20
	.4byte __RTTI__CScnNw4r
	.4byte 0xFFFFFFAC
	.4byte func_8048ED1C
	.4byte IWorkEvent_WorkEvent1
	.4byte IWorkEvent_OnInit
	.4byte CScn_WorkEvent3
	.4byte CScn_WorkEvent4
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
	.4byte func_80496970
	.4byte func_8049695C
.endobj __vt__CScnNw4r

.obj CScnNw4r_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0x00000054
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte __RTTI__CTTask_CScn
	.4byte 0
	.4byte __RTTI__CScn
	.4byte 0
	.4byte 0
.endobj CScnNw4r_hierarchy

.obj CScn_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0x00000054
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte __RTTI__CTTask_CScn
	.4byte 0
	.4byte 0
.endobj CScn_hierarchy

.obj CTTask_CScn_hierarchy, global
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte 0
.endobj CTTask_CScn_hierarchy


.obj lbl_80571F40, global
	.asciz "NW4R:Failed assertion idx < mNumScnObj"
	.balign 4
.endobj lbl_80571F40


.obj lbl_80571F68, global
	.asciz "g3d_scnobj.h"
	.balign 4
.endobj lbl_80571F68


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CScnMem, global
	.4byte CScnMem_typestr
	.4byte 0
.endobj __RTTI__CScnMem

.obj __RTTI__CScnNw4r, global
	.4byte CScnNw4r_typestr
	.4byte CScnNw4r_hierarchy
.endobj __RTTI__CScnNw4r

.obj __RTTI__CScn, global
	.4byte CScn_typestr
	.4byte CScn_hierarchy
.endobj __RTTI__CScn

.obj __RTTI__CTTask_CScn, global
	.4byte CTTask_CScn_typestr
	.4byte CTTask_CScn_hierarchy
.endobj __RTTI__CTTask_CScn

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj CScnMem_typestr, global
	.asciz "CScnMem"
.endobj CScnMem_typestr

.obj CScn_typestr, global
	.asciz "CScn"
	.balign 4
.endobj CScn_typestr

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001EBC8", local
.hidden "@etb_8001EBC8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001EBC8"

.obj "@etb_8001EBD0", local
.hidden "@etb_8001EBD0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001EBD0"

.obj "@etb_8001EBD8", local
.hidden "@etb_8001EBD8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001EBD8"

.obj "@etb_8001EBE0", local
.hidden "@etb_8001EBE0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001EBE0"

.obj "@etb_8001EBE8", local
.hidden "@etb_8001EBE8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001EBE8"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800367C4", local
.hidden "@eti_800367C4"
	.4byte __dt__CScnMem
	.4byte 0x00000064
	.4byte "@etb_8001EBC8"
.endobj "@eti_800367C4"

.obj "@eti_800367D0", local
.hidden "@eti_800367D0"
	.4byte func_8048EB30
	.4byte 0x00000048
	.4byte "@etb_8001EBD0"
.endobj "@eti_800367D0"

.obj "@eti_800367DC", local
.hidden "@eti_800367DC"
	.4byte __ct__CScnNw4r
	.4byte 0x00000044
	.4byte "@etb_8001EBD8"
.endobj "@eti_800367DC"

.obj "@eti_800367E8", local
.hidden "@eti_800367E8"
	.4byte __dt__CScnNw4r
	.4byte 0x00000058
	.4byte "@etb_8001EBE0"
.endobj "@eti_800367E8"

.obj "@eti_800367F4", local
.hidden "@eti_800367F4"
	.4byte func_8048EC14
	.4byte 0x000000BC
	.4byte "@etb_8001EBE8"
.endobj "@eti_800367F4"
