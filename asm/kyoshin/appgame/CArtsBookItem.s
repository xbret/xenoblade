.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.global func_801C5380
func_801C5380:
/* 801C5380 0018E940  3C 80 80 53 */	lis r4, __vt__CArtsBookItem@ha
/* 801C5384 0018E944  38 00 00 00 */	li r0, 0
/* 801C5388 0018E948  38 84 7F 90 */	addi r4, r4, __vt__CArtsBookItem@l
/* 801C538C 0018E94C  B0 03 08 04 */	sth r0, 0x804(r3)
/* 801C5390 0018E950  90 83 00 00 */	stw r4, 0(r3)
/* 801C5394 0018E954  4E 80 00 20 */	blr 

.global func_801C5398
func_801C5398:
/* 801C5398 0018E958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C539C 0018E95C  7C 08 02 A6 */	mflr r0
/* 801C53A0 0018E960  2C 03 00 00 */	cmpwi r3, 0
/* 801C53A4 0018E964  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C53A8 0018E968  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C53AC 0018E96C  7C 7F 1B 78 */	mr r31, r3
/* 801C53B0 0018E970  41 82 00 10 */	beq lbl_801C53C0
/* 801C53B4 0018E974  2C 04 00 00 */	cmpwi r4, 0
/* 801C53B8 0018E978  40 81 00 08 */	ble lbl_801C53C0
/* 801C53BC 0018E97C  48 26 F8 71 */	bl __dl__FPv
lbl_801C53C0:
/* 801C53C0 0018E980  7F E3 FB 78 */	mr r3, r31
/* 801C53C4 0018E984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C53C8 0018E988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C53CC 0018E98C  7C 08 03 A6 */	mtlr r0
/* 801C53D0 0018E990  38 21 00 10 */	addi r1, r1, 0x10
/* 801C53D4 0018E994  4E 80 00 20 */	blr 

