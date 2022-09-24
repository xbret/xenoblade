.include "macros.inc"

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global cf_CfTaskMain_RTTI
cf_CfTaskMain_RTTI:
	.4byte cf_CfTaskMain_typestr
	.4byte lbl_8052A6FC

.global CTTask_cf_CfTaskMain_RTTI
CTTask_cf_CfTaskMain_RTTI:
	.4byte CTTask_cf_CfTaskMain_typestr
	.4byte lbl_8052A74C

.global cf_CfTFile_RTTI
cf_CfTFile_RTTI:
	.4byte cf_CfTFile_typestr
	.4byte lbl_8052A7F0


.global lbl_806643E8
lbl_806643E8:
	# ROM: 0x56FFC8
	.float 1.0


.global lbl_806643EC
lbl_806643EC:
	# ROM: 0x56FFCC
	.2byte 0x0001


.global lbl_806643EE
lbl_806643EE:
	# ROM: 0x56FFCE
	.2byte 0x0001


.global lbl_806643F0
lbl_806643F0:
	# ROM: 0x56FFD0
	.4byte 0x00010000
	.4byte 0


.global cf_CfCamEvent_RTTI
cf_CfCamEvent_RTTI:
	# ROM: 0x56FFD8
	.4byte cf_CfCamEvent_typestr
	.4byte lbl_8052A890

.global cf_CfCamTargetIntf_RTTI
cf_CfCamTargetIntf_RTTI:
	.4byte cf_CfCamTargetIntf_typestr
	.4byte lbl_8052A8C0

.global cf_CfCamLookatIntf_RTTI
cf_CfCamLookatIntf_RTTI:
	.4byte cf_CfCamLookatIntf_typestr
	.4byte lbl_8052A8F0

.global cf_CfCamDirectionIntf_RTTI
cf_CfCamDirectionIntf_RTTI:
	.4byte cf_CfCamDirectionIntf_typestr
	.4byte lbl_8052A918

.global lbl_80664418
lbl_80664418:
	.4byte cf_CfCamIntf_typestr
	.4byte 0


.global cf_CfCamFollow_RTTI
cf_CfCamFollow_RTTI:
	# ROM: 0x570000
	.4byte cf_CfCamFollow_typestr
	.4byte lbl_8052A924


.global cf_CfCam_RTTI
cf_CfCam_RTTI:
	# ROM: 0x570008
	.4byte cf_CfCam_typestr
	.4byte 0


.global lbl_80664430
lbl_80664430:
	# ROM: 0x570010
	.4byte 0x3FA00000


.global lbl_80664434
lbl_80664434:
	# ROM: 0x570014
	.4byte 0x3D8F5C29


.global lbl_80664438
lbl_80664438:
	# ROM: 0x570018
	.4byte 0x3E99999A


.global lbl_8066443C
lbl_8066443C:
	# ROM: 0x57001C
	.4byte 0x3E99999A


.global lbl_80664440
lbl_80664440:
	# ROM: 0x570020
	.4byte 0x3F266666


.global lbl_80664444
lbl_80664444:
	# ROM: 0x570024
	.4byte 0x40F00000


.global lbl_80664448
lbl_80664448:
	# ROM: 0x570028
	.4byte 0x42200000


.global lbl_8066444C
lbl_8066444C:
	# ROM: 0x57002C
	.float 0.5


.global lbl_80664450
lbl_80664450:
	# ROM: 0x570030
	.float 0.5


.global lbl_80664454
lbl_80664454:
	# ROM: 0x570034
	.float 1.0


.global lbl_80664458
lbl_80664458:
	# ROM: 0x570038
	.float 8.0


.global lbl_8066445C
lbl_8066445C:
	# ROM: 0x57003C
	.4byte 0x40000000


.global lbl_80664460
lbl_80664460:
	# ROM: 0x570040
	.4byte 0x41A00000


.global lbl_80664464
lbl_80664464:
	# ROM: 0x570044
	.4byte 0x41A00000


.global lbl_80664468
lbl_80664468:
	# ROM: 0x570048
	.float 0.25


.global lbl_8066446C
lbl_8066446C:
	# ROM: 0x57004C
	.4byte 0x3D8F5C29


.global lbl_80664470
lbl_80664470:
	# ROM: 0x570050
	.4byte 0x41C00000


.global lbl_80664474
lbl_80664474:
	# ROM: 0x570054
	.4byte 0x00000004


.global lbl_80664478
lbl_80664478:
	# ROM: 0x570058
	.4byte 0x3E99999A


.global lbl_8066447C
lbl_8066447C:
	# ROM: 0x57005C
	.float 0.25


.global lbl_80664480
lbl_80664480:
	# ROM: 0x570060
	.float 0.5


.global lbl_80664484
lbl_80664484:
	# ROM: 0x570064
	.4byte 0x41400000


.global lbl_80664488
lbl_80664488:
	# ROM: 0x570068
	.4byte 0x41900000


.global lbl_8066448C
lbl_8066448C:
	# ROM: 0x57006C
	.4byte 0x41F00000


.global lbl_80664490
lbl_80664490:
	# ROM: 0x570070
	.4byte 0x41A00000


.global lbl_80664494
lbl_80664494:
	# ROM: 0x570074
	.4byte 0x41F00000


.global lbl_80664498
lbl_80664498:
	# ROM: 0x570078
	.4byte 0x42340000


.global lbl_8066449C
lbl_8066449C:
	# ROM: 0x57007C
	.4byte 0x00000001


.global lbl_806644A0
lbl_806644A0:
	# ROM: 0x570080
	.4byte 0x3E051EB8


.global lbl_806644A4
lbl_806644A4:
	# ROM: 0x570084
	.4byte 0x41F00000


.global lbl_806644A8
lbl_806644A8:
	# ROM: 0x570088
	.4byte 0x01000000


.global lbl_806644AC
lbl_806644AC:
	# ROM: 0x57008C
	.4byte 0x3ECCCCCD


.global lbl_806644B0
lbl_806644B0:
	.asciz "rate1"
	.balign 4


.global lbl_806644B8
lbl_806644B8:
	# ROM: 0x570098
	.4byte 0


.global lbl_806644BC
lbl_806644BC:
	# ROM: 0x57009C
	.4byte 0xFFFFFFFF


.global lbl_806644C0
lbl_806644C0:
	# ROM: 0x5700A0
	.4byte 0xFFFFFFFF


.global lbl_806644C4
lbl_806644C4:
	# ROM: 0x5700A4
	.4byte 0xFFFF0000


.global lbl_806644C8
lbl_806644C8:
	# ROM: 0x5700A8
	.4byte 0x00010003
	.4byte 0x000C0000


.global lbl_806644D0
lbl_806644D0:
	# ROM: 0x5700B0
	.4byte 0x000A000B
	.4byte 0x000C0000

.global lbl_806644D8
lbl_806644D8:
	.4byte cf_IObjectInfo_typestr
	.4byte 0


.global lbl_806644E0
lbl_806644E0:
	# ROM: 0x5700C0
	.4byte cf_CfObjectImpl_typestr
	.4byte lbl_8052AEF8

.global lbl_806644E8
lbl_806644E8:
	.4byte IActParamEvent_typestr
	.4byte 0

.global cf_CtrlEnemy_RTTI
cf_CtrlEnemy_RTTI:
	.4byte cf_CtrlEnemy_typestr
	.4byte lbl_8052AF98

.global cf_CtrlAct_RTTI
cf_CtrlAct_RTTI:
	.4byte cf_CtrlAct_typestr
	.4byte lbl_8052AFB4


.global cf_CtrlBase_RTTI
cf_CtrlBase_RTTI:
	# ROM: 0x5700E0
	.4byte cf_CtrlBase_typestr
	.4byte lbl_8052AFC8


.global lbl_80664508
lbl_80664508:
	# ROM: 0x5700E8
	.4byte CActInput_typestr
	.4byte 0

.global cf_CtrlMoveBase_RTTI
cf_CtrlMoveBase_RTTI:
	.4byte cf_CtrlMoveBase_typestr
	.4byte 0

.global cf_CtrlEneAiCall_RTTI
cf_CtrlEneAiCall_RTTI:
	.4byte cf_CtrlEneAiCall_typestr
	.4byte lbl_8052AFF0

.global CColiProc_RTTI
CColiProc_RTTI:
	.4byte CColiProc_typestr
	.4byte 0


.global lbl_80664528
lbl_80664528:
	# ROM: 0x570108
	.4byte 0x3BA3D70A
	.4byte 0

.global cf_CtrlMoveEne_RTTI
cf_CtrlMoveEne_RTTI:
	.4byte cf_CtrlMoveEne_typestr
	.4byte lbl_8052B1D8

.global cf_CtrlNpc_RTTI
cf_CtrlNpc_RTTI:
	.4byte cf_CtrlNpc_typestr
	.4byte lbl_8052B368

.global cf_CtrlPad_RTTI
cf_CtrlPad_RTTI:
	.4byte cf_CtrlPad_typestr
	.4byte lbl_8052B510

.global cf_CtrlRemote_RTTI
cf_CtrlRemote_RTTI:
	.4byte cf_CtrlRemote_typestr
	.4byte lbl_8052B53C

.global cf_CtrlPc_RTTI
cf_CtrlPc_RTTI:
	.4byte cf_CtrlPc_typestr
	.4byte lbl_8052B560


.global cf_CfObjectImplPc_RTTI
cf_CfObjectImplPc_RTTI:
	# ROM: 0x570138
	.4byte cf_CfObjectImplPc_typestr
	.4byte lbl_8052B624

.global cf_CfObjectImplMove_RTTI
cf_CfObjectImplMove_RTTI:
	.4byte cf_CfObjectImplMove_typestr
	.4byte lbl_8052B648


.global lbl_80664568
lbl_80664568:
	# ROM: 0x570148
	.4byte 0x0000FFFF
	.4byte 0xFFFF0000

.global cf_CfObjectColl_RTTI
cf_CfObjectColl_RTTI:
	.4byte cf_CfObjectColl_typestr
	.4byte lbl_8052BF48

.global cf_CfCollCapsuleImpl_RTTI
cf_CfCollCapsuleImpl_RTTI:
	.4byte cf_CfCollCapsuleImpl_typestr
	.4byte lbl_8052BF80

.global cf_CfCollCylinderImpl_RTTI
cf_CfCollCylinderImpl_RTTI:
	.4byte cf_CfCollCylinderImpl_typestr
	.4byte lbl_8052BFA0

.global cf_CfCollAABBImpl_RTTI
cf_CfCollAABBImpl_RTTI:
	.4byte cf_CfCollAABBImpl_typestr
	.4byte lbl_8052BFC0

.global cf_CfCollSphereImpl_RTTI
cf_CfCollSphereImpl_RTTI:
	.4byte cf_CfCollSphereImpl_typestr
	.4byte lbl_8052BFE0

.global cf_CfCollCircleImpl_RTTI
cf_CfCollCircleImpl_RTTI:
	.4byte cf_CfCollCircleImpl_typestr
	.4byte lbl_8052C000

.global lbl_806645A0
lbl_806645A0:
	.4byte cf_CfCollImpl_typestr
	.4byte 0


.global cf_CfObjectPoint_RTTI
cf_CfObjectPoint_RTTI:
	# ROM: 0x570188
	.4byte cf_CfObjectPoint_typestr
	.4byte lbl_8052C00C


.global lbl_806645B0
lbl_806645B0:
	# ROM: 0x570190
	.4byte lbl_8066923C


.global lbl_806645B4
lbl_806645B4:
	# ROM: 0x570194
	.4byte lbl_804F7970

.global cf_CfObjectEne_RTTI
cf_CfObjectEne_RTTI:
	.4byte cf_CfObjectEne_typestr
	.4byte lbl_8052C7CC


.global lbl_806645C0
lbl_806645C0:
	# ROM: 0x5701A0
	.4byte 0x42B40000


.global lbl_806645C4
lbl_806645C4:
	# ROM: 0x5701A4
	.4byte 0x42480000


.global lbl_806645C8
lbl_806645C8:
	# ROM: 0x5701A8
	.4byte 0x41F00000


.global lbl_806645CC
lbl_806645CC:
	# ROM: 0x5701AC
	.float 10.0


.global lbl_806645D0
lbl_806645D0:
	# ROM: 0x5701B0
	.4byte 0xFFFFFFFC


.global lbl_806645D4
lbl_806645D4:
	# ROM: 0x5701B4
	.4byte 0xFFFFFFFC

.global reslist_cf_IFactoryEvent_RTTI
reslist_cf_IFactoryEvent_RTTI:
	.4byte reslist_cf_IFactoryEvent_typestr
	.4byte lbl_8052C87C

.global _reslist_base_cf_IFactoryEvent_RTTI
_reslist_base_cf_IFactoryEvent_RTTI:
	.4byte _reslist_base_cf_IFactoryEvent_typestr
	.4byte 0

.global reslist_cf_TboxInfo_RTTI
reslist_cf_TboxInfo_RTTI:
	.4byte reslist_cf_TboxInfo_typestr
	.4byte lbl_8052C8A0

.global _reslist_base_cf_TboxInfo_RTTI
_reslist_base_cf_TboxInfo_RTTI:
	.4byte _reslist_base_cf_TboxInfo_typestr
	.4byte 0

.global reslist_cf_CfObject_RTTI
reslist_cf_CfObject_RTTI:
	.4byte reslist_cf_CfObject_typestr
	.4byte lbl_8052C8C4

.global cf_CfObjectMap_RTTI
cf_CfObjectMap_RTTI:
	.4byte cf_CfObjectMap_typestr
	.4byte lbl_8052CAC0

.global cf_CfObjectNpc_RTTI
cf_CfObjectNpc_RTTI:
	.4byte cf_CfObjectNpc_typestr
	.4byte lbl_8052D2B8


