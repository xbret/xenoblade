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

.global __RTTI__CMsgParam_8
__RTTI__CMsgParam_8:
	.4byte CMsgParam_8_typestr
	.4byte 0

.global __RTTI__reslist_CWorkThread
__RTTI__reslist_CWorkThread:
	.4byte reslist_CWorkThread_typestr
	.4byte reslist_CWorkThread_hierarchy

.global __RTTI___reslist_base_CWorkThread
__RTTI___reslist_base_CWorkThread:
	.4byte _reslist_base_CWorkThread_typestr
	.4byte 0

.global __RTTI__reslist_unsigned_long
__RTTI__reslist_unsigned_long:
	.4byte reslist_unsigned_long_typestr
	.4byte reslist_unsigned_long_hierarchy

.global __RTTI___reslist_base_unsigned_long
__RTTI___reslist_base_unsigned_long:
	.4byte _reslist_base_unsigned_long_typestr
	.4byte 0

.global __RTTI__CProcRoot
__RTTI__CProcRoot:
	.4byte CProcRoot_typestr
	.4byte CProcRoot_hierarchy

.global __RTTI__CRsrcData
__RTTI__CRsrcData:
	.4byte CRsrcData_typestr
	.4byte CRsrcData_hierarchy

.global __RTTI__CScriptCode
__RTTI__CScriptCode:
	.4byte CScriptCode_typestr
	.4byte CScriptCode_hierarchy

.global __RTTI__CToken
__RTTI__CToken:
	.4byte CToken_typestr
	.4byte 0

.global __RTTI___unnamed_CTaskManager_cpp_CRootProc
__RTTI___unnamed_CTaskManager_cpp_CRootProc:
	.4byte _unnamed_CTaskManager_cpp_CRootProc_typestr
	.4byte _unnamed_CTaskManager_cpp_CRootProc_hierarchy

.global __RTTI__CTTask_unnamed_CTaskManager_cpp_CRootProc
__RTTI__CTTask_unnamed_CTaskManager_cpp_CRootProc:
	.4byte CTTask_unnamed_CTaskManager_cpp_CRootProc_typestr
	.4byte CTTask_unnamed_CTaskManager_cpp_CRootProc_hierarchy

.global __RTTI__CView
__RTTI__CView:
	.4byte CView_typestr
	.4byte CView_hierarchy

.global __RTTI__CMsgParam_10
__RTTI__CMsgParam_10:
	.4byte CMsgParam_10_typestr
	.4byte 0

.global __RTTI__reslist_IWorkEvent
__RTTI__reslist_IWorkEvent:
	.4byte reslist_IWorkEvent_typestr
	.4byte reslist_IWorkEvent_hierarchy

.global __RTTI___reslist_base_IWorkEvent
__RTTI___reslist_base_IWorkEvent:
	.4byte _reslist_base_IWorkEvent_typestr
	.4byte 0

.global __RTTI__CFontLayer
__RTTI__CFontLayer:
	.4byte CFontLayer_typestr
	.4byte 0

.global __RTTI__CViewFrame
__RTTI__CViewFrame:
	.4byte CViewFrame_typestr
	.4byte 0

.global __RTTI__CViewRoot
__RTTI__CViewRoot:
	.4byte CViewRoot_typestr
	.4byte CViewRoot_hierarchy

.global __RTTI__CWorkControl
__RTTI__CWorkControl:
	.4byte CWorkControl_typestr
	.4byte CWorkControl_hierarchy

.global __RTTI__CWorkFlowSetup
__RTTI__CWorkFlowSetup:
	.4byte CWorkFlowSetup_typestr
	.4byte CWorkFlowSetup_hierarchy

.global __RTTI___unnamed_CWorkRoot_cpp_CWorkRootThread
__RTTI___unnamed_CWorkRoot_cpp_CWorkRootThread:
	.4byte _unnamed_CWorkRoot_cpp_CWorkRootThread_typestr
	.4byte _unnamed_CWorkRoot_cpp_CWorkRootThread_hierarchy

