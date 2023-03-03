.include "macros.inc"


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global bta_dm_cfg
bta_dm_cfg:
	.4byte 0x40020400
	.4byte 0x000F2000
	.4byte 0x13880000

.global bta_dm_rm_cfg
bta_dm_rm_cfg:
	.4byte 0x0002010E
	.4byte 0x01020E02
	.4byte 0x0212FF01

.global bta_dm_compress_cfg
bta_dm_compress_cfg:
	.4byte 0x0005000A
	.4byte 0xFF0108FF
	.4byte 0x0106FF01
	.4byte 0x07FF0112
	.4byte 0xFF020000

.global bta_dm_pm_spec
bta_dm_pm_spec:
	.4byte 0x03000200
	.4byte 0x13880000
	.4byte 0x00001000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000200
	.4byte 0x13880000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000800
	.4byte 0x13880000
	.4byte 0

.global bta_dm_pm_md
bta_dm_pm_md:
	.4byte 0x019000C8
	.4byte 0x00040004
	.4byte 0x02000320
	.4byte 0x01900000
	.4byte 0x00000300
	.4byte 0


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global p_bta_dm_rm_cfg
p_bta_dm_rm_cfg:
	.4byte bta_dm_rm_cfg


.global p_bta_dm_compress_cfg
p_bta_dm_compress_cfg:
	.4byte bta_dm_compress_cfg

.global p_bta_dm_pm_cfg
p_bta_dm_pm_cfg:
	.4byte bta_dm_pm_cfg


.global p_bta_dm_pm_spec
p_bta_dm_pm_spec:
	.4byte bta_dm_pm_spec


.global p_bta_dm_pm_md
p_bta_dm_pm_md:
	.4byte bta_dm_pm_md
	.4byte 0

.section .sbss2, "", @nobits #0x8066DCE0 - 0x8066DCFB

.global bta_dm_pm_cfg
bta_dm_pm_cfg:
	.skip 0x8