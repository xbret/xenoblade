.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_8003A53C, local
/* 8003A53C 00003AFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A540 00003B00  7C 08 02 A6 */	mflr r0
/* 8003A544 00003B04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A548 00003B08  38 00 00 09 */	li r0, 9
/* 8003A54C 00003B0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A550 00003B10  7C 7F 1B 78 */	mr r31, r3
/* 8003A554 00003B14  98 01 00 08 */	stb r0, 8(r1)
/* 8003A558 00003B18  B0 A1 00 0A */	sth r5, 0xa(r1)
/* 8003A55C 00003B1C  4B FF FF 85 */	bl func_8003A4E0
/* 8003A560 00003B20  90 61 00 0C */	stw r3, 0xc(r1)
/* 8003A564 00003B24  7F E3 FB 78 */	mr r3, r31
/* 8003A568 00003B28  38 81 00 08 */	addi r4, r1, 8
/* 8003A56C 00003B2C  48 46 6A 31 */	bl vmRetValSet
/* 8003A570 00003B30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A574 00003B34  38 60 00 01 */	li r3, 1
/* 8003A578 00003B38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A57C 00003B3C  7C 08 03 A6 */	mtlr r0
/* 8003A580 00003B40  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A584 00003B44  4E 80 00 20 */	blr
.endfn func_8003A53C

.fn func_8003A588, local
/* 8003A588 00003B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A58C 00003B4C  7C 08 02 A6 */	mflr r0
/* 8003A590 00003B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A594 00003B54  38 00 00 03 */	li r0, 3
/* 8003A598 00003B58  98 01 00 08 */	stb r0, 8(r1)
/* 8003A59C 00003B5C  80 04 00 64 */	lwz r0, 0x64(r4)
/* 8003A5A0 00003B60  38 81 00 08 */	addi r4, r1, 8
/* 8003A5A4 00003B64  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A5A8 00003B68  48 46 69 F5 */	bl vmRetValSet
/* 8003A5AC 00003B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A5B0 00003B70  38 60 00 01 */	li r3, 1
/* 8003A5B4 00003B74  7C 08 03 A6 */	mtlr r0
/* 8003A5B8 00003B78  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A5BC 00003B7C  4E 80 00 20 */	blr
.endfn func_8003A588

.fn func_8003A5C0, local
/* 8003A5C0 00003B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A5C4 00003B84  7C 08 02 A6 */	mflr r0
/* 8003A5C8 00003B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A5CC 00003B8C  38 00 00 03 */	li r0, 3
/* 8003A5D0 00003B90  98 01 00 08 */	stb r0, 8(r1)
/* 8003A5D4 00003B94  80 04 00 68 */	lwz r0, 0x68(r4)
/* 8003A5D8 00003B98  38 81 00 08 */	addi r4, r1, 8
/* 8003A5DC 00003B9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A5E0 00003BA0  48 46 69 BD */	bl vmRetValSet
/* 8003A5E4 00003BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A5E8 00003BA8  38 60 00 01 */	li r3, 1
/* 8003A5EC 00003BAC  7C 08 03 A6 */	mtlr r0
/* 8003A5F0 00003BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A5F4 00003BB4  4E 80 00 20 */	blr
.endfn func_8003A5C0

.fn func_8003A5F8, local
/* 8003A5F8 00003BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A5FC 00003BBC  7C 08 02 A6 */	mflr r0
/* 8003A600 00003BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A604 00003BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A608 00003BC8  7C 9F 23 78 */	mr r31, r4
/* 8003A60C 00003BCC  48 46 6B E9 */	bl vmOCPropertyGet
/* 8003A610 00003BD0  80 03 00 04 */	lwz r0, 4(r3)
/* 8003A614 00003BD4  38 60 00 00 */	li r3, 0
/* 8003A618 00003BD8  90 1F 00 64 */	stw r0, 0x64(r31)
/* 8003A61C 00003BDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A620 00003BE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A624 00003BE4  7C 08 03 A6 */	mtlr r0
/* 8003A628 00003BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A62C 00003BEC  4E 80 00 20 */	blr
.endfn func_8003A5F8

