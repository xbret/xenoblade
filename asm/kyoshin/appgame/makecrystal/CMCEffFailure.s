.include "macros.inc"
.file "kyoshin/appgame/makecrystal/CMCEffFailure.o"

# 0x80015094 - 0x800150AC
.section extab, "a"
.balign 4

.obj "@etb_80015094", local
.hidden "@etb_80015094"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80015094"

.obj "@etb_8001509C", local
.hidden "@etb_8001509C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001509C"

.obj "@etb_800150A4", local
.hidden "@etb_800150A4"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800150A4"

# 0x8002DF8C - 0x8002DFB0
.section extabindex, "a"
.balign 4

.obj "@eti_8002DF8C", local
.hidden "@eti_8002DF8C"
	.4byte fn_80224B40
	.4byte 0x0000003C
	.4byte "@etb_80015094"
.endobj "@eti_8002DF8C"

.obj "@eti_8002DF98", local
.hidden "@eti_8002DF98"
	.4byte fn_80224B7C
	.4byte 0x00000040
	.4byte "@etb_8001509C"
.endobj "@eti_8002DF98"

.obj "@eti_8002DFA4", local
.hidden "@eti_8002DFA4"
	.4byte fn_80224BBC
	.4byte 0x00000090
	.4byte "@etb_800150A4"
.endobj "@eti_8002DFA4"

# 0x80224B40 - 0x80224C4C
.text
.balign 4

.fn fn_80224B40, local
/* 80224B40 001EE100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224B44 001EE104  7C 08 02 A6 */	mflr r0
/* 80224B48 001EE108  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224B4C 001EE10C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224B50 001EE110  7C 7F 1B 78 */	mr r31, r3
/* 80224B54 001EE114  4B FF F1 ED */	bl fn_80223D40
/* 80224B58 001EE118  3C 80 80 54 */	lis r4, __vt__CMCEffFailure@ha
/* 80224B5C 001EE11C  7F E3 FB 78 */	mr r3, r31
/* 80224B60 001EE120  38 84 98 30 */	addi r4, r4, __vt__CMCEffFailure@l
/* 80224B64 001EE124  90 9F 00 00 */	stw r4, 0x0(r31)
/* 80224B68 001EE128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224B6C 001EE12C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224B70 001EE130  7C 08 03 A6 */	mtlr r0
/* 80224B74 001EE134  38 21 00 10 */	addi r1, r1, 0x10
/* 80224B78 001EE138  4E 80 00 20 */	blr
.endfn fn_80224B40

.fn fn_80224B7C, local
/* 80224B7C 001EE13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224B80 001EE140  7C 08 02 A6 */	mflr r0
/* 80224B84 001EE144  2C 03 00 00 */	cmpwi r3, 0x0
/* 80224B88 001EE148  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224B8C 001EE14C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224B90 001EE150  7C 7F 1B 78 */	mr r31, r3
/* 80224B94 001EE154  41 82 00 10 */	beq .L_80224BA4
/* 80224B98 001EE158  2C 04 00 00 */	cmpwi r4, 0x0
/* 80224B9C 001EE15C  40 81 00 08 */	ble .L_80224BA4
/* 80224BA0 001EE160  48 21 00 8D */	bl __dl__FPv
.L_80224BA4:
/* 80224BA4 001EE164  7F E3 FB 78 */	mr r3, r31
/* 80224BA8 001EE168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224BAC 001EE16C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224BB0 001EE170  7C 08 03 A6 */	mtlr r0
/* 80224BB4 001EE174  38 21 00 10 */	addi r1, r1, 0x10
/* 80224BB8 001EE178  4E 80 00 20 */	blr
.endfn fn_80224B7C

.fn fn_80224BBC, local
/* 80224BBC 001EE17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224BC0 001EE180  7C 08 02 A6 */	mflr r0
/* 80224BC4 001EE184  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224BC8 001EE188  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 80224BCC 001EE18C  3F E0 80 50 */	lis r31, lbl_80504CFC@ha
/* 80224BD0 001EE190  3B FF 4C FC */	addi r31, r31, lbl_80504CFC@l
/* 80224BD4 001EE194  7C 7E 1B 78 */	mr r30, r3
/* 80224BD8 001EE198  38 BF 01 46 */	addi r5, r31, 0x146
/* 80224BDC 001EE19C  80 83 00 08 */	lwz r4, 0x8(r3)
/* 80224BE0 001EE1A0  38 63 00 0C */	addi r3, r3, 0xc
/* 80224BE4 001EE1A4  4B F1 22 A1 */	bl fn_80136E84
/* 80224BE8 001EE1A8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80224BEC 001EE1AC  38 9E 00 10 */	addi r4, r30, 0x10
/* 80224BF0 001EE1B0  80 BE 00 08 */	lwz r5, 0x8(r30)
/* 80224BF4 001EE1B4  38 DF 01 5C */	addi r6, r31, 0x15c
/* 80224BF8 001EE1B8  4B F1 23 11 */	bl fn_80136F08
/* 80224BFC 001EE1BC  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80224C00 001EE1C0  38 A0 00 01 */	li r5, 0x1
/* 80224C04 001EE1C4  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80224C08 001EE1C8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224C0C 001EE1CC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80224C10 001EE1D0  7D 89 03 A6 */	mtctr r12
/* 80224C14 001EE1D4  4E 80 04 21 */	bctrl
/* 80224C18 001EE1D8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80224C1C 001EE1DC  38 80 00 00 */	li r4, 0x0
/* 80224C20 001EE1E0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224C24 001EE1E4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80224C28 001EE1E8  7D 89 03 A6 */	mtctr r12
/* 80224C2C 001EE1EC  4E 80 04 21 */	bctrl
/* 80224C30 001EE1F0  38 00 00 01 */	li r0, 0x1
/* 80224C34 001EE1F4  98 1E 00 14 */	stb r0, 0x14(r30)
/* 80224C38 001EE1F8  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 80224C3C 001EE1FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224C40 001EE200  7C 08 03 A6 */	mtlr r0
/* 80224C44 001EE204  38 21 00 10 */	addi r1, r1, 0x10
/* 80224C48 001EE208  4E 80 00 20 */	blr
.endfn fn_80224BBC
