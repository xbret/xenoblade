.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn func_80225A98, global
/* 80225A98 001EF058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225A9C 001EF05C  7C 08 02 A6 */	mflr r0
/* 80225AA0 001EF060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225AA4 001EF064  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80225AA8 001EF068  7C 7F 1B 78 */	mr r31, r3
/* 80225AAC 001EF06C  4B FF E2 95 */	bl func_80223D40
/* 80225AB0 001EF070  3C 80 80 54 */	lis r4, __vt__CMCEffUpRank@ha
/* 80225AB4 001EF074  7F E3 FB 78 */	mr r3, r31
/* 80225AB8 001EF078  38 84 98 00 */	addi r4, r4, __vt__CMCEffUpRank@l
/* 80225ABC 001EF07C  90 9F 00 00 */	stw r4, 0(r31)
/* 80225AC0 001EF080  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80225AC4 001EF084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225AC8 001EF088  7C 08 03 A6 */	mtlr r0
/* 80225ACC 001EF08C  38 21 00 10 */	addi r1, r1, 0x10
/* 80225AD0 001EF090  4E 80 00 20 */	blr 
.endfn func_80225A98

.fn func_80225AD4, global
/* 80225AD4 001EF094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225AD8 001EF098  7C 08 02 A6 */	mflr r0
/* 80225ADC 001EF09C  2C 03 00 00 */	cmpwi r3, 0
/* 80225AE0 001EF0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225AE4 001EF0A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80225AE8 001EF0A8  7C 7F 1B 78 */	mr r31, r3
/* 80225AEC 001EF0AC  41 82 00 10 */	beq .L_80225AFC
/* 80225AF0 001EF0B0  2C 04 00 00 */	cmpwi r4, 0
/* 80225AF4 001EF0B4  40 81 00 08 */	ble .L_80225AFC
/* 80225AF8 001EF0B8  48 20 F1 35 */	bl __dl__FPv
.L_80225AFC:
/* 80225AFC 001EF0BC  7F E3 FB 78 */	mr r3, r31
/* 80225B00 001EF0C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80225B04 001EF0C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225B08 001EF0C8  7C 08 03 A6 */	mtlr r0
/* 80225B0C 001EF0CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80225B10 001EF0D0  4E 80 00 20 */	blr 
.endfn func_80225AD4

.fn func_80225B14, global
/* 80225B14 001EF0D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225B18 001EF0D8  7C 08 02 A6 */	mflr r0
/* 80225B1C 001EF0DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225B20 001EF0E0  BF C1 00 08 */	stmw r30, 8(r1)
/* 80225B24 001EF0E4  3F E0 80 50 */	lis r31, CMCEffCrystal_strpool@ha
/* 80225B28 001EF0E8  3B FF 4C FC */	addi r31, r31, CMCEffCrystal_strpool@l
/* 80225B2C 001EF0EC  7C 7E 1B 78 */	mr r30, r3
/* 80225B30 001EF0F0  38 BF 03 48 */	addi r5, r31, 0x348
/* 80225B34 001EF0F4  80 83 00 08 */	lwz r4, 8(r3)
/* 80225B38 001EF0F8  38 63 00 0C */	addi r3, r3, 0xc
/* 80225B3C 001EF0FC  4B F1 13 49 */	bl func_80136E84
/* 80225B40 001EF100  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80225B44 001EF104  38 9E 00 10 */	addi r4, r30, 0x10
/* 80225B48 001EF108  80 BE 00 08 */	lwz r5, 8(r30)
/* 80225B4C 001EF10C  38 DF 03 5E */	addi r6, r31, 0x35e
/* 80225B50 001EF110  4B F1 13 B9 */	bl func_80136F08
/* 80225B54 001EF114  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80225B58 001EF118  38 A0 00 01 */	li r5, 1
/* 80225B5C 001EF11C  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80225B60 001EF120  81 83 00 00 */	lwz r12, 0(r3)
/* 80225B64 001EF124  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80225B68 001EF128  7D 89 03 A6 */	mtctr r12
/* 80225B6C 001EF12C  4E 80 04 21 */	bctrl 
/* 80225B70 001EF130  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80225B74 001EF134  38 80 00 00 */	li r4, 0
/* 80225B78 001EF138  81 83 00 00 */	lwz r12, 0(r3)
/* 80225B7C 001EF13C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80225B80 001EF140  7D 89 03 A6 */	mtctr r12
/* 80225B84 001EF144  4E 80 04 21 */	bctrl 
/* 80225B88 001EF148  38 00 00 01 */	li r0, 1
/* 80225B8C 001EF14C  98 1E 00 14 */	stb r0, 0x14(r30)
/* 80225B90 001EF150  BB C1 00 08 */	lmw r30, 8(r1)
/* 80225B94 001EF154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225B98 001EF158  7C 08 03 A6 */	mtlr r0
/* 80225B9C 001EF15C  38 21 00 10 */	addi r1, r1, 0x10
/* 80225BA0 001EF160  4E 80 00 20 */	blr 
.endfn func_80225B14

.fn func_80225BA4, global
/* 80225BA4 001EF164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225BA8 001EF168  7C 08 02 A6 */	mflr r0
/* 80225BAC 001EF16C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225BB0 001EF170  4B FF E3 75 */	bl func_80223F24
/* 80225BB4 001EF174  38 60 00 8D */	li r3, 0x8d
/* 80225BB8 001EF178  4B F1 24 C1 */	bl func_80138078
/* 80225BBC 001EF17C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225BC0 001EF180  7C 08 03 A6 */	mtlr r0
/* 80225BC4 001EF184  38 21 00 10 */	addi r1, r1, 0x10
/* 80225BC8 001EF188  4E 80 00 20 */	blr 
.endfn func_80225BA4

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80015164", local
.hidden "@etb_80015164"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80015164"

.obj "@etb_8001516C", local
.hidden "@etb_8001516C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001516C"

.obj "@etb_80015174", local
.hidden "@etb_80015174"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80015174"

.obj "@etb_8001517C", local
.hidden "@etb_8001517C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001517C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002E0C4", local
.hidden "@eti_8002E0C4"
	.4byte func_80225A98
	.4byte 0x0000003C
	.4byte "@etb_80015164"
.endobj "@eti_8002E0C4"

.obj "@eti_8002E0D0", local
.hidden "@eti_8002E0D0"
	.4byte func_80225AD4
	.4byte 0x00000040
	.4byte "@etb_8001516C"
.endobj "@eti_8002E0D0"

.obj "@eti_8002E0DC", local
.hidden "@eti_8002E0DC"
	.4byte func_80225B14
	.4byte 0x00000090
	.4byte "@etb_80015174"
.endobj "@eti_8002E0DC"

.obj "@eti_8002E0E8", local
.hidden "@eti_8002E0E8"
	.4byte func_80225BA4
	.4byte 0x00000028
	.4byte "@etb_8001517C"
.endobj "@eti_8002E0E8"