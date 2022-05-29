.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global BTE_InitStack
BTE_InitStack:
/* 802DDEB0 002A7470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DDEB4 002A7474  7C 08 02 A6 */	mflr r0
/* 802DDEB8 002A7478  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DDEBC 002A747C  48 01 EB 71 */	bl RFCOMM_Init
/* 802DDEC0 002A7480  48 01 1E 45 */	bl GAP_Init
/* 802DDEC4 002A7484  48 01 57 15 */	bl HID_DevInit
/* 802DDEC8 002A7488  48 01 61 95 */	bl HID_HostInit
/* 802DDECC 002A748C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DDED0 002A7490  7C 08 03 A6 */	mtlr r0
/* 802DDED4 002A7494  38 21 00 10 */	addi r1, r1, 0x10
/* 802DDED8 002A7498  4E 80 00 20 */	blr 
.balign 16, 0