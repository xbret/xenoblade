.include "macros.inc"

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global lbl_80665E34
lbl_80665E34:
	# ROM: 0x571A14
	.4byte 0xFFFFFFFF


.global lbl_80665E38
lbl_80665E38:
	# ROM: 0x571A18
	.byte 0x01


.global lbl_80665E39
lbl_80665E39:
	.byte 0x01
	.byte 0x00
	.byte 0x00

.global arenaMemorySize
arenaMemorySize:
	# ROM: 0x571A1C
	.4byte 0x00600000


.global lbl_80665E40
lbl_80665E40:
	# ROM: 0x571A20
	.4byte lbl_80525D78


.global lbl_80665E44
lbl_80665E44:
	# ROM: 0x571A24
	.4byte 0xFFFFFFFF

.global CMsgParam_8_RTTI
CMsgParam_8_RTTI:
	.4byte CMsgParam_8_typestr
	.4byte 0

.global reslist_CWorkThread_RTTI
reslist_CWorkThread_RTTI:
	.4byte reslist_CWorkThread_typestr
	.4byte lbl_8056EA40

.global _reslist_base_CWorkThread_RTTI
_reslist_base_CWorkThread_RTTI:
	.4byte _reslist_base_CWorkThread_typestr
	.4byte 0

.global reslist_unsigned_long_RTTI
reslist_unsigned_long_RTTI:
	.4byte reslist_unsigned_long_typestr
	.4byte lbl_8056EB04

.global _reslist_base_unsigned_long_RTTI
_reslist_base_unsigned_long_RTTI:
	.4byte _reslist_base_unsigned_long_typestr
	.4byte 0

.global CProcRoot_RTTI
CProcRoot_RTTI:
	.4byte CProcRoot_typestr
	.4byte lbl_8056EBC0

.global CRsrcData_RTTI
CRsrcData_RTTI:
	.4byte CRsrcData_typestr
	.4byte lbl_8056EC78

.global CScriptCode_RTTI
CScriptCode_RTTI:
	.4byte CScriptCode_typestr
	.4byte lbl_8056ED30

.global CToken_RTTI
CToken_RTTI:
	.4byte CToken_typestr
	.4byte 0

.global _unnamed_CTaskManager_cpp_CRootProc_RTTI
_unnamed_CTaskManager_cpp_CRootProc_RTTI:
	.4byte _unnamed_CTaskManager_cpp_CRootProc_typestr
	.4byte lbl_8056EDD4

.global CTTask_unnamed_CTaskManager_cpp_CRootProc_RTTI
CTTask_unnamed_CTaskManager_cpp_CRootProc_RTTI:
	.4byte CTTask_unnamed_CTaskManager_cpp_CRootProc_typestr
	.4byte lbl_8056EE1C

.global CView_RTTI
CView_RTTI:
	.4byte CView_typestr
	.4byte lbl_8056EF28

.global CMsgParam_10_RTTI
CMsgParam_10_RTTI:
	.4byte CMsgParam_10_typestr
	.4byte 0

.global reslist_IWorkEvent_RTTI
reslist_IWorkEvent_RTTI:
	.4byte reslist_IWorkEvent_typestr
	.4byte lbl_8056EF5C

.global _reslist_base_IWorkEvent_RTTI
_reslist_base_IWorkEvent_RTTI:
	.4byte _reslist_base_IWorkEvent_typestr
	.4byte 0

.global CFontLayer_RTTI
CFontLayer_RTTI:
	.4byte CFontLayer_typestr
	.4byte 0

.global CViewFrame_RTTI
CViewFrame_RTTI:
	.4byte CViewFrame_typestr
	.4byte 0

.global CViewRoot_RTTI
CViewRoot_RTTI:
	.4byte CViewRoot_typestr
	.4byte lbl_8056F028

.global CWorkControl_RTTI
CWorkControl_RTTI:
	.4byte CWorkControl_typestr
	.4byte lbl_8056F0E0

.global CWorkFlowSetup_RTTI
CWorkFlowSetup_RTTI:
	.4byte CWorkFlowSetup_typestr
	.4byte lbl_8056F198

.global _unnamed_CWorkRoot_cpp_CWorkRootThread_RTTI
_unnamed_CWorkRoot_cpp_CWorkRootThread_RTTI:
	.4byte _unnamed_CWorkRoot_cpp_CWorkRootThread_typestr
	.4byte lbl_8056F250