.fn func_8003A630, local
/* 8003A630 00003BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A634 00003BF4  7C 08 02 A6 */	mflr r0
/* 8003A638 00003BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A63C 00003BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A640 00003C00  7C 9F 23 78 */	mr r31, r4
/* 8003A644 00003C04  48 46 6B B1 */	bl vmOCPropertyGet
/* 8003A648 00003C08  80 03 00 04 */	lwz r0, 4(r3)
/* 8003A64C 00003C0C  38 60 00 00 */	li r3, 0
/* 8003A650 00003C10  90 1F 00 68 */	stw r0, 0x68(r31)
/* 8003A654 00003C14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A658 00003C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A65C 00003C1C  7C 08 03 A6 */	mtlr r0
/* 8003A660 00003C20  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A664 00003C24  4E 80 00 20 */	blr
.endfn func_8003A630

.fn func_8003A668, local
/* 8003A668 00003C28  38 A0 00 00 */	li r5, 0
/* 8003A66C 00003C2C  38 00 00 09 */	li r0, 9
/* 8003A670 00003C30  90 A4 00 10 */	stw r5, 0x10(r4)
/* 8003A674 00003C34  38 60 00 00 */	li r3, 0
/* 8003A678 00003C38  90 A4 00 00 */	stw r5, 0(r4)
/* 8003A67C 00003C3C  90 A4 00 0C */	stw r5, 0xc(r4)
/* 8003A680 00003C40  90 A4 00 08 */	stw r5, 8(r4)
/* 8003A684 00003C44  90 04 00 04 */	stw r0, 4(r4)
/* 8003A688 00003C48  4E 80 00 20 */	blr
.endfn func_8003A668

.fn func_8003A68C, local
/* 8003A68C 00003C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A690 00003C50  7C 08 02 A6 */	mflr r0
/* 8003A694 00003C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A698 00003C58  80 04 00 10 */	lwz r0, 0x10(r4)
/* 8003A69C 00003C5C  38 81 00 08 */	addi r4, r1, 8
/* 8003A6A0 00003C60  68 05 00 0A */	xori r5, r0, 0xa
/* 8003A6A4 00003C64  70 A0 00 0A */	andi. r0, r5, 0xa
/* 8003A6A8 00003C68  7C A5 0E 70 */	srawi r5, r5, 1
/* 8003A6AC 00003C6C  7C 00 28 50 */	subf r0, r0, r5
/* 8003A6B0 00003C70  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8003A6B4 00003C74  38 05 00 01 */	addi r0, r5, 1
/* 8003A6B8 00003C78  98 01 00 08 */	stb r0, 8(r1)
/* 8003A6BC 00003C7C  48 46 68 E1 */	bl vmRetValSet
/* 8003A6C0 00003C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A6C4 00003C84  38 60 00 01 */	li r3, 1
/* 8003A6C8 00003C88  7C 08 03 A6 */	mtlr r0
/* 8003A6CC 00003C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A6D0 00003C90  4E 80 00 20 */	blr
.endfn func_8003A68C

.fn func_8003A6D4, local
/* 8003A6D4 00003C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A6D8 00003C98  7C 08 02 A6 */	mflr r0
/* 8003A6DC 00003C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A6E0 00003CA0  80 A4 00 10 */	lwz r5, 0x10(r4)
/* 8003A6E4 00003CA4  38 81 00 08 */	addi r4, r1, 8
/* 8003A6E8 00003CA8  7C 05 00 D0 */	neg r0, r5
/* 8003A6EC 00003CAC  7C 00 28 78 */	andc r0, r0, r5
/* 8003A6F0 00003CB0  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8003A6F4 00003CB4  38 05 00 01 */	addi r0, r5, 1
/* 8003A6F8 00003CB8  98 01 00 08 */	stb r0, 8(r1)
/* 8003A6FC 00003CBC  48 46 68 A1 */	bl vmRetValSet
/* 8003A700 00003CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A704 00003CC4  38 60 00 01 */	li r3, 1
/* 8003A708 00003CC8  7C 08 03 A6 */	mtlr r0
/* 8003A70C 00003CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A710 00003CD0  4E 80 00 20 */	blr
.endfn func_8003A6D4

