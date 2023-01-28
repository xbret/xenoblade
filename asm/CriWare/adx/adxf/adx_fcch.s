.include "macros.inc"
.file "CriWare/adx/adxf/adx_fcch.o"

# 0x8037F578 - 0x8037F57C
.text
.balign 4

.fn ADXF_Ocbi, global
/* 8037F578 00348B38  4B FD 4A 08 */	b DCInvalidateRange
.endfn ADXF_Ocbi
