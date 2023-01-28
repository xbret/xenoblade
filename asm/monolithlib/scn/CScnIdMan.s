.include "macros.inc"
.file "monolithlib/scn/CScnIdMan.o"

# 0x8001F6B8 - 0x8001F700
.section extab, "a"
.balign 4

.obj "@etb_8001F6B8", local
.hidden "@etb_8001F6B8"
	.4byte 0x08080000
	.4byte 0x00000044
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte fn_8004031C
.endobj "@etb_8001F6B8"

.obj "@etb_8001F6D4", local
.hidden "@etb_8001F6D4"
	.4byte 0x10080000
	.4byte 0x0000003C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte fn_8004031C
.endobj "@etb_8001F6D4"

.obj "@etb_8001F6F0", local
.hidden "@etb_8001F6F0"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001F6F0"

.obj "@etb_8001F6F8", local
.hidden "@etb_8001F6F8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001F6F8"

# 0x80037190 - 0x800371C0
.section extabindex, "a"
.balign 4

.obj "@eti_80037190", local
.hidden "@eti_80037190"
	.4byte fn_8049E458
	.4byte 0x0000005C
	.4byte "@etb_8001F6B8"
.endobj "@eti_80037190"

.obj "@eti_8003719C", local
.hidden "@eti_8003719C"
	.4byte fn_8049E4B4
	.4byte 0x00000068
	.4byte "@etb_8001F6D4"
.endobj "@eti_8003719C"

.obj "@eti_800371A8", local
.hidden "@eti_800371A8"
	.4byte fn_8049E51C
	.4byte 0x00000054
	.4byte "@etb_8001F6F0"
.endobj "@eti_800371A8"

.obj "@eti_800371B4", local
.hidden "@eti_800371B4"
	.4byte fn_8049E570
	.4byte 0x0000006C
	.4byte "@etb_8001F6F8"
.endobj "@eti_800371B4"

# 0x8049E458 - 0x8049E5DC
.text
.balign 4

.fn fn_8049E458, local
/* 8049E458 00467A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049E45C 00467A1C  7C 08 02 A6 */	mflr r0
/* 8049E460 00467A20  3C C0 80 57 */	lis r6, __vt__CScnIdMan@ha
/* 8049E464 00467A24  7C 87 23 78 */	mr r7, r4
/* 8049E468 00467A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049E46C 00467A2C  38 00 00 00 */	li r0, 0x0
/* 8049E470 00467A30  38 C6 24 C8 */	addi r6, r6, __vt__CScnIdMan@l
/* 8049E474 00467A34  38 A0 00 06 */	li r5, 0x6
/* 8049E478 00467A38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049E47C 00467A3C  7C 7F 1B 78 */	mr r31, r3
/* 8049E480 00467A40  90 83 00 04 */	stw r4, 0x4(r3)
/* 8049E484 00467A44  7F E4 FB 78 */	mr r4, r31
/* 8049E488 00467A48  90 C3 00 00 */	stw r6, 0x0(r3)
/* 8049E48C 00467A4C  38 C0 00 00 */	li r6, 0x0
/* 8049E490 00467A50  98 03 00 08 */	stb r0, 0x8(r3)
/* 8049E494 00467A54  7C E3 3B 78 */	mr r3, r7
/* 8049E498 00467A58  4B FF 7A 1D */	bl fn_80495EB4
/* 8049E49C 00467A5C  7F E3 FB 78 */	mr r3, r31
/* 8049E4A0 00467A60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049E4A4 00467A64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049E4A8 00467A68  7C 08 03 A6 */	mtlr r0
/* 8049E4AC 00467A6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8049E4B0 00467A70  4E 80 00 20 */	blr
.endfn fn_8049E458

.fn fn_8049E4B4, local
/* 8049E4B4 00467A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049E4B8 00467A78  7C 08 02 A6 */	mflr r0
/* 8049E4BC 00467A7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8049E4C0 00467A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049E4C4 00467A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049E4C8 00467A88  7C 9F 23 78 */	mr r31, r4
/* 8049E4CC 00467A8C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8049E4D0 00467A90  7C 7E 1B 78 */	mr r30, r3
/* 8049E4D4 00467A94  41 82 00 2C */	beq .L_8049E500
/* 8049E4D8 00467A98  3C A0 80 57 */	lis r5, __vt__CScnIdMan@ha
/* 8049E4DC 00467A9C  7F C4 F3 78 */	mr r4, r30
/* 8049E4E0 00467AA0  38 A5 24 C8 */	addi r5, r5, __vt__CScnIdMan@l
/* 8049E4E4 00467AA4  90 A3 00 00 */	stw r5, 0x0(r3)
/* 8049E4E8 00467AA8  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8049E4EC 00467AAC  4B FF 7A 65 */	bl fn_80495F50
/* 8049E4F0 00467AB0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8049E4F4 00467AB4  40 81 00 0C */	ble .L_8049E500
/* 8049E4F8 00467AB8  7F C3 F3 78 */	mr r3, r30
/* 8049E4FC 00467ABC  4B F9 67 31 */	bl __dl__FPv
.L_8049E500:
/* 8049E500 00467AC0  7F C3 F3 78 */	mr r3, r30
/* 8049E504 00467AC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049E508 00467AC8  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8049E50C 00467ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049E510 00467AD0  7C 08 03 A6 */	mtlr r0
/* 8049E514 00467AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8049E518 00467AD8  4E 80 00 20 */	blr
.endfn fn_8049E4B4

