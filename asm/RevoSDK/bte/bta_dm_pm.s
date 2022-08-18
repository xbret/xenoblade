.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global bta_dm_init_pm
bta_dm_init_pm:
/* 802E16CC 002AAC8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E16D0 002AAC90  7C 08 02 A6 */	mflr r0
/* 802E16D4 002AAC94  3C 60 80 5C */	lis r3, lbl_805BF798@ha
/* 802E16D8 002AAC98  38 80 00 00 */	li r4, 0
/* 802E16DC 002AAC9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E16E0 002AACA0  38 63 F7 98 */	addi r3, r3, lbl_805BF798@l
/* 802E16E4 002AACA4  38 A0 00 2E */	li r5, 0x2e
/* 802E16E8 002AACA8  4B D2 2C 69 */	bl memset
/* 802E16EC 002AACAC  80 6D 97 60 */	lwz r3, lbl_806658E0@sda21(r13)
/* 802E16F0 002AACB0  88 03 00 01 */	lbz r0, 1(r3)
/* 802E16F4 002AACB4  2C 00 00 00 */	cmpwi r0, 0
/* 802E16F8 002AACB8  41 82 00 2C */	beq lbl_802E1724
/* 802E16FC 002AACBC  3C 60 80 2E */	lis r3, bta_dm_pm_cback@ha
/* 802E1700 002AACC0  38 63 17 4C */	addi r3, r3, bta_dm_pm_cback@l
/* 802E1704 002AACC4  4B FF D0 25 */	bl bta_sys_pm_register
/* 802E1708 002AACC8  3C 80 80 5C */	lis r4, lbl_805BF694@ha
/* 802E170C 002AACCC  3C A0 80 2E */	lis r5, bta_dm_pm_btm_cback@ha
/* 802E1710 002AACD0  38 84 F6 94 */	addi r4, r4, lbl_805BF694@l
/* 802E1714 002AACD4  38 60 00 03 */	li r3, 3
/* 802E1718 002AACD8  38 84 00 95 */	addi r4, r4, 0x95
/* 802E171C 002AACDC  38 A5 1E 4C */	addi r5, r5, bta_dm_pm_btm_cback@l
/* 802E1720 002AACE0  48 00 87 A1 */	bl BTM_PmRegister
lbl_802E1724:
/* 802E1724 002AACE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1728 002AACE8  7C 08 03 A6 */	mtlr r0
/* 802E172C 002AACEC  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1730 002AACF0  4E 80 00 20 */	blr 

.global bta_dm_disable_pm
bta_dm_disable_pm:
/* 802E1734 002AACF4  3C 80 80 5C */	lis r4, lbl_805BF694@ha
/* 802E1738 002AACF8  38 60 00 04 */	li r3, 4
/* 802E173C 002AACFC  38 84 F6 94 */	addi r4, r4, lbl_805BF694@l
/* 802E1740 002AAD00  38 A0 00 00 */	li r5, 0
/* 802E1744 002AAD04  38 84 00 95 */	addi r4, r4, 0x95
/* 802E1748 002AAD08  48 00 87 78 */	b BTM_PmRegister


