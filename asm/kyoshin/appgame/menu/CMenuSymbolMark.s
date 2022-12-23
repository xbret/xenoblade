.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8011D424
func_8011D424:
/* 8011D424 000E69E4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8011D428 000E69E8  7C 08 02 A6 */	mflr r0
/* 8011D42C 000E69EC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8011D430 000E69F0  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8011D434 000E69F4  7C 7F 1B 78 */	mr r31, r3
/* 8011D438 000E69F8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8011D43C 000E69FC  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8011D440 000E6A00  93 81 00 50 */	stw r28, 0x50(r1)
/* 8011D444 000E6A04  7C 9C 23 78 */	mr r28, r4
/* 8011D448 000E6A08  48 32 75 D1 */	bl __ct__8CProcessFv
/* 8011D44C 000E6A0C  3C 60 80 53 */	lis r3, __vt__CTTask_IUICf@ha
/* 8011D450 000E6A10  3C A0 80 53 */	lis r5, __vt__CMenuSymbolMark@ha
/* 8011D454 000E6A14  38 63 F7 40 */	addi r3, r3, __vt__CTTask_IUICf@l
/* 8011D458 000E6A18  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8011D45C 000E6A1C  3D 00 80 51 */	lis r8, lbl_8050CE10@ha
/* 8011D460 000E6A20  38 A5 05 C8 */	addi r5, r5, __vt__CMenuSymbolMark@l
/* 8011D464 000E6A24  84 C8 CE 10 */	lwzu r6, lbl_8050CE10@l(r8)
/* 8011D468 000E6A28  38 85 00 24 */	addi r4, r5, 0x24
/* 8011D46C 000E6A2C  3B C0 00 00 */	li r30, 0
/* 8011D470 000E6A30  38 7F 00 64 */	addi r3, r31, 0x64
/* 8011D474 000E6A34  80 08 00 04 */	lwz r0, 4(r8)
/* 8011D478 000E6A38  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8011D47C 000E6A3C  38 05 00 AC */	addi r0, r5, 0xac
/* 8011D480 000E6A40  90 DF 00 3C */	stw r6, 0x3c(r31)
/* 8011D484 000E6A44  80 C8 00 08 */	lwz r6, 8(r8)
/* 8011D488 000E6A48  90 DF 00 44 */	stw r6, 0x44(r31)
/* 8011D48C 000E6A4C  80 E8 00 00 */	lwz r7, 0(r8)
/* 8011D490 000E6A50  80 C8 00 04 */	lwz r6, 4(r8)
/* 8011D494 000E6A54  90 DF 00 4C */	stw r6, 0x4c(r31)
/* 8011D498 000E6A58  90 FF 00 48 */	stw r7, 0x48(r31)
/* 8011D49C 000E6A5C  80 C8 00 08 */	lwz r6, 8(r8)
/* 8011D4A0 000E6A60  90 DF 00 50 */	stw r6, 0x50(r31)
/* 8011D4A4 000E6A64  9B DF 00 54 */	stb r30, 0x54(r31)
/* 8011D4A8 000E6A68  9B DF 00 55 */	stb r30, 0x55(r31)
/* 8011D4AC 000E6A6C  90 BF 00 10 */	stw r5, 0x10(r31)
/* 8011D4B0 000E6A70  90 9F 00 58 */	stw r4, 0x58(r31)
/* 8011D4B4 000E6A74  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 8011D4B8 000E6A78  93 9F 00 60 */	stw r28, 0x60(r31)
/* 8011D4BC 000E6A7C  48 34 20 A9 */	bl func_8045F564
/* 8011D4C0 000E6A80  39 1F 00 94 */	addi r8, r31, 0x94
/* 8011D4C4 000E6A84  38 7F 02 74 */	addi r3, r31, 0x274
/* 8011D4C8 000E6A88  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8011D4CC 000E6A8C  7C 08 18 40 */	cmplw r8, r3
/* 8011D4D0 000E6A90  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8011D4D4 000E6A94  80 01 00 28 */	lwz r0, 0x28(r1)
/* 8011D4D8 000E6A98  93 DF 00 74 */	stw r30, 0x74(r31)
/* 8011D4DC 000E6A9C  93 DF 00 78 */	stw r30, 0x78(r31)
/* 8011D4E0 000E6AA0  93 DF 00 7C */	stw r30, 0x7c(r31)
/* 8011D4E4 000E6AA4  9B DF 00 80 */	stb r30, 0x80(r31)
/* 8011D4E8 000E6AA8  9B DF 00 81 */	stb r30, 0x81(r31)
/* 8011D4EC 000E6AAC  9B DF 00 82 */	stb r30, 0x82(r31)
/* 8011D4F0 000E6AB0  90 BF 00 84 */	stw r5, 0x84(r31)
/* 8011D4F4 000E6AB4  90 9F 00 88 */	stw r4, 0x88(r31)
/* 8011D4F8 000E6AB8  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 8011D4FC 000E6ABC  93 DF 00 90 */	stw r30, 0x90(r31)
/* 8011D500 000E6AC0  40 80 02 00 */	bge lbl_8011D700
/* 8011D504 000E6AC4  38 1F 00 94 */	addi r0, r31, 0x94
/* 8011D508 000E6AC8  38 FF 01 74 */	addi r7, r31, 0x174
/* 8011D50C 000E6ACC  7C 00 18 40 */	cmplw r0, r3
/* 8011D510 000E6AD0  38 60 00 00 */	li r3, 0
/* 8011D514 000E6AD4  38 00 00 00 */	li r0, 0
/* 8011D518 000E6AD8  41 81 00 08 */	bgt lbl_8011D520
/* 8011D51C 000E6ADC  38 60 00 01 */	li r3, 1
lbl_8011D520:
/* 8011D520 000E6AE0  2C 03 00 00 */	cmpwi r3, 0
/* 8011D524 000E6AE4  41 82 00 08 */	beq lbl_8011D52C
/* 8011D528 000E6AE8  38 00 00 01 */	li r0, 1
lbl_8011D52C:
/* 8011D52C 000E6AEC  2C 00 00 00 */	cmpwi r0, 0
/* 8011D530 000E6AF0  41 82 01 74 */	beq lbl_8011D6A4
/* 8011D534 000E6AF4  38 07 00 FF */	addi r0, r7, 0xff
/* 8011D538 000E6AF8  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8011D53C 000E6AFC  7C 08 00 50 */	subf r0, r8, r0
/* 8011D540 000E6B00  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8011D544 000E6B04  54 00 C2 3E */	srwi r0, r0, 8
/* 8011D548 000E6B08  80 61 00 28 */	lwz r3, 0x28(r1)
/* 8011D54C 000E6B0C  38 C0 00 00 */	li r6, 0
/* 8011D550 000E6B10  7C 09 03 A6 */	mtctr r0
/* 8011D554 000E6B14  7C 08 38 40 */	cmplw r8, r7
/* 8011D558 000E6B18  40 80 01 4C */	bge lbl_8011D6A4
lbl_8011D55C:
/* 8011D55C 000E6B1C  90 C8 00 00 */	stw r6, 0(r8)
/* 8011D560 000E6B20  90 C8 00 04 */	stw r6, 4(r8)
/* 8011D564 000E6B24  90 C8 00 08 */	stw r6, 8(r8)
/* 8011D568 000E6B28  98 C8 00 0C */	stb r6, 0xc(r8)
/* 8011D56C 000E6B2C  98 C8 00 0D */	stb r6, 0xd(r8)
/* 8011D570 000E6B30  98 C8 00 0E */	stb r6, 0xe(r8)
/* 8011D574 000E6B34  90 A8 00 10 */	stw r5, 0x10(r8)
/* 8011D578 000E6B38  90 88 00 14 */	stw r4, 0x14(r8)
/* 8011D57C 000E6B3C  90 68 00 18 */	stw r3, 0x18(r8)
/* 8011D580 000E6B40  90 C8 00 1C */	stw r6, 0x1c(r8)
/* 8011D584 000E6B44  90 C8 00 20 */	stw r6, 0x20(r8)
/* 8011D588 000E6B48  90 C8 00 24 */	stw r6, 0x24(r8)
/* 8011D58C 000E6B4C  90 C8 00 28 */	stw r6, 0x28(r8)
/* 8011D590 000E6B50  98 C8 00 2C */	stb r6, 0x2c(r8)
/* 8011D594 000E6B54  98 C8 00 2D */	stb r6, 0x2d(r8)
/* 8011D598 000E6B58  98 C8 00 2E */	stb r6, 0x2e(r8)
/* 8011D59C 000E6B5C  90 A8 00 30 */	stw r5, 0x30(r8)
/* 8011D5A0 000E6B60  90 88 00 34 */	stw r4, 0x34(r8)
/* 8011D5A4 000E6B64  90 68 00 38 */	stw r3, 0x38(r8)
/* 8011D5A8 000E6B68  90 C8 00 3C */	stw r6, 0x3c(r8)
/* 8011D5AC 000E6B6C  90 C8 00 40 */	stw r6, 0x40(r8)
/* 8011D5B0 000E6B70  90 C8 00 44 */	stw r6, 0x44(r8)
/* 8011D5B4 000E6B74  90 C8 00 48 */	stw r6, 0x48(r8)
/* 8011D5B8 000E6B78  98 C8 00 4C */	stb r6, 0x4c(r8)
/* 8011D5BC 000E6B7C  98 C8 00 4D */	stb r6, 0x4d(r8)
/* 8011D5C0 000E6B80  98 C8 00 4E */	stb r6, 0x4e(r8)
/* 8011D5C4 000E6B84  90 A8 00 50 */	stw r5, 0x50(r8)
/* 8011D5C8 000E6B88  90 88 00 54 */	stw r4, 0x54(r8)
/* 8011D5CC 000E6B8C  90 68 00 58 */	stw r3, 0x58(r8)
/* 8011D5D0 000E6B90  90 C8 00 5C */	stw r6, 0x5c(r8)
/* 8011D5D4 000E6B94  90 C8 00 60 */	stw r6, 0x60(r8)
/* 8011D5D8 000E6B98  90 C8 00 64 */	stw r6, 0x64(r8)
/* 8011D5DC 000E6B9C  90 C8 00 68 */	stw r6, 0x68(r8)
/* 8011D5E0 000E6BA0  98 C8 00 6C */	stb r6, 0x6c(r8)
/* 8011D5E4 000E6BA4  98 C8 00 6D */	stb r6, 0x6d(r8)
/* 8011D5E8 000E6BA8  98 C8 00 6E */	stb r6, 0x6e(r8)
/* 8011D5EC 000E6BAC  90 A8 00 70 */	stw r5, 0x70(r8)
/* 8011D5F0 000E6BB0  90 88 00 74 */	stw r4, 0x74(r8)
/* 8011D5F4 000E6BB4  90 68 00 78 */	stw r3, 0x78(r8)
/* 8011D5F8 000E6BB8  90 C8 00 7C */	stw r6, 0x7c(r8)
/* 8011D5FC 000E6BBC  90 C8 00 80 */	stw r6, 0x80(r8)
/* 8011D600 000E6BC0  90 C8 00 84 */	stw r6, 0x84(r8)
/* 8011D604 000E6BC4  90 C8 00 88 */	stw r6, 0x88(r8)
/* 8011D608 000E6BC8  98 C8 00 8C */	stb r6, 0x8c(r8)
/* 8011D60C 000E6BCC  98 C8 00 8D */	stb r6, 0x8d(r8)
/* 8011D610 000E6BD0  98 C8 00 8E */	stb r6, 0x8e(r8)
/* 8011D614 000E6BD4  90 A8 00 90 */	stw r5, 0x90(r8)
/* 8011D618 000E6BD8  90 88 00 94 */	stw r4, 0x94(r8)
/* 8011D61C 000E6BDC  90 68 00 98 */	stw r3, 0x98(r8)
/* 8011D620 000E6BE0  90 C8 00 9C */	stw r6, 0x9c(r8)
/* 8011D624 000E6BE4  90 C8 00 A0 */	stw r6, 0xa0(r8)
/* 8011D628 000E6BE8  90 C8 00 A4 */	stw r6, 0xa4(r8)
/* 8011D62C 000E6BEC  90 C8 00 A8 */	stw r6, 0xa8(r8)
/* 8011D630 000E6BF0  98 C8 00 AC */	stb r6, 0xac(r8)
/* 8011D634 000E6BF4  98 C8 00 AD */	stb r6, 0xad(r8)
/* 8011D638 000E6BF8  98 C8 00 AE */	stb r6, 0xae(r8)
/* 8011D63C 000E6BFC  90 A8 00 B0 */	stw r5, 0xb0(r8)
/* 8011D640 000E6C00  90 88 00 B4 */	stw r4, 0xb4(r8)
/* 8011D644 000E6C04  90 68 00 B8 */	stw r3, 0xb8(r8)
/* 8011D648 000E6C08  90 C8 00 BC */	stw r6, 0xbc(r8)
/* 8011D64C 000E6C0C  90 C8 00 C0 */	stw r6, 0xc0(r8)
/* 8011D650 000E6C10  90 C8 00 C4 */	stw r6, 0xc4(r8)
/* 8011D654 000E6C14  90 C8 00 C8 */	stw r6, 0xc8(r8)
/* 8011D658 000E6C18  98 C8 00 CC */	stb r6, 0xcc(r8)
/* 8011D65C 000E6C1C  98 C8 00 CD */	stb r6, 0xcd(r8)
/* 8011D660 000E6C20  98 C8 00 CE */	stb r6, 0xce(r8)
/* 8011D664 000E6C24  90 A8 00 D0 */	stw r5, 0xd0(r8)
/* 8011D668 000E6C28  90 88 00 D4 */	stw r4, 0xd4(r8)
/* 8011D66C 000E6C2C  90 68 00 D8 */	stw r3, 0xd8(r8)
/* 8011D670 000E6C30  90 C8 00 DC */	stw r6, 0xdc(r8)
/* 8011D674 000E6C34  90 C8 00 E0 */	stw r6, 0xe0(r8)
/* 8011D678 000E6C38  90 C8 00 E4 */	stw r6, 0xe4(r8)
/* 8011D67C 000E6C3C  90 C8 00 E8 */	stw r6, 0xe8(r8)
/* 8011D680 000E6C40  98 C8 00 EC */	stb r6, 0xec(r8)
/* 8011D684 000E6C44  98 C8 00 ED */	stb r6, 0xed(r8)
/* 8011D688 000E6C48  98 C8 00 EE */	stb r6, 0xee(r8)
/* 8011D68C 000E6C4C  90 A8 00 F0 */	stw r5, 0xf0(r8)
/* 8011D690 000E6C50  90 88 00 F4 */	stw r4, 0xf4(r8)
/* 8011D694 000E6C54  90 68 00 F8 */	stw r3, 0xf8(r8)
/* 8011D698 000E6C58  90 C8 00 FC */	stw r6, 0xfc(r8)
/* 8011D69C 000E6C5C  39 08 01 00 */	addi r8, r8, 0x100
/* 8011D6A0 000E6C60  42 00 FE BC */	bdnz lbl_8011D55C
lbl_8011D6A4:
/* 8011D6A4 000E6C64  38 7F 02 74 */	addi r3, r31, 0x274
/* 8011D6A8 000E6C68  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 8011D6AC 000E6C6C  38 03 00 1F */	addi r0, r3, 0x1f
/* 8011D6B0 000E6C70  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8011D6B4 000E6C74  7C 08 00 50 */	subf r0, r8, r0
/* 8011D6B8 000E6C78  80 81 00 28 */	lwz r4, 0x28(r1)
/* 8011D6BC 000E6C7C  54 00 D9 7E */	srwi r0, r0, 5
/* 8011D6C0 000E6C80  38 E0 00 00 */	li r7, 0
/* 8011D6C4 000E6C84  7C 09 03 A6 */	mtctr r0
/* 8011D6C8 000E6C88  7C 08 18 40 */	cmplw r8, r3
/* 8011D6CC 000E6C8C  40 80 00 34 */	bge lbl_8011D700
lbl_8011D6D0:
/* 8011D6D0 000E6C90  90 E8 00 00 */	stw r7, 0(r8)
/* 8011D6D4 000E6C94  90 E8 00 04 */	stw r7, 4(r8)
/* 8011D6D8 000E6C98  90 E8 00 08 */	stw r7, 8(r8)
/* 8011D6DC 000E6C9C  98 E8 00 0C */	stb r7, 0xc(r8)
/* 8011D6E0 000E6CA0  98 E8 00 0D */	stb r7, 0xd(r8)
/* 8011D6E4 000E6CA4  98 E8 00 0E */	stb r7, 0xe(r8)
/* 8011D6E8 000E6CA8  90 C8 00 10 */	stw r6, 0x10(r8)
/* 8011D6EC 000E6CAC  90 A8 00 14 */	stw r5, 0x14(r8)
/* 8011D6F0 000E6CB0  90 88 00 18 */	stw r4, 0x18(r8)
/* 8011D6F4 000E6CB4  90 E8 00 1C */	stw r7, 0x1c(r8)
/* 8011D6F8 000E6CB8  39 08 00 20 */	addi r8, r8, 0x20
/* 8011D6FC 000E6CBC  42 00 FF D4 */	bdnz lbl_8011D6D0
lbl_8011D700:
/* 8011D700 000E6CC0  C0 42 96 1C */	lfs f2, lbl_8066999C@sda21(r2)
/* 8011D704 000E6CC4  38 00 00 04 */	li r0, 4
/* 8011D708 000E6CC8  38 C0 00 00 */	li r6, 0
/* 8011D70C 000E6CCC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8011D710 000E6CD0  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8011D714 000E6CD4  39 00 00 00 */	li r8, 0
/* 8011D718 000E6CD8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8011D71C 000E6CDC  C0 22 96 20 */	lfs f1, lbl_806699A0@sda21(r2)
/* 8011D720 000E6CE0  C0 02 96 24 */	lfs f0, lbl_806699A4@sda21(r2)
/* 8011D724 000E6CE4  98 DF 02 74 */	stb r6, 0x274(r31)
/* 8011D728 000E6CE8  98 DF 02 75 */	stb r6, 0x275(r31)
/* 8011D72C 000E6CEC  D0 5F 02 78 */	stfs f2, 0x278(r31)
/* 8011D730 000E6CF0  90 DF 02 7C */	stw r6, 0x27c(r31)
/* 8011D734 000E6CF4  90 DF 02 80 */	stw r6, 0x280(r31)
/* 8011D738 000E6CF8  90 DF 02 84 */	stw r6, 0x284(r31)
/* 8011D73C 000E6CFC  90 DF 02 88 */	stw r6, 0x288(r31)
/* 8011D740 000E6D00  90 DF 02 8C */	stw r6, 0x28c(r31)
/* 8011D744 000E6D04  90 DF 02 90 */	stw r6, 0x290(r31)
/* 8011D748 000E6D08  90 DF 02 94 */	stw r6, 0x294(r31)
/* 8011D74C 000E6D0C  90 DF 04 98 */	stw r6, 0x498(r31)
/* 8011D750 000E6D10  D0 5F 04 9C */	stfs f2, 0x49c(r31)
/* 8011D754 000E6D14  90 DF 06 A0 */	stw r6, 0x6a0(r31)
/* 8011D758 000E6D18  D0 3F 06 A4 */	stfs f1, 0x6a4(r31)
/* 8011D75C 000E6D1C  90 DF 08 A8 */	stw r6, 0x8a8(r31)
/* 8011D760 000E6D20  D0 1F 08 AC */	stfs f0, 0x8ac(r31)
/* 8011D764 000E6D24  90 DF 08 B0 */	stw r6, 0x8b0(r31)
/* 8011D768 000E6D28  90 A1 00 40 */	stw r5, 0x40(r1)
/* 8011D76C 000E6D2C  90 81 00 44 */	stw r4, 0x44(r1)
/* 8011D770 000E6D30  90 61 00 48 */	stw r3, 0x48(r1)
/* 8011D774 000E6D34  90 C1 00 4C */	stw r6, 0x4c(r1)
/* 8011D778 000E6D38  90 A1 00 08 */	stw r5, 8(r1)
/* 8011D77C 000E6D3C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8011D780 000E6D40  90 61 00 10 */	stw r3, 0x10(r1)
/* 8011D784 000E6D44  7C 09 03 A6 */	mtctr r0
lbl_8011D788:
/* 8011D788 000E6D48  55 00 2C F4 */	rlwinm r0, r8, 5, 0x13, 0x1a
/* 8011D78C 000E6D4C  39 08 00 01 */	addi r8, r8, 1
/* 8011D790 000E6D50  7C FF 02 14 */	add r7, r31, r0
/* 8011D794 000E6D54  90 C7 00 74 */	stw r6, 0x74(r7)
/* 8011D798 000E6D58  55 00 2C F4 */	rlwinm r0, r8, 5, 0x13, 0x1a
/* 8011D79C 000E6D5C  39 08 00 01 */	addi r8, r8, 1
/* 8011D7A0 000E6D60  90 C7 00 78 */	stw r6, 0x78(r7)
/* 8011D7A4 000E6D64  90 C7 00 7C */	stw r6, 0x7c(r7)
/* 8011D7A8 000E6D68  98 C7 00 80 */	stb r6, 0x80(r7)
/* 8011D7AC 000E6D6C  98 C7 00 81 */	stb r6, 0x81(r7)
/* 8011D7B0 000E6D70  98 C7 00 82 */	stb r6, 0x82(r7)
/* 8011D7B4 000E6D74  90 A7 00 84 */	stw r5, 0x84(r7)
/* 8011D7B8 000E6D78  90 87 00 88 */	stw r4, 0x88(r7)
/* 8011D7BC 000E6D7C  90 67 00 8C */	stw r3, 0x8c(r7)
/* 8011D7C0 000E6D80  90 C7 00 90 */	stw r6, 0x90(r7)
/* 8011D7C4 000E6D84  7C FF 02 14 */	add r7, r31, r0
/* 8011D7C8 000E6D88  55 00 2C F4 */	rlwinm r0, r8, 5, 0x13, 0x1a
/* 8011D7CC 000E6D8C  39 08 00 01 */	addi r8, r8, 1
/* 8011D7D0 000E6D90  90 C7 00 74 */	stw r6, 0x74(r7)
/* 8011D7D4 000E6D94  90 C7 00 78 */	stw r6, 0x78(r7)
/* 8011D7D8 000E6D98  90 C7 00 7C */	stw r6, 0x7c(r7)
/* 8011D7DC 000E6D9C  98 C7 00 80 */	stb r6, 0x80(r7)
/* 8011D7E0 000E6DA0  98 C7 00 81 */	stb r6, 0x81(r7)
/* 8011D7E4 000E6DA4  98 C7 00 82 */	stb r6, 0x82(r7)
/* 8011D7E8 000E6DA8  90 A7 00 84 */	stw r5, 0x84(r7)
/* 8011D7EC 000E6DAC  90 87 00 88 */	stw r4, 0x88(r7)
/* 8011D7F0 000E6DB0  90 67 00 8C */	stw r3, 0x8c(r7)
/* 8011D7F4 000E6DB4  90 C7 00 90 */	stw r6, 0x90(r7)
/* 8011D7F8 000E6DB8  7C FF 02 14 */	add r7, r31, r0
/* 8011D7FC 000E6DBC  55 00 2C F4 */	rlwinm r0, r8, 5, 0x13, 0x1a
/* 8011D800 000E6DC0  39 08 00 01 */	addi r8, r8, 1
/* 8011D804 000E6DC4  90 C7 00 74 */	stw r6, 0x74(r7)
/* 8011D808 000E6DC8  90 C7 00 78 */	stw r6, 0x78(r7)
/* 8011D80C 000E6DCC  90 C7 00 7C */	stw r6, 0x7c(r7)
/* 8011D810 000E6DD0  98 C7 00 80 */	stb r6, 0x80(r7)
/* 8011D814 000E6DD4  98 C7 00 81 */	stb r6, 0x81(r7)
/* 8011D818 000E6DD8  98 C7 00 82 */	stb r6, 0x82(r7)
/* 8011D81C 000E6DDC  90 A7 00 84 */	stw r5, 0x84(r7)
/* 8011D820 000E6DE0  90 87 00 88 */	stw r4, 0x88(r7)
/* 8011D824 000E6DE4  90 67 00 8C */	stw r3, 0x8c(r7)
/* 8011D828 000E6DE8  90 C7 00 90 */	stw r6, 0x90(r7)
/* 8011D82C 000E6DEC  7C FF 02 14 */	add r7, r31, r0
/* 8011D830 000E6DF0  90 C7 00 74 */	stw r6, 0x74(r7)
/* 8011D834 000E6DF4  90 C7 00 78 */	stw r6, 0x78(r7)
/* 8011D838 000E6DF8  90 C7 00 7C */	stw r6, 0x7c(r7)
/* 8011D83C 000E6DFC  98 C7 00 80 */	stb r6, 0x80(r7)
/* 8011D840 000E6E00  98 C7 00 81 */	stb r6, 0x81(r7)
/* 8011D844 000E6E04  98 C7 00 82 */	stb r6, 0x82(r7)
/* 8011D848 000E6E08  90 A7 00 84 */	stw r5, 0x84(r7)
/* 8011D84C 000E6E0C  90 87 00 88 */	stw r4, 0x88(r7)
/* 8011D850 000E6E10  90 67 00 8C */	stw r3, 0x8c(r7)
/* 8011D854 000E6E14  90 C7 00 90 */	stw r6, 0x90(r7)
/* 8011D858 000E6E18  42 00 FF 30 */	bdnz lbl_8011D788
/* 8011D85C 000E6E1C  80 6D A8 F4 */	lwz r3, lbl_80666A74@sda21(r13)
/* 8011D860 000E6E20  3F C0 80 53 */	lis r30, lbl_80530478@ha
/* 8011D864 000E6E24  3B DE 04 78 */	addi r30, r30, lbl_80530478@l
/* 8011D868 000E6E28  3B 83 FF FF */	addi r28, r3, -1
/* 8011D86C 000E6E2C  57 9D 10 3A */	slwi r29, r28, 2
/* 8011D870 000E6E30  7C 1E E8 2E */	lwzx r0, r30, r29
/* 8011D874 000E6E34  2C 00 00 00 */	cmpwi r0, 0
/* 8011D878 000E6E38  41 82 00 7C */	beq lbl_8011D8F4
/* 8011D87C 000E6E3C  4B F1 D1 B9 */	bl func_8003AA34
/* 8011D880 000E6E40  7C 7E E8 2E */	lwzx r3, r30, r29
/* 8011D884 000E6E44  4B F1 D2 21 */	bl func_8003AAA4
/* 8011D888 000E6E48  90 7F 02 7C */	stw r3, 0x27c(r31)
/* 8011D88C 000E6E4C  4B F1 D1 A9 */	bl func_8003AA34
/* 8011D890 000E6E50  3F C0 80 50 */	lis r30, lbl_804F9F60@ha
/* 8011D894 000E6E54  3B DE 9F 60 */	addi r30, r30, lbl_804F9F60@l
/* 8011D898 000E6E58  38 7E 00 39 */	addi r3, r30, 0x39
/* 8011D89C 000E6E5C  4B F1 D2 09 */	bl func_8003AAA4
/* 8011D8A0 000E6E60  90 7F 02 80 */	stw r3, 0x280(r31)
/* 8011D8A4 000E6E64  4B F1 D1 91 */	bl func_8003AA34
/* 8011D8A8 000E6E68  38 7E 00 46 */	addi r3, r30, 0x46
/* 8011D8AC 000E6E6C  4B F1 D1 F9 */	bl func_8003AAA4
/* 8011D8B0 000E6E70  90 7F 02 84 */	stw r3, 0x284(r31)
/* 8011D8B4 000E6E74  80 7F 02 7C */	lwz r3, 0x27c(r31)
/* 8011D8B8 000E6E78  4B F1 D9 35 */	bl func_8003B1EC
/* 8011D8BC 000E6E7C  90 7F 02 8C */	stw r3, 0x28c(r31)
/* 8011D8C0 000E6E80  38 1C 00 01 */	addi r0, r28, 1
/* 8011D8C4 000E6E84  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 8011D8C8 000E6E88  48 01 A7 D9 */	bl func_801380A0
/* 8011D8CC 000E6E8C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8011D8D0 000E6E90  3C 60 80 57 */	lis r3, lbl_80577510@ha
/* 8011D8D4 000E6E94  90 1F 02 90 */	stw r0, 0x290(r31)
/* 8011D8D8 000E6E98  38 63 75 10 */	addi r3, r3, lbl_80577510@l
/* 8011D8DC 000E6E9C  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8011D8E0 000E6EA0  90 7F 02 88 */	stw r3, 0x288(r31)
/* 8011D8E4 000E6EA4  4B F1 D9 09 */	bl func_8003B1EC
/* 8011D8E8 000E6EA8  80 1F 02 90 */	lwz r0, 0x290(r31)
/* 8011D8EC 000E6EAC  7C 03 02 14 */	add r0, r3, r0
/* 8011D8F0 000E6EB0  90 1F 02 94 */	stw r0, 0x294(r31)
lbl_8011D8F4:
/* 8011D8F4 000E6EB4  38 7F 02 98 */	addi r3, r31, 0x298
/* 8011D8F8 000E6EB8  38 80 00 00 */	li r4, 0
/* 8011D8FC 000E6EBC  38 A0 02 00 */	li r5, 0x200
/* 8011D900 000E6EC0  4B EE 6A 51 */	bl memset
/* 8011D904 000E6EC4  38 00 00 08 */	li r0, 8
/* 8011D908 000E6EC8  7F E4 FB 78 */	mr r4, r31
/* 8011D90C 000E6ECC  38 60 00 00 */	li r3, 0
/* 8011D910 000E6ED0  7C 09 03 A6 */	mtctr r0
lbl_8011D914:
/* 8011D914 000E6ED4  90 64 04 A0 */	stw r3, 0x4a0(r4)
/* 8011D918 000E6ED8  90 64 06 A8 */	stw r3, 0x6a8(r4)
/* 8011D91C 000E6EDC  90 64 04 A4 */	stw r3, 0x4a4(r4)
/* 8011D920 000E6EE0  90 64 06 AC */	stw r3, 0x6ac(r4)
/* 8011D924 000E6EE4  90 64 04 A8 */	stw r3, 0x4a8(r4)
/* 8011D928 000E6EE8  90 64 06 B0 */	stw r3, 0x6b0(r4)
/* 8011D92C 000E6EEC  90 64 04 AC */	stw r3, 0x4ac(r4)
/* 8011D930 000E6EF0  90 64 06 B4 */	stw r3, 0x6b4(r4)
/* 8011D934 000E6EF4  90 64 04 B0 */	stw r3, 0x4b0(r4)
/* 8011D938 000E6EF8  90 64 06 B8 */	stw r3, 0x6b8(r4)
/* 8011D93C 000E6EFC  90 64 04 B4 */	stw r3, 0x4b4(r4)
/* 8011D940 000E6F00  90 64 06 BC */	stw r3, 0x6bc(r4)
/* 8011D944 000E6F04  90 64 04 B8 */	stw r3, 0x4b8(r4)
/* 8011D948 000E6F08  90 64 06 C0 */	stw r3, 0x6c0(r4)
/* 8011D94C 000E6F0C  90 64 04 BC */	stw r3, 0x4bc(r4)
/* 8011D950 000E6F10  90 64 06 C4 */	stw r3, 0x6c4(r4)
/* 8011D954 000E6F14  90 64 04 C0 */	stw r3, 0x4c0(r4)
/* 8011D958 000E6F18  90 64 06 C8 */	stw r3, 0x6c8(r4)
/* 8011D95C 000E6F1C  90 64 04 C4 */	stw r3, 0x4c4(r4)
/* 8011D960 000E6F20  90 64 06 CC */	stw r3, 0x6cc(r4)
/* 8011D964 000E6F24  90 64 04 C8 */	stw r3, 0x4c8(r4)
/* 8011D968 000E6F28  90 64 06 D0 */	stw r3, 0x6d0(r4)
/* 8011D96C 000E6F2C  90 64 04 CC */	stw r3, 0x4cc(r4)
/* 8011D970 000E6F30  90 64 06 D4 */	stw r3, 0x6d4(r4)
/* 8011D974 000E6F34  90 64 04 D0 */	stw r3, 0x4d0(r4)
/* 8011D978 000E6F38  90 64 06 D8 */	stw r3, 0x6d8(r4)
/* 8011D97C 000E6F3C  90 64 04 D4 */	stw r3, 0x4d4(r4)
/* 8011D980 000E6F40  90 64 06 DC */	stw r3, 0x6dc(r4)
/* 8011D984 000E6F44  90 64 04 D8 */	stw r3, 0x4d8(r4)
/* 8011D988 000E6F48  90 64 06 E0 */	stw r3, 0x6e0(r4)
/* 8011D98C 000E6F4C  90 64 04 DC */	stw r3, 0x4dc(r4)
/* 8011D990 000E6F50  90 64 06 E4 */	stw r3, 0x6e4(r4)
/* 8011D994 000E6F54  38 84 00 40 */	addi r4, r4, 0x40
/* 8011D998 000E6F58  42 00 FF 7C */	bdnz lbl_8011D914
/* 8011D99C 000E6F5C  7F E3 FB 78 */	mr r3, r31
/* 8011D9A0 000E6F60  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8011D9A4 000E6F64  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8011D9A8 000E6F68  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8011D9AC 000E6F6C  83 81 00 50 */	lwz r28, 0x50(r1)
/* 8011D9B0 000E6F70  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8011D9B4 000E6F74  7C 08 03 A6 */	mtlr r0
/* 8011D9B8 000E6F78  38 21 00 60 */	addi r1, r1, 0x60
/* 8011D9BC 000E6F7C  4E 80 00 20 */	blr