.global CWorkSystem_RTTI
CWorkSystem_RTTI:
	.4byte CWorkSystem_typestr
	.4byte lbl_8056F308

.global CWorkSystemMem_RTTI
CWorkSystemMem_RTTI:
	.4byte CWorkSystemMem_typestr
	.4byte lbl_8056F3C0

.global TChildListHeader_CProcess_RTTI
TChildListHeader_CProcess_RTTI:
	.4byte TChildListHeader_CProcess_typestr
	.4byte 0

.global TChildListHeader_CChildListNode_RTTI
TChildListHeader_CChildListNode_RTTI:
	.4byte TChildListHeader_CChildListNode_typestr
	.4byte 0

.global CDeviceRemotePad_RTTI
CDeviceRemotePad_RTTI:
	.4byte CDeviceRemotePad_typestr
	.4byte lbl_8056F4D8

.global CDeviceBase_RTTI
CDeviceBase_RTTI:
	.4byte CDeviceBase_typestr
	.4byte lbl_8056F598

.global CDeviceSC_RTTI
CDeviceSC_RTTI:
	.4byte CDeviceSC_typestr
	.4byte lbl_8056F650

.global CDeviceVI_RTTI
CDeviceVI_RTTI:
	.4byte CDeviceVI_typestr
	.4byte lbl_8056F764

.global reslist_CDeviceVICb_RTTI
reslist_CDeviceVICb_RTTI:
	.4byte reslist_CDeviceVICb_typestr
	.4byte lbl_8056F78C

.global _reslist_base_CDeviceVICb_RTTI
_reslist_base_CDeviceVICb_RTTI:
	.4byte _reslist_base_CDeviceVICb_typestr
	.4byte 0

.global CDeviceVICb_RTTI
CDeviceVICb_RTTI:
	.4byte CDeviceVICb_typestr
	.4byte 0


.global lbl_80665F48
lbl_80665F48:
	# ROM: 0x571B28
	.4byte 0x00000001


.global lbl_80665F4C
lbl_80665F4C:
	# ROM: 0x571B2C
	.4byte 0x00FFFFFF


.global lbl_80665F50
lbl_80665F50:
	# ROM: 0x571B30
	.4byte 0x00000001


.global lbl_80665F54
lbl_80665F54:
	# ROM: 0x571B34
	.4byte 0x00000001


.global lbl_80665F58
lbl_80665F58:
	# ROM: 0x571B38
	.4byte 0x00000001


.global lbl_80665F5C
lbl_80665F5C:
	# ROM: 0x571B3C
	.4byte 0x00000001


.global lbl_80665F60
lbl_80665F60:
	# ROM: 0x571B40
	.4byte 0x00000001


.global lbl_80665F64
lbl_80665F64:
	# ROM: 0x571B44
	.4byte 0


.global lbl_80665F68
lbl_80665F68:
	# ROM: 0x571B48
	.4byte 0


.global lbl_80665F6C
lbl_80665F6C:
	# ROM: 0x571B4C
	.4byte 0


.global lbl_80665F70
lbl_80665F70:
	# ROM: 0x571B50
	.4byte 0x00000001


.global lbl_80665F74
lbl_80665F74:
	# ROM: 0x571B54
	.4byte 0x00000002


.global lbl_80665F78
lbl_80665F78:
	# ROM: 0x571B58
	.4byte 0x00000003
	.4byte 0

.global CGXCache_RTTI
CGXCache_RTTI:
	.4byte CGXCache_typestr
	.4byte lbl_8056F818

.global CMsgParam_32_RTTI
CMsgParam_32_RTTI:
	.4byte CMsgParam_32_typestr
	.4byte 0

.global IStateCache_RTTI
IStateCache_RTTI:
	.4byte IStateCache_typestr
	.4byte 0


.global lbl_80665F98
lbl_80665F98:
	# ROM: 0x571B78
	.4byte lbl_805263A0


.global lbl_80665F9C
lbl_80665F9C:
	# ROM: 0x571B7C
	.4byte lbl_805263B0


.global lbl_80665FA0
lbl_80665FA0:
	# ROM: 0x571B80
	.4byte 0xFFFFFFFF


.global lbl_80665FA4
lbl_80665FA4:
	# ROM: 0x571B84
	.4byte 0xFFFFFFFF