.fn func_8003A714, local
/* 8003A714 00003CD4  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8003A718 00003CD8  80 04 00 04 */	lwz r0, 4(r4)
/* 8003A71C 00003CDC  38 A3 00 01 */	addi r5, r3, 1
/* 8003A720 00003CE0  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8003A724 00003CE4  7C 05 00 00 */	cmpw r5, r0
/* 8003A728 00003CE8  90 A4 00 0C */	stw r5, 0xc(r4)
/* 8003A72C 00003CEC  38 03 00 01 */	addi r0, r3, 1
/* 8003A730 00003CF0  90 04 00 10 */	stw r0, 0x10(r4)
/* 8003A734 00003CF4  40 81 00 0C */	ble .L_8003A740
/* 8003A738 00003CF8  80 04 00 00 */	lwz r0, 0(r4)
/* 8003A73C 00003CFC  90 04 00 0C */	stw r0, 0xc(r4)
.L_8003A740:
/* 8003A740 00003D00  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 8003A744 00003D04  38 60 00 00 */	li r3, 0
/* 8003A748 00003D08  80 04 00 64 */	lwz r0, 0x64(r4)
/* 8003A74C 00003D0C  54 A5 18 38 */	slwi r5, r5, 3
/* 8003A750 00003D10  7C A4 2A 14 */	add r5, r4, r5
/* 8003A754 00003D14  90 05 00 14 */	stw r0, 0x14(r5)
/* 8003A758 00003D18  80 04 00 68 */	lwz r0, 0x68(r4)
/* 8003A75C 00003D1C  90 05 00 18 */	stw r0, 0x18(r5)
/* 8003A760 00003D20  4E 80 00 20 */	blr
.endfn func_8003A714

.fn func_8003A764, local
/* 8003A764 00003D24  80 64 00 08 */	lwz r3, 8(r4)
/* 8003A768 00003D28  80 04 00 04 */	lwz r0, 4(r4)
/* 8003A76C 00003D2C  38 A3 00 01 */	addi r5, r3, 1
/* 8003A770 00003D30  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8003A774 00003D34  7C 05 00 00 */	cmpw r5, r0
/* 8003A778 00003D38  90 A4 00 08 */	stw r5, 8(r4)
/* 8003A77C 00003D3C  38 03 FF FF */	addi r0, r3, -1
/* 8003A780 00003D40  90 04 00 10 */	stw r0, 0x10(r4)
/* 8003A784 00003D44  40 81 00 0C */	ble .L_8003A790
/* 8003A788 00003D48  80 04 00 00 */	lwz r0, 0(r4)
/* 8003A78C 00003D4C  90 04 00 08 */	stw r0, 8(r4)
.L_8003A790:
/* 8003A790 00003D50  80 04 00 08 */	lwz r0, 8(r4)
/* 8003A794 00003D54  38 60 00 00 */	li r3, 0
/* 8003A798 00003D58  54 00 18 38 */	slwi r0, r0, 3
/* 8003A79C 00003D5C  7C A4 02 14 */	add r5, r4, r0
/* 8003A7A0 00003D60  80 05 00 14 */	lwz r0, 0x14(r5)
/* 8003A7A4 00003D64  90 04 00 64 */	stw r0, 0x64(r4)
/* 8003A7A8 00003D68  80 05 00 18 */	lwz r0, 0x18(r5)
/* 8003A7AC 00003D6C  90 04 00 68 */	stw r0, 0x68(r4)
/* 8003A7B0 00003D70  4E 80 00 20 */	blr
.endfn func_8003A764

