.include "macros.inc"

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global p_bta_sys_cfg
p_bta_sys_cfg:
	.4byte bta_sys_cfg
	.4byte 0


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global bta_sys_cfg
bta_sys_cfg:
	.4byte 0x00040201
	.4byte 0