.global cf_CfObjectTbox_RTTI
cf_CfObjectTbox_RTTI:
	# ROM: 0x5701F0
	.4byte cf_CfObjectTbox_typestr
	.4byte lbl_8052D2E8


.global cf_CfObjectObj_RTTI
cf_CfObjectObj_RTTI:
	# ROM: 0x5701F8
	.4byte cf_CfObjectObj_typestr
	.4byte lbl_8052D540

.global cf_CfObjectImplWalker_RTTI
cf_CfObjectImplWalker_RTTI:
	.4byte cf_CfObjectImplWalker_typestr
	.4byte lbl_8052DE30

.global cf_CfObjectImplObj_RTTI
cf_CfObjectImplObj_RTTI:
	.4byte cf_CfObjectImplObj_typestr
	.4byte lbl_8052E1A8

.global cf_CfObjectImplNpc_RTTI
cf_CfObjectImplNpc_RTTI:
	.4byte cf_CfObjectImplNpc_typestr
	.4byte lbl_8052E2E8


.global lbl_80664638
lbl_80664638:
	# ROM: 0x570218
	.4byte lbl_80669520
	.4byte 0


.global lbl_80664640
lbl_80664640:
	# ROM: 0x570220
	.4byte lbl_806695A0
	.4byte 0

.global cf_CfObjectImplEne_RTTI
cf_CfObjectImplEne_RTTI:
	.4byte cf_CfObjectImplEne_typestr
	.4byte lbl_8052E698

.global cf_CBattleManager_RTTI
cf_CBattleManager_RTTI:
	.4byte cf_CBattleManager_typestr
	.4byte lbl_8052F4F0

.global reslist_cf_IBattleEvent_RTTI
reslist_cf_IBattleEvent_RTTI:
	.4byte reslist_cf_IBattleEvent_typestr
	.4byte lbl_8052F508

.global _reslist_base_cf_IBattleEvent_RTTI
_reslist_base_cf_IBattleEvent_RTTI:
	.4byte _reslist_base_cf_IBattleEvent_typestr
	.4byte 0

.global reslist_cf_CfObjectActor_RTTI
reslist_cf_CfObjectActor_RTTI:
	.4byte reslist_cf_CfObjectActor_typestr
	.4byte lbl_8052F52C

.global _reslist_base_cf_CfObjectActor_RTTI
_reslist_base_cf_CfObjectActor_RTTI:
	.4byte _reslist_base_cf_CfObjectActor_typestr
	.4byte 0

.global cf_CChainTime_RTTI
cf_CChainTime_RTTI:
	.4byte cf_CChainTime_typestr
	.4byte 0

.global lbl_80664680
lbl_80664680:
	.4byte cf_IFactoryEvent_typestr
	.4byte 0

.global cf_CfObjEnumList_RTTI
cf_CfObjEnumList_RTTI:
	.4byte cf_CfObjEnumList_typestr
	.4byte lbl_8052F55C

.global lbl_80664690
lbl_80664690:
	.4byte cf_CfObjEnumList_OBJ_LIST_typestr
	.4byte lbl_8052F590

.global lbl_80664698
lbl_80664698:
	.4byte QSort_cf_CfObjEnumList_sObjInfo_float_typestr
	.4byte 0

.global lbl_806646A0
lbl_806646A0:
	.4byte fixvector_cf_CfObjEnumList_sObjInfo_384_typestr
	.4byte 0


.global lbl_806646A8
lbl_806646A8:
	# ROM: 0x570288
	.4byte 0x402CCCCD
	.4byte 0

.global cf_CfObjectSelectorObj_RTTI
cf_CfObjectSelectorObj_RTTI:
	.4byte cf_CfObjectSelectorObj_typestr
	.4byte 0


.global lbl_806646B8
lbl_806646B8:
	# ROM: 0x570298
	.4byte lbl_804F8568
	.4byte 0

.global CMainMenu_RTTI
CMainMenu_RTTI:
	.4byte CMainMenu_typestr
	.4byte lbl_8052F6B8

.global CMainCur_RTTI
CMainCur_RTTI:
	.4byte CMainCur_typestr
	.4byte lbl_8052F710

.global lbl_806646D0
lbl_806646D0:
	.4byte CBaseCur_typestr
	.4byte 0

.global lbl_806646D8
lbl_806646D8:
	.4byte lbl_806697E8
	.4byte lbl_8052F71C

.global CTTask_IUICf_RTTI
CTTask_IUICf_RTTI:
	.4byte CTTask_IUICf_typestr
	.4byte lbl_8052F764

.global CMenuArtsSelect_RTTI
CMenuArtsSelect_RTTI:
	.4byte CMenuArtsSelect_typestr
	.4byte lbl_8052F928

.global lbl_806646F0
lbl_806646F0:
	.4byte IUIBattle_typestr
	.4byte lbl_8052F96C

.global CTTask_IUIBattle_RTTI
CTTask_IUIBattle_RTTI:
	.4byte CTTask_IUIBattle_typestr
	.4byte lbl_8052F9B4


.global lbl_80664700
lbl_80664700:
	# ROM: 0x5702E0
	.4byte 0
	.4byte 0

.global CMenuBattleDamage_RTTI
CMenuBattleDamage_RTTI:
	.4byte CMenuBattleDamage_typestr
	.4byte lbl_8052FAC0

.global CMenuBattlePlayerState_RTTI
CMenuBattlePlayerState_RTTI:
	.4byte CMenuBattlePlayerState_typestr
	.4byte lbl_8052FBC0

.global CPcSelectCursor01_RTTI
CPcSelectCursor01_RTTI:
	.4byte CPcSelectCursor01_typestr
	.4byte 0

.global CMenuEnemyState_RTTI
CMenuEnemyState_RTTI:
	.4byte CMenuEnemyState_typestr
	.4byte lbl_8052FCC8

.global CPcSelectCursor_RTTI
CPcSelectCursor_RTTI:
	.4byte CPcSelectCursor_typestr
	.4byte 0

.global CMenuFade_RTTI
CMenuFade_RTTI:
	.4byte CMenuFade_typestr
	.4byte lbl_8052FDD0

.global CMenuKeyAssign_RTTI
CMenuKeyAssign_RTTI:
	.4byte CMenuKeyAssign_typestr
	.4byte lbl_8052FED0


.global lbl_80664740
lbl_80664740:
	# ROM: 0x570320
	.float 0.2
	.4byte 0

.global CMenuMiniMap2_RTTI
CMenuMiniMap2_RTTI:
	.4byte CMenuMiniMap2_typestr
	.4byte lbl_805300E8

.global CMiniMap_RTTI
CMiniMap_RTTI:
	.4byte CMiniMap_typestr
	.4byte lbl_805301B0

.global CMMTex_RTTI
CMMTex_RTTI:
	.4byte CMMTex_typestr
	.4byte lbl_80530248

.global CMMClock_RTTI
CMMClock_RTTI:
	.4byte CMMClock_typestr
	.4byte lbl_805302E0

.global CMenuQuestLog_RTTI
CMenuQuestLog_RTTI:
	.4byte CMenuQuestLog_typestr
	.4byte lbl_80530440

.global CArrow3D_RTTI
CArrow3D_RTTI:
	.4byte CArrow3D_typestr
	.4byte lbl_80530558

.global CTTask_CArrow3D_RTTI
CTTask_CArrow3D_RTTI:
	.4byte CTTask_CArrow3D_typestr
	.4byte lbl_805305A8

.global CMenuSymbolMark_RTTI
CMenuSymbolMark_RTTI:
	.4byte CMenuSymbolMark_typestr
	.4byte lbl_80530688


.global lbl_80664788
lbl_80664788:
	.asciz "ARROW"
	.balign 4


.global lbl_80664790
lbl_80664790:
	.asciz "ResTex"
	.balign 4


.global lbl_80664798
lbl_80664798:
	# ROM: 0x570378
	.4byte 0x72656600
	.4byte 0


.global lbl_806647A0
lbl_806647A0:
	.asciz "ResPltt"


.global lbl_806647A8
lbl_806647A8:
	# ROM: 0x570388
	.4byte 0x72656600


.global lbl_806647AC
lbl_806647AC:
	# ROM: 0x57038C
	.4byte 0x72656600


.global lbl_806647B0
lbl_806647B0:
	# ROM: 0x570390
	.4byte lbl_804FA048
	.4byte 0

.global CQuestWindow_RTTI
CQuestWindow_RTTI:
	.4byte CQuestWindow_typestr
	.4byte lbl_80530984


.global IUIWindow_RTTI
IUIWindow_RTTI:
	# ROM: 0x5703A0
	.4byte IUIWindow_typestr
	.4byte lbl_805309E4

.global CTTask_IUIWindow_RTTI
CTTask_IUIWindow_RTTI:
	.4byte CTTask_IUIWindow_typestr
	.4byte lbl_80530A2C

.global CSysWinSelect_RTTI
CSysWinSelect_RTTI:
	.4byte CSysWinSelect_typestr
	.4byte lbl_80530B08

.global CSystemWindow_RTTI
CSystemWindow_RTTI:
	.4byte CSystemWindow_typestr
	.4byte lbl_80530C08

.global _unnamed_CTagProcessor_cpp_CTagCodeMakeCrystal_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeMakeCrystal_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeMakeCrystal_typestr
	.4byte lbl_80530E00

.global _unnamed_CTagProcessor_cpp_CTagCodeShop_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeShop_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeShop_typestr
	.4byte lbl_80530E28

.global _unnamed_CTagProcessor_cpp_CTagCodeExchange_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeExchange_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeExchange_typestr
	.4byte lbl_80530E50

.global _unnamed_CTagProcessor_cpp_CTagCodeTailOff_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeTailOff_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeTailOff_typestr
	.4byte lbl_80530E78

.global _unnamed_CTagProcessor_cpp_CTagCodePresent_RTTI
_unnamed_CTagProcessor_cpp_CTagCodePresent_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodePresent_typestr
	.4byte lbl_80530EA0

.global _unnamed_CTagProcessor_cpp_CTagCodeQstStart_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeQstStart_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeQstStart_typestr
	.4byte lbl_80530EC8

.global _unnamed_CTagProcessor_cpp_CTagCodeInvisible_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeInvisible_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeInvisible_typestr
	.4byte lbl_80530EF0

.global _unnamed_CTagProcessor_cpp_CTagCodeQuest_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeQuest_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeQuest_typestr
	.4byte lbl_80530F18

.global _unnamed_CTagProcessor_cpp_CTagCodeFade_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeFade_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeFade_typestr
	.4byte lbl_80530F40

.global _unnamed_CTagProcessor_cpp_CTagCodeAct_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeAct_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeAct_typestr
	.4byte lbl_80530F68

.global _unnamed_CTagProcessor_cpp_CTagCodeSelect2_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeSelect2_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeSelect2_typestr
	.4byte lbl_80530F90

.global _unnamed_CTagProcessor_cpp_CTagCodeSelect_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeSelect_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeSelect_typestr
	.4byte lbl_80530FB8

.global _unnamed_CTagProcessor_cpp_CTagCodeLine_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeLine_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeLine_typestr
	.4byte lbl_80530FE0

.global _unnamed_CTagProcessor_cpp_CTagCodeMouth_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeMouth_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeMouth_typestr
	.4byte lbl_80531008

.global _unnamed_CTagProcessor_cpp_CTagCodePos_RTTI
_unnamed_CTagProcessor_cpp_CTagCodePos_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodePos_typestr
	.4byte lbl_80531030

.global _unnamed_CTagProcessor_cpp_CTagCodeType_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeType_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeType_typestr
	.4byte lbl_80531058

.global _unnamed_CTagProcessor_cpp_CTagCodeTrust_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeTrust_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeTrust_typestr
	.4byte lbl_80531080

.global _unnamed_CTagProcessor_cpp_CTagCodeCol_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeCol_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeCol_typestr
	.4byte lbl_80531100

.global _unnamed_CTagProcessor_cpp_CTagCodeRuby_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeRuby_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeRuby_typestr
	.4byte lbl_80531128

.global _unnamed_CTagProcessor_cpp_CTagCodeDel_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeDel_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeDel_typestr
	.4byte lbl_80531150

.global _unnamed_CTagProcessor_cpp_CTagCodeWait_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeWait_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeWait_typestr
	.4byte lbl_80531178

.global _unnamed_CTagProcessor_cpp_CTagCodeCP_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeCP_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeCP_typestr
	.4byte lbl_805311A0

.global _unnamed_CTagProcessor_cpp_CTagCodeCL_RTTI
_unnamed_CTagProcessor_cpp_CTagCodeCL_RTTI:
	.4byte _unnamed_CTagProcessor_cpp_CTagCodeCL_typestr
	.4byte lbl_805311C8

.global lbl_80664898
lbl_80664898:
	.4byte _unnamed_CTagProcessor_cpp_ITagCode_typestr
	.4byte 0

.global CTagProcessorSE_RTTI
CTagProcessorSE_RTTI:
	.4byte CTagProcessorSE_typestr
	.4byte lbl_805311F0

.global CTagProcessor_RTTI
CTagProcessor_RTTI:
	.4byte CTagProcessor_typestr
	.4byte lbl_80531220

.global CTagProcessorBase_RTTI
CTagProcessorBase_RTTI:
	.4byte CTagProcessorBase_typestr
	.4byte lbl_80531250

.global lbl_806648B8
lbl_806648B8:
	.4byte nw4r_ut_TagProcessorBase_wchar_t_typestr
	.4byte 0