bta_dm_pm_cback:
/* 802E174C 002AAD0C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802E1750 002AAD10  7C 08 02 A6 */	mflr r0
/* 802E1754 002AAD14  90 01 00 44 */	stw r0, 0x44(r1)
/* 802E1758 002AAD18  39 61 00 40 */	addi r11, r1, 0x40
/* 802E175C 002AAD1C  4B FD 89 E9 */	bl _savegpr_23
/* 802E1760 002AAD20  7C 79 1B 78 */	mr r25, r3
/* 802E1764 002AAD24  7C 9A 23 78 */	mr r26, r4
/* 802E1768 002AAD28  7C BB 2B 78 */	mr r27, r5
/* 802E176C 002AAD2C  7C DC 33 78 */	mr r28, r6
/* 802E1770 002AAD30  38 61 00 0C */	addi r3, r1, 0xc
/* 802E1774 002AAD34  48 00 61 E5 */	bl BTM_ReadLocalVersion
/* 802E1778 002AAD38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802E177C 002AAD3C  40 82 00 6C */	bne lbl_802E17E8
/* 802E1780 002AAD40  A0 01 00 12 */	lhz r0, 0x12(r1)
/* 802E1784 002AAD44  28 00 00 0F */	cmplwi r0, 0xf
/* 802E1788 002AAD48  40 82 00 60 */	bne lbl_802E17E8
/* 802E178C 002AAD4C  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802E1790 002AAD50  28 00 00 03 */	cmplwi r0, 3
/* 802E1794 002AAD54  40 80 00 54 */	bge lbl_802E17E8
/* 802E1798 002AAD58  28 19 00 04 */	cmplwi r25, 4
/* 802E179C 002AAD5C  40 82 00 28 */	bne lbl_802E17C4
/* 802E17A0 002AAD60  3C A0 80 51 */	lis r5, lbl_8050DF48@ha
/* 802E17A4 002AAD64  7F 83 E3 78 */	mr r3, r28
/* 802E17A8 002AAD68  38 A5 DF 48 */	addi r5, r5, lbl_8050DF48@l
/* 802E17AC 002AAD6C  38 81 00 08 */	addi r4, r1, 8
/* 802E17B0 002AAD70  A0 05 00 04 */	lhz r0, 4(r5)
/* 802E17B4 002AAD74  70 00 00 0B */	andi. r0, r0, 0xb
/* 802E17B8 002AAD78  B0 01 00 08 */	sth r0, 8(r1)
/* 802E17BC 002AAD7C  48 00 35 AD */	bl BTM_SetLinkPolicy
/* 802E17C0 002AAD80  48 00 00 28 */	b lbl_802E17E8
lbl_802E17C4:
/* 802E17C4 002AAD84  28 19 00 05 */	cmplwi r25, 5
/* 802E17C8 002AAD88  40 82 00 20 */	bne lbl_802E17E8
/* 802E17CC 002AAD8C  3C A0 80 51 */	lis r5, lbl_8050DF48@ha
/* 802E17D0 002AAD90  7F 83 E3 78 */	mr r3, r28
/* 802E17D4 002AAD94  38 A5 DF 48 */	addi r5, r5, lbl_8050DF48@l
/* 802E17D8 002AAD98  38 81 00 08 */	addi r4, r1, 8
/* 802E17DC 002AAD9C  A0 05 00 04 */	lhz r0, 4(r5)
/* 802E17E0 002AADA0  B0 01 00 08 */	sth r0, 8(r1)
/* 802E17E4 002AADA4  48 00 35 85 */	bl BTM_SetLinkPolicy
lbl_802E17E8:
/* 802E17E8 002AADA8  80 AD 97 60 */	lwz r5, lbl_806658E0@sda21(r13)
/* 802E17EC 002AADAC  3B C0 00 01 */	li r30, 1
/* 802E17F0 002AADB0  88 85 00 01 */	lbz r4, 1(r5)
/* 802E17F4 002AADB4  48 00 00 38 */	b lbl_802E182C
lbl_802E17F8:
/* 802E17F8 002AADB8  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 802E17FC 002AADBC  57 C0 15 BA */	rlwinm r0, r30, 2, 0x16, 0x1d
/* 802E1800 002AADC0  7C 03 00 50 */	subf r0, r3, r0
/* 802E1804 002AADC4  7C 65 02 14 */	add r3, r5, r0
/* 802E1808 002AADC8  7C 05 00 AE */	lbzx r0, r5, r0
/* 802E180C 002AADCC  7C 1A 00 40 */	cmplw r26, r0
/* 802E1810 002AADD0  40 82 00 18 */	bne lbl_802E1828
/* 802E1814 002AADD4  88 03 00 01 */	lbz r0, 1(r3)
/* 802E1818 002AADD8  28 00 00 FF */	cmplwi r0, 0xff
/* 802E181C 002AADDC  41 82 00 1C */	beq lbl_802E1838
/* 802E1820 002AADE0  7C 1B 00 40 */	cmplw r27, r0
/* 802E1824 002AADE4  41 82 00 14 */	beq lbl_802E1838
lbl_802E1828:
/* 802E1828 002AADE8  3B DE 00 01 */	addi r30, r30, 1
lbl_802E182C:
/* 802E182C 002AADEC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802E1830 002AADF0  7C 00 20 40 */	cmplw r0, r4
/* 802E1834 002AADF4  40 81 FF C4 */	ble lbl_802E17F8
lbl_802E1838:
/* 802E1838 002AADF8  88 05 00 01 */	lbz r0, 1(r5)
/* 802E183C 002AADFC  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 802E1840 002AAE00  7C 03 00 40 */	cmplw r3, r0
/* 802E1844 002AAE04  41 81 02 70 */	bgt lbl_802E1AB4
/* 802E1848 002AAE08  3E E0 80 5C */	lis r23, lbl_805BF694@ha
/* 802E184C 002AAE0C  3B E0 00 00 */	li r31, 0
/* 802E1850 002AAE10  3A F7 F6 94 */	addi r23, r23, lbl_805BF694@l
lbl_802E1854:
/* 802E1854 002AAE14  57 FD 2C F4 */	rlwinm r29, r31, 5, 0x13, 0x1a
/* 802E1858 002AAE18  7F 17 EA 14 */	add r24, r23, r29
/* 802E185C 002AAE1C  88 18 00 B6 */	lbz r0, 0xb6(r24)
/* 802E1860 002AAE20  2C 00 00 00 */	cmpwi r0, 0
/* 802E1864 002AAE24  41 82 00 30 */	beq lbl_802E1894
/* 802E1868 002AAE28  7F 84 E3 78 */	mr r4, r28
/* 802E186C 002AAE2C  38 78 00 B0 */	addi r3, r24, 0xb0
/* 802E1870 002AAE30  4B FF CD F9 */	bl bdcmp
/* 802E1874 002AAE34  2C 03 00 00 */	cmpwi r3, 0
/* 802E1878 002AAE38  40 82 00 1C */	bne lbl_802E1894
/* 802E187C 002AAE3C  7F 03 C3 78 */	mr r3, r24
/* 802E1880 002AAE40  38 63 00 98 */	addi r3, r3, 0x98
/* 802E1884 002AAE44  4B FF D2 99 */	bl bta_sys_stop_timer
/* 802E1888 002AAE48  38 00 00 00 */	li r0, 0
/* 802E188C 002AAE4C  98 18 00 B6 */	stb r0, 0xb6(r24)
/* 802E1890 002AAE50  48 00 00 10 */	b lbl_802E18A0
lbl_802E1894:
/* 802E1894 002AAE54  3B FF 00 01 */	addi r31, r31, 1
/* 802E1898 002AAE58  28 1F 00 03 */	cmplwi r31, 3
/* 802E189C 002AAE5C  41 80 FF B8 */	blt lbl_802E1854
lbl_802E18A0:
/* 802E18A0 002AAE60  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 802E18A4 002AAE64  57 C3 15 BA */	rlwinm r3, r30, 2, 0x16, 0x1d
/* 802E18A8 002AAE68  7F C4 18 50 */	subf r30, r4, r3
/* 802E18AC 002AAE6C  80 0D 97 60 */	lwz r0, lbl_806658E0@sda21(r13)
/* 802E18B0 002AAE70  80 8D 97 64 */	lwz r4, lbl_806658E4@sda21(r13)
/* 802E18B4 002AAE74  57 3F 1D 78 */	rlwinm r31, r25, 3, 0x15, 0x1c
/* 802E18B8 002AAE78  7C 60 F2 14 */	add r3, r0, r30
/* 802E18BC 002AAE7C  88 03 00 02 */	lbz r0, 2(r3)
/* 802E18C0 002AAE80  1C 00 00 4A */	mulli r0, r0, 0x4a
/* 802E18C4 002AAE84  7C 04 02 14 */	add r0, r4, r0
/* 802E18C8 002AAE88  7C 60 FA 14 */	add r3, r0, r31
/* 802E18CC 002AAE8C  88 03 00 02 */	lbz r0, 2(r3)
/* 802E18D0 002AAE90  2C 00 00 00 */	cmpwi r0, 0
/* 802E18D4 002AAE94  41 82 01 E0 */	beq lbl_802E1AB4
/* 802E18D8 002AAE98  3E E0 80 5C */	lis r23, lbl_805BF798@ha
/* 802E18DC 002AAE9C  3B A0 00 00 */	li r29, 0
/* 802E18E0 002AAEA0  3B 17 F7 98 */	addi r24, r23, lbl_805BF798@l
/* 802E18E4 002AAEA4  48 00 00 44 */	b lbl_802E1928
lbl_802E18E8:
/* 802E18E8 002AAEA8  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 802E18EC 002AAEAC  57 A0 1D 78 */	rlwinm r0, r29, 3, 0x15, 0x1c
/* 802E18F0 002AAEB0  7C 00 1A 14 */	add r0, r0, r3
/* 802E18F4 002AAEB4  7C 78 02 14 */	add r3, r24, r0
/* 802E18F8 002AAEB8  88 03 00 07 */	lbz r0, 7(r3)
/* 802E18FC 002AAEBC  7C 1A 00 40 */	cmplw r26, r0
/* 802E1900 002AAEC0  40 82 00 24 */	bne lbl_802E1924
/* 802E1904 002AAEC4  88 03 00 08 */	lbz r0, 8(r3)
/* 802E1908 002AAEC8  7C 1B 00 40 */	cmplw r27, r0
/* 802E190C 002AAECC  40 82 00 18 */	bne lbl_802E1924
/* 802E1910 002AAED0  7F 84 E3 78 */	mr r4, r28
/* 802E1914 002AAED4  38 63 00 01 */	addi r3, r3, 1
/* 802E1918 002AAED8  4B FF CD 51 */	bl bdcmp
/* 802E191C 002AAEDC  2C 03 00 00 */	cmpwi r3, 0
/* 802E1920 002AAEE0  41 82 00 18 */	beq lbl_802E1938
lbl_802E1924:
/* 802E1924 002AAEE4  3B BD 00 01 */	addi r29, r29, 1
lbl_802E1928:
/* 802E1928 002AAEE8  88 17 F7 98 */	lbz r0, lbl_805BF798@l(r23)
/* 802E192C 002AAEEC  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 802E1930 002AAEF0  7C 03 00 40 */	cmplw r3, r0
/* 802E1934 002AAEF4  41 80 FF B4 */	blt lbl_802E18E8
lbl_802E1938:
/* 802E1938 002AAEF8  80 0D 97 60 */	lwz r0, lbl_806658E0@sda21(r13)
/* 802E193C 002AAEFC  80 8D 97 64 */	lwz r4, lbl_806658E4@sda21(r13)
/* 802E1940 002AAF00  7C 60 F2 14 */	add r3, r0, r30
/* 802E1944 002AAF04  88 03 00 02 */	lbz r0, 2(r3)
/* 802E1948 002AAF08  1C 00 00 4A */	mulli r0, r0, 0x4a
/* 802E194C 002AAF0C  7C 04 02 14 */	add r0, r4, r0
/* 802E1950 002AAF10  7C 60 FA 14 */	add r3, r0, r31
/* 802E1954 002AAF14  88 03 00 02 */	lbz r0, 2(r3)
/* 802E1958 002AAF18  28 00 00 10 */	cmplwi r0, 0x10
/* 802E195C 002AAF1C  40 82 00 70 */	bne lbl_802E19CC
/* 802E1960 002AAF20  3F 60 80 5C */	lis r27, lbl_805BF798@ha
/* 802E1964 002AAF24  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 802E1968 002AAF28  88 1B F7 98 */	lbz r0, lbl_805BF798@l(r27)
/* 802E196C 002AAF2C  7C 03 00 40 */	cmplw r3, r0
/* 802E1970 002AAF30  41 82 00 C8 */	beq lbl_802E1A38
/* 802E1974 002AAF34  3B 5B F7 98 */	addi r26, r27, lbl_805BF798@l
/* 802E1978 002AAF38  48 00 00 38 */	b lbl_802E19B0
lbl_802E197C:
/* 802E197C 002AAF3C  57 A6 06 3E */	clrlwi r6, r29, 0x18
/* 802E1980 002AAF40  57 A4 1D 78 */	rlwinm r4, r29, 3, 0x15, 0x1c
/* 802E1984 002AAF44  38 66 00 01 */	addi r3, r6, 1
/* 802E1988 002AAF48  38 A0 00 09 */	li r5, 9
/* 802E198C 002AAF4C  54 60 18 38 */	slwi r0, r3, 3
/* 802E1990 002AAF50  7C 84 32 14 */	add r4, r4, r6
/* 802E1994 002AAF54  7C 00 1A 14 */	add r0, r0, r3
/* 802E1998 002AAF58  7C 7A 22 14 */	add r3, r26, r4
/* 802E199C 002AAF5C  7C 9A 02 14 */	add r4, r26, r0
/* 802E19A0 002AAF60  38 63 00 01 */	addi r3, r3, 1
/* 802E19A4 002AAF64  38 84 00 01 */	addi r4, r4, 1
/* 802E19A8 002AAF68  4B D2 26 59 */	bl memcpy
/* 802E19AC 002AAF6C  3B BD 00 01 */	addi r29, r29, 1
lbl_802E19B0:
/* 802E19B0 002AAF70  88 7B F7 98 */	lbz r3, lbl_805BF798@l(r27)
/* 802E19B4 002AAF74  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802E19B8 002AAF78  7C 00 18 40 */	cmplw r0, r3
/* 802E19BC 002AAF7C  41 80 FF C0 */	blt lbl_802E197C
/* 802E19C0 002AAF80  38 03 FF FF */	addi r0, r3, -1
/* 802E19C4 002AAF84  98 1B F7 98 */	stb r0, lbl_805BF798@l(r27)
/* 802E19C8 002AAF88  48 00 00 70 */	b lbl_802E1A38
lbl_802E19CC:
/* 802E19CC 002AAF8C  3F C0 80 5C */	lis r30, lbl_805BF798@ha
/* 802E19D0 002AAF90  57 A4 06 3E */	clrlwi r4, r29, 0x18
/* 802E19D4 002AAF94  88 1E F7 98 */	lbz r0, lbl_805BF798@l(r30)
/* 802E19D8 002AAF98  7C 04 00 40 */	cmplw r4, r0
/* 802E19DC 002AAF9C  40 82 00 5C */	bne lbl_802E1A38
/* 802E19E0 002AAFA0  28 00 00 05 */	cmplwi r0, 5
/* 802E19E4 002AAFA4  40 82 00 24 */	bne lbl_802E1A08
/* 802E19E8 002AAFA8  88 0D B5 F8 */	lbz r0, lbl_80667778@sda21(r13)
/* 802E19EC 002AAFAC  28 00 00 02 */	cmplwi r0, 2
/* 802E19F0 002AAFB0  41 80 00 C4 */	blt lbl_802E1AB4
/* 802E19F4 002AAFB4  3C 80 80 54 */	lis r4, lbl_80544148@ha
/* 802E19F8 002AAFB8  38 60 05 01 */	li r3, 0x501
/* 802E19FC 002AAFBC  38 84 41 48 */	addi r4, r4, lbl_80544148@l
/* 802E1A00 002AAFC0  4B FF C5 A1 */	bl LogMsg_0
/* 802E1A04 002AAFC4  48 00 00 B0 */	b lbl_802E1AB4
lbl_802E1A08:
/* 802E1A08 002AAFC8  57 A3 1D 78 */	rlwinm r3, r29, 3, 0x15, 0x1c
/* 802E1A0C 002AAFCC  38 1E F7 98 */	addi r0, r30, lbl_805BF798@l
/* 802E1A10 002AAFD0  7C 63 22 14 */	add r3, r3, r4
/* 802E1A14 002AAFD4  7F 84 E3 78 */	mr r4, r28
/* 802E1A18 002AAFD8  7C A0 1A 14 */	add r5, r0, r3
/* 802E1A1C 002AAFDC  9B 45 00 07 */	stb r26, 7(r5)
/* 802E1A20 002AAFE0  38 65 00 01 */	addi r3, r5, 1
/* 802E1A24 002AAFE4  9B 65 00 08 */	stb r27, 8(r5)
/* 802E1A28 002AAFE8  4B FF CC 0D */	bl bdcpy
/* 802E1A2C 002AAFEC  88 7E F7 98 */	lbz r3, lbl_805BF798@l(r30)
/* 802E1A30 002AAFF0  38 03 00 01 */	addi r0, r3, 1
/* 802E1A34 002AAFF4  98 1E F7 98 */	stb r0, lbl_805BF798@l(r30)
lbl_802E1A38:
/* 802E1A38 002AAFF8  3C 60 80 5C */	lis r3, lbl_805BF694@ha
/* 802E1A3C 002AAFFC  3B 00 00 00 */	li r24, 0
/* 802E1A40 002AB000  3B 43 F6 94 */	addi r26, r3, lbl_805BF694@l
/* 802E1A44 002AB004  48 00 00 38 */	b lbl_802E1A7C
lbl_802E1A48:
/* 802E1A48 002AB008  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 802E1A4C 002AB00C  7F 84 E3 78 */	mr r4, r28
/* 802E1A50 002AB010  1E E0 00 0B */	mulli r23, r0, 0xb
/* 802E1A54 002AB014  7C 7A BA 14 */	add r3, r26, r23
/* 802E1A58 002AB018  4B FF CC 11 */	bl bdcmp
/* 802E1A5C 002AB01C  2C 03 00 00 */	cmpwi r3, 0
/* 802E1A60 002AB020  40 82 00 18 */	bne lbl_802E1A78
/* 802E1A64 002AB024  7C 7A BA 14 */	add r3, r26, r23
/* 802E1A68 002AB028  38 00 00 00 */	li r0, 0
/* 802E1A6C 002AB02C  98 03 00 09 */	stb r0, 9(r3)
/* 802E1A70 002AB030  98 03 00 0A */	stb r0, 0xa(r3)
/* 802E1A74 002AB034  48 00 00 18 */	b lbl_802E1A8C
lbl_802E1A78:
/* 802E1A78 002AB038  3B 18 00 01 */	addi r24, r24, 1
lbl_802E1A7C:
/* 802E1A7C 002AB03C  88 1A 00 4D */	lbz r0, 0x4d(r26)
/* 802E1A80 002AB040  57 03 06 3E */	clrlwi r3, r24, 0x18
/* 802E1A84 002AB044  7C 03 00 40 */	cmplw r3, r0
/* 802E1A88 002AB048  41 80 FF C0 */	blt lbl_802E1A48
lbl_802E1A8C:
/* 802E1A8C 002AB04C  3C C0 80 5C */	lis r6, lbl_805BF798@ha
/* 802E1A90 002AB050  57 A5 06 3E */	clrlwi r5, r29, 0x18
/* 802E1A94 002AB054  57 A0 1D 78 */	rlwinm r0, r29, 3, 0x15, 0x1c
/* 802E1A98 002AB058  7F 83 E3 78 */	mr r3, r28
/* 802E1A9C 002AB05C  38 C6 F7 98 */	addi r6, r6, lbl_805BF798@l
/* 802E1AA0 002AB060  38 80 00 00 */	li r4, 0
/* 802E1AA4 002AB064  7C 00 2A 14 */	add r0, r0, r5
/* 802E1AA8 002AB068  7C A6 02 14 */	add r5, r6, r0
/* 802E1AAC 002AB06C  9B 25 00 09 */	stb r25, 9(r5)
/* 802E1AB0 002AB070  48 00 00 1D */	bl bta_dm_pm_set_mode
lbl_802E1AB4:
/* 802E1AB4 002AB074  39 61 00 40 */	addi r11, r1, 0x40
/* 802E1AB8 002AB078  4B FD 86 D9 */	bl _restgpr_23
/* 802E1ABC 002AB07C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802E1AC0 002AB080  7C 08 03 A6 */	mtlr r0
/* 802E1AC4 002AB084  38 21 00 40 */	addi r1, r1, 0x40
/* 802E1AC8 002AB088  4E 80 00 20 */	blr 