.fn func_8003A7B4, local
/* 8003A7B4 00003D74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A7B8 00003D78  7C 08 02 A6 */	mflr r0
/* 8003A7BC 00003D7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A7C0 00003D80  38 00 00 09 */	li r0, 9
/* 8003A7C4 00003D84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A7C8 00003D88  7C 7F 1B 78 */	mr r31, r3
/* 8003A7CC 00003D8C  98 01 00 08 */	stb r0, 8(r1)
/* 8003A7D0 00003D90  B0 A1 00 0A */	sth r5, 0xa(r1)
/* 8003A7D4 00003D94  4B FF FD 19 */	bl func_8003A4EC
/* 8003A7D8 00003D98  90 61 00 0C */	stw r3, 0xc(r1)
/* 8003A7DC 00003D9C  7F E3 FB 78 */	mr r3, r31
/* 8003A7E0 00003DA0  38 81 00 08 */	addi r4, r1, 8
/* 8003A7E4 00003DA4  48 46 67 B9 */	bl vmRetValSet
/* 8003A7E8 00003DA8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A7EC 00003DAC  38 60 00 01 */	li r3, 1
/* 8003A7F0 00003DB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A7F4 00003DB4  7C 08 03 A6 */	mtlr r0
/* 8003A7F8 00003DB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A7FC 00003DBC  4E 80 00 20 */	blr
.endfn func_8003A7B4

.fn func_8003A800, local
/* 8003A800 00003DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A804 00003DC4  7C 08 02 A6 */	mflr r0
/* 8003A808 00003DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A80C 00003DCC  38 00 00 03 */	li r0, 3
/* 8003A810 00003DD0  98 01 00 08 */	stb r0, 8(r1)
/* 8003A814 00003DD4  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 8003A818 00003DD8  38 81 00 08 */	addi r4, r1, 8
/* 8003A81C 00003DDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A820 00003DE0  48 46 67 7D */	bl vmRetValSet
/* 8003A824 00003DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A828 00003DE8  38 60 00 01 */	li r3, 1
/* 8003A82C 00003DEC  7C 08 03 A6 */	mtlr r0
/* 8003A830 00003DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A834 00003DF4  4E 80 00 20 */	blr
.endfn func_8003A800

.fn func_8003A838, local
/* 8003A838 00003DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A83C 00003DFC  7C 08 02 A6 */	mflr r0
/* 8003A840 00003E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A844 00003E04  38 00 00 03 */	li r0, 3
/* 8003A848 00003E08  98 01 00 08 */	stb r0, 8(r1)
/* 8003A84C 00003E0C  80 04 00 90 */	lwz r0, 0x90(r4)
/* 8003A850 00003E10  38 81 00 08 */	addi r4, r1, 8
/* 8003A854 00003E14  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A858 00003E18  48 46 67 45 */	bl vmRetValSet
/* 8003A85C 00003E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A860 00003E20  38 60 00 01 */	li r3, 1
/* 8003A864 00003E24  7C 08 03 A6 */	mtlr r0
/* 8003A868 00003E28  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A86C 00003E2C  4E 80 00 20 */	blr
.endfn func_8003A838

.fn func_8003A870, local
/* 8003A870 00003E30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A874 00003E34  7C 08 02 A6 */	mflr r0
/* 8003A878 00003E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A87C 00003E3C  38 00 00 03 */	li r0, 3
/* 8003A880 00003E40  98 01 00 08 */	stb r0, 8(r1)
/* 8003A884 00003E44  80 04 00 94 */	lwz r0, 0x94(r4)
/* 8003A888 00003E48  38 81 00 08 */	addi r4, r1, 8
/* 8003A88C 00003E4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A890 00003E50  48 46 67 0D */	bl vmRetValSet
/* 8003A894 00003E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A898 00003E58  38 60 00 01 */	li r3, 1
/* 8003A89C 00003E5C  7C 08 03 A6 */	mtlr r0
/* 8003A8A0 00003E60  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A8A4 00003E64  4E 80 00 20 */	blr
.endfn func_8003A870