.global lbl_806648C0
lbl_806648C0:
	# ROM: 0x5704A0
	.2byte 0x004F #O
	.2byte 0x0055 #U
	.2byte 0x0054 #T
	.2byte 0x0000
	.2byte 0x004F #O
	.2byte 0x0055 #U
	.2byte 0x0054 #T
	.2byte 0x0049 #I
	.2byte 0x004E #N
	.2byte 0x0000
	.2byte 0x0049 #I
	.2byte 0x004E #N
	.2byte 0x0000
	.2byte 0x2500
	.2byte 0x2500
	.2byte 0x0000
	.2byte 0x2500
	.2byte 0x0000
	.2byte 0x004F #O
	.2byte 0x004E #N
	.2byte 0x0000
	.2byte 0x004F #O
	.2byte 0x0046 #F
	.2byte 0x0046 #F
	.2byte 0x0000
	.2byte 0x0054 #T
	.2byte 0x004C #L
	.2byte 0x0045 #E
	.2byte 0x0046 #F
	.2byte 0x0054 #T
	.2byte 0x0000
	.2byte 0x0054 #T
	.2byte 0x0043 #C
	.2byte 0x0045 #E
	.2byte 0x004E #N
	.2byte 0x0054 #T
	.2byte 0x0045 #E
	.2byte 0x0052 #R
	.2byte 0x0000
	.2byte 0x0054 #T
	.2byte 0x0052 #R
	.2byte 0x0049 #I
	.2byte 0x0047 #G
	.2byte 0x0048 #H
	.2byte 0x0054 #T
	.2byte 0x0000
	.2byte 0x0043 #C
	.2byte 0x004C #L
	.2byte 0x0045 #E
	.2byte 0x0046 #F
	.2byte 0x0054 #T
	.2byte 0x0000
	.2byte 0x0043 #C
	.2byte 0x0043 #C
	.2byte 0x0045 #E
	.2byte 0x004E #N
	.2byte 0x0054 #T
	.2byte 0x0045 #E
	.2byte 0x0052 #R
	.2byte 0x0000
	.2byte 0x0043
	.2byte 0x0052
	.2byte 0x0049
	.2byte 0x0047
	.2byte 0x0048
	.2byte 0x0054
	.2byte 0x0000
	.2byte 0x0042
	.2byte 0x004C
	.2byte 0x0045
	.2byte 0x0046
	.2byte 0x0054
	.2byte 0x0000
	.2byte 0x0042
	.2byte 0x0043
	.2byte 0x0045
	.2byte 0x004E
	.2byte 0x0054
	.2byte 0x0045
	.2byte 0x0052
	.2byte 0x0000
	.2byte 0x0042
	.2byte 0x0052
	.2byte 0x0049
	.2byte 0x0047
	.2byte 0x0048
	.2byte 0x0054
	.2byte 0x0000
	.2byte 0x0044
	.2byte 0x0045
	.2byte 0x0046
	.2byte 0x0000
	.2byte 0x0041
	.2byte 0x004E
	.2byte 0x0047
	.2byte 0x0045
	.2byte 0x0052
	.2byte 0x0000
	.2byte 0x0053
	.2byte 0x0041
	.2byte 0x0044
	.2byte 0x0000
	.2byte 0x0054
	.2byte 0x0048
	.2byte 0x0049
	.2byte 0x004E
	.2byte 0x004B
	.2byte 0x0000
	.2byte 0x0050
	.2byte 0x0000
	.2byte 0x0046
	.2byte 0x0000
	.2byte 0x0041
	.2byte 0x0000
	.2byte 0x0042
	.2byte 0x0000
	.2byte 0x0043
	.2byte 0x0000
	.2byte 0x0044
	.2byte 0x0000
	.2byte 0x0045
	.2byte 0x0000
	.2byte 0x0047
	.2byte 0x0000
	.2byte 0x0048
	.2byte 0x0000
	.2byte 0x0049
	.2byte 0x0000
	.2byte 0x004A
	.2byte 0x0000
	.2byte 0x004B
	.2byte 0x0000
	.2byte 0x004C
	.2byte 0x0000
	.2byte 0x004D
	.2byte 0x0000
	.2byte 0x004E
	.2byte 0x0000
	.2byte 0x004F
	.2byte 0x0000
	.2byte 0x0051
	.2byte 0x0000
	.2byte 0x0052
	.2byte 0x0000
	.2byte 0x0053
	.2byte 0x0000
	.2byte 0x0054
	.2byte 0x0000
	.2byte 0x0055
	.2byte 0x0000
	.2byte 0x0056
	.2byte 0x0000
	.2byte 0x0057
	.2byte 0x0000
	.2byte 0x0058
	.2byte 0x0000
	.2byte 0x0059
	.2byte 0x0000
	.2byte 0x005A
	.2byte 0x0000
	.2byte 0x0044
	.2byte 0x0045
	.2byte 0x0046
	.2byte 0x0032
	.2byte 0x0000
	.2byte 0x0044
	.2byte 0x0032
	.2byte 0x0000
	.2byte 0x0044
	.2byte 0x0045
	.2byte 0x0046
	.2byte 0x0033
	.2byte 0x0000
	.2byte 0x0044 #D
	.2byte 0x0033 #3
	.2byte 0x0000
	.2byte 0x0052 #R
	.2byte 0x0045 #E
	.2byte 0x0044 #D
	.2byte 0x0000
	.2byte 0x0049 #I
	.2byte 0x0054 #T
	.2byte 0x0045 #E
	.2byte 0x004D #M
	.2byte 0x0000
	.2byte 0x0053 #S
	.2byte 0x0031 #1
	.2byte 0x0000
	.2byte 0x0053 #S
	.2byte 0x0032 #2
	.2byte 0x0000
	.2byte 0x0041 #A
	.2byte 0x004C #L
	.2byte 0x004C #L
	.2byte 0x0000
	.2byte 0x0054 #T
	.2byte 0x0048 #H
	.2byte 0x0049 #I
	.2byte 0x0053 #S
	.2byte 0x0000
	.2byte 0x004B #K
	.2byte 0x0045 #E
	.2byte 0x0059 #Y
	.2byte 0x0000
	.2byte 0x0056 #V
	.2byte 0x004F #O
	.2byte 0x0049 #I
	.2byte 0x0043 #C
	.2byte 0x0045 #E
	.2byte 0x0000
	.2byte 0
	.2byte 0


.global CTalkWindow_RTTI
CTalkWindow_RTTI:
	# ROM: 0x570648
	.4byte CTalkWindow_typestr
	.4byte lbl_80531838

.global CUIBattleManager_RTTI
CUIBattleManager_RTTI:
	.4byte CUIBattleManager_typestr
	.4byte lbl_80531940

.global reslist_IUIBattle_RTTI
reslist_IUIBattle_RTTI:
	.4byte reslist_IUIBattle_typestr
	.4byte lbl_80531978

.global _reslist_base_IUIBattle_RTTI
_reslist_base_IUIBattle_RTTI:
	.4byte _reslist_base_IUIBattle_typestr
	.4byte 0

.global CUIBattleManager_CTest_RTTI
CUIBattleManager_CTest_RTTI:
	.4byte CUIBattleManager_CTest_typestr
	.4byte lbl_805319B4

.global CTTask_CUIBattleManager_CTest_RTTI
CTTask_CUIBattleManager_CTest_RTTI:
	.4byte CTTask_CUIBattleManager_CTest_typestr
	.4byte lbl_805319FC

.global CTTask_CUIBattleManager_RTTI
CTTask_CUIBattleManager_RTTI:
	.4byte CTTask_CUIBattleManager_typestr
	.4byte lbl_80531A3C


.global lbl_80664AA0
lbl_80664AA0:
	# ROM: 0x570680
	.4byte lbl_804FB800
	.4byte 0

.global CUICfManager_RTTI
CUICfManager_RTTI:
	.4byte CUICfManager_typestr
	.4byte lbl_80531B34

.global reslist_IUICf_RTTI
reslist_IUICf_RTTI:
	.4byte reslist_IUICf_typestr
	.4byte lbl_80531B74

.global _reslist_base_IUICf_RTTI
_reslist_base_IUICf_RTTI:
	.4byte _reslist_base_IUICf_typestr
	.4byte 0

.global CUICfManager_CTest_RTTI
CUICfManager_CTest_RTTI:
	.4byte CUICfManager_CTest_typestr
	.4byte lbl_80531BB0

.global CTTask_CUICfManager_CTest_RTTI
CTTask_CUICfManager_CTest_RTTI:
	.4byte CTTask_CUICfManager_CTest_typestr
	.4byte lbl_80531BF8

.global CTTask_CUICfManager_RTTI
CTTask_CUICfManager_RTTI:
	.4byte CTTask_CUICfManager_typestr
	.4byte lbl_80531C38

.global lbl_80664AD8
lbl_80664AD8:
	.4byte cf_IFlagEvent_typestr
	.4byte 0


.global lbl_80664AE0
lbl_80664AE0:
	# ROM: 0x5706C0
	.4byte 0x25730000


.global lbl_80664AE4
lbl_80664AE4:
	# ROM: 0x5706C4
	.4byte 0x25730000


.global lbl_80664AE8
lbl_80664AE8:
	# ROM: 0x5706C8
	.4byte 0x01000000
	.4byte 0

.global CUIWindowManager_RTTI
CUIWindowManager_RTTI:
	.4byte CUIWindowManager_typestr
	.4byte lbl_80531DA8

.global reslist_IUIWindow_RTTI
reslist_IUIWindow_RTTI:
	.4byte reslist_IUIWindow_typestr
	.4byte lbl_80531DE0

.global _reslist_base_IUIWindow_RTTI
_reslist_base_IUIWindow_RTTI:
	.4byte _reslist_base_IUIWindow_typestr
	.4byte 0

.global CUIWindowManager_CTest_RTTI
CUIWindowManager_CTest_RTTI:
	.4byte CUIWindowManager_CTest_typestr
	.4byte lbl_80531E1C

.global CTTask_CUIWindowManager_CTest_RTTI
CTTask_CUIWindowManager_CTest_RTTI:
	.4byte CTTask_CUIWindowManager_CTest_typestr
	.4byte lbl_80531E64

.global CTTask_CUIWindowManager_RTTI
CTTask_CUIWindowManager_RTTI:
	.4byte CTTask_CUIWindowManager_typestr
	.4byte lbl_80531EA4


.global lbl_80664B20
lbl_80664B20:
	# ROM: 0x570700
	.4byte 0x70633100
	.4byte 0

.global cf_CfBdat_RTTI
cf_CfBdat_RTTI:
	.4byte cf_CfBdat_typestr
	.4byte lbl_80531F70

.global CMenuUpdate_RTTI
CMenuUpdate_RTTI:
	.4byte CMenuUpdate_typestr
	.4byte lbl_80532040

.global CMenuLandTelop_RTTI
CMenuLandTelop_RTTI:
	.4byte CMenuLandTelop_typestr
	.4byte lbl_80532140


.global lbl_80664B40
lbl_80664B40:
	# ROM: 0x570720
	.4byte 0
	.4byte 0

.global CMenuGetItem_RTTI
CMenuGetItem_RTTI:
	.4byte CMenuGetItem_typestr
	.4byte lbl_805322D0

.global cf_CAttackSet_RTTI
cf_CAttackSet_RTTI:
	.4byte cf_CAttackSet_typestr
	.4byte lbl_80532D84

.global lbl_80664B58
lbl_80664B58:
	.4byte cf__sAttackSet_typestr
	.4byte 0

.global cf_CArtsSet_RTTI
cf_CArtsSet_RTTI:
	.4byte cf_CArtsSet_typestr
	.4byte lbl_80532D9C

.global cf__sArtsSet_RTTI
cf__sArtsSet_RTTI:
	.4byte cf__sArtsSet_typestr
	.4byte 0

.global cf_CArtsParam_RTTI
cf_CArtsParam_RTTI:
	.4byte cf_CArtsParam_typestr
	.4byte lbl_80532DD0

.global cf_CAttackParam_RTTI
cf_CAttackParam_RTTI:
	.4byte cf_CAttackParam_typestr
	.4byte 0


.global lbl_80664B80
lbl_80664B80:
	# ROM: 0x570760
	.4byte lbl_80669D60


.global lbl_80664B84
lbl_80664B84:
	# ROM: 0x570764
	.4byte lbl_804FD2D0


.global lbl_80664B88
lbl_80664B88:
	# ROM: 0x570768
	.4byte 0x141E2028
	.4byte 0x505A5C63


.global lbl_80664B90
lbl_80664B90:
	# ROM: 0x570770
	.4byte lbl_804FD324


.global lbl_80664B94
lbl_80664B94:
	# ROM: 0x570774
	.4byte 0xFFFFFFFC


.global lbl_80664B98
lbl_80664B98:
	# ROM: 0x570778
	.4byte 0xFFFFFFFC


.global lbl_80664B9C
lbl_80664B9C:
	# ROM: 0x57077C
	.4byte lbl_804FD330


.global lbl_80664BA0
lbl_80664BA0:
	# ROM: 0x570780
	.4byte lbl_804FD33C


.global lbl_80664BA4
lbl_80664BA4:
	# ROM: 0x570784
	.4byte lbl_80669DD0


.global lbl_80664BA8
lbl_80664BA8:
	# ROM: 0x570788
	.4byte lbl_80669DD8


.global lbl_80664BAC
lbl_80664BAC:
	# ROM: 0x57078C
	.4byte lbl_804FD348


.global lbl_80664BB0
lbl_80664BB0:
	# ROM: 0x570790
	.4byte lbl_804FD354


.global lbl_80664BB4
lbl_80664BB4:
	# ROM: 0x570794
	.4byte lbl_804FD360


.global lbl_80664BB8
lbl_80664BB8:
	# ROM: 0x570798
	.4byte lbl_80669DE0


.global lbl_80664BBC
lbl_80664BBC:
	# ROM: 0x57079C
	.4byte lbl_804FD36C


.global lbl_80664BC0
lbl_80664BC0:
	# ROM: 0x5707A0
	.4byte lbl_804FD378


