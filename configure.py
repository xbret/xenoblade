LIBS = [
    {
        "lib": "kyoshin",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "",
        "cflags": "$cflags_base -ipa file -str pool,readonly,reuse -RTTI on -enc SJIS",
        "host": True,
        "objects": [
            [
                "kyoshin/appgame/CGame", 
                False,
                {"cflags": "$cflags_base -ipa file -str pool,readonly,reuse -RTTI on -enc SJIS -O4,s -func_align 4"},
            ],
            ["kyoshin/appgame/main", True],
            ["kyoshin/appgame/plugin/pluginDeb", True],
            ["kyoshin/appgame/plugin/pluginWait", True],
            ["kyoshin/appgame/plugin/ocBuiltin", False],
            ["kyoshin/appgame/plugin/ocThread", False],
            ["kyoshin/appgame/plugin/ocMsg", False],
            ["kyoshin/appgame/plugin/ocBdat", False],
            ["kyoshin/appgame/plugin/ocUnit", False],
            ["kyoshin/appgame/CTaskGame", False],
            ["kyoshin/appgame/cf/CTaskGameCf", False],
            ["kyoshin/appgame/CTaskGameEff", False],
            ["kyoshin/appgame/plugin/ocCfp", False],
            ["kyoshin/appgame/plugin/pluginMain", True],
            ["kyoshin/appgame/plugin/pluginUi", False],
            ["kyoshin/appgame/plugin/pluginEve", False],
            ["kyoshin/appgame/plugin/pluginCfs", False],
            ["kyoshin/appgame/plugin/pluginMath", True],
            ["kyoshin/action/CActParamAnim", False],
            ["kyoshin/action/CActParamData", False],
            ["kyoshin/appgame/cf/CMcaFile", False],
            ["kyoshin/appgame/cf/CTaskEnvironment", False],
            ["kyoshin/appgame/CTimeLightGrp", False],
            ["kyoshin/appgame/cf/CActParamAnimGame", False],
            ["kyoshin/appgame/plugin/pluginCam", False],
            ["kyoshin/appgame/cf/CTaskGameEffAfter", False],
            ["kyoshin/appgame/plugin/pluginPad", True],
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
            ["kyoshin/appgame/cf/CtrlMoveEne", False],
            ["kyoshin/appgame/cf/CtrlNpc", False],
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
            ["kyoshin/appgame/code_800B06A4", False],
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
            ["kyoshin/appgame/code_80135FDC", False],
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
            ["kyoshin/appgame/plugin/pluginTime", False],
            ["kyoshin/appgame/plugin/pluginBtl", False],
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
            ["kyoshin/appgame/plugin/pluginSnd", False],
            ["kyoshin/appgame/plugin/pluginGame", True],
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
            ["kyoshin/appgame/plugin/pluginUnit", False],
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
            ["kyoshin/appgame/code_80296898", True],
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
            ["kyoshin/appgame/plugin/pluginHelp", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_BATTLE_MAIN", False],
            ["kyoshin/appgame/cf/voice/cvsys/CVS_THREAD_BATTLE_BEGIN", False],
            ["kyoshin/appgame/menu/CMenuGCItem", False],
            ["kyoshin/appgame/menu/CMenuGameClear", False],
            ["kyoshin/appgame/cf/CfHikariItemManager", False],
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
            ["kyoshin/appgame/code_802B8A3C", False],
            ["kyoshin/appgame/plugin/pluginVoice", True],
            ["kyoshin/appgame/code_802B9064", False],
            [
                "kyoshin/appgame/CBattery", 
                True,
                {"cflags": "$cflags_base -ipa file -str pool,readonly,reuse -RTTI on -enc SJIS -O4,s -func_align 4"},
            ],
        ],
    },
    {
        "lib": "Runtime.PPCEABI.H.a",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/PowerPC_EABI_Support",
        "cflags": "$cflags_base -Cpp_exceptions off -inline on -proc gekko -fp hard -O4,p -str pool,readonly,reuse -func_align 4",
        "host": True,
        "objects": [
            ["Runtime/__mem", True],
            ["Runtime/__va_arg", True],
            ["Runtime/global_destructor_chain", True],
            [
                "Runtime/New",
                True,
                {"cflags": "$cflags_base -inline on -proc gekko -fp hard -O4,p -str pool,readonly,reuse -func_align 4 -Cpp_exceptions on"},
            ],
            [
                "Runtime/NMWException",
                True,
                {"cflags": "$cflags_base -inline on -proc gekko -fp hard -O4,p -str pool,readonly,reuse -func_align 4 -Cpp_exceptions on"},
            ],
            ["Runtime/ptmf", True],
            [
                "Runtime/MWRTTI",
                True,
                {"cflags": "$cflags_base -inline on -proc gekko -fp hard -O4,p -str pool,readonly,reuse -func_align 4 -Cpp_exceptions on"},
            ],
            ["Runtime/runtime", True],
            ["Runtime/__init_cpp_exceptions", True],
            [
                "Runtime/Gecko_ExceptionPPC", 
                True,
                {"cflags": "$cflags_base -inline on -proc gekko -fp hard -O4,p -str pool,readonly,reuse -func_align 4 -Cpp_exceptions on"},
            ],
            ["Runtime/GCN_mem_alloc", True],
        ],
    },
    {
        "lib": "MSL_C.PPCEABI.bare.H",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/PowerPC_EABI_Support",
        "cflags": "$cflags_base -Cpp_exceptions off -inline on -str pool,readonly,reuse -ipa file",
        "host": True,
        "objects": [
            ["MSL_C/MSL_Common/alloc", True],
            ["MSL_C/MSL_Common/ansi_files", True],
            ["MSL_C/MSL_Common_Embedded/ansi_fp", True],
            ["MSL_C/MSL_Common/arith", True],
            ["MSL_C/MSL_Common/assert", True],
            ["MSL_C/MSL_Common/buffer_io", True],
            ["MSL_C/MSL_Common/ctype", True],
            ["MSL_C/MSL_Common/direct_io", True],
            ["MSL_C/MSL_Common/errno", True],
            ["MSL_C/MSL_Common/file_io", True],
            ["MSL_C/MSL_Common/FILE_POS", True],
            ["MSL_C/MSL_Common/locale", True],
            ["MSL_C/MSL_Common/mbstring", True],
            ["MSL_C/MSL_Common/mem", True],
            ["MSL_C/MSL_Common/mem_funcs", True],
            ["MSL_C/MSL_Common/math_api", True],
            ["MSL_C/MSL_Common/misc_io", True],
            ["MSL_C/MSL_Common/printf", True],
            ["MSL_C/MSL_Common/rand", True],
            ["MSL_C/MSL_Common/float", True],
            ["MSL_C/MSL_Common/scanf", True],
            ["MSL_C/MSL_Common/signal", True],
            ["MSL_C/MSL_Common/string", True],
            ["MSL_C/MSL_Common/strtold", True],
            ["MSL_C/MSL_Common/strtoul", True],
            ["MSL_C/MSL_Common/wcstoul", True],
            ["MSL_C/MSL_Common/wctype", True],
            ["MSL_C/MSL_Common/wmem", True],
            ["MSL_C/MSL_Common/wprintf", True],
            ["MSL_C/MSL_Common/wscanf", True],
            ["MSL_C/MSL_Common/wstring", True],
            ["MSL_C/MSL_Common/wchar_io", True],
            ["MSL_C/PPC_EABI/uart_console_io_gcn", True],
            ["MSL_C/PPC_EABI/abort_exit_ppc_eabi", True],
            ["MSL_C/MSL_Common/secure_error", True],
            ["MSL_C/MSL_Common/math_double", True],
            ["MSL_C/MSL_Common_Embedded/math_sun", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/e_acos", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/e_asin", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/e_atan2", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/e_fmod", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/e_log", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/e_log10", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/e_pow", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/e_rem_pio2", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/k_cos", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/k_rem_pio2", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/k_sin", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/k_tan", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/s_atan", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/s_ceil", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/s_copysign", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/s_cos", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/s_floor", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/s_frexp", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/s_ldexp", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/s_modf", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/s_sin", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/s_tan", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/w_acos", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/w_asin", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/w_atan2", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/w_fmod", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/w_log", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/w_log10", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/w_pow", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/e_sqrt", True],
            ["MSL_C/PPC_EABI/math_ppc", True],
            ["MSL_C/MSL_Common_Embedded/Math/Double_precision/w_sqrt", True],
            ["MSL_C/MSL_Common/extras", True],
        ],
    },
    {
        "lib": "TRK_Hollywood_Revolution",
        "mw_console": "Wii",
        "mw_version": "1.0",
        "root_dir": "libs/PowerPC_EABI_Support",
        "cflags": "$cflags_base -Cpp_exceptions off -inline on",
        "host": True,
        "objects": [
            ["MetroTRK/__exception", True],
            ["MetroTRK/targsupp", True],
            ["MetroTRK/custconn/cc_gdev", True],
            ["MetroTRK/custconn/MWCriticalSection_gc", True],
            ["MetroTRK/custconn/CircleBuffer", True],
            ["MetroTRK/flush_cache", True],
            ["MetroTRK/main_TRK", True],
            ["MetroTRK/mainloop", True],
            ["MetroTRK/mem_TRK", True],
            ["MetroTRK/dispatch", True],
            ["MetroTRK/dolphin_trk", True],
            [
                "MetroTRK/dolphin_trk_glue",
                True,
                {"cflags": "$cflags_base -Cpp_exceptions off -inline on -str pool"},
            ],
            ["MetroTRK/notify", True],
            ["MetroTRK/nubevent", True],
            ["MetroTRK/nubinit", True],
            ["MetroTRK/serpoll", True],
            ["MetroTRK/string_TRK", True],
            [
                "MetroTRK/support",
                True,
                {"cflags": "$cflags_base -Cpp_exceptions off -inline on -str pool"},
            ],
            ["MetroTRK/targcont", True],
            ["MetroTRK/mpc_7xx_603e", True],
            ["MetroTRK/msg", True],
            ["MetroTRK/msgbuf", True],
            [
                "MetroTRK/msghndlr",
                True,
                {"cflags": "$cflags_base -Cpp_exceptions off -inline on -str pool"},
            ],
            ["MetroTRK/mslsupp", True],
            [
                "MetroTRK/targimpl",
                True,
                {"cflags": "$cflags_base -Cpp_exceptions off -inline auto -pool off"},
            ],
            ["MetroTRK/target_options", True],
        ],
    },
    {
        "lib": "NdevExi2A",
        "mw_console": "GC",
        "mw_version": "3.0",
        "root_dir": "libs/NdevExi2A",
        "cflags": "$cflags_base -use_lmw_stmw off -inline auto -ipa file -Cpp_exceptions off",
        "host": True,
        "objects": [
            ["DebuggerDriver", True],
            ["exi2", True],
        ],
    },
    {
        "lib": "ai",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/ai/ai", True],
        ],
    },
    {
        "lib": "arc",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/arc/arc", True],
        ],
    },
    {
        "lib": "ax",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/ax/AX", True],
            ["revolution/ax/AXAlloc", False],
            ["revolution/ax/AXAux", False],
            ["revolution/ax/AXCL", False],
            ["revolution/ax/AXOut", False],
            ["revolution/ax/AXSPB", False],
            ["revolution/ax/AXVPB", False],
            ["revolution/ax/AXProf", True],
            ["revolution/ax/AXComp", True],
            ["revolution/ax/DSPCode", True],
        ],
    },
    {
        "lib": "axfx",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/axfx/AXFXReverbHi", False],
            ["revolution/axfx/AXFXReverbHiExp", False],
            ["revolution/axfx/AXFXDelayExp", False],
            ["revolution/axfx/AXFXDelayExpDpl2", False],
            ["revolution/axfx/AXFXReverbStdExp", False],
            ["revolution/axfx/AXFXReverbStdExpDpl2", False],
            ["revolution/axfx/AXFXChorusExp", False],
            ["revolution/axfx/AXFXChorusExpDpl2", False],
            ["revolution/axfx/AXFXLfoTable", True],
            ["revolution/axfx/AXFXSrcCoef", True],
            ["revolution/axfx/AXFXHooks", True],
        ],
    },
    {
        "lib": "base",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/base/PPCArch", True],
        ],
    },
    {
        "lib": "bte",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_base -Cpp_exceptions off -enum int -inline auto -ipa file",
        "host": True,
        "objects": [
            ["revolution/bte/gki/gki_buffer", False],
            ["revolution/bte/gki/gki_time", False],
            ["revolution/bte/gki/gki_ppc", False],
            ["revolution/bte/hci/hcisu_h2", False],
            ["revolution/bte/hci/uusb_ppc", False],
            ["revolution/bte/bta/dm/bta_dm_cfg", False],
            ["revolution/bte/bta/hh/bta_hh_cfg", False],
            ["revolution/bte/bta/sys/bta_sys_cfg", False],
            ["revolution/bte/main/bte_hcisu", False],
            ["revolution/bte/main/bte_init", False],
            ["revolution/bte/main/bte_logmsg", False],
            ["revolution/bte/main/bte_main", False],
            ["revolution/bte/main/btu_task1", False],
            ["revolution/bte/bta/sys/bd", False],
            ["revolution/bte/bta/sys/bta_sys_conn", False],
            ["revolution/bte/bta/sys/bta_sys_main", False],
            ["revolution/bte/bta/sys/ptim", False],
            ["revolution/bte/bta/sys/utl", False],
            ["revolution/bte/bta/dm/bta_dm_act", False],
            ["revolution/bte/bta/dm/bta_dm_api", False],
            ["revolution/bte/bta/dm/bta_dm_main", False],
            ["revolution/bte/bta/dm/bta_dm_pm", False],
            ["revolution/bte/bta/hh/bta_hh_act", False],
            ["revolution/bte/bta/hh/bta_hh_api", False],
            ["revolution/bte/bta/hh/bta_hh_main", False],
            ["revolution/bte/bta/hh/bta_hh_utils", False],
            ["revolution/bte/stack/btm/btm_acl", False],
            ["revolution/bte/stack/btm/btm_dev", False],
            ["revolution/bte/stack/btm/btm_devctl", False],
            ["revolution/bte/stack/btm/btm_discovery", False],
            ["revolution/bte/stack/btm/btm_inq", False],
            ["revolution/bte/stack/btm/btm_main", False],
            ["revolution/bte/stack/btm/btm_pm", False],
            ["revolution/bte/stack/btm/btm_sco", False],
            ["revolution/bte/stack/btm/btm_sec", False],
            ["revolution/bte/stack/btu/btu_hcif", False],
            ["revolution/bte/stack/btu/btu_init", False],
            ["revolution/bte/stack/wbt/wbt_ext", False],
            ["revolution/bte/stack/gap/gap_api", False],
            ["revolution/bte/stack/gap/gap_conn", False],
            ["revolution/bte/stack/gap/gap_utils", False],
            ["revolution/bte/stack/hcic/hcicmds", False],
            ["revolution/bte/stack/hid/hidd_api", False],
            ["revolution/bte/stack/hid/hidd_conn", False],
            ["revolution/bte/stack/hid/hidd_mgmt", False],
            ["revolution/bte/stack/hid/hidd_pm", False],
            ["revolution/bte/stack/hid/hidh_api", False],
            ["revolution/bte/stack/hid/hidh_conn", False],
            ["revolution/bte/stack/l2cap/l2c_api", False],
            ["revolution/bte/stack/l2cap/l2c_csm", False],
            ["revolution/bte/stack/l2cap/l2c_link", False],
            ["revolution/bte/stack/l2cap/l2c_main", False],
            ["revolution/bte/stack/l2cap/l2c_utils", False],
            ["revolution/bte/stack/rfcomm/port_api", False],
            ["revolution/bte/stack/rfcomm/port_rfc", False],
            ["revolution/bte/stack/rfcomm/port_utils", False],
            ["revolution/bte/stack/rfcomm/rfc_l2cap_if", False],
            ["revolution/bte/stack/rfcomm/rfc_mx_fsm", False],
            ["revolution/bte/stack/rfcomm/rfc_port_fsm", False],
            ["revolution/bte/stack/rfcomm/rfc_port_if", False],
            ["revolution/bte/stack/rfcomm/rfc_ts_frames", False],
            ["revolution/bte/stack/rfcomm/rfc_utils", False],
            ["revolution/bte/stack/sdp/sdp_api", False],
            ["revolution/bte/stack/sdp/sdp_db", False],
            ["revolution/bte/stack/sdp/sdp_discovery", False],
            ["revolution/bte/stack/sdp/sdp_main", False],
            ["revolution/bte/stack/sdp/sdp_server", False],
            ["revolution/bte/stack/sdp/sdp_utils", False],
        ],
    },
    {
        "lib": "cx",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/cx/CXStreamingUncompression", False],
            ["revolution/cx/CXUncompression", False],
            ["revolution/cx/CXSecureUncompression", True],
        ],
    },
    {
        "lib": "db",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/db/db", True],
        ],
    },
    {
        "lib": "dsp",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/dsp/dsp", True],
            ["revolution/dsp/dsp_debug", True],
            ["revolution/dsp/dsp_task", True],
        ],
    },
    {
        "lib": "dvd",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/dvd/dvdfs", True],
            ["revolution/dvd/dvd", True],
            ["revolution/dvd/dvdqueue", True],
            ["revolution/dvd/dvderror", True],
            ["revolution/dvd/dvdidutils", True],
            ["revolution/dvd/dvdFatal", True],
            ["revolution/dvd/dvdDeviceError", True],
            ["revolution/dvd/dvd_broadway", True],
        ],
    },
    {
        "lib": "enc",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/enc/encutility", False],
            ["revolution/enc/encjapanese", False],
        ],
    },
    {
        "lib": "esp",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/esp/esp", True],
        ],
    },
    {
        "lib": "euart",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/euart/euart", True],
        ],
    },
    {
        "lib": "exi",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/exi/EXIBios", False],
            ["revolution/exi/EXIUart", True],
            ["revolution/exi/EXICommon", True],
        ],
    },
    {
        "lib": "fs",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/fs/fs", True],
        ],
    },
    {
        "lib": "gx",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/gx/GXInit", False],
            ["revolution/gx/GXFifo", False],
            ["revolution/gx/GXAttr", False],
            ["revolution/gx/GXMisc", False],
            ["revolution/gx/GXGeometry", False],
            ["revolution/gx/GXFrameBuf", False],
            ["revolution/gx/GXLight", True],
            ["revolution/gx/GXTexture", False],
            ["revolution/gx/GXBump", True, {"mw_version" : "1.0"}],
            ["revolution/gx/GXTev", False],
            ["revolution/gx/GXPixel", False],
            ["revolution/gx/GXDisplayList", True],
            ["revolution/gx/GXTransform", True],
            ["revolution/gx/GXPerf", False],
        ],
    },
    {
        "lib": "homebuttonLib",
        "mw_console": "Wii",
        "mw_version": "1.0",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk -sdata 0 -sdata2 0 -i libs/RVL_SDK/src/revolution/hbm/include/",
        "host": True,
        "objects": [
            ["revolution/hbm/HBMFrameController", False],
            ["revolution/hbm/HBMAnmController", False],
            ["revolution/hbm/HBMGUIManager", False],
            ["revolution/hbm/HBMController", False],
            ["revolution/hbm/HBMRemoteSpk", False],
            ["revolution/hbm/HBMAxSound", False],
            ["revolution/hbm/HBMCommon", False],
            ["revolution/hbm/HBMBase", False],
            ["revolution/hbm/nw4hbm/lyt/lyt_animation", False],
            ["revolution/hbm/nw4hbm/lyt/lyt_arcResourceAccessor", False],
            ["revolution/hbm/nw4hbm/lyt/lyt_bounding", False],
            ["revolution/hbm/nw4hbm/lyt/lyt_common", False],
            ["revolution/hbm/nw4hbm/lyt/lyt_drawInfo", True],
            ["revolution/hbm/nw4hbm/lyt/lyt_group", False],
            ["revolution/hbm/nw4hbm/lyt/lyt_layout", False],
            ["revolution/hbm/nw4hbm/lyt/lyt_material", False],
            ["revolution/hbm/nw4hbm/lyt/lyt_pane", False],
            ["revolution/hbm/nw4hbm/lyt/lyt_picture", False],
            ["revolution/hbm/nw4hbm/lyt/lyt_resourceAccessor", False],
            ["revolution/hbm/nw4hbm/lyt/lyt_textBox", False],
            ["revolution/hbm/nw4hbm/lyt/lyt_window", False],
            ["revolution/hbm/nw4hbm/math/math_triangular", False],
            ["revolution/hbm/nw4hbm/ut/ut_binaryFileFormat", True],
            ["revolution/hbm/nw4hbm/ut/ut_CharStrmReader", True],
            ["revolution/hbm/nw4hbm/ut/ut_CharWriter", False],
            ["revolution/hbm/nw4hbm/ut/ut_Font", True],
            ["revolution/hbm/nw4hbm/ut/ut_LinkList", True],
            ["revolution/hbm/nw4hbm/ut/ut_list", False],
            ["revolution/hbm/nw4hbm/ut/ut_ResFont", False],
            ["revolution/hbm/nw4hbm/ut/ut_ResFontBase", True],
            ["revolution/hbm/nw4hbm/ut/ut_TagProcessorBase", False],
            ["revolution/hbm/nw4hbm/ut/ut_TextWriterBase", False],
            ["revolution/hbm/mix", False],
            ["revolution/hbm/syn", False],
            ["revolution/hbm/synctrl", False],
            ["revolution/hbm/synenv", False],
            ["revolution/hbm/synmix", False],
            ["revolution/hbm/synpitch", False],
            ["revolution/hbm/synsample", False],
            ["revolution/hbm/synvoice", False],
            ["revolution/hbm/seq", False],
        ],
    },
    {
        "lib": "ipc",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": True,
        "objects": [
            ["revolution/ipc/ipcMain", True],
            ["revolution/ipc/ipcclt", False],
            ["revolution/ipc/memory", False],
            ["revolution/ipc/ipcProfile", True],
        ],
    },
    {
        "lib": "kpad",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/kpad/KPAD", False],
        ],
    },
    {
        "lib": "mem",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/mem/mem_heapCommon", True],
            ["revolution/mem/mem_expHeap", False],
            ["revolution/mem/mem_frameHeap", True],
            ["revolution/mem/mem_allocator", True],
            ["revolution/mem/mem_list", True],
        ],
    },
    {
        "lib": "mix",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/mix/mix", False],
            ["revolution/mix/remote", False],
        ],
    },
    {
        "lib": "mtx",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/mtx/mtx", True],
            ["revolution/mtx/mtxvec", True],
            ["revolution/mtx/mtx44", True],
            ["revolution/mtx/vec", True],
            ["revolution/mtx/quat", True],
        ],
    },
    {
        "lib": "nand",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/nand/nand", False],
            ["revolution/nand/NANDOpenClose", False],
            ["revolution/nand/NANDCore", False],
            ["revolution/nand/NANDCheck", False],
            ["revolution/nand/NANDLogging", False],
        ],
    },
    {
        "lib": "os",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/os/OS", True],
            ["revolution/os/OSAlarm", True],
            ["revolution/os/OSAlloc", True],
            ["revolution/os/OSArena", True],
            ["revolution/os/OSAudioSystem", True],
            ["revolution/os/OSCache", True],
            ["revolution/os/OSContext", True],
            ["revolution/os/OSError", True],
            ["revolution/os/OSExec", False],
            ["revolution/os/OSFatal", True],
            ["revolution/os/OSFont", True],
            ["revolution/os/OSInterrupt", True],
            ["revolution/os/OSLink", True],
            ["revolution/os/OSMessage", True],
            ["revolution/os/OSMemory", True],
            ["revolution/os/OSMutex", True],
            ["revolution/os/OSReboot", True],
            ["revolution/os/OSReset", False],
            ["revolution/os/OSRtc", True],
            ["revolution/os/OSSync", True],
            ["revolution/os/OSThread", True],
            ["revolution/os/OSTime", True],
            ["revolution/os/OSUtf", True, {"mw_console" : "GC", "mw_version" : "3.0"}],
            ["revolution/os/OSIpc", True],
            ["revolution/os/OSStateTM", True],
            ["revolution/os/__start", True],
            ["revolution/os/OSPlayRecord", True],
            ["revolution/os/OSStateFlags", True],
            ["revolution/os/OSNet", False],
            ["revolution/os/OSNandbootInfo", True],
            ["revolution/os/OSPlayTime", False],
            ["revolution/os/OSCrc", True],
            ["revolution/os/OSLaunch", False],
            ["revolution/os/__ppc_eabi_init", True],
        ],
    },
    {
        "lib": "pad",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/pad/Pad", True],
        ],
    },
    {
        "lib": "sc",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/sc/scsystem", False],
            ["revolution/sc/scapi", True],
            ["revolution/sc/scapi_prdinfo", True, {"mw_console" : "GC", "mw_version" : "3.0"}],
        ],
    },
    {
        "lib": "si",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/si/SIBios", False],
            ["revolution/si/SISamplingRate", True],
        ],
    },
    {
        "lib": "tpl",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/tpl/TPL", True],
        ],
    },
    {
        "lib": "usb",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/usb/usb", True],
        ],
    },
    {
        "lib": "vi",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/vi/vi", False],
            ["revolution/vi/i2c", False],
            ["revolution/vi/vi3in1", False],
        ],
    },
    {
        "lib": "wenc",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/wenc/wenc", False],
        ],
    },
    {
        "lib": "wpad",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/wpad/WPAD", False],
            ["revolution/wpad/WPADHIDParser", False],
            ["revolution/wpad/WPADEncrypt", False],
            ["revolution/wpad/WPADMem", False],
            ["revolution/wpad/debug_msg", True],
        ],
    },
    {
        "lib": "wud",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/RVL_SDK",
        "cflags": "$cflags_sdk",
        "host": False,
        "objects": [
            ["revolution/wud/WUD", False],
            ["revolution/wud/WUDHidHost", False],
            ["revolution/wud/debug_msg", True],
        ],
    },
    {
        "lib": "libadxwii",
        "mw_console": "GC",
        "mw_version": "3.0",
        "root_dir": "libs/CriWare",
        "cflags": "$cflags_criware",
        "host": False,
        "objects": [
            ["adx/adxf/adx_fini", False],
            ["adx/adxf/adx_fs", False],
            ["adx/adxf/adx_fcch", True],
            ["adx/adxt/adx_fsvr", False],
            ["adx/adxt/adx_inis", False],
            ["adx/adxt/adx_lsc", False],
            ["adx/adxt/adx_mng", False],
            ["adx/adxt/adx_sfa", False],
            ["adx/adxt/adx_sjd", False],
            ["adx/adxt/adx_stmc", False],
            ["adx/adxt/adx_tlk2", False],
            ["adx/adxt/adx_tlk", False],
            ["adx/adxt/adx_tsvr", False],
            ["adx/adxt/adx_xpnd", False],
            ["adx/adxt/adx_amp", False],
            ["adx/adxt/adx_bahx", False],
            ["adx/adxt/adx_baif", False],
            ["adx/adxt/adx_bsc", False],
            ["adx/adxt/adx_bwav", False],
            ["adx/adxt/code_80389300", False],
            ["adx/adxt/adx_crs", False],
            ["adx/adxt/adx_dcd5", False],
            ["adx/adxt/adx_dcd", False],
            ["adx/adxt/adx_errs", False],
            ["adx/ahx/ahx_ftbl", True],
            ["adx/ahx/ahx_link", False],
            ["adx/ahx/ahx_mflt_c", False],
            ["adx/ahx/ahx_mwin2_c", False],
            ["adx/ahx/ahx_sbf2", False],
            ["adx/ahx/ahx_sbf", False],
            ["adx/ahx/ahx_sjd", False],
            ["adx/ahx/ahx_wtbl", True],
            ["adx/ahx/adx_hdr", False],
            ["adx/ahx/ahx_atbl", True],
            ["adx/ahx/ahx_bsr", False],
            ["adx/ahx/ahx_cmn", False],
            ["adx/ahx/ahx_dcd", False],
            ["adx/cricfg/cfg_lib", False],
            ["adx/cvfs/cri_cvfs", False],
            ["adx/gcci/gcci", False],
            ["adx/gcci/gcci_sub", False],
            ["adx/lsc/lsc_err", False],
            ["adx/lsc/lsc_ini", False],
            ["adx/lsc/lsc_svr", False],
            ["adx/lsc/lsc", False],
            ["adx/lsc/lsc_crs", False],
            ["adx/mfci/mfci", False],
            ["adx/sj/sj_mem", False],
            ["adx/sj/sj_rbf", False],
            ["adx/sj/sj_uni", False],
            ["adx/sj/sj_utl", False],
            ["adx/sj/sj_crs", True],
            ["adx/sj/sj_err", False],
            ["adx/svm/svm", False],
            ["adx/adxt/adx_dcd3", False],
            ["adx/adxt/adx_bsps", False],
            ["adx/adxt/adx_bau", False],
            ["adx/wiirna/rna_crs", False],
            ["adx/wiirna/rna_err", False],
            ["adx/wiirna/ax_rna", False],
            ["adx/adxt/srcwii/adx_mwii", False],
            ["adx/adxt/srcwii/adx_suwii", False],
            ["adx/adxt/srcwii/adx_rnawii", False],
            ["adx/std/cri_crw_std", False],
        ],
    },
    {
        "lib": "libmwsfdwii",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/CriWare",
        "cflags": "$cflags_criware",
        "host": False,
        "objects": [
            ["sofdec/cft/srcgc/cftyp422_ppc", False],
            ["sofdec/cft/cft_common", False],
            ["sofdec/mwply/mwsfdfrm", False],
            ["sofdec/mwply/mwsfdrna", False],
            ["sofdec/mwply/mwsfdrsc", False],
            ["sofdec/mwply/mwsfdsl", False],
            ["sofdec/mwply/mwsfdsvm", False],
            ["sofdec/mwply/mwstm", False],
            ["sofdec/mwply/mwsfdsee", False],
            ["sofdec/mwply/mwsfdsfx", False],
            ["sofdec/mwply/mwsfdcre", False],
            ["sofdec/mwply/mwsfdlib", False],
            ["sofdec/mwply/mwsfdply", False],
            ["sofdec/mwply/mwsfdset", False],
            ["sofdec/mwply/mwsfdsvr", False],
            ["sofdec/mwply/mwsfdsst", False],
            ["sofdec/mwply/mwsfx_Y84C44", False],
            ["sofdec/mwply/code_803A3AE4", False],
            ["sofdec/sfdcore/mpv/mpv_bdec", False],
            ["sofdec/sfdcore/mpv/mpv_cdec", False],
            ["sofdec/sfdcore/mpv/mpv_cmc", False],
            ["sofdec/sfdcore/mpv/mpv_dec", False],
            ["sofdec/sfdcore/mpv/mpv_deli", False],
            ["sofdec/sfdcore/mpv/mpv_emp", False],
            ["sofdec/sfdcore/mpv/mpv_err", False],
            ["sofdec/sfdcore/mpv/mpv_frm", False],
            ["sofdec/sfdcore/mpv/mpv_get", False],
            ["sofdec/sfdcore/mpv/mpv_hdec", False],
            ["sofdec/sfdcore/mpv/mpv_lib", False],
            ["sofdec/sfdcore/mpv/mpv_mc", False],
            ["sofdec/sfdcore/mpv/mpv_vlc", False],
            ["sofdec/sfdcore/mpv/mpv_umc", False],
            ["sofdec/sfdcore/mpv/mpv_mcy", False],
            ["sofdec/sfdcore/mpv/mpv_m2v", False],
            ["sofdec/sfdcore/mpv/mpvabdec", False],
            ["sofdec/sfdcore/mpv/mpv_slice", False],
            ["sofdec/sfdcore/dct/dct_ac", False],
            ["sofdec/sfdcore/dct/dct_isr", False],
            ["sofdec/sfdcore/dct/dct_ver", False],
            ["sofdec/sfdcore/memcpy/mcp_not", False],
            ["sofdec/sfdcore/mps/mps_dec", False],
            ["sofdec/sfdcore/mps/mps_del", False],
            ["sofdec/sfdcore/mps/mps_get", False],
            ["sofdec/sfdcore/mps/mps_lib", False],
            ["sofdec/sfdcore/sfd/sfd_adxt", False],
            ["sofdec/sfdcore/sfd/sfd_aoap", False],
            ["sofdec/sfdcore/sfd/sfd_buf", False],
            ["sofdec/sfdcore/sfd/code_803BFD20", False],
            ["sofdec/sfdcore/sfd/sfd_con", False],
            ["sofdec/sfdcore/sfd/sfd_hds", False],
            ["sofdec/sfdcore/sfd/sfd_lib", False],
            ["sofdec/sfdcore/sfd/sfd_mem", False],
            ["sofdec/sfdcore/sfd/sfd_mps", False],
            ["sofdec/sfdcore/sfd/sfd_mpv", False],
            ["sofdec/sfdcore/sfd/sfd_mpvf", False],
            ["sofdec/sfdcore/sfd/sfd_pl2", False],
            ["sofdec/sfdcore/sfd/sfd_ply", False],
            ["sofdec/sfdcore/sfd/sfd_pts", False],
            ["sofdec/sfdcore/sfd/sfd_see", False],
            ["sofdec/sfdcore/sfd/sfd_set", False],
            ["sofdec/sfdcore/sfd/sfd_tim", False],
            ["sofdec/sfdcore/sfd/sfd_trn", False],
            ["sofdec/sfdcore/sfd/sfd_uo", False],
            ["sofdec/sfdcore/sfd/sfd_vom", False],
            ["sofdec/sfdcore/sfd/sfd_tmr", False],
            ["sofdec/sfdcore/sfd/sfd_tst", False],
            ["sofdec/sfdcore/sfd/sfd_seeki", False],
            ["sofdec/sfdcore/sfh/sfh_local", False],
            ["sofdec/sfdcore/sfh/sfh_main", False],
            ["sofdec/sfdcore/sfh/sfh_ver1", False],
            ["sofdec/sfdcore/sfh/sfh_ver2", False],
            ["sofdec/sfdcore/uty/cmptime", False],
            ["sofdec/sfdcore/uty/memcpyd", False],
            ["sofdec/sfdcore/uty/memsetd", False],
            ["sofdec/sfdcore/uty/muldiv", False],
            ["sofdec/sfdcore/uty/muldivr", False],
            ["sofdec/sfdcore/uty/uty_tmr", False],
            ["sofdec/sfx/sfx_set", False],
            ["sofdec/sfx/sfx_cnv", False],
            ["sofdec/sfx/sfx_inf", False],
            ["sofdec/sfx/sfx_lib", False],
            ["sofdec/sfx/sfx_alp", False],
            ["sofdec/sfx/sfx_zmv", False],
            ["sofdec/sfx/sfx_sud", False],
            ["sofdec/sfx/sfx_cnv_to_Y84C44", False],
            ["sofdec/sud/sud_lib", False],
        ],
    },
    {
        "lib": "libnw4r_db",
        "mw_console": "GC",
        "mw_version": "3.0",
        "root_dir": "libs/nw4r",
        "cflags": "$cflags_nw4r",
        "host": False,
        "objects": [
            ["db/db_console", False],
            ["db/db_assert", False],
        ],
    },
    {
        "lib": "libnw4r_g3d",
        "mw_console": "GC",
        "mw_version": "3.0",
        "root_dir": "libs/nw4r",
        "cflags": "$cflags_nw4r",
        "host": False,
        "objects": [
            ["g3d/res/g3d_rescommon", False],
            ["g3d/res/g3d_resdict", False],
            ["g3d/res/g3d_resfile", False],
            ["g3d/res/g3d_resmdl", False],
            ["g3d/res/g3d_resshp", False],
            ["g3d/res/g3d_restev", False],
            ["g3d/res/g3d_resmat", False],
            ["g3d/res/g3d_resvtx", False],
            ["g3d/res/g3d_restex", False],
            ["g3d/res/g3d_resnode", False],
            ["g3d/res/g3d_resanm", False],
            ["g3d/res/g3d_resanmclr", False],
            ["g3d/res/g3d_resanmtexpat", False],
            ["g3d/res/g3d_resanmtexsrt", False],
            ["g3d/res/g3d_resanmchr", False],
            ["g3d/res/g3d_reslightset", False],
            ["g3d/res/g3d_resanmamblight", False],
            ["g3d/res/g3d_resanmlight", False],
            ["g3d/res/g3d_resanmfog", False],
            ["g3d/res/g3d_resanmcamera", False],
            ["g3d/res/g3d_resanmscn", False],
            ["g3d/g3d_transform", False],
            ["g3d/g3d_anmvis", False],
            ["g3d/g3d_anmclr", False],
            ["g3d/g3d_anmtexpat", False],
            ["g3d/g3d_anmtexsrt", False],
            ["g3d/g3d_anmchr", False],
            ["g3d/g3d_anmshp", False],
            ["g3d/g3d_anmscn", False],
            ["g3d/g3d_obj", False],
            ["g3d/g3d_anmobj", False],
            ["g3d/platform/g3d_gpu", False],
            ["g3d/platform/g3d_cpu", False],
            ["g3d/g3d_state", False],
            ["g3d/g3d_draw1mat1shp", False],
            ["g3d/g3d_calcview", False],
            ["g3d/g3d_dcc", False],
            ["g3d/g3d_workmem", False],
            ["g3d/g3d_calcworld", False],
            ["g3d/g3d_draw", False],
            ["g3d/g3d_camera", False],
            ["g3d/dcc/g3d_basic", False],
            ["g3d/dcc/g3d_maya", False],
            ["g3d/dcc/g3d_xsi", False],
            ["g3d/dcc/g3d_3dsmax", False],
            ["g3d/g3d_scnobj", False],
            ["g3d/g3d_scnroot", False],
            ["g3d/g3d_scnmdlsmpl", False],
            ["g3d/g3d_scnmdl", False],
            ["g3d/g3d_scnmdlexpand", False],
            ["g3d/g3d_calcmaterial", False],
            ["g3d/g3d_init", False],
            ["g3d/g3d_scnproc", False],
            ["g3d/g3d_fog", False],
            ["g3d/g3d_light", False],
            ["g3d/g3d_calcvtx", False],
        ],
    },
    {
        "lib": "libnw4r_lyt",
        "mw_console": "GC",
        "mw_version": "3.0",
        "root_dir": "libs/nw4r",
        "cflags": "$cflags_nw4r",
        "host": False,
        "objects": [
            ["lyt/lyt_init", True],
            ["lyt/lyt_pane", False],
            ["lyt/lyt_group", False],
            ["lyt/lyt_layout", False],
            ["lyt/lyt_picture", False],
            ["lyt/lyt_textBox", False],
            ["lyt/lyt_window", False],
            ["lyt/lyt_bounding", False],
            ["lyt/lyt_material", False],
            ["lyt/lyt_texMap", False],
            ["lyt/lyt_drawInfo", True],
            ["lyt/lyt_animation", False],
            ["lyt/lyt_resourceAccessor", True],
            ["lyt/lyt_arcResourceAccessor", False],
            ["lyt/lyt_common", False],
            ["lyt/lyt_util", False],
        ],
    },
    {
        "lib": "libnw4r_math",
        "mw_console": "GC",
        "mw_version": "3.0",
        "root_dir": "libs/nw4r",
        "cflags": "$cflags_nw4r",
        "host": False,
        "objects": [
            ["math/math_arithmetic", False],
            ["math/math_triangular", False],
            ["math/math_types", False],
            ["math/math_geometry", False],
        ],
    },
    {
        "lib": "libnw4r_snd",
        "mw_console": "GC",
        "mw_version": "3.0",
        "root_dir": "libs/nw4r",
        "cflags": "$cflags_nw4r",
        "host": False,
        "objects": [
            ["snd/snd_AxManager", False],
            ["snd/snd_AxVoice", False],
            ["snd/snd_AxVoiceManager", False],
            ["snd/snd_AxfxImpl", False],
            ["snd/snd_Bank", False],
            ["snd/snd_BankFile", False],
            ["snd/snd_BasicPlayer", False],
            ["snd/snd_BasicSound", False],
            ["snd/snd_BiquadFilterPreset", False],
            ["snd/snd_Channel", False],
            ["snd/snd_DisposeCallbackManager", False],
            ["snd/snd_EnvGenerator", False],
            ["snd/snd_ExternalSoundPlayer", False],
            ["snd/snd_FxChorusDpl2", False],
            ["snd/snd_FxDelayDpl2", False],
            ["snd/snd_FxReverbStdDpl2", False],
            ["snd/snd_InstancePool", False],
            ["snd/snd_Lfo", False],
            ["snd/snd_McsSoundArchive", False],
            ["snd/snd_MemorySoundArchive", False],
            ["snd/snd_MidiSeqPlayer", False],
            ["snd/snd_MmlParser", False],
            ["snd/snd_MmlSeqTrack", False],
            ["snd/snd_MmlSeqTrackAllocator", False],
            ["snd/snd_PlayerHeap", False],
            ["snd/snd_RemoteSpeaker", False],
            ["snd/snd_RemoteSpeakerManager", False],
            ["snd/snd_SeqFile", False],
            ["snd/snd_SeqPlayer", False],
            ["snd/snd_SeqSound", False],
            ["snd/snd_SeqSoundHandle", False],
            ["snd/snd_SeqTrack", False],
            ["snd/snd_SoundArchive", False],
            ["snd/snd_SoundArchiveFile", False],
            ["snd/snd_SoundArchivePlayer", False],
            ["snd/snd_SoundHandle", False],
            ["snd/snd_SoundPlayer", False],
            ["snd/snd_SoundStartable", False],
            ["snd/snd_SoundSystem", False],
            ["snd/snd_SoundThread", False],
            ["snd/snd_StrmChannel", False],
            ["snd/snd_StrmFile", False],
            ["snd/snd_StrmPlayer", False],
            ["snd/snd_StrmSound", False],
            ["snd/snd_StrmSoundHandle", False],
            ["snd/snd_Task", False],
            ["snd/snd_TaskManager", False],
            ["snd/snd_TaskThread", False],
            ["snd/snd_Voice", False],
            ["snd/snd_VoiceManager", False],
            ["snd/snd_Util", False],
            ["snd/snd_WaveFile", False],
            ["snd/snd_WaveSound", False],
            ["snd/snd_WaveSoundHandle", False],
            ["snd/snd_WsdFile", False],
            ["snd/snd_WsdPlayer", False],
            ["snd/snd_adpcm", True],
        ],
    },
    {
        "lib": "libnw4r_ut",
        "mw_console": "GC",
        "mw_version": "3.0",
        "root_dir": "libs/nw4r",
        "cflags": "$cflags_nw4r",
        "host": False,
        "objects": [
            ["ut/ut_LinkList", True],
            ["ut/ut_binaryFileFormat", True],
            ["ut/ut_CharStrmReader", True],
            ["ut/ut_TagProcessorBase", True],
            ["ut/ut_IOStream", True],
            ["ut/ut_FileStream", True],
            ["ut/ut_DvdFileStream", False],
            ["ut/ut_LockedCache", True],
            ["ut/ut_Font", True],
            ["ut/ut_ResFontBase", False],
            ["ut/ut_ResFont", True],
            ["ut/ut_ArchiveFontBase", False],
            ["ut/ut_PackedFont", False],
            ["ut/ut_CharWriter", False],
            ["ut/ut_TextWriterBase", False],
        ],
    },
    {
        "lib": "monolib",
        "mw_console": "Wii",
        "mw_version": "1.1",
        "root_dir": "libs/monolib",
        "cflags": "$cflags_base -ipa file -inline auto -str pool,readonly,reuse -RTTI on -enc SJIS",
        "host": True,
        "objects": [
            ["CAttrTransform", False],
            ["MemManager", False],
            ["CPathUtil", False],
            ["MTRand", True],
            ["CRect16", True],
            ["CVec3", True],
            ["CVec4", True],
            ["FastCast", True],
            ["MathConstants", True],
            ["Random", True],
            ["FloatUtils", True],
            ["CCol3", True],
            ["CCol4", True],
            ["CMat34", False],
            ["CMat44", True],
            ["CQuat", False],
            ["work/CWorkThread", False],
            ["CProc", False],
            ["CProcRoot", False],
            ["CRsrcData", False],
            ["CScriptCode", False],
            ["CToken", False],
            ["CRootProc", False],
            ["CView", False],
            ["CViewFrame", False],
            ["CViewRoot", False],
            ["work/CWorkControl", False],
            ["work/CWorkFlowSetup", False],
            ["work/CWorkRoot", False],
            ["work/CWorkSystem", False],
            ["work/CWorkSystemMem", False],
            ["CProcess", False],
            ["CDoubleListNode", False],
            ["CChildListNode", False],
            ["device/CDeviceRemotePad", False],
            ["device/CDeviceBase", False],
            ["device/CDeviceSC", True],
            ["device/CDeviceVI", False],
			["device/CDeviceVICb", True],
            ["CFontLayer", False],
            ["CGXCache", False],
            ["device/CDevice", False],
            ["device/CDeviceClock", False],
            ["device/CDeviceFile", False],
            ["device/CDeviceFileCri", False],
            ["code_80450B14", True],
            ["device/code_80450B2C", False],
            ["device/CDeviceFileDvd", False],
            ["device/CDeviceFileJob", False],
            ["device/CDeviceFileJobReadDvd", False],
            ["device/CDeviceFont", False],
            ["device/CDeviceFontInfoExt", False],
            ["device/CDeviceFontInfoRom", False],
            ["device/CDeviceFontLayer", False],
            ["device/CDeviceFontLoader", False],
            ["device/CDeviceGX", False],
            ["CDesktop", False],
            ["code_80456134", False],
            ["CException", False],
            ["lib/CLib", False],
            ["lib/CLibCri", False],
            ["lib/CLibCriMoviePlay", False],
            ["lib/CLibCriStreamingPlay", False],
            ["lib/CLibG3d", False],
            ["lib/CLibHbm", False],
            ["lib/CLibHbmControl", False],
            ["lib/CLibLayout", False],
            ["lib/CLibStaticData", False],
            ["lib/CLibVM", False],
            ["CTaskLOD", False],
            ["code_8046376C", False],
            ["code_804645CC", False],
            ["code_80468434", False],
            ["code_8046A530", False],
            ["LOD/LODMemMan", False],
            ["mpfsys/MPFDrawDisplayList", False],
            ["mpfsys/MPFDrawMdlNoColor", False],
            ["mpfsys/MPFDrawMdlColor", False],
            ["mpfsys/MPFDrawBillboard", False],
            ["mpfsys/MPFDrawCross", False],
            ["mpfsys/MPFDrawBillLayTex", False],
            ["mpfsys/code_8047BB54", False],
            ["code_8047CA88", False],
            ["code_8047D2AC", False],
            ["scn/CScnItemCameraNw4r", False],
            ["scn/CScnItemId", False],
            ["scn/CScnItemLight", False],
            ["scn/CScnItemLightNw4r", False],
            ["scn/CScnItemModel", False],
            ["scn/CScnItemModelNw4r", False],
            ["scn/CScnItemPool", False],
            ["scn/CScnLightMan", False],
            ["scn/CScnMaruShadowNw4r", False],
            ["scn/CScnMem", False],
            ["scn/CScnRoot", False],
            ["scn/CScnRootNw4r", False],
            ["scn/CScnTexWorkMan", False],
            ["scn/CScnVirtualLight", False],
            ["code_8049431C", False],
            ["CVirtualLightAmb", False],
            ["CVirtualLightDir", False],
            ["CVirtualLightObj", False],
            ["scn/CScn", False],
            ["scn/CScn_80496B0C", False],
            ["scn/CScnBlend", False],
            ["scn/CScnBloom", False],
            ["scn/CScnCameraMan", False],
            ["scn/CScnEffectActNw4r", False],
            ["scn/CScnFadeMan", False],
            ["scn/CScnFilter", False],
            ["scn/CScnFilterMan", False],
            ["scn/CScnFogMan", False],
            ["scn/CScnFrame", False],
            ["scn/CScnIdMan", False],
            ["scn/CScnItemAnim", False],
            ["scn/CScnItemCamera", False],
            ["vm/yvm", False],
            ["code_804A6C60", False],
            ["CColiProc", False],
            ["code_804B2FF0", False],
            ["code_804B59C8", False],
            ["code_804BAE10", False],
            ["code_804BC9EC", False],
            ["code_804BD8E8", False],
            ["code_804BF59C", False],
            ["CLight", False],
            ["scn/CScnEnvLgtCtrl", False],
            ["Unknown1", True],
            ["code_804C8684", False],
            ["code_804C8718", False],
            ["code_804CC2B8", False],
            ["effect/CETrail", False],
            ["effect/code_804D854C", False],
            ["work/CWorkSystemCache", False],
            ["code_804D9274", False],
            ["nand/CNand", False],
            ["nand/CNReqtaskSave", False],
            ["nand/CNReqtaskLoad", False],
            ["nand/CNReqtaskReaddir", False],
            ["nand/CNReqtaskRemove", False],
            ["nand/CNReqtaskCheck", False],
            ["effect/CERand", True],
            ["code_804DB938", False],
            ["work/CWorkSystemPack", False],
            ["CPackItem", False],
            ["CArcItem", False],
            ["code_804DEDA8", False],
            ["CSchedule", False],
            ["code_804E36DC", False],
            ["ScheduleList", False],
            ["scn/CMdlMaterial", False],
            ["scn/CMdlMouth", False],
            ["scn/CMdlAnmUV", False],
            ["scn/CMdlAnmEye", False],
            ["scn/CMdlLook", False],
            ["scn/CMdlDynamics", False],
            ["code_804EE0F4", False],
            ["code_804F0258", False],
            ["nand/CNReqtaskSaveBanner", False],
            ["nand/CNBanner", False],
        ],
    },
]

