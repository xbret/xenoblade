.include "macros.inc"

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj p_bta_sys_cfg, global
	.4byte bta_sys_cfg
	.4byte 0
.endobj p_bta_sys_cfg


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj bta_sys_cfg, global
	.4byte 0x00040201
	.4byte 0
.endobj bta_sys_cfg