.global lbl_80664BC4
lbl_80664BC4:
	# ROM: 0x5707A4
	.4byte lbl_804FD384


.global lbl_80664BC8
lbl_80664BC8:
	# ROM: 0x5707A8
	.4byte lbl_804FD390


.global lbl_80664BCC
lbl_80664BCC:
	# ROM: 0x5707AC
	.4byte lbl_80669DE8


.global lbl_80664BD0
lbl_80664BD0:
	# ROM: 0x5707B0
	.4byte lbl_804FD3A0


.global lbl_80664BD4
lbl_80664BD4:
	# ROM: 0x5707B4
	.4byte lbl_804FD3AC


.global lbl_80664BD8
lbl_80664BD8:
	# ROM: 0x5707B8
	.4byte materia1Per_typestr
	.4byte 0

.global cf_ItemPurifyKessyouImpl_RTTI
cf_ItemPurifyKessyouImpl_RTTI:
	.4byte cf_ItemPurifyKessyouImpl_typestr
	.4byte lbl_80532FE0

.global cf_ItemKessyouImpl_RTTI
cf_ItemKessyouImpl_RTTI:
	.4byte cf_ItemKessyouImpl_typestr
	.4byte lbl_80533098

.global cf_ItemPurifyCrystalImpl_RTTI
cf_ItemPurifyCrystalImpl_RTTI:
	.4byte cf_ItemPurifyCrystalImpl_typestr
	.4byte lbl_80533148

.global cf_ItemDropCrystalImpl_RTTI
cf_ItemDropCrystalImpl_RTTI:
	.4byte cf_ItemDropCrystalImpl_typestr
	.4byte lbl_80533200

.global cf_ItemCrystalImpl_RTTI
cf_ItemCrystalImpl_RTTI:
	.4byte cf_ItemCrystalImpl_typestr
	.4byte lbl_805332B8

.global cf_ItemEquipImpl_RTTI
cf_ItemEquipImpl_RTTI:
	.4byte cf_ItemEquipImpl_typestr
	.4byte lbl_80533368

.global cf_ItemConsImpl_RTTI
cf_ItemConsImpl_RTTI:
	.4byte cf_ItemConsImpl_typestr
	.4byte lbl_80533418

.global cf_ItemDummyImpl_RTTI
cf_ItemDummyImpl_RTTI:
	.4byte cf_ItemDummyImpl_typestr
	.4byte lbl_805334C8

.global lbl_80664C20
lbl_80664C20:
	.4byte cf_ItemImpl_typestr
	.4byte 0

.global cf_CCharEffect_RTTI
cf_CCharEffect_RTTI:
	.4byte cf_CCharEffect_typestr
	.4byte 0

.global cf_CCharEffectEne_RTTI
cf_CCharEffectEne_RTTI:
	.4byte cf_CCharEffectEne_typestr
	.4byte lbl_805335C8

.global cf_CCharEffectNpc_RTTI
cf_CCharEffectNpc_RTTI:
	.4byte cf_CCharEffectNpc_typestr
	.4byte lbl_805335F8

.global cf_CCharEffectObj_RTTI
cf_CCharEffectObj_RTTI:
	.4byte cf_CCharEffectObj_typestr
	.4byte lbl_80533628

.global cf_CCharEffectPc_RTTI
cf_CCharEffectPc_RTTI:
	.4byte cf_CCharEffectPc_typestr
	.4byte lbl_80533658


.global lbl_80664C50
lbl_80664C50:
	# ROM: 0x570830
	.4byte lbl_804FD838


.global lbl_80664C54
lbl_80664C54:
	# ROM: 0x570834
	.4byte 0xFFFFFFFF

.global CCol6Invite_RTTI
CCol6Invite_RTTI:
	.4byte CCol6Invite_typestr
	.4byte lbl_805337B8

.global CCol6System_RTTI
CCol6System_RTTI:
	.4byte CCol6System_typestr
	.4byte lbl_805338B0

.global CCol6Hint_RTTI
CCol6Hint_RTTI:
	.4byte CCol6Hint_typestr
	.4byte lbl_805339B0

.global CCol6CheckBat_RTTI
CCol6CheckBat_RTTI:
	.4byte CCol6CheckBat_typestr
	.4byte lbl_80533A98


.global lbl_80664C78
lbl_80664C78:
	# ROM: 0x570858
	.4byte lbl_804FE800


.global lbl_80664C7C
lbl_80664C7C:
	# ROM: 0x57085C
	.4byte 0x00000064

.global cf_CTaskREvent_RTTI
cf_CTaskREvent_RTTI:
	.4byte cf_CTaskREvent_typestr
	.4byte lbl_80534054

.global CTTask_cf_CTaskREvent_RTTI
CTTask_cf_CTaskREvent_RTTI:
	.4byte CTTask_cf_CTaskREvent_typestr
	.4byte lbl_8053409C

.global cf_CInfoCf_RTTI
cf_CInfoCf_RTTI:
	.4byte cf_CInfoCf_typestr
	.4byte 0

.global CMenuItem_RTTI
CMenuItem_RTTI:
	.4byte CMenuItem_typestr
	.4byte lbl_805341C8

.global cf_CREvtMem_RTTI
cf_CREvtMem_RTTI:
	.4byte cf_CREvtMem_typestr
	.4byte 0

.global cf_CTaskREvtSequence_RTTI
cf_CTaskREvtSequence_RTTI:
	.4byte cf_CTaskREvtSequence_typestr
	.4byte lbl_805343A0

.global CTTask_cf_CTaskREvtSequence_RTTI
CTTask_cf_CTaskREvtSequence_RTTI:
	.4byte CTTask_cf_CTaskREvtSequence_typestr
	.4byte lbl_805343E8


.global lbl_80664CB8
lbl_80664CB8:
	# ROM: 0x570898
	.4byte 0x2E000000


.global lbl_80664CBC
lbl_80664CBC:
	# ROM: 0x57089C
	.4byte 0x72656600


.global lbl_80664CC0
lbl_80664CC0:
	# ROM: 0x5708A0
	.4byte 0x72656600


.global lbl_80664CC4
lbl_80664CC4:
	# ROM: 0x5708A4
	.4byte 0x72656600

.global cf_CfResObjImpl_RTTI
cf_CfResObjImpl_RTTI:
	.4byte cf_CfResObjImpl_typestr
	.4byte lbl_80534780

.global lbl_80664CD0
lbl_80664CD0:
	.4byte cf_CfResImpl_typestr
	.4byte 0

.global cf_CfResReloadImpl_RTTI
cf_CfResReloadImpl_RTTI:
	.4byte cf_CfResReloadImpl_typestr
	.4byte lbl_80534828


.global lbl_80664CE0
lbl_80664CE0:
	# ROM: 0x5708C0
	.float 10.0


.global lbl_80664CE4
lbl_80664CE4:
	# ROM: 0x5708C4
	.4byte lbl_80669FC8

.global cf_CfMapEffectManager_RTTI
cf_CfMapEffectManager_RTTI:
	.4byte cf_CfMapEffectManager_typestr
	.4byte 0


.global CScnMaruShadowNw4r_RTTI
CScnMaruShadowNw4r_RTTI:
	# ROM: 0x5708D0
	.4byte CScnMaruShadowNw4r_typestr
	.4byte lbl_80534E40


.global lbl_80664CF8
lbl_80664CF8:
	# ROM: 0x5708D8
	.4byte IScnPolyShadow_typestr
	.4byte 0

.global cf_CREvtModel_RTTI
cf_CREvtModel_RTTI:
	.4byte cf_CREvtModel_typestr
	.4byte lbl_80534E90

.global cf_CREvtObj_RTTI
cf_CREvtObj_RTTI:
	.4byte cf_CREvtObj_typestr
	.4byte 0


.global lbl_80664D10
lbl_80664D10:
	# ROM: 0x5708F0
	.4byte 0x72656600


.global lbl_80664D14
lbl_80664D14:
	# ROM: 0x5708F4
	.4byte 0x72656600


.global lbl_80664D18
lbl_80664D18:
	.asciz "itm?ID"
	.balign 4


.global lbl_80664D20
lbl_80664D20:
	.asciz "itm?Per"

.global cf_CfValueItemManager_RTTI
cf_CfValueItemManager_RTTI:
	.4byte cf_CfValueItemManager_typestr
	.4byte lbl_80534EB8

.global cf_CfMapItemManager_RTTI
cf_CfMapItemManager_RTTI:
	.4byte cf_CfMapItemManager_typestr
	.4byte 0

.global CMenuZeal_RTTI
CMenuZeal_RTTI:
	.4byte CMenuZeal_typestr
	.4byte lbl_80535478


.global lbl_80664D40
lbl_80664D40:
	# ROM: 0x570920
	.4byte lbl_8066A158


.global lbl_80664D44
lbl_80664D44:
	# ROM: 0x570924
	.4byte lbl_8066A160

.global cf_CREvtCamera_RTTI
cf_CREvtCamera_RTTI:
	.4byte cf_CREvtCamera_typestr
	.4byte lbl_805354E0

.global cf_CREvtModelMap_RTTI
cf_CREvtModelMap_RTTI:
	.4byte cf_CREvtModelMap_typestr
	.4byte lbl_80535620

.global cf_CREvtModelObj_RTTI
cf_CREvtModelObj_RTTI:
	.4byte cf_CREvtModelObj_typestr
	.4byte lbl_80535854

.global cf_CREvtModelPc_RTTI
cf_CREvtModelPc_RTTI:
	.4byte cf_CREvtModelPc_typestr
	.4byte lbl_80535A90


.global lbl_80664D68
lbl_80664D68:
	# ROM: 0x570948
	.4byte lbl_8066A1E8


.global lbl_80664D6C
lbl_80664D6C:
	# ROM: 0x57094C
	.4byte lbl_8066A1F0


.global lbl_80664D70
lbl_80664D70:
	# ROM: 0x570950
	.4byte lbl_8066A1F8
	.4byte 0

.global cf_CREvtEffect_RTTI
cf_CREvtEffect_RTTI:
	.4byte cf_CREvtEffect_typestr
	.4byte lbl_80535AE4

.global CMenuPTGauge_RTTI
CMenuPTGauge_RTTI:
	.4byte CMenuPTGauge_typestr
	.4byte lbl_80535CE0


.global lbl_80664D88
lbl_80664D88:
	# ROM: 0x570968
	.float 1.0


.global lbl_80664D8C
lbl_80664D8C:
	# ROM: 0x57096C
	.float 1.0


.global lbl_80664D90
lbl_80664D90:
	# ROM: 0x570970
	.float 1.0


.global lbl_80664D94
lbl_80664D94:
	# ROM: 0x570974
	.float 1.0


.global lbl_80664D98
lbl_80664D98:
	# ROM: 0x570978
	.float 0.2
	.4byte 0

.global CMenuSelectShop_RTTI
CMenuSelectShop_RTTI:
	.4byte CMenuSelectShop_typestr
	.4byte lbl_80535DE0

.global CMenuShopSell_RTTI
CMenuShopSell_RTTI:
	.4byte CMenuShopSell_typestr
	.4byte lbl_80535E58

.global CMenuShopBuy_RTTI
CMenuShopBuy_RTTI:
	.4byte CMenuShopBuy_typestr
	.4byte lbl_80535EC8


.global CScnItemModelNw4r_RTTI
CScnItemModelNw4r_RTTI:
	# ROM: 0x570998
	.4byte CScnItemModelNw4r_typestr
	.4byte lbl_80535F30

.global cf_CfResPcImpl_RTTI
cf_CfResPcImpl_RTTI:
	.4byte cf_CfResPcImpl_typestr
	.4byte lbl_80535FB0


.global CScnItemModel_RTTI
CScnItemModel_RTTI:
	# ROM: 0x5709A8
	.4byte CScnItemModel_typestr
	.4byte lbl_80535FBC


.global lbl_80664DD0
lbl_80664DD0:
	# ROM: 0x5709B0
	.4byte CScnItem_typestr
	.4byte 0

.global CMenuPTState_RTTI
CMenuPTState_RTTI:
	.4byte CMenuPTState_typestr
	.4byte lbl_80536228


.global lbl_80664DE0
lbl_80664DE0:
	# ROM: 0x5709C0
	.4byte lbl_8066A370
	.4byte 0

.global cf_CPartsChange_RTTI
cf_CPartsChange_RTTI:
	.4byte cf_CPartsChange_typestr
	.4byte 0


.global lbl_80664DF0
lbl_80664DF0:
	# ROM: 0x5709D0
	.4byte lbl_8066A398


.global lbl_80664DF4
lbl_80664DF4:
	# ROM: 0x5709D4
	.4byte lbl_8066A3A0


.global lbl_80664DF8
lbl_80664DF8:
	.asciz "ene?ID"
	.balign 4


.global lbl_80664E00
lbl_80664E00:
	.asciz "ene?Per"


.global lbl_80664E08
lbl_80664E08:
	.asciz "ene?num"


.global lbl_80664E10
lbl_80664E10:
	# ROM: 0x5709F0
	.4byte 0xFFFFFFFC


.global lbl_80664E14
lbl_80664E14:
	# ROM: 0x5709F4
	.4byte 0xFFFFFFFC


.global lbl_80664E18
lbl_80664E18:
	.asciz "ene?ID"
	.balign 4


.global lbl_80664E20
lbl_80664E20:
	# ROM: 0x570A00
	.4byte 0x000001CC
	.4byte 0x01CD01CE

.global reslist_cf_CfPartyInfo_RTTI
reslist_cf_CfPartyInfo_RTTI:
	.4byte reslist_cf_CfPartyInfo_typestr
	.4byte lbl_80536290

.global _reslist_base_cf_CfPartyInfo_RTTI
_reslist_base_cf_CfPartyInfo_RTTI:
	.4byte _reslist_base_cf_CfPartyInfo_typestr
	.4byte 0

