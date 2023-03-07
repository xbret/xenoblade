.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn ENCiCheckParameters, global
/* 80312CB0 002DC270  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80312CB4 002DC274  7C 08 02 A6 */	mflr r0
/* 80312CB8 002DC278  90 01 00 34 */	stw r0, 0x34(r1)
/* 80312CBC 002DC27C  39 61 00 30 */	addi r11, r1, 0x30
/* 80312CC0 002DC280  4B FA 74 85 */	bl _savegpr_23
/* 80312CC4 002DC284  80 0D B7 40 */	lwz r0, encRegistered@sda21(r13)
/* 80312CC8 002DC288  7C 77 1B 78 */	mr r23, r3
/* 80312CCC 002DC28C  7C 9F 23 78 */	mr r31, r4
/* 80312CD0 002DC290  7C B8 2B 78 */	mr r24, r5
/* 80312CD4 002DC294  2C 00 00 00 */	cmpwi r0, 0
/* 80312CD8 002DC298  7C D9 33 78 */	mr r25, r6
/* 80312CDC 002DC29C  7C FA 3B 78 */	mr r26, r7
/* 80312CE0 002DC2A0  7D 1B 43 78 */	mr r27, r8
/* 80312CE4 002DC2A4  7D 3C 4B 78 */	mr r28, r9
/* 80312CE8 002DC2A8  7D 5D 53 78 */	mr r29, r10
/* 80312CEC 002DC2AC  3B C0 00 00 */	li r30, 0
/* 80312CF0 002DC2B0  40 82 00 14 */	bne .L_80312D04
/* 80312CF4 002DC2B4  80 6D 98 38 */	lwz r3, __ENCVersion@sda21(r13)
/* 80312CF8 002DC2B8  48 04 00 09 */	bl OSRegisterVersion
/* 80312CFC 002DC2BC  38 00 00 01 */	li r0, 1
/* 80312D00 002DC2C0  90 0D B7 40 */	stw r0, encRegistered@sda21(r13)
.L_80312D04:
/* 80312D04 002DC2C4  2C 1B 00 00 */	cmpwi r27, 0
/* 80312D08 002DC2C8  41 82 00 10 */	beq .L_80312D18
/* 80312D0C 002DC2CC  80 1B 00 00 */	lwz r0, 0(r27)
/* 80312D10 002DC2D0  90 1C 00 00 */	stw r0, 0(r28)
/* 80312D14 002DC2D4  48 00 00 0C */	b .L_80312D20
.L_80312D18:
/* 80312D18 002DC2D8  38 00 FF FF */	li r0, -1
/* 80312D1C 002DC2DC  90 1C 00 00 */	stw r0, 0(r28)
.L_80312D20:
/* 80312D20 002DC2E0  2C 1F 00 00 */	cmpwi r31, 0
/* 80312D24 002DC2E4  41 82 00 10 */	beq .L_80312D34
/* 80312D28 002DC2E8  80 1F 00 00 */	lwz r0, 0(r31)
/* 80312D2C 002DC2EC  90 18 00 00 */	stw r0, 0(r24)
/* 80312D30 002DC2F0  48 00 00 10 */	b .L_80312D40
.L_80312D34:
/* 80312D34 002DC2F4  38 00 FF FF */	li r0, -1
/* 80312D38 002DC2F8  90 18 00 00 */	stw r0, 0(r24)
/* 80312D3C 002DC2FC  3B C0 FF FD */	li r30, -3
.L_80312D40:
/* 80312D40 002DC300  2C 1A 00 00 */	cmpwi r26, 0
/* 80312D44 002DC304  40 82 00 08 */	bne .L_80312D4C
/* 80312D48 002DC308  3B C0 FF FD */	li r30, -3
.L_80312D4C:
/* 80312D4C 002DC30C  2C 17 00 00 */	cmpwi r23, 0
/* 80312D50 002DC310  40 82 00 14 */	bne .L_80312D64
/* 80312D54 002DC314  38 00 00 00 */	li r0, 0
/* 80312D58 002DC318  90 19 00 00 */	stw r0, 0(r25)
/* 80312D5C 002DC31C  38 00 FF FF */	li r0, -1
/* 80312D60 002DC320  90 18 00 00 */	stw r0, 0(r24)
.L_80312D64:
/* 80312D64 002DC324  80 1C 00 00 */	lwz r0, 0(r28)
/* 80312D68 002DC328  2C 00 00 00 */	cmpwi r0, 0
/* 80312D6C 002DC32C  40 80 00 0C */	bge .L_80312D78
/* 80312D70 002DC330  38 00 00 00 */	li r0, 0
/* 80312D74 002DC334  90 1D 00 00 */	stw r0, 0(r29)
.L_80312D78:
/* 80312D78 002DC338  2C 1E 00 00 */	cmpwi r30, 0
/* 80312D7C 002DC33C  41 82 00 10 */	beq .L_80312D8C
/* 80312D80 002DC340  38 00 00 00 */	li r0, 0
/* 80312D84 002DC344  90 1F 00 00 */	stw r0, 0(r31)
/* 80312D88 002DC348  90 1B 00 00 */	stw r0, 0(r27)
.L_80312D8C:
/* 80312D8C 002DC34C  39 61 00 30 */	addi r11, r1, 0x30
/* 80312D90 002DC350  7F C3 F3 78 */	mr r3, r30
/* 80312D94 002DC354  4B FA 73 FD */	bl _restgpr_23
/* 80312D98 002DC358  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80312D9C 002DC35C  7C 08 03 A6 */	mtlr r0
/* 80312DA0 002DC360  38 21 00 30 */	addi r1, r1, 0x30
/* 80312DA4 002DC364  4E 80 00 20 */	blr 
.endfn ENCiCheckParameters

