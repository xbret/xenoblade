.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn wmemcpy, global
/* 802C4CDC 0028E29C  54 A5 08 3C */	slwi r5, r5, 1
/* 802C4CE0 0028E2A0  4B D3 F3 20 */	b memcpy
.endfn wmemcpy

.fn wmemchr, global
/* 802C4CE4 0028E2A4  7C A9 03 A6 */	mtctr r5
/* 802C4CE8 0028E2A8  2C 05 00 00 */	cmpwi r5, 0x0
/* 802C4CEC 0028E2AC  41 82 00 18 */	beq .L_802C4D04
.L_802C4CF0:
/* 802C4CF0 0028E2B0  A0 03 00 00 */	lhz r0, 0x0(r3)
/* 802C4CF4 0028E2B4  7C 00 20 40 */	cmplw r0, r4
/* 802C4CF8 0028E2B8  4D 82 00 20 */	beqlr
/* 802C4CFC 0028E2BC  38 63 00 02 */	addi r3, r3, 0x2
/* 802C4D00 0028E2C0  42 00 FF F0 */	bdnz .L_802C4CF0
.L_802C4D04:
/* 802C4D04 0028E2C4  38 60 00 00 */	li r3, 0x0
/* 802C4D08 0028E2C8  4E 80 00 20 */	blr
.endfn wmemchr
