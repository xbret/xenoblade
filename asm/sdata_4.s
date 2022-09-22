.include "macros.inc"

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8
.global CETrail_RTTI
CETrail_RTTI:
	.4byte CETrail_typestr
	.4byte 0

.global reslist_CETrail_POINT_RTTI
reslist_CETrail_POINT_RTTI:
	.4byte reslist_CETrail_POINT_typestr
	.4byte lbl_805734A0

.global _reslist_base_CETrail_POINT_RTTI
_reslist_base_CETrail_POINT_RTTI:
	.4byte _reslist_base_CETrail_POINT_typestr
	.4byte 0


.global lbl_80666458
lbl_80666458:
	# ROM: 0x572038
	.4byte 0xFFFFFFFF


.global lbl_8066645C
lbl_8066645C:
	# ROM: 0x57203C
	.4byte 0x01000000

.global CWorkSystemCache_RTTI
CWorkSystemCache_RTTI:
	.4byte CWorkSystemCache_typestr
	.4byte lbl_80573558

.global reslist_CCacheItem_RTTI
reslist_CCacheItem_RTTI:
	.4byte reslist_CCacheItem_typestr
	.4byte lbl_80573578

.global _reslist_base_CCacheItem_RTTI
_reslist_base_CCacheItem_RTTI:
	.4byte _reslist_base_CCacheItem_typestr
	.4byte 0

.global CNand_RTTI
CNand_RTTI:
	.4byte CNand_typestr
	.4byte 0


.global lbl_80666480
lbl_80666480:
	# ROM: 0x572060
	.4byte lbl_8066D9C8


.global lbl_80666484
lbl_80666484:
	# ROM: 0x572064
	.4byte lbl_8066D9C8


.global lbl_80666488
lbl_80666488:
	# ROM: 0x572068
	.4byte lbl_8066D9C8
	.4byte 0

.global lbl_80666490
lbl_80666490:
	.4byte CNReqtask_typestr
	.4byte 0

.global CNRequest_RTTI
CNRequest_RTTI:
	.4byte CNRequest_typestr
	.4byte 0


.global lbl_806664A0
lbl_806664A0:
	# ROM: 0x572080
	.4byte lbl_8066D9D0
	.4byte 0

.global CNReqtaskSave_RTTI
CNReqtaskSave_RTTI:
	.4byte CNReqtaskSave_typestr
	.4byte lbl_805735C0

.global CNReqtaskLoad_RTTI
CNReqtaskLoad_RTTI:
	.4byte CNReqtaskLoad_typestr
	.4byte lbl_805735E0

.global CNReqtaskReaddir_RTTI
CNReqtaskReaddir_RTTI:
	.4byte CNReqtaskReaddir_typestr
	.4byte lbl_80573600

.global CNReqtaskRemove_RTTI
CNReqtaskRemove_RTTI:
	.4byte CNReqtaskRemove_typestr
	.4byte lbl_80573620

.global CNReqtaskCheck_RTTI
CNReqtaskCheck_RTTI:
	.4byte CNReqtaskCheck_typestr
	.4byte lbl_80573640

.global CERandomizerSimple_RTTI
CERandomizerSimple_RTTI:
	.4byte CERandomizerSimple_typestr
	.4byte lbl_80573668

.global lbl_806664D8
lbl_806664D8:
	.4byte IRandomizer_typestr
	.4byte 0

.global CERandomizer_RTTI
CERandomizer_RTTI:
	.4byte CERandomizer_typestr
	.4byte lbl_80573690

.global CWorkSystemPack_RTTI
CWorkSystemPack_RTTI:
	.4byte CWorkSystemPack_typestr
	.4byte lbl_80573740

.global reslist_CArcItem_RTTI
reslist_CArcItem_RTTI:
	.4byte reslist_CArcItem_typestr
	.4byte lbl_80573760

.global _reslist_base_CArcItem_RTTI
_reslist_base_CArcItem_RTTI:
	.4byte _reslist_base_CArcItem_typestr
	.4byte 0

.global reslist_CPackItem_RTTI
reslist_CPackItem_RTTI:
	.4byte reslist_CPackItem_typestr
	.4byte lbl_80573784

.global _reslist_base_CPackItem_RTTI
_reslist_base_CPackItem_RTTI:
	.4byte _reslist_base_CPackItem_typestr
	.4byte 0

.global CPackItem_RTTI
CPackItem_RTTI:
	.4byte CPackItem_typestr
	.4byte 0

.global CArcItem_RTTI
CArcItem_RTTI:
	.4byte CArcItem_typestr
	.4byte 0

.global CSchedule_RTTI
CSchedule_RTTI:
	.4byte CSchedule_typestr
	.4byte 0

.global ScheduleList_RTTI
ScheduleList_RTTI:
	.4byte ScheduleList_typestr
	.4byte lbl_805738F0

.global reslist_CSchedule_RTTI
reslist_CSchedule_RTTI:
	.4byte reslist_CSchedule_typestr
	.4byte lbl_80573908

.global _reslist_base_CSchedule_RTTI
_reslist_base_CSchedule_RTTI:
	.4byte _reslist_base_CSchedule_typestr
	.4byte 0

.global lbl_80666540
lbl_80666540:
	.4byte IScheduleContainer_typestr
	.4byte 0


.global lbl_80666548
lbl_80666548:
	# ROM: 0x572128
	.4byte lbl_8066DAA0


.global lbl_8066654C
lbl_8066654C:
	# ROM: 0x57212C
	.4byte lbl_8066DAA8

.global CMdlMaterial_RTTI
CMdlMaterial_RTTI:
	.4byte CMdlMaterial_typestr
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
	.4byte lbl_8066DAB0


.global lbl_80666574
lbl_80666574:
	# ROM: 0x572154
	.4byte lbl_805280A0

.global CMdlMouth_RTTI
CMdlMouth_RTTI:
	.4byte CMdlMouth_typestr
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
	.4byte lbl_8066DAE8


.global lbl_8066658C
lbl_8066658C:
	# ROM: 0x57216C
	.4byte lbl_8066DAF0

.global CMdlAnmUV_RTTI
CMdlAnmUV_RTTI:
	.4byte CMdlAnmUV_typestr
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
	.4byte lbl_8066DB00
	.4byte 0

.global CMdlAnmEye_RTTI
CMdlAnmEye_RTTI:
	.4byte CMdlAnmEye_typestr
	.4byte 0


.global lbl_806665B0
lbl_806665B0:
	# ROM: 0x572190
	.4byte 0x72656600
	.4byte 0

.global CMdlLook_RTTI
CMdlLook_RTTI:
	.4byte CMdlLook_typestr
	.4byte 0


.global lbl_806665C0
lbl_806665C0:
	# ROM: 0x5721A0
	.4byte 0x72656600


.global lbl_806665C4
lbl_806665C4:
	# ROM: 0x5721A4
	.4byte 0x72656600

.global CMdlDynamics_RTTI
CMdlDynamics_RTTI:
	.4byte CMdlDynamics_typestr
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
	.4byte lbl_8066DCD0


.global lbl_806665EC
lbl_806665EC:
	# ROM: 0x5721CC
	.4byte lbl_80528190

.global CNReqtaskSaveBanner_RTTI
CNReqtaskSaveBanner_RTTI:
	.4byte CNReqtaskSaveBanner_typestr
	.4byte lbl_80573BB0

.global CNBanner_RTTI
CNBanner_RTTI:
	.4byte CNBanner_typestr
	.4byte lbl_80573C48