.global __RTTI__CWorkSystem
__RTTI__CWorkSystem:
	.4byte CWorkSystem_typestr
	.4byte CWorkSystem_hierarchy

.global __RTTI__CWorkSystemMem
__RTTI__CWorkSystemMem:
	.4byte CWorkSystemMem_typestr
	.4byte CWorkSystemMem_hierarchy

.global __RTTI__TChildListHeader_CProcess
__RTTI__TChildListHeader_CProcess:
	.4byte TChildListHeader_CProcess_typestr
	.4byte 0

.global __RTTI__TChildListHeader_CChildListNode
__RTTI__TChildListHeader_CChildListNode:
	.4byte TChildListHeader_CChildListNode_typestr
	.4byte 0

.global __RTTI__CDeviceRemotePad
__RTTI__CDeviceRemotePad:
	.4byte CDeviceRemotePad_typestr
	.4byte CDeviceRemotePad_hierarchy

.global __RTTI__CDeviceBase
__RTTI__CDeviceBase:
	.4byte CDeviceBase_typestr
	.4byte CDeviceBase_hierarchy

.global __RTTI__CDeviceSC
__RTTI__CDeviceSC:
	.4byte CDeviceSC_typestr
	.4byte CDeviceSC_hierarchy

.global __RTTI__CDeviceVI
__RTTI__CDeviceVI:
	.4byte CDeviceVI_typestr
	.4byte CDeviceVI_hierarchy

.global __RTTI__reslist_CDeviceVICb
__RTTI__reslist_CDeviceVICb:
	.4byte reslist_CDeviceVICb_typestr
	.4byte reslist_CDeviceVICb_hierarchy

.global __RTTI___reslist_base_CDeviceVICb
__RTTI___reslist_base_CDeviceVICb:
	.4byte _reslist_base_CDeviceVICb_typestr
	.4byte 0

.global __RTTI__CDeviceVICb
__RTTI__CDeviceVICb:
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

.global __RTTI__CGXCache
__RTTI__CGXCache:
	.4byte CGXCache_typestr
	.4byte CGXCache_hierarchy

.global __RTTI__CMsgParam_32
__RTTI__CMsgParam_32:
	.4byte CMsgParam_32_typestr
	.4byte 0

.global __RTTI__IStateCache
__RTTI__IStateCache:
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

.global __RTTI___unnamed_CDevice_cpp_CDeviceException
__RTTI___unnamed_CDevice_cpp_CDeviceException:
	.4byte _unnamed_CDevice_cpp_CDeviceException_typestr
	.4byte _unnamed_CDevice_cpp_CDeviceException_hierarchy

.global __RTTI__CDevice
__RTTI__CDevice:
	.4byte CDevice_typestr
	.4byte CDevice_hierarchy

.global __RTTI__CDeviceClock
__RTTI__CDeviceClock:
	.4byte CDeviceClock_typestr
	.4byte CDeviceClock_hierarchy

.global __RTTI__reslist_IDeviceClockFrame
__RTTI__reslist_IDeviceClockFrame:
	.4byte reslist_IDeviceClockFrame_typestr
	.4byte reslist_IDeviceClockFrame_hierarchy

.global __RTTI___reslist_base_IDeviceClockFrame
__RTTI___reslist_base_IDeviceClockFrame:
	.4byte _reslist_base_IDeviceClockFrame_typestr
	.4byte 0


.global lbl_80665FD0
lbl_80665FD0:
	# ROM: 0x571BB0
	.4byte 0x01000000
	.4byte 0

.global __RTTI__CDeviceFile
__RTTI__CDeviceFile:
	.4byte CDeviceFile_typestr
	.4byte CDeviceFile_hierarchy

.global __RTTI__reslist_CFileHandle
__RTTI__reslist_CFileHandle:
	.4byte reslist_CFileHandle_typestr
	.4byte reslist_CFileHandle_hierarchy

