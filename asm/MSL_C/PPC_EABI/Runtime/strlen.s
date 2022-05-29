.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.global strlen
strlen:
/* 802B95B8 00282B78  38 83 FF FF */	addi r4, r3, -1
/* 802B95BC 00282B7C  38 60 FF FF */	li r3, -1
lbl_802B95C0:
/* 802B95C0 00282B80  8C 04 00 01 */	lbzu r0, 1(r4)
/* 802B95C4 00282B84  38 63 00 01 */	addi r3, r3, 1
/* 802B95C8 00282B88  2C 00 00 00 */	cmpwi r0, 0
/* 802B95CC 00282B8C  40 82 FF F4 */	bne lbl_802B95C0
/* 802B95D0 00282B90  4E 80 00 20 */	blr 