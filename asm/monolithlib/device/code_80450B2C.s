.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn sinit_80450B2C, local
/* 80450B2C 0041A0EC  3C 80 80 66 */	lis r4, lbl_8065A780@ha
/* 80450B30 0041A0F0  38 00 00 00 */	li r0, 0
/* 80450B34 0041A0F4  38 64 A7 80 */	addi r3, r4, lbl_8065A780@l
/* 80450B38 0041A0F8  98 04 A7 80 */	stb r0, lbl_8065A780@l(r4)
/* 80450B3C 0041A0FC  90 03 00 80 */	stw r0, 0x80(r3)
/* 80450B40 0041A100  4E 80 00 20 */	blr
.endfn sinit_80450B2C


.fn func_80450B44, global
/* 80450B44 0041A104  38 63 FE 3C */	addi r3, r3, -452
/* 80450B48 0041A108  4B FF FF 70 */	b func_80450AB8
.endfn func_80450B44


.fn func_80450B4C, global
/* 80450B4C 0041A10C  38 63 FE 3C */	addi r3, r3, -452
/* 80450B50 0041A110  4B FF EB 4C */	b __dt__CDeviceFileCri
.endfn func_80450B4C

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte sinit_80450B2C

.section .bss, "wa"  # 0x80573C80 - 0x8066417B



.global lbl_8065A780
lbl_8065A780:
	.skip 0x88