.global cf_CtrlMovePC_RTTI
cf_CtrlMovePC_RTTI:
	.4byte cf_CtrlMovePC_typestr
	.4byte lbl_8053651C

.global cf_CtrlMoveNpc_RTTI
cf_CtrlMoveNpc_RTTI:
	.4byte cf_CtrlMoveNpc_typestr
	.4byte lbl_80536578

.global CMenuBattleMode_RTTI
CMenuBattleMode_RTTI:
	.4byte CMenuBattleMode_typestr
	.4byte lbl_80536648

.global COccCulling_RTTI
COccCulling_RTTI:
	.4byte COccCulling_typestr
	.4byte 0

.global CSimpleEveTalkWin_RTTI
CSimpleEveTalkWin_RTTI:
	.4byte CSimpleEveTalkWin_typestr
	.4byte lbl_80536758

.global cf_CTaskCulling_RTTI
cf_CTaskCulling_RTTI:
	.4byte cf_CTaskCulling_typestr
	.4byte lbl_8053687C

.global CTTask_cf_CTaskCulling_RTTI
CTTask_cf_CTaskCulling_RTTI:
	.4byte CTTask_cf_CTaskCulling_typestr
	.4byte lbl_805368C4

.global cf_CVision_RTTI
cf_CVision_RTTI:
	.4byte cf_CVision_typestr
	.4byte lbl_80536AC0


.global lbl_80664E78
lbl_80664E78:
	# ROM: 0x570A58
	.4byte 0x3C738AFF


.global lbl_80664E7C
lbl_80664E7C:
	# ROM: 0x570A5C
	.4byte 0xF0F0FAFF


.global lbl_80664E80
lbl_80664E80:
	# ROM: 0x570A60
	.4byte 0xF0F0FAFF


.global lbl_80664E84
lbl_80664E84:
	# ROM: 0x570A64
	.4byte 0x4014D2FF


.global lbl_80664E88
lbl_80664E88:
	# ROM: 0x570A68
	.4byte 0xD42D1DFF


.global lbl_80664E8C
lbl_80664E8C:
	# ROM: 0x570A6C
	.4byte 0x0F0F0FFF


.global lbl_80664E90
lbl_80664E90:
	# ROM: 0x570A70
	.4byte 0xFFFFFFFF


.global lbl_80664E94
lbl_80664E94:
	# ROM: 0x570A74
	.4byte 0xFFFFFFFF


.global lbl_80664E98
lbl_80664E98:
	# ROM: 0x570A78
	.4byte 0xFFFFFFFF


.global lbl_80664E9C
lbl_80664E9C:
	# ROM: 0x570A7C
	.4byte 0xFFFFFFFF


.global lbl_80664EA0
lbl_80664EA0:
	# ROM: 0x570A80
	.4byte 0x785AFFFF


.global lbl_80664EA4
lbl_80664EA4:
	# ROM: 0x570A84
	.4byte 0xFFAC98FF


.global lbl_80664EA8
lbl_80664EA8:
	# ROM: 0x570A88
	.4byte 0x79E56DFF


.global lbl_80664EAC
lbl_80664EAC:
	# ROM: 0x570A8C
	.4byte 0x808080FF

.global CMenuVision_RTTI
CMenuVision_RTTI:
	.4byte CMenuVision_typestr
	.4byte lbl_80536DB0

.global CMenuBattleCommu_RTTI
CMenuBattleCommu_RTTI:
	.4byte CMenuBattleCommu_typestr
	.4byte lbl_80536EB0

.global cf_CPcEffect07_RTTI
cf_CPcEffect07_RTTI:
	.4byte cf_CPcEffect07_typestr
	.4byte lbl_80536F30

.global lbl_80664EC8
lbl_80664EC8:
	.4byte cf_IPcEffect_typestr
	.4byte 0

.global CMenuGetItemMulti_RTTI
CMenuGetItemMulti_RTTI:
	.4byte CMenuGetItemMulti_typestr
	.4byte lbl_80537138


.global lbl_80664ED8
lbl_80664ED8:
	# ROM: 0x570AB8
	.4byte 0x00000032


.global lbl_80664EDC
lbl_80664EDC:
	# ROM: 0x570ABC
	.4byte 0x00000004


.global lbl_80664EE0
lbl_80664EE0:
	# ROM: 0x570AC0
	.4byte 0x0F0A050A
	.4byte 0x0F000000


.global lbl_80664EE8
lbl_80664EE8:
	# ROM: 0x570AC8
	.4byte 0x0003050A
	.4byte 0


.global lbl_80664EF0
lbl_80664EF0:
	# ROM: 0x570AD0
	.4byte 0x140F050A
	.4byte 0


.global lbl_80664EF8
lbl_80664EF8:
	# ROM: 0x570AD8
	.4byte 0x000A0F32
	.4byte 0


.global lbl_80664F00
lbl_80664F00:
	# ROM: 0x570AE0
	.4byte 0x03EB03EC
	.4byte 0x03EE0000

.global cf_CSuddenCommu_RTTI
cf_CSuddenCommu_RTTI:
	.4byte cf_CSuddenCommu_typestr
	.4byte lbl_80537188

.global CMenuKizunaTalk_RTTI
CMenuKizunaTalk_RTTI:
	.4byte CMenuKizunaTalk_typestr
	.4byte lbl_80537314

.global CMenuItemExchange_RTTI
CMenuItemExchange_RTTI:
	.4byte CMenuItemExchange_typestr
	.4byte lbl_805373B0


.global lbl_80664F20
lbl_80664F20:
	# ROM: 0x570B00
	.float 1.0
	.4byte 0


.global lbl_80664F28
lbl_80664F28:
	# ROM: 0x570B08
	.4byte 0xFFFFFFFF
	.4byte 0

.global cf_CfPadTask_RTTI
cf_CfPadTask_RTTI:
	.4byte cf_CfPadTask_typestr
	.4byte lbl_8053749C

.global CTTask_cf_CfPadTask_RTTI
CTTask_cf_CfPadTask_RTTI:
	.4byte CTTask_cf_CfPadTask_typestr
	.4byte lbl_805374E4

.global cf_CREvtLight_RTTI
cf_CREvtLight_RTTI:
	.4byte cf_CREvtLight_typestr
	.4byte lbl_80537570

.global CBgTex_RTTI
CBgTex_RTTI:
	.4byte CBgTex_typestr
	.4byte lbl_80537608

.global CTitleAHelp_RTTI
CTitleAHelp_RTTI:
	.4byte CTitleAHelp_typestr
	.4byte lbl_80537D40

.global CItemBoxGrid_RTTI
CItemBoxGrid_RTTI:
	.4byte CItemBoxGrid_typestr
	.4byte lbl_80537F80

.global CArtsBookItem_RTTI
CArtsBookItem_RTTI:
	.4byte CArtsBookItem_typestr
	.4byte lbl_80537FA0

.global CVisionItem_RTTI
CVisionItem_RTTI:
	.4byte CVisionItem_typestr
	.4byte lbl_80537FC0

.global CQuestItem_RTTI
CQuestItem_RTTI:
	.4byte CQuestItem_typestr
	.4byte 0

.global CSubCur_RTTI
CSubCur_RTTI:
	.4byte CSubCur_typestr
	.4byte lbl_80538008

.global CCur22_RTTI
CCur22_RTTI:
	.4byte CCur22_typestr
	.4byte lbl_80538030

.global CCur18_RTTI
CCur18_RTTI:
	.4byte CCur18_typestr
	.4byte lbl_80538058

.global CCur16_RTTI
CCur16_RTTI:
	.4byte CCur16_typestr
	.4byte lbl_80538080

.global CCur15_RTTI
CCur15_RTTI:
	.4byte CCur15_typestr
	.4byte lbl_805380A8

.global CCur14_RTTI
CCur14_RTTI:
	.4byte CCur14_typestr
	.4byte lbl_805380D0

.global CCur11_RTTI
CCur11_RTTI:
	.4byte CCur11_typestr
	.4byte lbl_805380F8

.global CCur09_RTTI
CCur09_RTTI:
	.4byte CCur09_typestr
	.4byte lbl_80538120

.global CCur07_RTTI
CCur07_RTTI:
	.4byte CCur07_typestr
	.4byte lbl_80538148

.global CSortMenu_RTTI
CSortMenu_RTTI:
	.4byte CSortMenu_typestr
	.4byte lbl_80538210

.global CItemBoxInfo2_RTTI
CItemBoxInfo2_RTTI:
	.4byte CItemBoxInfo2_typestr
	.4byte lbl_805382D0

.global CItemBoxInfo_RTTI
CItemBoxInfo_RTTI:
	.4byte CItemBoxInfo_typestr
	.4byte lbl_80538368

.global CNumSelect_RTTI
CNumSelect_RTTI:
	.4byte CNumSelect_typestr
	.4byte lbl_80538400

.global CItemBoxLine_RTTI
CItemBoxLine_RTTI:
	.4byte CItemBoxLine_typestr
	.4byte lbl_80538528

.global CIBLTabCur_RTTI
CIBLTabCur_RTTI:
	.4byte CIBLTabCur_typestr
	.4byte lbl_80538550

.global CScrollBar_RTTI
CScrollBar_RTTI:
	.4byte CScrollBar_typestr
	.4byte lbl_80538618

.global cf_CfGimmickObject_RTTI
cf_CfGimmickObject_RTTI:
	.4byte cf_CfGimmickObject_typestr
	.4byte lbl_8053874C

.global cf_CfGimmick_RTTI
cf_CfGimmick_RTTI:
	.4byte cf_CfGimmick_typestr
	.4byte lbl_80538760

.global cf_CfResTboxImpl_RTTI
cf_CfResTboxImpl_RTTI:
	.4byte cf_CfResTboxImpl_typestr
	.4byte lbl_80538A28

.global CPartyStateWin_RTTI
CPartyStateWin_RTTI:
	.4byte CPartyStateWin_typestr
	.4byte lbl_80538B30

.global CModelDisp_RTTI
CModelDisp_RTTI:
	.4byte CModelDisp_typestr
	.4byte lbl_80538B74


.global lbl_80665020
lbl_80665020:
	# ROM: 0x570C00
	.4byte lbl_80503460
	.4byte 0

.global CPartyState_RTTI
CPartyState_RTTI:
	.4byte CPartyState_typestr
	.4byte lbl_80538C08


.global lbl_80665030
lbl_80665030:
	# ROM: 0x570C10
	.4byte 0x00000007
	.4byte 0x00000012

.global CModelDispEquip_RTTI
CModelDispEquip_RTTI:
	.4byte CModelDispEquip_typestr
	.4byte lbl_80538D5C

.global CEquipChange_RTTI
CEquipChange_RTTI:
	.4byte CEquipChange_typestr
	.4byte lbl_80538EC8


.global lbl_80665048
lbl_80665048:
	# ROM: 0x570C28
	.4byte 0x282D343C
	.4byte 0x505A5C63


.global lbl_80665050
lbl_80665050:
	.asciz "skill1"
	.balign 4


.global lbl_80665058
lbl_80665058:
	# ROM: 0x570C38
	.4byte 0x0000000A
	.4byte 0x0000000A

.global reslist_cf_CfMapMineManager_MinePoint_RTTI
reslist_cf_CfMapMineManager_MinePoint_RTTI:
	.4byte reslist_cf_CfMapMineManager_MinePoint_typestr
	.4byte lbl_80538EF0

.global _reslist_base_cf_CfMapMineManager_MinePoint_RTTI
_reslist_base_cf_CfMapMineManager_MinePoint_RTTI:
	.4byte _reslist_base_cf_CfMapMineManager_MinePoint_typestr
	.4byte 0

.global CItemBoxGridSubMenu_RTTI
CItemBoxGridSubMenu_RTTI:
	.4byte CItemBoxGridSubMenu_typestr
	.4byte lbl_80538F90


.global lbl_80665078
lbl_80665078:
	# ROM: 0x570C58
	.float 1.0


.global lbl_8066507C
lbl_8066507C:
	# ROM: 0x570C5C
	.float 1.0


.global lbl_80665080
lbl_80665080:
	# ROM: 0x570C60
	.4byte lbl_80503D48
	.4byte 0

.global cf_CfGimmickElv_RTTI
cf_CfGimmickElv_RTTI:
	.4byte cf_CfGimmickElv_typestr
	.4byte lbl_805390A4


.global lbl_80665090
lbl_80665090:
	# ROM: 0x570C70
	.4byte lbl_8066AC68
	.4byte 0

.global cf_CfGimmickLock_RTTI
cf_CfGimmickLock_RTTI:
	.4byte cf_CfGimmickLock_typestr
	.4byte lbl_805390DC

.global cf_CfGimmickWarp_RTTI
cf_CfGimmickWarp_RTTI:
	.4byte cf_CfGimmickWarp_typestr
	.4byte lbl_8053918C

.global cf_CfGimmickJump_RTTI
cf_CfGimmickJump_RTTI:
	.4byte cf_CfGimmickJump_typestr
	.4byte lbl_805391F4


.global lbl_806650B0
lbl_806650B0:
	# ROM: 0x570C90
	.4byte lbl_8066ACF8
	.4byte lbl_8066AD00

.global cf_CfGimmickItem_RTTI
cf_CfGimmickItem_RTTI:
	.4byte cf_CfGimmickItem_typestr
	.4byte lbl_80539274

.global CMenuMakeCrystal_RTTI
CMenuMakeCrystal_RTTI:
	.4byte CMenuMakeCrystal_typestr
	.4byte lbl_805392C0

.global CMakeCrystalWin_RTTI
CMakeCrystalWin_RTTI:
	.4byte CMakeCrystalWin_typestr
	.4byte lbl_805393C4