.global _unnamed_CDevice_cpp_CDeviceException_RTTI
_unnamed_CDevice_cpp_CDeviceException_RTTI:
	.4byte _unnamed_CDevice_cpp_CDeviceException_typestr
	.4byte lbl_8056F8E0

.global CDevice_RTTI
CDevice_RTTI:
	.4byte CDevice_typestr
	.4byte lbl_8056F998

.global CDeviceClock_RTTI
CDeviceClock_RTTI:
	.4byte CDeviceClock_typestr
	.4byte lbl_8056FA50

.global reslist_IDeviceClockFrame_RTTI
reslist_IDeviceClockFrame_RTTI:
	.4byte reslist_IDeviceClockFrame_typestr
	.4byte lbl_8056FA78

.global _reslist_base_IDeviceClockFrame_RTTI
_reslist_base_IDeviceClockFrame_RTTI:
	.4byte _reslist_base_IDeviceClockFrame_typestr
	.4byte 0


.global lbl_80665FD0
lbl_80665FD0:
	# ROM: 0x571BB0
	.4byte 0x01000000
	.4byte 0

.global CDeviceFile_RTTI
CDeviceFile_RTTI:
	.4byte CDeviceFile_typestr
	.4byte lbl_8056FB30

.global reslist_CFileHandle_RTTI
reslist_CFileHandle_RTTI:
	.4byte reslist_CFileHandle_typestr
	.4byte lbl_8056FB58

.global _reslist_base_CFileHandle_RTTI
_reslist_base_CFileHandle_RTTI:
	.4byte _reslist_base_CFileHandle_typestr
	.4byte 0


.global lbl_80665FF0
lbl_80665FF0:
	# ROM: 0x571BD0
	.4byte lbl_8066CBB0


.global lbl_80665FF4
lbl_80665FF4:
	# ROM: 0x571BD4
	.4byte lbl_8066CBB0


.global lbl_80665FF8
lbl_80665FF8:
	# ROM: 0x571BD8
	.4byte lbl_8066CBB0
	.4byte 0

.global CDeviceFileCri_RTTI
CDeviceFileCri_RTTI:
	.4byte CDeviceFileCri_typestr
	.4byte lbl_8056FC48

.global CDeviceFileDvd_RTTI
CDeviceFileDvd_RTTI:
	.4byte CDeviceFileDvd_typestr
	.4byte lbl_8056FD08

.global CDeviceFileJob_RTTI
CDeviceFileJob_RTTI:
	.4byte CDeviceFileJob_typestr
	.4byte lbl_8056FDCC

.global CDeviceFileJobReadDvd_RTTI
CDeviceFileJobReadDvd_RTTI:
	.4byte CDeviceFileJobReadDvd_typestr
	.4byte lbl_8056FE8C


.global lbl_80666020
lbl_80666020:
	# ROM: 0x571C00
	.4byte lbl_80526680


.global lbl_80666024
lbl_80666024:
	# ROM: 0x571C04
	.4byte lbl_80526694

.global CDeviceFont_RTTI
CDeviceFont_RTTI:
	.4byte CDeviceFont_typestr
	.4byte lbl_8056FF48

.global reslist_IDeviceFontInfo_RTTI
reslist_IDeviceFontInfo_RTTI:
	.4byte reslist_IDeviceFontInfo_typestr
	.4byte lbl_8056FF70

.global _reslist_base_IDeviceFontInfo_RTTI
_reslist_base_IDeviceFontInfo_RTTI:
	.4byte _reslist_base_IDeviceFontInfo_typestr
	.4byte 0

.global CDeviceFontInfoExt_RTTI
CDeviceFontInfoExt_RTTI:
	.4byte CDeviceFontInfoExt_typestr
	.4byte lbl_8056FFC4

.global lbl_80666048
lbl_80666048:
	.4byte IDeviceFontInfo_typestr
	.4byte 0

.global CDeviceFontInfoRom_RTTI
CDeviceFontInfoRom_RTTI:
	.4byte CDeviceFontInfoRom_typestr
	.4byte lbl_8057000C

.global CDeviceFontLayer_RTTI
CDeviceFontLayer_RTTI:
	.4byte CDeviceFontLayer_typestr
	.4byte lbl_805700B8