.global __RTTI___reslist_base_CFileHandle
__RTTI___reslist_base_CFileHandle:
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

.global __RTTI__CDeviceFileCri
__RTTI__CDeviceFileCri:
	.4byte CDeviceFileCri_typestr
	.4byte CDeviceFileCri_hierarchy

.global __RTTI__CDeviceFileDvd
__RTTI__CDeviceFileDvd:
	.4byte CDeviceFileDvd_typestr
	.4byte CDeviceFileDvd_hierarchy

.global __RTTI__CDeviceFileJob
__RTTI__CDeviceFileJob:
	.4byte CDeviceFileJob_typestr
	.4byte CDeviceFileJob_hierarchy

.global __RTTI__CDeviceFileJobReadDvd
__RTTI__CDeviceFileJobReadDvd:
	.4byte CDeviceFileJobReadDvd_typestr
	.4byte CDeviceFileJobReadDvd_hierarchy


.global lbl_80666020
lbl_80666020:
	# ROM: 0x571C00
	.4byte lbl_80526680


.global lbl_80666024
lbl_80666024:
	# ROM: 0x571C04
	.4byte lbl_80526694

.global __RTTI__CDeviceFont
__RTTI__CDeviceFont:
	.4byte CDeviceFont_typestr
	.4byte CDeviceFont_hierarchy

.global __RTTI__reslist_IDeviceFontInfo
__RTTI__reslist_IDeviceFontInfo:
	.4byte reslist_IDeviceFontInfo_typestr
	.4byte reslist_IDeviceFontInfo_hierarchy

.global __RTTI___reslist_base_IDeviceFontInfo
__RTTI___reslist_base_IDeviceFontInfo:
	.4byte _reslist_base_IDeviceFontInfo_typestr
	.4byte 0

.global __RTTI__CDeviceFontInfoExt
__RTTI__CDeviceFontInfoExt:
	.4byte CDeviceFontInfoExt_typestr
	.4byte CDeviceFontInfoExt_hierarchy

.global __RTTI__IDeviceFontInfo
__RTTI__IDeviceFontInfo:
	.4byte IDeviceFontInfo_typestr
	.4byte 0

.global __RTTI__CDeviceFontInfoRom
__RTTI__CDeviceFontInfoRom:
	.4byte CDeviceFontInfoRom_typestr
	.4byte CDeviceFontInfoRom_hierarchy

.global __RTTI__CDeviceFontLayer
__RTTI__CDeviceFontLayer:
	.4byte CDeviceFontLayer_typestr
	.4byte CDeviceFontLayer_hierarchy

.global __RTTI__reslist_const_CDeviceFontLayer_LAYER_QUE
__RTTI__reslist_const_CDeviceFontLayer_LAYER_QUE:
	.4byte reslist_const_CDeviceFontLayer_LAYER_QUE_typestr
	.4byte reslist_const_CDeviceFontLayer_LAYER_QUE_hierarchy

.global __RTTI___reslist_base_const_CDeviceFontLayer_LAYER_QUE
__RTTI___reslist_base_const_CDeviceFontLayer_LAYER_QUE:
	.4byte _reslist_base_const_CDeviceFontLayer_LAYER_QUE_typestr
	.4byte 0

.global __RTTI__CDeviceFontLoader
__RTTI__CDeviceFontLoader:
	.4byte CDeviceFontLoader_typestr
	.4byte CDeviceFontLoader_hierarchy


.global lbl_80666078
lbl_80666078:
	# ROM: 0x571C58
	.4byte 0x00200000


.global lbl_8066607C
lbl_8066607C:
	# ROM: 0x571C5C
	.4byte lbl_8066CBE8

.global __RTTI__CDeviceGX
__RTTI__CDeviceGX:
	.4byte CDeviceGX_typestr
	.4byte CDeviceGX_hierarchy


