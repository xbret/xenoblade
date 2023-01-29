.include "macros.inc"

# 0x80667530 - 0x80667534
.section .sbss, "wa", @nobits
.balign 8

.global errno
errno:
	.skip 0x4
