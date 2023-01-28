.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common/rand.o"

# 0x802C110C - 0x802C112C
.text
.balign 4

.fn rand, global
/* 802C110C 0028A6CC  3C 60 41 C6 */	lis r3, 0x41c6
/* 802C1110 0028A6D0  80 8D 97 00 */	lwz r4, next@sda21(r13)
/* 802C1114 0028A6D4  38 03 4E 6D */	addi r0, r3, 0x4e6d
/* 802C1118 0028A6D8  7C 64 01 D6 */	mullw r3, r4, r0
/* 802C111C 0028A6DC  38 03 30 39 */	addi r0, r3, 0x3039
/* 802C1120 0028A6E0  90 0D 97 00 */	stw r0, next@sda21(r13)
/* 802C1124 0028A6E4  54 03 84 7E */	extrwi r3, r0, 15, 1
/* 802C1128 0028A6E8  4E 80 00 20 */	blr
.endfn rand

# 0x80665880 - 0x80665888
.section .sdata, "wa"
.balign 8

.obj next, local
	.4byte 0x00000001
.endobj next
	.4byte 0x00000000
