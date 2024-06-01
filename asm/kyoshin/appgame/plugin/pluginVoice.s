.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn voice_play__FP10_sVMThread, local
/* 802B8F70 00282530  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B8F74 00282534  7C 08 02 A6 */	mflr r0
/* 802B8F78 00282538  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B8F7C 0028253C  39 61 00 20 */	addi r11, r1, 0x20
/* 802B8F80 00282540  48 00 11 D5 */	bl _savegpr_27
/* 802B8F84 00282544  7C 7B 1B 78 */	mr r27, r3
/* 802B8F88 00282548  38 80 00 01 */	li r4, 1
/* 802B8F8C 0028254C  48 1E 7C ED */	bl vmArgPtrGet
/* 802B8F90 00282550  7C 64 1B 78 */	mr r4, r3
/* 802B8F94 00282554  38 60 00 02 */	li r3, 2
/* 802B8F98 00282558  48 1E 7E 35 */	bl vmArgIntGet
/* 802B8F9C 0028255C  7C 7E 1B 78 */	mr r30, r3
/* 802B8FA0 00282560  7F 63 DB 78 */	mr r3, r27
/* 802B8FA4 00282564  38 80 00 02 */	li r4, 2
/* 802B8FA8 00282568  48 1E 7C D1 */	bl vmArgPtrGet
/* 802B8FAC 0028256C  7C 64 1B 78 */	mr r4, r3
/* 802B8FB0 00282570  38 60 00 03 */	li r3, 3
/* 802B8FB4 00282574  48 1E 7E 19 */	bl vmArgIntGet
/* 802B8FB8 00282578  7C 7B 1B 78 */	mr r27, r3
/* 802B8FBC 0028257C  4B DF DB E9 */	bl func_800B6BA4__Fv
/* 802B8FC0 00282580  80 83 00 04 */	lwz r4, 4(r3)
/* 802B8FC4 00282584  7C 7F 1B 78 */	mr r31, r3
/* 802B8FC8 00282588  83 84 00 00 */	lwz r28, 0(r4)
/* 802B8FCC 0028258C  48 00 00 5C */	b .L_802B9028
.L_802B8FD0:
/* 802B8FD0 00282590  83 BC 00 08 */	lwz r29, 8(r28)
/* 802B8FD4 00282594  2C 1D 00 00 */	cmpwi r29, 0
/* 802B8FD8 00282598  41 82 00 08 */	beq .L_802B8FE0
/* 802B8FDC 0028259C  3B BD C1 64 */	addi r29, r29, -16028
.L_802B8FE0:
/* 802B8FE0 002825A0  81 9D 00 00 */	lwz r12, 0(r29)
/* 802B8FE4 002825A4  7F A3 EB 78 */	mr r3, r29
/* 802B8FE8 002825A8  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802B8FEC 002825AC  7D 89 03 A6 */	mtctr r12
/* 802B8FF0 002825B0  4E 80 04 21 */	bctrl 
/* 802B8FF4 002825B4  2C 03 00 00 */	cmpwi r3, 0
/* 802B8FF8 002825B8  40 82 00 2C */	bne .L_802B9024
/* 802B8FFC 002825BC  A0 1D 3F 28 */	lhz r0, 0x3f28(r29)
/* 802B9000 002825C0  7C 1E 00 00 */	cmpw r30, r0
/* 802B9004 002825C4  40 82 00 20 */	bne .L_802B9024
/* 802B9008 002825C8  C0 22 B4 88 */	lfs f1, float_8066B808@sda21(r2)
/* 802B900C 002825CC  7F 64 DB 78 */	mr r4, r27
/* 802B9010 002825D0  C0 42 B4 8C */	lfs f2, float_8066B80C@sda21(r2)
/* 802B9014 002825D4  38 7D 3E 9C */	addi r3, r29, 0x3e9c
/* 802B9018 002825D8  38 A0 00 14 */	li r5, 0x14
/* 802B901C 002825DC  4B E0 58 7D */	bl func_800BE898__Q22cf8CfObjectFiUlff
/* 802B9020 002825E0  48 00 00 14 */	b .L_802B9034
.L_802B9024:
/* 802B9024 002825E4  83 9C 00 00 */	lwz r28, 0(r28)
.L_802B9028:
/* 802B9028 002825E8  80 1F 00 04 */	lwz r0, 4(r31)
/* 802B902C 002825EC  7C 1C 00 40 */	cmplw r28, r0
/* 802B9030 002825F0  40 82 FF A0 */	bne .L_802B8FD0
.L_802B9034:
/* 802B9034 002825F4  39 61 00 20 */	addi r11, r1, 0x20
/* 802B9038 002825F8  38 60 00 00 */	li r3, 0
/* 802B903C 002825FC  48 00 11 65 */	bl _restgpr_27
/* 802B9040 00282600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B9044 00282604  7C 08 03 A6 */	mtlr r0
/* 802B9048 00282608  38 21 00 20 */	addi r1, r1, 0x20
/* 802B904C 0028260C  4E 80 00 20 */	blr 
.endfn voice_play__FP10_sVMThread

.fn pluginVoiceRegist__Fv, global
/* 802B9050 00282610  3C 60 80 51 */	lis r3, lbl_8050CDB0@ha
/* 802B9054 00282614  3C 80 80 54 */	lis r4, lbl_8053EF98@ha
/* 802B9058 00282618  38 63 CD B0 */	addi r3, r3, lbl_8050CDB0@l
/* 802B905C 0028261C  38 84 EF 98 */	addi r4, r4, lbl_8053EF98@l
/* 802B9060 00282620  48 1E 7B 30 */	b vmPluginRegist
.endfn pluginVoiceRegist__Fv

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_8050CDB0, global
	.asciz "voice"
	.balign 4
.endobj lbl_8050CDB0

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8053EF98, global
	.4byte lbl_8066B810
	.4byte voice_play__FP10_sVMThread
	.4byte 0
	.4byte 0
.endobj lbl_8053EF98

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066B808, global
	.float 1.0
.endobj float_8066B808

.obj float_8066B80C, global
	.float 30
.endobj float_8066B80C

.obj lbl_8066B810, global
	.asciz "play"
	.balign 4
.endobj lbl_8066B810


.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001BE84", local
.hidden "@etb_8001BE84"
	.4byte 0x280A0000
	.4byte 0x00000000
.endobj "@etb_8001BE84"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033A1C", local
.hidden "@eti_80033A1C"
	.4byte play
	.4byte 0x000000E0
	.4byte "@etb_8001BE84"
.endobj "@eti_80033A1C"

