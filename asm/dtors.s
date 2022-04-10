.include "macros.inc"

.section .dtors, "wa"  # 0x804F5B00 - 0x804F5B20

.global lbl_804F5B00

lbl_804F5B00:

	# ROM: 0x4F1C00
	.4byte 0x802B96B4  ;# ptr
	.4byte 0x802BA7B0  ;# ptr
	.4byte 0
