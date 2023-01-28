.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common/float.o"

# 0x80665888 - 0x8066588C
.section .sdata, "wa"
.balign 8

.obj __float_nan, global
	.4byte 0x7FFFFFFF
.endobj __float_nan