.global CMCCrystalBox_RTTI
CMCCrystalBox_RTTI:
	.4byte CMCCrystalBox_typestr
	.4byte lbl_805394A0

.global CMCCrystalInfo_RTTI
CMCCrystalInfo_RTTI:
	.4byte CMCCrystalInfo_typestr
	.4byte lbl_80539538

.global CModelDispMakeCrystal_RTTI
CModelDispMakeCrystal_RTTI:
	.4byte CModelDispMakeCrystal_typestr
	.4byte lbl_805396F0

.global CMCCylinderGauge_RTTI
CMCCylinderGauge_RTTI:
	.4byte CMCCylinderGauge_typestr
	.4byte 0

.global CMCCrystalList_RTTI
CMCCrystalList_RTTI:
	.4byte CMCCrystalList_typestr
	.4byte lbl_805397C0

.global CMCEffCylinder_RTTI
CMCEffCylinder_RTTI:
	.4byte CMCEffCylinder_typestr
	.4byte 0

.global CMCEffDivide_RTTI
CMCEffDivide_RTTI:
	.4byte CMCEffDivide_typestr
	.4byte lbl_805397F4

.global CMCEffUpRank_RTTI
CMCEffUpRank_RTTI:
	.4byte CMCEffUpRank_typestr
	.4byte lbl_80539814

.global CMCEffCrystal_RTTI
CMCEffCrystal_RTTI:
	.4byte CMCEffCrystal_typestr
	.4byte 0

.global CMCEffFailure_RTTI
CMCEffFailure_RTTI:
	.4byte CMCEffFailure_typestr
	.4byte lbl_80539844

.global CMCEffSuccess_RTTI
CMCEffSuccess_RTTI:
	.4byte CMCEffSuccess_typestr
	.4byte 0

.global CMCEffUpPrm_RTTI
CMCEffUpPrm_RTTI:
	.4byte CMCEffUpPrm_typestr
	.4byte 0

.global CMCEffUpGreen_RTTI
CMCEffUpGreen_RTTI:
	.4byte CMCEffUpGreen_typestr
	.4byte lbl_80539880

.global CMCEffUpBlue_RTTI
CMCEffUpBlue_RTTI:
	.4byte CMCEffUpBlue_typestr
	.4byte lbl_805398A0

.global CMCEffUpRed_RTTI
CMCEffUpRed_RTTI:
	.4byte CMCEffUpRed_typestr
	.4byte lbl_805398C0

.global CMCEffStart_RTTI
CMCEffStart_RTTI:
	.4byte CMCEffStart_typestr
	.4byte 0

.global CMenuQstCnt_RTTI
CMenuQstCnt_RTTI:
	.4byte CMenuQstCnt_typestr
	.4byte lbl_805399A0


.global lbl_80665158
lbl_80665158:
	# ROM: 0x570D38
	.4byte 0xFFFFFFFF
	.4byte 0

.global CQstLogList_RTTI
CQstLogList_RTTI:
	.4byte CQstLogList_typestr
	.4byte lbl_80539AC8

.global CQstLogInfo_RTTI
CQstLogInfo_RTTI:
	.4byte CQstLogInfo_typestr
	.4byte lbl_80539CB8

.global CSysWin_RTTI
CSysWin_RTTI:
	.4byte CSysWin_typestr
	.4byte lbl_80539D54

.global CSelShopWin_RTTI
CSelShopWin_RTTI:
	.4byte CSelShopWin_typestr
	.4byte lbl_80539DE8

.global CExchangeWin_RTTI
CExchangeWin_RTTI:
	.4byte CExchangeWin_typestr
	.4byte lbl_80539E80

.global CPresentWin_RTTI
CPresentWin_RTTI:
	.4byte CPresentWin_typestr
	.4byte lbl_80539F18

.global CMCCrystalSupport_RTTI
CMCCrystalSupport_RTTI:
	.4byte CMCCrystalSupport_typestr
	.4byte lbl_80539FB0

.global CMenuArtsSet_RTTI
CMenuArtsSet_RTTI:
	.4byte CMenuArtsSet_typestr
	.4byte lbl_80539FF8


.global lbl_806651A0
lbl_806651A0:
	# ROM: 0x570D80
	.4byte 0x01000000
	.4byte 0

.global CArtsList_RTTI
CArtsList_RTTI:
	.4byte CArtsList_typestr
	.4byte lbl_8053A148
	
.global CArtsInfo_RTTI
CArtsInfo_RTTI:
	.4byte CArtsInfo_typestr
	.4byte lbl_8053A2C8


.global lbl_806651B8
lbl_806651B8:
	# ROM: 0x570D98
	.4byte lbl_8066AF90
	.4byte 0

.global cf_CfNandManager_RTTI
cf_CfNandManager_RTTI:
	.4byte cf_CfNandManager_typestr
	.4byte lbl_8053A438

.global CTTask_cf_CfNandManager_RTTI
CTTask_cf_CfNandManager_RTTI:
	.4byte CTTask_cf_CfNandManager_typestr
	.4byte lbl_8053A490

.global CMenuMapSelect_RTTI
CMenuMapSelect_RTTI:
	.4byte CMenuMapSelect_typestr
	.4byte lbl_8053A518

.global CMapSel_RTTI
CMapSel_RTTI:
	.4byte CMapSel_typestr
	.4byte lbl_8053A650

.global CFade_RTTI
CFade_RTTI:
	.4byte CFade_typestr
	.4byte lbl_8053A6E8

.global CFloorMap_RTTI
CFloorMap_RTTI:
	.4byte CFloorMap_typestr
	.4byte lbl_8053A868

.global CTargetCur_RTTI
CTargetCur_RTTI:
	.4byte CTargetCur_typestr
	.4byte lbl_8053A880

.global CLandCur_RTTI
CLandCur_RTTI:
	.4byte CLandCur_typestr
	.4byte lbl_8053A898

.global CFloorMarker_RTTI
CFloorMarker_RTTI:
	.4byte CFloorMarker_typestr
	.4byte lbl_8053A8B0

.global CFloorCur_RTTI
CFloorCur_RTTI:
	.4byte CFloorCur_typestr
	.4byte 0

.global CMenuMapSelectSC_RTTI
CMenuMapSelectSC_RTTI:
	.4byte CMenuMapSelectSC_typestr
	.4byte lbl_8053A920

.global CMenuPause_RTTI
CMenuPause_RTTI:
	.4byte CMenuPause_typestr
	.4byte lbl_8053AA18

.global CMenuCollepedia_RTTI
CMenuCollepedia_RTTI:
	.4byte CMenuCollepedia_typestr
	.4byte lbl_8053AA90

.global CCollepedia_RTTI
CCollepedia_RTTI:
	.4byte CCollepedia_typestr
	.4byte lbl_8053AC20

.global CCLPCur_RTTI
CCLPCur_RTTI:
	.4byte CCLPCur_typestr
	.4byte 0

.global CMenuKizunagram_RTTI
CMenuKizunagram_RTTI:
	.4byte CMenuKizunagram_typestr
	.4byte lbl_8053ACA0

.global CKizunagram_RTTI
CKizunagram_RTTI:
	.4byte CKizunagram_typestr
	.4byte lbl_8053AD90

.global CKizunaInfo_RTTI
CKizunaInfo_RTTI:
	.4byte CKizunaInfo_typestr
	.4byte 0

.global CKizunaLine_RTTI
CKizunaLine_RTTI:
	.4byte CKizunaLine_typestr
	.4byte 0

.global CKizunaCur_RTTI
CKizunaCur_RTTI:
	.4byte CKizunaCur_typestr
	.4byte 0

.global CKizunaRadar_RTTI
CKizunaRadar_RTTI:
	.4byte CKizunaRadar_typestr
	.4byte 0

.global CPcKizunagram_RTTI
CPcKizunagram_RTTI:
	.4byte CPcKizunagram_typestr
	.4byte lbl_8053AE58

.global CPcKizunaCur_RTTI
CPcKizunaCur_RTTI:
	.4byte CPcKizunaCur_typestr
	.4byte 0


.global lbl_80665278
lbl_80665278:
	# ROM: 0x570E58
	.4byte 0xFFFFFFFF
	.4byte 0

.global CMenuPassiveSkill_RTTI
CMenuPassiveSkill_RTTI:
	.4byte CMenuPassiveSkill_typestr
	.4byte lbl_8053B0A0

.global UI_CPassiveSkill_RTTI
UI_CPassiveSkill_RTTI:
	.4byte UI_CPassiveSkill_typestr
	.4byte lbl_8053B1A8

.global UI_CPassiveSkillLine_RTTI
UI_CPassiveSkillLine_RTTI:
	.4byte UI_CPassiveSkillLine_typestr
	.4byte 0

.global UI_CPassiveSkillInfo_RTTI
UI_CPassiveSkillInfo_RTTI:
	.4byte UI_CPassiveSkillInfo_typestr
	.4byte 0

.global UI_CPassiveSkillCur_RTTI
UI_CPassiveSkillCur_RTTI:
	.4byte UI_CPassiveSkillCur_typestr
	.4byte 0


.global lbl_806652A8
lbl_806652A8:
	# ROM: 0x570E88
	.4byte lbl_8066B20C
	.4byte 0

.global cf_CfGimmickEne_RTTI
cf_CfGimmickEne_RTTI:
	.4byte cf_CfGimmickEne_typestr
	.4byte lbl_8053B254

.global CMenuBattleEnd_RTTI
CMenuBattleEnd_RTTI:
	.4byte CMenuBattleEnd_typestr
	.4byte lbl_8053B328

.global CMenuPlayAward_RTTI
CMenuPlayAward_RTTI:
	.4byte CMenuPlayAward_typestr
	.4byte lbl_8053B3A0

.global CPlayAwardList_RTTI
CPlayAwardList_RTTI:
	.4byte CPlayAwardList_typestr
	.4byte lbl_8053B460

.global CMenuKizunaTalkList_RTTI
CMenuKizunaTalkList_RTTI:
	.4byte CMenuKizunaTalkList_typestr
	.4byte lbl_8053B4A8

.global CKizunaTalkList_RTTI
CKizunaTalkList_RTTI:
	.4byte CKizunaTalkList_typestr
	.4byte lbl_8053B568

.global CSysWinBuff_RTTI
CSysWinBuff_RTTI:
	.4byte CSysWinBuff_typestr
	.4byte lbl_8053B63C

.global cf_ICamControlClassic_RTTI
cf_ICamControlClassic_RTTI:
	.4byte cf_ICamControlClassic_typestr
	.4byte lbl_8053B6B8

.global cf_ICamControlGc_RTTI
cf_ICamControlGc_RTTI:
	.4byte cf_ICamControlGc_typestr
	.4byte lbl_8053B6F8

.global cf_ICamControlRemote_RTTI
cf_ICamControlRemote_RTTI:
	.4byte cf_ICamControlRemote_typestr
	.4byte lbl_8053B740

.global lbl_80665300
lbl_80665300:
	.4byte cf_ICamControl_typestr
	.4byte 0

.global cf_CfObjectImplTbox_RTTI
cf_CfObjectImplTbox_RTTI:
	.4byte cf_CfObjectImplTbox_typestr
	.4byte lbl_8053B858

.global CMenuLvUp_RTTI
CMenuLvUp_RTTI:
	.4byte CMenuLvUp_typestr
	.4byte lbl_8053B940


.global lbl_80665318
lbl_80665318:
	# ROM: 0x570EF8
	.4byte 0xFFFFFFFF


.global lbl_8066531C
lbl_8066531C:
	# ROM: 0x570EFC
	.4byte 0x000007DB


.global lbl_80665320
lbl_80665320:
	# ROM: 0x570F00
	.4byte 0x000007DB
	.4byte 0x000007DC


.global lbl_80665328
lbl_80665328:
	# ROM: 0x570F08
	.4byte 0x000007DD
	.4byte 0


.global lbl_80665330
lbl_80665330:
	# ROM: 0x570F10
	.4byte 0x000007DD
	.4byte 0x000007E0

.global cf_CChainChance_RTTI
cf_CChainChance_RTTI:
	.4byte cf_CChainChance_typestr
	.4byte 0

.global cf_CChainTimer_RTTI
cf_CChainTimer_RTTI:
	.4byte cf_CChainTimer_typestr
	.4byte 0

.global cf_CChainMember_RTTI
cf_CChainMember_RTTI:
	.4byte cf_CChainMember_typestr
	.4byte 0

.global cf_CChainActor_RTTI
cf_CChainActor_RTTI:
	.4byte cf_CChainActor_typestr
	.4byte 0

.global cf_CChainActorList_RTTI
cf_CChainActorList_RTTI:
	.4byte cf_CChainActorList_typestr
	.4byte 0

.global reslist_cf_CChainActor_RTTI
reslist_cf_CChainActor_RTTI:
	.4byte reslist_cf_CChainActor_typestr
	.4byte lbl_8053BAD8

.global _reslist_base_cf_CChainActor_RTTI
_reslist_base_cf_CChainActor_RTTI:
	.4byte _reslist_base_cf_CChainActor_typestr
	.4byte 0

.global cf_CChainTemp_RTTI
cf_CChainTemp_RTTI:
	.4byte cf_CChainTemp_typestr
	.4byte 0


.global lbl_80665378
lbl_80665378:
	# ROM: 0x570F58
	.4byte 0x00000001
	.4byte 0

.global cf_Flusher_cf_CfObjectActor_RTTI
cf_Flusher_cf_CfObjectActor_RTTI:
	.4byte cf_Flusher_cf_CfObjectActor_typestr
	.4byte 0

.global CSysWinScenarioLog_RTTI
CSysWinScenarioLog_RTTI:
	.4byte CSysWinScenarioLog_typestr
	.4byte lbl_8053BBD4

