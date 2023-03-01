.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn TRK_main, global
/* 802CBA54 00295014  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CBA58 00295018  7C 08 02 A6 */	mflr r0
/* 802CBA5C 0029501C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CBA60 00295020  48 00 0D 8D */	bl TRKInitializeNub
/* 802CBA64 00295024  2C 03 00 00 */	cmpwi r3, 0
/* 802CBA68 00295028  90 6D B3 E8 */	stw r3, TRK_mainError@sda21(r13)
/* 802CBA6C 0029502C  40 82 00 0C */	bne .L_802CBA78
/* 802CBA70 00295030  48 00 0E 4D */	bl TRKNubWelcome
/* 802CBA74 00295034  48 00 00 1D */	bl TRKNubMainLoop
.L_802CBA78:
/* 802CBA78 00295038  48 00 0E 21 */	bl TRKTerminateNub
/* 802CBA7C 0029503C  90 6D B3 E8 */	stw r3, TRK_mainError@sda21(r13)
/* 802CBA80 00295040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CBA84 00295044  7C 08 03 A6 */	mtlr r0
/* 802CBA88 00295048  38 21 00 10 */	addi r1, r1, 0x10
/* 802CBA8C 0029504C  4E 80 00 20 */	blr 
.endfn TRK_main

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

TRK_mainError:
	.skip 0x4

.skip 0x4