.global reslist_const_CDeviceFontLayer_LAYER_QUE_RTTI
reslist_const_CDeviceFontLayer_LAYER_QUE_RTTI:
	.4byte reslist_const_CDeviceFontLayer_LAYER_QUE_typestr
	.4byte lbl_805700D8

.global _reslist_base_const_CDeviceFontLayer_LAYER_QUE_RTTI
_reslist_base_const_CDeviceFontLayer_LAYER_QUE_RTTI:
	.4byte _reslist_base_const_CDeviceFontLayer_LAYER_QUE_typestr
	.4byte 0

.global CDeviceFontLoader_RTTI
CDeviceFontLoader_RTTI:
	.4byte CDeviceFontLoader_typestr
	.4byte lbl_80570190


.global lbl_80666078
lbl_80666078:
	# ROM: 0x571C58
	.4byte 0x00200000


.global lbl_8066607C
lbl_8066607C:
	# ROM: 0x571C5C
	.4byte lbl_8066CBE8

.global CDeviceGX_RTTI
CDeviceGX_RTTI:
	.4byte CDeviceGX_typestr
	.4byte lbl_80570268


.global lbl_80666088
lbl_80666088:
	# ROM: 0x571C68
	.4byte lbl_8066CC10
	.4byte 0

.global _unnamed_CDesktop_cpp_CDesktopException_RTTI
_unnamed_CDesktop_cpp_CDesktopException_RTTI:
	.4byte _unnamed_CDesktop_cpp_CDesktopException_typestr
	.4byte lbl_80570330

.global _unnamed_CDesktop_cpp_CDesktopBackGround_RTTI
_unnamed_CDesktop_cpp_CDesktopBackGround_RTTI:
	.4byte _unnamed_CDesktop_cpp_CDesktopBackGround_typestr
	.4byte lbl_805703F0

.global CDesktop_RTTI
CDesktop_RTTI:
	.4byte CDesktop_typestr
	.4byte lbl_805704B0

.global CException_RTTI
CException_RTTI:
	.4byte CException_typestr
	.4byte lbl_805705C8

.global CLib_RTTI
CLib_RTTI:
	.4byte CLib_typestr
	.4byte lbl_80570688

.global CLibCri_RTTI
CLibCri_RTTI:
	.4byte CLibCri_typestr
	.4byte lbl_80570770

.global CLibCriMoviePlay_RTTI
CLibCriMoviePlay_RTTI:
	.4byte CLibCriMoviePlay_typestr
	.4byte lbl_80570850


.global lbl_806660C8
lbl_806660C8:
	# ROM: 0x571CA8
	.4byte 0x0000BB80


.global lbl_806660CC
lbl_806660CC:
	# ROM: 0x571CAC
	.4byte lbl_8066CCC0

.global CLibCriStreamingPlay_RTTI
CLibCriStreamingPlay_RTTI:
	.4byte CLibCriStreamingPlay_typestr
	.4byte lbl_80570924

.global CLibG3d_RTTI
CLibG3d_RTTI:
	.4byte CLibG3d_typestr
	.4byte lbl_805709D8


.global lbl_806660E0
lbl_806660E0:
	# ROM: 0x571CC0
	.4byte 0xFFFFFFFF
	.4byte 0

.global CLibHbm_RTTI
CLibHbm_RTTI:
	.4byte CLibHbm_typestr
	.4byte lbl_80570A90

.global CLibHbmControl_RTTI
CLibHbmControl_RTTI:
	.4byte CLibHbmControl_typestr
	.4byte lbl_80570B78

.global CLibLayout_RTTI
CLibLayout_RTTI:
	.4byte CLibLayout_typestr
	.4byte lbl_80570C38

.global CLibStaticData_RTTI
CLibStaticData_RTTI:
	.4byte CLibStaticData_typestr
	.4byte lbl_80570CF0

.global CLibStaticData_CItem_RTTI
CLibStaticData_CItem_RTTI:
	.4byte CLibStaticData_CItem_typestr
	.4byte 0

.global CLibVM_RTTI
CLibVM_RTTI:
	.4byte CLibVM_typestr
	.4byte lbl_80570E30

.global CTaskLOD_RTTI
CTaskLOD_RTTI:
	.4byte CTaskLOD_typestr
	.4byte lbl_80570EE4