.fn func_8003A8A8, local
/* 8003A8A8 00003E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A8AC 00003E6C  7C 08 02 A6 */	mflr r0
/* 8003A8B0 00003E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A8B4 00003E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A8B8 00003E78  7C 9F 23 78 */	mr r31, r4
/* 8003A8BC 00003E7C  48 46 69 39 */	bl vmOCPropertyGet
/* 8003A8C0 00003E80  80 03 00 04 */	lwz r0, 4(r3)
/* 8003A8C4 00003E84  38 60 00 00 */	li r3, 0
/* 8003A8C8 00003E88  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 8003A8CC 00003E8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A8D0 00003E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A8D4 00003E94  7C 08 03 A6 */	mtlr r0
/* 8003A8D8 00003E98  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A8DC 00003E9C  4E 80 00 20 */	blr
.endfn func_8003A8A8

.fn func_8003A8E0, local
/* 8003A8E0 00003EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A8E4 00003EA4  7C 08 02 A6 */	mflr r0
/* 8003A8E8 00003EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A8EC 00003EAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A8F0 00003EB0  7C 9F 23 78 */	mr r31, r4
/* 8003A8F4 00003EB4  48 46 69 01 */	bl vmOCPropertyGet
/* 8003A8F8 00003EB8  80 03 00 04 */	lwz r0, 4(r3)
/* 8003A8FC 00003EBC  38 60 00 00 */	li r3, 0
/* 8003A900 00003EC0  90 1F 00 90 */	stw r0, 0x90(r31)
/* 8003A904 00003EC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A908 00003EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A90C 00003ECC  7C 08 03 A6 */	mtlr r0
/* 8003A910 00003ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A914 00003ED4  4E 80 00 20 */	blr
.endfn func_8003A8E0

.fn func_8003A918, local
/* 8003A918 00003ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A91C 00003EDC  7C 08 02 A6 */	mflr r0
/* 8003A920 00003EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A924 00003EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A928 00003EE8  7C 9F 23 78 */	mr r31, r4
/* 8003A92C 00003EEC  48 46 68 C9 */	bl vmOCPropertyGet
/* 8003A930 00003EF0  80 03 00 04 */	lwz r0, 4(r3)
/* 8003A934 00003EF4  38 60 00 00 */	li r3, 0
/* 8003A938 00003EF8  90 1F 00 94 */	stw r0, 0x94(r31)
/* 8003A93C 00003EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A940 00003F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A944 00003F04  7C 08 03 A6 */	mtlr r0
/* 8003A948 00003F08  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A94C 00003F0C  4E 80 00 20 */	blr
.endfn func_8003A918

.fn func_8003A950, local
/* 8003A950 00003F10  80 64 00 0C */	lwz r3, 0xc(r4)
/* 8003A954 00003F14  80 04 00 04 */	lwz r0, 4(r4)
/* 8003A958 00003F18  38 A3 00 01 */	addi r5, r3, 1
/* 8003A95C 00003F1C  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8003A960 00003F20  7C 05 00 00 */	cmpw r5, r0
/* 8003A964 00003F24  90 A4 00 0C */	stw r5, 0xc(r4)
/* 8003A968 00003F28  38 03 00 01 */	addi r0, r3, 1
/* 8003A96C 00003F2C  90 04 00 10 */	stw r0, 0x10(r4)
/* 8003A970 00003F30  40 81 00 0C */	ble .L_8003A97C
/* 8003A974 00003F34  80 04 00 00 */	lwz r0, 0(r4)
/* 8003A978 00003F38  90 04 00 0C */	stw r0, 0xc(r4)
.L_8003A97C:
/* 8003A97C 00003F3C  80 A4 00 0C */	lwz r5, 0xc(r4)
/* 8003A980 00003F40  38 60 00 00 */	li r3, 0
/* 8003A984 00003F44  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 8003A988 00003F48  1C A5 00 0C */	mulli r5, r5, 0xc
/* 8003A98C 00003F4C  7C A4 2A 14 */	add r5, r4, r5
/* 8003A990 00003F50  90 05 00 14 */	stw r0, 0x14(r5)
/* 8003A994 00003F54  80 04 00 90 */	lwz r0, 0x90(r4)
/* 8003A998 00003F58  90 05 00 18 */	stw r0, 0x18(r5)
/* 8003A99C 00003F5C  80 04 00 94 */	lwz r0, 0x94(r4)
/* 8003A9A0 00003F60  90 05 00 1C */	stw r0, 0x1c(r5)
/* 8003A9A4 00003F64  4E 80 00 20 */	blr
.endfn func_8003A950

