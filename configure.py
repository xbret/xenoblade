#!/usr/bin/env python3
LIBS = [
    {
        "lib": "kyoshin",
        "cflags": "$cflags_base -ipa file -inline deferred -str pool,readonly,reuse -RTTI on -enc SJIS",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            ["kyoshin/appgame/CGame", False],
            ["kyoshin/appgame/main", True],
            ["kyoshin/appgame/plugin/plugin_deb", False],
            ["kyoshin/appgame/plugin/plugin_wait", False],
            ["kyoshin/appgame/plugin/oc_builtin", False],
            ["kyoshin/appgame/plugin/oc_thread", False],
            ["kyoshin/appgame/plugin/oc_msg", False],
            ["kyoshin/appgame/plugin/oc_bdat", False],
            ["kyoshin/appgame/plugin/oc_unit", False],
            ["kyoshin/appgame/CTaskGame", False],
            ["kyoshin/appgame/cf/CTaskGameCf", False],
            ["kyoshin/appgame/CTaskGameEff", False],
            ["kyoshin/appgame/plugin/oc_cfp", False],
            ["kyoshin/appgame/plugin/plugin_main", True],
            ["kyoshin/appgame/plugin/plugin_ui", False],
            ["kyoshin/appgame/plugin/plugin_eve", False],
            ["kyoshin/appgame/plugin/plugin_cfs", False],
            ["kyoshin/appgame/plugin/plugin_math", False],
            ["kyoshin/action/CActParamAnim", False],
            ["kyoshin/action/CActParamData", False],
            ["kyoshin/appgame/cf/CMcaFile", False],
            ["kyoshin/appgame/cf/CTaskEnvironment", False],
            ["kyoshin/appgame/CTimeLightGrp", False],
            ["kyoshin/appgame/cf/CActParamAnimGame", False],
            ["kyoshin/appgame/plugin/plugin_cam", False],
            ["kyoshin/appgame/cf/CTaskGameEffAfter", False],
            ["kyoshin/appgame/plugin/plugin_pad", False],
            ["kyoshin/appgame/cf/code_80061870", False],
            ["kyoshin/appgame/cf/CfResTask", False],
            ["kyoshin/appgame/cf/CfRes", False],
            ["kyoshin/appgame/cf/IResInfo", False],
            ["kyoshin/appgame/cf/CfScript", False],
            ["kyoshin/appgame/cf/CfTaskMain", False],
            ["kyoshin/appgame/cf/CfTFile", False],
            ["kyoshin/appgame/cf/CfCamEvent", False],
            ["kyoshin/appgame/cf/CfCamDirectionIntf", False],
            ["kyoshin/appgame/cf/CfCamLookatIntf", False],
            ["kyoshin/appgame/cf/CfCamTargetIntf", False],
            ["kyoshin/appgame/cf/CfCam", False],
            ["kyoshin/appgame/cf/CfCamEvent_1", False],
            ["kyoshin/appgame/code_8007C0F8", False],
            ["kyoshin/appgame/cf/CtrlEnemy", False],
            ["kyoshin/appgame/cf/CtrlMoveBase", False],
            ["kyoshin/appgame/cf/CtrlEneAiCall", False],
            ["kyoshin/appgame/cf/CtrlMoveEne", False],
            ["kyoshin/appgame/cf/CtrlNpc", False],
            ["kyoshin/appgame/cf/CtrlPad", False],
            ["kyoshin/appgame/cf/CtrlPc", False],
            ["kyoshin/appgame/cf/CtrlRemote", False],
            ["kyoshin/appgame/cf/CtrlObjectParam", False],
            ["kyoshin/appgame/code_800A3B24", False],
            ["kyoshin/appgame/code_800AA008", False],
            ["kyoshin/appgame/cf/CfCollCircleImpl", False],
            ["kyoshin/appgame/cf/CfCollSphereImpl", False],
            ["kyoshin/appgame/cf/CfCollAABBImpl", False],
            ["kyoshin/appgame/cf/CfCollCylinderImpl", False],
            ["kyoshin/appgame/cf/CfCollCapsuleImpl", False],
            ["kyoshin/appgame/cf/CfObjectColl", False],
            ["kyoshin/appgame/cf/CfObjectEff", False],
            ["kyoshin/appgame/cf/CfObjectEne", False],
            ["kyoshin/appgame/cf/CfObjectMap", False],
            ["kyoshin/appgame/cf/CfObjectModel", False],
            ["kyoshin/appgame/cf/CfObjectMove", False],
            ["kyoshin/appgame/cf/CfObjectNpc", False],
            ["kyoshin/appgame/cf/CfObjectObj", False],
            ["kyoshin/appgame/cf/CfObjectPc", False],
            ["kyoshin/appgame/cf/CfObjectPoint", False],
            ["kyoshin/appgame/cf/code_800C17DC", False],
            ["kyoshin/cfsys/CfObjectImplWalker", False],
            ["kyoshin/cfsys/CfObjectImplPc", False],
            ["kyoshin/cfsys/CfObjectImplObj", False],
            ["kyoshin/cfsys/CfObjectImplNpc", False],
            ["kyoshin/cfsys/CfObjectImplMove", False],
            ["kyoshin/cfsys/CfObjectImplEne", False],
            ["kyoshin/appgame/cf/CtrlAct", False],
            ["kyoshin/appgame/cf/CBattleManager", False],
            ["kyoshin/appgame/cf/code_800F42AC", False],
            ["kyoshin/appgame/cf/CfObjectEnumList", False],
            ["kyoshin/appgame/cf/CfObjectSelectorObj", False],
            ["kyoshin/appgame/CMainMenu", False],
            ["kyoshin/appgame/menu/CMenuArtsSelect", False],
            ["kyoshin/appgame/menu/CMenuBattleDamage", False],
            ["kyoshin/appgame/menu/CMenuBattlePlayerState", False],
            ["kyoshin/appgame/menu/CMenuEnemyState", False],
            ["kyoshin/appgame/menu/CMenuFade", False],
            ["kyoshin/appgame/menu/CMenuKeyAssign", False],
            ["kyoshin/appgame/CMiniMap", False],
            ["kyoshin/appgame/menu/CMenuQuestLog", False],
            ["kyoshin/appgame/menu/CMenuSymbolMark", False],
            ["kyoshin/appgame/CQuestWindow", False],
            ["kyoshin/appgame/CSystemWindow", False],
            ["kyoshin/appgame/CSysWinSelect", False],
            ["kyoshin/appgame/CTagProcessor", False],
            ["kyoshin/appgame/CTalkWindow", False],
            ["kyoshin/appgame/CUIBattleManager", False],
            ["kyoshin/appgame/CUICfManager", False],
            ["kyoshin/appgame/CUIWindowManager", False],
            ["kyoshin/appgame/cf/CfBdat", False],
            ["kyoshin/appgame/menu/CMenuUpdate", False],
            ["kyoshin/appgame/menu/CMenuLandTelop", False],
            ["kyoshin/appgame/cf/CBattleState", False],
            ["kyoshin/appgame/menu/CMenuGetItem", False],
            ["kyoshin/appgame/cf/CAIAction", False],
            ["kyoshin/appgame/cf/CArtsSet", False],
            ["kyoshin/appgame/cf/CArtsParam", False],
            ["kyoshin/appgame/cf/CItem", False],
            ["kyoshin/appgame/cf/CCharEffect", False],
            ["kyoshin/appgame/cf/CCharEffectEne", False],
            ["kyoshin/appgame/CCol6System", False],
            ["kyoshin/appgame/CCol6Invite", False],
            ["kyoshin/appgame/cf/CTaskREvent", False],
            ["kyoshin/appgame/cf/CInfoCf", False],
            ["kyoshin/appgame/menu/CMenuItem", False],
            ["kyoshin/appgame/realtimeevt/CREvtMem", False],
            ["kyoshin/appgame/cf/CTaskREvtSequence", False],
            ["kyoshin/appgame/cf/CfResObjImpl", False],
            ["kyoshin/appgame/cf/CfResReloadImpl", False],
            ["kyoshin/appgame/cf/CfMapEffectManager", False],
            ["kyoshin/appgame/cf/CfObjectActor", False],
            ["kyoshin/appgame/realtimeevt/CREvtModel", False],
            ["kyoshin/appgame/cf/CfMapItemManager", False],
            ["kyoshin/appgame/cf/CActorParam", False],
            ["kyoshin/appgame/menu/CMenuZeal", False],
            ["kyoshin/appgame/realtimeevt/CREvtCamera", False],
            ["kyoshin/appgame/realtimeevt/CREvtModelMap", False],
            ["kyoshin/appgame/realtimeevt/CREvtModelObj", False],
            ["kyoshin/appgame/realtimeevt/CREvtModelPc", False],
            ["kyoshin/appgame/realtimeevt/CREvtEffect", False],
            ["kyoshin/appgame/realtimeevt/CREvtObj", False],
            ["kyoshin/appgame/plugin/plugin_time", False],
            ["kyoshin/appgame/plugin/plugin_btl", False],
            ["kyoshin/appgame/code_801862C0", False],
            ["kyoshin/appgame/menu/CMenuPTGauge", False],
            ["kyoshin/appgame/menu/code_80187F14", False],
            ["kyoshin/appgame/menu/CMenuSelectShop", False],
            ["kyoshin/appgame/menu/CMenuShopSell", False],
            ["kyoshin/appgame/menu/CMenuShopBuy", False],
            ["kyoshin/appgame/menu/code_8018C5FC", False],
            ["kyoshin/appgame/cf/CfResPcImpl", False],
            ["kyoshin/appgame/cf/code_8018F8D8", False],
            ["kyoshin/appgame/menu/CMenuPTState", False],
            ["kyoshin/appgame/cf/CPartsChange", False],
            ["kyoshin/appgame/cf/CtrlMovePC", False],
            ["kyoshin/appgame/cf/CtrlMoveNpc", False],
            ["kyoshin/appgame/menu/CMenuBattleMode", False],
            ["kyoshin/appgame/COccCulling", False],
            ["kyoshin/appgame/CSimpleEveTalkWin", False],
            ["kyoshin/appgame/cf/CTaskCulling", False],
            ["kyoshin/appgame/cf/CVision", False],
            ["kyoshin/appgame/code_801A929C", False],
            ["kyoshin/appgame/plugin/plugin_snd", False],
            ["kyoshin/appgame/plugin/plugin_game", False],
            ["kyoshin/appgame/menu/CMenuVision", False],
            ["kyoshin/appgame/menu/CMenuBattleCommu", False],
            ["kyoshin/appgame/cf/CPcEffect07", False],
            ["kyoshin/appgame/menu/CMenuGetItemMulti", False],
            ["kyoshin/appgame/cf/CSuddenCommu", False],
            ["kyoshin/appgame/menu/CMenuKizunaTalk", False],
            ["kyoshin/appgame/menu/CMenuItemExchange", False],
            ["kyoshin/appgame/cf/CfSoundMan", False],
            ["kyoshin/appgame/cf/CfPadTask", False],
            ["kyoshin/appgame/cf/code_801C2C14", False],
            ["kyoshin/appgame/realtimeevt/CREvtLight", False],
            ["kyoshin/appgame/CBgTex", False],
            ["kyoshin/appgame/CTitleAHelp", False],
            ["kyoshin/appgame/CItemBoxGrid", False],
            ["kyoshin/appgame/CCur", False],
            ["kyoshin/appgame/CSortMenu", False],
            ["kyoshin/appgame/CItemBoxInfo", False],
            ["kyoshin/appgame/CNumSelect", False],
            ["kyoshin/appgame/CItemBoxLine", False],
            ["kyoshin/appgame/CScrollBar", False],
            ["kyoshin/appgame/code_801F3BE0", False],
            ["kyoshin/appgame/cf/CfGimmickObject", False],
            ["kyoshin/appgame/cf/CfObjectTbox", False],
            ["kyoshin/appgame/cf/CfResTboxImpl", False],
            ["kyoshin/appgame/CPartyStateWin", False],
            ["kyoshin/appgame/CModelDisp", False],
            ["kyoshin/appgame/CPartyState", False],
            ["kyoshin/appgame/plugin/plugin_unit", False],
            ["kyoshin/appgame/menu/parts/CModelDispEquip", False],
            ["kyoshin/appgame/CEquipChange", False],
            ["kyoshin/appgame/cf/CfMapMineManager", False],
            ["kyoshin/appgame/CItemBoxGridSubMenu", False],
            ["kyoshin/appgame/cf/CfGimmick", False],
            ["kyoshin/appgame/cf/CfGimmickElv", False],
            ["kyoshin/appgame/cf/CfGimmickLock", False],
            ["kyoshin/appgame/cf/CfGimmickWarp", False],
            ["kyoshin/appgame/cf/CfGimmickJump", False],
            ["kyoshin/appgame/cf/CfGimmickItem", False],
            ["kyoshin/appgame/makecrystal/CMenuMakeCrystal", False],
            ["kyoshin/appgame/makecrystal/CMakeCrystalWin", False],
            ["kyoshin/appgame/makecrystal/code_80213488", False],
            ["kyoshin/appgame/makecrystal/CMCCrystalBox", False],
            ["kyoshin/appgame/makecrystal/CMCCrystalInfo", False],
            ["kyoshin/appgame/makecrystal/CModelDispMakeCrystal", False],
            ["kyoshin/appgame/makecrystal/CMCCylinderGauge", False],
            ["kyoshin/appgame/makecrystal/CMCCrystalList", False],
            ["kyoshin/appgame/makecrystal/CMCEffStart", False],
            ["kyoshin/appgame/menu/CMenuQstCnt", False],
            ["kyoshin/appgame/CQstLogList", False],
            ["kyoshin/appgame/CQstLogInfo", False],
            ["kyoshin/appgame/CSysWin", False],
            ["kyoshin/appgame/CSelShopWin", False],
            ["kyoshin/appgame/CExchangeWin", False],
            ["kyoshin/appgame/CPresentWin", False],
            ["kyoshin/appgame/makecrystal/CMCCrystalSupport", False],
            ["kyoshin/appgame/menu/CMenuArtsSet", False],
            ["kyoshin/appgame/CArtsInfo", False],
            ["kyoshin/appgame/cf/CfNandManager", False],
            ["kyoshin/appgame/code_802405F4", False],
            ["kyoshin/appgame/menu/CMenuMapSelect", False],
            ["kyoshin/appgame/CMapSel", False],
            ["kyoshin/appgame/CFade", False],
            ["kyoshin/appgame/CFloorMap", False],
            ["kyoshin/appgame/menu/CMenuMapSelectSC", False],
            ["kyoshin/appgame/menu/CMenuPause", False],
            ["kyoshin/appgame/menu/CMenuCollepedia", False],
            ["kyoshin/appgame/CCollepedia", False],
            ["kyoshin/appgame/menu/CMenuKizunagram", False],
            ["kyoshin/appgame/CKizunagram", False],
            ["kyoshin/appgame/CPcKizunagram", False],
            ["kyoshin/appgame/code_8025FB10", False],
            ["kyoshin/appgame/menu/CMenuPassiveSkill", False],
            ["kyoshin/appgame/CPassiveSkill", False],
            ["kyoshin/appgame/cf/CfGimmickEne", False],
            ["kyoshin/appgame/menu/CMenuBattleEnd", False],
            ["kyoshin/appgame/menu/CMenuPlayAward", False],
            ["kyoshin/appgame/menu/CMenuKizunaTalkList", False],
            ["kyoshin/appgame/CKizunaTalkList", False],
            ["kyoshin/appgame/CSysWinBuff", False],
            ["kyoshin/appgame/cf/ICamControlRemote", False],
            ["kyoshin/appgame/cf/ICamControlGc", False],
            ["kyoshin/appgame/cf/ICamControlClassic", False],
            ["kyoshin/appgame/code_8027513C", False],
            ["kyoshin/appgame/menu/CMenuLvUp", False],
            ["kyoshin/appgame/cf/chain/CChainActor", False],
            ["kyoshin/appgame/cf/chain/CChainActorList", False],
            ["kyoshin/appgame/cf/chain/CChainTime", False],
            ["kyoshin/appgame/cf/chain/CChainTimer", False],
            ["kyoshin/appgame/CSysWinScenarioLog", False],
            ["kyoshin/appgame/cf/chain/CChainActorEne", False],
            ["kyoshin/appgame/cf/chain/CChainActorPc", False],
            ["kyoshin/appgame/CEquipItemBox", False],
            ["kyoshin/appgame/menu/CMenuSave", False],
            ["kyoshin/appgame/CSaveLoad", False],
            ["kyoshin/appgame/menu/CMenuPTChangeNotice", False],
            ["kyoshin/appgame/cf/chain/CChainCombo", False],
            ["kyoshin/appgame/CSysWinSave", False],
            ["kyoshin/appgame/realtimeevt/CREvtMovie", False],
            ["kyoshin/appgame/CTaskGamePic", False],
            ["kyoshin/appgame/CTaskGameEvt", False],
            ["kyoshin/appgame/cf/CHelpManager", False],
            ["kyoshin/appgame/code_80296898", False],
            ["kyoshin/appgame/makecrystal/CMCGetItemBox", False],
            ["kyoshin/appgame/menu/CMenuTutorial", False],
            ["kyoshin/appgame/CTutorial", False],
            ["kyoshin/appgame/menu/CMenuOption", False],
            ["kyoshin/appgame/COption", False],
            ["kyoshin/appgame/menu/CMenuSkipTimer", False],
            ["kyoshin/appgame/CSkipTimer", False],
            ["kyoshin/appgame/cf/chain/CChainEffect", False],
            ["kyoshin/appgame/cf/voice/CCharVoice", False],
            ["kyoshin/appgame/cf/voice/CCharVoiceMan", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_BATTLE_END", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_BUF", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_CHAIN", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_DOWN", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_EHP", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_FAINT", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_HAGE", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_HP", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_PARTY_GAGE", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_REVIVE", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_SUDDEN", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_TENSION_UP", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_VISION_BREAK", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_VISION_TELL", False],
            ["kyoshin/appgame/menu/CMenuBattleChain", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_BATTLE_END_SP", False],
            ["kyoshin/appgame/cf/CfGimmickSaveOff", False],
            ["kyoshin/appgame/menu/CMenuTutorialList", False],
            ["kyoshin/appgame/CTutorialList", False],
            ["kyoshin/appgame/CLoad", False],
            ["kyoshin/appgame/code_802AEB74", True],
            ["kyoshin/appgame/plugin/plugin_help", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_BATTLE_MAIN", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_BATTLE_BEGIN", False],
            ["kyoshin/appgame/menu/CMenuGCItem", False],
            ["kyoshin/appgame/menu/CMenuGameClear", False],
            ["kyoshin/appgame/cf/CfHikariItemManager", False],
            ["kyoshin/appgame/cf/code_802B3750", False],
            ["kyoshin/appgame/CUIErrMesWin", False],
            ["kyoshin/appgame/menu/CMenuTitle", False],
            ["kyoshin/appgame/CTitle", False],
            ["kyoshin/appgame/help/CHelp", False],
            ["kyoshin/appgame/help/CHelp_ArtsAttack", False],
            ["kyoshin/appgame/help/CHelp_ArtsSet", False],
            ["kyoshin/appgame/help/CHelp_CkKizuna", False],
            ["kyoshin/appgame/help/CHelp_CloseItemMenu", False],
            ["kyoshin/appgame/help/CHelp_CloseSysMenu", False],
            ["kyoshin/appgame/help/CHelp_EndEvent", False],
            ["kyoshin/appgame/help/CHelp_EnemyCount", False],
            ["kyoshin/appgame/help/CHelp_EnemyEnable", False],
            ["kyoshin/appgame/help/CHelp_EtherMake", False],
            ["kyoshin/appgame/help/CHelp_Exchange", False],
            ["kyoshin/appgame/help/CHelp_GameOver", False],
            ["kyoshin/appgame/help/CHelp_ItemCole", False],
            ["kyoshin/appgame/help/CHelp_Kizuna", False],
            ["kyoshin/appgame/help/CHelp_LandMark", False],
            ["kyoshin/appgame/help/CHelp_LearnArts", False],
            ["kyoshin/appgame/help/CHelp_ClosePartyMenu", False],
            ["kyoshin/appgame/help/CHelp_OpenPartyMenu", False],
            ["kyoshin/appgame/help/CHelp_Pg", False],
            ["kyoshin/appgame/help/CHelp_CloseQuestMenu", False],
            ["kyoshin/appgame/help/CHelp_ShopBuy", False],
            ["kyoshin/appgame/help/CHelp_ShopSel", False],
            ["kyoshin/appgame/help/CHelp_Sp", False],
            ["kyoshin/appgame/help/CHelp_Talk", False],
            ["kyoshin/appgame/help/CHelp_Target", False],
            ["kyoshin/appgame/plugin/plugin_voice", False],
            ["kyoshin/appgame/CBattery", False],
        ],
    },
    {
        "lib": "Runtime.PPCEABI.H.a",
        "cflags": "$cflags_base -inline on -proc gekko -fp hard -O4,p -str pool,readonly,reuse -func_align 4",
        "mw_version": "1.1",
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
        "mw_version": "1.1",
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
        "mw_version": "1.0",
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
        "cflags": "$cflags_base -inline auto -ipa file -Cpp_exceptions off",
        "mw_version": "3.0",
        "host": True,
        "objects": [
            ["libs/NdevExi2A/src/DebuggerDriver", True],
            ["libs/NdevExi2A/src/exi2", True],
        ],
    },
    {
        "lib": "ai",
        "cflags": "$cflags_sdk",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            ["libs/RVL_SDK/src/revolution/ai/ai", True],
        ],
    },
    {
        "lib": "arc",
        "cflags": "$cflags_sdk",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            ["libs/RVL_SDK/src/revolution/arc/arc", True],
        ],
    },
    {
        "lib": "ax",
        "cflags": "$cflags_sdk",
        "mw_version": "1.1",
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
        "mw_version": "1.1",
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
        "mw_version": "1.1",
        "host": True,
        "objects": [
            ["libs/RVL_SDK/src/revolution/base/PPCArch", True],
        ],
    },
    {
        "lib": "bte",
        "cflags": "$cflags_base -Cpp_exceptions off -enum int -inline auto -ipa file",
        "mw_version": "1.1",
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
        "mw_version": "1.1",
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
        "mw_version": "1.1",
        "host": True,
        "objects": [
            ["libs/RVL_SDK/src/revolution/db/db", True],
        ],
    },
    {
        "lib": "dsp",
        "cflags": "$cflags_sdk",
        "mw_version": "1.1",
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
        "mw_version": "1.1",
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
        "mw_version": "1.1",
        "host": True,
        "objects": [
            ["libs/RVL_SDK/asm/revolution/enc/encutility", False],
            ["libs/RVL_SDK/asm/revolution/enc/encjapanese", False],
        ],
    },
    {
        "lib": "esp",
        "cflags": "$cflags_sdk",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            ["libs/RVL_SDK/src/revolution/esp/esp", True],
        ],
    },
    {
        "lib": "euart",
        "cflags": "$cflags_sdk",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            ["libs/RVL_SDK/src/revolution/euart/euart", True],
        ],
    },
    {
        "lib": "exi",
        "cflags": "$cflags_sdk",
        "mw_version": "1.1",
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
        "mw_version": "1.1",
        "host": True,
        "objects": [
            ["libs/RVL_SDK/src/revolution/fs/fs", True],
        ],
    },
    {
        "lib": "gx",
        "cflags": "$cflags_sdk",
        "mw_version": "1.1",
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
            ["libs/RVL_SDK/src/revolution/gx/GXBump", True, {"mw_version" : "1.0"}],
            ["libs/RVL_SDK/asm/revolution/gx/GXTev", False],
            ["libs/RVL_SDK/asm/revolution/gx/GXPixel", False],
            ["libs/RVL_SDK/src/revolution/gx/GXDisplayList", True],
            ["libs/RVL_SDK/src/revolution/gx/GXTransform", True],
            ["libs/RVL_SDK/asm/revolution/gx/GXPerf", False],
        ],
    },
    {
        "lib": "homebuttonLib",
        "cflags": "$cflags_sdk -sdata 0 -sdata2 0",
        "mw_version": "1.0",
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
        "mw_version": "1.1",
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
        "mw_version": "1.1",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["libs/RVL_SDK/asm/revolution/ipc/memory", False],
        ],
    },
    {
        "lib": "mem",
        "mw_version": "1.1",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["Dolphin/Runtime/__va_arg", True],
        ],
    },
    {
        "lib": "mix",
        "mw_version": "1.1",
        "cflags": "$cflags_base -inline deferred",
        "host": False,
        "objects": [
            ["Dolphin/MSL_C/PPC_EABI/abort_exit", True],
        ],
    },
    {
        "lib": "mtx",
        "mw_version": "1.1",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            "Dolphin/OdemuExi2/DebuggerDriver",
        ],
    },
    {
        "lib": "nand",
        "mw_version": "1.1",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/vi/vi", True],
        ],
    },
    {
        "lib": "os",
        "mw_version": "1.1",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/amcstubs/AmcExi2Stubs", True],
        ],
    },
    {
        "lib": "pad",
        "mw_version": "1.1",
        "cflags": "$cflags_base -str noreadonly",
        "host": False,
        "objects": [
            ["Dolphin/ar/ar", True],
            ["Dolphin/ar/arq", True],
        ],
    },
    {
        "lib": "sc",
        "mw_version": "1.1",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/base/PPCArch", True],
        ],
    },
    {
        "lib": "si",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base -str noreadonly",
        "host": False,
        "objects": [
            ["Dolphin/card/CARDBios", True],
            ["Dolphin/card/CARDUnlock", True],
            ["Dolphin/card/CARDRdwr", True],
            ["Dolphin/card/CARDBlock", True],
            ["Dolphin/card/CARDDir", True],
            ["Dolphin/card/CARDCheck", True],
            ["Dolphin/card/CARDMount", True],
            ["Dolphin/card/CARDFormat", True],
            ["Dolphin/card/CARDOpen", True],
            ["Dolphin/card/CARDCreate", True],
            ["Dolphin/card/CARDRead", True],
            ["Dolphin/card/CARDWrite", True],
            ["Dolphin/card/CARDStat", True],
            ["Dolphin/card/CARDNet", True],
        ],
    },
    {
        "lib": "db",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base -str noreadonly",
        "host": False,
        "objects": [
            ["Dolphin/db/db", True],
        ],
    },
    {
        "lib": "dsp",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base -str noreadonly",
        "host": False,
        "objects": [
            ["Dolphin/dsp/dsp", True],
            ["Dolphin/dsp/dsp_debug", True],
            ["Dolphin/dsp/dsp_task", True],
        ],
    },
    {
        "lib": "dvd",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base -str noreadonly",
        "host": False,
        "objects": [
            ["Dolphin/dvd/dvdlow", True],
            ["Dolphin/dvd/dvdfs", True],
            ["Dolphin/dvd/dvd", True],
            ["Dolphin/dvd/dvdqueue", True],
            ["Dolphin/dvd/dvderror", True],
            ["Dolphin/dvd/dvdidutils", True],
            ["Dolphin/dvd/dvdFatal", True],
            ["Dolphin/dvd/fstload", True],
        ],
    },
    {
        "lib": "exi",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base -str noreadonly",
        "host": False,
        "objects": [
            ["Dolphin/exi/EXIBios", True],
            ["Dolphin/exi/EXIUart", True],
        ],
    },
    {
        "lib": "gd",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/gd/GDBase", True],
            ["Dolphin/gd/GDGeometry", True],
        ],
    },
    {
        "lib": "gx",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            "Dolphin/gx/GXInit",
            "Dolphin/gx/GXFifo",
            "Dolphin/gx/GXAttr",
            "Dolphin/gx/GXMisc",
            "Dolphin/gx/GXGeometry",
            "Dolphin/gx/GXFrameBuf",
            "Dolphin/gx/GXLight",
            "Dolphin/gx/GXTexture",
            ["Dolphin/gx/GXBump", True],
            "Dolphin/gx/GXTev",
            "Dolphin/gx/GXPixel",
            ["Dolphin/gx/GXDisplayList", True],
            "Dolphin/gx/GXTransform",
            "Dolphin/gx/GXPerf",
        ],
    },
    {
        "lib": "mtx",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/mtx/mtx", True],
            ["Dolphin/mtx/mtxvec", True],
            ["Dolphin/mtx/mtx44", True],
            ["Dolphin/mtx/vec", True],
        ],
    },
    {
        "lib": "odenotstub",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base",
        "host": False,
        "objects": [
            ["Dolphin/odenotstub/odenotstub", True],
        ],
    },
    {
        "lib": "os",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base -str noreadonly",
        "host": False,
        "objects": [
            ["Dolphin/os/OS", True],
            ["Dolphin/os/OSAlarm", True],
            ["Dolphin/os/OSAlloc", True],
            ["Dolphin/os/OSArena", True],
            ["Dolphin/os/OSAudioSystem", True],
            ["Dolphin/os/OSCache", True],
            ["Dolphin/os/OSContext", True],
            ["Dolphin/os/OSError", True],
            "Dolphin/os/OSFont",
            ["Dolphin/os/OSInterrupt", True],
            ["Dolphin/os/OSLink", True],
            ["Dolphin/os/OSMessage", True],
            ["Dolphin/os/OSMemory", True],
            ["Dolphin/os/OSMutex", True],
            "Dolphin/os/OSReboot",
            ["Dolphin/os/OSReset", True],
            ["Dolphin/os/OSResetSW", True],
            ["Dolphin/os/OSRtc", True],
            ["Dolphin/os/OSSync", True],
            ["Dolphin/os/OSThread", True],
            ["Dolphin/os/OSTime", True],
            ["Dolphin/os/__start", True],
            ["Dolphin/os/__ppc_eabi_init", True],
        ],
    },
    {
        "lib": "pad",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base -fp_contract off -str noreadonly",
        "host": False,
        "objects": [
            ["Dolphin/pad/Padclamp", True],
            ["Dolphin/pad/Pad", True],
        ],
    },
    {
        "lib": "si",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base -str noreadonly",
        "host": False,
        "objects": [
            ["Dolphin/si/SIBios", True],
            ["Dolphin/si/SISamplingRate", True],
        ],
    },
    {
        "lib": "ai",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base -str noreadonly",
        "host": False,
        "objects": [
            ["Dolphin/ai/ai", True],
        ],
    },
    {
        "lib": "thp",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base -str noreadonly",
        "host": False,
        "objects": [
            ["Dolphin/thp/THPDec", True],
            ["Dolphin/thp/THPAudio", True],
        ],
    },
    {
        "lib": "gba",
        "mw_version": "1.2.5n",
        "cflags": "$cflags_base -str noreadonly",
        "host": False,
        "objects": [
            ["Dolphin/gba/GBA", True],
            ["Dolphin/gba/GBARead", True],
            ["Dolphin/gba/GBAWrite", True],
            ["Dolphin/gba/GBAXfer", True],
        ],
    },
    {
        "lib": "plugProjectYamashitaU",
        "cflags": "$cflags_base",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            ["plugProjectYamashitaU/enemyBase", True],
            ["plugProjectYamashitaU/pelplant", True],
            ["plugProjectYamashitaU/pelplantState", True],
            ["plugProjectYamashitaU/enemyInteractBattle", True],
            "plugProjectYamashitaU/generalEnemyMgr",
            ["plugProjectYamashitaU/kochappyAnimator", True],
            ["plugProjectYamashitaU/kochappy", True],
            "plugProjectYamashitaU/kochappyState",
            ["plugProjectYamashitaU/kochappyMgr", True],
            "plugProjectYamashitaU/enemyAction",
            ["plugProjectYamashitaU/chappy", True],
            "plugProjectYamashitaU/chappyState",
            ["plugProjectYamashitaU/chappyAnimator", True],
            ["plugProjectYamashitaU/chappyMgr", True],
            "plugProjectYamashitaU/lifeGaugeMgr",
            "plugProjectYamashitaU/carryInfoMgr",
            "plugProjectYamashitaU/gameLightMgr",
            "plugProjectYamashitaU/vtxAnm",
            ["plugProjectYamashitaU/enemyInfo", True],
            ["plugProjectYamashitaU/farm", True],
            ["plugProjectYamashitaU/farmMgr", True],
            ["plugProjectYamashitaU/genEnemy", True],
            ["plugProjectYamashitaU/timeMgr", True],
            ["plugProjectYamashitaU/pelplantGenerator", True],
            ["plugProjectYamashitaU/enemyInteractActions", True],
            ["plugProjectYamashitaU/enemyAnimatorBase", True],
            ["plugProjectYamashitaU/enemyStoneMgr", True],
            ["plugProjectYamashitaU/enemyStoenInfo", True],
            "plugProjectYamashitaU/enemyStoneDrawInfo",
            ["plugProjectYamashitaU/enemyStoneObj", True],
            ["plugProjectYamashitaU/enemyParmsBase", True],
            ["plugProjectYamashitaU/walkSmokeEffect", True],
            ["plugProjectYamashitaU/ChappyBaseMgr", True],
            ["plugProjectYamashitaU/ChappyBase", True],
            ["plugProjectYamashitaU/BlueChappyMgr", True],
            ["plugProjectYamashitaU/BlueChappy", True],
            ["plugProjectYamashitaU/YellowChappyMgr", True],
            ["plugProjectYamashitaU/YellowChappy", True],
            ["plugProjectYamashitaU/BlueKochappyMgr", True],
            ["plugProjectYamashitaU/BlueKochappy", True],
            ["plugProjectYamashitaU/YellowKochappy", True],
            ["plugProjectYamashitaU/YellowKochappyMgr", True],
            ["plugProjectYamashitaU/KochappyBaseMgr", True],
            ["plugProjectYamashitaU/KochappyBase", True],
            ["plugProjectYamashitaU/enemyBlendAnimatorBase", True],
            ["plugProjectYamashitaU/enemyPelletInfo", True],
            ["plugProjectYamashitaU/enemyEffectNode", True],
            ["plugProjectYamashitaU/enemyMgrBase", True],
            ["plugProjectYamashitaU/enemyFSM", True],
            "plugProjectYamashitaU/singleGS_ZukanParms",
            ["plugProjectYamashitaU/treasureLightMgr", True],
            ["plugProjectYamashitaU/effectAnimator", True],
        ],
    },
    {
        "lib": "plugProjectKandoU",
        "cflags": "$cflags_base",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            ["plugProjectKandoU/pikiAnimator", True],
            "plugProjectKandoU/collinfo",
            "plugProjectKandoU/gameDynamics",
            ["plugProjectKandoU/creature", True],
            "plugProjectKandoU/fakePiki",
            "plugProjectKandoU/navi",
            "plugProjectKandoU/piki",
            "plugProjectKandoU/baseGameSection",
            "plugProjectKandoU/singleGameSection",
            "plugProjectKandoU/cellPyramid",
            ["plugProjectKandoU/naviMgr", True],
            "plugProjectKandoU/pikiMgr",
            "plugProjectKandoU/mapMgr",
            ["plugProjectKandoU/baseHIOSection", True],
            "plugProjectKandoU/naviWhistle",
            "plugProjectKandoU/pelletMgr",
            "plugProjectKandoU/routeMgr",
            ["plugProjectKandoU/onyonMgr", True],
            ["plugProjectKandoU/objectTypes", True],
            "plugProjectKandoU/naviState",
            "plugProjectKandoU/pikiState",
            ["plugProjectKandoU/interactPiki", True],
            "plugProjectKandoU/gameCPlate",
            ["plugProjectKandoU/updateMgr", True],
            ["plugProjectKandoU/aiAction", True],
            "plugProjectKandoU/aiPrimitives",
            "plugProjectKandoU/aiFormation",
            ["plugProjectKandoU/creatureStick", True],
            ["plugProjectKandoU/interactBattle", True],
            ["plugProjectKandoU/aiFree", True],
            ["plugProjectKandoU/aiAttack", True],
            ["plugProjectKandoU/aiTransport", True],
            "plugProjectKandoU/aiEnter",
            "plugProjectKandoU/pathfinder",
            "plugProjectKandoU/pelletState",
            "plugProjectKandoU/dynCreature",
            ["plugProjectKandoU/gameGenerator", True],
            ["plugProjectKandoU/genPiki", True],
            ["plugProjectKandoU/genNavi", True],
            ["plugProjectKandoU/genItem", True],
            ["plugProjectKandoU/gameStages", True],
            ["plugProjectKandoU/gameSeaMgr", True],
            ["plugProjectKandoU/pikiAI", True],
            ["plugProjectKandoU/pelletConfig", True],
            ["plugProjectKandoU/gameFootmark", True],
            ["plugProjectKandoU/gameSystem", True],
            ["plugProjectKandoU/aiConstants", True],
            "plugProjectKandoU/gameMapParts",
            ["plugProjectKandoU/vsGameSection", True],
            ["plugProjectKandoU/gamePlatMgr", True],
            "plugProjectKandoU/itemGate",
            "plugProjectKandoU/itemMgr",
            "plugProjectKandoU/aiBreakGate",
            ["plugProjectKandoU/gameStat", True],
            "plugProjectKandoU/itemHole",
            "plugProjectKandoU/itemHoney",
            "plugProjectKandoU/gameCaveInfo",
            "plugProjectKandoU/creatureLOD",
            ["plugProjectKandoU/interactNavi", True],
            "plugProjectKandoU/itemPikihead",
            "plugProjectKandoU/itemPlant",
            "plugProjectKandoU/itemRock",
            ["plugProjectKandoU/aiBreakRock", True],
            ["plugProjectKandoU/aiCrop", True],
            ["plugProjectKandoU/registItem", True],
            "plugProjectKandoU/gamePlayData",
            "plugProjectKandoU/itemCave",
            "plugProjectKandoU/itemBigFountain",
            "plugProjectKandoU/itemBridge",
            ["plugProjectKandoU/pikiContainer", True],
            "plugProjectKandoU/gameGeneratorCache",
            ["plugProjectKandoU/itemTreasure", True],
            "plugProjectKandoU/itemDownFloor",
            ["plugProjectKandoU/kandoLib", True],
            ["plugProjectKandoU/itemBarrel", True],
            ["plugProjectKandoU/pelletNumber", True],
            ["plugProjectKandoU/pelletCarcass", True],
            ["plugProjectKandoU/pelletFruit", True],
            ["plugProjectKandoU/pelletOtakara", True],
            ["plugProjectKandoU/genPellet", True],
            ["plugProjectKandoU/pelletItem", True],
            "plugProjectKandoU/mapMgrTraceMove",
            ["plugProjectKandoU/efxModelObjects", True],
            "plugProjectKandoU/itemUjamushi",
            ["plugProjectKandoU/aiWeed", True],
            "plugProjectKandoU/flockMgr",
            "plugProjectKandoU/itemWeed",
            ["plugProjectKandoU/aiBridge", True],
            ["plugProjectKandoU/aiTeki", True],
            "plugProjectKandoU/singleGS_MainGame",
            "plugProjectKandoU/singleGS_CaveGame",
            "plugProjectKandoU/singleGS_MainResult",
            "plugProjectKandoU/singleGS_CaveResult",
            ["plugProjectKandoU/singleGS_WorldMap", True],
            ["plugProjectKandoU/singleGS_FileSelect", True],
            "plugProjectKandoU/gamePlayDataMemCard",
            ["plugProjectKandoU/baseHIOparms", True],
            ["plugProjectKandoU/radarInfo", True],
            ["plugProjectKandoU/singleGS_Movie", True],
            "plugProjectKandoU/navi_demoCheck",
            "plugProjectKandoU/singleGS_Zukan",
            ["plugProjectKandoU/gameResultTexMgr", True],
            "plugProjectKandoU/gamePelletList",
            ["plugProjectKandoU/vsGS_Title", True],
            ["plugProjectKandoU/vsGS_Game", True],
            ["plugProjectKandoU/vsGS_Result", True],
            ["plugProjectKandoU/vsGS_Load", True],
            ["plugProjectKandoU/vsStageData", True],
            ["plugProjectKandoU/cellMgrParms", True],
            "plugProjectKandoU/cellIterator",
            ["plugProjectKandoU/vsGS_VSGame", True],
            ["plugProjectKandoU/gameSoundEvent", True],
            "plugProjectKandoU/aiBattle",
            ["plugProjectKandoU/gameDeathCount", True],
            ["plugProjectKandoU/aiBore", True],
            ["plugProjectKandoU/mapPartsView", True],
            ["plugProjectKandoU/singleGS_Ending", True],
            ["plugProjectKandoU/gameIconTexture", True],
            ["plugProjectKandoU/gameTekiStat", True],
            ["plugProjectKandoU/gameHighscore", True],
            ["plugProjectKandoU/gamePlayCommonData", True],
            ["plugProjectKandoU/pelletCarry", True],
            ["plugProjectKandoU/gameChallenge2D", True],
            ["plugProjectKandoU/vsTekiMgr", True],
            "plugProjectKandoU/vsCardMgr",
            ["plugProjectKandoU/aiRescue", True],
            ["plugProjectKandoU/baseGameSectionDraw", True],
            ["plugProjectKandoU/singleGS_Load", True],
            "plugProjectKandoU/singleGS_DayEnd",
            "plugProjectKandoU/baseGameSectionKantei",
            ["plugProjectKandoU/sweepPrune", True],
            "plugProjectKandoU/texCaster",
            ["plugProjectKandoU/vsCoinOtakaraName", True],
            ["plugProjectKandoU/pelletBirthBuffer", True],
            ["plugProjectKandoU/vsFifo", True],
        ],
    },
    {
        "lib": "plugProjectNishimuraU",
        "cflags": "$cflags_base",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            "plugProjectNishimuraU/nslibmath",
            "plugProjectNishimuraU/ShadowCylinder",
            "plugProjectNishimuraU/playCamera",
            ["plugProjectNishimuraU/shadowMgr", True],
            ["plugProjectNishimuraU/MapUnit", True],
            ["plugProjectNishimuraU/MapNode", True],
            ["plugProjectNishimuraU/EnemyUnit", True],
            "plugProjectNishimuraU/RandMapMgr",
            ["plugProjectNishimuraU/RandMapDraw", True],
            ["plugProjectNishimuraU/RandMapChecker", True],
            "plugProjectNishimuraU/RandMapUnit",
            "plugProjectNishimuraU/RandEnemyUnit",
            ["plugProjectNishimuraU/DoorNode", True],
            ["plugProjectNishimuraU/MapUnitGenerator", True],
            ["plugProjectNishimuraU/MapCreator", True],
            "plugProjectNishimuraU/RandMapScore",
            ["plugProjectNishimuraU/ItemUnit", True],
            ["plugProjectNishimuraU/RandItemUnit", True],
            ["plugProjectNishimuraU/GateUnit", True],
            ["plugProjectNishimuraU/RandGateUnit", True],
            ["plugProjectNishimuraU/ObjectLayout", True],
            ["plugProjectNishimuraU/CameraMgr", True],
            "plugProjectNishimuraU/ContRumble",
            ["plugProjectNishimuraU/RumbleMgr", True],
            ["plugProjectNishimuraU/PomAnimator", True],
            ["plugProjectNishimuraU/PomMgr", True],
            ["plugProjectNishimuraU/Pom", True],
            ["plugProjectNishimuraU/PomState", True],
            "plugProjectNishimuraU/FrogState",
            ["plugProjectNishimuraU/FrogAnimator", True],
            ["plugProjectNishimuraU/FrogMgr", True],
            ["plugProjectNishimuraU/Frog", True],
            ["plugProjectNishimuraU/UjibMgr", True],
            "plugProjectNishimuraU/Ujib",
            "plugProjectNishimuraU/UjibState",
            ["plugProjectNishimuraU/UjibAnimator", True],
            ["plugProjectNishimuraU/KoganeState", True],
            ["plugProjectNishimuraU/KoganeMgr", True],
            "plugProjectNishimuraU/Kogane",
            ["plugProjectNishimuraU/KoganeAnimator", True],
            ["plugProjectNishimuraU/QurioneState", True],
            ["plugProjectNishimuraU/QurioneMgr", True],
            ["plugProjectNishimuraU/Qurione", True],
            ["plugProjectNishimuraU/QurioneAnimator", True],
            ["plugProjectNishimuraU/RumbleData", True],
            ["plugProjectNishimuraU/MaroFrogMgr", True],
            ["plugProjectNishimuraU/MaroFrog", True],
            ["plugProjectNishimuraU/RockState", True],
            ["plugProjectNishimuraU/RockAnimator", True],
            ["plugProjectNishimuraU/RockMgr", True],
            "plugProjectNishimuraU/Rock",
            "plugProjectNishimuraU/UjiaState",
            ["plugProjectNishimuraU/UjiaAnimator", True],
            ["plugProjectNishimuraU/UjiaMgr", True],
            "plugProjectNishimuraU/Ujia",
            "plugProjectNishimuraU/TobiState",
            ["plugProjectNishimuraU/TobiAnimator", True],
            ["plugProjectNishimuraU/TobiMgr", True],
            "plugProjectNishimuraU/Tobi",
            ["plugProjectNishimuraU/HibaState", True],
            ["plugProjectNishimuraU/HibaAnimator", True],
            ["plugProjectNishimuraU/HibaMgr", True],
            ["plugProjectNishimuraU/Hiba", True],
            ["plugProjectNishimuraU/GasHibaState", True],
            ["plugProjectNishimuraU/GasHibaAnimator", True],
            ["plugProjectNishimuraU/GasHibaMgr", True],
            ["plugProjectNishimuraU/GasHiba", True],
            ["plugProjectNishimuraU/ElecHibaState", True],
            ["plugProjectNishimuraU/ElecHibaAnimator", True],
            ["plugProjectNishimuraU/ElecHibaMgr", True],
            "plugProjectNishimuraU/ElecHiba",
            "plugProjectNishimuraU/SaraiState",
            ["plugProjectNishimuraU/SaraiAnimator", True],
            ["plugProjectNishimuraU/SaraiMgr", True],
            ["plugProjectNishimuraU/Sarai", True],
            "plugProjectNishimuraU/TankState",
            ["plugProjectNishimuraU/TankAnimator", True],
            ["plugProjectNishimuraU/TankMgr", True],
            ["plugProjectNishimuraU/Tank", True],
            ["plugProjectNishimuraU/CatfishMgr", True],
            ["plugProjectNishimuraU/Catfish", True],
            ["plugProjectNishimuraU/TadpoleState", True],
            ["plugProjectNishimuraU/TadpoleAnimator", True],
            ["plugProjectNishimuraU/TadpoleMgr", True],
            ["plugProjectNishimuraU/Tadpole", True],
            "plugProjectNishimuraU/ElecBugState",
            ["plugProjectNishimuraU/ElecBugAnimator", True],
            ["plugProjectNishimuraU/ElecBugMgr", True],
            "plugProjectNishimuraU/ElecBug",
            ["plugProjectNishimuraU/WtankMgr", True],
            ["plugProjectNishimuraU/Wtank", True],
            ["plugProjectNishimuraU/ArmorMgr", True],
            "plugProjectNishimuraU/Armor",
            "plugProjectNishimuraU/Mar",
            ["plugProjectNishimuraU/MarAnimator", True],
            ["plugProjectNishimuraU/MarMgr", True],
            "plugProjectNishimuraU/MarState",
            ["plugProjectNishimuraU/WealthyMgr", True],
            ["plugProjectNishimuraU/Wealthy", True],
            ["plugProjectNishimuraU/FartMgr", True],
            ["plugProjectNishimuraU/Fart", True],
            "plugProjectNishimuraU/ArmorState",
            ["plugProjectNishimuraU/ArmorAnimator", True],
            "plugProjectNishimuraU/QueenState",
            ["plugProjectNishimuraU/QueenAnimator", True],
            ["plugProjectNishimuraU/QueenMgr", True],
            "plugProjectNishimuraU/Queen",
            "plugProjectNishimuraU/BabyState",
            ["plugProjectNishimuraU/BabyAnimator", True],
            ["plugProjectNishimuraU/BabyMgr", True],
            ["plugProjectNishimuraU/Baby", True],
            ["plugProjectNishimuraU/DemonMgr", True],
            ["plugProjectNishimuraU/Demon", True],
            ["plugProjectNishimuraU/QueenShadow", True],
            ["plugProjectNishimuraU/FireChappyMgr", True],
            ["plugProjectNishimuraU/FireChappy", True],
            "plugProjectNishimuraU/SnakeCrowState",
            ["plugProjectNishimuraU/SnakeCrowAnimator", True],
            ["plugProjectNishimuraU/SnakeCrowMgr", True],
            "plugProjectNishimuraU/SnakeCrow",
            "plugProjectNishimuraU/KumaChappyState",
            ["plugProjectNishimuraU/KumaChappyAnimator", True],
            ["plugProjectNishimuraU/KumaChappyMgr", True],
            "plugProjectNishimuraU/KumaChappy",
            ["plugProjectNishimuraU/FuefukiState", True],
            ["plugProjectNishimuraU/FuefukiAnimator", True],
            ["plugProjectNishimuraU/FuefukiMgr", True],
            ["plugProjectNishimuraU/Fuefuki", True],
            ["plugProjectNishimuraU/KoganemushiMgr", True],
            ["plugProjectNishimuraU/Koganemushi", True],
            ["plugProjectNishimuraU/FtankMgr", True],
            ["plugProjectNishimuraU/Ftank", True],
            ["plugProjectNishimuraU/RandPlantUnit", True],
            "plugProjectNishimuraU/HanachirashiState",
            ["plugProjectNishimuraU/HanachirashiAnimator", True],
            ["plugProjectNishimuraU/HanachirashiMgr", True],
            "plugProjectNishimuraU/Hanachirashi",
            ["plugProjectNishimuraU/DamagumoState", True],
            ["plugProjectNishimuraU/DamagumoAnimator", True],
            ["plugProjectNishimuraU/DamagumoMgr", True],
            ["plugProjectNishimuraU/Damagumo", True],
            "plugProjectNishimuraU/IKSystemMgr",
            "plugProjectNishimuraU/IKSystemBase",
            ["plugProjectNishimuraU/DamagumoShadow", True],
            ["plugProjectNishimuraU/KurageState", True],
            ["plugProjectNishimuraU/KurageAnimator", True],
            ["plugProjectNishimuraU/KurageMgr", True],
            ["plugProjectNishimuraU/Kurage", True],
            "plugProjectNishimuraU/BombSaraiState",
            ["plugProjectNishimuraU/BombSaraiAnimator", True],
            ["plugProjectNishimuraU/BombSaraiMgr", True],
            ["plugProjectNishimuraU/BombSarai", True],
            ["plugProjectNishimuraU/OtakaraBaseState", True],
            ["plugProjectNishimuraU/OtakaraBaseAnimator", True],
            ["plugProjectNishimuraU/OtakaraBaseMgr", True],
            ["plugProjectNishimuraU/OtakaraBase", True],
            ["plugProjectNishimuraU/FireOtakaraMgr", True],
            ["plugProjectNishimuraU/FireOtakara", True],
            ["plugProjectNishimuraU/WaterOtakaraMgr", True],
            ["plugProjectNishimuraU/WaterOtakara", True],
            ["plugProjectNishimuraU/GasOtakaraMgr", True],
            ["plugProjectNishimuraU/GasOtakara", True],
            ["plugProjectNishimuraU/ElecOtakaraMgr", True],
            ["plugProjectNishimuraU/ElecOtakara", True],
            "plugProjectNishimuraU/ImomushiState",
            ["plugProjectNishimuraU/ImomushiAnimator", True],
            ["plugProjectNishimuraU/ImomushiMgr", True],
            "plugProjectNishimuraU/Imomushi",
            ["plugProjectNishimuraU/HoudaiState", True],
            ["plugProjectNishimuraU/HoudaiAnimator", True],
            ["plugProjectNishimuraU/HoudaiMgr", True],
            ["plugProjectNishimuraU/HoudaiShadow", True],
            ["plugProjectNishimuraU/Houdai", True],
            "plugProjectNishimuraU/HoudaiShotGun",
            ["plugProjectNishimuraU/LeafChappyMgr", True],
            ["plugProjectNishimuraU/LeafChappy", True],
            ["plugProjectNishimuraU/BigFootState", True],
            ["plugProjectNishimuraU/BigFootAnimator", True],
            ["plugProjectNishimuraU/BigFootMgr", True],
            ["plugProjectNishimuraU/BigFootShadow", True],
            ["plugProjectNishimuraU/BigFoot", True],
            "plugProjectNishimuraU/SnakeWholeState",
            ["plugProjectNishimuraU/SnakeWholeAnimator", True],
            ["plugProjectNishimuraU/SnakeWholeMgr", True],
            "plugProjectNishimuraU/SnakeWhole",
            "plugProjectNishimuraU/SnakeJointMgr",
            ["plugProjectNishimuraU/OniKurageState", True],
            ["plugProjectNishimuraU/OniKurageAnimator", True],
            ["plugProjectNishimuraU/OniKurageMgr", True],
            "plugProjectNishimuraU/OniKurage",
            ["plugProjectNishimuraU/BigTreasureState", True],
            ["plugProjectNishimuraU/BigTreasureMgr", True],
            "plugProjectNishimuraU/BigTreasureShadow",
            ["plugProjectNishimuraU/BigTreasure", True],
            "plugProjectNishimuraU/KabutoState",
            ["plugProjectNishimuraU/KabutoAnimator", True],
            ["plugProjectNishimuraU/KabutoMgr", True],
            "plugProjectNishimuraU/Kabuto",
            "plugProjectNishimuraU/KumaKochappyState",
            ["plugProjectNishimuraU/KumaKochappyAnimator", True],
            ["plugProjectNishimuraU/KumaKochappyMgr", True],
            ["plugProjectNishimuraU/KumaKochappy", True],
            "plugProjectNishimuraU/MiniHoudaiState",
            ["plugProjectNishimuraU/MiniHoudaiAnimator", True],
            ["plugProjectNishimuraU/MiniHoudaiMgr", True],
            "plugProjectNishimuraU/MiniHoudai",
            "plugProjectNishimuraU/MiniHoudaiShotGun",
            ["plugProjectNishimuraU/SokkuriState", True],
            ["plugProjectNishimuraU/SokkuriAnimator", True],
            ["plugProjectNishimuraU/SokkuriMgr", True],
            ["plugProjectNishimuraU/Sokkuri", True],
            "plugProjectNishimuraU/JointShadowBase",
            "plugProjectNishimuraU/UmimushiShadow",
            ["plugProjectNishimuraU/HanaMgr", True],
            ["plugProjectNishimuraU/Hana", True],
            "plugProjectNishimuraU/BigTreasureAttack",
            "plugProjectNishimuraU/SnakeCrowShadow",
            "plugProjectNishimuraU/SnakeWholeShadow",
            ["plugProjectNishimuraU/BombOtakaraMgr", True],
            ["plugProjectNishimuraU/BombOtakara", True],
            "plugProjectNishimuraU/DangoMushiState",
            ["plugProjectNishimuraU/DangoMushiMgr", True],
            "plugProjectNishimuraU/DangoMushi",
            ["plugProjectNishimuraU/GreenKabutoMgr", True],
            ["plugProjectNishimuraU/GreenKabuto", True],
            ["plugProjectNishimuraU/RedKabutoMgr", True],
            ["plugProjectNishimuraU/RedKabuto", True],
            ["plugProjectNishimuraU/FixKabutoMgr", True],
            ["plugProjectNishimuraU/FixKabuto", True],
            ["plugProjectNishimuraU/RandCapEnemyUnit", True],
            ["plugProjectNishimuraU/NormMiniHoudaiMgr", True],
            ["plugProjectNishimuraU/NormMiniHoudai", True],
            ["plugProjectNishimuraU/FixMiniHoudaiMgr", True],
            ["plugProjectNishimuraU/FixMiniHoudai", True],
            "plugProjectNishimuraU/TyreShadow",
        ],
    },
    {
        "lib": "plugProjectOgawaU",
        "cflags": "$cflags_base",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            ["plugProjectOgawaU/ogScreen", True],
            ["plugProjectOgawaU/ogDopingScreen", True],
            ["plugProjectOgawaU/ogPikminCounter", True],
            ["plugProjectOgawaU/ogAnime", True],
            ["plugProjectOgawaU/ogCounter", True],
            ["plugProjectOgawaU/ogLifeGauge", True],
            ["plugProjectOgawaU/ogSunMeter", True],
            ["plugProjectOgawaU/ogCatchPiki", True],
            ["plugProjectOgawaU/ogContenaCounter", True],
            ["plugProjectOgawaU/ogMapCounter", True],
            ["plugProjectOgawaU/ogAnimTextScreen", True],
            ["plugProjectOgawaU/ogCallBackMessage", True],
            "plugProjectOgawaU/ogMenuMgr",
            ["plugProjectOgawaU/ogCallBackScreen", True],
            "plugProjectOgawaU/ogCounterRV",
            ["plugProjectOgawaU/ogSE", True],
            ["plugProjectOgawaU/ogCounterDay", True],
            ["plugProjectOgawaU/testScene", True],
            ["plugProjectOgawaU/testObj", True],
            ["plugProjectOgawaU/ogSceneGround", True],
            ["plugProjectOgawaU/ogObjGround", True],
            "plugProjectOgawaU/ogCopyPane",
            ["plugProjectOgawaU/ogBloGroup", True],
            ["plugProjectOgawaU/DispMemberBase", True],
            ["plugProjectOgawaU/ogLib2D", True],
            "plugProjectOgawaU/ogObjSMenuMap",
            ["plugProjectOgawaU/ogSceneSMenuMap", True],
            "plugProjectOgawaU/ogObjSMenuItem",
            ["plugProjectOgawaU/ogSceneSMenuItem", True],
            ["plugProjectOgawaU/ogSceneSMenuPause", True],
            ["plugProjectOgawaU/ogObjSMenuPause", True],
            ["plugProjectOgawaU/ogObjSMenuBase", True],
            ["plugProjectOgawaU/ogObjCourseName", True],
            ["plugProjectOgawaU/ogUtil", True],
            ["plugProjectOgawaU/ogSceneCourseName", True],
            ["plugProjectOgawaU/ogObjKantei", True],
            ["plugProjectOgawaU/ogSceneKantei", True],
            ["plugProjectOgawaU/ogObjSpecialItem", True],
            ["plugProjectOgawaU/ogSceneSpecialItem", True],
            ["plugProjectOgawaU/ogObjFloor", True],
            ["plugProjectOgawaU/ogSceneFloor", True],
            ["plugProjectOgawaU/ogObjCave", True],
            ["plugProjectOgawaU/ogSceneCave", True],
            ["plugProjectOgawaU/ogObjAnaDemo", True],
            ["plugProjectOgawaU/ogSceneAnaDemo", True],
            ["plugProjectOgawaU/ogObjChallenge2P", True],
            ["plugProjectOgawaU/ogSceneChallenge2P", True],
            "plugProjectOgawaU/ogObjContena",
            ["plugProjectOgawaU/ogSceneContena", True],
            ["plugProjectOgawaU/ogObjSMenuPauseDoukutu", True],
            ["plugProjectOgawaU/ogSceneSMenuPauseDoukutu", True],
            ["plugProjectOgawaU/ogObjUfo", True],
            ["plugProjectOgawaU/ogSceneUfo", True],
            ["plugProjectOgawaU/ogObjSave", True],
            ["plugProjectOgawaU/ogSceneSave", True],
            ["plugProjectOgawaU/ogObjFinalMsg", True],
            ["plugProjectOgawaU/ogSceneFinalMsg", True],
            "plugProjectOgawaU/ogObjVs",
            ["plugProjectOgawaU/ogSceneVs", True],
            ["plugProjectOgawaU/ogObjChallenge1P", True],
            ["plugProjectOgawaU/ogSceneChallenge1P", True],
            ["plugProjectOgawaU/ogScaleMgr", True],
            ["plugProjectOgawaU/ogObjSMenuPauseVs", True],
            ["plugProjectOgawaU/ogSceneSMenuPauseVs", True],
            "plugProjectOgawaU/ogFuriko",
            "plugProjectOgawaU/ogCounterSlot",
            ["plugProjectOgawaU/ogObjWorldMapInfoWindow0", True],
            ["plugProjectOgawaU/ogSceneWorldMapInfoWindow0", True],
            ["plugProjectOgawaU/ogObjWorldMapInfoWindow1", True],
            ["plugProjectOgawaU/ogSceneWorldMapInfoWindow1", True],
            ["plugProjectOgawaU/ogTotalPokoScreen", True],
            ["plugProjectOgawaU/ogObjChallengeBase", True],
            ["plugProjectOgawaU/ogSceneChallengeBase", True],
            ["plugProjectOgawaU/ogCallBackPicture", True],
            ["plugProjectOgawaU/ogDrawAfter", True],
            ["plugProjectOgawaU/ogOtakaraSensor", True],
            "plugProjectOgawaU/ogTitleMsg",
            ["plugProjectOgawaU/ogAngleMgr", True],
            ["plugProjectOgawaU/ogSceneSMenuCont", True],
            ["plugProjectOgawaU/ogObjSMenuCont", True],
        ],
    },
    {
        "lib": "plugProjectHikinoU",
        "cflags": "$cflags_base -sym on",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            "plugProjectHikinoU/PSSeq",
            "plugProjectHikinoU/PSGame",
            "plugProjectHikinoU/PSSystemIF",
            "plugProjectHikinoU/PSAutoBgm",
            "plugProjectHikinoU/PSBnkMgr",
            ["plugProjectHikinoU/PSTaskBase", True],
            ["plugProjectHikinoU/PSBgmTask", True],
            ["plugProjectHikinoU/PSCreatureMgr", True],
            ["plugProjectHikinoU/PSAutoBgm_MeloArranger", True],
            "plugProjectHikinoU/PSSe",
            ["plugProjectHikinoU/PSSeBase", True],
            ["plugProjectHikinoU/PSScene", True],
            ["plugProjectHikinoU/PSBgmTrack", True],
            "plugProjectHikinoU/PSDirector",
        ],
    },
    {
        "lib": "plugProjectMorimuraU",
        "cflags": "$cflags_base",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            "plugProjectMorimuraU/dayEndCount",
            "plugProjectMorimuraU/hurryUp2D",
            ["plugProjectMorimuraU/gameOver2D", True],
            ["plugProjectMorimuraU/testBase", True],
            ["plugProjectMorimuraU/bombState", True],
            ["plugProjectMorimuraU/bombAnimator", True],
            ["plugProjectMorimuraU/bombMgr", True],
            ["plugProjectMorimuraU/bomb", True],
            ["plugProjectMorimuraU/eggState", True],
            ["plugProjectMorimuraU/eggAnimator", True],
            ["plugProjectMorimuraU/eggMgr", True],
            ["plugProjectMorimuraU/egg", True],
            "plugProjectMorimuraU/panModokiState",
            ["plugProjectMorimuraU/panModokiAnimator", True],
            ["plugProjectMorimuraU/panModokiMgr", True],
            "plugProjectMorimuraU/panModoki",
            ["plugProjectMorimuraU/plantsMgr", True],
            ["plugProjectMorimuraU/plantsAnimator", True],
            ["plugProjectMorimuraU/plants", True],
            "plugProjectMorimuraU/kingChappyState",
            ["plugProjectMorimuraU/kingChappyMgr", True],
            "plugProjectMorimuraU/kingChappy",
            ["plugProjectMorimuraU/miulinState", True],
            ["plugProjectMorimuraU/miulinAnimator", True],
            ["plugProjectMorimuraU/miulinMgr", True],
            "plugProjectMorimuraU/miulin",
            ["plugProjectMorimuraU/jigumoState", True],
            ["plugProjectMorimuraU/jigumoAnimator", True],
            ["plugProjectMorimuraU/jigumoMgr", True],
            "plugProjectMorimuraU/jigumo",
            ["plugProjectMorimuraU/enemyNestMgr", True],
            ["plugProjectMorimuraU/enemyNest", True],
            ["plugProjectMorimuraU/tamagoMushiState", True],
            ["plugProjectMorimuraU/tamagoMushiAnimator", True],
            "plugProjectMorimuraU/tamagoMushiMgr",
            "plugProjectMorimuraU/tamagoMushi",
            "plugProjectMorimuraU/zukan2D",
            "plugProjectMorimuraU/hiScore2D",
            ["plugProjectMorimuraU/umiMushiState", True],
            ["plugProjectMorimuraU/umiMushiAnimator", True],
            ["plugProjectMorimuraU/umiMushiMgr", True],
            "plugProjectMorimuraU/umiMushi",
            ["plugProjectMorimuraU/shijimiChouState", True],
            ["plugProjectMorimuraU/shijimiChouAnimator", True],
            ["plugProjectMorimuraU/shijimiChouMgr", True],
            "plugProjectMorimuraU/shijimiChou",
            "plugProjectMorimuraU/challengeSelect2D",
            "plugProjectMorimuraU/challengeResult2D",
            "plugProjectMorimuraU/vsSelect2D",
            ["plugProjectMorimuraU/mrUtil", True],
            "plugProjectMorimuraU/scrollList",
            ["plugProjectMorimuraU/mrWindow", True],
            ["plugProjectMorimuraU/blackManState", True],
            ["plugProjectMorimuraU/blackManAnimator", True],
            ["plugProjectMorimuraU/blackManMgr", True],
            "plugProjectMorimuraU/blackMan",
            ["plugProjectMorimuraU/tyreState", True],
            ["plugProjectMorimuraU/tyreAnimator", True],
            ["plugProjectMorimuraU/tyreMgr", True],
            "plugProjectMorimuraU/tyre",
        ],
    },
    {
        "lib": "plugProjectEbisawaU",
        "cflags": "$cflags_base",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            "plugProjectEbisawaU/efxBase",
            ["plugProjectEbisawaU/efxEnemy", False],
            "plugProjectEbisawaU/efxObject",
            "plugProjectEbisawaU/efxPikmin",
            "plugProjectEbisawaU/particle2dMgr",
            ["plugProjectEbisawaU/efx2dBase", True],
            "plugProjectEbisawaU/efx2dEffect",
            "plugProjectEbisawaU/particleMgr",
            ["plugProjectEbisawaU/ebiP2Title", False],
            ["plugProjectEbisawaU/ebiP2TitleUnit", True],
            ["plugProjectEbisawaU/ebiUtility", True],
            ["plugProjectEbisawaU/ebiP2TitleCamera", True],
            ["plugProjectEbisawaU/ebiP2TitleLight", True],
            "plugProjectEbisawaU/ebiScreenMemoryCard",
            ["plugProjectEbisawaU/efxTPkEffectMgr", True],
            ["plugProjectEbisawaU/efxEnemyGeneral", True],
            ["plugProjectEbisawaU/ebi3DGraph", True],
            ["plugProjectEbisawaU/ebiGeometry", True],
            ["plugProjectEbisawaU/ebi2DGraph", False], 
            ["plugProjectEbisawaU/ebiScreenOption", True],
            ["plugProjectEbisawaU/ebiScreenProgre", True],
            ["plugProjectEbisawaU/ebiOptionMgr", True], 
            "plugProjectEbisawaU/ebi2DCallBack",
            ["plugProjectEbisawaU/ebiCardMgr", True],
            ["plugProjectEbisawaU/ebiScreenFramework", True],
            ["plugProjectEbisawaU/ebiScreenPushStart", True],
            ["plugProjectEbisawaU/ebiScreenFileSelect", False, {"cflags" : "$cflags_base -sym on"}],
            ["plugProjectEbisawaU/ebiScreenTitleMenu", True],
            ["plugProjectEbisawaU/ebiSaveMgr", True],
            "plugProjectEbisawaU/ebiScreenSaveMenu",
            ["plugProjectEbisawaU/ebiScreenFileSelect_Mgr", False, {"cflags" : "$cflags_base -sym on"}],
            ["plugProjectEbisawaU/ebiFileSelectMgr", True, {"cflags" : "$cflags_base"}],
            ["plugProjectEbisawaU/ebiCardMgr_Load", True],
            ["plugProjectEbisawaU/ebiP2TitleCoordMgr", True],
            ["plugProjectEbisawaU/ebiP2TitlePikmin", False, {"cflags" : "$cflags_game -sym on"}],
            ["plugProjectEbisawaU/ebiP2TitleKogane", True, {"cflags" : "$cflags_game -sym on"}],
            ["plugProjectEbisawaU/ebiP2TitleChappy", True, {"cflags" : "$cflags_game -sym on"}],
            ["plugProjectEbisawaU/ebiScreenTMBack", True, {"cflags" : "$cflags_game -sym on"}],
            ["plugProjectEbisawaU/ebiMainTitleMgr", False, {"cflags" : "$cflags_game -sym on"}],
            ["plugProjectEbisawaU/ebiP2TitleFog", True],
            ["plugProjectEbisawaU/efxEnemyBoss", False, {"cflags" : "$cflags_game -sym on"}],
            "plugProjectEbisawaU/ebiCardEReader",
            ["plugProjectEbisawaU/ebiScreenOmake", False, {"cflags" : "$cflags_game -sym on"}],
            ["plugProjectEbisawaU/ebiOmakeMgr", False, {"cflags" : "$cflags_game -sym on"}],
            ["plugProjectEbisawaU/ebiScreenOmakeCardE", False, {"cflags" : "$cflags_game -sym on"}],
            ["plugProjectEbisawaU/ebiScreenOmakeGame", True, {"cflags" : "$cflags_game -sym on"}],
            ["plugProjectEbisawaU/ebiScreenInfoWindow", True, {"cflags" : "$cflags_game -sym on"}],
        ],
    },
    {
        "lib": "plugProjectKonoU",
        "cflags": "$cflags_game",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            "plugProjectKonoU/khWorldMap",
            "plugProjectKonoU/khCaveResult",
            ["plugProjectKonoU/khSceneLoader", True],
            ["plugProjectKonoU/newGame2DMgr", True],
            ["plugProjectKonoU/newScreenMgr", True],
            ["plugProjectKonoU/khReadyGo", True],
            ["plugProjectKonoU/khFinalFloor", True],
            "plugProjectKonoU/khDayEndResult",
            ["plugProjectKonoU/khUtil", True],
            "plugProjectKonoU/khFinalResult",
            ["plugProjectKonoU/khPayDept", True],
            ["plugProjectKonoU/khWinLose", True],
            ["plugProjectKonoU/khWinLoseReason", True],
            ["plugProjectKonoU/khMailSaveData", True],
        ],
    },
    {
        "lib": "sysBootupU",
        "cflags": "$cflags_game",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            ["sysBootupU/sysBootup", True],
        ],
    },
    {
        "lib": "sysCommonU",
        "cflags": "$cflags_game",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            ["sysCommonU/node", True],
            "sysCommonU/sysMath",
            ["sysCommonU/id32", True],
            ["sysCommonU/parameters", True],
            ["sysCommonU/stream", True],
            "sysCommonU/geometry",
            ["sysCommonU/mapCollision", True],
            "sysCommonU/camera",
            ["sysCommonU/tagparams", True],
            ["sysCommonU/sysTemplates", True],
            ["sysCommonU/mapCode", True],
            "sysCommonU/geomIntersection",
            "sysCommonU/geomOBBTree",
            "sysCommonU/geomTraceMove",
            "sysCommonU/geomCylinder",
            ["sysCommonU/geomClone", True],
        ],
    },
    {
        "lib": "sysGCU",
        "cflags": "$cflags_game -lang=c++",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            "sysGCU/system",
            "sysGCU/section",
            ["sysGCU/gameflow", True],
            ["sysGCU/menuSection", True],
            "sysGCU/dvdThread",
            ["sysGCU/appThread", True],
            ["sysGCU/controller", True],
            "sysGCU/graphics",
            "sysGCU/matMath",
            "sysGCU/sysShape",
            ["sysGCU/reset", True],
            ["sysGCU/dvdStatus", True],
            ["sysGCU/sysTimers", True],
            ["sysGCU/modelMgr", True],
            "sysGCU/heapStatus",
            "sysGCU/light",
            "sysGCU/wipe",
            "sysGCU/moviePlayer",
            "sysGCU/JSTObjectActor",
            "sysGCU/JSTObjectCamera",
            "sysGCU/JSTObjectGameActor",
            "sysGCU/JSTObjectSystem",
            ["sysGCU/JSTFindCreature", True],
            ["sysGCU/movieConfig", True],
            ["sysGCU/gameConfig", True],
            ["sysGCU/fogMgr", True],
            "sysGCU/aramMgr",
            "sysGCU/resourceMgr",
            ["sysGCU/resourceMgr2D", True],
            "sysGCU/sysMaterialAnim",
            "sysGCU/P2DScreen",
            "sysGCU/movieMessage",
            ["sysGCU/moviePlayerPauseAndDraw", True],
            ["sysGCU/JSTObjectSpecialActor", True],
            ["sysGCU/messageSequence", True],
            "sysGCU/messageMgr",
            "sysGCU/messageObj",
            "sysGCU/messageRendering",
            ["sysGCU/message", True],
            ["sysGCU/modelEffect", True],
            ["sysGCU/messageReference", True],
            ["sysGCU/simpleMessage", True],
            ["sysGCU/sysShapeAnimation", True],
            "sysGCU/sysShapeModel",
            "sysGCU/windowMessage",
            "sysGCU/memoryCard",
            "sysGCU/pikmin2MemoryCardMgr",
            ["sysGCU/commonSaveData", True],
            "sysGCU/bootSection",
            "sysGCU/titleSection",
            "sysGCU/loadResource",
            ["sysGCU/rootMenuSection", True],
            ["sysGCU/demoSection", True],
            ["sysGCU/THPAudioDecode", True],
            ["sysGCU/THPDraw", True],
            ["sysGCU/THPPlayer", True],
            ["sysGCU/THPRead", True],
            ["sysGCU/THPVideoDecode", True],
            ["sysGCU/pikmin2THPPlayer", True],
            ["sysGCU/captionMgr", True],
            "sysGCU/captionMessage",
            ["sysGCU/screenScene", True],
            "sysGCU/screenMgr",
            ["sysGCU/screenObj", True],
            "sysGCU/JSTObjectParticleActor",
            ["sysGCU/moviePlayerAudio", True],
            ["sysGCU/illustratedBookMessage", True],
            ["sysGCU/sysDrawBuffer", True],
            ["sysGCU/dvdErrorMessage", True],
            ["sysGCU/pikmin2AramMgr", True],
            ["sysGCU/messageAnalyzer", True],
        ],
    },
    {
        "lib": "utilityU",
        "cflags": "$cflags_game -sym on",
        "mw_version": "1.1",
        "host": True,
        "objects": [
            "utilityU/menu",
            "utilityU/PSMainSide_Director",
            "utilityU/PSMainSide_Factory",
            "utilityU/PSMainSide_ObjSound",
            "utilityU/PSMainSide_Demo",
            "utilityU/PSMainSide_Scene",
            "utilityU/PSMainSide_BossMgr",
            "utilityU/PSMainSide_Se",
            "utilityU/PSMainSide_DirectorMgr",
            "utilityU/PSMainSide_Sound",
            "utilityU/PSMainSide_TrackMap",
            "utilityU/PSMainSide_CreaturePrm",
            "utilityU/PSMainSide_ObjCalc",
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
        default="usa",
        help="version to build (usa, usa.demo)",
    )
    parser.add_argument(
        "--map",
        dest="map",
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
    if args.version.lower() == "usa":
        version_num = "2"
    elif args.version.lower() == "usa.demo":
        version_num = "1"
    else:
        sys.exit(f'Invalid version "{args.version}"')
    build_path = args.build_dir / f"xenoblade.{version}"
    if args.devkitppc:
        dkp_path = args.devkitppc
    elif "DEVKITPPC" in os.environ:
        dkp_path = Path(os.environ["DEVKITPPC"])
    elif os.name == "nt":
        dkp_path = Path("C:\devkitPro\devkitPPC")
    else:
        dkp_path = Path("/opt/devkitpro/devkitPPC")

    cflags_base = f"-proc gekko -nodefaults -fp hard -O4,p -maxerrors 1 -enum int -nosyspath -use_lmw_stmw on -sdata 8 -sdata2 8 -func_align 4 -DVERNUM={version_num} -i include/ -i libs/RVL_SDK/include/ -i libs/PowerPC_EABI_Support/include/std -i libs/nw4r/include/ -i libs/mm/include/ -i libs/monolithlib/include/ -i src/ -i libs/NdevExi2A/include/ -i libs/PowerPC_EABI_Support/include/"
    if args.debug:
        cflags_base += " -sym on -D_DEBUG"
    else:
        cflags_base += " -DNDEBUG -w off"
    n.variable("cflags_base", cflags_base)
    n.variable("cflags_game", "$cflags_base -common on")
    n.variable("cflags_sdk", "$cflags_base -Cpp_exceptions off -enum int -inline auto -ipa file -func_align 16")

    asflags = f"-mgekko -I include --defsym version={version_num} -W --strip-local-absolute -gdwarf-2"
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

    mw_link_version = "1.1"
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
            if os.path.exists(src_path / f"{object}.cpp"):
                c_file = src_path / f"{object}.cpp"
            elif os.path.exists(src_path / f"{object}.cp"):
                c_file = src_path / f"{object}.cp"
            elif os.path.exists(src_path / f"{object}.c"):
                c_file = src_path / f"{object}.c"
            elif os.path.exists(src_path / f"{object}.C"):
                c_file = src_path / f"{object}.C"
            if c_file is not None:
                n.build(
                    outputs=path(build_src_path / f"{object}.o"),
                    rule="mwcc",
                    inputs=path(c_file),
                    variables={
                        "mw_version": mw_version,
                        "cflags": options["cflags"] or lib["cflags"],
                        "basedir": os.path.dirname(build_src_path / f"{object}"),
                        "basefile": path(build_src_path / f"{object}"),
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
                    source_inputs.append(build_src_path / f"{object}.o")
                unit_config["base_path"] = str(build_src_path / f"{object}.o")
            if os.path.exists(asm_path / f"{object}.s"):
                n.build(
                    outputs=path(build_asm_path / f"{object}.o"),
                    rule="as",
                    inputs=path(asm_path / f"{object}.s"),
                    implicit=path(dtk),
                )
            unit_config["target_path"] = str(build_asm_path / f"{object}.o")
            objdiff_config["units"].append(unit_config)
            if completed:
                inputs.append(build_src_path / f"{object}.o")
            else:
                inputs.append(build_asm_path / f"{object}.o")
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