.balign 16, 0
.fn ENCiCheckBreakType, global
/* 80312DB0 002DC370  28 03 00 0A */	cmplwi r3, 0xa
/* 80312DB4 002DC374  40 82 00 0C */	bne .L_80312DC0
/* 80312DB8 002DC378  38 60 00 01 */	li r3, 1
/* 80312DBC 002DC37C  4E 80 00 20 */	blr
.L_80312DC0:
/* 80312DC0 002DC380  28 03 00 0D */	cmplwi r3, 0xd
/* 80312DC4 002DC384  40 82 00 18 */	bne .L_80312DDC
/* 80312DC8 002DC388  38 04 FF F6 */	addi r0, r4, -10
/* 80312DCC 002DC38C  7C 00 00 34 */	cntlzw r0, r0
/* 80312DD0 002DC390  54 03 D9 7E */	srwi r3, r0, 5
/* 80312DD4 002DC394  38 63 00 01 */	addi r3, r3, 1
/* 80312DD8 002DC398  4E 80 00 20 */	blr
.L_80312DDC:
/* 80312DDC 002DC39C  38 60 00 00 */	li r3, 0
/* 80312DE0 002DC3A0  4E 80 00 20 */	blr 
.endfn ENCiCheckBreakType

.balign 16, 0
.fn ENCiWriteBreakType, global
/* 80312DF0 002DC3B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80312DF4 002DC3B4  7C 08 02 A6 */	mflr r0
/* 80312DF8 002DC3B8  2C 06 00 00 */	cmpwi r6, 0
/* 80312DFC 002DC3BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80312E00 002DC3C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80312E04 002DC3C4  7C BF 2B 78 */	mr r31, r5
/* 80312E08 002DC3C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80312E0C 002DC3CC  7C 9E 23 78 */	mr r30, r4
/* 80312E10 002DC3D0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80312E14 002DC3D4  7C 7D 1B 78 */	mr r29, r3
/* 80312E18 002DC3D8  41 82 00 84 */	beq .L_80312E9C
/* 80312E1C 002DC3DC  38 BE FF FF */	addi r5, r30, -1
/* 80312E20 002DC3E0  38 80 00 00 */	li r4, 0
/* 80312E24 002DC3E4  4B CF 15 2D */	bl memset
/* 80312E28 002DC3E8  2C 1F 00 01 */	cmpwi r31, 1
/* 80312E2C 002DC3EC  41 82 00 18 */	beq .L_80312E44
/* 80312E30 002DC3F0  2C 1F 00 02 */	cmpwi r31, 2
/* 80312E34 002DC3F4  41 82 00 40 */	beq .L_80312E74
/* 80312E38 002DC3F8  2C 1F 00 03 */	cmpwi r31, 3
/* 80312E3C 002DC3FC  41 82 00 4C */	beq .L_80312E88
/* 80312E40 002DC400  48 00 00 90 */	b .L_80312ED0
.L_80312E44:
/* 80312E44 002DC404  7C 7D F2 14 */	add r3, r29, r30
/* 80312E48 002DC408  38 00 00 0D */	li r0, 0xd
/* 80312E4C 002DC40C  98 03 FF FF */	stb r0, -1(r3)
/* 80312E50 002DC410  38 BE FF FF */	addi r5, r30, -1
/* 80312E54 002DC414  38 80 00 00 */	li r4, 0
/* 80312E58 002DC418  4B CF 14 F9 */	bl memset
/* 80312E5C 002DC41C  57 C0 08 3C */	slwi r0, r30, 1
/* 80312E60 002DC420  38 A0 00 0A */	li r5, 0xa
/* 80312E64 002DC424  7C 9D 02 14 */	add r4, r29, r0
/* 80312E68 002DC428  38 60 00 02 */	li r3, 2
/* 80312E6C 002DC42C  98 A4 FF FF */	stb r5, -1(r4)
/* 80312E70 002DC430  48 00 00 64 */	b .L_80312ED4
.L_80312E74:
/* 80312E74 002DC434  7C 7D F2 14 */	add r3, r29, r30
/* 80312E78 002DC438  38 00 00 0D */	li r0, 0xd
/* 80312E7C 002DC43C  98 03 FF FF */	stb r0, -1(r3)
/* 80312E80 002DC440  38 60 00 01 */	li r3, 1
/* 80312E84 002DC444  48 00 00 50 */	b .L_80312ED4
.L_80312E88:
/* 80312E88 002DC448  7C 7D F2 14 */	add r3, r29, r30
/* 80312E8C 002DC44C  38 00 00 0A */	li r0, 0xa
/* 80312E90 002DC450  98 03 FF FF */	stb r0, -1(r3)
/* 80312E94 002DC454  38 60 00 01 */	li r3, 1
/* 80312E98 002DC458  48 00 00 3C */	b .L_80312ED4
.L_80312E9C:
/* 80312E9C 002DC45C  2C 05 00 01 */	cmpwi r5, 1
/* 80312EA0 002DC460  41 82 00 18 */	beq .L_80312EB8
/* 80312EA4 002DC464  2C 05 00 02 */	cmpwi r5, 2
/* 80312EA8 002DC468  41 82 00 18 */	beq .L_80312EC0
/* 80312EAC 002DC46C  2C 05 00 03 */	cmpwi r5, 3
/* 80312EB0 002DC470  41 82 00 18 */	beq .L_80312EC8
/* 80312EB4 002DC474  48 00 00 1C */	b .L_80312ED0
.L_80312EB8:
/* 80312EB8 002DC478  38 60 00 02 */	li r3, 2
/* 80312EBC 002DC47C  48 00 00 18 */	b .L_80312ED4
.L_80312EC0:
/* 80312EC0 002DC480  38 60 00 01 */	li r3, 1
/* 80312EC4 002DC484  48 00 00 10 */	b .L_80312ED4
.L_80312EC8:
/* 80312EC8 002DC488  38 60 00 01 */	li r3, 1
/* 80312ECC 002DC48C  48 00 00 08 */	b .L_80312ED4
.L_80312ED0:
/* 80312ED0 002DC490  38 60 00 00 */	li r3, 0
.L_80312ED4:
/* 80312ED4 002DC494  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80312ED8 002DC498  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80312EDC 002DC49C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80312EE0 002DC4A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80312EE4 002DC4A4  7C 08 03 A6 */	mtlr r0
/* 80312EE8 002DC4A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80312EEC 002DC4AC  4E 80 00 20 */	blr 
.endfn ENCiWriteBreakType

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8054B5C8, global
	.asciz "<< RVL_SDK - ENC \trelease build: Feb 27 2009 10:05:42 (0x4302_145) >>"
	.balign 4
.endobj lbl_8054B5C8

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8


.obj __ENCVersion, global
	.4byte lbl_8054B5C8
	.4byte 0
.endobj __ENCVersion

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj encRegistered, global
	.skip 0x8
.endobj encRegistered
