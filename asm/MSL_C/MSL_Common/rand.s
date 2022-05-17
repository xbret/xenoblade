.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802C110C
func_802C110C:
/* 802C110C 0028A6CC  3C 60 41 C6 */	lis r3, 0x41C64E6D@ha
/* 802C1110 0028A6D0  80 8D 97 00 */	lwz r4, lbl_80665880@sda21(r13)
/* 802C1114 0028A6D4  38 03 4E 6D */	addi r0, r3, 0x41C64E6D@l
/* 802C1118 0028A6D8  7C 64 01 D6 */	mullw r3, r4, r0
/* 802C111C 0028A6DC  38 03 30 39 */	addi r0, r3, 0x3039
/* 802C1120 0028A6E0  90 0D 97 00 */	stw r0, lbl_80665880@sda21(r13)
/* 802C1124 0028A6E4  54 03 84 7E */	rlwinm r3, r0, 0x10, 0x11, 0x1f
/* 802C1128 0028A6E8  4E 80 00 20 */	blr 