.fn func_8003A9A8, local
/* 8003A9A8 00003F68  80 64 00 08 */	lwz r3, 8(r4)
/* 8003A9AC 00003F6C  80 04 00 04 */	lwz r0, 4(r4)
/* 8003A9B0 00003F70  38 A3 00 01 */	addi r5, r3, 1
/* 8003A9B4 00003F74  80 64 00 10 */	lwz r3, 0x10(r4)
/* 8003A9B8 00003F78  7C 05 00 00 */	cmpw r5, r0
/* 8003A9BC 00003F7C  90 A4 00 08 */	stw r5, 8(r4)
/* 8003A9C0 00003F80  38 03 FF FF */	addi r0, r3, -1
/* 8003A9C4 00003F84  90 04 00 10 */	stw r0, 0x10(r4)
/* 8003A9C8 00003F88  40 81 00 0C */	ble .L_8003A9D4
/* 8003A9CC 00003F8C  80 04 00 00 */	lwz r0, 0(r4)
/* 8003A9D0 00003F90  90 04 00 08 */	stw r0, 8(r4)
.L_8003A9D4:
/* 8003A9D4 00003F94  80 04 00 08 */	lwz r0, 8(r4)
/* 8003A9D8 00003F98  38 60 00 00 */	li r3, 0
/* 8003A9DC 00003F9C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8003A9E0 00003FA0  7C A4 02 14 */	add r5, r4, r0
/* 8003A9E4 00003FA4  80 05 00 14 */	lwz r0, 0x14(r5)
/* 8003A9E8 00003FA8  90 04 00 8C */	stw r0, 0x8c(r4)
/* 8003A9EC 00003FAC  80 05 00 18 */	lwz r0, 0x18(r5)
/* 8003A9F0 00003FB0  90 04 00 90 */	stw r0, 0x90(r4)
/* 8003A9F4 00003FB4  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 8003A9F8 00003FB8  90 04 00 94 */	stw r0, 0x94(r4)
/* 8003A9FC 00003FBC  4E 80 00 20 */	blr 
.endfn func_8003A9A8

.fn ocMsgRegist, global
/* 8003AA00 00003FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003AA04 00003FC4  7C 08 02 A6 */	mflr r0
/* 8003AA08 00003FC8  3C 60 80 53 */	lis r3, lbl_805285A8@ha
/* 8003AA0C 00003FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003AA10 00003FD0  38 63 85 A8 */	addi r3, r3, lbl_805285A8@l
/* 8003AA14 00003FD4  48 46 66 69 */	bl vmOCRegist
/* 8003AA18 00003FD8  3C 60 80 53 */	lis r3, lbl_80528640@ha
/* 8003AA1C 00003FDC  38 63 86 40 */	addi r3, r3, lbl_80528640@l
/* 8003AA20 00003FE0  48 46 66 5D */	bl vmOCRegist
/* 8003AA24 00003FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003AA28 00003FE8  7C 08 03 A6 */	mtlr r0
/* 8003AA2C 00003FEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8003AA30 00003FF0  4E 80 00 20 */	blr 
.endfn ocMsgRegist


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_80528530, global
	.4byte lbl_80668468
	.4byte func_8003A588
	.4byte func_8003A5F8
	.4byte 0
	.4byte lbl_8066846C
	.4byte func_8003A5C0
	.4byte func_8003A630
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.endobj lbl_80528530