.global bta_dm_pm_set_mode
bta_dm_pm_set_mode:
/* 802E1ACC 002AB08C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802E1AD0 002AB090  7C 08 02 A6 */	mflr r0
/* 802E1AD4 002AB094  90 01 00 54 */	stw r0, 0x54(r1)
/* 802E1AD8 002AB098  39 61 00 50 */	addi r11, r1, 0x50
/* 802E1ADC 002AB09C  4B FD 86 5D */	bl _savegpr_20
/* 802E1AE0 002AB0A0  3C A0 80 5C */	lis r5, lbl_805BF694@ha
/* 802E1AE4 002AB0A4  7C 74 1B 78 */	mr r20, r3
/* 802E1AE8 002AB0A8  3B 85 F6 94 */	addi r28, r5, lbl_805BF694@l
/* 802E1AEC 002AB0AC  7C 95 23 78 */	mr r21, r4
/* 802E1AF0 002AB0B0  88 1C 00 4D */	lbz r0, 0x4d(r28)
/* 802E1AF4 002AB0B4  3B 60 00 00 */	li r27, 0
/* 802E1AF8 002AB0B8  3B 40 00 00 */	li r26, 0
/* 802E1AFC 002AB0BC  3B 20 00 00 */	li r25, 0
/* 802E1B00 002AB0C0  2C 00 00 00 */	cmpwi r0, 0
/* 802E1B04 002AB0C4  3B 00 00 00 */	li r24, 0
/* 802E1B08 002AB0C8  3A E0 00 00 */	li r23, 0
/* 802E1B0C 002AB0CC  3A C0 00 00 */	li r22, 0
/* 802E1B10 002AB0D0  41 82 03 24 */	beq lbl_802E1E34
/* 802E1B14 002AB0D4  3B C0 00 00 */	li r30, 0
/* 802E1B18 002AB0D8  48 00 00 30 */	b lbl_802E1B48
lbl_802E1B1C:
/* 802E1B1C 002AB0DC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802E1B20 002AB0E0  7E 84 A3 78 */	mr r4, r20
/* 802E1B24 002AB0E4  1F A0 00 0B */	mulli r29, r0, 0xb
/* 802E1B28 002AB0E8  7C 7C EA 14 */	add r3, r28, r29
/* 802E1B2C 002AB0EC  4B FF CB 3D */	bl bdcmp
/* 802E1B30 002AB0F0  2C 03 00 00 */	cmpwi r3, 0
/* 802E1B34 002AB0F4  40 82 00 10 */	bne lbl_802E1B44
/* 802E1B38 002AB0F8  7F 1C EA 14 */	add r24, r28, r29
/* 802E1B3C 002AB0FC  8B 38 00 0A */	lbz r25, 0xa(r24)
/* 802E1B40 002AB100  48 00 00 18 */	b lbl_802E1B58
lbl_802E1B44:
/* 802E1B44 002AB104  3B DE 00 01 */	addi r30, r30, 1
lbl_802E1B48:
/* 802E1B48 002AB108  88 1C 00 4D */	lbz r0, 0x4d(r28)
/* 802E1B4C 002AB10C  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 802E1B50 002AB110  7C 03 00 40 */	cmplw r3, r0
/* 802E1B54 002AB114  41 80 FF C8 */	blt lbl_802E1B1C
lbl_802E1B58:
/* 802E1B58 002AB118  2C 18 00 00 */	cmpwi r24, 0
/* 802E1B5C 002AB11C  41 82 02 D8 */	beq lbl_802E1E34
/* 802E1B60 002AB120  3F C0 80 5C */	lis r30, lbl_805BF798@ha
/* 802E1B64 002AB124  3B 80 00 00 */	li r28, 0
/* 802E1B68 002AB128  3B FE F7 98 */	addi r31, r30, lbl_805BF798@l
/* 802E1B6C 002AB12C  48 00 01 30 */	b lbl_802E1C9C
lbl_802E1B70:
/* 802E1B70 002AB130  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 802E1B74 002AB134  57 80 1D 78 */	rlwinm r0, r28, 3, 0x15, 0x1c
/* 802E1B78 002AB138  7F A0 1A 14 */	add r29, r0, r3
/* 802E1B7C 002AB13C  7E 84 A3 78 */	mr r4, r20
/* 802E1B80 002AB140  7C 7F EA 14 */	add r3, r31, r29
/* 802E1B84 002AB144  38 63 00 01 */	addi r3, r3, 1
/* 802E1B88 002AB148  4B FF CA E1 */	bl bdcmp
/* 802E1B8C 002AB14C  2C 03 00 00 */	cmpwi r3, 0
/* 802E1B90 002AB150  40 82 01 08 */	bne lbl_802E1C98
/* 802E1B94 002AB154  80 ED 97 60 */	lwz r7, lbl_806658E0@sda21(r13)
/* 802E1B98 002AB158  7D 1F EA 14 */	add r8, r31, r29
/* 802E1B9C 002AB15C  88 68 00 08 */	lbz r3, 8(r8)
/* 802E1BA0 002AB160  39 20 00 01 */	li r9, 1
/* 802E1BA4 002AB164  88 C7 00 01 */	lbz r6, 1(r7)
/* 802E1BA8 002AB168  88 88 00 07 */	lbz r4, 7(r8)
/* 802E1BAC 002AB16C  48 00 00 38 */	b lbl_802E1BE4
lbl_802E1BB0:
/* 802E1BB0 002AB170  55 25 06 3E */	clrlwi r5, r9, 0x18
/* 802E1BB4 002AB174  55 20 15 BA */	rlwinm r0, r9, 2, 0x16, 0x1d
/* 802E1BB8 002AB178  7C 05 00 50 */	subf r0, r5, r0
/* 802E1BBC 002AB17C  7C A7 02 14 */	add r5, r7, r0
/* 802E1BC0 002AB180  7C 07 00 AE */	lbzx r0, r7, r0
/* 802E1BC4 002AB184  7C 00 20 40 */	cmplw r0, r4
/* 802E1BC8 002AB188  40 82 00 18 */	bne lbl_802E1BE0
/* 802E1BCC 002AB18C  88 05 00 01 */	lbz r0, 1(r5)
/* 802E1BD0 002AB190  28 00 00 FF */	cmplwi r0, 0xff
/* 802E1BD4 002AB194  41 82 00 1C */	beq lbl_802E1BF0
/* 802E1BD8 002AB198  7C 00 18 40 */	cmplw r0, r3
/* 802E1BDC 002AB19C  41 82 00 14 */	beq lbl_802E1BF0
lbl_802E1BE0:
/* 802E1BE0 002AB1A0  39 29 00 01 */	addi r9, r9, 1
lbl_802E1BE4:
/* 802E1BE4 002AB1A4  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 802E1BE8 002AB1A8  7C 00 30 40 */	cmplw r0, r6
/* 802E1BEC 002AB1AC  40 81 FF C4 */	ble lbl_802E1BB0
lbl_802E1BF0:
/* 802E1BF0 002AB1B0  55 23 06 3E */	clrlwi r3, r9, 0x18
/* 802E1BF4 002AB1B4  55 20 15 BA */	rlwinm r0, r9, 2, 0x16, 0x1d
/* 802E1BF8 002AB1B8  7C 63 00 50 */	subf r3, r3, r0
/* 802E1BFC 002AB1BC  88 08 00 09 */	lbz r0, 9(r8)
/* 802E1C00 002AB1C0  7C 87 1A 14 */	add r4, r7, r3
/* 802E1C04 002AB1C4  80 6D 97 64 */	lwz r3, lbl_806658E4@sda21(r13)
/* 802E1C08 002AB1C8  88 84 00 02 */	lbz r4, 2(r4)
/* 802E1C0C 002AB1CC  54 00 18 38 */	slwi r0, r0, 3
/* 802E1C10 002AB1D0  1C 84 00 4A */	mulli r4, r4, 0x4a
/* 802E1C14 002AB1D4  7C A3 22 14 */	add r5, r3, r4
/* 802E1C18 002AB1D8  7C 65 02 14 */	add r3, r5, r0
/* 802E1C1C 002AB1DC  88 05 00 00 */	lbz r0, 0(r5)
/* 802E1C20 002AB1E0  88 83 00 02 */	lbz r4, 2(r3)
/* 802E1C24 002AB1E4  7E F7 03 78 */	or r23, r23, r0
/* 802E1C28 002AB1E8  7F 20 20 39 */	and. r0, r25, r4
/* 802E1C2C 002AB1EC  40 82 00 34 */	bne lbl_802E1C60
/* 802E1C30 002AB1F0  7C 7F EA 14 */	add r3, r31, r29
/* 802E1C34 002AB1F4  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 802E1C38 002AB1F8  88 63 00 09 */	lbz r3, 9(r3)
/* 802E1C3C 002AB1FC  54 63 18 38 */	slwi r3, r3, 3
/* 802E1C40 002AB200  7C A5 1A 14 */	add r5, r5, r3
/* 802E1C44 002AB204  88 65 00 02 */	lbz r3, 2(r5)
/* 802E1C48 002AB208  7C 03 00 40 */	cmplw r3, r0
/* 802E1C4C 002AB20C  7E D6 1B 78 */	or r22, r22, r3
/* 802E1C50 002AB210  40 81 00 48 */	ble lbl_802E1C98
/* 802E1C54 002AB214  A3 45 00 04 */	lhz r26, 4(r5)
/* 802E1C58 002AB218  7C 9B 23 78 */	mr r27, r4
/* 802E1C5C 002AB21C  48 00 00 3C */	b lbl_802E1C98
lbl_802E1C60:
/* 802E1C60 002AB220  88 63 00 06 */	lbz r3, 6(r3)
/* 802E1C64 002AB224  7F 20 18 39 */	and. r0, r25, r3
/* 802E1C68 002AB228  40 82 00 30 */	bne lbl_802E1C98
/* 802E1C6C 002AB22C  7C 9F EA 14 */	add r4, r31, r29
/* 802E1C70 002AB230  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 802E1C74 002AB234  88 84 00 09 */	lbz r4, 9(r4)
/* 802E1C78 002AB238  54 84 18 38 */	slwi r4, r4, 3
/* 802E1C7C 002AB23C  7C A5 22 14 */	add r5, r5, r4
/* 802E1C80 002AB240  88 85 00 06 */	lbz r4, 6(r5)
/* 802E1C84 002AB244  7C 04 00 40 */	cmplw r4, r0
/* 802E1C88 002AB248  7E D6 23 78 */	or r22, r22, r4
/* 802E1C8C 002AB24C  40 81 00 0C */	ble lbl_802E1C98
/* 802E1C90 002AB250  7C 7B 1B 78 */	mr r27, r3
/* 802E1C94 002AB254  A3 45 00 08 */	lhz r26, 8(r5)
lbl_802E1C98:
/* 802E1C98 002AB258  3B 9C 00 01 */	addi r28, r28, 1
lbl_802E1C9C:
/* 802E1C9C 002AB25C  88 1E F7 98 */	lbz r0, lbl_805BF798@l(r30)
/* 802E1CA0 002AB260  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 802E1CA4 002AB264  7C 03 00 40 */	cmplw r3, r0
/* 802E1CA8 002AB268  41 80 FE C8 */	blt lbl_802E1B70
/* 802E1CAC 002AB26C  57 60 07 BF */	clrlwi. r0, r27, 0x1e
/* 802E1CB0 002AB270  41 82 00 24 */	beq lbl_802E1CD4
/* 802E1CB4 002AB274  56 E3 06 3E */	clrlwi r3, r23, 0x18
/* 802E1CB8 002AB278  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 802E1CBC 002AB27C  7C 60 00 39 */	and. r0, r3, r0
/* 802E1CC0 002AB280  40 82 00 14 */	bne lbl_802E1CD4
/* 802E1CC4 002AB284  7E E0 B0 38 */	and r0, r23, r22
/* 802E1CC8 002AB288  54 1B 07 BF */	clrlwi. r27, r0, 0x1e
/* 802E1CCC 002AB28C  40 82 00 08 */	bne lbl_802E1CD4
/* 802E1CD0 002AB290  3B 40 00 00 */	li r26, 0
lbl_802E1CD4:
/* 802E1CD4 002AB294  2C 15 00 00 */	cmpwi r21, 0
/* 802E1CD8 002AB298  40 82 00 A0 */	bne lbl_802E1D78
/* 802E1CDC 002AB29C  2C 1A 00 00 */	cmpwi r26, 0
/* 802E1CE0 002AB2A0  41 82 00 98 */	beq lbl_802E1D78
/* 802E1CE4 002AB2A4  3E A0 80 5C */	lis r21, lbl_805BF694@ha
/* 802E1CE8 002AB2A8  38 00 00 03 */	li r0, 3
/* 802E1CEC 002AB2AC  3A B5 F6 94 */	addi r21, r21, lbl_805BF694@l
/* 802E1CF0 002AB2B0  38 80 00 00 */	li r4, 0
/* 802E1CF4 002AB2B4  7C 09 03 A6 */	mtctr r0
lbl_802E1CF8:
/* 802E1CF8 002AB2B8  54 96 2C F4 */	rlwinm r22, r4, 5, 0x13, 0x1a
/* 802E1CFC 002AB2BC  7C 75 B2 14 */	add r3, r21, r22
/* 802E1D00 002AB2C0  88 03 00 B6 */	lbz r0, 0xb6(r3)
/* 802E1D04 002AB2C4  2C 00 00 00 */	cmpwi r0, 0
/* 802E1D08 002AB2C8  40 82 00 3C */	bne lbl_802E1D44
/* 802E1D0C 002AB2CC  38 00 00 01 */	li r0, 1
/* 802E1D10 002AB2D0  7E 84 A3 78 */	mr r4, r20
/* 802E1D14 002AB2D4  98 03 00 B6 */	stb r0, 0xb6(r3)
/* 802E1D18 002AB2D8  38 63 00 B0 */	addi r3, r3, 0xb0
/* 802E1D1C 002AB2DC  4B FF C9 19 */	bl bdcpy
/* 802E1D20 002AB2E0  3C 80 80 2E */	lis r4, bta_dm_pm_timer_cback@ha
/* 802E1D24 002AB2E4  7C 75 B2 14 */	add r3, r21, r22
/* 802E1D28 002AB2E8  38 84 1E C4 */	addi r4, r4, bta_dm_pm_timer_cback@l
/* 802E1D2C 002AB2EC  7F 45 D3 78 */	mr r5, r26
/* 802E1D30 002AB2F0  90 83 00 A0 */	stw r4, 0xa0(r3)
/* 802E1D34 002AB2F4  38 63 00 98 */	addi r3, r3, 0x98
/* 802E1D38 002AB2F8  38 80 00 00 */	li r4, 0
/* 802E1D3C 002AB2FC  4B FF CD C1 */	bl bta_sys_start_timer
/* 802E1D40 002AB300  48 00 00 F4 */	b lbl_802E1E34
lbl_802E1D44:
/* 802E1D44 002AB304  38 84 00 01 */	addi r4, r4, 1
/* 802E1D48 002AB308  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802E1D4C 002AB30C  42 00 FF AC */	bdnz lbl_802E1CF8
/* 802E1D50 002AB310  28 00 00 03 */	cmplwi r0, 3
/* 802E1D54 002AB314  40 82 00 24 */	bne lbl_802E1D78
/* 802E1D58 002AB318  88 0D B5 F8 */	lbz r0, lbl_80667778@sda21(r13)
/* 802E1D5C 002AB31C  28 00 00 02 */	cmplwi r0, 2
/* 802E1D60 002AB320  41 80 00 D4 */	blt lbl_802E1E34
/* 802E1D64 002AB324  3C 80 80 54 */	lis r4, lbl_80544174@ha
/* 802E1D68 002AB328  38 60 05 01 */	li r3, 0x501
/* 802E1D6C 002AB32C  38 84 41 74 */	addi r4, r4, lbl_80544174@l
/* 802E1D70 002AB330  4B FF C2 31 */	bl LogMsg_0
/* 802E1D74 002AB334  48 00 00 C0 */	b lbl_802E1E34
lbl_802E1D78:
/* 802E1D78 002AB338  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 802E1D7C 002AB33C  41 82 00 B8 */	beq lbl_802E1E34
/* 802E1D80 002AB340  28 00 00 01 */	cmplwi r0, 1
/* 802E1D84 002AB344  40 82 00 44 */	bne lbl_802E1DC8
/* 802E1D88 002AB348  38 00 00 01 */	li r0, 1
/* 802E1D8C 002AB34C  7E 83 A3 78 */	mr r3, r20
/* 802E1D90 002AB350  98 18 00 09 */	stb r0, 9(r24)
/* 802E1D94 002AB354  38 81 00 09 */	addi r4, r1, 9
/* 802E1D98 002AB358  48 00 83 B5 */	bl BTM_ReadPowerMode
/* 802E1D9C 002AB35C  88 01 00 09 */	lbz r0, 9(r1)
/* 802E1DA0 002AB360  28 00 00 03 */	cmplwi r0, 3
/* 802E1DA4 002AB364  41 82 00 90 */	beq lbl_802E1E34
/* 802E1DA8 002AB368  3C 60 80 5C */	lis r3, lbl_805BF694@ha
/* 802E1DAC 002AB36C  80 AD 97 68 */	lwz r5, lbl_806658E8@sda21(r13)
/* 802E1DB0 002AB370  38 63 F6 94 */	addi r3, r3, lbl_805BF694@l
/* 802E1DB4 002AB374  7E 84 A3 78 */	mr r4, r20
/* 802E1DB8 002AB378  88 63 00 95 */	lbz r3, 0x95(r3)
/* 802E1DBC 002AB37C  38 A5 00 0A */	addi r5, r5, 0xa
/* 802E1DC0 002AB380  48 00 81 BD */	bl BTM_SetPowerMode
/* 802E1DC4 002AB384  48 00 00 70 */	b lbl_802E1E34
lbl_802E1DC8:
/* 802E1DC8 002AB388  28 00 00 02 */	cmplwi r0, 2
/* 802E1DCC 002AB38C  40 82 00 40 */	bne lbl_802E1E0C
/* 802E1DD0 002AB390  38 00 00 02 */	li r0, 2
/* 802E1DD4 002AB394  7E 83 A3 78 */	mr r3, r20
/* 802E1DD8 002AB398  98 18 00 09 */	stb r0, 9(r24)
/* 802E1DDC 002AB39C  38 81 00 08 */	addi r4, r1, 8
/* 802E1DE0 002AB3A0  48 00 83 6D */	bl BTM_ReadPowerMode
/* 802E1DE4 002AB3A4  88 01 00 08 */	lbz r0, 8(r1)
/* 802E1DE8 002AB3A8  28 00 00 02 */	cmplwi r0, 2
/* 802E1DEC 002AB3AC  41 82 00 48 */	beq lbl_802E1E34
/* 802E1DF0 002AB3B0  3C 60 80 5C */	lis r3, lbl_805BF694@ha
/* 802E1DF4 002AB3B4  80 AD 97 68 */	lwz r5, lbl_806658E8@sda21(r13)
/* 802E1DF8 002AB3B8  38 63 F6 94 */	addi r3, r3, lbl_805BF694@l
/* 802E1DFC 002AB3BC  7E 84 A3 78 */	mr r4, r20
/* 802E1E00 002AB3C0  88 63 00 95 */	lbz r3, 0x95(r3)
/* 802E1E04 002AB3C4  48 00 81 79 */	bl BTM_SetPowerMode
/* 802E1E08 002AB3C8  48 00 00 2C */	b lbl_802E1E34
lbl_802E1E0C:
/* 802E1E0C 002AB3CC  28 00 00 04 */	cmplwi r0, 4
/* 802E1E10 002AB3D0  40 82 00 24 */	bne lbl_802E1E34
/* 802E1E14 002AB3D4  3C 60 80 5C */	lis r3, lbl_805BF694@ha
/* 802E1E18 002AB3D8  38 00 00 00 */	li r0, 0
/* 802E1E1C 002AB3DC  38 63 F6 94 */	addi r3, r3, lbl_805BF694@l
/* 802E1E20 002AB3E0  98 01 00 14 */	stb r0, 0x14(r1)
/* 802E1E24 002AB3E4  88 63 00 95 */	lbz r3, 0x95(r3)
/* 802E1E28 002AB3E8  7E 84 A3 78 */	mr r4, r20
/* 802E1E2C 002AB3EC  38 A1 00 0C */	addi r5, r1, 0xc
/* 802E1E30 002AB3F0  48 00 81 4D */	bl BTM_SetPowerMode
lbl_802E1E34:
/* 802E1E34 002AB3F4  39 61 00 50 */	addi r11, r1, 0x50
/* 802E1E38 002AB3F8  4B FD 83 4D */	bl _restgpr_20
/* 802E1E3C 002AB3FC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802E1E40 002AB400  7C 08 03 A6 */	mtlr r0
/* 802E1E44 002AB404  38 21 00 50 */	addi r1, r1, 0x50
/* 802E1E48 002AB408  4E 80 00 20 */	blr

