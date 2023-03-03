.include "macros.inc"


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global bta_hh_cfg
bta_hh_cfg:
	.4byte 0x04000000
	.4byte p_devt_list
	.4byte 0x04000000
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global p_devt_list
p_devt_list:
	.8byte 0x2001100201033102


.global p_bta_hh_cfg
p_bta_hh_cfg:
	.4byte bta_hh_cfg
	.4byte 0
