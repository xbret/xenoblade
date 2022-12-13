.include "macros.inc"

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8
.global __RTTI__CETrail
__RTTI__CETrail:
	.4byte CETrail_typestr
	.4byte 0

.global __RTTI__reslist_CETrail_POINT
__RTTI__reslist_CETrail_POINT:
	.4byte reslist_CETrail_POINT_typestr
	.4byte reslist_CETrail_POINT_hierarchy

.global __RTTI___reslist_base_CETrail_POINT
__RTTI___reslist_base_CETrail_POINT:
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

.global __RTTI__CWorkSystemCache
__RTTI__CWorkSystemCache:
	.4byte CWorkSystemCache_typestr
	.4byte CWorkSystemCache_hierarchy

.global __RTTI__reslist_CCacheItem
__RTTI__reslist_CCacheItem:
	.4byte reslist_CCacheItem_typestr
	.4byte reslist_CCacheItem_hierarchy

.global __RTTI___reslist_base_CCacheItem
__RTTI___reslist_base_CCacheItem:
	.4byte _reslist_base_CCacheItem_typestr
	.4byte 0

.global __RTTI__CNand
__RTTI__CNand:
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

.global __RTTI__CNReqtask
__RTTI__CNReqtask:
	.4byte CNReqtask_typestr
	.4byte 0

.global __RTTI__CNRequest
__RTTI__CNRequest:
	.4byte CNRequest_typestr
	.4byte 0


.global lbl_806664A0
lbl_806664A0:
	# ROM: 0x572080
	.4byte lbl_8066D9D0
	.4byte 0

.global __RTTI__CNReqtaskSave
__RTTI__CNReqtaskSave:
	.4byte CNReqtaskSave_typestr
	.4byte CNReqtaskSave_hierarchy

.global __RTTI__CNReqtaskLoad
__RTTI__CNReqtaskLoad:
	.4byte CNReqtaskLoad_typestr
	.4byte CNReqtaskLoad_hierarchy

.global __RTTI__CNReqtaskReaddir
__RTTI__CNReqtaskReaddir:
	.4byte CNReqtaskReaddir_typestr
	.4byte CNReqtaskReaddir_hierarchy

.global __RTTI__CNReqtaskRemove
__RTTI__CNReqtaskRemove:
	.4byte CNReqtaskRemove_typestr
	.4byte CNReqtaskRemove_hierarchy

.global __RTTI__CNReqtaskCheck
__RTTI__CNReqtaskCheck:
	.4byte CNReqtaskCheck_typestr
	.4byte CNReqtaskCheck_hierarchy

.global __RTTI__CERandomizerSimple
__RTTI__CERandomizerSimple:
	.4byte CERandomizerSimple_typestr
	.4byte CERandomizerSimple_hierarchy

.global __RTTI__IRandomizer
__RTTI__IRandomizer:
	.4byte IRandomizer_typestr
	.4byte 0

.global __RTTI__CERandomizer
__RTTI__CERandomizer:
	.4byte CERandomizer_typestr
	.4byte CERandomizer_hierarchy

.global __RTTI__CWorkSystemPack
__RTTI__CWorkSystemPack:
	.4byte CWorkSystemPack_typestr
	.4byte CWorkSystemPack_hierarchy

.global __RTTI__reslist_CArcItem
__RTTI__reslist_CArcItem:
	.4byte reslist_CArcItem_typestr
	.4byte reslist_CArcItem_hierarchy

.global __RTTI___reslist_base_CArcItem
__RTTI___reslist_base_CArcItem:
	.4byte _reslist_base_CArcItem_typestr
	.4byte 0

.global __RTTI__reslist_CPackItem
__RTTI__reslist_CPackItem:
	.4byte reslist_CPackItem_typestr
	.4byte reslist_CPackItem_hierarchy

.global __RTTI___reslist_base_CPackItem
__RTTI___reslist_base_CPackItem:
	.4byte _reslist_base_CPackItem_typestr
	.4byte 0

.global __RTTI__CPackItem
__RTTI__CPackItem:
	.4byte CPackItem_typestr
	.4byte 0

.global __RTTI__CArcItem
__RTTI__CArcItem:
	.4byte CArcItem_typestr
	.4byte 0

.global __RTTI__CSchedule
__RTTI__CSchedule:
	.4byte CSchedule_typestr
	.4byte 0

.global __RTTI__ScheduleList
__RTTI__ScheduleList:
	.4byte ScheduleList_typestr
	.4byte ScheduleList_hierarchy

.global __RTTI__reslist_CSchedule
__RTTI__reslist_CSchedule:
	.4byte reslist_CSchedule_typestr
	.4byte reslist_CSchedule_hierarchy

.global __RTTI___reslist_base_CSchedule
__RTTI___reslist_base_CSchedule:
	.4byte _reslist_base_CSchedule_typestr
	.4byte 0

.global __RTTI__IScheduleContainer
__RTTI__IScheduleContainer:
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

.global __RTTI__CMdlMaterial
__RTTI__CMdlMaterial:
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

.global __RTTI__CMdlMouth
__RTTI__CMdlMouth:
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

.global __RTTI__CMdlAnmUV
__RTTI__CMdlAnmUV:
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

.global __RTTI__CMdlAnmEye
__RTTI__CMdlAnmEye:
	.4byte CMdlAnmEye_typestr
	.4byte 0


.global lbl_806665B0
lbl_806665B0:
	# ROM: 0x572190
	.4byte 0x72656600
	.4byte 0

.global __RTTI__CMdlLook
__RTTI__CMdlLook:
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

.global __RTTI__CMdlDynamics
__RTTI__CMdlDynamics:
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

.global __RTTI__CNReqtaskSaveBanner
__RTTI__CNReqtaskSaveBanner:
	.4byte CNReqtaskSaveBanner_typestr
	.4byte CNReqtaskSaveBanner_hierarchy

.global __RTTI__CNBanner
__RTTI__CNBanner:
	.4byte CNBanner_typestr
	.4byte CNBanner_hierarchy