.global bta_dm_pm_btm_cback
bta_dm_pm_btm_cback:
/* 802E1E4C 002AB40C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E1E50 002AB410  7C 08 02 A6 */	mflr r0
/* 802E1E54 002AB414  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E1E58 002AB418  39 61 00 20 */	addi r11, r1, 0x20
/* 802E1E5C 002AB41C  4B FD 82 F9 */	bl _savegpr_27
/* 802E1E60 002AB420  7C 7B 1B 78 */	mr r27, r3
/* 802E1E64 002AB424  7C 9C 23 78 */	mr r28, r4
/* 802E1E68 002AB428  7C BD 2B 78 */	mr r29, r5
/* 802E1E6C 002AB42C  7C DE 33 78 */	mr r30, r6
/* 802E1E70 002AB430  38 60 00 14 */	li r3, 0x14
/* 802E1E74 002AB434  4B FF 93 DD */	bl GKI_getbuf
/* 802E1E78 002AB438  2C 03 00 00 */	cmpwi r3, 0
/* 802E1E7C 002AB43C  7C 7F 1B 78 */	mr r31, r3
/* 802E1E80 002AB440  41 82 00 2C */	beq lbl_802E1EAC
/* 802E1E84 002AB444  38 00 01 09 */	li r0, 0x109
/* 802E1E88 002AB448  7F 64 DB 78 */	mr r4, r27
/* 802E1E8C 002AB44C  B0 03 00 00 */	sth r0, 0(r3)
/* 802E1E90 002AB450  9B 83 00 0E */	stb r28, 0xe(r3)
/* 802E1E94 002AB454  B3 A3 00 10 */	sth r29, 0x10(r3)
/* 802E1E98 002AB458  9B C3 00 12 */	stb r30, 0x12(r3)
/* 802E1E9C 002AB45C  38 63 00 08 */	addi r3, r3, 8
/* 802E1EA0 002AB460  4B FF C7 95 */	bl bdcpy
/* 802E1EA4 002AB464  7F E3 FB 78 */	mr r3, r31
/* 802E1EA8 002AB468  4B FF CC 39 */	bl bta_sys_sendmsg
lbl_802E1EAC:
/* 802E1EAC 002AB46C  39 61 00 20 */	addi r11, r1, 0x20
/* 802E1EB0 002AB470  4B FD 82 F1 */	bl _restgpr_27
/* 802E1EB4 002AB474  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E1EB8 002AB478  7C 08 03 A6 */	mtlr r0
/* 802E1EBC 002AB47C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E1EC0 002AB480  4E 80 00 20 */	blr

