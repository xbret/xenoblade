.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8


.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4


.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