.global cf_CChainActorEne_RTTI
cf_CChainActorEne_RTTI:
	.4byte cf_CChainActorEne_typestr
	.4byte lbl_8053BC88

.global cf_CChainActorPc_RTTI
cf_CChainActorPc_RTTI:
	.4byte cf_CChainActorPc_typestr
	.4byte lbl_8053BD10

.global CEquipItemBox_RTTI
CEquipItemBox_RTTI:
	.4byte CEquipItemBox_typestr
	.4byte lbl_8053BE98

.global CEIBPageCur_RTTI
CEIBPageCur_RTTI:
	.4byte CEIBPageCur_typestr
	.4byte lbl_8053BEB0

.global CEIBCur_RTTI
CEIBCur_RTTI:
	.4byte CEIBCur_typestr
	.4byte 0

.global CMenuSave_RTTI
CMenuSave_RTTI:
	.4byte CMenuSave_typestr
	.4byte lbl_8053BF00


.global lbl_806653C0
lbl_806653C0:
	# ROM: 0x570FA0
	.4byte 0x00000003


.global lbl_806653C4
lbl_806653C4:
	# ROM: 0x570FA4
	.4byte 0xFFFFFFFF


.global lbl_806653C8
lbl_806653C8:
	# ROM: 0x570FA8
	.4byte 0xFFFFFFFF
	.4byte 0

.global CSaveLoad_RTTI
CSaveLoad_RTTI:
	.4byte CSaveLoad_typestr
	.4byte lbl_8053BFF8

.global CSLCur_RTTI
CSLCur_RTTI:
	.4byte CSLCur_typestr
	.4byte 0

.global lbl_806653E0
lbl_806653E0:
	.4byte cf_CfAward_typestr
	.4byte lbl_8053C030

.global lbl_806653E8
lbl_806653E8:
	.4byte cf_CAwardBase_typestr
	.4byte 0


.global lbl_806653F0
lbl_806653F0:
	# ROM: 0x570FD0
	.4byte lbl_8050B228
	.4byte 0

.global CMenuPTChangeNotice_RTTI
CMenuPTChangeNotice_RTTI:
	.4byte CMenuPTChangeNotice_typestr
	.4byte lbl_8053C104

.global cf_CChainCombo_RTTI
cf_CChainCombo_RTTI:
	.4byte cf_CChainCombo_typestr
	.4byte 0

.global CSysWinSave_RTTI
CSysWinSave_RTTI:
	.4byte CSysWinSave_typestr
	.4byte lbl_8053C218

.global cf_CREvtMovie_RTTI
cf_CREvtMovie_RTTI:
	.4byte cf_CREvtMovie_typestr
	.4byte lbl_8053C280

.global CTaskGamePic_RTTI
CTaskGamePic_RTTI:
	.4byte CTaskGamePic_typestr
	.4byte lbl_8053C354

.global CTTask_CTaskGamePic_RTTI
CTTask_CTaskGamePic_RTTI:
	.4byte CTTask_CTaskGamePic_typestr
	.4byte lbl_8053C39C

.global CTaskGameEvt_RTTI
CTaskGameEvt_RTTI:
	.4byte CTaskGameEvt_typestr
	.4byte lbl_8053C47C

.global CTTask_CTaskGameEvt_RTTI
CTTask_CTaskGameEvt_RTTI:
	.4byte CTTask_CTaskGameEvt_typestr
	.4byte lbl_8053C4C4

.global lbl_80665438
lbl_80665438:
	.4byte lbl_8057A538
	.4byte 0

.global lbl_80665440
lbl_80665440:
	.4byte lbl_8057A628
	.4byte 0

.global lbl_80665448
lbl_80665448:
	.4byte lbl_8057A63C
	.4byte 0

.global lbl_80665450
lbl_80665450:
	.4byte lbl_8057A650
	.4byte 0

.global lbl_80665458
lbl_80665458:
	.4byte lbl_8057A660
	.4byte 0

.global lbl_80665460
lbl_80665460:
	.4byte lbl_8057A690
	.4byte 0

.global lbl_80665468
lbl_80665468:
	.4byte lbl_8057A6A8
	.4byte 0

.global lbl_80665470
lbl_80665470:
	.4byte lbl_8057A6B8
	.4byte 0

.global lbl_80665478
lbl_80665478:
	.4byte lbl_8057A6C8
	.4byte 0

.global lbl_80665480
lbl_80665480:
	.4byte lbl_8057A728
	.4byte 0

.global lbl_80665488
lbl_80665488:
	.4byte lbl_8057A768
	.4byte 0

.global lbl_80665490
lbl_80665490:
	.4byte lbl_8057A77C
	.4byte 0

.global lbl_80665498
lbl_80665498:
	.4byte lbl_8057A788
	.4byte 0

.global lbl_806654A0
lbl_806654A0:
	.4byte lbl_8057A7A0
	.4byte 0

.global lbl_806654A8
lbl_806654A8:
	.4byte lbl_8057A7B0
	.4byte 0

.global lbl_806654B0
lbl_806654B0:
	.4byte lbl_8057A7E0
	.4byte 0

.global lbl_806654B8
lbl_806654B8:
	.4byte lbl_8057A7F4
	.4byte 0

.global lbl_806654C0
lbl_806654C0:
	.4byte lbl_8057A808
	.4byte 0

.global lbl_806654C8
lbl_806654C8:
	.4byte lbl_8057A818
	.4byte 0

.global cf_CHelp_EtherMakeTIPS_RTTI
cf_CHelp_EtherMakeTIPS_RTTI:
	.4byte cf_CHelp_EtherMakeTIPS_typestr
	.4byte lbl_8053C76C

.global cf_CHelp_EtherMake_RTTI
cf_CHelp_EtherMake_RTTI:
	.4byte cf_CHelp_EtherMake_typestr
	.4byte lbl_8053C780

.global cf_CHelp_TalkTIPS_RTTI
cf_CHelp_TalkTIPS_RTTI:
	.4byte cf_CHelp_TalkTIPS_typestr
	.4byte lbl_8053C7B0

.global cf_CHelp_Talk_RTTI
cf_CHelp_Talk_RTTI:
	.4byte cf_CHelp_Talk_typestr
	.4byte lbl_8053C7CC

.global cf_CHelp_KizunaTIPS_RTTI
cf_CHelp_KizunaTIPS_RTTI:
	.4byte cf_CHelp_KizunaTIPS_typestr
	.4byte lbl_8053C7FC

.global cf_CHelp_Kizuna_RTTI
cf_CHelp_Kizuna_RTTI:
	.4byte cf_CHelp_Kizuna_typestr
	.4byte lbl_8053C810

.global cf_CHelp_EndEventTIPS_RTTI
cf_CHelp_EndEventTIPS_RTTI:
	.4byte cf_CHelp_EndEventTIPS_typestr
	.4byte lbl_8053C840

.global cf_CHelp_EndEvent_RTTI
cf_CHelp_EndEvent_RTTI:
	.4byte cf_CHelp_EndEvent_typestr
	.4byte lbl_8053C85C

.global cf_CHelp_AlwaysTIPS_RTTI
cf_CHelp_AlwaysTIPS_RTTI:
	.4byte cf_CHelp_AlwaysTIPS_typestr
	.4byte lbl_8053C88C

.global cf_CHelp_Always_RTTI
cf_CHelp_Always_RTTI:
	.4byte cf_CHelp_Always_typestr
	.4byte lbl_8053C8BC

.global cf_CHelpSwitch_RTTI
cf_CHelpSwitch_RTTI:
	.4byte cf_CHelpSwitch_typestr
	.4byte lbl_8053C8C8

.global cf_CHelp_RTTI
cf_CHelp_RTTI:
	.4byte cf_CHelp_typestr
	.4byte 0

.global cf_CHelpManager_RTTI
cf_CHelpManager_RTTI:
	.4byte cf_CHelpManager_typestr
	.4byte 0

.global CMCGetItemBox_RTTI
CMCGetItemBox_RTTI:
	.4byte CMCGetItemBox_typestr
	.4byte lbl_8053C968

.global CMenuTutorial_RTTI
CMenuTutorial_RTTI:
	.4byte CMenuTutorial_typestr
	.4byte lbl_8053C9B0

.global CTutorial_RTTI
CTutorial_RTTI:
	.4byte CTutorial_typestr
	.4byte lbl_8053CA70

.global CMenuOption_RTTI
CMenuOption_RTTI:
	.4byte CMenuOption_typestr
	.4byte lbl_8053CAB8

.global COption_RTTI
COption_RTTI:
	.4byte COption_typestr
	.4byte lbl_8053CE50

.global CCur19_RTTI
CCur19_RTTI:
	.4byte CCur19_typestr
	.4byte lbl_8053CE78

.global CMenuSkipTimer_RTTI
CMenuSkipTimer_RTTI:
	.4byte CMenuSkipTimer_typestr
	.4byte lbl_8053CF48


.global lbl_80665570
lbl_80665570:
	# ROM: 0x571150
	.float 0.2
	.4byte 0

.global CSkipTimer_RTTI
CSkipTimer_RTTI:
	.4byte CSkipTimer_typestr
	.4byte lbl_8053D008

.global CSkipTimer2_RTTI
CSkipTimer2_RTTI:
	.4byte CSkipTimer2_typestr
	.4byte 0

.global cf_CChainEffect_RTTI
cf_CChainEffect_RTTI:
	.4byte cf_CChainEffect_typestr
	.4byte lbl_8053D030


.global lbl_80665590
lbl_80665590:
	# ROM: 0x571170
	.4byte lbl_8050BCC0
	.4byte 0

.global cf_CCharVoice_RTTI
cf_CCharVoice_RTTI:
	.4byte cf_CCharVoice_typestr
	.4byte 0

.global cf_CCharVoiceMan_RTTI
cf_CCharVoiceMan_RTTI:
	.4byte cf_CCharVoiceMan_typestr
	.4byte lbl_8053D078


.global lbl_806655A8
lbl_806655A8:
	# ROM: 0x571188
	.float 1.0


.global lbl_806655AC
lbl_806655AC:
	# ROM: 0x57118C
	.4byte 0x41F00000


.global lbl_806655B0
lbl_806655B0:
	# ROM: 0x571190
	.4byte 0x447A0000
	.4byte 0

.global cf_CVS_THREAD_RTTI
cf_CVS_THREAD_RTTI:
	.4byte cf_CVS_THREAD_typestr
	.4byte 0


.global lbl_806655C0
lbl_806655C0:
	# ROM: 0x5711A0
	.4byte 0x00000B57
	.4byte 0x00000B58


.global lbl_806655C8
lbl_806655C8:
	# ROM: 0x5711A8
	.4byte 0x00000B5D
	.4byte 0x00000B5E

.global cf_CVS_THREAD_BATTLE_END_RTTI
cf_CVS_THREAD_BATTLE_END_RTTI:
	.4byte cf_CVS_THREAD_BATTLE_END_typestr
	.4byte lbl_8053D164

.global cf_CVS_THREAD_BUF_RTTI
cf_CVS_THREAD_BUF_RTTI:
	.4byte cf_CVS_THREAD_BUF_typestr
	.4byte lbl_8053D1B0

.global cf_CVS_THREAD_CHAIN_RTTI
cf_CVS_THREAD_CHAIN_RTTI:
	.4byte cf_CVS_THREAD_CHAIN_typestr
	.4byte lbl_8053D1E8

.global cf_CVS_THREAD_DOWN_RTTI
cf_CVS_THREAD_DOWN_RTTI:
	.4byte cf_CVS_THREAD_DOWN_typestr
	.4byte lbl_8053D238

.global cf_CVS_THREAD_EHP_RTTI
cf_CVS_THREAD_EHP_RTTI:
	.4byte cf_CVS_THREAD_EHP_typestr
	.4byte lbl_8053D2D8

.global cf_CVS_THREAD_FAINT_RTTI
cf_CVS_THREAD_FAINT_RTTI:
	.4byte cf_CVS_THREAD_FAINT_typestr
	.4byte lbl_8053D328

.global cf_CVS_THREAD_HAGE_RTTI
cf_CVS_THREAD_HAGE_RTTI:
	.4byte cf_CVS_THREAD_HAGE_typestr
	.4byte lbl_8053D378

.global cf_CVS_THREAD_HP_RTTI
cf_CVS_THREAD_HP_RTTI:
	.4byte cf_CVS_THREAD_HP_typestr
	.4byte lbl_8053D3C8


.global lbl_80665610
lbl_80665610:
	# ROM: 0x5711F0
	.4byte 0x00000659
	.4byte 0x0000065A

.global cf_CVS_THREAD_PARTY_GAGE_RTTI
cf_CVS_THREAD_PARTY_GAGE_RTTI:
	.4byte cf_CVS_THREAD_PARTY_GAGE_typestr
	.4byte lbl_8053D418

.global cf_CVS_THREAD_REVIVE_RTTI
cf_CVS_THREAD_REVIVE_RTTI:
	.4byte cf_CVS_THREAD_REVIVE_typestr
	.4byte lbl_8053D468

.global cf_CVS_THREAD_SUDDEN_RTTI
cf_CVS_THREAD_SUDDEN_RTTI:
	.4byte cf_CVS_THREAD_SUDDEN_typestr
	.4byte lbl_8053D4A0

.global cf_CVS_THREAD_TENSION_UP_RTTI
cf_CVS_THREAD_TENSION_UP_RTTI:
	.4byte cf_CVS_THREAD_TENSION_UP_typestr
	.4byte lbl_8053D4F0


.global lbl_80665638
lbl_80665638:
	# ROM: 0x571218
	.4byte 0x01920195
	.4byte 0x01960000


.global lbl_80665640
lbl_80665640:
	# ROM: 0x571220
	.4byte 0x01910193
	.4byte 0x01940000

