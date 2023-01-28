.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common/float.o"

# 0x80665888 - 0x80665898
.section .sdata, "wa"
.balign 8

.obj __float_nan, global
	.4byte 0x7FFFFFFF
.endobj __float_nan

.obj lbl_8066588C, global
	.4byte 0x7F800000
.endobj lbl_8066588C

.obj lbl_80665890, global
	.4byte 0x7FF00000
	.4byte 0x00000000
.endobj lbl_80665890
