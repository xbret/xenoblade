#!/usr/bin/env python3
LIBS = [
	{
		"lib": "kyoshin",
		"cflags": "$cflags_base -ipa file -inline deferred -str pool,readonly,reuse -RTTI on -enc SJIS",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["asm/kyoshin/appgame/CGame", False],
			["src/kyoshin/appgame/main", True],
			["asm/kyoshin/appgame/plugin/plugin_deb", False],
			["asm/kyoshin/appgame/plugin/plugin_wait", False],
			["asm/kyoshin/appgame/plugin/oc_builtin", False],
			["asm/kyoshin/appgame/plugin/oc_thread", False],
			["asm/kyoshin/appgame/plugin/oc_msg", False],
			["asm/kyoshin/appgame/plugin/oc_bdat", False],
			["asm/kyoshin/appgame/plugin/oc_unit", False],
			["asm/kyoshin/appgame/CTaskGame", False],
			["asm/kyoshin/appgame/cf/CTaskGameCf", False],
			["asm/kyoshin/appgame/CTaskGameEff", False],
			["asm/kyoshin/appgame/plugin/oc_cfp", False],
			["src/kyoshin/appgame/plugin/plugin_main", True],
			["asm/kyoshin/appgame/plugin/plugin_ui", False],
			["asm/kyoshin/appgame/plugin/plugin_eve", False],
			["asm/kyoshin/appgame/plugin/plugin_cfs", False],
			["asm/kyoshin/appgame/plugin/plugin_math", False],
			["asm/kyoshin/action/CActParamAnim", False],
			["asm/kyoshin/action/CActParamData", False],
			["asm/kyoshin/appgame/cf/CMcaFile", False],
			["asm/kyoshin/appgame/cf/CTaskEnvironment", False],
			["asm/kyoshin/appgame/CTimeLightGrp", False],
			["asm/kyoshin/appgame/cf/CActParamAnimGame", False],
			["asm/kyoshin/appgame/plugin/plugin_cam", False],
			["asm/kyoshin/appgame/cf/CTaskGameEffAfter", False],
			["asm/kyoshin/appgame/plugin/plugin_pad", False],
			["asm/kyoshin/appgame/cf/code_80061870", False],
			["asm/kyoshin/appgame/cf/CfResTask", False],
			["asm/kyoshin/appgame/cf/CfRes", False],
			["asm/kyoshin/appgame/cf/IResInfo", False],
			["asm/kyoshin/appgame/cf/CfScript", False],
			["asm/kyoshin/appgame/cf/CfTaskMain", False],
			["asm/kyoshin/appgame/cf/CfTFile", False],
			["asm/kyoshin/appgame/cf/CfCamEvent", False],
			["asm/kyoshin/appgame/cf/CfCamDirectionIntf", False],
			["asm/kyoshin/appgame/cf/CfCamLookatIntf", False],
			["asm/kyoshin/appgame/cf/CfCamTargetIntf", False],
			["asm/kyoshin/appgame/cf/CfCam", False],
			["asm/kyoshin/appgame/cf/CfCamEvent_1", False],
			["asm/kyoshin/appgame/code_8007C0F8", False],
			["asm/kyoshin/appgame/cf/CtrlEnemy", False],
			["asm/kyoshin/appgame/cf/CtrlMoveBase", False],
			["asm/kyoshin/appgame/cf/CtrlEneAiCall", False],
			["asm/kyoshin/appgame/cf/CtrlMoveEne", False],
			["asm/kyoshin/appgame/cf/CtrlNpc", False],
			["asm/kyoshin/appgame/cf/CtrlPad", False],
			["asm/kyoshin/appgame/cf/CtrlPc", False],
			["asm/kyoshin/appgame/cf/CtrlRemote", False],
			["asm/kyoshin/appgame/cf/CtrlObjectParam", False],
			["asm/kyoshin/appgame/code_800A3B24", False],
			["asm/kyoshin/appgame/code_800AA008", False],
			["asm/kyoshin/appgame/cf/CfCollCircleImpl", False],
			["asm/kyoshin/appgame/cf/CfCollSphereImpl", False],
			["asm/kyoshin/appgame/cf/CfCollAABBImpl", False],
			["asm/kyoshin/appgame/cf/CfCollCylinderImpl", False],
			["asm/kyoshin/appgame/cf/CfCollCapsuleImpl", False],
			["asm/kyoshin/appgame/cf/CfObjectColl", False],
			["asm/kyoshin/appgame/cf/CfObjectEff", False],
			["asm/kyoshin/appgame/cf/CfObjectEne", False],
			["asm/kyoshin/appgame/cf/CfObjectMap", False],
			["asm/kyoshin/appgame/cf/CfObjectModel", False],
			["asm/kyoshin/appgame/cf/CfObjectMove", False],
			["asm/kyoshin/appgame/cf/CfObjectNpc", False],
			["asm/kyoshin/appgame/cf/CfObjectObj", False],
			["asm/kyoshin/appgame/cf/CfObjectPc", False],
			["asm/kyoshin/appgame/cf/CfObjectPoint", False],
			["asm/kyoshin/appgame/cf/code_800C17DC", False],
			["asm/kyoshin/cfsys/CfObjectImplWalker", False],
			["asm/kyoshin/cfsys/CfObjectImplPc", False],
			["asm/kyoshin/cfsys/CfObjectImplObj", False],
			["asm/kyoshin/cfsys/CfObjectImplNpc", False],
			["asm/kyoshin/cfsys/CfObjectImplMove", False],
			["asm/kyoshin/cfsys/CfObjectImplEne", False],
			["asm/kyoshin/appgame/cf/CtrlAct", False],
			["asm/kyoshin/appgame/cf/CBattleManager", False],
			["asm/kyoshin/appgame/cf/code_800F42AC", False],
			["asm/kyoshin/appgame/cf/CfObjectEnumList", False],
			["asm/kyoshin/appgame/cf/CfObjectSelectorObj", False],
			["asm/kyoshin/appgame/CMainMenu", False],
			["asm/kyoshin/appgame/menu/CMenuArtsSelect", False],
			["asm/kyoshin/appgame/menu/CMenuBattleDamage", False],
			["asm/kyoshin/appgame/menu/CMenuBattlePlayerState", False],
			["asm/kyoshin/appgame/menu/CMenuEnemyState", False],
			["asm/kyoshin/appgame/menu/CMenuFade", False],
			["asm/kyoshin/appgame/menu/CMenuKeyAssign", False],
			["asm/kyoshin/appgame/CMiniMap", False],
			["asm/kyoshin/appgame/menu/CMenuQuestLog", False],
			["asm/kyoshin/appgame/menu/CMenuSymbolMark", False],
			["asm/kyoshin/appgame/CQuestWindow", False],
			["asm/kyoshin/appgame/CSystemWindow", False],
			["asm/kyoshin/appgame/CSysWinSelect", False],
			["asm/kyoshin/appgame/CTagProcessor", False],
			["asm/kyoshin/appgame/CTalkWindow", False],
			["asm/kyoshin/appgame/CUIBattleManager", False],
			["asm/kyoshin/appgame/CUICfManager", False],
			["asm/kyoshin/appgame/CUIWindowManager", False],
			["asm/kyoshin/appgame/cf/CfBdat", False],
			["asm/kyoshin/appgame/menu/CMenuUpdate", False],
			["asm/kyoshin/appgame/menu/CMenuLandTelop", False],
			["asm/kyoshin/appgame/cf/CBattleState", False],
			["asm/kyoshin/appgame/menu/CMenuGetItem", False],
			["asm/kyoshin/appgame/cf/CAIAction", False],
			["asm/kyoshin/appgame/cf/CArtsSet", False],
			["asm/kyoshin/appgame/cf/CArtsParam", False],
			["asm/kyoshin/appgame/cf/CItem", False],
			["asm/kyoshin/appgame/cf/CCharEffect", False],
			["asm/kyoshin/appgame/cf/CCharEffectEne", False],
			["asm/kyoshin/appgame/CCol6System", False],
			["asm/kyoshin/appgame/CCol6Invite", False],
			["asm/kyoshin/appgame/cf/CTaskREvent", False],
			["asm/kyoshin/appgame/cf/CInfoCf", False],
			["asm/kyoshin/appgame/menu/CMenuItem", False],
			["asm/kyoshin/appgame/realtimeevt/CREvtMem", False],
			["asm/kyoshin/appgame/cf/CTaskREvtSequence", False],
			["asm/kyoshin/appgame/cf/CfResObjImpl", False],
			["asm/kyoshin/appgame/cf/CfResReloadImpl", False],
			["asm/kyoshin/appgame/cf/CfMapEffectManager", False],
			["asm/kyoshin/appgame/cf/CfObjectActor", False],
			["asm/kyoshin/appgame/realtimeevt/CREvtModel", False],
			["asm/kyoshin/appgame/cf/CfMapItemManager", False],
			["asm/kyoshin/appgame/cf/CActorParam", False],
			["asm/kyoshin/appgame/menu/CMenuZeal", False],
			["asm/kyoshin/appgame/realtimeevt/CREvtCamera", False],
			["asm/kyoshin/appgame/realtimeevt/CREvtModelMap", False],
			["asm/kyoshin/appgame/realtimeevt/CREvtModelObj", False],
			["asm/kyoshin/appgame/realtimeevt/CREvtModelPc", False],
			["asm/kyoshin/appgame/realtimeevt/CREvtEffect", False],
			["asm/kyoshin/appgame/realtimeevt/CREvtObj", False],
			["asm/kyoshin/appgame/plugin/plugin_time", False],
			["asm/kyoshin/appgame/plugin/plugin_btl", False],
			["asm/kyoshin/appgame/code_801862C0", False],
			["asm/kyoshin/appgame/menu/CMenuPTGauge", False],
			["asm/kyoshin/appgame/menu/code_80187F14", False],
			["asm/kyoshin/appgame/menu/CMenuSelectShop", False],
			["asm/kyoshin/appgame/menu/CMenuShopSell", False],
			["asm/kyoshin/appgame/menu/CMenuShopBuy", False],
			["asm/kyoshin/appgame/menu/code_8018C5FC", False],
			["asm/kyoshin/appgame/cf/CfResPcImpl", False],
			["asm/kyoshin/appgame/cf/code_8018F8D8", False],
			["asm/kyoshin/appgame/menu/CMenuPTState", False],
			["asm/kyoshin/appgame/cf/CPartsChange", False],
			["asm/kyoshin/appgame/cf/CtrlMovePC", False],
			["asm/kyoshin/appgame/cf/CtrlMoveNpc", False],
			["asm/kyoshin/appgame/menu/CMenuBattleMode", False],
			["asm/kyoshin/appgame/COccCulling", False],
			["asm/kyoshin/appgame/CSimpleEveTalkWin", False],
			["asm/kyoshin/appgame/cf/CTaskCulling", False],
			["asm/kyoshin/appgame/cf/CVision", False],
			["asm/kyoshin/appgame/code_801A929C", False],
			["asm/kyoshin/appgame/plugin/plugin_snd", False],
			["asm/kyoshin/appgame/plugin/plugin_game", False],
			["asm/kyoshin/appgame/menu/CMenuVision", False],
			["asm/kyoshin/appgame/menu/CMenuBattleCommu", False],
			["asm/kyoshin/appgame/cf/CPcEffect07", False],
			["asm/kyoshin/appgame/menu/CMenuGetItemMulti", False],
			["asm/kyoshin/appgame/cf/CSuddenCommu", False],
			["asm/kyoshin/appgame/menu/CMenuKizunaTalk", False],
			["asm/kyoshin/appgame/menu/CMenuItemExchange", False],
			["asm/kyoshin/appgame/cf/CfSoundMan", False],
			["asm/kyoshin/appgame/cf/CfPadTask", False],
			["asm/kyoshin/appgame/cf/code_801C2C14", False],
			["asm/kyoshin/appgame/realtimeevt/CREvtLight", False],
			["asm/kyoshin/appgame/CBgTex", False],
			["asm/kyoshin/appgame/CTitleAHelp", False],
			["asm/kyoshin/appgame/CItemBoxGrid", False],
			["asm/kyoshin/appgame/CCur", False],
			["asm/kyoshin/appgame/CSortMenu", False],
			["asm/kyoshin/appgame/CItemBoxInfo", False],
			["asm/kyoshin/appgame/CNumSelect", False],
			["asm/kyoshin/appgame/CItemBoxLine", False],
			["asm/kyoshin/appgame/CScrollBar", False],
			["asm/kyoshin/appgame/code_801F3BE0", False],
			["asm/kyoshin/appgame/cf/CfGimmickObject", False],
			["asm/kyoshin/appgame/cf/CfObjectTbox", False],
			["asm/kyoshin/appgame/cf/CfResTboxImpl", False],
			["asm/kyoshin/appgame/CPartyStateWin", False],
			["asm/kyoshin/appgame/CModelDisp", False],
			["asm/kyoshin/appgame/CPartyState", False],
			["asm/kyoshin/appgame/plugin/plugin_unit", False],
			["asm/kyoshin/appgame/menu/parts/CModelDispEquip", False],
			["asm/kyoshin/appgame/CEquipChange", False],
			["asm/kyoshin/appgame/cf/CfMapMineManager", False],
			["asm/kyoshin/appgame/CItemBoxGridSubMenu", False],
			["asm/kyoshin/appgame/cf/CfGimmick", False],
			["asm/kyoshin/appgame/cf/CfGimmickElv", False],
			["asm/kyoshin/appgame/cf/CfGimmickLock", False],
			["asm/kyoshin/appgame/cf/CfGimmickWarp", False],
			["asm/kyoshin/appgame/cf/CfGimmickJump", False],
			["asm/kyoshin/appgame/cf/CfGimmickItem", False],
			["asm/kyoshin/appgame/makecrystal/CMenuMakeCrystal", False],
			["asm/kyoshin/appgame/makecrystal/CMakeCrystalWin", False],
			["asm/kyoshin/appgame/makecrystal/code_80213488", False],
			["asm/kyoshin/appgame/makecrystal/CMCCrystalBox", False],
			["asm/kyoshin/appgame/makecrystal/CMCCrystalInfo", False],
			["asm/kyoshin/appgame/makecrystal/CModelDispMakeCrystal", False],
			["asm/kyoshin/appgame/makecrystal/CMCCylinderGauge", False],
			["asm/kyoshin/appgame/makecrystal/CMCCrystalList", False],
			["asm/kyoshin/appgame/makecrystal/CMCEffStart", False],
			["asm/kyoshin/appgame/menu/CMenuQstCnt", False],
			["asm/kyoshin/appgame/CQstLogList", False],
			["asm/kyoshin/appgame/CQstLogInfo", False],
			["asm/kyoshin/appgame/CSysWin", False],
			["asm/kyoshin/appgame/CSelShopWin", False],
			["asm/kyoshin/appgame/CExchangeWin", False],
			["asm/kyoshin/appgame/CPresentWin", False],
			["asm/kyoshin/appgame/makecrystal/CMCCrystalSupport", False],
			["asm/kyoshin/appgame/menu/CMenuArtsSet", False],
			["asm/kyoshin/appgame/CArtsInfo", False],
			["asm/kyoshin/appgame/cf/CfNandManager", False],
			["asm/kyoshin/appgame/code_802405F4", False],
			["asm/kyoshin/appgame/menu/CMenuMapSelect", False],
			["asm/kyoshin/appgame/CMapSel", False],
			["asm/kyoshin/appgame/CFade", False],
			["asm/kyoshin/appgame/CFloorMap", False],
			["asm/kyoshin/appgame/menu/CMenuMapSelectSC", False],
			["asm/kyoshin/appgame/menu/CMenuPause", False],
			["asm/kyoshin/appgame/menu/CMenuCollepedia", False],
			["asm/kyoshin/appgame/CCollepedia", False],
			["asm/kyoshin/appgame/menu/CMenuKizunagram", False],
			["asm/kyoshin/appgame/CKizunagram", False],
			["asm/kyoshin/appgame/CPcKizunagram", False],
			["asm/kyoshin/appgame/code_8025FB10", False],
			["asm/kyoshin/appgame/menu/CMenuPassiveSkill", False],
			["asm/kyoshin/appgame/CPassiveSkill", False],
			["asm/kyoshin/appgame/cf/CfGimmickEne", False],
			["asm/kyoshin/appgame/menu/CMenuBattleEnd", False],
			["asm/kyoshin/appgame/menu/CMenuPlayAward", False],
			["asm/kyoshin/appgame/menu/CMenuKizunaTalkList", False],
			["asm/kyoshin/appgame/CKizunaTalkList", False],
			["asm/kyoshin/appgame/CSysWinBuff", False],
			["asm/kyoshin/appgame/cf/ICamControlRemote", False],
			["asm/kyoshin/appgame/cf/ICamControlGc", False],
			["asm/kyoshin/appgame/cf/ICamControlClassic", False],
			["asm/kyoshin/appgame/code_8027513C", False],
			["asm/kyoshin/appgame/menu/CMenuLvUp", False],
			["asm/kyoshin/appgame/cf/chain/CChainActor", False],
			["asm/kyoshin/appgame/cf/chain/CChainActorList", False],
			["asm/kyoshin/appgame/cf/chain/CChainTime", False],
			["asm/kyoshin/appgame/cf/chain/CChainTimer", False],
			["asm/kyoshin/appgame/CSysWinScenarioLog", False],
			["asm/kyoshin/appgame/cf/chain/CChainActorEne", False],
			["asm/kyoshin/appgame/cf/chain/CChainActorPc", False],
			["asm/kyoshin/appgame/CEquipItemBox", False],
			["asm/kyoshin/appgame/menu/CMenuSave", False],
			["asm/kyoshin/appgame/CSaveLoad", False],
			["asm/kyoshin/appgame/menu/CMenuPTChangeNotice", False],
			["asm/kyoshin/appgame/cf/chain/CChainCombo", False],
			["asm/kyoshin/appgame/CSysWinSave", False],
			["asm/kyoshin/appgame/realtimeevt/CREvtMovie", False],
			["asm/kyoshin/appgame/CTaskGamePic", False],
			["asm/kyoshin/appgame/CTaskGameEvt", False],
			["asm/kyoshin/appgame/cf/CHelpManager", False],
			["asm/kyoshin/appgame/code_80296898", False],
			["asm/kyoshin/appgame/makecrystal/CMCGetItemBox", False],
			["asm/kyoshin/appgame/menu/CMenuTutorial", False],
			["asm/kyoshin/appgame/CTutorial", False],
			["asm/kyoshin/appgame/menu/CMenuOption", False],
			["asm/kyoshin/appgame/COption", False],
			["asm/kyoshin/appgame/menu/CMenuSkipTimer", False],
			["asm/kyoshin/appgame/CSkipTimer", False],
			["asm/kyoshin/appgame/cf/chain/CChainEffect", False],
			["asm/kyoshin/appgame/cf/voice/CCharVoice", False],
			["asm/kyoshin/appgame/cf/voice/CCharVoiceMan", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_BATTLE_END", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_BUF", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_CHAIN", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_DOWN", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_EHP", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_FAINT", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_HAGE", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_HP", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_PARTY_GAGE", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_REVIVE", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_SUDDEN", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_TENSION_UP", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_VISION_BREAK", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_VISION_TELL", False],
			["asm/kyoshin/appgame/menu/CMenuBattleChain", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_BATTLE_END_SP", False],
			["asm/kyoshin/appgame/cf/CfGimmickSaveOff", False],
			["asm/kyoshin/appgame/menu/CMenuTutorialList", False],
			["asm/kyoshin/appgame/CTutorialList", False],
			["asm/kyoshin/appgame/CLoad", False],
			["src/kyoshin/appgame/code_802AEB74", True],
			["asm/kyoshin/appgame/plugin/plugin_help", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_BATTLE_MAIN", False],
			["asm/kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_BATTLE_BEGIN", False],
			["asm/kyoshin/appgame/menu/CMenuGCItem", False],
			["asm/kyoshin/appgame/menu/CMenuGameClear", False],
			["asm/kyoshin/appgame/cf/CfHikariItemManager", False],
			["asm/kyoshin/appgame/cf/code_802B3750", False],
			["asm/kyoshin/appgame/CUIErrMesWin", False],
			["asm/kyoshin/appgame/menu/CMenuTitle", False],
			["asm/kyoshin/appgame/CTitle", False],
			["asm/kyoshin/appgame/help/CHelp", False],
			["asm/kyoshin/appgame/help/CHelp_ArtsAttack", False],
			["asm/kyoshin/appgame/help/CHelp_ArtsSet", False],
			["asm/kyoshin/appgame/help/CHelp_CkKizuna", False],
			["asm/kyoshin/appgame/help/CHelp_CloseItemMenu", False],
			["asm/kyoshin/appgame/help/CHelp_CloseSysMenu", False],
			["asm/kyoshin/appgame/help/CHelp_EndEvent", False],
			["asm/kyoshin/appgame/help/CHelp_EnemyCount", False],
			["asm/kyoshin/appgame/help/CHelp_EnemyEnable", False],
			["asm/kyoshin/appgame/help/CHelp_EtherMake", False],
			["asm/kyoshin/appgame/help/CHelp_Exchange", False],
			["asm/kyoshin/appgame/help/CHelp_GameOver", False],
			["asm/kyoshin/appgame/help/CHelp_ItemCole", False],
			["asm/kyoshin/appgame/help/CHelp_Kizuna", False],
			["asm/kyoshin/appgame/help/CHelp_LandMark", False],
			["asm/kyoshin/appgame/help/CHelp_LearnArts", False],
			["asm/kyoshin/appgame/help/CHelp_ClosePartyMenu", False],
			["asm/kyoshin/appgame/help/CHelp_OpenPartyMenu", False],
			["asm/kyoshin/appgame/help/CHelp_Pg", False],
			["asm/kyoshin/appgame/help/CHelp_CloseQuestMenu", False],
			["asm/kyoshin/appgame/help/CHelp_ShopBuy", False],
			["asm/kyoshin/appgame/help/CHelp_ShopSel", False],
			["asm/kyoshin/appgame/help/CHelp_Sp", False],
			["asm/kyoshin/appgame/help/CHelp_Talk", False],
			["asm/kyoshin/appgame/help/CHelp_Target", False],
			["asm/kyoshin/appgame/plugin/plugin_voice", False],
			["asm/kyoshin/appgame/CBattery", False],
		],
	},
	{
		"lib": "Runtime.PPCEABI.H.a",
		"cflags": "$cflags_base -Cpp_exceptions off -inline on -proc gekko -fp hard -O4,p -str pool,readonly,reuse -func_align 4",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/PowerPC_EABI_Support/src/Runtime/__mem", True],
			["libs/PowerPC_EABI_Support/src/Runtime/__va_arg", True],
			["libs/PowerPC_EABI_Support/src/Runtime/global_destructor_chain", True],
			[
				"libs/PowerPC_EABI_Support/src/Runtime/New",
				True,
				{"cflags": "$cflags_base -inline on -proc gekko -fp hard -O4,p -str pool,readonly,reuse -func_align 4 -Cpp_exceptions on"},
			],
			[
				"libs/PowerPC_EABI_Support/src/Runtime/NMWException",
				True,
				{"cflags": "$cflags_base -inline on -proc gekko -fp hard -O4,p -str pool,readonly,reuse -func_align 4 -Cpp_exceptions on"},
			],
			["libs/PowerPC_EABI_Support/src/Runtime/ptmf", True],
			[
				"libs/PowerPC_EABI_Support/src/Runtime/MWRTTI",
				True,
				{"cflags": "$cflags_base -inline on -proc gekko -fp hard -O4,p -str pool,readonly,reuse -func_align 4 -Cpp_exceptions on"},
			],
			["libs/PowerPC_EABI_Support/src/Runtime/runtime", True],
			["libs/PowerPC_EABI_Support/src/Runtime/__init_cpp_exceptions", True],
			[
				"libs/PowerPC_EABI_Support/src/Runtime/Gecko_ExceptionPPC", 
				True,
				{"cflags": "$cflags_base -inline on -proc gekko -fp hard -O4,p -str pool,readonly,reuse -func_align 4 -Cpp_exceptions on"},
			],
			["libs/PowerPC_EABI_Support/src/Runtime/GCN_mem_alloc", True],
		],
	},
	{
		"lib": "MSL_C.PPCEABI.bare.H",
		"cflags": "$cflags_base -Cpp_exceptions off -inline on -str pool,readonly,reuse -ipa file",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/alloc", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/ansi_files", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/ansi_fp", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/arith", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/assert", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/buffer_io", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/ctype", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/direct_io", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/errno", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/file_io", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/FILE_POS", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/locale", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/mbstring", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/mem", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/mem_funcs", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/math_api", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/misc_io", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/printf", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/rand", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/float", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/scanf", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/signal", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/string", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/strtold", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/strtoul", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/wcstoul", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/wctype", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/wmem", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/wprintf", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/wscanf", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/wstring", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/wchar_io", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/PPC_EABI/uart_console_io_gcn", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/PPC_EABI/abort_exit_ppc_eabi", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/secure_error", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/math_double", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/math_sun", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_acos", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_asin", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_atan2", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_fmod", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_log", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_log10", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_pow", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_rem_pio2", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_cos", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_rem_pio2", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_sin", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/k_tan", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_atan", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_ceil", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_copysign", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_cos", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_floor", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_frexp", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_ldexp", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_modf", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_sin", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/s_tan", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_acos", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_asin", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_atan2", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_fmod", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_log", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_log10", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_pow", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/e_sqrt", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/PPC_EABI/math_ppc", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common_Embedded/Math/Double_precision/w_sqrt", True],
			["libs/PowerPC_EABI_Support/src/MSL_C/MSL_Common/extras", True],
		],
	},
	{
		"lib": "TRK_Hollywood_Revolution",
		"cflags": "$cflags_base -Cpp_exceptions off -inline on",
		"mw_version": "Wii/1.0",
		"host": True,
		"objects": [
			["libs/PowerPC_EABI_Support/src/MetroTRK/__exception", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/targsupp", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/custconn/cc_gdev", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/custconn/MWCriticalSection_gc", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/custconn/CircleBuffer", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/flush_cache", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/main_TRK", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/mainloop", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/mem_TRK", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/dispatch", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/dolphin_trk", True],
			[
				"libs/PowerPC_EABI_Support/src/MetroTRK/dolphin_trk_glue",
				True,
				{"cflags": "$cflags_base -Cpp_exceptions off -inline on -str pool"},
			],
			["libs/PowerPC_EABI_Support/src/MetroTRK/notify", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/nubevent", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/nubinit", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/serpoll", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/string_TRK", True],
			[
				"libs/PowerPC_EABI_Support/src/MetroTRK/support",
				True,
				{"cflags": "$cflags_base -Cpp_exceptions off -inline on -str pool"},
			],
			["libs/PowerPC_EABI_Support/src/MetroTRK/targcont", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/mpc_7xx_603e", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/msg", True],
			["libs/PowerPC_EABI_Support/src/MetroTRK/msgbuf", True],
			[
				"libs/PowerPC_EABI_Support/src/MetroTRK/msghndlr",
				True,
				{"cflags": "$cflags_base -Cpp_exceptions off -inline on -str pool"},
			],
			["libs/PowerPC_EABI_Support/src/MetroTRK/mslsupp", True],
			[
				"libs/PowerPC_EABI_Support/src/MetroTRK/targimpl",
				True,
				{"cflags": "$cflags_base -Cpp_exceptions off -inline on -pool off"},
			],
			["libs/PowerPC_EABI_Support/src/MetroTRK/target_options", True],
		],
	},
	{
		"lib": "NdevExi2A",
		"cflags": "$cflags_base -use_lmw_stmw off -inline auto -ipa file -Cpp_exceptions off",
		"mw_version": "GC/3.0",
		"host": True,
		"objects": [
			["libs/NdevExi2A/src/DebuggerDriver", True],
			["libs/NdevExi2A/src/exi2", True],
		],
	},
	{
		"lib": "ai",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/src/revolution/ai/ai", True],
		],
	},
	{
		"lib": "arc",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/src/revolution/arc/arc", True],
		],
	},
	{
		"lib": "ax",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/src/revolution/ax/AX", True],
			["libs/RVL_SDK/asm/revolution/ax/AXAlloc", False],
			["libs/RVL_SDK/asm/revolution/ax/AXAux", False],
			["libs/RVL_SDK/asm/revolution/ax/AXCL", False],
			["libs/RVL_SDK/asm/revolution/ax/AXOut", False],
			["libs/RVL_SDK/asm/revolution/ax/AXSPB", False],
			["libs/RVL_SDK/asm/revolution/ax/AXVPB", False],
			["libs/RVL_SDK/src/revolution/ax/AXProf", True],
			["libs/RVL_SDK/src/revolution/ax/AXComp", True],
			["libs/RVL_SDK/src/revolution/ax/DSPCode", True],
		],
	},
	{
		"lib": "axfx",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/asm/revolution/axfx/AXFXReverbHi", False],
			["libs/RVL_SDK/asm/revolution/axfx/AXFXReverbHiExp", False],
			["libs/RVL_SDK/asm/revolution/axfx/AXFXDelayExp", False],
			["libs/RVL_SDK/asm/revolution/axfx/AXFXDelayExpDpl2", False],
			["libs/RVL_SDK/asm/revolution/axfx/AXFXReverbStdExp", False],
			["libs/RVL_SDK/asm/revolution/axfx/AXFXReverbStdExpDpl2", False],
			["libs/RVL_SDK/asm/revolution/axfx/AXFXChorusExp", False],
			["libs/RVL_SDK/asm/revolution/axfx/AXFXChorusExpDpl2", False],
			["libs/RVL_SDK/src/revolution/axfx/AXFXLfoTable", True],
			["libs/RVL_SDK/src/revolution/axfx/AXFXSrcCoef", True],
			["libs/RVL_SDK/src/revolution/axfx/AXFXHooks", True],
		],
	},
	{
		"lib": "base",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/src/revolution/base/PPCArch", True],
		],
	},
	{
		"lib": "bte",
		"cflags": "$cflags_base -Cpp_exceptions off -enum int -inline auto -ipa file",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/asm/revolution/bte/gki/gki_buffer", False],
			["libs/RVL_SDK/asm/revolution/bte/gki/gki_time", False],
			["libs/RVL_SDK/asm/revolution/bte/gki/gki_ppc", False],
			["libs/RVL_SDK/asm/revolution/bte/hci/hcisu_h2", False],
			["libs/RVL_SDK/asm/revolution/bte/hci/uusb_ppc", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/dm/bta_dm_cfg", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/hh/bta_hh_cfg", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/sys/bta_sys_cfg", False],
			["libs/RVL_SDK/asm/revolution/bte/main/bte_hcisu", False],
			["libs/RVL_SDK/asm/revolution/bte/main/bte_init", False],
			["libs/RVL_SDK/asm/revolution/bte/main/bte_logmsg", False],
			["libs/RVL_SDK/asm/revolution/bte/main/bte_main", False],
			["libs/RVL_SDK/asm/revolution/bte/main/btu_task1", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/sys/bd", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/sys/bta_sys_conn", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/sys/bta_sys_main", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/sys/ptim", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/sys/utl", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/dm/bta_dm_act", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/dm/bta_dm_api", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/dm/bta_dm_main", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/dm/bta_dm_pm", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/hh/bta_hh_act", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/hh/bta_hh_api", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/hh/bta_hh_main", False],
			["libs/RVL_SDK/asm/revolution/bte/bta/hh/bta_hh_utils", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/btm/btm_acl", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/btm/btm_dev", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/btm/btm_devctl", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/btm/btm_discovery", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/btm/btm_inq", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/btm/btm_main", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/btm/btm_pm", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/btm/btm_sco", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/btm/btm_sec", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/btu/btu_hcif", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/btu/btu_init", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/wbt/wbt_ext", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/gap/gap_api", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/gap/gap_conn", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/gap/gap_utils", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/hcic/hcicmds", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/hid/hidd_api", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/hid/hidd_conn", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/hid/hidd_mgmt", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/hid/hidd_pm", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/hid/hidh_api", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/hid/hidh_conn", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/l2cap/l2c_api", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/l2cap/l2c_csm", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/l2cap/l2c_link", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/l2cap/l2c_main", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/l2cap/l2c_utils", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/rfcomm/port_api", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/rfcomm/port_rfc", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/rfcomm/port_utils", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/rfcomm/rfc_l2cap_if", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/rfcomm/rfc_mx_fsm", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/rfcomm/rfc_port_fsm", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/rfcomm/rfc_port_if", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/rfcomm/rfc_ts_frames", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/rfcomm/rfc_utils", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/sdp/sdp_api", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/sdp/sdp_db", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/sdp/sdp_discovery", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/sdp/sdp_main", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/sdp/sdp_server", False],
			["libs/RVL_SDK/asm/revolution/bte/stack/sdp/sdp_utils", False],
		],
	},
	{
		"lib": "cx",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/asm/revolution/cx/CXStreamingUncompression", False],
			["libs/RVL_SDK/asm/revolution/cx/CXUncompression", False],
			["libs/RVL_SDK/src/revolution/cx/CXSecureUncompression", True],
		],
	},
	{
		"lib": "db",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/src/revolution/db/db", True],
		],
	},
	{
		"lib": "dsp",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/src/revolution/dsp/dsp", True],
			["libs/RVL_SDK/src/revolution/dsp/dsp_debug", True],
			["libs/RVL_SDK/src/revolution/dsp/dsp_task", True],
		],
	},
	{
		"lib": "dvd",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/src/revolution/dvd/dvdfs", True],
			["libs/RVL_SDK/src/revolution/dvd/dvd", True],
			["libs/RVL_SDK/src/revolution/dvd/dvdqueue", True],
			["libs/RVL_SDK/src/revolution/dvd/dvderror", True],
			["libs/RVL_SDK/src/revolution/dvd/dvdidutils", True],
			["libs/RVL_SDK/src/revolution/dvd/dvdFatal", True],
			["libs/RVL_SDK/src/revolution/dvd/dvdDeviceError", True],
			["libs/RVL_SDK/src/revolution/dvd/dvd_broadway", True],
		],
	},
	{
		"lib": "enc",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/asm/revolution/enc/encutility", False],
			["libs/RVL_SDK/asm/revolution/enc/encjapanese", False],
		],
	},
	{
		"lib": "esp",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/src/revolution/esp/esp", True],
		],
	},
	{
		"lib": "euart",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/src/revolution/euart/euart", True],
		],
	},
	{
		"lib": "exi",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/asm/revolution/exi/EXIBios", False],
			["libs/RVL_SDK/src/revolution/exi/EXIUart", True],
			["libs/RVL_SDK/src/revolution/exi/EXICommon", True],
		],
	},
	{
		"lib": "fs",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/src/revolution/fs/fs", True],
		],
	},
	{
		"lib": "gx",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/asm/revolution/gx/GXInit", False],
			["libs/RVL_SDK/asm/revolution/gx/GXFifo", False],
			["libs/RVL_SDK/asm/revolution/gx/GXAttr", False],
			["libs/RVL_SDK/asm/revolution/gx/GXMisc", False],
			["libs/RVL_SDK/asm/revolution/gx/GXGeometry", False],
			["libs/RVL_SDK/asm/revolution/gx/GXFrameBuf", False],
			["libs/RVL_SDK/src/revolution/gx/GXLight", True],
			["libs/RVL_SDK/asm/revolution/gx/GXTexture", False],
			["libs/RVL_SDK/src/revolution/gx/GXBump", True, {"mw_version" : "Wii/1.0"}],
			["libs/RVL_SDK/asm/revolution/gx/GXTev", False],
			["libs/RVL_SDK/asm/revolution/gx/GXPixel", False],
			["libs/RVL_SDK/src/revolution/gx/GXDisplayList", True],
			["libs/RVL_SDK/src/revolution/gx/GXTransform", True],
			["libs/RVL_SDK/asm/revolution/gx/GXPerf", False],
		],
	},
	{
		"lib": "homebuttonLib",
		"cflags": "$cflags_sdk -sdata 0 -sdata2 0 -i libs/RVL_SDK/src/revolution/hbm/include/",
		"mw_version": "Wii/1.0",
		"host": True,
		"objects": [
			["libs/RVL_SDK/asm/revolution/hbm/HBMFrameController", False],
			["libs/RVL_SDK/asm/revolution/hbm/HBMAnmController", False],
			["libs/RVL_SDK/asm/revolution/hbm/HBMGUIManager", False],
			["libs/RVL_SDK/asm/revolution/hbm/HBMController", False],
			["libs/RVL_SDK/asm/revolution/hbm/HBMRemoteSpk", False],
			["libs/RVL_SDK/asm/revolution/hbm/HBMAxSound", False],
			["libs/RVL_SDK/asm/revolution/hbm/HBMCommon", False],
			["libs/RVL_SDK/asm/revolution/hbm/HBMBase", False],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/lyt/lyt_animation", False],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/lyt/lyt_arcResourceAccessor", False],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/lyt/lyt_bounding", False],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/lyt/lyt_common", False],
			["libs/RVL_SDK/src/revolution/hbm/nw4hbm/lyt/lyt_drawInfo", True],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/lyt/lyt_group", False],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/lyt/lyt_layout", False],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/lyt/lyt_material", False],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/lyt/lyt_pane", False],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/lyt/lyt_picture", False],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/lyt/lyt_resourceAccessor", False],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/lyt/lyt_textBox", False],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/lyt/lyt_window", False],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/math/math_triangular", False],
			["libs/RVL_SDK/src/revolution/hbm/nw4hbm/ut/ut_binaryFileFormat", True],
			["libs/RVL_SDK/src/revolution/hbm/nw4hbm/ut/ut_CharStrmReader", True],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/ut/ut_CharWriter", False],
			["libs/RVL_SDK/src/revolution/hbm/nw4hbm/ut/ut_Font", True],
			["libs/RVL_SDK/src/revolution/hbm/nw4hbm/ut/ut_LinkList", True],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/ut/ut_list", False],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/ut/ut_ResFont", False],
			["libs/RVL_SDK/src/revolution/hbm/nw4hbm/ut/ut_ResFontBase", True],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/ut/ut_TagProcessorBase", False],
			["libs/RVL_SDK/asm/revolution/hbm/nw4hbm/ut/ut_TextWriterBase", False],
			["libs/RVL_SDK/asm/revolution/hbm/mix", False],
			["libs/RVL_SDK/asm/revolution/hbm/syn", False],
			["libs/RVL_SDK/asm/revolution/hbm/synctrl", False],
			["libs/RVL_SDK/asm/revolution/hbm/synenv", False],
			["libs/RVL_SDK/asm/revolution/hbm/synmix", False],
			["libs/RVL_SDK/asm/revolution/hbm/synpitch", False],
			["libs/RVL_SDK/asm/revolution/hbm/synsample", False],
			["libs/RVL_SDK/asm/revolution/hbm/synvoice", False],
			["libs/RVL_SDK/asm/revolution/hbm/seq", False],
		],
	},
	{
		"lib": "ipc",
		"cflags": "$cflags_sdk",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/RVL_SDK/src/revolution/ipc/ipcMain", True],
			["libs/RVL_SDK/asm/revolution/ipc/ipcclt", False],
			["libs/RVL_SDK/asm/revolution/ipc/memory", False],
			["libs/RVL_SDK/src/revolution/ipc/ipcProfile", True],
		],
	},
	{
		"lib": "kpad",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/asm/revolution/kpad/KPAD", False],
		],
	},
	{
		"lib": "mem",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/src/revolution/mem/mem_heapCommon", True],
			["libs/RVL_SDK/asm/revolution/mem/mem_expHeap", False],
			["libs/RVL_SDK/src/revolution/mem/mem_frameHeap", True],
			["libs/RVL_SDK/src/revolution/mem/mem_allocator", True],
			["libs/RVL_SDK/src/revolution/mem/mem_list", True],
		],
	},
	{
		"lib": "mix",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/asm/revolution/mix/mix", False],
			["libs/RVL_SDK/asm/revolution/mix/remote", False],
		],
	},
	{
		"lib": "mtx",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/src/revolution/mtx/mtx", True],
			["libs/RVL_SDK/src/revolution/mtx/mtxvec", True],
			["libs/RVL_SDK/src/revolution/mtx/mtx44", True],
			["libs/RVL_SDK/src/revolution/mtx/vec", True],
			["libs/RVL_SDK/src/revolution/mtx/quat", True],
		],
	},
	{
		"lib": "nand",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/asm/revolution/nand/nand", False],
			["libs/RVL_SDK/asm/revolution/nand/NANDOpenClose", False],
			["libs/RVL_SDK/asm/revolution/nand/NANDCore", False],
			["libs/RVL_SDK/asm/revolution/nand/NANDCheck", False],
			["libs/RVL_SDK/asm/revolution/nand/NANDLogging", False],
		],
	},
	{
		"lib": "os",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/src/revolution/os/OS", True],
			["libs/RVL_SDK/src/revolution/os/OSAlarm", True],
			["libs/RVL_SDK/src/revolution/os/OSAlloc", True],
			["libs/RVL_SDK/src/revolution/os/OSArena", True],
			["libs/RVL_SDK/src/revolution/os/OSAudioSystem", True],
			["libs/RVL_SDK/src/revolution/os/OSCache", True],
			["libs/RVL_SDK/src/revolution/os/OSContext", True],
			["libs/RVL_SDK/src/revolution/os/OSError", True],
			["libs/RVL_SDK/asm/revolution/os/OSExec", False],
			["libs/RVL_SDK/src/revolution/os/OSFatal", True],
			["libs/RVL_SDK/src/revolution/os/OSFont", True],
			["libs/RVL_SDK/src/revolution/os/OSInterrupt", True],
			["libs/RVL_SDK/src/revolution/os/OSLink", True],
			["libs/RVL_SDK/src/revolution/os/OSMessage", True],
			["libs/RVL_SDK/src/revolution/os/OSMemory", True],
			["libs/RVL_SDK/src/revolution/os/OSMutex", True],
			["libs/RVL_SDK/src/revolution/os/OSReboot", True],
			["libs/RVL_SDK/asm/revolution/os/OSReset", False],
			["libs/RVL_SDK/src/revolution/os/OSRtc", True],
			["libs/RVL_SDK/src/revolution/os/OSSync", True],
			["libs/RVL_SDK/src/revolution/os/OSThread", True],
			["libs/RVL_SDK/src/revolution/os/OSTime", True],
			["libs/RVL_SDK/src/revolution/os/OSUtf", True, {"mw_version" : "GC/3.0"}],
			["libs/RVL_SDK/src/revolution/os/OSIpc", True],
			["libs/RVL_SDK/src/revolution/os/OSStateTM", True],
			["libs/RVL_SDK/src/revolution/os/__start", True],
			["libs/RVL_SDK/src/revolution/os/OSPlayRecord", True],
			["libs/RVL_SDK/src/revolution/os/OSStateFlags", True],
			["libs/RVL_SDK/asm/revolution/os/OSNet", False],
			["libs/RVL_SDK/src/revolution/os/OSNandbootInfo", True],
			["libs/RVL_SDK/asm/revolution/os/OSPlayTime", False],
			["libs/RVL_SDK/src/revolution/os/OSCrc", True],
			["libs/RVL_SDK/asm/revolution/os/OSLaunch", False],
			["libs/RVL_SDK/src/revolution/os/__ppc_eabi_init", True],
		],
	},
	{
		"lib": "pad",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/src/revolution/pad/Pad", True],
		],
	},
	{
		"lib": "sc",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/asm/revolution/sc/scsystem", False],
			["libs/RVL_SDK/src/revolution/sc/scapi", True],
			["libs/RVL_SDK/src/revolution/sc/scapi_prdinfo", True, {"mw_version" : "GC/3.0"}],
		],
	},
	{
		"lib": "si",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/asm/revolution/si/SIBios", False],
			["libs/RVL_SDK/src/revolution/si/SISamplingRate", True],
		],
	},
	{
		"lib": "tpl",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/src/revolution/tpl/TPL", True],
		],
	},
	{
		"lib": "usb",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/src/revolution/usb/usb", True],
		],
	},
	{
		"lib": "vi",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/asm/revolution/vi/vi", False],
			["libs/RVL_SDK/asm/revolution/vi/i2c", False],
			["libs/RVL_SDK/asm/revolution/vi/vi3in1", False],
		],
	},
	{
		"lib": "wenc",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/asm/revolution/wenc/wenc", False],
		],
	},
	{
		"lib": "wpad",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/asm/revolution/wpad/WPAD", False],
			["libs/RVL_SDK/asm/revolution/wpad/WPADHIDParser", False],
			["libs/RVL_SDK/asm/revolution/wpad/WPADEncrypt", False],
			["libs/RVL_SDK/asm/revolution/wpad/WPADMem", False],
			["libs/RVL_SDK/src/revolution/wpad/debug_msg", True],
		],
	},
	{
		"lib": "wud",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_sdk",
		"host": False,
		"objects": [
			["libs/RVL_SDK/asm/revolution/wud/WUD", False],
			["libs/RVL_SDK/asm/revolution/wud/WUDHidHost", False],
			["libs/RVL_SDK/src/revolution/wud/debug_msg", True],
		],
	},
	{
		"lib": "libadxwii",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_criware",
		"host": False,
		"objects": [
			["libs/CriWare/asm/adx/adxf/adx_fini", False],
			["libs/CriWare/asm/adx/adxf/adx_fs", False],
			["libs/CriWare/src/adx/adxf/adx_fcch", True],
			["libs/CriWare/asm/adx/adxt/adx_fsvr", False],
			["libs/CriWare/asm/adx/adxt/adx_inis", False],
			["libs/CriWare/asm/adx/adxt/adx_lsc", False],
			["libs/CriWare/asm/adx/adxt/adx_mng", False],
			["libs/CriWare/asm/adx/adxt/adx_sfa", False],
			["libs/CriWare/asm/adx/adxt/adx_sjd", False],
			["libs/CriWare/asm/adx/adxt/adx_stmc", False],
			["libs/CriWare/asm/adx/adxt/adx_tlk2", False],
			["libs/CriWare/asm/adx/adxt/adx_tlk", False],
			["libs/CriWare/asm/adx/adxt/adx_tsvr", False],
			["libs/CriWare/asm/adx/adxt/adx_xpnd", False],
			["libs/CriWare/asm/adx/adxt/adx_amp", False],
			["libs/CriWare/asm/adx/adxt/adx_bahx", False],
			["libs/CriWare/asm/adx/adxt/adx_baif", False],
			["libs/CriWare/asm/adx/adxt/adx_bsc", False],
			["libs/CriWare/asm/adx/adxt/adx_bwav", False],
			["libs/CriWare/asm/adx/adxt/code_80389300", False],
			["libs/CriWare/asm/adx/adxt/adx_crs", False],
			["libs/CriWare/asm/adx/adxt/adx_dcd5", False],
			["libs/CriWare/asm/adx/adxt/adx_dcd", False],
			["libs/CriWare/asm/adx/adxt/adx_errs", False],
			["libs/CriWare/src/adx/ahx/ahx_ftbl", True],
			["libs/CriWare/asm/adx/ahx/ahx_link", False],
			["libs/CriWare/asm/adx/ahx/ahx_mflt_c", False],
			["libs/CriWare/asm/adx/ahx/ahx_mwin2_c", False],
			["libs/CriWare/asm/adx/ahx/ahx_sbf2", False],
			["libs/CriWare/asm/adx/ahx/ahx_sbf", False],
			["libs/CriWare/asm/adx/ahx/ahx_sjd", False],
			["libs/CriWare/src/adx/ahx/ahx_wtbl", True],
			["libs/CriWare/asm/adx/ahx/adx_hdr", False],
			["libs/CriWare/src/adx/ahx/ahx_atbl", True],
			["libs/CriWare/asm/adx/ahx/ahx_bsr", False],
			["libs/CriWare/asm/adx/ahx/ahx_cmn", False],
			["libs/CriWare/asm/adx/ahx/ahx_dcd", False],
			["libs/CriWare/asm/adx/cricfg/cfg_lib", False],
			["libs/CriWare/asm/adx/cvfs/cri_cvfs", False],
			["libs/CriWare/asm/adx/gcci/gcci", False],
			["libs/CriWare/asm/adx/gcci/gcci_sub", False],
			["libs/CriWare/asm/adx/lsc/lsc_err", False],
			["libs/CriWare/asm/adx/lsc/lsc_ini", False],
			["libs/CriWare/asm/adx/lsc/lsc_svr", False],
			["libs/CriWare/asm/adx/lsc/lsc", False],
			["libs/CriWare/asm/adx/lsc/lsc_crs", False],
			["libs/CriWare/asm/adx/mfci/mfci", False],
			["libs/CriWare/asm/adx/sj/sj_mem", False],
			["libs/CriWare/asm/adx/sj/sj_rbf", False],
			["libs/CriWare/asm/adx/sj/sj_uni", False],
			["libs/CriWare/asm/adx/sj/sj_utl", False],
			["libs/CriWare/asm/adx/sj/sj_crs", False],
			["libs/CriWare/asm/adx/sj/sj_err", False],
			["libs/CriWare/asm/adx/svm/svm", False],
			["libs/CriWare/asm/adx/adxt/adx_bsps", False],
			["libs/CriWare/asm/adx/adxt/adx_bau", False],
			["libs/CriWare/asm/adx/wiirna/rna_crs", False],
			["libs/CriWare/asm/adx/wiirna/rna_err", False],
			["libs/CriWare/asm/adx/wiirna/ax_rna", False],
			["libs/CriWare/asm/adx/adxt/srcwii/adx_mwii", False],
			["libs/CriWare/asm/adx/adxt/srcwii/adx_suwii", False],
			["libs/CriWare/asm/adx/adxt/srcwii/adx_rnawii", False],
			["libs/CriWare/asm/adx/std/cri_crw_std", False],
		],
	},
	{
		"lib": "libmwsfdwii",
		"mw_version": "Wii/1.1",
		"cflags": "$cflags_criware",
		"host": False,
		"objects": [
			["libs/CriWare/asm/sofdec/cft/srcgc/cftyp422_ppc", False],
			["libs/CriWare/asm/sofdec/cft/cft_common", False],
			["libs/CriWare/asm/sofdec/mwply/mwsfdfrm", False],
			["libs/CriWare/asm/sofdec/mwply/mwsfdrna", False],
			["libs/CriWare/asm/sofdec/mwply/mwsfdsl", False],
			["libs/CriWare/asm/sofdec/mwply/mwsfdsvm", False],
			["libs/CriWare/asm/sofdec/mwply/mwstm", False],
			["libs/CriWare/asm/sofdec/mwply/mwsfdsfx", False],
			["libs/CriWare/asm/sofdec/mwply/mwsfdcre", False],
			["libs/CriWare/asm/sofdec/mwply/mwsfdlib", False],
			["libs/CriWare/asm/sofdec/mwply/mwsfdply", False],
			["libs/CriWare/asm/sofdec/mwply/mwsfdset", False],
			["libs/CriWare/asm/sofdec/mwply/mwsfdsvr", False],
			["libs/CriWare/asm/sofdec/mwply/mwsfdsst", False],
			["libs/CriWare/asm/sofdec/mwply/mwsfx_Y84C44", False],
			["libs/CriWare/asm/sofdec/mwply/code_803A3AE4", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_bdec", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_cdec", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_cmc", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_dec", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_deli", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_emp", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_err", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_frm", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_get", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_hdec", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_lib", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_mc", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_vlc", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_umc", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_mcy", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_m2v", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpvabdec", False],
			["libs/CriWare/asm/sofdec/sfdcore/mpv/mpv_slice", False],
			["libs/CriWare/asm/sofdec/sfdcore/dct/dct_ac", False],
			["libs/CriWare/asm/sofdec/sfdcore/dct/dct_isr", False],
			["libs/CriWare/asm/sofdec/sfdcore/dct/dct_ver", False],
			["libs/CriWare/asm/sofdec/sfdcore/memcpy/mcp_not", False],
			["libs/CriWare/asm/sofdec/sfdcore/mps/mps_dec", False],
			["libs/CriWare/asm/sofdec/sfdcore/mps/mps_del", False],
			["libs/CriWare/asm/sofdec/sfdcore/mps/mps_get", False],
			["libs/CriWare/asm/sofdec/sfdcore/mps/mps_lib", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_adxt", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_aoap", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_buf", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_con", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_hds", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_lib", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_mem", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_mps", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_mpv", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_mpvf", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_pl2", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_ply", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_pts", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_see", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_set", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_tim", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_trn", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_uo", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_vom", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_tmr", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_tst", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfd/sfd_seeki", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfh/sfh_local", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfh/sfh_main", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfh/sfh_ver1", False],
			["libs/CriWare/asm/sofdec/sfdcore/sfh/sfh_ver2", False],
			["libs/CriWare/asm/sofdec/sfdcore/uty/cmptime", False],
			["libs/CriWare/asm/sofdec/sfdcore/uty/memcpyd", False],
			["libs/CriWare/asm/sofdec/sfdcore/uty/memsetd", False],
			["libs/CriWare/asm/sofdec/sfdcore/uty/muldiv", False],
			["libs/CriWare/asm/sofdec/sfdcore/uty/muldivr", False],
			["libs/CriWare/asm/sofdec/sfdcore/uty/uty_tmr", False],
			["libs/CriWare/asm/sofdec/sfx/sfx_set", False],
			["libs/CriWare/asm/sofdec/sfx/sfx_cnv", False],
			["libs/CriWare/asm/sofdec/sfx/sfx_inf", False],
			["libs/CriWare/asm/sofdec/sfx/sfx_lib", False],
			["libs/CriWare/asm/sofdec/sfx/sfx_alp", False],
			["libs/CriWare/asm/sofdec/sfx/sfx_zmv", False],
			["libs/CriWare/asm/sofdec/sfx/sfx_sud", False],
			["libs/CriWare/asm/sofdec/sfx/sfx_cnv_to_Y84C44", False],
			["libs/CriWare/asm/sofdec/sud/sud_lib", False],
		],
	},
	{
		"lib": "libnw4r_db",
		"mw_version": "GC/3.0",
		"cflags": "$cflags_nw4r",
		"host": False,
		"objects": [
			["libs/nw4r/asm/db/db_console", False],
			["libs/nw4r/asm/db/db_assert", False],
		],
	},
	{
		"lib": "libnw4r_g3d",
		"mw_version": "GC/3.0",
		"cflags": "$cflags_nw4r",
		"host": False,
		"objects": [
			["libs/nw4r/asm/g3d/res/g3d_rescommon", False],
			["libs/nw4r/asm/g3d/res/g3d_resdict", False],
			["libs/nw4r/asm/g3d/res/g3d_resfile", False],
			["libs/nw4r/asm/g3d/res/g3d_resmdl", False],
			["libs/nw4r/asm/g3d/res/g3d_resshp", False],
			["libs/nw4r/asm/g3d/res/g3d_restev", False],
			["libs/nw4r/asm/g3d/res/g3d_resmat", False],
			["libs/nw4r/asm/g3d/res/g3d_resvtx", False],
			["libs/nw4r/asm/g3d/res/g3d_restex", False],
			["libs/nw4r/asm/g3d/res/g3d_resnode", False],
			["libs/nw4r/asm/g3d/res/g3d_resanm", False],
			["libs/nw4r/asm/g3d/res/g3d_resanmclr", False],
			["libs/nw4r/asm/g3d/res/g3d_resanmtexpat", False],
			["libs/nw4r/asm/g3d/res/g3d_resanmtexsrt", False],
			["libs/nw4r/asm/g3d/res/g3d_resanmchr", False],
			["libs/nw4r/asm/g3d/res/g3d_reslightset", False],
			["libs/nw4r/asm/g3d/res/g3d_resanmamblight", False],
			["libs/nw4r/asm/g3d/res/g3d_resanmlight", False],
			["libs/nw4r/asm/g3d/res/g3d_resanmfog", False],
			["libs/nw4r/asm/g3d/res/g3d_resanmcamera", False],
			["libs/nw4r/asm/g3d/res/g3d_resanmscn", False],
			["libs/nw4r/asm/g3d/g3d_transform", False],
			["libs/nw4r/asm/g3d/g3d_anmvis", False],
			["libs/nw4r/asm/g3d/g3d_anmclr", False],
			["libs/nw4r/asm/g3d/g3d_anmtexpat", False],
			["libs/nw4r/asm/g3d/g3d_anmtexsrt", False],
			["libs/nw4r/asm/g3d/g3d_anmchr", False],
			["libs/nw4r/asm/g3d/g3d_anmshp", False],
			["libs/nw4r/asm/g3d/g3d_anmscn", False],
			["libs/nw4r/asm/g3d/g3d_obj", False],
			["libs/nw4r/asm/g3d/g3d_anmobj", False],
			["libs/nw4r/asm/g3d/platform/g3d_gpu", False],
			["libs/nw4r/asm/g3d/platform/g3d_cpu", False],
			["libs/nw4r/asm/g3d/g3d_state", False],
			["libs/nw4r/asm/g3d/g3d_draw1mat1shp", False],
			["libs/nw4r/asm/g3d/g3d_calcview", False],
			["libs/nw4r/asm/g3d/g3d_dcc", False],
			["libs/nw4r/asm/g3d/g3d_workmem", False],
			["libs/nw4r/asm/g3d/g3d_calcworld", False],
			["libs/nw4r/asm/g3d/g3d_draw", False],
			["libs/nw4r/asm/g3d/g3d_camera", False],
			["libs/nw4r/asm/g3d/dcc/g3d_basic", False],
			["libs/nw4r/asm/g3d/dcc/g3d_maya", False],
			["libs/nw4r/asm/g3d/dcc/g3d_xsi", False],
			["libs/nw4r/asm/g3d/dcc/g3d_3dsmax", False],
			["libs/nw4r/asm/g3d/g3d_scnobj", False],
			["libs/nw4r/asm/g3d/g3d_scnroot", False],
			["libs/nw4r/asm/g3d/g3d_scnmdlsmpl", False],
			["libs/nw4r/asm/g3d/g3d_scnmdl", False],
			["libs/nw4r/asm/g3d/g3d_scnmdlexpand", False],
			["libs/nw4r/asm/g3d/g3d_calcmaterial", False],
			["libs/nw4r/asm/g3d/g3d_init", False],
			["libs/nw4r/asm/g3d/g3d_scnproc", False],
			["libs/nw4r/asm/g3d/g3d_fog", False],
			["libs/nw4r/asm/g3d/g3d_light", False],
			["libs/nw4r/asm/g3d/g3d_calcvtx", False],
		],
	},
	{
		"lib": "libnw4r_lyt",
		"mw_version": "GC/3.0",
		"cflags": "$cflags_nw4r",
		"host": False,
		"objects": [
			["libs/nw4r/src/lyt/lyt_init", True],
			["libs/nw4r/asm/lyt/lyt_pane", False],
			["libs/nw4r/asm/lyt/lyt_group", False],
			["libs/nw4r/asm/lyt/lyt_layout", False],
			["libs/nw4r/asm/lyt/lyt_picture", False],
			["libs/nw4r/asm/lyt/lyt_textBox", False],
			["libs/nw4r/asm/lyt/lyt_window", False],
			["libs/nw4r/asm/lyt/lyt_bounding", False],
			["libs/nw4r/asm/lyt/lyt_material", False],
			["libs/nw4r/asm/lyt/lyt_texMap", False],
			["libs/nw4r/src/lyt/lyt_drawInfo", True],
			["libs/nw4r/asm/lyt/lyt_animation", False],
			["libs/nw4r/src/lyt/lyt_resourceAccessor", True],
			["libs/nw4r/asm/lyt/lyt_arcResourceAccessor", False],
			["libs/nw4r/asm/lyt/lyt_common", False],
			["libs/nw4r/asm/lyt/lyt_util", False],
		],
	},
	{
		"lib": "libnw4r_math",
		"mw_version": "GC/3.0",
		"cflags": "$cflags_nw4r",
		"host": False,
		"objects": [
			["libs/nw4r/asm/math/math_arithmetic", False],
			["libs/nw4r/asm/math/math_triangular", False],
			["libs/nw4r/asm/math/math_types", False],
			["libs/nw4r/asm/math/math_geometry", False],
		],
	},
	{
		"lib": "libnw4r_snd",
		"mw_version": "GC/3.0",
		"cflags": "$cflags_nw4r",
		"host": False,
		"objects": [
			["libs/nw4r/asm/snd/snd_AxManager", False],
			["libs/nw4r/asm/snd/snd_AxVoice", False],
			["libs/nw4r/asm/snd/snd_AxVoiceManager", False],
			["libs/nw4r/asm/snd/snd_AxfxImpl", False],
			["libs/nw4r/asm/snd/snd_Bank", False],
			["libs/nw4r/asm/snd/snd_BankFile", False],
			["libs/nw4r/asm/snd/snd_BasicPlayer", False],
			["libs/nw4r/asm/snd/snd_BasicSound", False],
			["libs/nw4r/asm/snd/snd_BiquadFilterPreset", False],
			["libs/nw4r/asm/snd/snd_Channel", False],
			["libs/nw4r/asm/snd/snd_DisposeCallbackManager", False],
			["libs/nw4r/asm/snd/snd_EnvGenerator", False],
			["libs/nw4r/asm/snd/snd_ExternalSoundPlayer", False],
			["libs/nw4r/asm/snd/snd_FxChorusDpl2", False],
			["libs/nw4r/asm/snd/snd_FxDelayDpl2", False],
			["libs/nw4r/asm/snd/snd_FxReverbStdDpl2", False],
			["libs/nw4r/asm/snd/snd_InstancePool", False],
			["libs/nw4r/asm/snd/snd_Lfo", False],
			["libs/nw4r/asm/snd/snd_McsSoundArchive", False],
			["libs/nw4r/asm/snd/snd_MemorySoundArchive", False],
			["libs/nw4r/asm/snd/snd_MidiSeqPlayer", False],
			["libs/nw4r/asm/snd/snd_MmlParser", False],
			["libs/nw4r/asm/snd/snd_MmlSeqTrack", False],
			["libs/nw4r/asm/snd/snd_MmlSeqTrackAllocator", False],
			["libs/nw4r/asm/snd/snd_PlayerHeap", False],
			["libs/nw4r/asm/snd/snd_RemoteSpeaker", False],
			["libs/nw4r/asm/snd/snd_RemoteSpeakerManager", False],
			["libs/nw4r/asm/snd/snd_SeqFile", False],
			["libs/nw4r/asm/snd/snd_SeqPlayer", False],
			["libs/nw4r/asm/snd/snd_SeqSound", False],
			["libs/nw4r/asm/snd/snd_SeqSoundHandle", False],
			["libs/nw4r/asm/snd/snd_SeqTrack", False],
			["libs/nw4r/asm/snd/snd_SoundArchive", False],
			["libs/nw4r/asm/snd/snd_SoundArchiveFile", False],
			["libs/nw4r/asm/snd/snd_SoundArchivePlayer", False],
			["libs/nw4r/asm/snd/snd_SoundHandle", False],
			["libs/nw4r/asm/snd/snd_SoundPlayer", False],
			["libs/nw4r/asm/snd/snd_SoundStartable", False],
			["libs/nw4r/asm/snd/snd_SoundSystem", False],
			["libs/nw4r/asm/snd/snd_SoundThread", False],
			["libs/nw4r/asm/snd/snd_StrmChannel", False],
			["libs/nw4r/asm/snd/snd_StrmFile", False],
			["libs/nw4r/asm/snd/snd_StrmPlayer", False],
			["libs/nw4r/asm/snd/snd_StrmSound", False],
			["libs/nw4r/asm/snd/snd_StrmSoundHandle", False],
			["libs/nw4r/asm/snd/snd_Task", False],
			["libs/nw4r/asm/snd/snd_TaskManager", False],
			["libs/nw4r/asm/snd/snd_TaskThread", False],
			["libs/nw4r/asm/snd/snd_Voice", False],
			["libs/nw4r/asm/snd/snd_VoiceManager", False],
			["libs/nw4r/asm/snd/snd_Util", False],
			["libs/nw4r/asm/snd/snd_WaveFile", False],
			["libs/nw4r/asm/snd/snd_WaveSound", False],
			["libs/nw4r/asm/snd/snd_WaveSoundHandle", False],
			["libs/nw4r/asm/snd/snd_WsdFile", False],
			["libs/nw4r/asm/snd/snd_WsdPlayer", False],
			["libs/nw4r/src/snd/snd_adpcm", True],
		],
	},
	{
		"lib": "libnw4r_ut",
		"mw_version": "GC/3.0",
		"cflags": "$cflags_nw4r",
		"host": False,
		"objects": [
			["libs/nw4r/src/ut/ut_LinkList", True],
			["libs/nw4r/src/ut/ut_binaryFileFormat", True],
			["libs/nw4r/src/ut/ut_CharStrmReader", True],
			["libs/nw4r/src/ut/ut_TagProcessorBase", True],
			["libs/nw4r/src/ut/ut_IOStream", True],
			["libs/nw4r/src/ut/ut_FileStream", True],
			["libs/nw4r/asm/ut/ut_DvdFileStream", False],
			["libs/nw4r/src/ut/ut_LockedCache", True],
			["libs/nw4r/src/ut/ut_Font", True],
			["libs/nw4r/asm/ut/ut_ResFontBase", False],
			["libs/nw4r/src/ut/ut_ResFont", True],
			["libs/nw4r/asm/ut/ut_ArchiveFontBase", False],
			["libs/nw4r/asm/ut/ut_PackedFont", False],
			["libs/nw4r/asm/ut/ut_CharWriter", False],
			["libs/nw4r/asm/ut/ut_TextWriterBase", False],
		],
	},
	{
		"lib": "monolithlib",
		"cflags": "$cflags_base -ipa file -inline auto -str pool,readonly,reuse -RTTI on -enc SJIS",
		"mw_version": "Wii/1.1",
		"host": True,
		"objects": [
			["libs/monolithlib/asm/Transform", False],
			["libs/monolithlib/asm/Heap", False],
			["libs/monolithlib/asm/StringUtils", False],
			["libs/monolithlib/src/MTRand", True],
			["libs/monolithlib/src/Vec3", True],
			["libs/monolithlib/src/Vec4", True],
			["libs/monolithlib/src/FastCast", True],
			["libs/monolithlib/src/MathConstants", True],
			["libs/monolithlib/src/Random", True],
			["libs/monolithlib/src/FloatUtils", True],
			["libs/monolithlib/src/Col3", True],
			["libs/monolithlib/src/Col4", True],
			["libs/monolithlib/asm/Mat34", False],
			["libs/monolithlib/src/Mat44", True],
			["libs/monolithlib/asm/Quat", False],
			["libs/monolithlib/asm/code_8043738C", False],
			["libs/monolithlib/asm/work/CWorkThread", False],
			["libs/monolithlib/asm/CProc", False],
			["libs/monolithlib/asm/CProcRoot", False],
			["libs/monolithlib/asm/CRsrcData", False],
			["libs/monolithlib/asm/CScriptCode", False],
			["libs/monolithlib/asm/CToken", False],
			["libs/monolithlib/asm/CRootProc", False],
			["libs/monolithlib/asm/CView", False],
			["libs/monolithlib/asm/CViewFrame", False],
			["libs/monolithlib/asm/CViewRoot", False],
			["libs/monolithlib/asm/work/CWorkControl", False],
			["libs/monolithlib/asm/work/CWorkFlowSetup", False],
			["libs/monolithlib/asm/work/CWorkRoot", False],
			["libs/monolithlib/asm/work/CWorkSystem", False],
			["libs/monolithlib/asm/work/CWorkSystemMem", False],
			["libs/monolithlib/asm/CProcess", False],
			["libs/monolithlib/asm/CDoubleListNode", False],
			["libs/monolithlib/asm/CChildListNode", False],
			["libs/monolithlib/asm/device/CDeviceRemotePad", False],
			["libs/monolithlib/asm/device/CDeviceBase", False],
			["libs/monolithlib/asm/device/CDeviceSC", False],
			["libs/monolithlib/asm/device/CDeviceVI", False],
			["libs/monolithlib/asm/device/CDeviceVICb", False],
			["libs/monolithlib/asm/CFontLayer", False],
			["libs/monolithlib/asm/CGXCache", False],
			["libs/monolithlib/asm/IStateCache", False],
			["libs/monolithlib/asm/device/CDevice", False],
			["libs/monolithlib/asm/device/CDeviceClock", False],
			["libs/monolithlib/asm/device/CDeviceFile", False],
			["libs/monolithlib/asm/device/CDeviceFileCri", False],
			["libs/monolithlib/src/code_80450B14", True],
			["libs/monolithlib/asm/device/code_80450B2C", False],
			["libs/monolithlib/asm/device/CDeviceFileDvd", False],
			["libs/monolithlib/asm/device/CDeviceFileJob", False],
			["libs/monolithlib/asm/device/CDeviceFileJobReadDvd", False],
			["libs/monolithlib/asm/device/CDeviceFont", False],
			["libs/monolithlib/asm/device/CDeviceFontInfoExt", False],
			["libs/monolithlib/asm/device/CDeviceFontInfoRom", False],
			["libs/monolithlib/asm/device/CDeviceFontLayer", False],
			["libs/monolithlib/asm/device/CDeviceFontLoader", False],
			["libs/monolithlib/asm/device/CDeviceGX", False],
			["libs/monolithlib/asm/CDesktop", False],
			["libs/monolithlib/asm/code_80456134", False],
			["libs/monolithlib/asm/CException", False],
			["libs/monolithlib/asm/lib/CLib", False],
			["libs/monolithlib/asm/lib/CLibCri", False],
			["libs/monolithlib/asm/lib/CLibCriMoviePlay", False],
			["libs/monolithlib/asm/lib/CLibCriStreamingPlay", False],
			["libs/monolithlib/asm/lib/CLibG3d", False],
			["libs/monolithlib/asm/lib/CLibHbm", False],
			["libs/monolithlib/asm/lib/CLibHbmControl", False],
			["libs/monolithlib/asm/lib/CLibLayout", False],
			["libs/monolithlib/asm/lib/CLibStaticData", False],
			["libs/monolithlib/asm/lib/CLibVM", False],
			["libs/monolithlib/asm/CTaskLOD", False],
			["libs/monolithlib/asm/code_8046376C", False],
			["libs/monolithlib/asm/code_804645CC", False],
			["libs/monolithlib/asm/code_80468434", False],
			["libs/monolithlib/asm/code_8046A530", False],
			["libs/monolithlib/asm/LOD/LODMemMan", False],
			["libs/monolithlib/asm/mpfsys/MPFDrawDisplayList", False],
			["libs/monolithlib/asm/mpfsys/MPFDrawMdlNoColor", False],
			["libs/monolithlib/asm/mpfsys/MPFDrawMdlColor", False],
			["libs/monolithlib/asm/mpfsys/MPFDrawBillboard", False],
			["libs/monolithlib/asm/mpfsys/MPFDrawCross", False],
			["libs/monolithlib/asm/mpfsys/MPFDrawBillLayTex", False],
			["libs/monolithlib/asm/mpfsys/code_8047BB54", False],
			["libs/monolithlib/asm/code_8047CA88", False],
			["libs/monolithlib/asm/code_8047D2AC", False],
			["libs/monolithlib/asm/scn/CScnItemCameraNw4r", False],
			["libs/monolithlib/asm/scn/CScnItemId", False],
			["libs/monolithlib/asm/scn/CScnItemLight", False],
			["libs/monolithlib/asm/scn/CScnItemLightNw4r", False],
			["libs/monolithlib/asm/scn/CScnItemModel", False],
			["libs/monolithlib/asm/scn/CScnItemModelNw4r", False],
			["libs/monolithlib/asm/scn/CScnItemPool", False],
			["libs/monolithlib/asm/scn/CScnLightMan", False],
			["libs/monolithlib/asm/scn/CScnMaruShadowNw4r", False],
			["libs/monolithlib/asm/scn/CScnMem", False],
			["libs/monolithlib/asm/scn/CScnRoot", False],
			["libs/monolithlib/asm/scn/CScnRootNw4r", False],
			["libs/monolithlib/asm/scn/CScnTexWorkMan", False],
			["libs/monolithlib/asm/scn/CScnVirtualLight", False],
			["libs/monolithlib/asm/code_8049431C", False],
			["libs/monolithlib/asm/CVirtualLightAmb", False],
			["libs/monolithlib/asm/CVirtualLightDir", False],
			["libs/monolithlib/asm/CVirtualLightObj", False],
			["libs/monolithlib/asm/scn/CScn", False],
			["libs/monolithlib/asm/scn/CScn_80496B0C", False],
			["libs/monolithlib/asm/scn/CScnBlend", False],
			["libs/monolithlib/asm/scn/CScnBloom", False],
			["libs/monolithlib/asm/scn/CScnCameraMan", False],
			["libs/monolithlib/asm/scn/CScnEffectActNw4r", False],
			["libs/monolithlib/asm/scn/CScnFadeMan", False],
			["libs/monolithlib/asm/scn/CScnFilter", False],
			["libs/monolithlib/asm/scn/CScnFilterMan", False],
			["libs/monolithlib/asm/scn/CScnFogMan", False],
			["libs/monolithlib/asm/scn/CScnFrame", False],
			["libs/monolithlib/asm/scn/CScnIdMan", False],
			["libs/monolithlib/asm/scn/CScnItemAnim", False],
			["libs/monolithlib/asm/scn/CScnItemCamera", False],
			["libs/monolithlib/asm/vm/yvm", False],
			["libs/monolithlib/asm/code_804A6C60", False],
			["libs/monolithlib/asm/CColiProc", False],
			["libs/monolithlib/asm/code_804B2FF0", False],
			["libs/monolithlib/asm/code_804B59C8", False],
			["libs/monolithlib/asm/code_804BAE10", False],
			["libs/monolithlib/asm/code_804BC9EC", False],
			["libs/monolithlib/asm/code_804BD8E8", False],
			["libs/monolithlib/asm/code_804BF59C", False],
			["libs/monolithlib/asm/CLight", False],
			["libs/monolithlib/asm/scn/CScnEnvLgtCtrl", False],
			["libs/monolithlib/src/Unknown1", True],
			["libs/monolithlib/asm/code_804C8684", False],
			["libs/monolithlib/asm/code_804C8718", False],
			["libs/monolithlib/asm/code_804CC2B8", False],
			["libs/monolithlib/asm/effect/CETrail", False],
			["libs/monolithlib/asm/effect/code_804D854C", False],
			["libs/monolithlib/asm/work/CWorkSystemCache", False],
			["libs/monolithlib/asm/code_804D9274", False],
			["libs/monolithlib/asm/nand/CNand", False],
			["libs/monolithlib/asm/nand/code_804DA4CC", False],
			["libs/monolithlib/asm/nand/CNReqtaskSave", False],
			["libs/monolithlib/asm/nand/CNReqtaskLoad", False],
			["libs/monolithlib/asm/nand/CNReqtaskReaddir", False],
			["libs/monolithlib/asm/nand/CNReqtaskRemove", False],
			["libs/monolithlib/asm/nand/CNReqtaskCheck", False],
			["libs/monolithlib/src/effect/CERand", True],
			["libs/monolithlib/asm/code_804DB938", False],
			["libs/monolithlib/asm/work/CWorkSystemPack", False],
			["libs/monolithlib/asm/CPackItem", False],
			["libs/monolithlib/asm/CArcItem", False],
			["libs/monolithlib/asm/code_804DEDA8", False],
			["libs/monolithlib/asm/CSchedule", False],
			["libs/monolithlib/asm/code_804E36DC", False],
			["libs/monolithlib/asm/ScheduleList", False],
			["libs/monolithlib/asm/scn/CMdlMaterial", False],
			["libs/monolithlib/asm/scn/CMdlMouth", False],
			["libs/monolithlib/asm/scn/CMdlAnmUV", False],
			["libs/monolithlib/asm/scn/CMdlAnmEye", False],
			["libs/monolithlib/asm/scn/CMdlLook", False],
			["libs/monolithlib/asm/scn/CMdlDynamics", False],
			["libs/monolithlib/asm/code_804EE0F4", False],
			["libs/monolithlib/asm/code_804F0258", False],
			["libs/monolithlib/asm/nand/CNReqtaskSaveBanner", False],
			["libs/monolithlib/asm/nand/CNBanner", False],
		],
	},
]

if __name__ == "__main__":
	import os
	import io
	import sys
	import argparse
	import json

	from pathlib import Path
	from shutil import which
	from tools import ninja_syntax

	parser = argparse.ArgumentParser()
	parser.add_argument(
		"--version",
		dest="version",
		default="jp",
		help="version to build (jp)",
	)
	parser.add_argument(
		"--map",
		dest="map",
		default=True,
		action="store_true",
		help="generate map file",
	)
	parser.add_argument(
		"--no-check",
		dest="check",
		action="store_false",
		help="don't check hash of resulting dol",
	)
	parser.add_argument(
		"--no-static-libs",
		dest="static_libs",
		action="store_false",
		help="don't build and use static libs",
	)
	parser.add_argument(
		"--devkitppc",
		dest="devkitppc",
		type=Path,
		help="path to devkitPPC",
	)
	if os.name != "nt" and not "_NT-" in os.uname().sysname:
		parser.add_argument(
			"--wine",
			dest="wine",
			type=Path,
			help="path to wine (or wibo)",
		)
	parser.add_argument(
		"--build-dtk",
		dest="build_dtk",
		type=Path,
		help="path to decomp-toolkit source",
	)
	parser.add_argument(
		"--debug",
		dest="debug",
		action="store_true",
		help="build with debug info (non-matching)",
	)
	parser.add_argument(
		"--compilers",
		dest="compilers",
		type=Path,
		default=Path("tools/mwcc_compiler"),
		help="path to compilers",
	)
	parser.add_argument(
		"--build-dir",
		dest="build_dir",
		type=Path,
		default=Path("build"),
		help="base build directory",
	)
	args = parser.parse_args()

	# On Windows, we need this to use && in commands
	chain = "cmd /c " if os.name == "nt" else ""

	out = io.StringIO()
	n = ninja_syntax.Writer(out)

	n.variable("ninja_required_version", "1.3")
	n.newline()

	n.comment("The arguments passed to configure.py, for rerunning it.")
	configure_args = sys.argv[1:]
	# Ignore DEVKITPPC env var on Windows
	if os.name != "nt" and "DEVKITPPC" in os.environ and not args.devkitppc:
		configure_args.extend(["--devkitppc", os.environ["DEVKITPPC"]])
	n.variable("configure_args", configure_args)
	n.variable("python", f'"{sys.executable}"')
	n.newline()

	###
	# Variables
	###
	n.comment("Variables")
	version = args.version.lower()
	if version != "jp":
		sys.exit(f'Invalid version "{version}"')
	build_path = args.build_dir / f"xenoblade.{version}"
	if args.devkitppc:
		dkp_path = args.devkitppc
	elif "DEVKITPPC" in os.environ:
		dkp_path = Path(os.environ["DEVKITPPC"])
	elif os.name == "nt":
		dkp_path = Path("C:\devkitPro\devkitPPC")
	else:
		dkp_path = Path("/opt/devkitpro/devkitPPC")

	cflags_base = f"-proc gekko -nodefaults -fp hard -O4,p -enum int -use_lmw_stmw on -sdata 8 -sdata2 8 -func_align 4 -I- -i include/ -i libs/RVL_SDK/include/ -i libs/PowerPC_EABI_Support/include/std -i libs/nw4r/include/ -i libs/mm/include/ -i libs/monolithlib/include/ -i src/ -i libs/NdevExi2A/include/ -i libs/PowerPC_EABI_Support/include/"
	if args.debug:
		cflags_base += " -sym on -D_DEBUG"
	else:
		cflags_base += " -DNDEBUG -w off"
	cflags_base += " -lang=c99" #TODO: add c99 lang flag on per lib basis
	n.variable("cflags_base", cflags_base)
	n.variable("cflags_criware", "$cflags_base -sdata 0 -sdata2 0 -i libs/CriWare/src/")
	n.variable("cflags_nw4r", "$cflags_base -inline auto -Cpp_exceptions off -RTTI off")
	n.variable("cflags_sdk", "$cflags_base -use_lmw_stmw off -Cpp_exceptions off -enum int -inline auto -ipa file -func_align 16")

	asflags = f"-mgekko -I include -W --strip-local-absolute -gdwarf-2"
	n.variable("asflags", asflags)

	ldflags = "-fp fmadd -nodefaults -lcf ldscript.lcf"
	if args.map:
		map_path = build_path / "xenoblade.jp.MAP"
		ldflags += f" -map {map_path} -mapunused"
	if args.debug:
		ldflags += " -g"
	else:
		ldflags += " -w off"
	n.variable("ldflags", ldflags)

	mw_link_version = "Wii/1.1"
	n.variable("mw_version", mw_link_version)
	if os.name == "nt":
		exe = ".exe"
		wine = ""
	else:
		if "_NT-" in os.uname().sysname:
			# MSYS2
			wine = ""
		elif args.wine:
			wine = f"{args.wine} "
		elif which("wibo") is not None:
			wine = "wibo "
		else:
			wine = "wine "
		exe = ""
	n.newline()

	###
	# Tooling
	###
	n.comment("decomp-toolkit")

	tools_path = Path("tools")

	def path(input):
		if input is None:
			return None
		elif isinstance(input, list):
			return list(map(str, input))
		else:
			return [str(input)]

	if args.build_dtk:
		dtk = tools_path / "release" / f"dtk{exe}"
		n.rule(
			name="cargo",
			command="cargo build --release --manifest-path $in --bin $bin --target-dir $target",
			description="CARGO $bin",
			depfile=path(Path("$target") / "release" / "$bin.d"),
			deps="gcc",
		)
		n.build(
			outputs=path(dtk),
			rule="cargo",
			inputs=path(args.build_dtk / "Cargo.toml"),
			variables={
				"bin": "dtk",
				"target": tools_path,
			},
		)
	else:
		dtk = tools_path / f"dtk{exe}"
		download_dtk = tools_path / "download_dtk.py"
		n.rule(
			name="download_dtk",
			command=f"$python {download_dtk} $in $out",
			description="DOWNLOAD $out",
		)
		n.build(
			outputs=path(dtk),
			rule="download_dtk",
			inputs=path([tools_path / "dtk_version"]),
			implicit=path([download_dtk]),
		)
	n.newline()

	###
	# Rules
	###
	compiler_path = args.compilers / "$mw_version"
	mwcc = compiler_path / "mwcceppc.exe"
	mwld = compiler_path / "mwldeppc.exe"
	gnu_as = dkp_path / "bin" / f"powerpc-eabi-as{exe}"

	mwcc_cmd = f"{chain}{wine}{mwcc} $cflags -MMD -c $in -o $basedir"
	mwld_cmd = f"{wine}{mwld} $ldflags -o $out @$out.rsp"
	as_cmd = (
		f"{chain}{gnu_as} $asflags -o $out $in -MD $out.d"
		+ f" && {dtk} elf fixup $out $out"
	)
	ar_cmd = f"{dtk} ar create $out @$out.rsp"

	if os.name != "nt":
		transform_dep = tools_path / "transform-dep.py"
		transform_dep_cmd = f" && $python {transform_dep} $basefile.d $basefile.d"
		mwcc_cmd += transform_dep_cmd

	n.comment("Link ELF file")
	n.rule(
		name="link",
		command=mwld_cmd,
		description="LINK $out",
		rspfile="$out.rsp",
		rspfile_content="$in_newline",
	)
	n.newline()

	n.comment("MWCC build")
	n.rule(
		name="mwcc",
		command=mwcc_cmd,
		description="MWCC $out",
		depfile="$basefile.d",
		deps="gcc",
	)
	n.newline()

	n.comment("Assemble asm")
	n.rule(
		name="as",
		command=as_cmd,
		description="AS $out",
		depfile="$out.d",
		deps="gcc",
	)
	n.newline()

	n.comment("Create static library")
	n.rule(
		name="ar",
		command=ar_cmd,
		description="AR $out",
		rspfile="$out.rsp",
		rspfile_content="$in_newline",
	)
	n.newline()

	n.comment("Host build")
	n.variable("host_cflags", "-I include -Wno-trigraphs")
	n.variable(
		"host_cppflags",
		"-std=c++98 -I include -fno-exceptions -fno-rtti -D_CRT_SECURE_NO_WARNINGS -Wno-trigraphs -Wno-c++11-extensions",
	)
	n.rule(
		name="host_cc",
		command="clang $host_cflags -c -o $out $in",
		description="CC $out",
	)
	n.rule(
		name="host_cpp",
		command="clang++ $host_cppflags -c -o $out $in",
		description="CXX $out",
	)
	n.newline()

	###
	# Rules for source files
	###
	n.comment("Source files")
	src_path = Path("src")
	asm_path = Path("asm")
	build_src_path = build_path / "src"
	build_host_path = build_path / "host"
	build_asm_path = build_path / "asm"
	build_lib_path = build_path / "lib"

	objdiff_config = {
		"min_version": "0.4.3",
		"custom_make": "ninja",
		"build_target": True,
		"watch_patterns": [
			"*.c",
			"*.cp",
			"*.cpp",
			"*.h",
			"*.hpp",
			"*.py",
		],
		"units": [],
	}

	source_inputs = []
	host_source_inputs = []
	link_inputs = []
	used_compiler_versions = set()
	for lib in LIBS:
		inputs = []
		if "lib" in lib:
			lib_name = lib["lib"]
			n.comment(f"{lib_name}.a")
		else:
			n.comment("Loose files")

		for object in lib["objects"]:
			completed = False
			options = {
				"add_to_all": True,
				"mw_version": None,
				"cflags": None,
			}
			if type(object) is list:
				if len(object) > 1:
					completed = object[1]
				if len(object) > 2:
					options.update(object[2])
				object = object[0]

			cflags = options["cflags"] or lib["cflags"]
			mw_version = options["mw_version"] or lib["mw_version"]
			used_compiler_versions.add(mw_version)

			# objdiff config
			unit_config = {
				"name": object,
				"complete": completed,
			}

			c_file = None
			if os.path.exists(f"{object}.cpp"):
				c_file = Path(f"{object}.cpp")
			elif os.path.exists(f"{object}.cp"):
				c_file = Path(f"{object}.cp")
			elif os.path.exists(f"{object}.c"):
				c_file = Path(f"{object}.c")
			elif os.path.exists(f"{object}.C"):
				c_file = Path(f"{object}.C")

			if c_file is not None:
				n.build(
					outputs=path(build_path / f"{object}.o"),
					rule="mwcc",
					inputs=path(c_file),
					variables={
						"mw_version": mw_version,
						"cflags": options["cflags"] or lib["cflags"],
						"basedir": os.path.dirname(build_path / f"{object}"),
						"basefile": path(build_path / f"{object}"),
					},
				)
				if lib["host"]:
					n.build(
						outputs=path(build_host_path / f"{object}.o"),
						rule="host_cc" if c_file.suffix == ".c" else "host_cpp",
						inputs=path(c_file),
						variables={
							"basedir": os.path.dirname(build_host_path / object),
							"basefile": path(build_host_path / object),
						},
					)
					if options["add_to_all"]:
						host_source_inputs.append(build_host_path / f"{object}.o")
				if options["add_to_all"]:
					source_inputs.append(build_path / f"{object}.o")
				unit_config["base_path"] = str(build_path / f"{object}.o")
			if os.path.exists(f"{object}.s"):
				n.build(
					outputs=path(build_path / f"{object}.o"),
					rule="as",
					inputs=path(f"{object}.s"),
					implicit=path(dtk),
				)
			unit_config["target_path"] = str(build_path / f"{object}.o")
			objdiff_config["units"].append(unit_config)
			if completed:
				inputs.append(build_path / f"{object}.o")
			else:
				inputs.append(build_path / f"{object}.o")
		if args.static_libs and "lib" in lib:
			lib_name = lib["lib"]
			n.build(
				outputs=path(build_lib_path / f"{lib_name}.a"),
				rule="ar",
				inputs=path(inputs),
				implicit=path(dtk),
			)
			link_inputs.append(build_lib_path / f"{lib_name}.a")
		else:
			link_inputs.extend(inputs)
		n.newline()

	# Check if all compiler versions exist
	for mw_version in used_compiler_versions:
		mw_path = args.compilers / mw_version / "mwcceppc.exe"
		if not os.path.exists(mw_path):
			print(f"Compiler {mw_path} does not exist")
			exit(1)

	# Check if linker exists
	mw_path = args.compilers / mw_link_version / "mwldeppc.exe"
	if not os.path.exists(mw_path):
		print(f"Linker {mw_path} does not exist")
		exit(1)

	###
	# Link
	###
	n.comment("Link")
	if args.map:
		n.build(
			outputs=path(build_path / "main.elf"),
			rule="link",
			inputs=path(link_inputs),
			implicit_outputs=path(map_path),
		)
	else:
		n.build(
			outputs=path(build_path / "main.elf"),
			rule="link",
			inputs=path(link_inputs),
		)
	n.newline()

	###
	# Helper rule for building all source files
	###
	n.comment("Build all source files")
	n.build(
		outputs="all_source",
		rule="phony",
		inputs=path(source_inputs),
	)
	n.newline()

	###
	# Helper rule for building all source files, with a host compiler
	###
	n.comment("Build all source files with a host compiler")
	n.build(
		outputs="all_source_host",
		rule="phony",
		inputs=path(host_source_inputs),
	)
	n.newline()

	###
	# Generate DOL
	###
	n.comment("Generate DOL")
	n.rule(
		name="elf2dol",
		command=f"{dtk} elf2dol $in $out",
		description="DOL $out",
	)
	n.build(
		outputs=path(build_path / "main.dol"),
		rule="elf2dol",
		inputs=path(build_path / "main.elf"),
		implicit=path(dtk),
	)
	n.newline()

	###
	# Check DOL hash
	###
	if args.check:
		n.comment("Check DOL hash")
		n.rule(
			name="check",
			command=f"{dtk} shasum -c $in -o $out",
			description="CHECK $in",
		)
		n.build(
			outputs=path(build_path / "main.dol.ok"),
			rule="check",
			inputs=f"sha1/xenoblade.{version}.sha1",
			implicit=path([build_path / "main.dol", dtk]),
		)
		n.newline()

	###
	# Progress script
	###
	if args.map:
		n.comment("Check progress")
		calc_progress = tools_path / "calcprogress.py"
		n.rule(
			name="progress",
			command=f"$python {calc_progress} $in -o $out",
			description="PROGRESS $in",
		)
		n.build(
			outputs=path(build_path / "main.dol.progress"),
			rule="progress",
			inputs=path([build_path / "main.dol", map_path]),
			implicit=path([calc_progress, build_path / "main.dol.ok"]),
		)
		n.newline()

	###
	# Regenerate on change
	###
	n.comment("Reconfigure on change")
	n.rule(
		name="configure",
		command="$python configure.py $configure_args",
		generator=True,
	)
	n.build(
		outputs="build.ninja",
		rule="configure",
		implicit=path(["configure.py", tools_path / "ninja_syntax.py"]),
	)
	n.newline()

	###
	# Default rule
	###
	n.comment("Default rule")
	if args.check:
		dol_out = build_path / "main.dol.ok"
	else:
		dol_out = build_path / "main.dol"
	if args.map:
		n.default(path([dol_out, build_path / "main.dol.progress"]))
	else:
		n.default(path([dol_out]))

	###
	# Write build.ninja
	###
	with open("build.ninja", "w") as f:
		f.write(out.getvalue())
	n.close()

	###
	# Write objdiff config
	###
	with open("objdiff.json", "w") as w:
		json.dump(objdiff_config, w, indent=4)