.global CTTask_CTaskLOD_RTTI
CTTask_CTaskLOD_RTTI:
	.4byte CTTask_CTaskLOD_typestr
	.4byte lbl_80570F2C


.global lbl_80666128
lbl_80666128:
	# ROM: 0x571D08
	.4byte 0x72656600


.global lbl_8066612C
lbl_8066612C:
	# ROM: 0x571D0C
	.4byte 0x72656600


.global lbl_80666130
lbl_80666130:
	# ROM: 0x571D10
	.4byte 0x72656600
	.4byte 0


.global lbl_80666138
lbl_80666138:
	# ROM: 0x571D18
	.4byte 0x3BA3D70A


.global lbl_8066613C
lbl_8066613C:
	# ROM: 0x571D1C
	.4byte 0x3BA3D70A


.global lbl_80666140
lbl_80666140:
	# ROM: 0x571D20
	.4byte 0x3BA3D70A
	.4byte 0


.global lbl_80666148
lbl_80666148:
	# ROM: 0x571D28
	.4byte 0x0000FFFF
	.4byte 0


.global lbl_80666150
lbl_80666150:
	# ROM: 0x571D30
	.4byte 0x42B40000


.global lbl_80666154
lbl_80666154:
	# ROM: 0x571D34
	.4byte 0


.global lbl_80666158
lbl_80666158:
	# ROM: 0x571D38
	.4byte 0x72656600


.global lbl_8066615C
lbl_8066615C:
	# ROM: 0x571D3C
	.4byte 0x72656600


.global lbl_80666160
lbl_80666160:
	# ROM: 0x571D40
	.4byte 0x72656600
	.4byte 0

.global LOD_LODMemMan_RTTI
LOD_LODMemMan_RTTI:
	.4byte LOD_LODMemMan_typestr
	.4byte lbl_805713D8


.global lbl_80666170
lbl_80666170:
	# ROM: 0x571D50
	.4byte 0x3B03126F


.global lbl_80666174
lbl_80666174:
	# ROM: 0x571D54
	.4byte 0x3BA3D70A


.global lbl_80666178
lbl_80666178:
	# ROM: 0x571D58
	.4byte 0xFFFFFFFF


.global lbl_8066617C
lbl_8066617C:
	# ROM: 0x571D5C
	.4byte 0x72656600


.global lbl_80666180
lbl_80666180:
	# ROM: 0x571D60
	.4byte 0x72656600


.global lbl_80666184
lbl_80666184:
	# ROM: 0x571D64
	.4byte 0x72656600

.global mpfsys_MPFDrawDisplayList_RTTI
mpfsys_MPFDrawDisplayList_RTTI:
	.4byte mpfsys_MPFDrawDisplayList_typestr
	.4byte lbl_805713F8

.global lbl_80666190
lbl_80666190:
	.4byte mpfsys_MPFDraw_typestr
	.4byte 0

.global mpfsys_MPFDrawMdlColor_RTTI
mpfsys_MPFDrawMdlColor_RTTI:
	.4byte mpfsys_MPFDrawMdlColor_typestr
	.4byte lbl_80571418

.global mpfsys_MPFDrawMdlNoColor_RTTI
mpfsys_MPFDrawMdlNoColor_RTTI:
	.4byte mpfsys_MPFDrawMdlNoColor_typestr
	.4byte lbl_80571438

.global mpfsys_MPFDrawBillLayTex_RTTI
mpfsys_MPFDrawBillLayTex_RTTI:
	.4byte mpfsys_MPFDrawBillLayTex_typestr
	.4byte lbl_80571458

.global mpfsys_MPFDrawCross_RTTI
mpfsys_MPFDrawCross_RTTI:
	.4byte mpfsys_MPFDrawCross_typestr
	.4byte lbl_80571480

.global mpfsys_MPFDrawBillboard_RTTI
mpfsys_MPFDrawBillboard_RTTI:
	.4byte mpfsys_MPFDrawBillboard_typestr
	.4byte lbl_805714A0


.global lbl_806661C0
lbl_806661C0:
	# ROM: 0x571DA0
	.4byte 0x3EAAAAAB
	.4byte 0

.global CScnItemCameraNw4r_RTTI
CScnItemCameraNw4r_RTTI:
	.4byte CScnItemCameraNw4r_typestr
	.4byte lbl_80571500

.global CScnItemCamera_RTTI
CScnItemCamera_RTTI:
	.4byte CScnItemCamera_typestr
	.4byte lbl_80571514

