.include "macros.inc"
.file "kyoshin/appgame/makecrystal/CMCEffUpRed.o"

# 0x80014FB4 - 0x80014FD4
.section extab, "a"
.balign 4

.obj "@etb_80014FB4", local
.hidden "@etb_80014FB4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014FB4"

.obj "@etb_80014FBC", local
.hidden "@etb_80014FBC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80014FBC"

.obj "@etb_80014FC4", local
.hidden "@etb_80014FC4"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80014FC4"

.obj "@etb_80014FCC", local
.hidden "@etb_80014FCC"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80014FCC"

# 0x8002DE3C - 0x8002DE6C
.section extabindex, "a"
.balign 4

.obj "@eti_8002DE3C", local
.hidden "@eti_8002DE3C"
	.4byte fn_80223F90
	.4byte 0x0000003C
	.4byte "@etb_80014FB4"
.endobj "@eti_8002DE3C"

.obj "@eti_8002DE48", local
.hidden "@eti_8002DE48"
	.4byte fn_80223FCC
	.4byte 0x00000040
	.4byte "@etb_80014FBC"
.endobj "@eti_8002DE48"

.obj "@eti_8002DE54", local
.hidden "@eti_8002DE54"
	.4byte fn_8022400C
	.4byte 0x00000090
	.4byte "@etb_80014FC4"
.endobj "@eti_8002DE54"

.obj "@eti_8002DE60", local
.hidden "@eti_8002DE60"
	.4byte fn_8022409C
	.4byte 0x00000028
	.4byte "@etb_80014FCC"
.endobj "@eti_8002DE60"

# 0x80223F90 - 0x802240C4
.text
.balign 4

.fn fn_80223F90, local
/* 80223F90 001ED550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223F94 001ED554  7C 08 02 A6 */	mflr r0
/* 80223F98 001ED558  90 01 00 14 */	stw r0, 0x14(r1)
/* 80223F9C 001ED55C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80223FA0 001ED560  7C 7F 1B 78 */	mr r31, r3
/* 80223FA4 001ED564  4B FF FD 9D */	bl fn_80223D40
/* 80223FA8 001ED568  3C 80 80 54 */	lis r4, __vt__CMCEffUpRed@ha
/* 80223FAC 001ED56C  7F E3 FB 78 */	mr r3, r31
/* 80223FB0 001ED570  38 84 98 AC */	addi r4, r4, __vt__CMCEffUpRed@l
/* 80223FB4 001ED574  90 9F 00 00 */	stw r4, 0x0(r31)
/* 80223FB8 001ED578  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80223FBC 001ED57C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80223FC0 001ED580  7C 08 03 A6 */	mtlr r0
/* 80223FC4 001ED584  38 21 00 10 */	addi r1, r1, 0x10
/* 80223FC8 001ED588  4E 80 00 20 */	blr
.endfn fn_80223F90

.fn fn_80223FCC, local
/* 80223FCC 001ED58C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80223FD0 001ED590  7C 08 02 A6 */	mflr r0
/* 80223FD4 001ED594  2C 03 00 00 */	cmpwi r3, 0x0
/* 80223FD8 001ED598  90 01 00 14 */	stw r0, 0x14(r1)
/* 80223FDC 001ED59C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80223FE0 001ED5A0  7C 7F 1B 78 */	mr r31, r3
/* 80223FE4 001ED5A4  41 82 00 10 */	beq .L_80223FF4
/* 80223FE8 001ED5A8  2C 04 00 00 */	cmpwi r4, 0x0
/* 80223FEC 001ED5AC  40 81 00 08 */	ble .L_80223FF4
/* 80223FF0 001ED5B0  48 21 0C 3D */	bl __dl__FPv
.L_80223FF4:
/* 80223FF4 001ED5B4  7F E3 FB 78 */	mr r3, r31
/* 80223FF8 001ED5B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80223FFC 001ED5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224000 001ED5C0  7C 08 03 A6 */	mtlr r0
/* 80224004 001ED5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80224008 001ED5C8  4E 80 00 20 */	blr
.endfn fn_80223FCC

.fn fn_8022400C, local
/* 8022400C 001ED5CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224010 001ED5D0  7C 08 02 A6 */	mflr r0
/* 80224014 001ED5D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224018 001ED5D8  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 8022401C 001ED5DC  3F E0 80 50 */	lis r31, lbl_80504CFC@ha
/* 80224020 001ED5E0  3B FF 4C FC */	addi r31, r31, lbl_80504CFC@l
/* 80224024 001ED5E4  7C 7E 1B 78 */	mr r30, r3
/* 80224028 001ED5E8  38 BF 00 31 */	addi r5, r31, 0x31
/* 8022402C 001ED5EC  80 83 00 08 */	lwz r4, 0x8(r3)
/* 80224030 001ED5F0  38 63 00 0C */	addi r3, r3, 0xc
/* 80224034 001ED5F4  4B F1 2E 51 */	bl fn_80136E84
/* 80224038 001ED5F8  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8022403C 001ED5FC  38 9E 00 10 */	addi r4, r30, 0x10
/* 80224040 001ED600  80 BE 00 08 */	lwz r5, 0x8(r30)
/* 80224044 001ED604  38 DF 00 48 */	addi r6, r31, 0x48
/* 80224048 001ED608  4B F1 2E C1 */	bl fn_80136F08
/* 8022404C 001ED60C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80224050 001ED610  38 A0 00 01 */	li r5, 0x1
/* 80224054 001ED614  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80224058 001ED618  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8022405C 001ED61C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80224060 001ED620  7D 89 03 A6 */	mtctr r12
/* 80224064 001ED624  4E 80 04 21 */	bctrl
/* 80224068 001ED628  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8022406C 001ED62C  38 80 00 00 */	li r4, 0x0
/* 80224070 001ED630  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224074 001ED634  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80224078 001ED638  7D 89 03 A6 */	mtctr r12
/* 8022407C 001ED63C  4E 80 04 21 */	bctrl
/* 80224080 001ED640  38 00 00 01 */	li r0, 0x1
/* 80224084 001ED644  98 1E 00 14 */	stb r0, 0x14(r30)
/* 80224088 001ED648  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 8022408C 001ED64C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224090 001ED650  7C 08 03 A6 */	mtlr r0
/* 80224094 001ED654  38 21 00 10 */	addi r1, r1, 0x10
/* 80224098 001ED658  4E 80 00 20 */	blr
.endfn fn_8022400C

.fn fn_8022409C, local
/* 8022409C 001ED65C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802240A0 001ED660  7C 08 02 A6 */	mflr r0
/* 802240A4 001ED664  90 01 00 14 */	stw r0, 0x14(r1)
/* 802240A8 001ED668  4B FF FE 7D */	bl fn_80223F24
/* 802240AC 001ED66C  38 60 00 8C */	li r3, 0x8c
/* 802240B0 001ED670  4B F1 3F C9 */	bl fn_80138078
/* 802240B4 001ED674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802240B8 001ED678  7C 08 03 A6 */	mtlr r0
/* 802240BC 001ED67C  38 21 00 10 */	addi r1, r1, 0x10
/* 802240C0 001ED680  4E 80 00 20 */	blr
.endfn fn_8022409C
