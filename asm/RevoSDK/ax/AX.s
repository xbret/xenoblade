.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn AXInitSpecifyMem, global
/* 802D2050 0029B610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D2054 0029B614  7C 08 02 A6 */	mflr r0
/* 802D2058 0029B618  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D205C 0029B61C  80 0D B4 88 */	lwz r0, lbl_80667608@sda21(r13)
/* 802D2060 0029B620  2C 00 00 00 */	cmpwi r0, 0
/* 802D2064 0029B624  40 82 00 30 */	bne .L_802D2094
/* 802D2068 0029B628  80 6D 97 30 */	lwz r3, lbl_806658B0@sda21(r13)
/* 802D206C 0029B62C  48 08 0C 95 */	bl OSRegisterVersion
/* 802D2070 0029B630  48 00 01 71 */	bl __AXAllocInit
/* 802D2074 0029B634  48 00 2F AD */	bl __AXVPBInitSpecifyMem
/* 802D2078 0029B638  48 00 25 19 */	bl __AXSPBInit
/* 802D207C 0029B63C  48 00 06 35 */	bl __AXAuxInit
/* 802D2080 0029B640  48 00 18 F1 */	bl __AXClInit
/* 802D2084 0029B644  38 60 00 00 */	li r3, 0
/* 802D2088 0029B648  48 00 1E 79 */	bl __AXOutInit
/* 802D208C 0029B64C  38 00 00 01 */	li r0, 1
/* 802D2090 0029B650  90 0D B4 88 */	stw r0, lbl_80667608@sda21(r13)
.L_802D2094:
/* 802D2094 0029B654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D2098 0029B658  7C 08 03 A6 */	mtlr r0
/* 802D209C 0029B65C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D20A0 0029B660  4E 80 00 20 */	blr 
.endfn AXInitSpecifyMem

.balign 16, 0
.fn AXQuit, global
/* 802D20B0 0029B670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D20B4 0029B674  7C 08 02 A6 */	mflr r0
/* 802D20B8 0029B678  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D20BC 0029B67C  80 0D B4 88 */	lwz r0, lbl_80667608@sda21(r13)
/* 802D20C0 0029B680  2C 00 00 00 */	cmpwi r0, 0
/* 802D20C4 0029B684  41 82 00 24 */	beq .L_802D20E8
/* 802D20C8 0029B688  48 00 20 39 */	bl __AXOutQuit
/* 802D20CC 0029B68C  48 00 01 C5 */	bl __AXAllocQuit
/* 802D20D0 0029B690  48 00 32 11 */	bl __AXVPBQuit
/* 802D20D4 0029B694  48 00 25 1D */	bl __AXSPBQuit
/* 802D20D8 0029B698  48 00 06 F9 */	bl __AXAuxQuit
/* 802D20DC 0029B69C  48 00 18 E5 */	bl __AXClQuit
/* 802D20E0 0029B6A0  38 00 00 00 */	li r0, 0
/* 802D20E4 0029B6A4  90 0D B4 88 */	stw r0, lbl_80667608@sda21(r13)
.L_802D20E8:
/* 802D20E8 0029B6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D20EC 0029B6AC  7C 08 03 A6 */	mtlr r0
/* 802D20F0 0029B6B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802D20F4 0029B6B4  4E 80 00 20 */	blr 
.endfn AXQuit

.balign 16, 0
.fn AXIsInit, global
/* 802D2100 0029B6C0  80 6D B4 88 */	lwz r3, lbl_80667608@sda21(r13)
/* 802D2104 0029B6C4  4E 80 00 20 */	blr 
.endfn AXIsInit


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.4byte 0 #needed to fix alignment for arc.c ("arc.c" string)

.global lbl_80540070
lbl_80540070:
	.asciz "<< RVL_SDK - AX \trelease build: Feb 27 2009 10:01:36 (0x4302_145) >>"
	.balign 4

.section .sdata, "wa"  # 0x80664180 - 0x80666600
.2byte 0 #needed to fix alignment for arc.c

.global lbl_806658B0
lbl_806658B0:
	.4byte lbl_80540070
	.4byte 0

.section .sbss, "wa"  # 0x80666600 - 0x8066836F
.balign 8 #needed to align ai.c

.global lbl_80667608
lbl_80667608:
	.skip 0x8