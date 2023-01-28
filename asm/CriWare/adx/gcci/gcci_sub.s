.include "macros.inc"
.file "CriWare/adx/gcci/gcci_sub.o"

# 0x8039179C - 0x803917A8
.text
.balign 4

.fn gcCiSetRdMode, global
/* 8039179C 0035AD5C  3C 60 80 5F */	lis r3, lbl_805EB168@ha
/* 803917A0 0035AD60  90 C3 B1 68 */	stw r6, lbl_805EB168@l(r3)
/* 803917A4 0035AD64  4E 80 00 20 */	blr
.endfn gcCiSetRdMode
