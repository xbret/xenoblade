.include "macros.inc"

.section .sbss, "wa", @nobits # 0x80666600 - 0x8066836F

.balign 8

.global errno
errno:
	.skip 0x4