.obj lbl_80528560, global
	.4byte lbl_80668470
	.4byte func_8003A714
	.4byte 0
	.4byte lbl_80668478
	.4byte func_8003A764
	.4byte 0
	.4byte lbl_80668480
	.4byte func_8003A668
	.4byte 0
	.4byte lbl_80668488
	.4byte func_8003A68C
	.4byte 0
	.4byte lbl_80668490
	.4byte func_8003A6D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.endobj lbl_80528560


.obj lbl_805285A8, global
	.4byte lbl_80668498
	.4byte func_8003A53C
	.4byte lbl_80528530
	.4byte lbl_80528560
.endobj lbl_805285A8

.obj lbl_805285B8, global
	.4byte lbl_806684A0
	.4byte func_8003A800
	.4byte func_8003A8A8
	.4byte 0
	.4byte lbl_806684A4
	.4byte func_8003A838
	.4byte func_8003A8E0
	.4byte 0
	.4byte lbl_806684AC
	.4byte func_8003A870
	.4byte func_8003A918
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.endobj lbl_805285B8

.obj lbl_805285F8, global
	.4byte lbl_80668470
	.4byte func_8003A950
	.4byte 0
	.4byte lbl_80668478
	.4byte func_8003A9A8
	.4byte 0
	.4byte lbl_80668480
	.4byte func_8003A668
	.4byte 0
	.4byte lbl_80668488
	.4byte func_8003A68C
	.4byte 0
	.4byte lbl_80668490
	.4byte func_8003A6D4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
.endobj lbl_805285F8


.obj lbl_80528640, global
	.4byte lbl_806684B0
	.4byte func_8003A7B4
	.4byte lbl_805285B8
	.4byte lbl_805285F8
.endobj lbl_80528640


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_80668468, global
	.asciz "atr"
.endobj lbl_80668468

.obj lbl_8066846C, global
	.asciz "no"
	.byte 0x00
.endobj lbl_8066846C

.obj lbl_80668470, global
	.asciz "send"
	.balign 4
.endobj lbl_80668470

.obj lbl_80668478, global
	.asciz "receive"
.endobj lbl_80668478

.obj lbl_80668480, global
	.asciz "init"
	.balign 4
.endobj lbl_80668480

.obj lbl_80668488, global
	.asciz "isFull"
	.balign 4
.endobj lbl_80668488

.obj lbl_80668490, global
	.asciz "isEmpty"
.endobj lbl_80668490

.obj lbl_80668498, global
	.asciz "msgYuka"
.endobj lbl_80668498

.obj lbl_806684A0, global
	.asciz "id"
	.byte 0x00
.endobj lbl_806684A0

.obj lbl_806684A4, global
	.asciz "talk"
	.balign 4
.endobj lbl_806684A4

.obj lbl_806684AC, global
	.asciz "dir"
.endobj lbl_806684AC

.obj lbl_806684B0, global
	.asciz "msgNpc"
	.balign 4
.endobj lbl_806684B0


.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj lbl_80573DD0, global
	.skip 0x18
.endobj lbl_80573DD0

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80666610, global
	.skip 0x4
.endobj lbl_80666610

.obj lbl_80666614, global
	.skip 0x4
.endobj lbl_80666614

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000684C", local
.hidden "@etb_8000684C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000684C"

.obj "@etb_80006854", local
.hidden "@etb_80006854"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006854"

.obj "@etb_8000685C", local
.hidden "@etb_8000685C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000685C"

.obj "@etb_80006864", local
.hidden "@etb_80006864"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80006864"

.obj "@etb_8000686C", local
.hidden "@etb_8000686C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000686C"

.obj "@etb_80006874", local
.hidden "@etb_80006874"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006874"