.fn fn_8049E51C, local
/* 8049E51C 00467ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049E520 00467AE0  7C 08 02 A6 */	mflr r0
/* 8049E524 00467AE4  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8049E528 00467AE8  38 80 00 05 */	li r4, 0x5
/* 8049E52C 00467AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049E530 00467AF0  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8049E534 00467AF4  4B FE E1 65 */	bl fn_8048C698
/* 8049E538 00467AF8  80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8049E53C 00467AFC  38 80 00 00 */	li r4, 0x0
/* 8049E540 00467B00  80 65 00 00 */	lwz r3, 0x0(r5)
/* 8049E544 00467B04  48 00 00 0C */	b .L_8049E550
.L_8049E548:
/* 8049E548 00467B08  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8049E54C 00467B0C  38 84 00 01 */	addi r4, r4, 0x1
.L_8049E550:
/* 8049E550 00467B10  7C 03 28 40 */	cmplw r3, r5
/* 8049E554 00467B14  40 82 FF F4 */	bne .L_8049E548
/* 8049E558 00467B18  7C 80 00 34 */	cntlzw r0, r4
/* 8049E55C 00467B1C  54 03 D9 7E */	srwi r3, r0, 5
/* 8049E560 00467B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049E564 00467B24  7C 08 03 A6 */	mtlr r0
/* 8049E568 00467B28  38 21 00 10 */	addi r1, r1, 0x10
/* 8049E56C 00467B2C  4E 80 00 20 */	blr
.endfn fn_8049E51C

.fn fn_8049E570, local
/* 8049E570 00467B30  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8049E574 00467B34  7C 08 02 A6 */	mflr r0
/* 8049E578 00467B38  90 01 00 54 */	stw r0, 0x54(r1)
/* 8049E57C 00467B3C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8049E580 00467B40  7C 7F 1B 78 */	mr r31, r3
/* 8049E584 00467B44  88 03 00 08 */	lbz r0, 0x8(r3)
/* 8049E588 00467B48  2C 00 00 00 */	cmpwi r0, 0x0
/* 8049E58C 00467B4C  41 82 00 3C */	beq .L_8049E5C8
/* 8049E590 00467B50  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8049E594 00467B54  38 80 FF FF */	li r4, -0x1
/* 8049E598 00467B58  4B FF 7C CD */	bl fn_80496264
/* 8049E59C 00467B5C  7C 64 1B 78 */	mr r4, r3
/* 8049E5A0 00467B60  38 61 00 08 */	addi r3, r1, 0x8
/* 8049E5A4 00467B64  4B FF D1 C1 */	bl fn_8049B764
/* 8049E5A8 00467B68  80 7F 00 04 */	lwz r3, 0x4(r31)
/* 8049E5AC 00467B6C  38 80 FF FF */	li r4, -0x1
/* 8049E5B0 00467B70  4B FF 7C 25 */	bl fn_804961D4
/* 8049E5B4 00467B74  7C 7F 1B 78 */	mr r31, r3
/* 8049E5B8 00467B78  48 01 E4 35 */	bl fn_804BC9EC
/* 8049E5BC 00467B7C  7F E4 FB 78 */	mr r4, r31
/* 8049E5C0 00467B80  38 A1 00 08 */	addi r5, r1, 0x8
/* 8049E5C4 00467B84  48 01 E6 B5 */	bl fn_804BCC78
.L_8049E5C8:
/* 8049E5C8 00467B88  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8049E5CC 00467B8C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8049E5D0 00467B90  7C 08 03 A6 */	mtlr r0
/* 8049E5D4 00467B94  38 21 00 50 */	addi r1, r1, 0x50
/* 8049E5D8 00467B98  4E 80 00 20 */	blr
.endfn fn_8049E570

# 0x80527B60 - 0x80527B70
.rodata
.balign 8

.obj CScnIdMan_typestr, global
	.4byte 0x4353636E
	.4byte 0x49644D61
	.4byte 0x6E000000
	.4byte 0x00000000

# 0x805724C8 - 0x805724D8
.data
.balign 8

.obj __vt__CScnIdMan, global
	.4byte __RTTI__CScnIdMan
	.4byte 0x00000000
	.4byte fn_8049E4B4
	.4byte fn_8049E570

# 0x80666398 - 0x806663A0
.section .sdata, "wa"
.balign 8

.obj __RTTI__CScnIdMan, global
	.4byte CScnIdMan_typestr
	.4byte 0x00000000