.global CScnItemId_RTTI
CScnItemId_RTTI:
	.4byte CScnItemId_typestr
	.4byte lbl_80571540

.global CScnItemLight_RTTI
CScnItemLight_RTTI:
	.4byte CScnItemLight_typestr
	.4byte lbl_80571570

.global CScnItemLightNw4r_RTTI
CScnItemLightNw4r_RTTI:
	.4byte CScnItemLightNw4r_typestr
	.4byte lbl_805715A0


.global lbl_806661F0
lbl_806661F0:
	# ROM: 0x571DD0
	.4byte lbl_8066D090


.global lbl_806661F4
lbl_806661F4:
	# ROM: 0x571DD4
	.4byte lbl_8066D098

.global lbl_806661F8
lbl_806661F8:
	.4byte nw4r_g3d_IScnObjCallback_typestr
	.4byte 0

.global lbl_80666200
lbl_80666200:
	.4byte nw4r_g3d_ICalcWorldCallback_typestr
	.4byte 0


.global lbl_80666208
lbl_80666208:
	.asciz "ResMat"
	.balign 4


.global lbl_80666210
lbl_80666210:
	# ROM: 0x571DF0
	.4byte 0x72656600


.global lbl_80666214
lbl_80666214:
	.asciz "ResTev"
	.balign 4


.global lbl_8066621C
lbl_8066621C:
	# ROM: 0x571DFC
	.4byte 0x72656600


.global lbl_80666220
lbl_80666220:
	.asciz "ResMdl"
	.balign 4


.global lbl_80666228
lbl_80666228:
	# ROM: 0x571E08
	.4byte 0x72656600


.global lbl_8066622C
lbl_8066622C:
	# ROM: 0x571E0C
	.4byte 0x72656600


.global lbl_80666230
lbl_80666230:
	.asciz "ResNode"


.global lbl_80666238
lbl_80666238:
	# ROM: 0x571E18
	.4byte 0x72656600


.global lbl_8066623C
lbl_8066623C:
	# ROM: 0x571E1C
	.4byte 0x72656600


.global lbl_80666240
lbl_80666240:
	# ROM: 0x571E20
	.4byte 0x72656600


.global lbl_80666244
lbl_80666244:
	# ROM: 0x571E24
	.4byte 0x72656600


.global lbl_80666248
lbl_80666248:
	.asciz "ResDic"
	.balign 4


.global lbl_80666250
lbl_80666250:
	# ROM: 0x571E30
	.4byte 0x72656600
	.4byte 0

.global CScnItemPool_RTTI
CScnItemPool_RTTI:
	.4byte CScnItemPool_typestr
	.4byte lbl_80571D74

.global reslist_CScnItem_RTTI
reslist_CScnItem_RTTI:
	.4byte reslist_CScnItem_typestr
	.4byte lbl_80571D94

.global _reslist_base_CScnItem_RTTI
_reslist_base_CScnItem_RTTI:
	.4byte _reslist_base_CScnItem_typestr
	.4byte 0

.global CScnLightMan_RTTI
CScnLightMan_RTTI:
	.4byte CScnLightMan_typestr
	.4byte 0


.global lbl_80666278
lbl_80666278:
	# ROM: 0x571E58
	.4byte lbl_80527890


.global lbl_8066627C
lbl_8066627C:
	# ROM: 0x571E5C
	.4byte lbl_8066D0F0


.global lbl_80666280
lbl_80666280:
	# ROM: 0x571E60
	.4byte lbl_8066D0F8


.global lbl_80666284
lbl_80666284:
	# ROM: 0x571E64
	.4byte 0x3D03126F


.global lbl_80666288
lbl_80666288:
	# ROM: 0x571E68
	.4byte 0x72656600


.global lbl_8066628C
lbl_8066628C:
	# ROM: 0x571E6C
	.4byte 0x72656600


.global lbl_80666290
lbl_80666290:
	# ROM: 0x571E70
	.4byte 0x72656600
	.4byte 0

.global CScnMem_RTTI
CScnMem_RTTI:
	.4byte CScnMem_typestr
	.4byte 0

.global CScnNw4r_RTTI
CScnNw4r_RTTI:
	.4byte CScnNw4r_typestr
	.4byte lbl_80571EC4