.obj "@etb_8000687C", local
.hidden "@etb_8000687C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000687C"

.obj "@etb_80006884", local
.hidden "@etb_80006884"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80006884"

.obj "@etb_8000688C", local
.hidden "@etb_8000688C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000688C"

.obj "@etb_80006894", local
.hidden "@etb_80006894"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006894"

.obj "@etb_8000689C", local
.hidden "@etb_8000689C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000689C"

.obj "@etb_800068A4", local
.hidden "@etb_800068A4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800068A4"

.obj "@etb_800068AC", local
.hidden "@etb_800068AC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800068AC"

.obj "@etb_800068B4", local
.hidden "@etb_800068B4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800068B4"

.obj "@etb_800068BC", local
.hidden "@etb_800068BC"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800068BC"


.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800211D0", local
.hidden "@eti_800211D0"
	.4byte func_8003A53C
	.4byte 0x0000004C
	.4byte "@etb_8000684C"
.endobj "@eti_800211D0"

.obj "@eti_800211DC", local
.hidden "@eti_800211DC"
	.4byte func_8003A588
	.4byte 0x00000038
	.4byte "@etb_80006854"
.endobj "@eti_800211DC"

.obj "@eti_800211E8", local
.hidden "@eti_800211E8"
	.4byte func_8003A5C0
	.4byte 0x00000038
	.4byte "@etb_8000685C"
.endobj "@eti_800211E8"

.obj "@eti_800211F4", local
.hidden "@eti_800211F4"
	.4byte func_8003A5F8
	.4byte 0x00000038
	.4byte "@etb_80006864"
.endobj "@eti_800211F4"

.obj "@eti_80021200", local
.hidden "@eti_80021200"
	.4byte func_8003A630
	.4byte 0x00000038
	.4byte "@etb_8000686C"
.endobj "@eti_80021200"

.obj "@eti_8002120C", local
.hidden "@eti_8002120C"
	.4byte func_8003A68C
	.4byte 0x00000048
	.4byte "@etb_80006874"
.endobj "@eti_8002120C"

.obj "@eti_80021218", local
.hidden "@eti_80021218"
	.4byte func_8003A6D4
	.4byte 0x00000040
	.4byte "@etb_8000687C"
.endobj "@eti_80021218"

.obj "@eti_80021224", local
.hidden "@eti_80021224"
	.4byte func_8003A7B4
	.4byte 0x0000004C
	.4byte "@etb_80006884"
.endobj "@eti_80021224"

.obj "@eti_80021230", local
.hidden "@eti_80021230"
	.4byte func_8003A800
	.4byte 0x00000038
	.4byte "@etb_8000688C"
.endobj "@eti_80021230"

.obj "@eti_8002123C", local
.hidden "@eti_8002123C"
	.4byte func_8003A838
	.4byte 0x00000038
	.4byte "@etb_80006894"
.endobj "@eti_8002123C"

.obj "@eti_80021248", local
.hidden "@eti_80021248"
	.4byte func_8003A870
	.4byte 0x00000038
	.4byte "@etb_8000689C"
.endobj "@eti_80021248"

.obj "@eti_80021254", local
.hidden "@eti_80021254"
	.4byte func_8003A8A8
	.4byte 0x00000038
	.4byte "@etb_800068A4"
.endobj "@eti_80021254"

.obj "@eti_80021260", local
.hidden "@eti_80021260"
	.4byte func_8003A8E0
	.4byte 0x00000038
	.4byte "@etb_800068AC"
.endobj "@eti_80021260"

.obj "@eti_8002126C", local
.hidden "@eti_8002126C"
	.4byte func_8003A918
	.4byte 0x00000038
	.4byte "@etb_800068B4"
.endobj "@eti_8002126C"

.obj "@eti_80021278", local
.hidden "@eti_80021278"
	.4byte ocMsgRegist
	.4byte 0x00000034
	.4byte "@etb_800068BC"
.endobj "@eti_80021278"
