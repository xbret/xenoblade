.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global ADXF_Ocbi
ADXF_Ocbi:
/* 8037F578 00348B38  4B FD 4A 08 */	b DCInvalidateRange