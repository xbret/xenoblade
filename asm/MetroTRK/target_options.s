.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global SetUseSerialIO
SetUseSerialIO:
/* 802D05C4 00299B84  98 6D B4 28 */	stb r3, lbl_806675A8@sda21(r13)
/* 802D05C8 00299B88  4E 80 00 20 */	blr 

.global GetUseSerialIO
GetUseSerialIO:
/* 802D05CC 00299B8C  88 6D B4 28 */	lbz r3, lbl_806675A8@sda21(r13)
/* 802D05D0 00299B90  4E 80 00 20 */	blr