.global lbl_80666088
lbl_80666088:
	# ROM: 0x571C68
	.4byte lbl_8066CC10
	.4byte 0

.global __RTTI___unnamed_CDesktop_cpp_CDesktopException
__RTTI___unnamed_CDesktop_cpp_CDesktopException:
	.4byte _unnamed_CDesktop_cpp_CDesktopException_typestr
	.4byte _unnamed_CDesktop_cpp_CDesktopException_hierarchy

.global __RTTI___unnamed_CDesktop_cpp_CDesktopBackGround
__RTTI___unnamed_CDesktop_cpp_CDesktopBackGround:
	.4byte _unnamed_CDesktop_cpp_CDesktopBackGround_typestr
	.4byte _unnamed_CDesktop_cpp_CDesktopBackGround_hierarchy

.global __RTTI__CDesktop
__RTTI__CDesktop:
	.4byte CDesktop_typestr
	.4byte CDesktop_hierarchy

.global __RTTI__CException
__RTTI__CException:
	.4byte CException_typestr
	.4byte CException_hierarchy

.global __RTTI__CLib
__RTTI__CLib:
	.4byte CLib_typestr
	.4byte CLib_hierarchy

.global __RTTI__CLibCri
__RTTI__CLibCri:
	.4byte CLibCri_typestr
	.4byte CLibCri_hierarchy

.global __RTTI__CLibCriMoviePlay
__RTTI__CLibCriMoviePlay:
	.4byte CLibCriMoviePlay_typestr
	.4byte CLibCriMoviePlay_hierarchy


.global lbl_806660C8
lbl_806660C8:
	# ROM: 0x571CA8
	.4byte 0x0000BB80


.global lbl_806660CC
lbl_806660CC:
	# ROM: 0x571CAC
	.4byte lbl_8066CCC0

.global __RTTI__CLibCriStreamingPlay
__RTTI__CLibCriStreamingPlay:
	.4byte CLibCriStreamingPlay_typestr
	.4byte CLibCriStreamingPlay_hierarchy

.global __RTTI__CLibG3d
__RTTI__CLibG3d:
	.4byte CLibG3d_typestr
	.4byte CLibG3d_hierarchy


.global lbl_806660E0
lbl_806660E0:
	# ROM: 0x571CC0
	.4byte 0xFFFFFFFF
	.4byte 0

.global __RTTI__CLibHbm
__RTTI__CLibHbm:
	.4byte CLibHbm_typestr
	.4byte CLibHbm_hierarchy

.global __RTTI__CLibHbmControl
__RTTI__CLibHbmControl:
	.4byte CLibHbmControl_typestr
	.4byte CLibHbmControl_hierarchy

.global __RTTI__CLibLayout
__RTTI__CLibLayout:
	.4byte CLibLayout_typestr
	.4byte CLibLayout_hierarchy

.global __RTTI__CLibStaticData
__RTTI__CLibStaticData:
	.4byte CLibStaticData_typestr
	.4byte CLibStaticData_hierarchy

.global __RTTI__CLibStaticData_CItem
__RTTI__CLibStaticData_CItem:
	.4byte CLibStaticData_CItem_typestr
	.4byte 0

.global __RTTI__CLibVM
__RTTI__CLibVM:
	.4byte CLibVM_typestr
	.4byte CLibVM_hierarchy

.global __RTTI__CTaskLOD
__RTTI__CTaskLOD:
	.4byte CTaskLOD_typestr
	.4byte CTaskLOD_hierarchy

.global __RTTI__CTTask_CTaskLOD
__RTTI__CTTask_CTaskLOD:
	.4byte CTTask_CTaskLOD_typestr
	.4byte CTTask_CTaskLOD_hierarchy


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

.global __RTTI__LOD_LODMemMan
__RTTI__LOD_LODMemMan:
	.4byte LOD_LODMemMan_typestr
	.4byte LOD_LODMemMan_hierarchy


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