def main():
    import os
    import io
    import sys
    import argparse
    import json

    from pathlib import Path
    from shutil import which
    from tools import ninja_syntax

    if sys.version_info < (3, 8):
        sys.exit("Python 3.8 or later required.")

    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--version",
        "-v",
        dest="version",
        default="jp",
        help="version to build (jp)",
    )
    parser.add_argument(
        "--map",
        "-m",
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
        "--powerpc",
        dest="powerpc",
        type=Path,
        default=Path("tools/powerpc"),
        help="path to powerpc-eabi tools",
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
        "-d",
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
    parser.add_argument(
        "--context",
        "-c",
        dest="context",
        action="store_true",
        help="generate context files for decomp.me",
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

    cflags_base = f"-proc gekko -nodefaults -fp hard -O4,p -enum int -use_lmw_stmw on -sdata 8 -sdata2 8 -func_align 4 -I- -i include/ -i libs/RVL_SDK/include/ -i libs/PowerPC_EABI_Support/include/stl -i libs/nw4r/include/ -i libs/monolib/include/ -i src/ -i libs/NdevExi2A/include/ -i libs/PowerPC_EABI_Support/include/"
    if args.debug:
        cflags_base += " -sym on -D_DEBUG"
    else:
        cflags_base += " -DNDEBUG -w off"
    cflags_base += " -lang=c99" #TODO: add c99 lang flag on per lib basis
    n.variable("cflags_base", cflags_base)
    n.variable("cflags_criware", "$cflags_base -sdata 0 -sdata2 0 -Cpp_exceptions off -i libs/CriWare/src/")
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

    mw_link_console = "Wii"
    mw_link_version = "1.1"
    n.variable("mw_console", mw_link_console)
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
    tools_path = Path("tools")

    def path(input):
        if input is None:
            return None
        elif isinstance(input, list):
            return list(map(str, input))
        else:
            return [str(input)]

    n.comment("decomp-toolkit")
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

    # FIXME: Manual downloads because ninja doesn't play nice with directories,
    # replace with automated system like dtk uses if workaround is found
    if args.powerpc == Path("tools/powerpc") and not Path("tools/powerpc").exists():
        import tools.download_ppc

        tools.download_ppc.main()

    if args.compilers == Path("tools/mwcc_compiler") and not Path("tools/mwcc_compiler").exists():
        import tools.download_mwcc

        tools.download_mwcc.main()

    ###
    # Rules
    ###
    compiler_path = args.compilers / "$mw_console" / "$mw_version"
    mwcc = compiler_path / "mwcceppc.exe"
    mwld = compiler_path / "mwldeppc.exe"
    gnu_as = args.powerpc / f"powerpc-eabi-as{exe}"

    mwcc_cmd = f"{chain}{wine}{mwcc} $cflags -MMD -c $in -o $basedir"
    if args.context:
        mwcc_cmd += " && $python tools/decompctx.py $cfile -r -q"
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
    build_host_path = build_path / "host"
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
        
        root_dir = lib["root_dir"]
        src_path = Path(root_dir) / Path("src")
        asm_path = Path(root_dir) / Path("asm")
        build_src_path = build_path / src_path
        build_asm_path = build_path / asm_path

        for object in lib["objects"]:
            completed = False
            options = {
                "add_to_all": True,
                "mw_console": None,
                "mw_version": None,
                "root_dir": None,
                "cflags": None,
            }
            if type(object) is list:
                if len(object) > 1:
                    completed = object[1]
                if len(object) > 2:
                    options.update(object[2])
                object = object[0]

            cflags = options["cflags"] or lib["cflags"]
            mw_console = options["mw_console"] or lib["mw_console"]
            mw_version = options["mw_version"] or lib["mw_version"]
            used_compiler_versions.add((mw_console, mw_version))

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
            elif os.path.exists(src_path / f"{object}.s"): # specifically for __exception.s
                n.build(
                    outputs=path(build_src_path / f"{object}.o"),
                    rule="as",
                    inputs=path(src_path / f"{object}.s"),
                    implicit=path(dtk),
                )
            if c_file is not None:
                n.build(
                    outputs=path(build_src_path / f"{object}.o"),
                    rule="mwcc",
                    inputs=path(c_file),
                    variables={
                        "mw_console": mw_console,
                        "mw_version": mw_version,
                        "cflags": options["cflags"] or lib["cflags"],
                        "basedir": os.path.dirname(build_src_path / f"{object}"),
                        "basefile": path(build_src_path / f"{object}"),
                        "cfile": path(c_file),
                    },
                    implicit_outputs = None if not args.context else (str(c_file) + ".ctx")
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
    for (mw_console, mw_version) in used_compiler_versions:
        mw_path = args.compilers / mw_console / mw_version / "mwcceppc.exe"
        if not os.path.exists(mw_path):
            print(f"Compiler {mw_path} does not exist")
            exit(1)

    # Check if linker exists
    mw_path = args.compilers / mw_link_console / mw_link_version / "mwldeppc.exe"
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

if __name__ == "__main__":
    main()
