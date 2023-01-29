.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn CFT_Init, global
/* 8039BBE8 003651A8  3C 80 80 52 */	lis r4, lbl_8051CE58@ha
/* 8039BBEC 003651AC  3C 60 80 60 */	lis r3, lbl_80602788@ha
/* 8039BBF0 003651B0  38 84 CE 58 */	addi r4, r4, lbl_8051CE58@l
/* 8039BBF4 003651B4  90 83 27 88 */	stw r4, lbl_80602788@l(r3)
/* 8039BBF8 003651B8  4B FF FC 00 */	b CFT_Ycc420plnToArgb8888Init
.endfn CFT_Init

.section .rodata, "a" # 0x804F5B20 - 0x805281E0

.balign 8
.global lbl_8051CE58
lbl_8051CE58:
	.4byte 0x0A435249
	.4byte 0x20434654
	.4byte 0x2F574949
	.4byte 0x20566572
	.4byte 0x2E322E31
	.4byte 0x31204275
	.4byte 0x696C643A
	.4byte 0x4E6F7620
	.4byte 0x31332032
	.4byte 0x30303820
	.4byte 0x31383A32
	.4byte 0x313A3134
	.4byte 0x0A004170
	.4byte 0x70656E64
	.4byte 0x3A204D57
	.4byte 0x34313939
	.4byte 0x20574949
	.4byte 0x33304A75
	.4byte 0x6C323030
	.4byte 0x38506174
	.4byte 0x63683032
	.4byte 0x0A000000

.section .bss, "wa", @nobits # 0x80573C80 - 0x8066417B

.balign 8
.global lbl_80602788
lbl_80602788:
	.skip 0x8
