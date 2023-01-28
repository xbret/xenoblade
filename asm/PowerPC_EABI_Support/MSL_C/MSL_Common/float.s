.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common/float.o"

# 0x80665888 - 0x80665898
.section .sdata, "wa"
.balign 8

.obj __float_nan, global
	.4byte 0x7FFFFFFF
.endobj __float_nan

.obj __float_huge, global
	.4byte 0x7F800000
.endobj __float_huge

.obj __double_huge, global
	.4byte 0x7FF00000
	.4byte 0x00000000
.endobj __double_huge
