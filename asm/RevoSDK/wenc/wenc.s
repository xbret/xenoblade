.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.fn WENCGetEncodeData, global
/* 80368A8C 0033204C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80368A90 00332050  7C 08 02 A6 */	mflr r0
/* 80368A94 00332054  90 01 00 94 */	stw r0, 0x94(r1)
/* 80368A98 00332058  39 61 00 90 */	addi r11, r1, 0x90
/* 80368A9C 0033205C  4B F5 16 95 */	bl _savegpr_18
/* 80368AA0 00332060  3D 40 80 52 */	lis r10, lbl_80518D88@ha
/* 80368AA4 00332064  85 2A 8D 88 */	lwzu r9, lbl_80518D88@l(r10)
/* 80368AA8 00332068  39 66 00 01 */	addi r11, r6, 1
/* 80368AAC 0033206C  7C 99 23 78 */	mr r25, r4
/* 80368AB0 00332070  55 64 0F FE */	srwi r4, r11, 0x1f
/* 80368AB4 00332074  81 0A 00 04 */	lwz r8, 4(r10)
/* 80368AB8 00332078  7C FF 3B 78 */	mr r31, r7
/* 80368ABC 0033207C  80 0A 00 08 */	lwz r0, 8(r10)
/* 80368AC0 00332080  7C 84 5A 14 */	add r4, r4, r11
/* 80368AC4 00332084  82 4A 00 0C */	lwz r18, 0xc(r10)
/* 80368AC8 00332088  83 6A 00 10 */	lwz r27, 0x10(r10)
/* 80368ACC 0033208C  7C DE 33 78 */	mr r30, r6
/* 80368AD0 00332090  83 4A 00 14 */	lwz r26, 0x14(r10)
/* 80368AD4 00332094  7C 7C 1B 78 */	mr r28, r3
/* 80368AD8 00332098  83 0A 00 18 */	lwz r24, 0x18(r10)
/* 80368ADC 0033209C  7C BD 2B 78 */	mr r29, r5
/* 80368AE0 003320A0  82 EA 00 1C */	lwz r23, 0x1c(r10)
/* 80368AE4 003320A4  7C 85 0E 70 */	srawi r5, r4, 1
/* 80368AE8 003320A8  82 CA 00 20 */	lwz r22, 0x20(r10)
/* 80368AEC 003320AC  7F E3 FB 78 */	mr r3, r31
/* 80368AF0 003320B0  82 AA 00 24 */	lwz r21, 0x24(r10)
/* 80368AF4 003320B4  38 80 00 00 */	li r4, 0
/* 80368AF8 003320B8  82 8A 00 28 */	lwz r20, 0x28(r10)
/* 80368AFC 003320BC  82 6A 00 2C */	lwz r19, 0x2c(r10)
/* 80368B00 003320C0  81 8A 00 30 */	lwz r12, 0x30(r10)
/* 80368B04 003320C4  81 6A 00 34 */	lwz r11, 0x34(r10)
/* 80368B08 003320C8  80 EA 00 38 */	lwz r7, 0x38(r10)
/* 80368B0C 003320CC  80 CA 00 3C */	lwz r6, 0x3c(r10)
/* 80368B10 003320D0  91 21 00 08 */	stw r9, 8(r1)
/* 80368B14 003320D4  91 01 00 0C */	stw r8, 0xc(r1)
/* 80368B18 003320D8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80368B1C 003320DC  92 41 00 14 */	stw r18, 0x14(r1)
/* 80368B20 003320E0  93 61 00 18 */	stw r27, 0x18(r1)
/* 80368B24 003320E4  93 41 00 1C */	stw r26, 0x1c(r1)
/* 80368B28 003320E8  93 01 00 20 */	stw r24, 0x20(r1)
/* 80368B2C 003320EC  92 E1 00 24 */	stw r23, 0x24(r1)
/* 80368B30 003320F0  92 C1 00 28 */	stw r22, 0x28(r1)
/* 80368B34 003320F4  92 A1 00 2C */	stw r21, 0x2c(r1)
/* 80368B38 003320F8  92 81 00 30 */	stw r20, 0x30(r1)
/* 80368B3C 003320FC  92 61 00 34 */	stw r19, 0x34(r1)
/* 80368B40 00332100  91 81 00 38 */	stw r12, 0x38(r1)
/* 80368B44 00332104  91 61 00 3C */	stw r11, 0x3c(r1)
/* 80368B48 00332108  90 E1 00 40 */	stw r7, 0x40(r1)
/* 80368B4C 0033210C  90 C1 00 44 */	stw r6, 0x44(r1)
/* 80368B50 00332110  4B C9 B8 01 */	bl memset
/* 80368B54 00332114  57 20 07 FF */	clrlwi. r0, r25, 0x1f
/* 80368B58 00332118  40 82 00 20 */	bne .L_80368B78
/* 80368B5C 0033211C  39 60 00 00 */	li r11, 0
/* 80368B60 00332120  39 80 00 7F */	li r12, 0x7f
/* 80368B64 00332124  38 A0 00 00 */	li r5, 0
/* 80368B68 00332128  3B 60 00 00 */	li r27, 0
/* 80368B6C 0033212C  3B 40 00 00 */	li r26, 0
/* 80368B70 00332130  3B 20 00 00 */	li r25, 0
/* 80368B74 00332134  48 00 00 1C */	b .L_80368B90
.L_80368B78:
/* 80368B78 00332138  81 7C 00 00 */	lwz r11, 0(r28)
/* 80368B7C 0033213C  81 9C 00 04 */	lwz r12, 4(r28)
/* 80368B80 00332140  80 BC 00 08 */	lwz r5, 8(r28)
/* 80368B84 00332144  83 7C 00 0C */	lwz r27, 0xc(r28)
/* 80368B88 00332148  83 5C 00 10 */	lwz r26, 0x10(r28)
/* 80368B8C 0033214C  83 3C 00 14 */	lwz r25, 0x14(r28)
.L_80368B90:
/* 80368B90 00332150  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 80368B94 00332154  3B 01 00 08 */	addi r24, r1, 8
/* 80368B98 00332158  C8 42 BE 70 */	lfd f2, double_8066C1F0@sda21(r2)
/* 80368B9C 0033215C  38 83 FF FF */	addi r4, r3, 0x0000FFFF@l
/* 80368BA0 00332160  38 C0 00 00 */	li r6, 0
/* 80368BA4 00332164  3C 00 FF FF */	lis r0, 0xffff
/* 80368BA8 00332168  3E E0 43 30 */	lis r23, 0x4330
/* 80368BAC 0033216C  7F C9 03 A6 */	mtctr r30
/* 80368BB0 00332170  2C 1E 00 00 */	cmpwi r30, 0
/* 80368BB4 00332174  40 81 01 7C */	ble .L_80368D30
.L_80368BB8:
/* 80368BB8 00332178  A8 BD 00 00 */	lha r5, 0(r29)
/* 80368BBC 0033217C  39 40 00 00 */	li r10, 0
/* 80368BC0 00332180  39 20 00 00 */	li r9, 0
/* 80368BC4 00332184  39 00 00 00 */	li r8, 0
/* 80368BC8 00332188  7C 05 58 00 */	cmpw r5, r11
/* 80368BCC 0033218C  38 E0 00 00 */	li r7, 0
/* 80368BD0 00332190  3B BD 00 02 */	addi r29, r29, 2
/* 80368BD4 00332194  40 80 00 08 */	bge .L_80368BDC
/* 80368BD8 00332198  38 E0 00 01 */	li r7, 1
.L_80368BDC:
/* 80368BDC 0033219C  7E 6B 28 50 */	subf r19, r11, r5
/* 80368BE0 003321A0  7E 65 FE 70 */	srawi r5, r19, 0x1f
/* 80368BE4 003321A4  7C BB 9A 78 */	xor r27, r5, r19
/* 80368BE8 003321A8  7F 65 D8 50 */	subf r27, r5, r27
/* 80368BEC 003321AC  7C 1B 60 00 */	cmpw r27, r12
/* 80368BF0 003321B0  41 80 00 0C */	blt .L_80368BFC
/* 80368BF4 003321B4  39 00 00 01 */	li r8, 1
/* 80368BF8 003321B8  7F 6C D8 50 */	subf r27, r12, r27
.L_80368BFC:
/* 80368BFC 003321BC  55 85 0F FE */	srwi r5, r12, 0x1f
/* 80368C00 003321C0  7C A5 62 14 */	add r5, r5, r12
/* 80368C04 003321C4  7C BA 0E 70 */	srawi r26, r5, 1
/* 80368C08 003321C8  7C 1B D0 00 */	cmpw r27, r26
/* 80368C0C 003321CC  41 80 00 0C */	blt .L_80368C18
/* 80368C10 003321D0  39 20 00 01 */	li r9, 1
/* 80368C14 003321D4  7F 7A D8 50 */	subf r27, r26, r27
.L_80368C18:
/* 80368C18 003321D8  57 45 0F FE */	srwi r5, r26, 0x1f
/* 80368C1C 003321DC  7C A5 D2 14 */	add r5, r5, r26
/* 80368C20 003321E0  7C B9 0E 70 */	srawi r25, r5, 1
/* 80368C24 003321E4  7C 1B C8 00 */	cmpw r27, r25
/* 80368C28 003321E8  41 80 00 0C */	blt .L_80368C34
/* 80368C2C 003321EC  39 40 00 01 */	li r10, 1
/* 80368C30 003321F0  7F 79 D8 50 */	subf r27, r25, r27
.L_80368C34:
/* 80368C34 003321F4  7E 99 51 D6 */	mullw r20, r25, r10
/* 80368C38 003321F8  54 E5 08 3C */	slwi r5, r7, 1
/* 80368C3C 003321FC  57 33 0F FE */	srwi r19, r25, 0x1f
/* 80368C40 00332200  20 A5 00 01 */	subfic r5, r5, 1
/* 80368C44 00332204  7E 73 CA 14 */	add r19, r19, r25
/* 80368C48 00332208  7E AC 41 D6 */	mullw r21, r12, r8
/* 80368C4C 0033220C  7E 73 0E 70 */	srawi r19, r19, 1
/* 80368C50 00332210  7E DA 49 D6 */	mullw r22, r26, r9
/* 80368C54 00332214  7E B4 AA 14 */	add r21, r20, r21
/* 80368C58 00332218  7E D3 B2 14 */	add r22, r19, r22
/* 80368C5C 0033221C  7E D5 B2 14 */	add r22, r21, r22
/* 80368C60 00332220  7C A5 B1 D6 */	mullw r5, r5, r22
/* 80368C64 00332224  7C 05 20 00 */	cmpw r5, r4
/* 80368C68 00332228  40 81 00 08 */	ble .L_80368C70
/* 80368C6C 0033222C  38 A3 FF FF */	addi r5, r3, -1
.L_80368C70:
/* 80368C70 00332230  7C 05 00 00 */	cmpw r5, r0
/* 80368C74 00332234  40 80 00 08 */	bge .L_80368C7C
/* 80368C78 00332238  3C A0 FF FF */	lis r5, 0xffff
.L_80368C7C:
/* 80368C7C 0033223C  7D 6B 2A 14 */	add r11, r11, r5
/* 80368C80 00332240  2C 0B 7F FF */	cmpwi r11, 0x7fff
/* 80368C84 00332244  40 81 00 08 */	ble .L_80368C8C
/* 80368C88 00332248  39 60 7F FF */	li r11, 0x7fff
.L_80368C8C:
/* 80368C8C 0033224C  2C 0B 80 00 */	cmpwi r11, -32768
/* 80368C90 00332250  40 80 00 08 */	bge .L_80368C98
/* 80368C94 00332254  39 60 80 00 */	li r11, -32768
.L_80368C98:
/* 80368C98 00332258  6D 8C 80 00 */	xoris r12, r12, 0x8000
/* 80368C9C 0033225C  55 12 10 3A */	slwi r18, r8, 2
/* 80368CA0 00332260  91 81 00 4C */	stw r12, 0x4c(r1)
/* 80368CA4 00332264  54 D6 07 FE */	clrlwi r22, r6, 0x1f
/* 80368CA8 00332268  55 29 08 3C */	slwi r9, r9, 1
/* 80368CAC 0033226C  7D 0A 92 14 */	add r8, r10, r18
/* 80368CB0 00332270  92 E1 00 48 */	stw r23, 0x48(r1)
/* 80368CB4 00332274  7D 09 42 14 */	add r8, r9, r8
/* 80368CB8 00332278  55 08 18 38 */	slwi r8, r8, 3
/* 80368CBC 0033227C  54 CC 0F FE */	srwi r12, r6, 0x1f
/* 80368CC0 00332280  C8 21 00 48 */	lfd f1, 0x48(r1)
/* 80368CC4 00332284  7D 29 92 14 */	add r9, r9, r18
/* 80368CC8 00332288  7C 18 44 AE */	lfdx f0, r24, r8
/* 80368CCC 0033228C  7D 0C 32 14 */	add r8, r12, r6
/* 80368CD0 00332290  FC 21 10 28 */	fsub f1, f1, f2
/* 80368CD4 00332294  7D 0C 0E 70 */	srawi r12, r8, 1
/* 80368CD8 00332298  54 E8 18 38 */	slwi r8, r7, 3
/* 80368CDC 0033229C  7C EA 4A 14 */	add r7, r10, r9
/* 80368CE0 003322A0  7C E8 3A 14 */	add r7, r8, r7
/* 80368CE4 003322A4  3A D6 FF FF */	addi r22, r22, -1
/* 80368CE8 003322A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80368CEC 003322AC  56 C9 07 7A */	rlwinm r9, r22, 0, 0x1d, 0x1d
/* 80368CF0 003322B0  54 E7 06 3E */	clrlwi r7, r7, 0x18
/* 80368CF4 003322B4  7D 1F 60 AE */	lbzx r8, r31, r12
/* 80368CF8 003322B8  7C E7 48 30 */	slw r7, r7, r9
/* 80368CFC 003322BC  7D 07 3B 78 */	or r7, r8, r7
/* 80368D00 003322C0  FC 00 00 1E */	fctiwz f0, f0
/* 80368D04 003322C4  7C FF 61 AE */	stbx r7, r31, r12
/* 80368D08 003322C8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80368D0C 003322CC  81 81 00 54 */	lwz r12, 0x54(r1)
/* 80368D10 003322D0  2C 0C 00 7F */	cmpwi r12, 0x7f
/* 80368D14 003322D4  41 81 00 08 */	bgt .L_80368D1C
/* 80368D18 003322D8  39 80 00 7F */	li r12, 0x7f
.L_80368D1C:
/* 80368D1C 003322DC  2C 0C 60 00 */	cmpwi r12, 0x6000
/* 80368D20 003322E0  41 80 00 08 */	blt .L_80368D28
/* 80368D24 003322E4  39 80 60 00 */	li r12, 0x6000
.L_80368D28:
/* 80368D28 003322E8  38 C6 00 01 */	addi r6, r6, 1
/* 80368D2C 003322EC  42 00 FE 8C */	bdnz .L_80368BB8
.L_80368D30:
/* 80368D30 003322F0  91 7C 00 00 */	stw r11, 0(r28)
/* 80368D34 003322F4  39 61 00 90 */	addi r11, r1, 0x90
/* 80368D38 003322F8  7F C3 F3 78 */	mr r3, r30
/* 80368D3C 003322FC  91 9C 00 04 */	stw r12, 4(r28)
/* 80368D40 00332300  90 BC 00 08 */	stw r5, 8(r28)
/* 80368D44 00332304  93 7C 00 0C */	stw r27, 0xc(r28)
/* 80368D48 00332308  93 5C 00 10 */	stw r26, 0x10(r28)
/* 80368D4C 0033230C  93 3C 00 14 */	stw r25, 0x14(r28)
/* 80368D50 00332310  4B F5 14 2D */	bl _restgpr_18
/* 80368D54 00332314  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80368D58 00332318  7C 08 03 A6 */	mtlr r0
/* 80368D5C 0033231C  38 21 00 90 */	addi r1, r1, 0x90
/* 80368D60 00332320  4E 80 00 20 */	blr
.endfn WENCGetEncodeData
.4byte 0
.4byte 0
.4byte 0

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_80518D88
lbl_80518D88:
	.4byte 0x3FECC000
	.4byte 0
	.4byte 0x3FECC000
	.4byte 0
	.4byte 0x3FECC000
	.4byte 0
	.4byte 0x3FECC000
	.4byte 0
	.4byte 0x3FF33000
	.4byte 0
	.4byte 0x3FF99000
	.4byte 0
	.4byte 0x40000000
	.4byte 0
	.4byte 0x40033000
	.4byte 0

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global double_8066C1F0
double_8066C1F0:
	.4byte 0x43300000
	.4byte 0x80000000