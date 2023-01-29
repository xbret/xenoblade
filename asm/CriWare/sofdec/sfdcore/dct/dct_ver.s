.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn DCT_GetVerStr, global
/* 803BB718 00384CD8  3C 60 80 52 */	lis r3, DCT_version_str@ha
/* 803BB71C 00384CDC  3C 80 80 61 */	lis r4, cri_verstr_ptr@ha
/* 803BB720 00384CE0  38 63 FE 30 */	addi r3, r3, DCT_version_str@l
/* 803BB724 00384CE4  90 64 A2 88 */	stw r3, cri_verstr_ptr@l(r4)
/* 803BB728 00384CE8  4E 80 00 20 */	blr
.endfn DCT_GetVerStr

# 0x8051FE30 - 0x8051FE88
.rodata
.balign 8

.global DCT_version_str
DCT_version_str:
	.4byte 0x0A435249
	.4byte 0x20444354
	.4byte 0x2F574949
	.4byte 0x20566572
	.4byte 0x2E322E30
	.4byte 0x33342042
	.4byte 0x75696C64
	.4byte 0x3A4E6F76
	.4byte 0x20313320
	.4byte 0x32303038
	.4byte 0x2031383A
	.4byte 0x32313A32
	.4byte 0x360A0041
	.4byte 0x7070656E
	.4byte 0x643A204D
	.4byte 0x57343139
	.4byte 0x39205749
	.4byte 0x4933304A
	.4byte 0x756C3230
	.4byte 0x30385061
	.4byte 0x74636830
	.4byte 0x320A0000

# 0x8060A288 - 0x8060A290
.section .bss, "wa", @nobits
.balign 8

.global cri_verstr_ptr
cri_verstr_ptr:
	.skip 0x8