.global func_8011D9C0
func_8011D9C0:
/* 8011D9C0 000E6F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011D9C4 000E6F84  7C 08 02 A6 */	mflr r0
/* 8011D9C8 000E6F88  2C 03 00 00 */	cmpwi r3, 0
/* 8011D9CC 000E6F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011D9D0 000E6F90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011D9D4 000E6F94  7C 9F 23 78 */	mr r31, r4
/* 8011D9D8 000E6F98  93 C1 00 08 */	stw r30, 8(r1)
/* 8011D9DC 000E6F9C  7C 7E 1B 78 */	mr r30, r3
/* 8011D9E0 000E6FA0  41 82 00 38 */	beq lbl_8011DA18
/* 8011D9E4 000E6FA4  38 80 FF FF */	li r4, -1
/* 8011D9E8 000E6FA8  38 63 00 64 */	addi r3, r3, 0x64
/* 8011D9EC 000E6FAC  48 34 1B 95 */	bl func_8045F580
/* 8011D9F0 000E6FB0  2C 1E 00 00 */	cmpwi r30, 0
/* 8011D9F4 000E6FB4  41 82 00 14 */	beq lbl_8011DA08
/* 8011D9F8 000E6FB8  41 82 00 10 */	beq lbl_8011DA08
/* 8011D9FC 000E6FBC  7F C3 F3 78 */	mr r3, r30
/* 8011DA00 000E6FC0  38 80 00 00 */	li r4, 0
/* 8011DA04 000E6FC4  48 32 71 35 */	bl func_80444B38
lbl_8011DA08:
/* 8011DA08 000E6FC8  2C 1F 00 00 */	cmpwi r31, 0
/* 8011DA0C 000E6FCC  40 81 00 0C */	ble lbl_8011DA18
/* 8011DA10 000E6FD0  7F C3 F3 78 */	mr r3, r30
/* 8011DA14 000E6FD4  48 31 72 19 */	bl __dl__FPv
lbl_8011DA18:
/* 8011DA18 000E6FD8  7F C3 F3 78 */	mr r3, r30
/* 8011DA1C 000E6FDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011DA20 000E6FE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011DA24 000E6FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011DA28 000E6FE8  7C 08 03 A6 */	mtlr r0
/* 8011DA2C 000E6FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8011DA30 000E6FF0  4E 80 00 20 */	blr 