.global __RTTI__mpfsys_MPFDrawDisplayList
__RTTI__mpfsys_MPFDrawDisplayList:
	.4byte mpfsys_MPFDrawDisplayList_typestr
	.4byte mpfsys_MPFDrawDisplayList_hierarchy

.global __RTTI__mpfsys_MPFDraw
__RTTI__mpfsys_MPFDraw:
	.4byte mpfsys_MPFDraw_typestr
	.4byte 0

.global __RTTI__mpfsys_MPFDrawMdlColor
__RTTI__mpfsys_MPFDrawMdlColor:
	.4byte mpfsys_MPFDrawMdlColor_typestr
	.4byte mpfsys_MPFDrawMdlColor_hierarchy

.global __RTTI__mpfsys_MPFDrawMdlNoColor
__RTTI__mpfsys_MPFDrawMdlNoColor:
	.4byte mpfsys_MPFDrawMdlNoColor_typestr
	.4byte mpfsys_MPFDrawMdlNoColor_hierarchy

.global __RTTI__mpfsys_MPFDrawBillLayTex
__RTTI__mpfsys_MPFDrawBillLayTex:
	.4byte mpfsys_MPFDrawBillLayTex_typestr
	.4byte mpfsys_MPFDrawBillLayTex_hierarchy

.global __RTTI__mpfsys_MPFDrawCross
__RTTI__mpfsys_MPFDrawCross:
	.4byte mpfsys_MPFDrawCross_typestr
	.4byte mpfsys_MPFDrawCross_hierarchy

.global __RTTI__mpfsys_MPFDrawBillboard
__RTTI__mpfsys_MPFDrawBillboard:
	.4byte mpfsys_MPFDrawBillboard_typestr
	.4byte mpfsys_MPFDrawBillboard_hierarchy


.global lbl_806661C0
lbl_806661C0:
	# ROM: 0x571DA0
	.4byte 0x3EAAAAAB
	.4byte 0

.global __RTTI__CScnItemCameraNw4r
__RTTI__CScnItemCameraNw4r:
	.4byte CScnItemCameraNw4r_typestr
	.4byte CScnItemCameraNw4r_hierarchy

.global __RTTI__CScnItemCamera
__RTTI__CScnItemCamera:
	.4byte CScnItemCamera_typestr
	.4byte CScnItemCamera_hierarchy

.global __RTTI__CScnItemId
__RTTI__CScnItemId:
	.4byte CScnItemId_typestr
	.4byte CScnItemId_hierarchy

.global __RTTI__CScnItemLight
__RTTI__CScnItemLight:
	.4byte CScnItemLight_typestr
	.4byte CScnItemLight_hierarchy

.global __RTTI__CScnItemLightNw4r
__RTTI__CScnItemLightNw4r:
	.4byte CScnItemLightNw4r_typestr
	.4byte CScnItemLightNw4r_hierarchy


.global lbl_806661F0
lbl_806661F0:
	# ROM: 0x571DD0
	.4byte lbl_8066D090


.global lbl_806661F4
lbl_806661F4:
	# ROM: 0x571DD4
	.4byte lbl_8066D098

.global __RTTI__nw4r_g3d_IScnObjCallback
__RTTI__nw4r_g3d_IScnObjCallback:
	.4byte nw4r_g3d_IScnObjCallback_typestr
	.4byte 0

.global __RTTI__nw4r_g3d_ICalcWorldCallback
__RTTI__nw4r_g3d_ICalcWorldCallback:
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

.global __RTTI__CScnItemPool
__RTTI__CScnItemPool:
	.4byte CScnItemPool_typestr
	.4byte CScnItemPool_hierarchy

.global __RTTI__reslist_CScnItem
__RTTI__reslist_CScnItem:
	.4byte reslist_CScnItem_typestr
	.4byte reslist_CScnItem_hierarchy

