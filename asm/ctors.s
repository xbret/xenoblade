.include "macros.inc"

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.global __init_cpp_exceptions_reference
__init_cpp_exceptions_reference:
	.4byte __init_cpp_exceptions_tmp