.global cf_CVS_THREAD_VISION_BREAK_RTTI
cf_CVS_THREAD_VISION_BREAK_RTTI:
	.4byte cf_CVS_THREAD_VISION_BREAK_typestr
	.4byte lbl_8053D534


.global lbl_80665650
lbl_80665650:
	# ROM: 0x571230
	.4byte 0x012E0131
	.4byte 0x01320133


.global lbl_80665658
lbl_80665658:
	# ROM: 0x571238
	.4byte 0x01310132
	.4byte 0x01330000

.global cf_CVS_THREAD_VISION_TELL_RTTI
cf_CVS_THREAD_VISION_TELL_RTTI:
	.4byte cf_CVS_THREAD_VISION_TELL_typestr
	.4byte lbl_8053D580


.global lbl_80665668
lbl_80665668:
	# ROM: 0x571248
	.4byte 0xF06969FF


.global lbl_8066566C
lbl_8066566C:
	# ROM: 0x57124C
	.4byte 0x8A64FEFF


.global lbl_80665670
lbl_80665670:
	# ROM: 0x571250
	.4byte 0x48BA2AFF


.global lbl_80665674
lbl_80665674:
	# ROM: 0x571254
	.4byte 0xF0DC40FF


.global lbl_80665678
lbl_80665678:
	# ROM: 0x571258
	.4byte 0xEA7F2DFF


.global lbl_8066567C
lbl_8066567C:
	# ROM: 0x57125C
	.4byte 0x4D97F2FF


.global lbl_80665680
lbl_80665680:
	# ROM: 0x571260
	.4byte 0xE672DEFF


.global lbl_80665684
lbl_80665684:
	# ROM: 0x571264
	.4byte 0xA0A0A0FF


.global lbl_80665688
lbl_80665688:
	# ROM: 0x571268
	.4byte 0xF0F0F0FF


.global lbl_8066568C
lbl_8066568C:
	# ROM: 0x57126C
	.4byte 0xF06969FF


.global lbl_80665690
lbl_80665690:
	# ROM: 0x571270
	.4byte 0xF0F0F0FF


.global lbl_80665694
lbl_80665694:
	# ROM: 0x571274
	.4byte 0x8A64FEFF


.global lbl_80665698
lbl_80665698:
	# ROM: 0x571278
	.4byte 0xF0F0F0FF


.global lbl_8066569C
lbl_8066569C:
	# ROM: 0x57127C
	.4byte 0x48BA2AFF


.global lbl_806656A0
lbl_806656A0:
	# ROM: 0x571280
	.4byte 0xF0F0F0FF


.global lbl_806656A4
lbl_806656A4:
	# ROM: 0x571284
	.4byte 0xF0DC40FF


.global lbl_806656A8
lbl_806656A8:
	# ROM: 0x571288
	.4byte 0xF0F0F0FF


.global lbl_806656AC
lbl_806656AC:
	# ROM: 0x57128C
	.4byte 0xEA7F2DFF


.global lbl_806656B0
lbl_806656B0:
	# ROM: 0x571290
	.4byte 0xF0F0F0FF


.global lbl_806656B4
lbl_806656B4:
	# ROM: 0x571294
	.4byte 0x4D97F2FF


.global lbl_806656B8
lbl_806656B8:
	# ROM: 0x571298
	.4byte 0xF0F0F0FF


.global lbl_806656BC
lbl_806656BC:
	# ROM: 0x57129C
	.4byte 0xE672DEFF


.global lbl_806656C0
lbl_806656C0:
	# ROM: 0x5712A0
	.4byte 0xF0F0F0FF


.global lbl_806656C4
lbl_806656C4:
	# ROM: 0x5712A4
	.4byte 0xA0A0A0FF

.global CMenuBattleChain_RTTI
CMenuBattleChain_RTTI:
	.4byte CMenuBattleChain_typestr
	.4byte lbl_8053D698

.global cf_CVS_THREAD_BATTLE_END_SP_RTTI
cf_CVS_THREAD_BATTLE_END_SP_RTTI:
	.4byte cf_CVS_THREAD_BATTLE_END_SP_typestr
	.4byte lbl_8053D964

.global cf_CfGimmickSaveOff_RTTI
cf_CfGimmickSaveOff_RTTI:
	.4byte cf_CfGimmickSaveOff_typestr
	.4byte lbl_8053D994

.global CMenuTutorialList_RTTI
CMenuTutorialList_RTTI:
	.4byte CMenuTutorialList_typestr
	.4byte lbl_8053DA00

.global CTutorialList_RTTI
CTutorialList_RTTI:
	.4byte CTutorialList_typestr
	.4byte lbl_8053DAC0

.global CLoad_RTTI
CLoad_RTTI:
	.4byte CLoad_typestr
	.4byte lbl_8053DB58


.global lbl_806656F8
lbl_806656F8:
	# ROM: 0x5712D8
	.4byte lbl_8050C370


.global lbl_806656FC
lbl_806656FC:
	# ROM: 0x5712DC
	.4byte lbl_8050C380


.global lbl_80665700
lbl_80665700:
	# ROM: 0x5712E0
	.4byte lbl_8050C3A4
	.4byte 0


.global lbl_80665708
lbl_80665708:
	# ROM: 0x5712E8
	.4byte lbl_8050C458


.global lbl_8066570C
lbl_8066570C:
	# ROM: 0x5712EC
	.4byte lbl_8050C488


.global lbl_80665710
lbl_80665710:
	# ROM: 0x5712F0
	.4byte lbl_8050C4D8


.global lbl_80665714
lbl_80665714:
	# ROM: 0x5712F4
	.4byte lbl_8050C4F4


.global lbl_80665718
lbl_80665718:
	# ROM: 0x5712F8
	.4byte lbl_8050C518


.global lbl_8066571C
lbl_8066571C:
	# ROM: 0x5712FC
	.4byte lbl_8050C5F4


.global lbl_80665720
lbl_80665720:
	# ROM: 0x571300
	.4byte lbl_8050C6C4


.global lbl_80665724
lbl_80665724:
	# ROM: 0x571304
	.4byte lbl_8050C738


.global lbl_80665728
lbl_80665728:
	# ROM: 0x571308
	.4byte lbl_8050C790


.global lbl_8066572C
lbl_8066572C:
	# ROM: 0x57130C
	.4byte lbl_8050C808

.global cf_CVS_THREAD_BATTLE_MAIN_RTTI
cf_CVS_THREAD_BATTLE_MAIN_RTTI:
	.4byte cf_CVS_THREAD_BATTLE_MAIN_typestr
	.4byte lbl_8053E1B0

.global cf_CVS_THREAD_BATTLE_BEGIN_RTTI
cf_CVS_THREAD_BATTLE_BEGIN_RTTI:
	.4byte cf_CVS_THREAD_BATTLE_BEGIN_typestr
	.4byte lbl_8053E3F0

.global lbl_80665740
lbl_80665740:
	.4byte cf_EVS_THREAD_LIB_typestr
	.4byte lbl_8053E410

.global lbl_80665748
lbl_80665748:
	.4byte cf_CVS_THREAD_LIB_typestr
	.4byte 0

.global CMenuGCItem_RTTI
CMenuGCItem_RTTI:
	.4byte CMenuGCItem_typestr
	.4byte lbl_8053E458

.global CMenuGameClear_RTTI
CMenuGameClear_RTTI:
	.4byte CMenuGameClear_typestr
	.4byte lbl_8053E570

.global cf_CfHikariItemManager_RTTI
cf_CfHikariItemManager_RTTI:
	.4byte cf_CfHikariItemManager_typestr
	.4byte lbl_8053E5B8

.global CUIErrMesWin_RTTI
CUIErrMesWin_RTTI:
	.4byte CUIErrMesWin_typestr
	.4byte lbl_8053E6E0

.global CTTask_CUIErrMesWin_RTTI
CTTask_CUIErrMesWin_RTTI:
	.4byte CTTask_CUIErrMesWin_typestr
	.4byte lbl_8053E738

.global CMenuTitle_RTTI
CMenuTitle_RTTI:
	.4byte CMenuTitle_typestr
	.4byte lbl_8053E890

.global CTTask_CMenuTitle_RTTI
CTTask_CMenuTitle_RTTI:
	.4byte CTTask_CMenuTitle_typestr
	.4byte lbl_8053E8E8

.global CTitle_RTTI
CTitle_RTTI:
	.4byte CTitle_typestr
	.4byte lbl_8053EA68

.global CTitleMenu_RTTI
CTitleMenu_RTTI:
	.4byte CTitleMenu_typestr
	.4byte 0

.global CTitleLogo_RTTI
CTitleLogo_RTTI:
	.4byte CTitleLogo_typestr
	.4byte 0

.global cf_CHelp_ToAttack_RTTI
cf_CHelp_ToAttack_RTTI:
	.4byte cf_CHelp_ToAttack_typestr
	.4byte lbl_8053EAAC

.global cf_CHelp_ArtsAttack_RTTI
cf_CHelp_ArtsAttack_RTTI:
	.4byte cf_CHelp_ArtsAttack_typestr
	.4byte lbl_8053EAFC

.global cf_CHelp_ArtsSet_RTTI
cf_CHelp_ArtsSet_RTTI:
	.4byte cf_CHelp_ArtsSet_typestr
	.4byte lbl_8053EB2C

.global cf_CHelp_CkKizuna_RTTI
cf_CHelp_CkKizuna_RTTI:
	.4byte cf_CHelp_CkKizuna_typestr
	.4byte lbl_8053EB5C

.global cf_CHelp_CloseItemMenu_RTTI
cf_CHelp_CloseItemMenu_RTTI:
	.4byte cf_CHelp_CloseItemMenu_typestr
	.4byte lbl_8053EB94

.global cf_CHelp_CloseSysMenu_RTTI
cf_CHelp_CloseSysMenu_RTTI:
	.4byte cf_CHelp_CloseSysMenu_typestr
	.4byte lbl_8053EBCC

.global cf_CHelp_EnemyCount_RTTI
cf_CHelp_EnemyCount_RTTI:
	.4byte cf_CHelp_EnemyCount_typestr
	.4byte lbl_8053EC24

.global cf_CHelp_EnemyEnable_RTTI
cf_CHelp_EnemyEnable_RTTI:
	.4byte cf_CHelp_EnemyEnable_typestr
	.4byte lbl_8053EC4C

.global cf_CHelp_Exchange_RTTI
cf_CHelp_Exchange_RTTI:
	.4byte cf_CHelp_Exchange_typestr
	.4byte lbl_8053EC94

.global cf_CHelp_GameOver_RTTI
cf_CHelp_GameOver_RTTI:
	.4byte cf_CHelp_GameOver_typestr
	.4byte lbl_8053ECBC

.global cf_CHelp_ItemCole_RTTI
cf_CHelp_ItemCole_RTTI:
	.4byte cf_CHelp_ItemCole_typestr
	.4byte lbl_8053ECE4

.global cf_CHelp_LandMark_RTTI
cf_CHelp_LandMark_RTTI:
	.4byte cf_CHelp_LandMark_typestr
	.4byte lbl_8053ED44

.global cf_CHelp_LearnArts_RTTI
cf_CHelp_LearnArts_RTTI:
	.4byte cf_CHelp_LearnArts_typestr
	.4byte lbl_8053ED6C

.global cf_CHelp_ClosePartyMenu_RTTI
cf_CHelp_ClosePartyMenu_RTTI:
	.4byte cf_CHelp_ClosePartyMenu_typestr
	.4byte lbl_8053ED9C

.global cf_CHelp_OpenPartyMenu_RTTI
cf_CHelp_OpenPartyMenu_RTTI:
	.4byte cf_CHelp_OpenPartyMenu_typestr
	.4byte lbl_8053EDCC

.global cf_CHelp_Pg_RTTI
cf_CHelp_Pg_RTTI:
	.4byte cf_CHelp_Pg_typestr
	.4byte lbl_8053EDF4

.global cf_CHelp_CloseQuestMenu_RTTI
cf_CHelp_CloseQuestMenu_RTTI:
	.4byte cf_CHelp_CloseQuestMenu_typestr
	.4byte lbl_8053EE24

.global cf_CHelp_ShopSel_RTTI
cf_CHelp_ShopSel_RTTI:
	.4byte cf_CHelp_ShopSel_typestr
	.4byte lbl_8053EE54

.global cf_CHelp_ShopBuy_RTTI
cf_CHelp_ShopBuy_RTTI:
	.4byte cf_CHelp_ShopBuy_typestr
	.4byte lbl_8053EE7C

.global cf_CHelp_Sp_RTTI
cf_CHelp_Sp_RTTI:
	.4byte cf_CHelp_Sp_typestr
	.4byte lbl_8053EEA4

.global cf_CHelp_Target_RTTI
cf_CHelp_Target_RTTI:
	.4byte cf_CHelp_Target_typestr
	.4byte lbl_8053EEF4

.global cf_CVS_THREAD_ORDER_RTTI
cf_CVS_THREAD_ORDER_RTTI:
	.4byte cf_CVS_THREAD_ORDER_typestr
	.4byte lbl_8053EF4C

.global CBattery_RTTI
CBattery_RTTI:
	.4byte CBattery_typestr
	.4byte lbl_8053F030

.global lbl_80665858
lbl_80665858:
	.4byte std_exception_typestr
	.4byte 0


.global lbl_80665860
lbl_80665860:
	# ROM: 0x571440
	.4byte std$7dthandler
	.4byte 0

.global lbl_80665868
lbl_80665868:
	.4byte std_bad_cast_typestr
	.4byte lbl_8053F050


.global lbl_80665870
lbl_80665870:
	# ROM: 0x571450
	.4byte 0xFFFFFFFE
	.4byte 0


.global lbl_80665878
lbl_80665878:
	# ROM: 0x571458
	.4byte 0
	.4byte 0