.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80353AA0
func_80353AA0:
/* 80353AA0 0031D060  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80353AA4 0031D064  7C 08 02 A6 */	mflr r0
/* 80353AA8 0031D068  3C 80 CD 80 */	lis r4, 0xCD800180@ha
/* 80353AAC 0031D06C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80353AB0 0031D070  54 60 40 2E */	slwi r0, r3, 8
/* 80353AB4 0031D074  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80353AB8 0031D078  7C 7F 1B 78 */	mr r31, r3
/* 80353ABC 0031D07C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80353AC0 0031D080  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80353AC4 0031D084  93 81 00 10 */	stw r28, 0x10(r1)
/* 80353AC8 0031D088  80 A4 01 80 */	lwz r5, 0xCD800180@l(r4)
/* 80353ACC 0031D08C  54 A5 06 2C */	rlwinm r5, r5, 0, 0x18, 0x16
/* 80353AD0 0031D090  7C A5 03 78 */	or r5, r5, r0
/* 80353AD4 0031D094  54 A0 06 6E */	rlwinm r0, r5, 0, 0x19, 0x17
/* 80353AD8 0031D098  90 04 01 80 */	stw r0, 0x180(r4)
/* 80353ADC 0031D09C  80 04 01 D0 */	lwz r0, 0x1d0(r4)
/* 80353AE0 0031D0A0  54 00 00 BE */	clrlwi r0, r0, 2
/* 80353AE4 0031D0A4  90 04 01 D0 */	stw r0, 0x1d0(r4)
/* 80353AE8 0031D0A8  48 00 8E 99 */	bl OSGetTick
/* 80353AEC 0031D0AC  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 80353AF0 0031D0B0  7C 7C 1B 78 */	mr r28, r3
/* 80353AF4 0031D0B4  3B C4 DE 83 */	addi r30, r4, 0x431BDE83@l
/* 80353AF8 0031D0B8  3F A0 80 00 */	lis r29, 0x8000
lbl_80353AFC:
/* 80353AFC 0031D0BC  48 00 8E 85 */	bl OSGetTick
/* 80353B00 0031D0C0  80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 80353B04 0031D0C4  7C 7C 18 50 */	subf r3, r28, r3
/* 80353B08 0031D0C8  54 63 18 38 */	slwi r3, r3, 3
/* 80353B0C 0031D0CC  54 00 F0 BE */	srwi r0, r0, 2
/* 80353B10 0031D0D0  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 80353B14 0031D0D4  54 00 8B FE */	srwi r0, r0, 0xf
/* 80353B18 0031D0D8  7C 03 03 96 */	divwu r0, r3, r0
/* 80353B1C 0031D0DC  28 00 00 64 */	cmplwi r0, 0x64
/* 80353B20 0031D0E0  41 80 FF DC */	blt lbl_80353AFC
/* 80353B24 0031D0E4  2C 1F 00 00 */	cmpwi r31, 0
/* 80353B28 0031D0E8  40 82 00 2C */	bne lbl_80353B54
/* 80353B2C 0031D0EC  3C 80 CD 80 */	lis r4, 0xCD8001CC@ha
/* 80353B30 0031D0F0  3C 60 F8 04 */	lis r3, 0xF803FFC0@ha
/* 80353B34 0031D0F4  80 A4 01 CC */	lwz r5, 0xCD8001CC@l(r4)
/* 80353B38 0031D0F8  38 03 FF C0 */	addi r0, r3, 0xF803FFC0@l
/* 80353B3C 0031D0FC  54 A3 06 9A */	rlwinm r3, r5, 0, 0x1a, 0xd
/* 80353B40 0031D100  60 63 0F C0 */	ori r3, r3, 0xfc0
/* 80353B44 0031D104  7C 60 00 38 */	and r0, r3, r0
/* 80353B48 0031D108  64 00 04 64 */	oris r0, r0, 0x464
/* 80353B4C 0031D10C  90 04 01 CC */	stw r0, 0x1cc(r4)
/* 80353B50 0031D110  48 00 00 28 */	b lbl_80353B78
lbl_80353B54:
/* 80353B54 0031D114  3C 60 CD 80 */	lis r3, 0xCD8001CC@ha
/* 80353B58 0031D118  80 03 01 CC */	lwz r0, 0xCD8001CC@l(r3)
/* 80353B5C 0031D11C  54 00 06 9A */	rlwinm r0, r0, 0, 0x1a, 0xd
/* 80353B60 0031D120  60 00 FF C0 */	ori r0, r0, 0xffc0
/* 80353B64 0031D124  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 80353B68 0031D128  60 00 00 0E */	ori r0, r0, 0xe
/* 80353B6C 0031D12C  54 00 03 88 */	rlwinm r0, r0, 0, 0xe, 4
/* 80353B70 0031D130  64 00 04 B0 */	oris r0, r0, 0x4b0
/* 80353B74 0031D134  90 03 01 CC */	stw r0, 0x1cc(r3)
lbl_80353B78:
/* 80353B78 0031D138  48 00 8E 09 */	bl OSGetTick
/* 80353B7C 0031D13C  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 80353B80 0031D140  7C 7F 1B 78 */	mr r31, r3
/* 80353B84 0031D144  3B C4 DE 83 */	addi r30, r4, 0x431BDE83@l
/* 80353B88 0031D148  3F A0 80 00 */	lis r29, 0x8000
lbl_80353B8C:
/* 80353B8C 0031D14C  48 00 8D F5 */	bl OSGetTick
/* 80353B90 0031D150  80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 80353B94 0031D154  7C 7F 18 50 */	subf r3, r31, r3
/* 80353B98 0031D158  54 63 18 38 */	slwi r3, r3, 3
/* 80353B9C 0031D15C  54 00 F0 BE */	srwi r0, r0, 2
/* 80353BA0 0031D160  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 80353BA4 0031D164  54 00 8B FE */	srwi r0, r0, 0xf
/* 80353BA8 0031D168  7C 03 03 96 */	divwu r0, r3, r0
/* 80353BAC 0031D16C  28 00 00 64 */	cmplwi r0, 0x64
/* 80353BB0 0031D170  41 80 FF DC */	blt lbl_80353B8C
/* 80353BB4 0031D174  3C 60 CD 80 */	lis r3, 0xCD8001D0@ha
/* 80353BB8 0031D178  80 03 01 D0 */	lwz r0, 0xCD8001D0@l(r3)
/* 80353BBC 0031D17C  54 00 01 04 */	rlwinm r0, r0, 0, 4, 2
/* 80353BC0 0031D180  90 03 01 D0 */	stw r0, 0x1d0(r3)
/* 80353BC4 0031D184  48 00 8D BD */	bl OSGetTick
/* 80353BC8 0031D188  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 80353BCC 0031D18C  7C 7F 1B 78 */	mr r31, r3
/* 80353BD0 0031D190  3B C4 DE 83 */	addi r30, r4, 0x431BDE83@l
/* 80353BD4 0031D194  3F A0 80 00 */	lis r29, 0x8000
lbl_80353BD8:
/* 80353BD8 0031D198  48 00 8D A9 */	bl OSGetTick
/* 80353BDC 0031D19C  80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 80353BE0 0031D1A0  7C 7F 18 50 */	subf r3, r31, r3
/* 80353BE4 0031D1A4  54 63 18 38 */	slwi r3, r3, 3
/* 80353BE8 0031D1A8  54 00 F0 BE */	srwi r0, r0, 2
/* 80353BEC 0031D1AC  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 80353BF0 0031D1B0  54 00 8B FE */	srwi r0, r0, 0xf
/* 80353BF4 0031D1B4  7C 03 03 96 */	divwu r0, r3, r0
/* 80353BF8 0031D1B8  28 00 03 E8 */	cmplwi r0, 0x3e8
/* 80353BFC 0031D1BC  41 80 FF DC */	blt lbl_80353BD8
/* 80353C00 0031D1C0  3C 60 CD 80 */	lis r3, 0xCD8001D0@ha
/* 80353C04 0031D1C4  80 03 01 D0 */	lwz r0, 0xCD8001D0@l(r3)
/* 80353C08 0031D1C8  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 80353C0C 0031D1CC  64 00 40 00 */	oris r0, r0, 0x4000
/* 80353C10 0031D1D0  90 03 01 D0 */	stw r0, 0x1d0(r3)
/* 80353C14 0031D1D4  48 00 8D 6D */	bl OSGetTick
/* 80353C18 0031D1D8  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 80353C1C 0031D1DC  7C 7F 1B 78 */	mr r31, r3
/* 80353C20 0031D1E0  3B C4 DE 83 */	addi r30, r4, 0x431BDE83@l
/* 80353C24 0031D1E4  3F A0 80 00 */	lis r29, 0x8000
lbl_80353C28:
/* 80353C28 0031D1E8  48 00 8D 59 */	bl OSGetTick
/* 80353C2C 0031D1EC  80 1D 00 F8 */	lwz r0, 0xf8(r29)
/* 80353C30 0031D1F0  7C 7F 18 50 */	subf r3, r31, r3
/* 80353C34 0031D1F4  54 63 18 38 */	slwi r3, r3, 3
/* 80353C38 0031D1F8  54 00 F0 BE */	srwi r0, r0, 2
/* 80353C3C 0031D1FC  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 80353C40 0031D200  54 00 8B FE */	srwi r0, r0, 0xf
/* 80353C44 0031D204  7C 03 03 96 */	divwu r0, r3, r0
/* 80353C48 0031D208  28 00 03 E8 */	cmplwi r0, 0x3e8
/* 80353C4C 0031D20C  41 80 FF DC */	blt lbl_80353C28
/* 80353C50 0031D210  3C 60 CD 80 */	lis r3, 0xCD8001D0@ha
/* 80353C54 0031D214  80 03 01 D0 */	lwz r0, 0xCD8001D0@l(r3)
/* 80353C58 0031D218  54 00 00 7E */	clrlwi r0, r0, 1
/* 80353C5C 0031D21C  64 00 80 00 */	oris r0, r0, 0x8000
/* 80353C60 0031D220  90 03 01 D0 */	stw r0, 0x1d0(r3)
/* 80353C64 0031D224  48 00 8D 1D */	bl OSGetTick
/* 80353C68 0031D228  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 80353C6C 0031D22C  7C 7D 1B 78 */	mr r29, r3
/* 80353C70 0031D230  3B C4 DE 83 */	addi r30, r4, 0x431BDE83@l
/* 80353C74 0031D234  3F E0 80 00 */	lis r31, 0x8000
lbl_80353C78:
/* 80353C78 0031D238  48 00 8D 09 */	bl OSGetTick
/* 80353C7C 0031D23C  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 80353C80 0031D240  7C 7D 18 50 */	subf r3, r29, r3
/* 80353C84 0031D244  54 63 18 38 */	slwi r3, r3, 3
/* 80353C88 0031D248  54 00 F0 BE */	srwi r0, r0, 2
/* 80353C8C 0031D24C  7C 1E 00 16 */	mulhwu r0, r30, r0
/* 80353C90 0031D250  54 00 8B FE */	srwi r0, r0, 0xf
/* 80353C94 0031D254  7C 03 03 96 */	divwu r0, r3, r0
/* 80353C98 0031D258  28 00 03 E8 */	cmplwi r0, 0x3e8
/* 80353C9C 0031D25C  41 80 FF DC */	blt lbl_80353C78
/* 80353CA0 0031D260  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80353CA4 0031D264  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80353CA8 0031D268  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80353CAC 0031D26C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80353CB0 0031D270  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80353CB4 0031D274  7C 08 03 A6 */	mtlr r0
/* 80353CB8 0031D278  38 21 00 20 */	addi r1, r1, 0x20
/* 80353CBC 0031D27C  4E 80 00 20 */	blr 

