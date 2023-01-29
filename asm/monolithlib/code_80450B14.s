.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_80450B14, global
/* 80450B14 0041A0D4  90 6D 9E 70 */	stw r3, lbl_80665FF0@sda21(r13)
/* 80450B18 0041A0D8  4E 80 00 20 */	blr
.endfn func_80450B14

.fn func_80450B1C, global
/* 80450B1C 0041A0DC  90 6D 9E 74 */	stw r3, lbl_80665FF4@sda21(r13)
/* 80450B20 0041A0E0  4E 80 00 20 */	blr
.endfn func_80450B1C

.fn func_80450B24, global
/* 80450B24 0041A0E4  90 6D 9E 78 */	stw r3, lbl_80665FF8@sda21(r13)
/* 80450B28 0041A0E8  4E 80 00 20 */	blr
.endfn func_80450B24