.global bta_dm_pm_timer_cback
bta_dm_pm_timer_cback:
/* 802E1EC4 002AB484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E1EC8 002AB488  7C 08 02 A6 */	mflr r0
/* 802E1ECC 002AB48C  3C 80 80 5C */	lis r4, lbl_805BF694@ha
/* 802E1ED0 002AB490  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E1ED4 002AB494  38 84 F6 94 */	addi r4, r4, lbl_805BF694@l
/* 802E1ED8 002AB498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E1EDC 002AB49C  93 C1 00 08 */	stw r30, 8(r1)
/* 802E1EE0 002AB4A0  3B C0 00 00 */	li r30, 0
/* 802E1EE4 002AB4A4  88 04 00 B6 */	lbz r0, 0xb6(r4)
/* 802E1EE8 002AB4A8  2C 00 00 00 */	cmpwi r0, 0
/* 802E1EEC 002AB4AC  41 82 00 1C */	beq lbl_802E1F08
/* 802E1EF0 002AB4B0  38 04 00 98 */	addi r0, r4, 0x98
/* 802E1EF4 002AB4B4  7C 00 18 40 */	cmplw r0, r3
/* 802E1EF8 002AB4B8  40 82 00 10 */	bne lbl_802E1F08
/* 802E1EFC 002AB4BC  38 00 00 00 */	li r0, 0
/* 802E1F00 002AB4C0  98 04 00 B6 */	stb r0, 0xb6(r4)
/* 802E1F04 002AB4C4  48 00 00 58 */	b lbl_802E1F5C
lbl_802E1F08:
/* 802E1F08 002AB4C8  88 04 00 D6 */	lbz r0, 0xd6(r4)
/* 802E1F0C 002AB4CC  3B C0 00 01 */	li r30, 1
/* 802E1F10 002AB4D0  2C 00 00 00 */	cmpwi r0, 0
/* 802E1F14 002AB4D4  41 82 00 1C */	beq lbl_802E1F30
/* 802E1F18 002AB4D8  38 04 00 B8 */	addi r0, r4, 0xb8
/* 802E1F1C 002AB4DC  7C 00 18 40 */	cmplw r0, r3
/* 802E1F20 002AB4E0  40 82 00 10 */	bne lbl_802E1F30
/* 802E1F24 002AB4E4  38 00 00 00 */	li r0, 0
/* 802E1F28 002AB4E8  98 04 00 D6 */	stb r0, 0xd6(r4)
/* 802E1F2C 002AB4EC  48 00 00 30 */	b lbl_802E1F5C
lbl_802E1F30:
/* 802E1F30 002AB4F0  88 04 00 F6 */	lbz r0, 0xf6(r4)
/* 802E1F34 002AB4F4  3B C0 00 02 */	li r30, 2
/* 802E1F38 002AB4F8  2C 00 00 00 */	cmpwi r0, 0
/* 802E1F3C 002AB4FC  41 82 00 1C */	beq lbl_802E1F58
/* 802E1F40 002AB500  38 04 00 D8 */	addi r0, r4, 0xd8
/* 802E1F44 002AB504  7C 00 18 40 */	cmplw r0, r3
/* 802E1F48 002AB508  40 82 00 10 */	bne lbl_802E1F58
/* 802E1F4C 002AB50C  38 00 00 00 */	li r0, 0
/* 802E1F50 002AB510  98 04 00 F6 */	stb r0, 0xf6(r4)
/* 802E1F54 002AB514  48 00 00 08 */	b lbl_802E1F5C
lbl_802E1F58:
/* 802E1F58 002AB518  3B C0 00 03 */	li r30, 3
lbl_802E1F5C:
/* 802E1F5C 002AB51C  28 1E 00 03 */	cmplwi r30, 3
/* 802E1F60 002AB520  41 82 00 44 */	beq lbl_802E1FA4
/* 802E1F64 002AB524  38 60 00 0E */	li r3, 0xe
/* 802E1F68 002AB528  4B FF 92 E9 */	bl GKI_getbuf
/* 802E1F6C 002AB52C  2C 03 00 00 */	cmpwi r3, 0
/* 802E1F70 002AB530  7C 7F 1B 78 */	mr r31, r3
/* 802E1F74 002AB534  41 82 00 30 */	beq lbl_802E1FA4
/* 802E1F78 002AB538  3C 80 80 5C */	lis r4, lbl_805BF694@ha
/* 802E1F7C 002AB53C  38 A0 01 0A */	li r5, 0x10a
/* 802E1F80 002AB540  38 84 F6 94 */	addi r4, r4, lbl_805BF694@l
/* 802E1F84 002AB544  57 C0 2C F4 */	rlwinm r0, r30, 5, 0x13, 0x1a
/* 802E1F88 002AB548  B0 A3 00 00 */	sth r5, 0(r3)
/* 802E1F8C 002AB54C  7C 84 02 14 */	add r4, r4, r0
/* 802E1F90 002AB550  38 84 00 B0 */	addi r4, r4, 0xb0
/* 802E1F94 002AB554  38 63 00 08 */	addi r3, r3, 8
/* 802E1F98 002AB558  4B FF C6 9D */	bl bdcpy
/* 802E1F9C 002AB55C  7F E3 FB 78 */	mr r3, r31
/* 802E1FA0 002AB560  4B FF CB 41 */	bl bta_sys_sendmsg
lbl_802E1FA4:
/* 802E1FA4 002AB564  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E1FA8 002AB568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E1FAC 002AB56C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802E1FB0 002AB570  7C 08 03 A6 */	mtlr r0
/* 802E1FB4 002AB574  38 21 00 10 */	addi r1, r1, 0x10
/* 802E1FB8 002AB578  4E 80 00 20 */	blr 

