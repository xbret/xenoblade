.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common/errno.o"

# 0x80667530 - 0x80667534
.section .sbss, "wa", @nobits
.balign 8

.obj errno, global
	.skip 0x4
.endobj errno
