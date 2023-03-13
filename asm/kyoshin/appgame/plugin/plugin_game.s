.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_801ABDE4, local
/* 801ABDE4 001753A4  38 60 00 00 */	li r3, 0
/* 801ABDE8 001753A8  4E 80 00 20 */	blr 
.endfn func_801ABDE4

.fn pluginGameRegist, global
/* 801ABDEC 001753AC  3C 60 80 50 */	lis r3, lbl_804FF990@ha
/* 801ABDF0 001753B0  3C 80 80 53 */	lis r4, lbl_80536C48@ha
/* 801ABDF4 001753B4  38 63 F9 90 */	addi r3, r3, lbl_804FF990@l
/* 801ABDF8 001753B8  38 84 6C 48 */	addi r4, r4, lbl_80536C48@l
/* 801ABDFC 001753BC  48 2F 4D 94 */	b vmPluginRegist
.endfn pluginGameRegist

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_804FF990, global
	.asciz "game"
	.balign 4
.endobj lbl_804FF990

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_80536C48, global
	.4byte lbl_8066A678
	.4byte func_801ABDE4
	.4byte 0
	.4byte 0
.endobj lbl_80536C48

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_8066A678, global
	.asciz "cmd"
	.4byte 0
.endobj lbl_8066A678