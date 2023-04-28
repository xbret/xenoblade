.include "macros.inc"


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj bta_dm_cfg, global
	.4byte 0x40020400
	.4byte 0x000F2000
	.4byte 0x13880000
.endobj bta_dm_cfg

.obj bta_dm_rm_cfg, global
	.4byte 0x0002010E
	.4byte 0x01020E02
	.4byte 0x0212FF01
.endobj bta_dm_rm_cfg

.obj bta_dm_compress_cfg, global
	.4byte 0x0005000A
	.4byte 0xFF0108FF
	.4byte 0x0106FF01
	.4byte 0x07FF0112
	.4byte 0xFF020000
.endobj bta_dm_compress_cfg

.obj bta_dm_pm_spec, global
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
.endobj bta_dm_pm_spec

.obj bta_dm_pm_md, global
	.4byte 0x019000C8
	.4byte 0x00040004
	.4byte 0x02000320
	.4byte 0x01900000
	.4byte 0x00000300
	.4byte 0
.endobj bta_dm_pm_md


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj p_bta_dm_rm_cfg, global
	.4byte bta_dm_rm_cfg
.endobj p_bta_dm_rm_cfg


.obj p_bta_dm_compress_cfg, global
	.4byte bta_dm_compress_cfg
.endobj p_bta_dm_compress_cfg

.obj p_bta_dm_pm_cfg, global
	.4byte bta_dm_pm_cfg
.endobj p_bta_dm_pm_cfg


.obj p_bta_dm_pm_spec, global
	.4byte bta_dm_pm_spec
.endobj p_bta_dm_pm_spec


.obj p_bta_dm_pm_md, global
	.4byte bta_dm_pm_md
	.4byte 0
.endobj p_bta_dm_pm_md

.section .sbss2, "", @nobits #0x8066DCE0 - 0x8066DCFB

.balign 8

.obj bta_dm_pm_cfg, global
	.skip 0x8
.endobj bta_dm_pm_cfg