.global CScn_RTTI
CScn_RTTI:
	.4byte CScn_typestr
	.4byte lbl_80571EF8

.global CTTask_CScn_RTTI
CTTask_CScn_RTTI:
	.4byte CTTask_CScn_typestr
	.4byte lbl_80571F24

.global CScnRoot_RTTI
CScnRoot_RTTI:
	.4byte CScnRoot_typestr
	.4byte 0

.global CScnRootNw4r_RTTI
CScnRootNw4r_RTTI:
	.4byte CScnRootNw4r_typestr
	.4byte lbl_8057200C


.global lbl_806662C8
lbl_806662C8:
	# ROM: 0x571EA8
	.4byte 0xFFFFFFFF


.global lbl_806662CC
lbl_806662CC:
	# ROM: 0x571EAC
	.4byte 0xFFFFFFFF

.global CScnTexWorkMan_RTTI
CScnTexWorkMan_RTTI:
	.4byte CScnTexWorkMan_typestr
	.4byte lbl_80572030


.global lbl_806662D8
lbl_806662D8:
	# ROM: 0x571EB8
	.4byte 0x72656600


.global lbl_806662DC
lbl_806662DC:
	# ROM: 0x571EBC
	.4byte 0x72656600

.global CScnVirtualLight_RTTI
CScnVirtualLight_RTTI:
	.4byte CScnVirtualLight_typestr
	.4byte 0

.global CVirtualLightAmb_RTTI
CVirtualLightAmb_RTTI:
	.4byte CVirtualLightAmb_typestr
	.4byte lbl_805720D4

.global CVirtualLightObj_RTTI
CVirtualLightObj_RTTI:
	.4byte CVirtualLightObj_typestr
	.4byte 0

.global CVirtualLightDir_RTTI
CVirtualLightDir_RTTI:
	.4byte CVirtualLightDir_typestr
	.4byte lbl_805720F4


.global lbl_80666300
lbl_80666300:
	# ROM: 0x571EE0
	.4byte 0x72656600


.global lbl_80666304
lbl_80666304:
	# ROM: 0x571EE4
	.4byte 0x72656600

.global CScnBlend_RTTI
CScnBlend_RTTI:
	.4byte CScnBlend_typestr
	.4byte lbl_80572244

.global CScnFilter_RTTI
CScnFilter_RTTI:
	.4byte CScnFilter_typestr
	.4byte 0

.global lbl_80666318
lbl_80666318:
	.4byte CScnBloom_typestr
	.4byte lbl_80572274

.global lbl_80666320
lbl_80666320:
	.4byte CScnBloomBase_typestr
	.4byte 0


.global lbl_80666328
lbl_80666328:
	# ROM: 0x571F08
	.4byte lbl_80527A00


.global lbl_8066632C
lbl_8066632C:
	# ROM: 0x571F0C
	.4byte 0xFFFFFFFF

.global CScnCameraMan_RTTI
CScnCameraMan_RTTI:
	.4byte CScnCameraMan_typestr
	.4byte lbl_80572310


.global lbl_80666338
lbl_80666338:
	# ROM: 0x571F18
	.4byte lbl_8066D330
	.4byte 0

.global CScnEffectActNw4r_RTTI
CScnEffectActNw4r_RTTI:
	.4byte CScnEffectActNw4r_typestr
	.4byte lbl_80572388

.global lbl_80666348
lbl_80666348:
	.4byte IEffectAct_typestr
	.4byte 0


.global lbl_80666350
lbl_80666350:
	# ROM: 0x571F30
	.4byte 0x72656600


.global lbl_80666354
lbl_80666354:
	# ROM: 0x571F34
	.4byte 0x72656600

.global CScnFadeMan_RTTI
CScnFadeMan_RTTI:
	.4byte CScnFadeMan_typestr
	.4byte 0

.global CScnFilterMan_RTTI
CScnFilterMan_RTTI:
	.4byte CScnFilterMan_typestr
	.4byte 0

.global reslist__reslist_iterator_CScnFilter_CScnFilter_CScnFilter_RTTI
reslist__reslist_iterator_CScnFilter_CScnFilter_CScnFilter_RTTI:
	.4byte reslist__reslist_iterator_CScnFilter_CScnFilter_CScnFilter_typestr
	.4byte lbl_805723DC

