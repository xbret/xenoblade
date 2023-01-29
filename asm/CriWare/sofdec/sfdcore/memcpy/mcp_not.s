.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn MEM_Copy, global
/* 803BB72C 00384CEC  4B C4 88 D4 */	b memcpy
.endfn MEM_Copy
