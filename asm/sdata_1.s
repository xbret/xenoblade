.include "macros.inc"

.section .sdata, "wa"  # 0x80664180 - 0x80666600


.balign 8
.global lbl_80666440
lbl_80666440:
	.4byte 0x8066D938
	.4byte 0

.global lbl_80666448
lbl_80666448:
	.4byte 0x80527E50
	.4byte 0x805734A0

.global lbl_80666450
lbl_80666450:
	.4byte 0x80527E68
	.4byte 0


.global lbl_80666458
lbl_80666458:
	# ROM: 0x572038
	.4byte 0xFFFFFFFF


.global lbl_8066645C
lbl_8066645C:
	# ROM: 0x57203C
	.4byte 0x01000000
	.4byte 0x80527E88
	.4byte 0x80573558
	.4byte 0x80527E9C
	.4byte 0x80573578
	.4byte 0x80527EB4
	.4byte 0
	.4byte 0x8066D9C0
	.4byte 0


.global lbl_80666480
lbl_80666480:
	# ROM: 0x572060
	.4byte 0x8066D9C8


.global lbl_80666484
lbl_80666484:
	# ROM: 0x572064
	.4byte 0x8066D9C8


.global lbl_80666488
lbl_80666488:
	# ROM: 0x572068
	.4byte 0x8066D9C8
	.4byte 0
	.4byte 0x80527ED0
	.4byte 0
	.4byte 0x80527EE8
	.4byte 0


.global lbl_806664A0
lbl_806664A0:
	# ROM: 0x572080
	.4byte 0x8066D9D0
	.4byte 0
	.4byte 0x80527EF8
	.4byte 0x805735C0
	.4byte 0x80527F10
	.4byte 0x805735E0
	.4byte 0x80527F20
	.4byte 0x80573600
	.4byte 0x80527F38
	.4byte 0x80573620
	.4byte 0x80527F48
	.4byte 0x80573640
	.4byte 0x80527F58
	.4byte 0x80573668
	.4byte 0x80527F6C
	.4byte 0
	.4byte 0x80527F78
	.4byte 0x80573690
	.4byte 0x80527F88
	.4byte 0x80573740
	.4byte 0x80527F98
	.4byte 0x80573760
	.4byte 0x80527FAC
	.4byte 0
	.4byte 0x80527FC8
	.4byte 0x80573784
	.4byte 0x80527FE0
	.4byte 0
	.4byte 0x80527FFC
	.4byte 0
	.4byte 0x80528008
	.4byte 0
	.4byte 0x80528028
	.4byte 0
	.4byte 0x80528038
	.4byte 0x805738F0
	.4byte 0x80528048
	.4byte 0x80573908
	.4byte 0x80528060
	.4byte 0
	.4byte 0x8052807C
	.4byte 0


.global lbl_80666548
lbl_80666548:
	# ROM: 0x572128
	.4byte 0x8066DAA0


.global lbl_8066654C
lbl_8066654C:
	# ROM: 0x57212C
	.4byte 0x8066DAA8
	.4byte 0x80528090
	.4byte 0


.global lbl_80666558
lbl_80666558:
	# ROM: 0x572138
	.4byte 0x72656600


.global lbl_8066655C
lbl_8066655C:
	# ROM: 0x57213C
	.4byte 0x72656600


.global lbl_80666560
lbl_80666560:
	# ROM: 0x572140
	.4byte 0x72656600


.global lbl_80666564
lbl_80666564:
	# ROM: 0x572144
	.4byte 0x72656600


.global lbl_80666568
lbl_80666568:
	# ROM: 0x572148
	.4byte 0x72656600


.global lbl_8066656C
lbl_8066656C:
	# ROM: 0x57214C
	.4byte 0x72656600


.global lbl_80666570
lbl_80666570:
	# ROM: 0x572150
	.4byte 0x8066DAB0


.global lbl_80666574
lbl_80666574:
	# ROM: 0x572154
	.4byte 0x805280A0
	.4byte 0x805280B8
	.4byte 0


.global lbl_80666580
lbl_80666580:
	# ROM: 0x572160
	.4byte 0x72656600


.global lbl_80666584
lbl_80666584:
	# ROM: 0x572164
	.4byte 0x72656600


.global lbl_80666588
lbl_80666588:
	# ROM: 0x572168
	.4byte 0x8066DAE8


.global lbl_8066658C
lbl_8066658C:
	# ROM: 0x57216C
	.4byte 0x8066DAF0
	.4byte 0x805280C8
	.4byte 0


.global lbl_80666598
lbl_80666598:
	# ROM: 0x572178
	.4byte 0x72656600


.global lbl_8066659C
lbl_8066659C:
	# ROM: 0x57217C
	.4byte 0x72656600


.global lbl_806665A0
lbl_806665A0:
	# ROM: 0x572180
	.4byte 0x8066DB00
	.4byte 0
	.4byte 0x805280F8
	.4byte 0


.global lbl_806665B0
lbl_806665B0:
	# ROM: 0x572190
	.4byte 0x72656600
	.4byte 0
	.4byte 0x80528108
	.4byte 0


.global lbl_806665C0
lbl_806665C0:
	# ROM: 0x5721A0
	.4byte 0x72656600


.global lbl_806665C4
lbl_806665C4:
	# ROM: 0x5721A4
	.4byte 0x72656600
	.4byte 0x80528128
	.4byte 0


.global lbl_806665D0
lbl_806665D0:
	# ROM: 0x5721B0
	.4byte 0x72656600


.global lbl_806665D4
lbl_806665D4:
	# ROM: 0x5721B4
	.4byte 0x72656600


.global lbl_806665D8
lbl_806665D8:
	# ROM: 0x5721B8
	.4byte 0x72656600


.global lbl_806665DC
lbl_806665DC:
	# ROM: 0x5721BC
	.4byte 0x72656600


.global lbl_806665E0
lbl_806665E0:
	# ROM: 0x5721C0
	.4byte 0x72656600
	.4byte 0


.global lbl_806665E8
lbl_806665E8:
	# ROM: 0x5721C8
	.4byte 0x8066DCD0


.global lbl_806665EC
lbl_806665EC:
	# ROM: 0x5721CC
	.4byte 0x80528190
	.4byte 0x8052819C
	.4byte 0x80573BB0
	.4byte 0x805281B8
	.4byte 0x80573C48