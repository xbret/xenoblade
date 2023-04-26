.include "macros.inc"

#Not sure where this belongs to. it might've been part of New.cp or NewMore.cp?

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj std_exception_typestr, global
	.asciz "std::exception"
	.balign 4
.endobj std_exception_typestr

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__Q23std9exception, global
	.4byte std_exception_typestr
	.4byte 0
.endobj __RTTI__Q23std9exception
