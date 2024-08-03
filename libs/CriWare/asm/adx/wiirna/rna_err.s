.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn RNAERR_EntryErrFunc, global
/* 80398FA8 00362568  3C C0 80 5F */	lis r6, rnaerr_func@ha
/* 80398FAC 0036256C  3C A0 80 5F */	lis r5, rnaerr_obj@ha
/* 80398FB0 00362570  90 66 60 B8 */	stw r3, rnaerr_func@l(r6)
/* 80398FB4 00362574  90 85 60 BC */	stw r4, rnaerr_obj@l(r5)
/* 80398FB8 00362578  4E 80 00 20 */	blr 
.endfn RNAERR_EntryErrFunc

.fn RNAERR_CallErrFunc, global
/* 80398FBC 0036257C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80398FC0 00362580  7C 08 02 A6 */	mflr r0
/* 80398FC4 00362584  7C 64 1B 78 */	mr r4, r3
/* 80398FC8 00362588  38 A0 00 FF */	li r5, 0xff
/* 80398FCC 0036258C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80398FD0 00362590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80398FD4 00362594  3F E0 80 5F */	lis r31, rnaerr_func@ha
/* 80398FD8 00362598  3B FF 60 B8 */	addi r31, r31, rnaerr_func@l
/* 80398FDC 0036259C  38 7F 00 08 */	addi r3, r31, 8
/* 80398FE0 003625A0  4B F2 97 99 */	bl strncpy
/* 80398FE4 003625A4  81 9F 00 00 */	lwz r12, 0(r31)
/* 80398FE8 003625A8  2C 0C 00 00 */	cmpwi r12, 0
/* 80398FEC 003625AC  41 82 00 14 */	beq .L_80399000
/* 80398FF0 003625B0  38 9F 00 08 */	addi r4, r31, 8
/* 80398FF4 003625B4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80398FF8 003625B8  7D 89 03 A6 */	mtctr r12
/* 80398FFC 003625BC  4E 80 04 21 */	bctrl 
.L_80399000:
/* 80399000 003625C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399004 003625C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80399008 003625C8  7C 08 03 A6 */	mtlr r0
/* 8039900C 003625CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80399010 003625D0  4E 80 00 20 */	blr
.endfn RNAERR_CallErrFunc

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.balign 8
.obj rnaerr_func, global
	.skip 0x4
.endobj rnaerr_func

.obj rnaerr_obj, global
	.skip 0x4
.endobj rnaerr_obj

.obj rnaerr_msg, global
	.skip 0x100
.endobj rnaerr_msg
