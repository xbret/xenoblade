.include "macros.inc"
.file "monolithlib/device/code_80450B2C.o"

# 0x80450B2C - 0x80450B54
.text
.balign 4

.fn sinit_80450B2C, global
/* 80450B2C 0041A0EC  3C 80 80 66 */	lis r4, lbl_8065A780@ha
/* 80450B30 0041A0F0  38 00 00 00 */	li r0, 0x0
/* 80450B34 0041A0F4  38 64 A7 80 */	addi r3, r4, lbl_8065A780@l
/* 80450B38 0041A0F8  98 04 A7 80 */	stb r0, lbl_8065A780@l(r4)
/* 80450B3C 0041A0FC  90 03 00 80 */	stw r0, 0x80(r3)
/* 80450B40 0041A100  4E 80 00 20 */	blr
.endfn sinit_80450B2C

.fn fn_80450B44, local
/* 80450B44 0041A104  38 63 FE 3C */	addi r3, r3, -0x1c4
/* 80450B48 0041A108  4B FF FF 70 */	b fn_80450AB8
.endfn fn_80450B44

.fn fn_80450B4C, local
/* 80450B4C 0041A10C  38 63 FE 3C */	addi r3, r3, -0x1c4
/* 80450B50 0041A110  4B FF EB 4C */	b fn_8044F69C
.endfn fn_80450B4C

# 0x804F5A78 - 0x804F5A7C
.section .ctors, "a"
.balign 4
	.4byte sinit_80450B2C

# 0x8065A780 - 0x8065A808
.section .bss, "wa", @nobits
.balign 8
.sym lbl_8065A780, local
	.skip 0x88
