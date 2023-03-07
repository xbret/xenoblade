.include "macros.inc"


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj bta_hh_cfg, global
	.4byte 0x04000000
	.4byte p_devt_list
	.4byte 0x04000000
	.4byte 0
.endobj bta_hh_cfg

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj p_devt_list, global
	.8byte 0x2001100201033102
.endobj p_devt_list


.obj p_bta_hh_cfg, global
	.4byte bta_hh_cfg
	.4byte 0
.endobj p_bta_hh_cfg
