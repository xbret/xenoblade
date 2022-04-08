.include "macros.inc"

.section extabindex_, "wa"  # 0x80021020 - 0x80039220
	.incbin "baserom.dol", 0x4D9800, 0x181E0
.global lbl_80039200
lbl_80039200:
	.incbin "baserom.dol", 0x4F19E0, 0x20