.global __OSInitAudioSystem
__OSInitAudioSystem:
/* 80353CC0 0031D280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80353CC4 0031D284  7C 08 02 A6 */	mflr r0
/* 80353CC8 0031D288  90 01 00 14 */	stw r0, 0x14(r1)
/* 80353CCC 0031D28C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80353CD0 0031D290  80 0D B8 80 */	lwz r0, lbl_80667A00@sda21(r13)
/* 80353CD4 0031D294  2C 00 00 00 */	cmpwi r0, 0
/* 80353CD8 0031D298  40 82 00 0C */	bne lbl_80353CE4
/* 80353CDC 0031D29C  38 60 00 01 */	li r3, 1
/* 80353CE0 0031D2A0  4B FF FD C1 */	bl func_80353AA0
lbl_80353CE4:
/* 80353CE4 0031D2A4  4B FF FC DD */	bl OSGetArenaHi
/* 80353CE8 0031D2A8  3C 80 81 00 */	lis r4, 0x8100
/* 80353CEC 0031D2AC  38 A0 00 80 */	li r5, 0x80
/* 80353CF0 0031D2B0  38 63 FF 80 */	addi r3, r3, -128
/* 80353CF4 0031D2B4  4B CB 03 0D */	bl memcpy
/* 80353CF8 0031D2B8  3C 80 80 55 */	lis r4, lbl_805517B8@ha
/* 80353CFC 0031D2BC  3C 60 81 00 */	lis r3, 0x8100
/* 80353D00 0031D2C0  38 84 17 B8 */	addi r4, r4, lbl_805517B8@l
/* 80353D04 0031D2C4  38 A0 00 80 */	li r5, 0x80
/* 80353D08 0031D2C8  4B CB 02 F9 */	bl memcpy
/* 80353D0C 0031D2CC  3C 60 81 00 */	lis r3, 0x8100
/* 80353D10 0031D2D0  38 80 00 80 */	li r4, 0x80
/* 80353D14 0031D2D4  48 00 02 9D */	bl DCFlushRange
/* 80353D18 0031D2D8  3C 60 CC 00 */	lis r3, 0xCC005012@ha
/* 80353D1C 0031D2DC  38 00 00 43 */	li r0, 0x43
/* 80353D20 0031D2E0  B0 03 50 12 */	sth r0, 0xCC005012@l(r3)
/* 80353D24 0031D2E4  38 00 08 AC */	li r0, 0x8ac
/* 80353D28 0031D2E8  B0 03 50 0A */	sth r0, 0x500a(r3)
/* 80353D2C 0031D2EC  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 80353D30 0031D2F0  60 00 00 01 */	ori r0, r0, 1
/* 80353D34 0031D2F4  B0 03 50 0A */	sth r0, 0x500a(r3)
lbl_80353D38:
/* 80353D38 0031D2F8  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 80353D3C 0031D2FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80353D40 0031D300  40 82 FF F8 */	bne lbl_80353D38
/* 80353D44 0031D304  3C 80 CC 00 */	lis r4, 0xCC005000@ha
/* 80353D48 0031D308  38 00 00 00 */	li r0, 0
/* 80353D4C 0031D30C  B0 04 50 00 */	sth r0, 0xCC005000@l(r4)
lbl_80353D50:
/* 80353D50 0031D310  A0 64 50 04 */	lhz r3, 0x5004(r4)
/* 80353D54 0031D314  A0 04 50 06 */	lhz r0, 0x5006(r4)
/* 80353D58 0031D318  50 60 80 1E */	rlwimi r0, r3, 0x10, 0, 0xf
/* 80353D5C 0031D31C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80353D60 0031D320  40 82 FF F0 */	bne lbl_80353D50
/* 80353D64 0031D324  3C 80 CC 00 */	lis r4, 0xCC005020@ha
/* 80353D68 0031D328  3C 00 01 00 */	lis r0, 0x100
/* 80353D6C 0031D32C  90 04 50 20 */	stw r0, 0xCC005020@l(r4)
/* 80353D70 0031D330  38 60 00 00 */	li r3, 0
/* 80353D74 0031D334  38 00 00 20 */	li r0, 0x20
/* 80353D78 0031D338  90 64 50 24 */	stw r3, 0x5024(r4)
/* 80353D7C 0031D33C  90 04 50 28 */	stw r0, 0x5028(r4)
/* 80353D80 0031D340  A0 A4 50 0A */	lhz r5, 0x500a(r4)
/* 80353D84 0031D344  48 00 00 08 */	b lbl_80353D8C
lbl_80353D88:
/* 80353D88 0031D348  A0 A4 50 0A */	lhz r5, 0x500a(r4)
lbl_80353D8C:
/* 80353D8C 0031D34C  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 80353D90 0031D350  41 82 FF F8 */	beq lbl_80353D88
/* 80353D94 0031D354  3C 60 CC 00 */	lis r3, 0xCC00500A@ha
/* 80353D98 0031D358  B0 A3 50 0A */	sth r5, 0xCC00500A@l(r3)
/* 80353D9C 0031D35C  48 00 8B E5 */	bl OSGetTick
/* 80353DA0 0031D360  7C 7F 1B 78 */	mr r31, r3
lbl_80353DA4:
/* 80353DA4 0031D364  48 00 8B DD */	bl OSGetTick
/* 80353DA8 0031D368  7C 1F 18 50 */	subf r0, r31, r3
/* 80353DAC 0031D36C  2C 00 08 92 */	cmpwi r0, 0x892
/* 80353DB0 0031D370  41 80 FF F4 */	blt lbl_80353DA4
/* 80353DB4 0031D374  3C 80 CC 00 */	lis r4, 0xCC005020@ha
/* 80353DB8 0031D378  3C 00 01 00 */	lis r0, 0x100
/* 80353DBC 0031D37C  90 04 50 20 */	stw r0, 0xCC005020@l(r4)
/* 80353DC0 0031D380  38 60 00 00 */	li r3, 0
/* 80353DC4 0031D384  38 00 00 20 */	li r0, 0x20
/* 80353DC8 0031D388  90 64 50 24 */	stw r3, 0x5024(r4)
/* 80353DCC 0031D38C  90 04 50 28 */	stw r0, 0x5028(r4)
/* 80353DD0 0031D390  A0 A4 50 0A */	lhz r5, 0x500a(r4)
/* 80353DD4 0031D394  48 00 00 08 */	b lbl_80353DDC
lbl_80353DD8:
/* 80353DD8 0031D398  A0 A4 50 0A */	lhz r5, 0x500a(r4)
lbl_80353DDC:
/* 80353DDC 0031D39C  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 80353DE0 0031D3A0  41 82 FF F8 */	beq lbl_80353DD8
/* 80353DE4 0031D3A4  3C 60 CC 00 */	lis r3, 0xCC00500A@ha
/* 80353DE8 0031D3A8  B0 A3 50 0A */	sth r5, 0xCC00500A@l(r3)
/* 80353DEC 0031D3AC  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 80353DF0 0031D3B0  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 80353DF4 0031D3B4  B0 03 50 0A */	sth r0, 0x500a(r3)
lbl_80353DF8:
/* 80353DF8 0031D3B8  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 80353DFC 0031D3BC  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80353E00 0031D3C0  40 82 FF F8 */	bne lbl_80353DF8
/* 80353E04 0031D3C4  3C 60 CC 00 */	lis r3, 0xCC00500A@ha
/* 80353E08 0031D3C8  A0 03 50 0A */	lhz r0, 0xCC00500A@l(r3)
/* 80353E0C 0031D3CC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80353E10 0031D3D0  B0 03 50 0A */	sth r0, 0x500a(r3)
/* 80353E14 0031D3D4  A0 03 50 04 */	lhz r0, 0x5004(r3)
/* 80353E18 0031D3D8  48 00 00 0C */	b lbl_80353E24
/* 80353E1C 0031D3DC  60 00 00 00 */	nop 
lbl_80353E20:
/* 80353E20 0031D3E0  A0 03 50 04 */	lhz r0, 0x5004(r3)
lbl_80353E24:
/* 80353E24 0031D3E4  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80353E28 0031D3E8  41 82 FF F8 */	beq lbl_80353E20
/* 80353E2C 0031D3EC  3C 80 CC 00 */	lis r4, 0xCC005006@ha
/* 80353E30 0031D3F0  38 00 08 AC */	li r0, 0x8ac
/* 80353E34 0031D3F4  A0 64 50 06 */	lhz r3, 0xCC005006@l(r4)
/* 80353E38 0031D3F8  A0 64 50 0A */	lhz r3, 0x500a(r4)
/* 80353E3C 0031D3FC  60 63 00 04 */	ori r3, r3, 4
/* 80353E40 0031D400  B0 64 50 0A */	sth r3, 0x500a(r4)
/* 80353E44 0031D404  B0 04 50 0A */	sth r0, 0x500a(r4)
/* 80353E48 0031D408  A0 04 50 0A */	lhz r0, 0x500a(r4)
/* 80353E4C 0031D40C  60 00 00 01 */	ori r0, r0, 1
/* 80353E50 0031D410  B0 04 50 0A */	sth r0, 0x500a(r4)
/* 80353E54 0031D414  60 00 00 00 */	nop 
lbl_80353E58:
/* 80353E58 0031D418  A0 04 50 0A */	lhz r0, 0x500a(r4)
/* 80353E5C 0031D41C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80353E60 0031D420  40 82 FF F8 */	bne lbl_80353E58
/* 80353E64 0031D424  4B FF FB 5D */	bl OSGetArenaHi
/* 80353E68 0031D428  7C 64 1B 78 */	mr r4, r3
/* 80353E6C 0031D42C  3C 60 81 00 */	lis r3, 0x8100
/* 80353E70 0031D430  38 84 FF 80 */	addi r4, r4, -128
/* 80353E74 0031D434  38 A0 00 80 */	li r5, 0x80
/* 80353E78 0031D438  4B CB 01 89 */	bl memcpy
/* 80353E7C 0031D43C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80353E80 0031D440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80353E84 0031D444  7C 08 03 A6 */	mtlr r0
/* 80353E88 0031D448  38 21 00 10 */	addi r1, r1, 0x10
/* 80353E8C 0031D44C  4E 80 00 20 */	blr 

