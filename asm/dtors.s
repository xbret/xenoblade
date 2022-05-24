.include "macros.inc"

.section .dtors, "wa"  # 0x804F5B00 - 0x804F5B20

.global lbl_804F5B00
lbl_804F5B00:
	# ROM: 0x4F1C00
	.4byte __destroy_global_chain_tmp
	.4byte __fini_cpp_exceptions_tmp
	.4byte 0