.global bta_dm_pm_btm_status
bta_dm_pm_btm_status:
/* 802E1FBC 002AB57C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E1FC0 002AB580  7C 08 02 A6 */	mflr r0
/* 802E1FC4 002AB584  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E1FC8 002AB588  39 61 00 20 */	addi r11, r1, 0x20
/* 802E1FCC 002AB58C  4B FD 81 89 */	bl _savegpr_27
/* 802E1FD0 002AB590  3F C0 80 5C */	lis r30, lbl_805BF694@ha
/* 802E1FD4 002AB594  7C 7F 1B 78 */	mr r31, r3
/* 802E1FD8 002AB598  3B DE F6 94 */	addi r30, r30, lbl_805BF694@l
/* 802E1FDC 002AB59C  3B 60 00 00 */	li r27, 0
lbl_802E1FE0:
/* 802E1FE0 002AB5A0  57 7C 2C F4 */	rlwinm r28, r27, 5, 0x13, 0x1a
/* 802E1FE4 002AB5A4  7F BE E2 14 */	add r29, r30, r28
/* 802E1FE8 002AB5A8  88 1D 00 B6 */	lbz r0, 0xb6(r29)
/* 802E1FEC 002AB5AC  2C 00 00 00 */	cmpwi r0, 0
/* 802E1FF0 002AB5B0  41 82 00 30 */	beq lbl_802E2020
/* 802E1FF4 002AB5B4  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 802E1FF8 002AB5B8  38 9F 00 08 */	addi r4, r31, 8
/* 802E1FFC 002AB5BC  4B FF C6 6D */	bl bdcmp
/* 802E2000 002AB5C0  2C 03 00 00 */	cmpwi r3, 0
/* 802E2004 002AB5C4  40 82 00 1C */	bne lbl_802E2020
/* 802E2008 002AB5C8  7F A3 EB 78 */	mr r3, r29
/* 802E200C 002AB5CC  38 63 00 98 */	addi r3, r3, 0x98
/* 802E2010 002AB5D0  4B FF CB 0D */	bl bta_sys_stop_timer
/* 802E2014 002AB5D4  38 00 00 00 */	li r0, 0
/* 802E2018 002AB5D8  98 1D 00 B6 */	stb r0, 0xb6(r29)
/* 802E201C 002AB5DC  48 00 00 10 */	b lbl_802E202C
lbl_802E2020:
/* 802E2020 002AB5E0  3B 7B 00 01 */	addi r27, r27, 1
/* 802E2024 002AB5E4  28 1B 00 03 */	cmplwi r27, 3
/* 802E2028 002AB5E8  41 80 FF B8 */	blt lbl_802E1FE0
lbl_802E202C:
/* 802E202C 002AB5EC  88 1F 00 0E */	lbz r0, 0xe(r31)
/* 802E2030 002AB5F0  2C 00 00 00 */	cmpwi r0, 0
/* 802E2034 002AB5F4  41 82 00 08 */	beq lbl_802E203C
/* 802E2038 002AB5F8  48 00 00 8C */	b lbl_802E20C4
lbl_802E203C:
/* 802E203C 002AB5FC  88 1F 00 12 */	lbz r0, 0x12(r31)
/* 802E2040 002AB600  2C 00 00 00 */	cmpwi r0, 0
/* 802E2044 002AB604  41 82 00 74 */	beq lbl_802E20B8
/* 802E2048 002AB608  3C 60 80 5C */	lis r3, lbl_805BF694@ha
/* 802E204C 002AB60C  3B A0 00 00 */	li r29, 0
/* 802E2050 002AB610  3B C3 F6 94 */	addi r30, r3, lbl_805BF694@l
/* 802E2054 002AB614  48 00 00 50 */	b lbl_802E20A4
lbl_802E2058:
/* 802E2058 002AB618  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802E205C 002AB61C  38 9F 00 08 */	addi r4, r31, 8
/* 802E2060 002AB620  1F 80 00 0B */	mulli r28, r0, 0xb
/* 802E2064 002AB624  7C 7E E2 14 */	add r3, r30, r28
/* 802E2068 002AB628  4B FF C6 01 */	bl bdcmp
/* 802E206C 002AB62C  2C 03 00 00 */	cmpwi r3, 0
/* 802E2070 002AB630  40 82 00 30 */	bne lbl_802E20A0
/* 802E2074 002AB634  7C BE E2 14 */	add r5, r30, r28
/* 802E2078 002AB638  88 05 00 09 */	lbz r0, 9(r5)
/* 802E207C 002AB63C  54 06 07 BF */	clrlwi. r6, r0, 0x1e
/* 802E2080 002AB640  41 82 00 44 */	beq lbl_802E20C4
/* 802E2084 002AB644  88 05 00 0A */	lbz r0, 0xa(r5)
/* 802E2088 002AB648  38 7F 00 08 */	addi r3, r31, 8
/* 802E208C 002AB64C  38 80 00 00 */	li r4, 0
/* 802E2090 002AB650  7C 00 33 78 */	or r0, r0, r6
/* 802E2094 002AB654  98 05 00 0A */	stb r0, 0xa(r5)
/* 802E2098 002AB658  4B FF FA 35 */	bl bta_dm_pm_set_mode
/* 802E209C 002AB65C  48 00 00 28 */	b lbl_802E20C4
lbl_802E20A0:
/* 802E20A0 002AB660  3B BD 00 01 */	addi r29, r29, 1
lbl_802E20A4:
/* 802E20A4 002AB664  88 1E 00 4D */	lbz r0, 0x4d(r30)
/* 802E20A8 002AB668  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 802E20AC 002AB66C  7C 03 00 40 */	cmplw r3, r0
/* 802E20B0 002AB670  41 80 FF A8 */	blt lbl_802E2058
/* 802E20B4 002AB674  48 00 00 10 */	b lbl_802E20C4
lbl_802E20B8:
/* 802E20B8 002AB678  38 7F 00 08 */	addi r3, r31, 8
/* 802E20BC 002AB67C  38 80 00 00 */	li r4, 0
/* 802E20C0 002AB680  4B FF FA 0D */	bl bta_dm_pm_set_mode
lbl_802E20C4:
/* 802E20C4 002AB684  39 61 00 20 */	addi r11, r1, 0x20
/* 802E20C8 002AB688  4B FD 80 D9 */	bl _restgpr_27
/* 802E20CC 002AB68C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E20D0 002AB690  7C 08 03 A6 */	mtlr r0
/* 802E20D4 002AB694  38 21 00 20 */	addi r1, r1, 0x20
/* 802E20D8 002AB698  4E 80 00 20 */	blr 

.global bta_dm_pm_timer
bta_dm_pm_timer:
/* 802E20DC 002AB69C  38 80 00 01 */	li r4, 1
/* 802E20E0 002AB6A0  38 63 00 08 */	addi r3, r3, 8
/* 802E20E4 002AB6A4  4B FF F9 E8 */	b bta_dm_pm_set_mode
