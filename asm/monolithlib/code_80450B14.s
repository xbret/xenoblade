.include "macros.inc"
.file "monolithlib/code_80450B14.o"

# 0x80450B14 - 0x80450B2C
.text
.balign 4

.fn fn_80450B14, local
/* 80450B14 0041A0D4  90 6D 9E 70 */	stw r3, lbl_80665FF0@sda21(r13)
/* 80450B18 0041A0D8  4E 80 00 20 */	blr
.endfn fn_80450B14

.fn fn_80450B1C, local
/* 80450B1C 0041A0DC  90 6D 9E 74 */	stw r3, lbl_80665FF4@sda21(r13)
/* 80450B20 0041A0E0  4E 80 00 20 */	blr
.endfn fn_80450B1C

.fn fn_80450B24, local
/* 80450B24 0041A0E4  90 6D 9E 78 */	stw r3, lbl_80665FF8@sda21(r13)
/* 80450B28 0041A0E8  4E 80 00 20 */	blr
.endfn fn_80450B24