.global _reslist_base__reslist_iterator_CScnFilter_CScnFilter_CScnFilter_RTTI
_reslist_base__reslist_iterator_CScnFilter_CScnFilter_CScnFilter_RTTI:
	.4byte _reslist_base__reslist_iterator_CScnFilter_CScnFilter_CScnFilter_typestr
	.4byte 0

.global reslist_CScnFilter_RTTI
reslist_CScnFilter_RTTI:
	.4byte reslist_CScnFilter_typestr
	.4byte lbl_80572400

.global _reslist_base_CScnFilter_RTTI
_reslist_base_CScnFilter_RTTI:
	.4byte _reslist_base_CScnFilter_typestr
	.4byte 0

.global CScnFogMan_RTTI
CScnFogMan_RTTI:
	.4byte CScnFogMan_typestr
	.4byte 0

.global CScnFrame_RTTI
CScnFrame_RTTI:
	.4byte CScnFrame_typestr
	.4byte 0

.global CScnIdMan_RTTI
CScnIdMan_RTTI:
	.4byte CScnIdMan_typestr
	.4byte 0

.global CScnItemAnim_RTTI
CScnItemAnim_RTTI:
	.4byte CScnItemAnim_typestr
	.4byte lbl_805724F8


.global lbl_806663A8
lbl_806663A8:
	# ROM: 0x571F88
	.4byte 0x72656600
	.4byte 0


.global lbl_806663B0
lbl_806663B0:
	# ROM: 0x571F90
	.4byte lbl_8066D5E0
	.4byte 0

.global CColiObjCall_RTTI
CColiObjCall_RTTI:
	.4byte CColiObjCall_typestr
	.4byte lbl_80572BD4

.global CColiResCall_RTTI
CColiResCall_RTTI:
	.4byte CColiResCall_typestr
	.4byte lbl_80572BFC


.global lbl_806663C8
lbl_806663C8:
	# ROM: 0x571FA8
	.4byte 0x72656600
	.4byte 0

.global CTaskColiManager_RTTI
CTaskColiManager_RTTI:
	.4byte CTaskColiManager_typestr
	.4byte lbl_80572CD4

.global CTTask_CTaskColiManager_RTTI
CTTask_CTaskColiManager_RTTI:
	.4byte CTTask_CTaskColiManager_typestr
	.4byte lbl_80572D1C

.global CColiManCall_RTTI
CColiManCall_RTTI:
	.4byte CColiManCall_typestr
	.4byte lbl_80572D44


.global lbl_806663E8
lbl_806663E8:
	# ROM: 0x571FC8
	.4byte lbl_8065FA60


.global lbl_806663EC
lbl_806663EC:
	# ROM: 0x571FCC
	.4byte lbl_8065FA60


.global lbl_806663F0
lbl_806663F0:
	# ROM: 0x571FD0
	.4byte 0x42480000


.global lbl_806663F4
lbl_806663F4:
	# ROM: 0x571FD4
	.4byte 0x41A00000


.global lbl_806663F8
lbl_806663F8:
	# ROM: 0x571FD8
	.4byte func_804BF274
	.4byte 0

.global CLight_RTTI
CLight_RTTI:
	.4byte CLight_typestr
	.4byte 0


.global lbl_80666408
lbl_80666408:
	# ROM: 0x571FE8
	.4byte 0x00004650


.global lbl_8066640C
lbl_8066640C:
	# ROM: 0x571FEC
	.4byte 0x00005460


.global lbl_80666410
lbl_80666410:
	# ROM: 0x571FF0
	.4byte 0x00010428


.global lbl_80666414
lbl_80666414:
	# ROM: 0x571FF4
	.4byte 0x00010B30

.global reslist_IScnEnvCtl_RTTI
reslist_IScnEnvCtl_RTTI:
	.4byte reslist_IScnEnvCtl_typestr
	.4byte lbl_805731B4

.global _reslist_base_IScnEnvCtl_RTTI
_reslist_base_IScnEnvCtl_RTTI:
	.4byte _reslist_base_IScnEnvCtl_typestr
	.4byte 0

.global CScnEnvLgtCtrl_RTTI
CScnEnvLgtCtrl_RTTI:
	.4byte CScnEnvLgtCtrl_typestr
	.4byte lbl_805732A0

.global lbl_80666430
lbl_80666430:
	.4byte IScnEnvCtl_typestr
	.4byte 0