.global __RTTI___reslist_base_CScnItem
__RTTI___reslist_base_CScnItem:
	.4byte _reslist_base_CScnItem_typestr
	.4byte 0

.global __RTTI__CScnLightMan
__RTTI__CScnLightMan:
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

.global __RTTI__CScnMem
__RTTI__CScnMem:
	.4byte CScnMem_typestr
	.4byte 0

.global __RTTI__CScnNw4r
__RTTI__CScnNw4r:
	.4byte CScnNw4r_typestr
	.4byte CScnNw4r_hierarchy

.global __RTTI__CScn
__RTTI__CScn:
	.4byte CScn_typestr
	.4byte CScn_hierarchy

.global __RTTI__CTTask_CScn
__RTTI__CTTask_CScn:
	.4byte CTTask_CScn_typestr
	.4byte CTTask_CScn_hierarchy

.global __RTTI__CScnRoot
__RTTI__CScnRoot:
	.4byte CScnRoot_typestr
	.4byte 0

.global __RTTI__CScnRootNw4r
__RTTI__CScnRootNw4r:
	.4byte CScnRootNw4r_typestr
	.4byte CScnRootNw4r_hierarchy


.global lbl_806662C8
lbl_806662C8:
	# ROM: 0x571EA8
	.4byte 0xFFFFFFFF


.global lbl_806662CC
lbl_806662CC:
	# ROM: 0x571EAC
	.4byte 0xFFFFFFFF

.global __RTTI__CScnTexWorkMan
__RTTI__CScnTexWorkMan:
	.4byte CScnTexWorkMan_typestr
	.4byte CScnTexWorkMan_hierarchy


.global lbl_806662D8
lbl_806662D8:
	# ROM: 0x571EB8
	.4byte 0x72656600


.global lbl_806662DC
lbl_806662DC:
	# ROM: 0x571EBC
	.4byte 0x72656600

.global __RTTI__CScnVirtualLight
__RTTI__CScnVirtualLight:
	.4byte CScnVirtualLight_typestr
	.4byte 0

.global __RTTI__CVirtualLightAmb
__RTTI__CVirtualLightAmb:
	.4byte CVirtualLightAmb_typestr
	.4byte CVirtualLightAmb_hierarchy

.global __RTTI__CVirtualLightObj
__RTTI__CVirtualLightObj:
	.4byte CVirtualLightObj_typestr
	.4byte 0

.global __RTTI__CVirtualLightDir
__RTTI__CVirtualLightDir:
	.4byte CVirtualLightDir_typestr
	.4byte CVirtualLightDir_hierarchy


.global lbl_80666300
lbl_80666300:
	# ROM: 0x571EE0
	.4byte 0x72656600


.global lbl_80666304
lbl_80666304:
	# ROM: 0x571EE4
	.4byte 0x72656600

.global __RTTI__CScnBlend
__RTTI__CScnBlend:
	.4byte CScnBlend_typestr
	.4byte CScnBlend_hierarchy

.global __RTTI__CScnFilter
__RTTI__CScnFilter:
	.4byte CScnFilter_typestr
	.4byte 0

.global __RTTI__CScnBloom
__RTTI__CScnBloom:
	.4byte CScnBloom_typestr
	.4byte CScnBloom_hierarchy

.global __RTTI__CScnBloomBase
__RTTI__CScnBloomBase:
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

.global __RTTI__CScnCameraMan
__RTTI__CScnCameraMan:
	.4byte CScnCameraMan_typestr
	.4byte CScnCameraMan_hierarchy


.global lbl_80666338
lbl_80666338:
	# ROM: 0x571F18
	.4byte lbl_8066D330
	.4byte 0

.global __RTTI__CScnEffectActNw4r
__RTTI__CScnEffectActNw4r:
	.4byte CScnEffectActNw4r_typestr
	.4byte CScnEffectActNw4r_hierarchy

.global __RTTI__IEffectAct
__RTTI__IEffectAct:
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

