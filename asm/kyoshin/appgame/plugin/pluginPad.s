.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn pad_get__FP10_sVMThread, local
/* 800616E0 0002ACA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800616E4 0002ACA4  7C 08 02 A6 */	mflr r0
/* 800616E8 0002ACA8  38 80 00 01 */	li r4, 1
/* 800616EC 0002ACAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800616F0 0002ACB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800616F4 0002ACB4  7C 7F 1B 78 */	mr r31, r3
/* 800616F8 0002ACB8  48 43 F5 F9 */	bl vmArgOmitChk
/* 800616FC 0002ACBC  2C 03 00 00 */	cmpwi r3, 0
/* 80061700 0002ACC0  41 82 00 0C */	beq .L_8006170C
/* 80061704 0002ACC4  38 60 00 01 */	li r3, 1
/* 80061708 0002ACC8  48 00 00 1C */	b .L_80061724
.L_8006170C:
/* 8006170C 0002ACCC  7F E3 FB 78 */	mr r3, r31
/* 80061710 0002ACD0  38 80 00 01 */	li r4, 1
/* 80061714 0002ACD4  48 43 F5 65 */	bl vmArgPtrGet
/* 80061718 0002ACD8  7C 64 1B 78 */	mr r4, r3
/* 8006171C 0002ACDC  38 60 00 02 */	li r3, 2
/* 80061720 0002ACE0  48 43 F6 AD */	bl vmArgIntGet
.L_80061724:
/* 80061724 0002ACE4  2C 03 00 00 */	cmpwi r3, 0
/* 80061728 0002ACE8  41 82 00 18 */	beq .L_80061740
/* 8006172C 0002ACEC  2C 03 00 01 */	cmpwi r3, 1
/* 80061730 0002ACF0  41 82 00 28 */	beq .L_80061758
/* 80061734 0002ACF4  2C 03 00 02 */	cmpwi r3, 2
/* 80061738 0002ACF8  41 82 00 38 */	beq .L_80061770
/* 8006173C 0002ACFC  48 00 00 4C */	b .L_80061788
.L_80061740:
/* 80061740 0002AD00  38 00 00 03 */	li r0, 3
/* 80061744 0002AD04  98 01 00 08 */	stb r0, 8(r1)
/* 80061748 0002AD08  48 3E 5E 39 */	bl CDeviceRemotePad_80447580__Fv
/* 8006174C 0002AD0C  80 03 00 00 */	lwz r0, 0(r3)
/* 80061750 0002AD10  90 01 00 0C */	stw r0, 0xc(r1)
/* 80061754 0002AD14  48 00 00 44 */	b .L_80061798
.L_80061758:
/* 80061758 0002AD18  38 00 00 03 */	li r0, 3
/* 8006175C 0002AD1C  98 01 00 08 */	stb r0, 8(r1)
/* 80061760 0002AD20  48 3E 5E 21 */	bl CDeviceRemotePad_80447580__Fv
/* 80061764 0002AD24  80 03 00 04 */	lwz r0, 4(r3)
/* 80061768 0002AD28  90 01 00 0C */	stw r0, 0xc(r1)
/* 8006176C 0002AD2C  48 00 00 2C */	b .L_80061798
.L_80061770:
/* 80061770 0002AD30  38 00 00 03 */	li r0, 3
/* 80061774 0002AD34  98 01 00 08 */	stb r0, 8(r1)
/* 80061778 0002AD38  48 3E 5E 09 */	bl CDeviceRemotePad_80447580__Fv
/* 8006177C 0002AD3C  80 03 00 08 */	lwz r0, 8(r3)
/* 80061780 0002AD40  90 01 00 0C */	stw r0, 0xc(r1)
/* 80061784 0002AD44  48 00 00 14 */	b .L_80061798
.L_80061788:
/* 80061788 0002AD48  7F E3 FB 78 */	mr r3, r31
/* 8006178C 0002AD4C  48 43 F8 79 */	bl func_804A1004
/* 80061790 0002AD50  38 60 00 00 */	li r3, 0
/* 80061794 0002AD54  48 00 00 14 */	b .L_800617A8
.L_80061798:
/* 80061798 0002AD58  7F E3 FB 78 */	mr r3, r31
/* 8006179C 0002AD5C  38 81 00 08 */	addi r4, r1, 8
/* 800617A0 0002AD60  48 43 F7 FD */	bl vmRetValSet
/* 800617A4 0002AD64  38 60 00 01 */	li r3, 1
.L_800617A8:
/* 800617A8 0002AD68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800617AC 0002AD6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800617B0 0002AD70  7C 08 03 A6 */	mtlr r0
/* 800617B4 0002AD74  38 21 00 20 */	addi r1, r1, 0x20
/* 800617B8 0002AD78  4E 80 00 20 */	blr 
.endfn pad_get__FP10_sVMThread

