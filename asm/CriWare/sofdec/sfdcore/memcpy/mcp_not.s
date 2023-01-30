.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global MEM_Copy
MEM_Copy:
/* 803BB72C 00384CEC  4B C4 88 D4 */	b memcpy