.global __RTTI__CScnFadeMan
__RTTI__CScnFadeMan:
	.4byte CScnFadeMan_typestr
	.4byte 0

.global __RTTI__CScnFilterMan
__RTTI__CScnFilterMan:
	.4byte CScnFilterMan_typestr
	.4byte 0

.global __RTTI__reslist__reslist_iterator_CScnFilter_CScnFilter_CScnFilter
__RTTI__reslist__reslist_iterator_CScnFilter_CScnFilter_CScnFilter:
	.4byte reslist__reslist_iterator_CScnFilter_CScnFilter_CScnFilter_typestr
	.4byte reslist__reslist_iterator_CScnFilter_CScnFilter_CScnFilter_hierarchy

.global __RTTI___reslist_base__reslist_iterator_CScnFilter_CScnFilter_CScnFilter
__RTTI___reslist_base__reslist_iterator_CScnFilter_CScnFilter_CScnFilter:
	.4byte _reslist_base__reslist_iterator_CScnFilter_CScnFilter_CScnFilter_typestr
	.4byte 0

.global __RTTI__reslist_CScnFilter
__RTTI__reslist_CScnFilter:
	.4byte reslist_CScnFilter_typestr
	.4byte reslist_CScnFilter_hierarchy

.global __RTTI___reslist_base_CScnFilter
__RTTI___reslist_base_CScnFilter:
	.4byte _reslist_base_CScnFilter_typestr
	.4byte 0

.global __RTTI__CScnFogMan
__RTTI__CScnFogMan:
	.4byte CScnFogMan_typestr
	.4byte 0

.global __RTTI__CScnFrame
__RTTI__CScnFrame:
	.4byte CScnFrame_typestr
	.4byte 0

.global __RTTI__CScnIdMan
__RTTI__CScnIdMan:
	.4byte CScnIdMan_typestr
	.4byte 0

.global __RTTI__CScnItemAnim
__RTTI__CScnItemAnim:
	.4byte CScnItemAnim_typestr
	.4byte CScnItemAnim_hierarchy


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

.global __RTTI__CColiObjCall
__RTTI__CColiObjCall:
	.4byte CColiObjCall_typestr
	.4byte CColiObjCall_hierarchy

.global __RTTI__CColiResCall
__RTTI__CColiResCall:
	.4byte CColiResCall_typestr
	.4byte CColiResCall_hierarchy


.global lbl_806663C8
lbl_806663C8:
	# ROM: 0x571FA8
	.4byte 0x72656600
	.4byte 0

.global __RTTI__CTaskColiManager
__RTTI__CTaskColiManager:
	.4byte CTaskColiManager_typestr
	.4byte CTaskColiManager_hierarchy

.global __RTTI__CTTask_CTaskColiManager
__RTTI__CTTask_CTaskColiManager:
	.4byte CTTask_CTaskColiManager_typestr
	.4byte CTTask_CTaskColiManager_hierarchy

.global __RTTI__CColiManCall
__RTTI__CColiManCall:
	.4byte CColiManCall_typestr
	.4byte CColiManCall_hierarchy


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

.global __RTTI__CLight
__RTTI__CLight:
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

.global __RTTI__reslist_IScnEnvCtl
__RTTI__reslist_IScnEnvCtl:
	.4byte reslist_IScnEnvCtl_typestr
	.4byte reslist_IScnEnvCtl_hierarchy

.global __RTTI___reslist_base_IScnEnvCtl
__RTTI___reslist_base_IScnEnvCtl:
	.4byte _reslist_base_IScnEnvCtl_typestr
	.4byte 0

.global __RTTI__CScnEnvLgtCtrl
__RTTI__CScnEnvLgtCtrl:
	.4byte CScnEnvLgtCtrl_typestr
	.4byte CScnEnvLgtCtrl_hierarchy

.global __RTTI__IScnEnvCtl
__RTTI__IScnEnvCtl:
	.4byte IScnEnvCtl_typestr
	.4byte 0