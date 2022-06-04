.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global TRKTargetContinue
TRKTargetContinue:
/* 802CD0C4 00296684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CD0C8 00296688  7C 08 02 A6 */	mflr r0
/* 802CD0CC 0029668C  38 60 00 00 */	li r3, 0
/* 802CD0D0 00296690  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CD0D4 00296694  48 00 30 25 */	bl TRKTargetSetStopped
/* 802CD0D8 00296698  4B FF F4 69 */	bl UnreserveEXI2Port
/* 802CD0DC 0029669C  48 00 27 D9 */	bl TRKSwapAndGo
/* 802CD0E0 002966A0  4B FF F4 4D */	bl ReserveEXI2Port
/* 802CD0E4 002966A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CD0E8 002966A8  38 60 00 00 */	li r3, 0
/* 802CD0EC 002966AC  7C 08 03 A6 */	mtlr r0
/* 802CD0F0 002966B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802CD0F4 002966B4  4E 80 00 20 */	blr 