.fn pad_enable__FP10_sVMThread, local
/* 800617BC 0002AD7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800617C0 0002AD80  7C 08 02 A6 */	mflr r0
/* 800617C4 0002AD84  38 80 00 01 */	li r4, 1
/* 800617C8 0002AD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 800617CC 0002AD8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800617D0 0002AD90  93 C1 00 08 */	stw r30, 8(r1)
/* 800617D4 0002AD94  7C 7E 1B 78 */	mr r30, r3
/* 800617D8 0002AD98  48 43 F4 A1 */	bl vmArgPtrGet
/* 800617DC 0002AD9C  7C 64 1B 78 */	mr r4, r3
/* 800617E0 0002ADA0  38 60 00 02 */	li r3, 2
/* 800617E4 0002ADA4  48 43 F5 E9 */	bl vmArgIntGet
/* 800617E8 0002ADA8  7C 7F 1B 78 */	mr r31, r3
/* 800617EC 0002ADAC  7F C3 F3 78 */	mr r3, r30
/* 800617F0 0002ADB0  38 80 00 02 */	li r4, 2
/* 800617F4 0002ADB4  48 43 F4 85 */	bl vmArgPtrGet
/* 800617F8 0002ADB8  7C 64 1B 78 */	mr r4, r3
/* 800617FC 0002ADBC  38 60 00 03 */	li r3, 3
/* 80061800 0002ADC0  48 43 F5 81 */	bl vmArgBoolGet
/* 80061804 0002ADC4  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 80061808 0002ADC8  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 8006180C 0002ADCC  40 82 00 34 */	bne .L_80061840
/* 80061810 0002ADD0  7C 60 00 34 */	cntlzw r0, r3
/* 80061814 0002ADD4  7F E3 FB 78 */	mr r3, r31
/* 80061818 0002ADD8  54 1F D9 7E */	srwi r31, r0, 5
/* 8006181C 0002ADDC  7F E0 00 34 */	cntlzw r0, r31
/* 80061820 0002ADE0  54 04 D9 7E */	srwi r4, r0, 5
/* 80061824 0002ADE4  48 02 55 9D */	bl func_80086DC0
/* 80061828 0002ADE8  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 8006182C 0002ADEC  2C 1F 00 00 */	cmpwi r31, 0
/* 80061830 0002ADF0  54 03 03 DA */	rlwinm r3, r0, 0, 0xf, 0xd
/* 80061834 0002ADF4  41 82 00 08 */	beq .L_8006183C
/* 80061838 0002ADF8  64 03 00 02 */	oris r3, r0, 2
.L_8006183C:
/* 8006183C 0002ADFC  90 6D A5 A8 */	stw r3, lbl_80666728@sda21(r13)
.L_80061840:
/* 80061840 0002AE00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80061844 0002AE04  38 60 00 00 */	li r3, 0
/* 80061848 0002AE08  83 C1 00 08 */	lwz r30, 8(r1)
/* 8006184C 0002AE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80061850 0002AE10  7C 08 03 A6 */	mtlr r0
/* 80061854 0002AE14  38 21 00 10 */	addi r1, r1, 0x10
/* 80061858 0002AE18  4E 80 00 20 */	blr 
.endfn pad_enable__FP10_sVMThread

.fn pluginPadRegist__Fv, global
/* 8006185C 0002AE1C  3C 60 80 4F */	lis r3, lbl_804F6A18@ha
/* 80061860 0002AE20  3C 80 80 53 */	lis r4, lbl_80529EC0@ha
/* 80061864 0002AE24  38 63 6A 18 */	addi r3, r3, lbl_804F6A18@l
/* 80061868 0002AE28  38 84 9E C0 */	addi r4, r4, lbl_80529EC0@l
/* 8006186C 0002AE2C  48 43 F3 24 */	b vmPluginRegist
.endfn pluginPadRegist__Fv



.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_804F6A18, global
	.asciz "pad"
	.4byte 0
.endobj lbl_804F6A18


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_80529EC0, global
	.4byte lbl_80668A68
	.4byte pad_get__FP10_sVMThread
	.4byte lbl_80668A6C
	.4byte pad_enable__FP10_sVMThread
	.4byte 0
	.4byte 0
.endobj lbl_80529EC0


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_80668A68, global
	.asciz "get"
.endobj lbl_80668A68

.obj lbl_80668A6C, global
	.asciz "enable"
	.balign 4
	.4byte 0
.endobj lbl_80668A6C


.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800079B4", local
.hidden "@etb_800079B4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800079B4"

.obj "@etb_800079BC", local
.hidden "@etb_800079BC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800079BC"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80022A60", local
.hidden "@eti_80022A60"
	.4byte pad_get__FP10_sVMThread
	.4byte 0x000000DC
	.4byte "@etb_800079B4"
.endobj "@eti_80022A60"

.obj "@eti_80022A6C", local
.hidden "@eti_80022A6C"
	.4byte pad_enable__FP10_sVMThread
	.4byte 0x000000A0
	.4byte "@etb_800079BC"
.endobj "@eti_80022A6C"