.global __OSStopAudioSystem
__OSStopAudioSystem:
/* 80353E90 0031D450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80353E94 0031D454  7C 08 02 A6 */	mflr r0
/* 80353E98 0031D458  3C 60 CC 00 */	lis r3, 0xCC00500A@ha
/* 80353E9C 0031D45C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80353EA0 0031D460  38 00 08 04 */	li r0, 0x804
/* 80353EA4 0031D464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80353EA8 0031D468  B0 03 50 0A */	sth r0, 0xCC00500A@l(r3)
/* 80353EAC 0031D46C  A0 03 50 36 */	lhz r0, 0x5036(r3)
/* 80353EB0 0031D470  54 00 04 7E */	clrlwi r0, r0, 0x11
/* 80353EB4 0031D474  B0 03 50 36 */	sth r0, 0x5036(r3)
/* 80353EB8 0031D478  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 80353EBC 0031D47C  48 00 00 08 */	b lbl_80353EC4
lbl_80353EC0:
/* 80353EC0 0031D480  A0 03 50 0A */	lhz r0, 0x500a(r3)
lbl_80353EC4:
/* 80353EC4 0031D484  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80353EC8 0031D488  40 82 FF F8 */	bne lbl_80353EC0
/* 80353ECC 0031D48C  3C 60 CC 00 */	lis r3, 0xCC00500A@ha
/* 80353ED0 0031D490  A0 03 50 0A */	lhz r0, 0xCC00500A@l(r3)
/* 80353ED4 0031D494  48 00 00 08 */	b lbl_80353EDC
lbl_80353ED8:
/* 80353ED8 0031D498  A0 03 50 0A */	lhz r0, 0x500a(r3)
lbl_80353EDC:
/* 80353EDC 0031D49C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80353EE0 0031D4A0  40 82 FF F8 */	bne lbl_80353ED8
/* 80353EE4 0031D4A4  3C 80 CC 00 */	lis r4, 0xCC00500A@ha
/* 80353EE8 0031D4A8  38 00 08 AC */	li r0, 0x8ac
/* 80353EEC 0031D4AC  B0 04 50 0A */	sth r0, 0xCC00500A@l(r4)
/* 80353EF0 0031D4B0  38 00 00 00 */	li r0, 0
/* 80353EF4 0031D4B4  B0 04 50 00 */	sth r0, 0x5000(r4)
lbl_80353EF8:
/* 80353EF8 0031D4B8  A0 64 50 04 */	lhz r3, 0x5004(r4)
/* 80353EFC 0031D4BC  A0 04 50 06 */	lhz r0, 0x5006(r4)
/* 80353F00 0031D4C0  50 60 80 1E */	rlwimi r0, r3, 0x10, 0, 0xf
/* 80353F04 0031D4C4  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80353F08 0031D4C8  40 82 FF F0 */	bne lbl_80353EF8
/* 80353F0C 0031D4CC  48 00 8A 75 */	bl OSGetTick
/* 80353F10 0031D4D0  7C 7F 1B 78 */	mr r31, r3
lbl_80353F14:
/* 80353F14 0031D4D4  48 00 8A 6D */	bl OSGetTick
/* 80353F18 0031D4D8  7C 1F 18 50 */	subf r0, r31, r3
/* 80353F1C 0031D4DC  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80353F20 0031D4E0  41 80 FF F4 */	blt lbl_80353F14
/* 80353F24 0031D4E4  3C 60 CC 00 */	lis r3, 0xCC00500A@ha
/* 80353F28 0031D4E8  A0 03 50 0A */	lhz r0, 0xCC00500A@l(r3)
/* 80353F2C 0031D4EC  60 00 00 01 */	ori r0, r0, 1
/* 80353F30 0031D4F0  B0 03 50 0A */	sth r0, 0x500a(r3)
/* 80353F34 0031D4F4  A0 03 50 0A */	lhz r0, 0x500a(r3)
/* 80353F38 0031D4F8  48 00 00 0C */	b lbl_80353F44
/* 80353F3C 0031D4FC  60 00 00 00 */	nop 
lbl_80353F40:
/* 80353F40 0031D500  A0 03 50 0A */	lhz r0, 0x500a(r3)
lbl_80353F44:
/* 80353F44 0031D504  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80353F48 0031D508  40 82 FF F8 */	bne lbl_80353F40
/* 80353F4C 0031D50C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80353F50 0031D510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80353F54 0031D514  7C 08 03 A6 */	mtlr r0
/* 80353F58 0031D518  38 21 00 10 */	addi r1, r1, 0x10
/* 80353F5C 0031D51C  4E 80 00 20 */	blr 