.include "macros.inc"

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00
.global lbl_804F5900
lbl_804F5900:
	.incbin "baserom.dol", 0x4F1A00, 0x200