.global func_801C53D8
func_801C53D8:
/* 801C53D8 0018E998  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C53DC 0018E99C  7C 08 02 A6 */	mflr r0
/* 801C53E0 0018E9A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C53E4 0018E9A4  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 801C53E8 0018E9A8  7C 7B 1B 78 */	mr r27, r3
/* 801C53EC 0018E9AC  83 AD A8 80 */	lwz r29, lbl_80666A00@sda21(r13)
/* 801C53F0 0018E9B0  7F A3 EB 78 */	mr r3, r29
/* 801C53F4 0018E9B4  4B E7 5D F9 */	bl func_8003B1EC
/* 801C53F8 0018E9B8  3F E0 80 50 */	lis r31, lbl_80500E74@ha
/* 801C53FC 0018E9BC  7C 7E 1B 78 */	mr r30, r3
/* 801C5400 0018E9C0  3B FF 0E 74 */	addi r31, r31, lbl_80500E74@l
/* 801C5404 0018E9C4  3B 80 00 01 */	li r28, 1
/* 801C5408 0018E9C8  48 00 00 EC */	b lbl_801C54F4
lbl_801C540C:
/* 801C540C 0018E9CC  7F A3 EB 78 */	mr r3, r29
/* 801C5410 0018E9D0  38 9F 01 09 */	addi r4, r31, 0x109
/* 801C5414 0018E9D4  57 85 06 3E */	clrlwi r5, r28, 0x18
/* 801C5418 0018E9D8  4B F7 0D D1 */	bl func_801361E8
/* 801C541C 0018E9DC  7C 78 1B 78 */	mr r24, r3
/* 801C5420 0018E9E0  7F A3 EB 78 */	mr r3, r29
/* 801C5424 0018E9E4  38 9F 01 15 */	addi r4, r31, 0x115
/* 801C5428 0018E9E8  57 85 06 3E */	clrlwi r5, r28, 0x18
/* 801C542C 0018E9EC  4B F7 0D BD */	bl func_801361E8
/* 801C5430 0018E9F0  7C 79 1B 78 */	mr r25, r3
/* 801C5434 0018E9F4  7F A3 EB 78 */	mr r3, r29
/* 801C5438 0018E9F8  38 9F 01 1D */	addi r4, r31, 0x11d
/* 801C543C 0018E9FC  57 85 06 3E */	clrlwi r5, r28, 0x18
/* 801C5440 0018EA00  4B F7 0D A9 */	bl func_801361E8
/* 801C5444 0018EA04  7C 60 1B 78 */	mr r0, r3
/* 801C5448 0018EA08  38 7F 01 26 */	addi r3, r31, 0x126
/* 801C544C 0018EA0C  38 9F 01 2E */	addi r4, r31, 0x12e
/* 801C5450 0018EA10  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 801C5454 0018EA14  4B F7 0B B9 */	bl func_8013600C
/* 801C5458 0018EA18  7C 7A 1B 78 */	mr r26, r3
/* 801C545C 0018EA1C  57 23 06 3E */	clrlwi r3, r25, 0x18
/* 801C5460 0018EA20  4B ED 98 3D */	bl func_8009EC9C
/* 801C5464 0018EA24  7C 79 1B 78 */	mr r25, r3
/* 801C5468 0018EA28  4B ED DE 55 */	bl func_800A32BC
/* 801C546C 0018EA2C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801C5470 0018EA30  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 801C5474 0018EA34  1C 83 00 49 */	mulli r4, r3, 0x49
/* 801C5478 0018EA38  2C 00 00 01 */	cmpwi r0, 1
/* 801C547C 0018EA3C  57 43 0D FC */	rlwinm r3, r26, 1, 0x17, 0x1e
/* 801C5480 0018EA40  7C 99 22 14 */	add r4, r25, r4
/* 801C5484 0018EA44  7C 64 1A 14 */	add r3, r4, r3
/* 801C5488 0018EA48  41 82 00 18 */	beq lbl_801C54A0
/* 801C548C 0018EA4C  2C 00 00 02 */	cmpwi r0, 2
/* 801C5490 0018EA50  41 82 00 2C */	beq lbl_801C54BC
/* 801C5494 0018EA54  2C 00 00 03 */	cmpwi r0, 3
/* 801C5498 0018EA58  41 82 00 40 */	beq lbl_801C54D8
/* 801C549C 0018EA5C  48 00 00 54 */	b lbl_801C54F0
lbl_801C54A0:
/* 801C54A0 0018EA60  88 03 00 E8 */	lbz r0, 0xe8(r3)
/* 801C54A4 0018EA64  2C 00 00 00 */	cmpwi r0, 0
/* 801C54A8 0018EA68  41 82 00 48 */	beq lbl_801C54F0
/* 801C54AC 0018EA6C  7F 63 DB 78 */	mr r3, r27
/* 801C54B0 0018EA70  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 801C54B4 0018EA74  4B FF FC A5 */	bl func_801C5158
/* 801C54B8 0018EA78  48 00 00 38 */	b lbl_801C54F0
lbl_801C54BC:
/* 801C54BC 0018EA7C  88 03 00 E9 */	lbz r0, 0xe9(r3)
/* 801C54C0 0018EA80  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 801C54C4 0018EA84  41 82 00 2C */	beq lbl_801C54F0
/* 801C54C8 0018EA88  7F 63 DB 78 */	mr r3, r27
/* 801C54CC 0018EA8C  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 801C54D0 0018EA90  4B FF FC 89 */	bl func_801C5158
/* 801C54D4 0018EA94  48 00 00 1C */	b lbl_801C54F0
lbl_801C54D8:
/* 801C54D8 0018EA98  88 03 00 E9 */	lbz r0, 0xe9(r3)
/* 801C54DC 0018EA9C  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 801C54E0 0018EAA0  41 82 00 10 */	beq lbl_801C54F0
/* 801C54E4 0018EAA4  7F 63 DB 78 */	mr r3, r27
/* 801C54E8 0018EAA8  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 801C54EC 0018EAAC  4B FF FC 6D */	bl func_801C5158
lbl_801C54F0:
/* 801C54F0 0018EAB0  3B 9C 00 01 */	addi r28, r28, 1
lbl_801C54F4:
/* 801C54F4 0018EAB4  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801C54F8 0018EAB8  7C 00 F0 00 */	cmpw r0, r30
/* 801C54FC 0018EABC  40 81 FF 10 */	ble lbl_801C540C
/* 801C5500 0018EAC0  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 801C5504 0018EAC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C5508 0018EAC8  7C 08 03 A6 */	mtlr r0
/* 801C550C 0018EACC  38 21 00 30 */	addi r1, r1, 0x30
/* 801C5510 0018EAD0  4E 80 00 20 */	blr 