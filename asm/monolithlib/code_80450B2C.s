.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global ctor_80450B2C
ctor_80450B2C:
/* 80450B2C 0041A0EC  3C 80 80 66 */	lis r4, lbl_8065A780@ha
/* 80450B30 0041A0F0  38 00 00 00 */	li r0, 0
/* 80450B34 0041A0F4  38 64 A7 80 */	addi r3, r4, lbl_8065A780@l
/* 80450B38 0041A0F8  98 04 A7 80 */	stb r0, -0x5880(r4)
/* 80450B3C 0041A0FC  90 03 00 80 */	stw r0, 0x80(r3)
/* 80450B40 0041A100  4E 80 00 20 */	blr