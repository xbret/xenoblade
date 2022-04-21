.include "macros.inc"

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_804F5B20
lbl_804F5B20:
	# ROM: 0x4F1C20
	.asciz "@unnamed@CGame_cpp@::CGameRestart"
	.balign 4
	.asciz "CWorkThread"
	.asciz "IWorkEvent"
	.balign 4


.global lbl_804F5B5C
lbl_804F5B5C:
	# ROM: 0x4F1C5C
	.asciz "CGameRestart"
	.byte 0x00
	.asciz "43"
	.asciz "arc"
	.asciz "4_3mode.brlyt"
	.asciz "CGame"
	.balign 4
	.4byte 0x8351815B
	.4byte 0x83808381
	.4byte 0x83438393
	.4byte 0