.include "macros.inc"

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_804F6BE8
lbl_804F6BE8:
	.asciz "cf::CfTaskMain"
	.balign 4

.global lbl_804F6BF8
lbl_804F6BF8:
	.asciz "CTTask<cf::CfTaskMain>"
	.balign 4

.global lbl_804F6C10
lbl_804F6C10:
	.asciz "cf::CfTFile"


.global lbl_804F6C1C
lbl_804F6C1C:
	.asciz "script/%02d%02d.t"
	.balign 4


.global lbl_804F6C30
lbl_804F6C30:
	.asciz "morning_h"
	.asciz "morning_m"
	.asciz "daytime_h"
	.asciz "daytime_m"
	.asciz "evening_h"
	.asciz "evening_m"
	.asciz "night_h"
	.asciz "night_m"
	.4byte 0

.global lbl_804F6C80
lbl_804F6C80:
	.asciz "cf::CfCamEvent"
	.balign 4

.global lbl_804F6C90
lbl_804F6C90:
	.asciz "cf::CfCamTargetIntf"

.global lbl_804F6CA4
lbl_804F6CA4:
	.asciz "cf::CfCamLookatIntf"

.global lbl_804F6CB8
lbl_804F6CB8:
	.asciz "cf::CfCamDirectionIntf"
	.balign 4

.global lbl_804F6CD0
lbl_804F6CD0:
	.asciz "cf::CfCamIntf"
	.balign 4

.global lbl_804F6CE0
lbl_804F6CE0:
	.asciz "cf::CfCamFollow"

.global lbl_804F6CF0
lbl_804F6CF0:
	.asciz "cf::CfCam"
	.balign 4
	.4byte 0


.global lbl_804F6D00
lbl_804F6D00:
	.asciz "opt_camlist"
	.asciz "at"
	.asciz "pitch"
	.asciz "CROSS WATER"
	.asciz "WATER AT"
	#observation point unregistered?
	#"注視点潜り\n"
	.byte 0x92, 0x8D
	.4byte 0x8E8B935F
	.4byte 0x90F682E8
	.2byte 0x0A00
	#water priority 
	#"water優先 wa:%.3f map:%.3f %.2f %.2f\n"
	.byte 0x77
	.4byte 0x61746572
	.4byte 0x974490E6
	.asciz " wa:%.3f map:%.3f %.2f %.2f\n"
	.asciz "blend:%.2f l:%.2f"
	.asciz "water:%.2f y:%.3f"
	.asciz "blend:%.2f %.1f"
	#cliff correction?
	#"崖補正:%d"
	.4byte 0x8A5295E2
	.4byte 0x90B33A25
	.2byte 0x6400
	.asciz "water"
	.asciz "[%.2f %.2f %.2f] [%.2f %.2f %.2f] l:%.3f %.3f"
	#last obstacle
	#"前障害物%d[%.2f %.2f %.2f] nml:%d pos[%.2f %.2f %.2f]"
	.2byte 0x914F
	.4byte 0x8FE18A51
	.2byte 0x95A8
	.asciz "%d[%.2f %.2f %.2f] nml:%d pos[%.2f %.2f %.2f]"
	.asciz "WALL [%.2f %.2f %.2f]"
	#ground correction
	#"地面補正 ny:%.2f gy:%.2f wy:%.2f"
	.byte 0x92, 0x6E
	.4byte 0x96CA95E2
	.2byte 0x90B3
	.asciz " ny:%.2f gy:%.2f wy:%.2f"
	.balign 4
	.4byte 0


.global lbl_804F6E40
lbl_804F6E40:
	.asciz "camType"
	.asciz "enemy_size"
	.asciz "range"
	.asciz "cammove"
	.asciz "camATR"
	.asciz "coltype"
	.asciz "time"
	.asciz "path"
	.asciz "s_ofspostype"
	.asciz "s_ofslooktype"
	.asciz "e_ofspostype"
	.asciz "e_ofslooktype"
	.asciz "s_fov"
	.asciz "e_fov"
	.asciz "s_posz"
	.asciz "s_posy"
	.asciz "s_posx"
	.asciz "s_lookz"
	.asciz "s_looky"
	.asciz "s_lookx"
	.asciz "e_posz"
	.asciz "e_posy"
	.asciz "e_posx"
	.asciz "e_lookz"
	.asciz "e_looky"
	.asciz "e_lookx"
	.asciz "shakePOW"
	.asciz "shakeStart"
	.asciz "shakeTIME"
	.asciz "pos1X"
	.asciz "pos1Y"
	.asciz "pos1Z"
	.asciz "look1X"
	.asciz "look1Y"
	.asciz "look1Z"
	.asciz "shake1Type"
	.asciz "shake1Stime"
	.asciz "shake1Etime"
	.asciz "collision"
	.asciz "startCutChange"
	.asciz "startFrame"
	.asciz "pos%dX"
	.asciz "pos%dY"
	.asciz "pos%dZ"
	.asciz "look%dX"
	.asciz "look%dY"
	.asciz "look%dZ"
	.asciz "fov%d"
	.asciz "cam%dTime"
	.asciz "shake%dType"
	.asciz "shake%dStime"
	.asciz "shake%dEtime"
	.asciz "endCutChange"
	.asciz "resetFrame"
	.balign 4
	
.global lbl_804F7020
lbl_804F7020:
	.4byte 0xFF010203
	.4byte 0x04050602
	.4byte 0x01FF0708
	.4byte 0x090A0B07
	.4byte 0x0207FF0C
	.4byte 0x0D0E0FFF
	.4byte 0x03080CFF
	.4byte 0x1011120C
	.4byte 0x04090D10
	.4byte 0xFF13140D
	.4byte 0x050A0E11
	.4byte 0x13FF150E
	.4byte 0x060B0F12
	.4byte 0x1415FF0F
	.4byte 0x0207FF0C
	.4byte 0x0D0E0FFF

.global lbl_804F7060
lbl_804F7060:
	.asciz "cf::IObjectInfo"

.global lbl_804F7070
lbl_804F7070:
	.asciz "cf::CfObjectImpl"
	.balign 4

.global lbl_804F7084
lbl_804F7084:
	.asciz "IActParamEvent"
	.balign 4


.global lbl_804F7094
lbl_804F7094:
	.asciz "bgmlist"
	.asciz "file_name"
	.asciz "e%02d_loop"
	.asciz "b%02d_loop"
	.asciz "def_head"
	.asciz "def_body"
	.asciz "def_arm"
	.asciz "def_waist"
	.asciz "def_legg"
	.asciz "def_wpn"
	.asciz "%s_%02d"
	.asciz "%02d%02df"
	.asciz "BTL_pclist"
	.asciz "def_mount"
	.asciz "resource"
	.asciz "%s%02d%02d"
	.asciz "poplist%02d%02d"
	.asciz "ma%02d%02d"
	.asciz "mapID"
	.asciz "rlt_lnd"
	.asciz "jump_posX"
	.asciz "jump_posY"
	.asciz "jump_posZ"
	.asciz "jump_rotY"
	.asciz "/ev/realtime/%s.rev"
	.asciz "category"
	.asciz "posX"
	.asciz "posY"
	.asciz "posZ"
	.asciz "areaR"
	.asciz "areaY"
	.asciz "areaX"
	.asciz "areaZ"
	.asciz "rotY"
	.2byte 0x0000
	
.global lbl_804F71C8
lbl_804F71C8:
	.asciz "cf::CtrlEnemy"
	.balign 4

.global lbl_804F71D8
lbl_804F71D8:
	.asciz "cf::CtrlAct"

.global lbl_804F71E4
lbl_804F71E4:
	.asciz "cf::CtrlBase"
	.balign 4

.global lbl_804F71F4
lbl_804F71F4:
	.asciz "CActInput"
	.balign 4

.global lbl_804F7200
lbl_804F7200:
	.asciz "cf::CtrlMoveBase"
	.balign 4

.global lbl_804F7214
lbl_804F7214:
	.asciz "cf::CtrlEneAiCall"
	.balign 4

.global lbl_804F7228
lbl_804F7228:
	.asciz "CColiProc"
	.balign 4
	.4byte 0


.global lbl_804F7238
lbl_804F7238:
	# ROM: 0x4F3338
	.4byte 0x44C80000
	.4byte 0x461C4000
	.4byte 0x45610000
	.4byte 0

.global lbl_804F7248
lbl_804F7248:
	.asciz "cf::CtrlMoveEne"


.global lbl_804F7258
lbl_804F7258:
	.asciz "move_type"
	.asciz "rndwalkR"
	.asciz "routeID"
	.asciz "p_type"
	.asciz "posX"
	.asciz "posY"
	.asciz "posZ"
	.asciz "line_type"
	.asciz "wait_time"
	.asciz "pat_time"
	.asciz "patR"
	.asciz "snap"
	.asciz "pop_type"
	.asciz "posATR"
	.asciz "avoid"
	.balign 4

.global lbl_804F72C8
lbl_804F72C8:
	.asciz "autotalk1"
	.balign 4

.global lbl_804F72D4
lbl_804F72D4:
	.asciz "autotalk2"
	.balign 4

.global lbl_804F72E0
lbl_804F72E0:
	.asciz "autotalk3"
	.balign 4

.global lbl_804F72EC
lbl_804F72EC:
	.asciz "autotalk4"
	.balign 4

.global lbl_804F72F8
lbl_804F72F8:
	.asciz "autotalk5"
	.balign 4

.global lbl_804F7304
lbl_804F7304:
	.asciz "autotalk6"
	.balign 4

.global lbl_804F7310
lbl_804F7310:
	.asciz "OCLOCK_0"
	.balign 4

.global lbl_804F731C
lbl_804F731C:
	.asciz "OCLOCK_3"
	.balign 4

.global lbl_804F7328
lbl_804F7328:
	.asciz "OCLOCK_6"
	.balign 4

.global lbl_804F7334
lbl_804F7334:
	.asciz "OCLOCK_9"
	.balign 4

.global lbl_804F7340
lbl_804F7340:
	.asciz "OCLOCK_12"
	.balign 4

.global lbl_804F734C
lbl_804F734C:
	.asciz "OCLOCK_15"
	.balign 4

.global lbl_804F7358
lbl_804F7358:
	.asciz "OCLOCK_18"
	.balign 4

.global lbl_804F7364
lbl_804F7364:
	.asciz "OCLOCK_21"
	.balign 4

.global lbl_804F7370
lbl_804F7370:
	.asciz "cf::CtrlNpc"


.global lbl_804F737C
lbl_804F737C:
	.asciz "JUhead"
	.asciz "FLD_npclist"
	.asciz "autotalklist%02d%02d"
	.asciz "scenario_s"
	.asciz "scenario_e"
	.asciz "quest_no"
	.asciz "relate_no"
	.asciz "relate"
	.asciz "select_no"
	.asciz "select"
	.asciz "popular_no"
	.asciz "popular"
	.asciz "npcmeet_no"
	.asciz "col6_h_no"
	.asciz "col6_h"
	.asciz "col6_k_no"
	.asciz "col6_k"
	.asciz "auto_mes"
	.asciz "no name"
	.balign 4

.global lbl_804F7438
lbl_804F7438:
	.asciz "cf::CtrlPad"

.global lbl_804F7444
lbl_804F7444:
	.asciz "cf::CtrlRemote"
	.balign 4

.global lbl_804F7454
lbl_804F7454:
	.asciz "cf::CtrlPc"
	.balign 4

.global lbl_804F7460
lbl_804F7460:
	.asciz "cf::CfObjectImplPc"
	.balign 4

.global lbl_804F7474
lbl_804F7474:
	.asciz "cf::CfObjectImplMove"
	.balign 4
	.4byte 0


.global lbl_804F7490
lbl_804F7490:
	.asciz "1.2.3"
	.balign 4

.global lbl_804F7498
lbl_804F7498:
	.asciz "str_lv99"
	.balign 4

.global lbl_804F74A4
lbl_804F74A4:
	.asciz "agi_lv99"
	.balign 4

.global lbl_804F74B0
lbl_804F74B0:
	.asciz "eth_lv99"
	.balign 4
	.4byte 0

.global lbl_804F74C0
lbl_804F74C0:
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0
	.4byte 0x00000007

.global lbl_804F74E0
lbl_804F74E0:
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007

.global lbl_804F7500
lbl_804F7500:
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0
	.4byte 0x00000007


.global lbl_804F7520
lbl_804F7520:
	.asciz "flag"
	.asciz "hit_range_near"
	.asciz "hit_range_far"
	.asciz "dmg_low"
	.asciz "dmg_hi"
	.asciz "att_lev"
	.asciz "speed"
	.asciz "grd_rate"
	.asciz "arm_phy"
	.asciz "arm_eth"
	.asciz "wpn_type"
	.asciz "elem"
	.asciz "arm_type"
	.asciz "eva_rate"
	.asciz "BTL_pclist"
	.asciz "lv"
	.asciz "name"
	.asciz "chest_height"
	.asciz "icon_type"
	.asciz "tp_atk"
	.asciz "tp_arts"
	.asciz "tp_atkdmg"
	.asciz "tp_artsdmg"
	.asciz "ts_high"
	.asciz "ts_nrm"
	.asciz "ts_low"
	.asciz "guest"
	.asciz "hp"
	.asciz "str"
	.asciz "agi"
	.asciz "eth"
	.asciz "dbl_atk"
	.asciz "cnt_atk"
	.asciz "pc_arts"
	.asciz "idx"
	.asciz "cast"
	.asciz "recast"
	.asciz "tp"
	.asciz "dex"
	.asciz "rate1"
	.asciz "rate2"
	.asciz "arts_type"
	.asciz "atk_type"
	.asciz "chain_type"
	.asciz "dmg_type"
	.asciz "dmg_time"
	.asciz "hate"
	.asciz "kb_type"
	.asciz "kb_lv"
	.asciz "tgt"
	.asciz "range_type"
	.asciz "range"
	.asciz "range_val"
	.asciz "help"
	.asciz "st_type"
	.asciz "st_val"
	.asciz "st_val2"
	.asciz "st_time"
	.asciz "st_itv"
	.asciz "sp_cnd"
	.asciz "sp_proc"
	.asciz "sp_val1"
	.asciz "sp_val2"
	.asciz "grow_powl"
	.asciz "grow_powh"
	.asciz "grow_st_time"
	.asciz "grow_st_val"
	.asciz "glow_recast"
	.asciz "icon"
	.asciz "icon_base"
	.asciz "act_idx"
	.asciz "atk1"
	.asciz "atk2"
	.asciz "atk3"
	.asciz "pc_atk"
	.asciz "rate"
	.asciz "get_type"
	.asciz "get_lv"
	.asciz "pc"
	.asciz "en_exp"
	.asciz "en_ap"
	.asciz "level_exp"
	.asciz "point_PP"
	.asciz "rvs_status"
	.asciz "atr_type"
	.asciz "max"
	.asciz "val_type"
	.asciz "accum"
	.asciz "attach"
	.4byte 0
.global lbl_804F77C8
lbl_804F77C8:
	.asciz "KEY:%d"
	.balign 4


.global lbl_804F77D0
lbl_804F77D0:
	.asciz "CF_MEM1"
	.asciz "CF_MEM2"
	.asciz "CF_BDAT"

.global lbl_804F77E8
lbl_804F77E8:
	.asciz "eff/rec/er/"

.global lbl_804F77F4
lbl_804F77F4:
	.asciz "eff/rec/ep/"

.global lbl_804F7800
lbl_804F7800:
	.asciz "eff/rec/en/"

.global lbl_804F780C
lbl_804F780C:
	.asciz "eff/rec/el/"

.global lbl_804F7818
lbl_804F7818:
	.asciz "snd/se/pc/"
	.balign 4

.global lbl_804F7824
lbl_804F7824:
	.asciz "snd/bgm/fl/"

.global lbl_804F7830
lbl_804F7830:
	.asciz "snd/bgm/ve/"

.global lbl_804F783C
lbl_804F783C:
	.asciz "snd/bgm/bt/"

.global lbl_804F7848
lbl_804F7848:
	.asciz "snd/bgm/dn/"

.global lbl_804F7854
lbl_804F7854:
	.asciz "snd/bgm/tw/"

.global lbl_804F7860
lbl_804F7860:
	.asciz "script/vs/"
	.balign 4


.global lbl_804F786C
lbl_804F786C:
	.asciz "%02d%02d%02d"
	.asciz "%03d"
	.asciz "%02d"
	.asciz "%03d%03d"
	.asciz "%02d%03d%03d"
	.asciz "%02d%03d"
	.asciz "%02d%02d"
	.balign 4
	.4byte 0

.global lbl_804F78B0
lbl_804F78B0:
	.asciz "cf::CfObjectColl"
	.balign 4

.global lbl_804F78C4
lbl_804F78C4:
	.asciz "cf::CfCollCapsuleImpl"
	.balign 4

.global lbl_804F78DC
lbl_804F78DC:
	.asciz "cf::CfCollCylinderImpl"
	.balign 4

.global lbl_804F78F4
lbl_804F78F4:
	.asciz "cf::CfCollAABBImpl"
	.balign 4

.global lbl_804F7908
lbl_804F7908:
	.asciz "cf::CfCollSphereImpl"
	.balign 4

.global lbl_804F7920
lbl_804F7920:
	.asciz "cf::CfCollCircleImpl"
	.balign 4

.global lbl_804F7938
lbl_804F7938:
	.asciz "cf::CfCollImpl"
	.balign 4

.global lbl_804F7948
lbl_804F7948:
	.asciz "cf::CfObjectPoint"
	.balign 4


.global lbl_804F795C
lbl_804F795C:
	.asciz "%02d%02df"
	.asciz "%s"
	.4byte 0
	.byte 0x00, 0x00, 0x00
.global lbl_804F7970
lbl_804F7970:
	.asciz "ene1Scale"
	.balign 4
	.4byte 0

.global lbl_804F7980
lbl_804F7980:
	.asciz "cf::CfObjectEne"


.global lbl_804F7990
lbl_804F7990:
	.asciz "name"
	.asciz "size"
	.asciz "scale"
	.asciz "family"
	.asciz "named"
	.asciz "flag"
	.asciz "move_speed"
	.asciz "run_speed"
	.asciz "detects"
	.asciz "assist"
	.asciz "search_range"
	.asciz "search_angle"
	.asciz "faint_grd"
	.asciz "down_grd"
	.asciz "elem_tol_dir"
	.asciz "anti_state"
	.asciz "resi_state"
	.asciz "front_angle"
	.asciz "lv"
	.asciz "hp"
	.asciz "str"
	.asciz "agi"
	.asciz "eth"
	.asciz "delay"
	.asciz "hit_range_near"
	.asciz "hit_range_far"
	.asciz "dbl_atk"
	.asciz "cnt_atk"
	.asciz "elem_phx"
	.asciz "elem_eth"
	.asciz "elem_tol"
	.asciz "Lv_up_hp"
	.asciz "Lv_up_str"
	.asciz "Lv_up_agi"
	.asciz "Lv_up_eth"
	.asciz "ene_type"
	.asciz "en_exp"
	.asciz "en_ap"
	.asciz "exp"
	.asciz "spike_elem"
	.asciz "spike_type"
	.asciz "spike_range"
	.asciz "spike_dmg"
	.asciz "spike_state"
	.asciz "spike_state_val"
	.asciz "limit"
	.asciz "drop_vlb"
	.asciz "chest_height"
	.asciz "arts1"
	.asciz "arts2"
	.asciz "arts3"
	.asciz "arts4"
	.asciz "arts5"
	.asciz "arts6"
	.asciz "arts7"
	.asciz "arts8"
	.asciz "ene_arts"
	.asciz "cast"
	.asciz "recast"
	.asciz "tp"
	.asciz "dex"
	.asciz "rate1"
	.asciz "rate2"
	.asciz "arts_type"
	.asciz "atk_type"
	.asciz "elem"
	.asciz "dmg_type"
	.asciz "dmg_time"
	.asciz "kb_type"
	.asciz "kb_lv"
	.asciz "tgt"
	.asciz "range_type"
	.asciz "range"
	.asciz "range_val"
	.asciz "act_idx"
	.asciz "idx"
	.asciz "st_type"
	.asciz "st_val"
	.asciz "st_val2"
	.asciz "st_time"
	.asciz "st_itv"
	.asciz "sp_cnd"
	.asciz "sp_proc"
	.asciz "sp_val1"
	.asciz "sp_val2"
	.asciz "atk1"
	.asciz "atk2"
	.asciz "atk3"
	.asciz "ene_atk"
	.asciz "rate"
	.asciz "mat_no"
	.asciz "map"
	.asciz "interval"
	.asciz "dmg"
	.4byte 0
	.byte 0x00
.global lbl_804F7C70
lbl_804F7C70:
	.asciz "reslist<cf::IFactoryEvent *>"
	.balign 4

.global lbl_804F7C90
lbl_804F7C90:
	.asciz "_reslist_base<cf::IFactoryEvent *>"
	.balign 4

.global lbl_804F7CB4
lbl_804F7CB4:
	.asciz "reslist<cf::TboxInfo>"
	.balign 4

.global lbl_804F7CCC
lbl_804F7CCC:
	.asciz "_reslist_base<cf::TboxInfo>"

.global lbl_804F7CE8
lbl_804F7CE8:
	.asciz "reslist<cf::CfObject *>"


.global lbl_804F7D00
lbl_804F7D00:
	.asciz "ene_disp_r"
	.asciz "ene_release_h"
	.asciz "ene_release_r"
	.asciz "npc_release_r"
	.asciz "poptest"
	.byte 0x00
	.asciz "ene_type"
	.asciz "POP_TIME"

.global lbl_804F7D50
lbl_804F7D50:
	.asciz "cf::CfObjectMap"


.global lbl_804F7D60
lbl_804F7D60:
	.asciz ".lod"
	.asciz "mapATR"
	.4byte 0


.global lbl_804F7D70
lbl_804F7D70:
	# ROM: 0x4F3E70
	.4byte 0x006D6F76
	.4byte 0x65000000


.global lbl_804F7D78
lbl_804F7D78:
	.asciz "mapATR"
	.asciz "def_mount"
	.asciz "bat_mount"
	.balign 4
	.4byte 0

.global lbl_804F7D98
lbl_804F7D98:
	.asciz "cf::CfObjectNpc"


.global lbl_804F7DA8
lbl_804F7DA8:
	.asciz "JUhead"
	.asciz "name"
	.asciz "move_speed"
	.asciz "scale"
	.asciz "icon_type"
	.asciz "rlt_meet"

.global lbl_804F7DD8
lbl_804F7DD8:
	.asciz "cf::CfObjectTbox"
	.balign 4
	.4byte 0

.global lbl_804F7DF0
lbl_804F7DF0:
	.asciz "cf::CfObjectObj"

.global lbl_804F7E00
lbl_804F7E00:
	.4byte 0x0014000A
	.4byte 0x0000000A
	.4byte 0x00140000


.global lbl_804F7E0C
lbl_804F7E0C:
	.asciz "tp_atk"
	.asciz "tp_arts"
	.asciz "tp_atkdmg"
	.asciz "tp_artsdmg"
	.asciz "wpn_type"
	.asciz "JUhead"
	.asciz "level_exp"
	.asciz "mat_no"
	.asciz "map"
	.asciz "interval"
	.asciz "dmg"
	.2byte 0
	.4byte 0


.global lbl_804F7E68
lbl_804F7E68:
	.asciz "name"
	.asciz "icon_type"
	.balign 4

.global lbl_804F7E78
lbl_804F7E78:
	.asciz "pctalk_01"
	.balign 4

.global lbl_804F7E84
lbl_804F7E84:
	.asciz "pctalk_02"
	.balign 4

.global lbl_804F7E90
lbl_804F7E90:
	.4byte lbl_804F7E78
	.4byte lbl_804F7E84
	.4byte lbl_804F7E84

.global lbl_804F7E9C
lbl_804F7E9C:
	.asciz "cf::CfObjectImplWalker"
	.balign 4


.global lbl_804F7EB4
lbl_804F7EB4:
	.asciz "JUhead"
	.asciz "type"
	.asciz "server"
	.asciz "message"
	.asciz "receiver"
	.asciz "low_receiver"
	.asciz "high_receiver"
	.asciz "high_server"
	.asciz "exc_talk_id"
	.asciz "exc_talk1"
	.asciz "<ex>"
	.asciz "exc_talk2"
	.asciz "exc_talk3"
	.asciz "present"
	.balign 4

.global lbl_804F7F38
lbl_804F7F38:
	.4byte 0x00000125
	.4byte 0x00000126
	.4byte 0x00000127
	.4byte 0x00000128
	.4byte 0x00000129
	.4byte 0x0000012A

.global lbl_804F7F50
lbl_804F7F50:
	.4byte 0
	.4byte 0x0000003D
	.4byte 0x0000003D
	.4byte 0x0000003D
	.4byte 0x0000003D
	.4byte 0x0000003D
	.4byte 0x0000003D
	.4byte 0x00000049
	.4byte 0x00000043
	.4byte 0


.global lbl_804F7F78
lbl_804F7F78:
	# ROM: 0x4F4078
	.byte 0x00
	.asciz "INPUT"
	.asciz "ENCO"
	.asciz "AWAKE"
	.asciz "HELP"
	.asciz "REVIVE"
	.asciz "REVIVE_ME"
	.asciz "REVIVE_END"
	.asciz "FISHING"
	.asciz "core"

.global lbl_804F7FB8
lbl_804F7FB8:
	.asciz "cf::CfObjectImplObj"
	.4byte 0


.global lbl_804F7FD0
lbl_804F7FD0:
	# ROM: 0x4F40D0
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3ECCCCCD
	.4byte 0x3DCCCCCD

.global lbl_804F7FF8
lbl_804F7FF8:
	.asciz "cf::CfObjectImplNpc"


.global lbl_804F800C
lbl_804F800C:
	.asciz "core"
	.balign 4
	.4byte 0

.global lbl_804F8018
lbl_804F8018:
	.asciz "cf::CfObjectImplEne"
	.4byte 0

.global lbl_804F8030
lbl_804F8030:
	.4byte 0x00000010
	.4byte 0x00100000
	.4byte 0x00200000


.global lbl_804F803C
lbl_804F803C:
	.asciz "JUhead"
	.balign 4
	.4byte 0


.global lbl_804F8048
lbl_804F8048:
	# ROM: 0x4F4148
	.4byte 0x00000003
	.4byte 0x00640000
	.4byte 0x00000032
	.4byte 0x00000003
	.4byte 0x00320000
	.4byte 0x00000032
	.4byte 0x00000003
	.4byte 0x00320001
	.4byte 0
	.4byte 0
	.4byte 0x00050000
	.4byte 0
	.4byte 0
	.4byte 0x000A0000
	.4byte 0
	.4byte 0
	.4byte 0x000A0000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000501
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00190501
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00190501
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00190501
	.4byte 0
	.4byte 0
	.4byte 0x00320000
	.4byte 0
	.4byte 0
	.4byte 0x00050000
	.4byte 0
	.4byte 0
	.4byte 0xFFE70000
	.4byte 0
	.4byte 0
	.4byte 0xFFE70000
	.4byte 0
	.4byte 0
	.4byte 0xFFF60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFF9C0000
	.4byte 0
	.4byte 0
	.4byte 0xFF380000
	.4byte 0
	.4byte 0
	.4byte 0xFF9C0000
	.4byte 0
	.4byte 0
	.4byte 0xFF9C0000
	.4byte 0
	.4byte 0
	.4byte 0xFFE70000
	.4byte 0
	.4byte 0
	.4byte 0xFFD80000
	.4byte 0
	.4byte 0x00000003
	.4byte 0x03E70000
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00640000
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00320000
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00190000
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00140000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x3DCCCCCD
	.float 0.2
	.4byte 0
	.4byte 0x0000003D
	.4byte 0x0000003D
	.4byte 0x0000003D
	.4byte 0x0000003D
	.4byte 0x0000003E
	.4byte 0x0000004D
	.4byte 0x0000003F
	.4byte 0x00000040
	.4byte 0x0000004E
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x0000004F
	.4byte 0x00000042
	.4byte 0x00000042
	.4byte 0x00000042
	.4byte 0x0000004C
	.4byte 0x0000004C
	.4byte 0x0000004C
	.4byte 0x00000044
	.4byte 0x00000044
	.4byte 0x00000044
	.4byte 0x00000046
	.4byte 0x00000046
	.4byte 0x00000046
	.4byte 0x0000004A
	.4byte 0x0000004A
	.4byte 0x0000004A
	.4byte 0x00000048
	.4byte 0x00000048
	.4byte 0x00000048


.global lbl_804F8228
lbl_804F8228:
	# ROM: 0x4F4328
	.4byte 0
	.4byte 0x000001AD
	.4byte 0x000001AA
	.4byte 0x000001B0
	.4byte 0x000001B6
	.4byte 0x000001BA
	.4byte 0x000001B5
	.4byte 0x000001B7
	.4byte 0x000001B8
	.4byte 0x000001B9
	.4byte 0xFFECFFF6
	.4byte 0x0000000F
	.4byte 0x001E0000


.global lbl_804F825C
lbl_804F825C:
	# ROM: 0x4F435C
	.4byte 0
	.4byte 0x000A000F
	.4byte 0x001E0000


.global lbl_804F8268
lbl_804F8268:
	# ROM: 0x4F4368
	.4byte 0
	.4byte 0
	.4byte 0x00000100
	.4byte 0x00000020
	.4byte 0x00000020
	.4byte 0x00000100
	.4byte 0x00000020
	.4byte 0x00000100
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000020
	.4byte 0x00000100
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.float 8.0
	.4byte 0x40800000
	.4byte 0x40000000
	.4byte 0
	.4byte 0
	.4byte 0x00000064
	.float 8.0
	.4byte 0x40800000
	.4byte 0x40000000

.global lbl_804F82F8
lbl_804F82F8:
	.4byte 0
	.4byte 0
	.4byte 0x00000064

.global lbl_804F8304
lbl_804F8304:
	.float 8.0
	.4byte 0x40800000
	.4byte 0x40000000

.global lbl_804F8310
lbl_804F8310:
	.4byte 0x00000050
	.4byte 0x0000003C
	.4byte 0x00000028
	.4byte 0x00000019
	.4byte 0x0000000A
	.4byte 0x00000058
	.4byte 0x00000059
	.4byte 0x0000005A
	.4byte 0x0000005B
	.4byte 0x0000005C
	.4byte 0x00000002
	.4byte 0x00000005
	.4byte 0x00000028
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000064
	.4byte 0x00000006
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x00000005
	.4byte 0x00000125
	.4byte 0x00000126
	.4byte 0x00000127
	.4byte 0x00000128
	.4byte 0x00000129
	.4byte 0x0000012A


	.asciz "cf::CfObjectEff"

.global lbl_804F8390
lbl_804F8390:
	.asciz "cf::CBattleManager"
	.balign 4

.global lbl_804F83A4
lbl_804F83A4:
	.asciz "reslist<cf::IBattleEvent *>"

.global lbl_804F83C0
lbl_804F83C0:
	.asciz "_reslist_base<cf::IBattleEvent *>"
	.balign 4

.global lbl_804F83E4
lbl_804F83E4:
	.asciz "reslist<cf::CfObjectActor *>"
	.balign 4

.global lbl_804F8404
lbl_804F8404:
	.asciz "_reslist_base<cf::CfObjectActor *>"
	.balign 4

.global lbl_804F8428
lbl_804F8428:
	.asciz "cf::CChainTime"
	.balign 4
	.asciz "cf::CfObjectModel"
	.balign 4
	.asciz "cf::CfObject"
	.balign 4
	.asciz "cf::CObjectParam"
	.balign 4
	.asciz "cf::CObjectState"
	.balign 4

.global lbl_804F8484
lbl_804F8484:
	.asciz "cf::IFactoryEvent"
	.balign 4


.global lbl_804F8498
lbl_804F8498:
	.asciz "Lv_up_str"
	.asciz "Lv_up_agi"
	.asciz "Lv_up_eth"
	.balign 4

.global lbl_804F84B8
lbl_804F84B8:
	.asciz "cf::CfObjEnumList"
	.balign 4

.global lbl_804F84CC
lbl_804F84CC:
	.asciz "cf::CfObjEnumList::OBJ_LIST"

.global lbl_804F84E8
lbl_804F84E8:
	.asciz "QSort<cf::CfObjEnumList::sObjInfo *, float>"

.global lbl_804F8514
lbl_804F8514:
	.asciz "fixvector<cf::CfObjEnumList::sObjInfo *, 384>"
	.balign 4

.global lbl_804F8544
lbl_804F8544:
	.asciz "move"
	.balign 4
	.4byte 0

.global lbl_804F8550
lbl_804F8550:
	.asciz "cf::CfObjectSelectorObj"

.global lbl_804F8568
lbl_804F8568:
	.asciz "/menu/MainMenu.arc"
	.balign 4


.global lbl_804F857C
lbl_804F857C:
	# ROM: 0x4F467C
	.4byte 0xFF40FF80
	.4byte 0xFFC00000
	.4byte 0x00400080
	.4byte 0x00C00000

.global lbl_804F858C
lbl_804F858C:
	.asciz "pic_icon02_01"
	.balign 4

.global lbl_804F859C
lbl_804F859C:
	.asciz "pic_icon02_02"
	.balign 4

.global lbl_804F85AC
lbl_804F85AC:
	.asciz "pic_icon02_03"
	.balign 4

.global lbl_804F85BC
lbl_804F85BC:
	.asciz "pic_icon03_01"
	.balign 4

.global lbl_804F85CC
lbl_804F85CC:
	.asciz "pic_icon03_02"
	.balign 4

.global lbl_804F85DC
lbl_804F85DC:
	.asciz "pic_icon05_01"
	.balign 4

.global lbl_804F85EC
lbl_804F85EC:
	.asciz "pic_icon05_02"
	.balign 4

.global lbl_804F85FC
lbl_804F85FC:
	.asciz "pic_icon05_03"
	.balign 4

.global lbl_804F860C
lbl_804F860C:
	.asciz "pic_icon05_04"
	.balign 4

.global lbl_804F861C
lbl_804F861C:
	.asciz "pic_icon06_01"
	.balign 4

.global lbl_804F862C
lbl_804F862C:
	.asciz "pic_icon06_02"
	.balign 4

.global lbl_804F863C
lbl_804F863C:
	.asciz "pic_icon07_01"
	.balign 4

.global lbl_804F864C
lbl_804F864C:
	.asciz "pic_icon07_02"
	.balign 4

.global lbl_804F865C
lbl_804F865C:
	.asciz "pic_icon07_03"
	.balign 4
	.4byte 0

.global lbl_804F8670
lbl_804F8670:
	.4byte lbl_804F858C
	.4byte lbl_804F859C
	.4byte lbl_804F85AC
	.4byte lbl_804F85BC
	.4byte lbl_804F85CC
	.4byte lbl_804F85DC
	.4byte lbl_804F85EC
	.4byte lbl_804F85FC
	.4byte lbl_804F860C
	.4byte lbl_804F861C
	.4byte lbl_804F862C
	.4byte lbl_804F863C
	.4byte lbl_804F864C
	.4byte lbl_804F865C

.global lbl_804F86A8
lbl_804F86A8:
	.asciz "CMainMenu"
	.balign 4

.global lbl_804F86B4
lbl_804F86B4:
	.asciz "CMainCur"
	.balign 4

.global lbl_804F86C0
lbl_804F86C0:
	.asciz "CBaseCur"
	.balign 4

.global lbl_804F86CC
lbl_804F86CC:
	.asciz "CTTask<IUICf>"
	.balign 4


.global lbl_804F86DC
lbl_804F86DC:
	.asciz "mf01_main21_cursor.brlyt"
	.asciz "mf01_main21_cursor_roop.brlan"
	.asciz "mf01_main21_cursor_on.brlan"
	.asciz "txt_cursor"
	.asciz "MNU_main"
	.asciz "name"
	.asciz "help"
	.asciz "txt_suject"
	.asciz "txt_helpmess"
	.byte 0x00
	.asciz "CMainMenu"
	.asciz "arc"
	.asciz "mf01_main00_icon.brlyt"
	.asciz "mf01_main00_icon_in.brlan"
	.asciz "mf01_main00_icon_out.brlan"
	.asciz "mf01_main00_icon_sub_in.brlan"
	.asciz "mf01_main00_icon_sub_out.brlan"
	.asciz "pic_base%02d_%02d"
	.asciz "nul_proportion"
	.asciz "pic_base02_01"
	.asciz "pic_base02_02"
	.asciz "pic_base02_03"
	.asciz "pic_base03_01"
	.asciz "pic_base03_02"
	.asciz "pic_base05_01"
	.asciz "pic_base05_02"
	.asciz "pic_base05_03"
	.asciz "pic_base05_04"
	.asciz "pic_base06_01"
	.asciz "pic_base06_02"
	.asciz "pic_base07_01"
	.asciz "pic_base07_02"
	.asciz "pic_base07_03"
	.asciz "pic_icon%02d"
	.balign 4


.global lbl_804F88F0
lbl_804F88F0:
	# ROM: 0x4F49F0
	.4byte 0xFF2AFF5C
	.4byte 0xFF8EFFC0
	.4byte 0x00000040
	.4byte 0x007200A4
	.4byte 0x00D60000
	.4byte 0xFF66FF66
	.4byte 0xFF66FF66
	.4byte 0xFF6EFF66
	.4byte 0xFF66FF66
	.4byte 0xFF660000
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F666666
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD
	.4byte 0x3F4CCCCD


.global lbl_804F893C
lbl_804F893C:
	# ROM: 0x4F4A3C
	.4byte 0x00010002
	.4byte 0x00030004
	.4byte 0x00010000

.global lbl_804F8948
lbl_804F8948:
	.4byte 0x00000010
	.4byte 0x00100000
	.4byte 0x00200000
	.4byte 0

.global lbl_804F8958
lbl_804F8958:
	.4byte 0x008C008D
	.4byte 0x008E008F
	.4byte 0x008C008C
	.4byte 0x008C008C

.global lbl_804F8968
lbl_804F8968:
	.4byte 0x00880089
	.4byte 0x008A008B
	.4byte 0x007D007D
	.4byte 0x007D007D

.global lbl_804F8978
lbl_804F8978:
	.asciz "CMenuArtsSelect"
	.asciz "IScnRender"
	.balign 4
	.4byte 0
	.asciz "cf::IObjectInfo"

.global lbl_804F89A8
lbl_804F89A8:
	.asciz "IUIBattle"
	.balign 4

.global lbl_804F89B4
lbl_804F89B4:
	.asciz "CTTask<IUIBattle>"
	.balign 4
	.asciz "IWorkEvent"
	.balign 4
	.asciz "CProcess"
	.balign 4
	.asciz "CChildListNode"
	.balign 4
	.asciz "CDoubleListNode"


.global lbl_804F8A00
lbl_804F8A00:
	.asciz "CMenuArtsSelect"
	.asciz "mf15_arts20_base.brlyt"
	.asciz "mf15_arts20_base_in.brlan"
	.asciz "mf15_arts20_base_out.brlan"
	.asciz "txt_helpmess"
	.asciz "txt_suject"
	.asciz "mf15_arts22_cursor.brlyt"
	.asciz "mf15_arts22_cursor_on.brlan"
	.asciz "mf15_arts22_cursor_roop.brlan"
	.asciz "nul_arts00"
	.asciz "mf15_arts26_effect_gage.brlyt"
	.asciz "mf15_arts26_effect_gage_full.brlan"
	.asciz "mf15_arts26_effect_gage_full_in.brlan"
	.asciz "nul_gage"
	.asciz "mf15_arts28_effect_lock.brlyt"
	.asciz "mf15_arts28_effect_lock_in.brlan"
	.asciz "mf15_arts28_effect_lock_out.brlan"
	.asciz "nul_lock"
	.asciz "mf15_arts29_effect_range.brlyt"
	.asciz "mf15_arts29_effect_range_in.brlan"
	.asciz "nul_range"
	.asciz "mf15_arts25_effect_kizuna.brlyt"
	.asciz "mf15_arts25_effect_kizuna_in_out.brlan"
	.asciz "nul_kizuna"
	.asciz "MNU_battle"
	.asciz "name"
	.asciz "help"
	.asciz "pic_arrow_o00"
	.asciz "pic_arrow_u00"
	.asciz "pic_gage"
	.asciz "pic_gage01"
	.asciz "arm_type"
	.asciz "pc_arts"
	.asciz "icon_base"
	.asciz "icon"
	.asciz "pic_arts00"
	.asciz "pic_icon00"
	.asciz "pic_arts%02d"
	.asciz "pic_icon%02d"
	.asciz "pic_ref%02d"
	.asciz "pic_messwin00"
	.asciz "pic_messwin01"
	.asciz "pic_messwin02"
	.asciz "pic_messwin03"
	.asciz "pic_messwin04"

.global lbl_804F8D30
lbl_804F8D30:
	.asciz "CMenuBattleDamage"
	.balign 4


.global lbl_804F8D44
lbl_804F8D44:
	.asciz "CMenuBattleDamage"
	.asciz "mf71_battle15_damege.brlyt"
	.asciz "mf71_battle15_damege_dot.brlan"
	.asciz "mf71_battle15_damege_def.brlan"
	.asciz "mf71_battle15_damege_cri.brlan"
	.asciz "mf71_battle16_buf.brlyt"
	.asciz "mf71_battle16_buf_status_in.brlan"
	.asciz "name"
	.byte 0x00
	
	#▲
	.2byte 0x81A3
	.byte 0x00
	
	#▲▲
	.4byte 0x81A381A3
	.byte 0x00
	
	.asciz "%s%d"	
	.asciz "%s"
	.asciz "MNU_battle"
	.asciz "%s%d %s"
	.asciz "txt_damage"
	.asciz "txt_hit"
	.asciz "txt_recovery"
	.asciz "txt_add"
	.asciz "txt_dot"
	.asciz "txt_spike"
	.asciz "pic_efct"

	#ダブルアタック
	.4byte 0x835F8375
	.4byte 0x838B8341
	.4byte 0x835E8362
	.2byte 0x834E
	.byte 0x00
	
	#カウンター
	.4byte 0x834A8345
	.4byte 0x8393835E
	.2byte 0x815B
	.byte 0x00
	
	#プロテクション
	.2byte 0x8376
	.4byte 0x838D8365
	.4byte 0x834E8356
	.4byte 0x83878393
	.byte 0x00
	
	.asciz "nul_g"
	.asciz "nul_b"
	.asciz "txt_status_b00"
	.asciz "txt_status_g00"
	.asciz "mf71_btl16_bufmk02.tpl"
	.asciz "mf71_btl16_bufmk01.tpl"
	.asciz "mf71_btl16_bufmk00.tpl"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "pic_ic"
	.balign 4

.global lbl_804F8F28
lbl_804F8F28:
	.4byte 0
	.4byte 0x41880000
	.4byte 0x42080000
	.4byte 0x424C0000
	.4byte 0x42880000


.global lbl_804F8F3C
lbl_804F8F3C:
	.asciz "CMenuBattlePlayerState"
	.balign 4

.global lbl_804F8F54
lbl_804F8F54:
	.asciz "CPcSelectCursor01"
	.balign 4


.global lbl_804F8F68
lbl_804F8F68:
	.asciz "CPcSelectCursor01"
	.asciz "mf80_info00_target01_pc.brlyt"
	.asciz "mf80_info00_target01_pc_in.brlan"
	.asciz "mf80_info00_target01_pc_on.brlan"
	.asciz "mf80_info00_target01_pc_roop.brlan"
	.asciz "nul_crs_side"
	.asciz "mf71_battle17_exp01.brlyt"
	.asciz "mf71_battle17_exp01_in.brlan"
	.asciz "nul_all"
	.asciz "txt_exp"
	.asciz "txt_ap"
	.asciz "txt_pp"
	.asciz "CMenuBattlePlayerState"
	.asciz "mf71_battle60_pcinfo_base.brlyt"
	.asciz "mf71_battle60_pcinfo_base_in.brlan"
	.asciz "mf71_battle61_pcinfo_caution.brlyt"
	.asciz "mf71_battle61_pcinfo_caution_in.brlan"
	.asciz "mf71_battle61_pcinfo_caution_under50.brlan"
	.asciz "mf71_battle61_pcinfo_caution_under20.brlan"
	.asciz "mf71_battle62_pcinfo_info.brlyt"
	.asciz "mf71_battle62_pcinfo_info_in.brlan"
	.asciz "txt_lv00"
	.asciz "txt_lv01"
	.asciz "txt_hp"
	.asciz "txt_hp01"
	.asciz "pic_gage_skl"
	.asciz "pic_gage_exp"
	.asciz "pic_face_d00"
	.asciz "pic_face_d01"
	.asciz "pic_face_00"
	.asciz "pic_face_01"
	.asciz "pic_status_b"
	.asciz "pic_status_g"
	.asciz "mf71_battle63_pcinfo_tension.brlyt"
	.asciz "mf71_battle63_pcinfo_tension_in.brlan"
	.asciz "mf71_battle64_pcinfo_max.brlyt"
	.asciz "mf71_battle64_pcinfo_max_h_in.brlan"
	.asciz "mf71_battle64_pcinfo_max_h_roop.brlan"
	.asciz "mf71_battle64_pcinfo_max_h_out.brlan"
	.asciz "mf71_battle64_pcinfo_max_l_in.brlan"
	.asciz "mf71_battle64_pcinfo_max_l_roop.brlan"
	.asciz "mf71_battle64_pcinfo_max_l_out.brlan"
	.asciz "%02d"
	.asciz "MNU_party"
	.asciz "name"
	.asciz "BTL_PSVskill"
	.asciz "point_PP"
	.asciz "icon"
	.asciz "nul_icon_l"
	.asciz "nul_icon_h"
	.balign 4

.global lbl_804F93B0
lbl_804F93B0:
	.asciz "mf71_btl00_pnmk00.tpl"
	.balign 4

.global lbl_804F93C8
lbl_804F93C8:
	.asciz "mf71_btl00_pnmk01.tpl"
	.balign 4

.global lbl_804F93E0
lbl_804F93E0:
	.asciz "mf71_btl00_pnmk02.tpl"
	.balign 4

.global lbl_804F93F8
lbl_804F93F8:
	.asciz "mf71_btl00_pnmk03.tpl"
	.balign 4

.global lbl_804F9410
lbl_804F9410:
	.4byte lbl_804F93B0
	.4byte lbl_804F93C8
	.4byte lbl_804F93E0
	.4byte lbl_804F93F8

.global lbl_804F9420
lbl_804F9420:
	.asciz "CMenuEnemyState"

.global lbl_804F9430
lbl_804F9430:
	.asciz "CPcSelectCursor"


.global lbl_804F9440
lbl_804F9440:
	.asciz "CPcSelectCursor"
	.asciz "mf80_info00_target_pc.brlyt"
	.asciz "mf80_info00_target_pc_in.brlan"
	.asciz "mf80_info00_target_pc_on.brlan"
	.asciz "nul_crs"
	.asciz "nul_crs_f"
	.asciz "pic_crs02"
	.asciz "pic_crs03"
	.asciz "pic_crs_f02"
	.asciz "pic_crs_f03"
	.asciz "CMenuEnemyState"
	.asciz "mf71_battle10_hpgage.brlyt"
	.asciz "pic_pcbar"
	.asciz "pic_enbar"
	.asciz "pic_tgbar_f"
	.asciz "pic_pic_death"
	.asciz "pic_panic"
	.asciz "nul_pc"
	.asciz "nul_enemmy"
	.asciz "pic_tgbar"
	.asciz "nul_tg"
	.asciz "mf80_info00_target.brlyt"
	.asciz "pic_crs00"
	.asciz "pic_bs"
	.asciz "pic_sns"
	.asciz "nul_mkgr"
	.asciz "pic_crs_s"
	.asciz "mf80_info00_targetinfo.brlyt"
	.asciz "mf80_info00_targetinfo_roop.brlan"
	.asciz "txt_lv00"
	.asciz "txt_lv01"
	.asciz "nul_npc"
	.asciz "nul_en_s"
	.asciz "nul_en_g"
	.asciz "pic_gr_e00"
	.asciz "pic_gr_e01"
	.asciz "pic_status_b"
	.asciz "pic_status_g"
	.asciz "mf80_tginf00_enmk00.tpl"
	.asciz "mf80_tginf00_enmk01.tpl"
	.asciz "mf80_tginf00_enmk02.tpl"
	.asciz "MNU_battle"
	.asciz "name"
	.asciz "txt_name_npc"
	.asciz "%03d"
	.asciz "txt_name_enemmy"
	.asciz "frame"
	.asciz "pic_gr"
	.asciz "icon"
	.4byte 0
	.2byte 0
.global lbl_804F96E0
lbl_804F96E0:
	.asciz "CMenuFade"
	.balign 4
	.4byte 0


.global lbl_804F96F0
lbl_804F96F0:
	.asciz "CMenuFade"
	.asciz "fadeout.brlyt"
	.asciz "fadeout.brlan"
	.asciz "win_black"

.global lbl_804F9720
lbl_804F9720:
	.asciz "CMenuKeyAssign"
	.balign 4


.global lbl_804F9730
lbl_804F9730:
	.asciz "CMenuKeyAssign"
	.asciz "mf70_cf40_keyassign.brlyt"
	.asciz "fileID_1"
	.asciz "fileID_2"
	.asciz "MNU_kyeassign"
	.asciz "SYS_filelist"
	.asciz "filename"
	.asciz "%s.tpl"
	.asciz "pic_pos%02d"
	.asciz "help"
	.asciz "txt_pos%02d"
	.asciz "txt_pos%02d_l"
	.asciz "txt_pos%02d_r"
	.asciz "txt_pos%02d_o"
	.asciz "txt_pos%02d_u"
	.balign 4
	.4byte 0

.global lbl_804F97F0
lbl_804F97F0:
	.asciz "txt_land"
	.balign 4

.global lbl_804F97FC
lbl_804F97FC:
	.asciz "txt_map_jump"
	.balign 4

.global lbl_804F980C
lbl_804F980C:
	.asciz "txt_crystal"

.global lbl_804F9818
lbl_804F9818:
	.asciz "txt_commu"
	.balign 4

.global lbl_804F9824
lbl_804F9824:
	.asciz "txt_shop"
	.balign 4

.global lbl_804F9830
lbl_804F9830:
	.asciz "txt_qst1"
	.balign 4

.global lbl_804F983C
lbl_804F983C:
	.asciz "txt_qst2"
	.balign 4

.global lbl_804F9848
lbl_804F9848:
	.asciz "txt_navi"
	.balign 4

.global lbl_804F9854
lbl_804F9854:
	.asciz "txt_qst3"
	.balign 4

.global lbl_804F9860
lbl_804F9860:
	.asciz "txt_scene"
	.balign 4

.global lbl_804F986C
lbl_804F986C:
	.asciz "markerlist0000"
	.balign 4

.global lbl_804F987C
lbl_804F987C:
	.asciz "markerlist0101"
	.balign 4

.global lbl_804F988C
lbl_804F988C:
	.asciz "markerlist0201"
	.balign 4

.global lbl_804F989C
lbl_804F989C:
	.asciz "markerlist0301"
	.balign 4

.global lbl_804F98AC
lbl_804F98AC:
	.asciz "markerlist0401"
	.balign 4

.global lbl_804F98BC
lbl_804F98BC:
	.asciz "markerlist0402"
	.balign 4

.global lbl_804F98CC
lbl_804F98CC:
	.asciz "markerlist0501"
	.balign 4

.global lbl_804F98DC
lbl_804F98DC:
	.asciz "markerlist0601"
	.balign 4

.global lbl_804F98EC
lbl_804F98EC:
	.asciz "markerlist0701"
	.balign 4

.global lbl_804F98FC
lbl_804F98FC:
	.asciz "markerlist0801"
	.balign 4

.global lbl_804F990C
lbl_804F990C:
	.asciz "markerlist0901"
	.balign 4

.global lbl_804F991C
lbl_804F991C:
	.asciz "markerlist1001"
	.balign 4

.global lbl_804F992C
lbl_804F992C:
	.asciz "markerlist1101"
	.balign 4

.global lbl_804F993C
lbl_804F993C:
	.asciz "markerlist1201"
	.balign 4

.global lbl_804F994C
lbl_804F994C:
	.asciz "markerlist1202"
	.balign 4

.global lbl_804F995C
lbl_804F995C:
	.asciz "markerlist1301"
	.balign 4

.global lbl_804F996C
lbl_804F996C:
	.asciz "markerlist1401"
	.balign 4

.global lbl_804F997C
lbl_804F997C:
	.asciz "markerlist1501"
	.balign 4

.global lbl_804F998C
lbl_804F998C:
	.asciz "markerlist1601"
	.balign 4

.global lbl_804F999C
lbl_804F999C:
	.asciz "markerlist1701"
	.balign 4

.global lbl_804F99AC
lbl_804F99AC:
	.asciz "markerlist1801"
	.balign 4

.global lbl_804F99BC
lbl_804F99BC:
	.asciz "markerlist1901"
	.balign 4

.global lbl_804F99CC
lbl_804F99CC:
	.asciz "markerlist2001"
	.balign 4

.global lbl_804F99DC
lbl_804F99DC:
	.asciz "markerlist2101"
	.balign 4

.global lbl_804F99EC
lbl_804F99EC:
	.asciz "markerlist2201"
	.balign 4

.global lbl_804F99FC
lbl_804F99FC:
	.asciz "markerlist2301"
	.balign 4

.global lbl_804F9A0C
lbl_804F9A0C:
	.asciz "markerlist2401"
	.balign 4

.global lbl_804F9A1C
lbl_804F9A1C:
	.asciz "CMenuMiniMap2"
	.balign 4

.global lbl_804F9A2C
lbl_804F9A2C:
	.asciz "CMiniMap"
	.balign 4

.global lbl_804F9A38
lbl_804F9A38:
	.asciz "CMMClock"
	.balign 4


.global lbl_804F9A44
lbl_804F9A44:
	.asciz "landmarklist"
	.asciz "txt_land"
	.asciz "mapID"
	.asciz "category"
	.asciz "pic_land%d"
	.asciz "height"
	.asciz "txt_qst3"
	.asciz "type"
	.asciz "marker"
	.asciz "quest_no"
	.asciz "qst_genre"
	.asciz "relate_no"
	.asciz "txt_scene"
	.asciz "pic_obj%d"
	.asciz "pic_point%d"
	.asciz "pic_pop%d"
	.asciz "FLD_valpoplist"
	.asciz "itm1ID"
	.asciz "posX"
	.asciz "posY"
	.asciz "posZ"
	.asciz "pic_val%d"
	.asciz "pic_gmk%d"
	.asciz "/menu/mmClock.arc"
	.asciz "CMMClock"
	.asciz "arc"
	.asciz "mf70_cf30_clock00.brlyt"
	.asciz "mf70_cf30_clock00_clock_in.brlan"
	.asciz "mf70_cf30_clock00_time_all.brlan"
	.asciz "minimaplist%04d"
	.asciz "sflag"
	.asciz "qflag1"
	.asciz "val1"
	.asciz "mapimg"
	.asciz "mapimg1"
	.asciz "mapimg2"
	.asciz "/menu/tpl/%s"
	.asciz "minimap_x"
	.asciz "minimap_y"
	.asciz "minimap_rate"
	.asciz "scmarkerlist"
	.asciz "MiniMap2"
	.asciz "MiniMap2_ObjM"
	.asciz "/menu/mm%04d.arc"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "pic_map"
	.asciz "pic_cam"
	.asciz "txt_rot"
	.asciz "pic_pc"
	.asciz "mf75_minimap00_ma%04d_f01.brlyt"
	.asciz "mf75_minimap00_ma%04d_f01_in.brlan"
	.asciz "mf75_minimap00_ma%04d_f01_fade.brlan"
	.asciz "nul_all"
	.asciz "map"
	.asciz "pic_attr%d"
	.asciz "pic_objnpc%d"
	.asciz "pic_objpcnpc%d"
	.asciz "txt_commu"
	.asciz "npc_id"
	.asciz "txt_qst1"
	.asciz "txt_shop"
	.asciz "txt_crystal"
	.asciz "txt_obj"
	.asciz "pic_map_jump%d"
	.asciz "txt_map_jump"
	.balign 4

.global lbl_804F9D48
lbl_804F9D48:
	.asciz "CMenuQuestLog"
	.balign 4


.global lbl_804F9D58
lbl_804F9D58:
	.asciz "MNU_quest"
	.asciz "name"
	.byte 0x00
.global lbl_804F9D68
lbl_804F9D68:
	.asciz "markerlist0000"
	.balign 4

.global lbl_804F9D78
lbl_804F9D78:
	.asciz "markerlist0101"
	.balign 4

.global lbl_804F9D88
lbl_804F9D88:
	.asciz "markerlist0201"
	.balign 4

.global lbl_804F9D98
lbl_804F9D98:
	.asciz "markerlist0301"
	.balign 4

.global lbl_804F9DA8
lbl_804F9DA8:
	.asciz "markerlist0401"
	.balign 4

.global lbl_804F9DB8
lbl_804F9DB8:
	.asciz "markerlist0402"
	.balign 4

.global lbl_804F9DC8
lbl_804F9DC8:
	.asciz "markerlist0501"
	.balign 4

.global lbl_804F9DD8
lbl_804F9DD8:
	.asciz "markerlist0601"
	.balign 4

.global lbl_804F9DE8
lbl_804F9DE8:
	.asciz "markerlist0701"
	.balign 4

.global lbl_804F9DF8
lbl_804F9DF8:
	.asciz "markerlist0801"
	.balign 4

.global lbl_804F9E08
lbl_804F9E08:
	.asciz "markerlist0901"
	.balign 4

.global lbl_804F9E18
lbl_804F9E18:
	.asciz "markerlist1001"
	.balign 4

.global lbl_804F9E28
lbl_804F9E28:
	.asciz "markerlist1101"
	.balign 4

.global lbl_804F9E38
lbl_804F9E38:
	.asciz "markerlist1201"
	.balign 4

.global lbl_804F9E48
lbl_804F9E48:
	.asciz "markerlist1202"
	.balign 4

.global lbl_804F9E58
lbl_804F9E58:
	.asciz "markerlist1301"
	.balign 4

.global lbl_804F9E68
lbl_804F9E68:
	.asciz "markerlist1401"
	.balign 4

.global lbl_804F9E78
lbl_804F9E78:
	.asciz "markerlist1501"
	.balign 4

.global lbl_804F9E88
lbl_804F9E88:
	.asciz "markerlist1601"
	.balign 4

.global lbl_804F9E98
lbl_804F9E98:
	.asciz "markerlist1701"
	.balign 4

.global lbl_804F9EA8
lbl_804F9EA8:
	.asciz "markerlist1801"
	.balign 4

.global lbl_804F9EB8
lbl_804F9EB8:
	.asciz "markerlist1901"
	.balign 4

.global lbl_804F9EC8
lbl_804F9EC8:
	.asciz "markerlist2001"
	.balign 4

.global lbl_804F9ED8
lbl_804F9ED8:
	.asciz "markerlist2101"
	.balign 4

.global lbl_804F9EE8
lbl_804F9EE8:
	.asciz "markerlist2201"
	.balign 4

.global lbl_804F9EF8
lbl_804F9EF8:
	.asciz "markerlist2301"
	.balign 4

.global lbl_804F9F08
lbl_804F9F08:
	.asciz "markerlist2401"
	.balign 4


.global lbl_804F9F18
lbl_804F9F18:
	# ROM: 0x4F6018
	.4byte 0xBE4CCCCD
	.4byte 0x3FE7AE14
	.4byte 0xC3822148
	.4byte 0xBE3851EC
	.4byte 0x3FE147AE
	.4byte 0xC3A92666

.global lbl_804F9F30
lbl_804F9F30:
	.asciz "CArrow3D"
	.balign 4

.global lbl_804F9F3C
lbl_804F9F3C:
	.asciz "CTTask<CArrow3D>"
	.balign 4

.global lbl_804F9F50
lbl_804F9F50:
	.asciz "CMenuSymbolMark"


.global lbl_804F9F60
lbl_804F9F60:
	.asciz "mf70_cf10_dst.brlyt"
	.asciz "txt_km"
	.balign 4
	.asciz "pic_other"
	.asciz "pic_qest"
	.asciz "qst_genre"
	.asciz "scmarkerlist"
	.asciz "SYS_iconlist"
	.asciz "CMenuSymbolMark"
	.asciz "mf70_cf10_tagicon.brlyt"
	.asciz "filename_1"
	.asciz "%s.tpl"
	.asciz "pic_icon"
	.asciz "type"
	.asciz "map"
	.asciz "marker"
	.asciz "npc_id"
	.asciz "quest_no"
	.asciz "relate_no"
	.asciz "FLD_valpoplist"
	.asciz "itm1ID"
	.asciz "posX"
	.asciz "posY"
	.asciz "posZ"
	.balign 4

.global lbl_804FA048
lbl_804FA048:
	.asciz "/menu/QstWin.arc"
	.balign 4

.global lbl_804FA05C
lbl_804FA05C:
	.asciz "/common/jp/bdat_qs0000.bin"
	.balign 4

.global lbl_804FA078
lbl_804FA078:
	.asciz "/common/jp/bdat_qs0101.bin"
	.balign 4

.global lbl_804FA094
lbl_804FA094:
	.asciz "/common/jp/bdat_qs0201.bin"
	.balign 4

.global lbl_804FA0B0
lbl_804FA0B0:
	.asciz "/common/jp/bdat_qs0301.bin"
	.balign 4

.global lbl_804FA0CC
lbl_804FA0CC:
	.asciz "/common/jp/bdat_qs0401.bin"
	.balign 4

.global lbl_804FA0E8
lbl_804FA0E8:
	.asciz "/common/jp/bdat_qs0402.bin"
	.balign 4

.global lbl_804FA104
lbl_804FA104:
	.asciz "/common/jp/bdat_qs0501.bin"
	.balign 4

.global lbl_804FA120
lbl_804FA120:
	.asciz "/common/jp/bdat_qs0601.bin"
	.balign 4

.global lbl_804FA13C
lbl_804FA13C:
	.asciz "/common/jp/bdat_qs0701.bin"
	.balign 4

.global lbl_804FA158
lbl_804FA158:
	.asciz "/common/jp/bdat_qs0801.bin"
	.balign 4

.global lbl_804FA174
lbl_804FA174:
	.asciz "/common/jp/bdat_qs0901.bin"
	.balign 4

.global lbl_804FA190
lbl_804FA190:
	.asciz "/common/jp/bdat_qs1001.bin"
	.balign 4

.global lbl_804FA1AC
lbl_804FA1AC:
	.asciz "/common/jp/bdat_qs1101.bin"
	.balign 4

.global lbl_804FA1C8
lbl_804FA1C8:
	.asciz "/common/jp/bdat_qs1201.bin"
	.balign 4

.global lbl_804FA1E4
lbl_804FA1E4:
	.asciz "/common/jp/bdat_qs1202.bin"
	.balign 4

.global lbl_804FA200
lbl_804FA200:
	.asciz "/common/jp/bdat_qs1301.bin"
	.balign 4

.global lbl_804FA21C
lbl_804FA21C:
	.asciz "/common/jp/bdat_qs1401.bin"
	.balign 4

.global lbl_804FA238
lbl_804FA238:
	.asciz "/common/jp/bdat_qs1501.bin"
	.balign 4

.global lbl_804FA254
lbl_804FA254:
	.asciz "/common/jp/bdat_qs1601.bin"
	.balign 4

.global lbl_804FA270
lbl_804FA270:
	.asciz "/common/jp/bdat_qs1701.bin"
	.balign 4

.global lbl_804FA28C
lbl_804FA28C:
	.asciz "/common/jp/bdat_qs1801.bin"
	.balign 4

.global lbl_804FA2A8
lbl_804FA2A8:
	.asciz "/common/jp/bdat_qs1901.bin"
	.balign 4

.global lbl_804FA2C4
lbl_804FA2C4:
	.asciz "/common/jp/bdat_qs2001.bin"
	.balign 4

.global lbl_804FA2E0
lbl_804FA2E0:
	.asciz "/common/jp/bdat_qs2101.bin"
	.balign 4

.global lbl_804FA2FC
lbl_804FA2FC:
	.asciz "/common/jp/bdat_qs2201.bin"
	.balign 4

.global lbl_804FA318
lbl_804FA318:
	.asciz "/common/jp/bdat_qs2301.bin"
	.balign 4

.global lbl_804FA334
lbl_804FA334:
	.asciz "/common/jp/bdat_qs2401.bin"
	.balign 4

.global lbl_804FA350
lbl_804FA350:
	.asciz "MNU_qt0000"
	.balign 4

.global lbl_804FA35C
lbl_804FA35C:
	.asciz "MNU_qt0101"
	.balign 4

.global lbl_804FA368
lbl_804FA368:
	.asciz "MNU_qt0201"
	.balign 4

.global lbl_804FA374
lbl_804FA374:
	.asciz "MNU_qt0301"
	.balign 4

.global lbl_804FA380
lbl_804FA380:
	.asciz "MNU_qt0401"
	.balign 4

.global lbl_804FA38C
lbl_804FA38C:
	.asciz "MNU_qt0402"
	.balign 4

.global lbl_804FA398
lbl_804FA398:
	.asciz "MNU_qt0501"
	.balign 4

.global lbl_804FA3A4
lbl_804FA3A4:
	.asciz "MNU_qt0601"
	.balign 4

.global lbl_804FA3B0
lbl_804FA3B0:
	.asciz "MNU_qt0701"
	.balign 4

.global lbl_804FA3BC
lbl_804FA3BC:
	.asciz "MNU_qt0801"
	.balign 4

.global lbl_804FA3C8
lbl_804FA3C8:
	.asciz "MNU_qt0901"
	.balign 4

.global lbl_804FA3D4
lbl_804FA3D4:
	.asciz "MNU_qt1001"
	.balign 4

.global lbl_804FA3E0
lbl_804FA3E0:
	.asciz "MNU_qt1101"
	.balign 4

.global lbl_804FA3EC
lbl_804FA3EC:
	.asciz "MNU_qt1201"
	.balign 4

.global lbl_804FA3F8
lbl_804FA3F8:
	.asciz "MNU_qt1202"
	.balign 4

.global lbl_804FA404
lbl_804FA404:
	.asciz "MNU_qt1301"
	.balign 4

.global lbl_804FA410
lbl_804FA410:
	.asciz "MNU_qt1401"
	.balign 4

.global lbl_804FA41C
lbl_804FA41C:
	.asciz "MNU_qt1501"
	.balign 4

.global lbl_804FA428
lbl_804FA428:
	.asciz "MNU_qt1601"
	.balign 4

.global lbl_804FA434
lbl_804FA434:
	.asciz "MNU_qt1701"
	.balign 4

.global lbl_804FA440
lbl_804FA440:
	.asciz "MNU_qt1801"
	.balign 4

.global lbl_804FA44C
lbl_804FA44C:
	.asciz "MNU_qt1901"
	.balign 4

.global lbl_804FA458
lbl_804FA458:
	.asciz "MNU_qt2001"
	.balign 4

.global lbl_804FA464
lbl_804FA464:
	.asciz "MNU_qt2101"
	.balign 4

.global lbl_804FA470
lbl_804FA470:
	.asciz "MNU_qt2201"
	.balign 4

.global lbl_804FA47C
lbl_804FA47C:
	.asciz "MNU_qt2301"
	.balign 4

.global lbl_804FA488
lbl_804FA488:
	.asciz "MNU_qt2401"
	.balign 4

.global lbl_804FA494
lbl_804FA494:
	.asciz "CQuestWindow"
	.balign 4

.global lbl_804FA4A4
lbl_804FA4A4:
	.asciz "IUIWindow"
	.balign 4

.global lbl_804FA4B0
lbl_804FA4B0:
	.asciz "CTTask<IUIWindow>"
	.balign 4


.global lbl_804FA4C4
lbl_804FA4C4:
	.asciz "CQuestWindow"
	.asciz "arc"
	.asciz "mf70_cf60_qst_acp.brlyt"
	.asciz "mf70_cf60_qst_acp_in.brlan"
	.asciz "mf70_cf60_qst_acp_roop.brlan"
	.asciz "txt_gold00"
	.asciz "txt_gold01"
	.asciz "txt_exp"
	.asciz "MNU_item"
	.asciz "name"
	.asciz "txt_next"
	.asciz "txt_purpose"
	.asciz "qst_genre"
	.asciz "MNU_col6"
	.asciz "reward_exp"
	.asciz "reward_money"
	.asciz "reward_mes"
	.asciz "win_main"
	.asciz "pic_head"
	.asciz "win_main01"
	.asciz "pic_head01"
	.asciz "mf00_reg00_qt01.tpl"
	.asciz "mf00_reg00_qt02.tpl"
	.asciz "mf00_reg00_qt03.tpl"
	.asciz "pic_tit"
	.asciz "force"
	.asciz "MNU_quest"
	.asciz "txt_head"
	.asciz "title"
	.asciz "txt_questtitle"
	.asciz "npc_id"
	.asciz "txt_irai"
	.asciz "purpose"
	.asciz "info_end_B"
	.asciz "info_end_A"
	.asciz "order_succ_A"
	.asciz "info_prog"
	.asciz "txt_reward01"
	.byte 0x00
	.asciz "txt_reward02"
	.asciz "txt_reward03"
	.asciz "reward_B%d"
	.asciz "reward_A%d"
	.asciz "txt_reward%02d"
	.asciz "rankType"
	.asciz "%s%s"
	.asciz "%s"
	.asciz "txt_yes"
	.asciz "txt_no"
	.asciz "txt_yes2"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_close1"
	.asciz "txt_close2"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn1"
	.asciz "pic_btn2"
	.asciz "flg_relate_B%d"
	.asciz "flg_relate_A%d"
	.asciz "up_relate_B%d"
	.asciz "up_relate_A%d"
	.asciz "up_famous_B"
	.asciz "up_famous_A"
	.asciz "nul_select"
	.asciz "nul_select2"
	.asciz "pic_comp"
	.asciz "pic_chbx01"
	.asciz "nul_proportion"
	.asciz "nul_yes2"
	.balign 4
	.4byte 0

.global lbl_804FA7D8
lbl_804FA7D8:
	.asciz "CSysWinSelect"
	.balign 4

.global lbl_804FA7E8
lbl_804FA7E8:
	.asciz "CSystemWindow"
	.balign 4


.global lbl_804FA7F8
lbl_804FA7F8:
	# ROM: 0x4F68F8
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0x00000011
	.4byte 0x00000012
	.4byte 0x00000013
	.4byte 0x00000014
	.4byte 0x00000015
	.4byte 0x00000016
	.4byte 0x00000017
	.4byte 0x00000018
	.4byte 0x00000019
	.4byte 0x0000001A
	.4byte 0x0000001B
	.4byte 0x0000001C
	.4byte 0x0000001D
	.4byte 0x0000001E
	.4byte 0x0000001F
	.4byte 0x00000020
	.4byte 0x00000021
	.4byte 0x00000022
	.4byte 0x00000023
	.4byte 0x00000024
	.4byte 0x00000025
	.4byte 0x00000026
	.4byte 0x00000027
	.4byte 0x00000028
	.4byte 0x00000029
	.4byte 0x0000002A
	.4byte 0x0000002B
	.4byte 0x0000002C
	.4byte 0x0000002D
	.4byte 0x0000002E
	.4byte 0x0000002F
	.4byte 0x00000030
	.4byte 0x00000031
	.4byte 0x00000032
	.4byte 0x00000033
	.4byte 0x00000034
	.4byte 0x00000035
	.4byte 0x00000036
	.4byte 0x00000037

.global lbl_804FA8D4
lbl_804FA8D4:
	.4byte 0x00540041
	.4byte 0x004C004B
	.4byte 0x00310000

.global lbl_804FA8E0
lbl_804FA8E0:
	.4byte 0x00450056
	.4byte 0x00540031
	.4byte 0

.global lbl_804FA8EC
lbl_804FA8EC:
	.4byte 0x00450056
	.4byte 0x00540032
	.4byte 0

.global lbl_804FA8F8
lbl_804FA8F8:
	.4byte 0x00450056
	.4byte 0x00540033
	.4byte 0

.global lbl_804FA904
lbl_804FA904:
	.4byte 0x00450056
	.4byte 0x00540034
	.4byte 0

.global lbl_804FA910
lbl_804FA910:
	.4byte 0x00450056
	.4byte 0x00540035
	.4byte 0

.global lbl_804FA91C
lbl_804FA91C:
	.4byte 0x00450056
	.4byte 0x00540036
	.4byte 0

.global lbl_804FA928
lbl_804FA928:
	.4byte 0x00450056
	.4byte 0x00540037
	.4byte 0

.global lbl_804FA934
lbl_804FA934:
	.4byte 0x00450056
	.4byte 0x00540038
	.4byte 0

.global lbl_804FA940
lbl_804FA940:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540031
	.4byte 0

.global lbl_804FA954
lbl_804FA954:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540032
	.4byte 0

.global lbl_804FA968
lbl_804FA968:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540033
	.4byte 0

.global lbl_804FA97C
lbl_804FA97C:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540034
	.4byte 0

.global lbl_804FA990
lbl_804FA990:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540035
	.4byte 0

.global lbl_804FA9A4
lbl_804FA9A4:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540036
	.4byte 0

.global lbl_804FA9B8
lbl_804FA9B8:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540037
	.4byte 0

.global lbl_804FA9CC
lbl_804FA9CC:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540038
	.4byte 0

.global lbl_804FA9E0
lbl_804FA9E0:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540039
	.4byte 0

.global lbl_804FA9F4
lbl_804FA9F4:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540031
	.4byte 0x00300000

.global lbl_804FAA08
lbl_804FAA08:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540031
	.4byte 0x00310000

.global lbl_804FAA1C
lbl_804FAA1C:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540031
	.4byte 0x00320000

.global lbl_804FAA30
lbl_804FAA30:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540031
	.4byte 0x00330000

.global lbl_804FAA44
lbl_804FAA44:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540031
	.4byte 0x00340000

.global lbl_804FAA58
lbl_804FAA58:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540031
	.4byte 0x00350000

.global lbl_804FAA6C
lbl_804FAA6C:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540031
	.4byte 0x00360000

.global lbl_804FAA80
lbl_804FAA80:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540031
	.4byte 0x00370000

.global lbl_804FAA94
lbl_804FAA94:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540031
	.4byte 0x00380000

.global lbl_804FAAA8
lbl_804FAAA8:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540031
	.4byte 0x00390000

.global lbl_804FAABC
lbl_804FAABC:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540032
	.4byte 0x00300000

.global lbl_804FAAD0
lbl_804FAAD0:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540032
	.4byte 0x00310000

.global lbl_804FAAE4
lbl_804FAAE4:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540032
	.4byte 0x00320000

.global lbl_804FAAF8
lbl_804FAAF8:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540032
	.4byte 0x00330000

.global lbl_804FAB0C
lbl_804FAB0C:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540032
	.4byte 0x00340000

.global lbl_804FAB20
lbl_804FAB20:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540032
	.4byte 0x00350000

.global lbl_804FAB34
lbl_804FAB34:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540032
	.4byte 0x00360000

.global lbl_804FAB48
lbl_804FAB48:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540032
	.4byte 0x00370000

.global lbl_804FAB5C
lbl_804FAB5C:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540032
	.4byte 0x00380000

.global lbl_804FAB70
lbl_804FAB70:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540032
	.4byte 0x00390000

.global lbl_804FAB84
lbl_804FAB84:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540033
	.4byte 0x00300000

.global lbl_804FAB98
lbl_804FAB98:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540033
	.4byte 0x00310000

.global lbl_804FABAC
lbl_804FABAC:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540033
	.4byte 0x00320000

.global lbl_804FABC0
lbl_804FABC0:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540033
	.4byte 0x00330000

.global lbl_804FABD4
lbl_804FABD4:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540033
	.4byte 0x00340000

.global lbl_804FABE8
lbl_804FABE8:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540033
	.4byte 0x00350000

.global lbl_804FABFC
lbl_804FABFC:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540033
	.4byte 0x00360000

.global lbl_804FAC10
lbl_804FAC10:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540033
	.4byte 0x00370000

.global lbl_804FAC24
lbl_804FAC24:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540033
	.4byte 0x00380000

.global lbl_804FAC38
lbl_804FAC38:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540033
	.4byte 0x00390000

.global lbl_804FAC4C
lbl_804FAC4C:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540034
	.4byte 0x00300000

.global lbl_804FAC60
lbl_804FAC60:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540034
	.4byte 0x00310000

.global lbl_804FAC74
lbl_804FAC74:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540034
	.4byte 0x00320000

.global lbl_804FAC88
lbl_804FAC88:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540034
	.4byte 0x00330000

.global lbl_804FAC9C
lbl_804FAC9C:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540034
	.4byte 0x00340000

.global lbl_804FACB0
lbl_804FACB0:
	.4byte 0x00450056
	.4byte 0x0054005F
	.4byte 0x00450058
	.4byte 0x00540034
	.4byte 0x00350000
	.4byte 0


.global lbl_804FACC8
lbl_804FACC8:
	# ROM: 0x4F6DC8
	.4byte lbl_80669A48
	.4byte lbl_804FA8D4
	.4byte lbl_804FA8E0
	.4byte lbl_804FA8EC
	.4byte lbl_804FA8F8
	.4byte lbl_804FA904
	.4byte lbl_804FA910
	.4byte lbl_804FA91C
	.4byte lbl_804FA928
	.4byte lbl_804FA934
	.4byte lbl_804FA940
	.4byte lbl_804FA954
	.4byte lbl_804FA968
	.4byte lbl_804FA97C
	.4byte lbl_804FA990
	.4byte lbl_804FA9A4
	.4byte lbl_804FA9B8
	.4byte lbl_804FA9CC
	.4byte lbl_804FA9E0
	.4byte lbl_804FA9F4
	.4byte lbl_804FAA08
	.4byte lbl_804FAA1C
	.4byte lbl_804FAA30
	.4byte lbl_804FAA44
	.4byte lbl_804FAA58
	.4byte lbl_804FAA6C
	.4byte lbl_804FAA80
	.4byte lbl_804FAA94
	.4byte lbl_804FAAA8
	.4byte lbl_804FAABC
	.4byte lbl_804FAAD0
	.4byte lbl_804FAAE4
	.4byte lbl_804FAAF8
	.4byte lbl_804FAB0C
	.4byte lbl_804FAB20
	.4byte lbl_804FAB34
	.4byte lbl_804FAB48
	.4byte lbl_804FAB5C
	.4byte lbl_804FAB70
	.4byte lbl_804FAB84
	.4byte lbl_804FAB98
	.4byte lbl_804FABAC
	.4byte lbl_804FABC0
	.4byte lbl_804FABD4
	.4byte lbl_804FABE8
	.4byte lbl_804FABFC
	.4byte lbl_804FAC10
	.4byte lbl_804FAC24
	.4byte lbl_804FAC38
	.4byte lbl_804FAC4C
	.4byte lbl_804FAC60
	.4byte lbl_804FAC74
	.4byte lbl_804FAC88
	.4byte lbl_804FAC9C
	.4byte lbl_804FACB0
	.4byte 0

.global lbl_804FADA8
lbl_804FADA8:
	.4byte 0x00570041
	.4byte 0x00490054
	.4byte 0

.global lbl_804FADB4
lbl_804FADB4:
	.4byte 0x00520055
	.4byte 0x00420059
	.4byte 0

.global lbl_804FADC0
lbl_804FADC0:
	.4byte 0x00540052
	.4byte 0x00550053
	.4byte 0x00540000

.global lbl_804FADCC
lbl_804FADCC:
	.4byte 0x00540059
	.4byte 0x00500045
	.4byte 0

.global lbl_804FADD8
lbl_804FADD8:
	.4byte 0x004C0049
	.4byte 0x004E0045
	.4byte 0

.global lbl_804FADE4
lbl_804FADE4:
	.4byte 0x00530045
	.4byte 0x004C0032
	.4byte 0

.global lbl_804FADF0
lbl_804FADF0:
	.4byte 0x00460041
	.4byte 0x00440045
	.4byte 0

.global lbl_804FADFC
lbl_804FADFC:
	.4byte 0x00510053
	.4byte 0x0054005F
	.4byte 0x00530054
	.4byte 0x00410052
	.4byte 0x00540000

.global lbl_804FAE10
lbl_804FAE10:
	.4byte 0x00500052
	.4byte 0x00450053
	.4byte 0x0045004E
	.4byte 0x00540000

.global lbl_804FAE20
lbl_804FAE20:
	.4byte 0x00540041
	.4byte 0x0049004C
	.4byte 0x005F004F
	.4byte 0x00460046
	.4byte 0
	.4byte 0

.global lbl_804FAE38
lbl_804FAE38:
	.4byte 0x00430052
	.4byte 0x00590053
	.4byte 0x00540041
	.4byte 0x004C0000


.global lbl_804FAE48
lbl_804FAE48:
	# ROM: 0x4F6F48
	.4byte 0
	.4byte 0x00000001
	.4byte 0x0000001F
	.4byte 0x00000034
	.4byte 0x00000035
	.4byte 0x00000036
	.4byte 0x00000037
	.4byte 0x00000038
	.4byte 0x00000039
	.4byte 0x0000003A
	.4byte 0
	.4byte 0x0000003B
	.4byte 0x0000003C
	.4byte 0x0000003D
	.4byte 0x0000003E
	.4byte 0x0000003F
	.4byte 0x00000040
	.4byte 0x00000041
	.4byte 0x00000042
	.4byte 0x00000043
	.4byte 0x00000044
	.4byte 0x00000045
	.4byte 0x00000046
	.4byte 0x00000047
	.4byte 0x00000048
	.4byte 0x00000049
	.4byte 0x0000004A
	.4byte 0x0000004B
	.4byte 0x0000004C
	.4byte 0x0000004D
	.4byte 0x0000004E
	.4byte 0x0000004F
	.4byte 0x00000050
	.4byte 0x00000051
	.4byte 0x00000052
	.4byte 0x00000053
	.4byte 0x00000054
	.4byte 0x00000055
	.4byte 0x00000056
	.4byte 0x00000057
	.4byte 0x00000058
	.4byte 0x00000059
	.4byte 0x0000005A
	.4byte 0x0000005B
	.4byte 0x0000005C
	.4byte 0x0000005D
	.4byte 0x0000005E
	.4byte 0x0000005F
	.4byte 0x00000060
	.4byte 0x00000061
	.4byte 0x00000062
	.4byte 0x00000063
	.4byte 0x00000064
	.4byte 0x00000065


.global lbl_804FAF20
lbl_804FAF20:
	# ROM: 0x4F7020
	.4byte 0
	.4byte 0x00000001
	.4byte 0x0000001F
	.4byte 0x00000034
	.4byte 0x00000035
	.4byte 0x00000036
	.4byte 0x00000037
	.4byte 0x00000038
	.4byte 0x00000039
	.4byte 0x0000003A
	.4byte 0
	.4byte 0x0000003B
	.4byte 0x0000003C
	.4byte 0x0000003D
	.4byte 0x0000003E
	.4byte 0x0000003F
	.4byte 0x00000040
	.4byte 0x00000041
	.4byte 0x00000042
	.4byte 0x00000043
	.4byte 0x00000044
	.4byte 0x00000045
	.4byte 0x00000046
	.4byte 0x00000047
	.4byte 0x00000048
	.4byte 0x00000049
	.4byte 0x0000004A
	.4byte 0x0000004B
	.4byte 0x0000004C
	.4byte 0x0000004D
	.4byte 0x0000004E
	.4byte 0x0000004F
	.4byte 0x00000050
	.4byte 0x00000051
	.4byte 0x00000052
	.4byte 0x00000053
	.4byte 0x00000054
	.4byte 0x00000055
	.4byte 0x00000056
	.4byte 0x00000057
	.4byte 0x00000058
	.4byte 0x00000059
	.4byte 0x0000005A
	.4byte 0x0000005B
	.4byte 0x0000005C
	.4byte 0x0000005D
	.4byte 0x0000005E
	.4byte 0x0000005F
	.4byte 0x00000060
	.4byte 0x00000061
	.4byte 0x00000062
	.4byte 0x00000063
	.4byte 0x00000064
	.4byte 0x00000065

.global lbl_804FAFF8
lbl_804FAFF8:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeMakeCrystal"
	.balign 4

.global lbl_804FB02C
lbl_804FB02C:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeShop"
	.balign 4

.global lbl_804FB058
lbl_804FB058:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeExchange"
	.balign 4

.global lbl_804FB088
lbl_804FB088:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeTailOff"
	.balign 4

.global lbl_804FB0B8
lbl_804FB0B8:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodePresent"
	.balign 4

.global lbl_804FB0E8
lbl_804FB0E8:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeQstStart"
	.balign 4

.global lbl_804FB118
lbl_804FB118:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeInvisible"
	.balign 4

.global lbl_804FB148
lbl_804FB148:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeQuest"
	.balign 4

.global lbl_804FB174
lbl_804FB174:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeFade"
	.balign 4

.global lbl_804FB1A0
lbl_804FB1A0:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeAct"
	.balign 4

.global lbl_804FB1CC
lbl_804FB1CC:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeSelect2"
	.balign 4

.global lbl_804FB1FC
lbl_804FB1FC:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeSelect"

.global lbl_804FB228
lbl_804FB228:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeLine"
	.balign 4

.global lbl_804FB254
lbl_804FB254:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeMouth"
	.balign 4

.global lbl_804FB280
lbl_804FB280:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodePos"
	.balign 4

.global lbl_804FB2AC
lbl_804FB2AC:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeType"
	.balign 4

.global lbl_804FB2D8
lbl_804FB2D8:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeTrust"
	.balign 4

.global lbl_804FB304
lbl_804FB304:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeCol"
	.balign 4

.global lbl_804FB330
lbl_804FB330:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeRuby"
	.balign 4

.global lbl_804FB35C
lbl_804FB35C:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeDel"
	.balign 4

.global lbl_804FB388
lbl_804FB388:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeWait"
	.balign 4
	.4byte 0

.global lbl_804FB3B8
lbl_804FB3B8:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeCP"

.global lbl_804FB3E0
lbl_804FB3E0:
	.asciz "@unnamed@CTagProcessor_cpp@::CTagCodeCL"

.global lbl_804FB408
lbl_804FB408:
	.asciz "@unnamed@CTagProcessor_cpp@::ITagCode"
	.balign 4

.global lbl_804FB430
lbl_804FB430:
	.asciz "CTagProcessorSE"

.global lbl_804FB440
lbl_804FB440:
	.asciz "CTagProcessor"
	.balign 4

.global lbl_804FB450
lbl_804FB450:
	.asciz "CTagProcessorBase"
	.balign 4

.global lbl_804FB464
lbl_804FB464:
	.asciz "nw4r::ut::TagProcessorBase<wchar_t>"


.global lbl_804FB488
lbl_804FB488:
	.asciz "JNL_trustup"
	.asciz "trust_up"
	.asciz "CTagProcessor.cpp"
	.asciz "NW4R:Failed assertion rubyLen > 0"
	.balign 4
	.4byte 0

.global lbl_804FB4D8
lbl_804FB4D8:
	.asciz "CTalkWindow"


.global lbl_804FB4E4
lbl_804FB4E4:
	.asciz "CTalkWindow"
	.asciz "mf70_cf00_twin00.brlyt"
	.asciz "mf70_cf00_twin00_in.brlan"
	.asciz "mf70_cf00_twin00_def.brlan"
	.asciz "mf70_cf00_twin00_out.brlan"
	.asciz "mf70_cf00_twin00_fadeout.brlan"
	.asciz "mf70_cf00_twin00_fadein.brlan"
	.asciz "txt_name"
	.asciz "txt_shadow_01"
	.asciz "txt_shadow_02"
	.asciz "txt_shadow_03"
	.asciz "txt_shadow_04"
	.asciz "txt_mess00"
	.asciz "txt_mess01"
	.balign 4
	.asciz "txt_mess02"
	.asciz "txt_mess03"
	.asciz "pic_tail_over"
	.asciz "pic_tail_under"
	.asciz "win_n"
	.asciz "win_a"
	.asciz "mf70_cf00_twin_tail_n.tpl"
	.asciz "mf70_cf00_twin_line_n.tpl"
	.asciz "mf70_cf00_twin_tail_a.tpl"
	.asciz "mf70_cf00_twin_line_a.tpl"
	.asciz "mf70_cf00_twin_tail_t.tpl"
	.asciz "mf70_cf00_twin_line_t.tpl"
	.asciz "ep100"
	.balign 4

.global lbl_804FB6D0
lbl_804FB6D0:
	.asciz "CUIBattleManager"
	.balign 4

.global lbl_804FB6E4
lbl_804FB6E4:
	.asciz "reslist<IUIBattle *>"
	.balign 4

.global lbl_804FB6FC
lbl_804FB6FC:
	.asciz "_reslist_base<IUIBattle *>"
	.balign 4

.global lbl_804FB718
lbl_804FB718:
	.asciz "CUIBattleManager::CTest"

.global lbl_804FB730
lbl_804FB730:
	.asciz "CTTask<CUIBattleManager::CTest>"

.global lbl_804FB750
lbl_804FB750:
	.asciz "CTTask<CUIBattleManager>"
	.balign 4


.global lbl_804FB76C
lbl_804FB76C:
	.asciz "ARTS_FACE"
	.asciz "menu/tpl/arts_elem.arc"
	.asciz "menu/tpl/arts_sys.arc"
	.asciz "menu/tpl/arts_pc%02d.arc"
	.asciz "/menu/tpl/face_pc%02d.arc"
	.asciz "arc"
	.asciz "icon_type2"
	.asciz "icon_type3"
	.asciz "icon_type"
	.balign 4
	.4byte 0

.global lbl_804FB800
lbl_804FB800:
	.asciz "/menu/common.arc"
	.balign 4

.global lbl_804FB814
lbl_804FB814:
	.4byte 0x000C000D
	.4byte 0x000F0010
	.4byte 0x001A001F
	.4byte 0x00200026
	.4byte 0x0029002C
	.4byte 0x003000B3
	.4byte 0x00B700BB
	.4byte 0x00BC00BD
	.4byte 0x00C300C4
	.4byte 0x00CD00DB
	.4byte 0x016C016D
	.4byte 0x0171019E
	.4byte 0x02240225
	.4byte 0

.global lbl_804FB84C
lbl_804FB84C:
	.asciz "CUICfManager"
	.balign 4

.global lbl_804FB85C
lbl_804FB85C:
	.asciz "reslist<IUICf *>"
	.balign 4

.global lbl_804FB870
lbl_804FB870:
	.asciz "_reslist_base<IUICf *>"
	.balign 4

.global lbl_804FB888
lbl_804FB888:
	.asciz "CUICfManager::CTest"

.global lbl_804FB89C
lbl_804FB89C:
	.asciz "CTTask<CUICfManager::CTest>"

.global lbl_804FB8B8
lbl_804FB8B8:
	.asciz "CTTask<CUICfManager>"
	.balign 4

.global lbl_804FB8D0
lbl_804FB8D0:
	.asciz "cf::IFlagEvent"
	.balign 4


.global lbl_804FB8E0
lbl_804FB8E0:
	.asciz "%s"
	.asciz "arc"
	.asciz "battle_font01.brfna"
	.asciz "battle_font02.brfna"
	.asciz "battle_font03.brfna"
	.asciz "qst_genre"
	.asciz "JNL_playaward"
	.asciz "exp"
	.byte 0x00


.global lbl_804FB940
lbl_804FB940:
	# ROM: 0x4F7A40
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000056
	.4byte 0x0000001E
	.4byte 0x0000003A
	.4byte 0x00000057
	.4byte 0x0000000F
	.4byte 0x00000023
	.4byte 0x00000028
	.4byte 0x00000072
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x00000028
	.4byte 0x0000004B
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x00000028
	.4byte 0x00000028
	.4byte 0x0000001E
	.4byte 0
	.4byte 0x0000003C
	.4byte 0x00000027
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0000001E
	.4byte 0x00000028
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_804FB9B8
lbl_804FB9B8:
	.4byte 0x00000001
	.4byte 0x00560074
	.4byte 0x00AE0105
	.4byte 0x01140137
	.4byte 0x015F01D1
	.4byte 0x01D201F0
	.4byte 0x02180263
	.4byte 0x02720281
	.4byte 0x02A902D1
	.4byte 0x02EF032B
	.4byte 0x032B0352
	.4byte 0x0353037B
	.4byte 0x039903C1
	.4byte 0x03CA0000


.global lbl_804FB9F0
lbl_804FB9F0:
	# ROM: 0x4F7AF0
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x00000056
	.4byte 0x00000074
	.4byte 0x000000AE
	.4byte 0x00000105
	.4byte 0x00000114
	.4byte 0x00000137
	.4byte 0x0000015F
	.4byte 0x000001D1
	.4byte 0x000001D2
	.4byte 0x000001F0
	.4byte 0x00000218
	.4byte 0x00000263
	.4byte 0x00000272
	.4byte 0x00000281
	.4byte 0x000002A9
	.4byte 0x000002D1
	.4byte 0x000002EF
	.4byte 0xFFFFFFFF
	.4byte 0x0000032B
	.4byte 0x00000352
	.4byte 0x00000353
	.4byte 0x0000037B
	.4byte 0x00000399
	.4byte 0x000003C1
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FBA60
lbl_804FBA60:
	.4byte 0x00010203
	.4byte 0x04050607
	.4byte 0x08090A47
	.4byte 0x48494A4B
	.4byte 0x51525354
	.4byte 0xFF000000

.global lbl_804FBA78
lbl_804FBA78:
	.asciz "face_n01"
	.balign 4

.global lbl_804FBA84
lbl_804FBA84:
	.asciz "face_m01"
	.balign 4

.global lbl_804FBA90
lbl_804FBA90:
	.asciz "face_n02"
	.balign 4

.global lbl_804FBA9C
lbl_804FBA9C:
	.asciz "face_m02"
	.balign 4

.global lbl_804FBAA8
lbl_804FBAA8:
	.asciz "minimaplist0101"

.global lbl_804FBAB8
lbl_804FBAB8:
	.asciz "minimaplist0201"

.global lbl_804FBAC8
lbl_804FBAC8:
	.asciz "minimaplist0301"

.global lbl_804FBAD8
lbl_804FBAD8:
	.asciz "minimaplist0401"

.global lbl_804FBAE8
lbl_804FBAE8:
	.asciz "minimaplist0402"

.global lbl_804FBAF8
lbl_804FBAF8:
	.asciz "minimaplist0501"

.global lbl_804FBB08
lbl_804FBB08:
	.asciz "minimaplist0601"

.global lbl_804FBB18
lbl_804FBB18:
	.asciz "minimaplist0701"

.global lbl_804FBB28
lbl_804FBB28:
	.asciz "minimaplist0901"

.global lbl_804FBB38
lbl_804FBB38:
	.asciz "minimaplist1001"

.global lbl_804FBB48
lbl_804FBB48:
	.asciz "minimaplist1101"

.global lbl_804FBB58
lbl_804FBB58:
	.asciz "minimaplist1201"

.global lbl_804FBB68
lbl_804FBB68:
	.asciz "minimaplist1202"

.global lbl_804FBB78
lbl_804FBB78:
	.asciz "minimaplist1301"

.global lbl_804FBB88
lbl_804FBB88:
	.asciz "minimaplist1401"

.global lbl_804FBB98
lbl_804FBB98:
	.asciz "minimaplist1501"

.global lbl_804FBBA8
lbl_804FBBA8:
	.asciz "minimaplist1601"

.global lbl_804FBBB8
lbl_804FBBB8:
	.asciz "minimaplist1701"

.global lbl_804FBBC8
lbl_804FBBC8:
	.asciz "minimaplist1901"

.global lbl_804FBBD8
lbl_804FBBD8:
	.asciz "minimaplist2001"

.global lbl_804FBBE8
lbl_804FBBE8:
	.asciz "minimaplist2101"

.global lbl_804FBBF8
lbl_804FBBF8:
	.asciz "minimaplist2201"

.global lbl_804FBC08
lbl_804FBC08:
	.asciz "minimaplist2301"

.global lbl_804FBC18
lbl_804FBC18:
	.asciz "minimaplist2401"
	.4byte 0

	.4byte lbl_804FBAA8
	.4byte lbl_804FBAB8
	.4byte lbl_804FBAC8
	.4byte lbl_804FBAD8
	.4byte lbl_804FBAE8
	.4byte lbl_804FBAF8
	.4byte lbl_804FBB08
	.4byte lbl_804FBB18
	.4byte 0

	.4byte lbl_804FBB28
	.4byte lbl_804FBB38
	.4byte lbl_804FBB48
	.4byte lbl_804FBB58
	.4byte lbl_804FBB68
	.4byte lbl_804FBB78
	.4byte lbl_804FBB88
	.4byte lbl_804FBB98
	.4byte lbl_804FBBA8
	.4byte lbl_804FBBA8
	.4byte lbl_804FBBB8
	.4byte 0

	.4byte lbl_804FBBC8
	.4byte lbl_804FBBD8
	.4byte lbl_804FBBE8
	.4byte lbl_804FBBF8
	.4byte lbl_804FBC08
	.4byte lbl_804FBC18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_804FBCB0
lbl_804FBCB0:
	# ROM: 0x4F7DB0
	.4byte 0
	.4byte lbl_804FBAA8
	.4byte lbl_804FBAB8
	.4byte lbl_804FBAC8
	.4byte lbl_804FBAD8
	.4byte lbl_804FBAE8
	.4byte lbl_804FBAF8
	.4byte lbl_804FBB08
	.4byte lbl_804FBB18
	.4byte 0

	.4byte lbl_804FBB28
	.4byte lbl_804FBB38
	.4byte lbl_804FBB48
	.4byte lbl_804FBB58
	.4byte lbl_804FBB68
	.4byte lbl_804FBB78
	.4byte lbl_804FBB88
	.4byte lbl_804FBB98
	.4byte lbl_804FBBA8
	.4byte lbl_804FBBA8
	.4byte lbl_804FBBB8
	.4byte 0

	.4byte lbl_804FBBC8
	.4byte lbl_804FBBD8
	.4byte lbl_804FBBE8
	.4byte lbl_804FBBF8
	.4byte lbl_804FBC08
	.4byte lbl_804FBC18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_804FBD30
lbl_804FBD30:
	.asciz "minimaplist0801"

.global lbl_804FBD40
lbl_804FBD40:
	.asciz "minimaplist1801"
	.4byte 0

	.4byte lbl_804FBAA8
	.4byte lbl_804FBAB8
	.4byte lbl_804FBAC8
	.4byte lbl_804FBAD8
	.4byte lbl_804FBAE8
	.4byte lbl_804FBAF8
	.4byte lbl_804FBB08
	.4byte lbl_804FBB18
	.4byte lbl_804FBD30
	.4byte lbl_804FBB28
	.4byte lbl_804FBB38
	.4byte lbl_804FBB48
	.4byte lbl_804FBB58
	.4byte lbl_804FBB68
	.4byte lbl_804FBB78
	.4byte lbl_804FBB88
	.4byte lbl_804FBB98
	.4byte lbl_804FBBA8
	.4byte lbl_804FBBA8
	.4byte lbl_804FBBB8
	.4byte lbl_804FBD40
	.4byte lbl_804FBBC8
	.4byte lbl_804FBBD8
	.4byte lbl_804FBBE8
	.4byte lbl_804FBBF8
	.4byte lbl_804FBC08
	.4byte lbl_804FBC18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_804FBDD8
lbl_804FBDD8:
	# ROM: 0x4F7ED8
	.4byte 0
	.4byte lbl_804FBAA8
	.4byte lbl_804FBAB8
	.4byte lbl_804FBAC8
	.4byte lbl_804FBAD8
	.4byte lbl_804FBAE8
	.4byte lbl_804FBAF8
	.4byte lbl_804FBB08
	.4byte lbl_804FBB18
	.4byte 0

	.4byte lbl_804FBB28
	.4byte lbl_804FBB38
	.4byte lbl_804FBB48
	.4byte lbl_804FBB58
	.4byte lbl_804FBB68
	.4byte lbl_804FBB78
	.4byte lbl_804FBB88
	.4byte lbl_804FBB98
	.4byte lbl_804FBBA8
	.4byte lbl_804FBBA8
	.4byte lbl_804FBBB8
	.4byte 0

	.4byte lbl_804FBBC8
	.4byte lbl_804FBBD8
	.4byte lbl_804FBBE8
	.4byte lbl_804FBBF8
	.4byte lbl_804FBC08
	.4byte lbl_804FBC18
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_804FBE60
lbl_804FBE60:
	.float 1.5
	.4byte 0x40000000
	.float 1.7
	.float 1.7
	.4byte 0x406CCCCD
	.float 1.5
	.4byte 0x3FF33333
	.float 1.7
	.float 1.7
	.4byte 0x3FCCCCCD
	.float 1.5
	.float 1.7
	.float 1.7


.global lbl_804FBE94
lbl_804FBE94:
	.asciz "%s"
	.asciz "TXT"
	.asciz "%d"
	.asciz "%.1f"
	.asciz "mapID"
	.asciz "landmarklist"
	.asciz "rlt_lnd"
	.asciz "flg_s"
	.asciz "cnd_questID"
	.asciz "flg_famous"
	.asciz "cnd_famous"
	.asciz "npcmeetID1"
	.asciz "npcmeetID2"
	.asciz "flg_relate"
	.asciz "cnd_relate"
	.asciz "rlt_meet"
	.asciz "main_PC"
	.asciz "scenario_s"
	.asciz "scenario_e"
	.asciz "type"
	.asciz "FLD_valpoplist"
	.asciz "marker"
	.asciz "popTime"
	.asciz "wtrType"
	.asciz "OCLOCK_21"
	.asciz "OCLOCK_18"
	.asciz "OCLOCK_15"
	.asciz "OCLOCK_12"
	.asciz "OCLOCK_9"
	.asciz "OCLOCK_6"
	.asciz "OCLOCK_3"
	.asciz "OCLOCK_0"
	.asciz "quest_no"
	.asciz "quest"
	.asciz "select_no"
	.asciz "select"
	.asciz "popular_no"
	.asciz "popular"
	.asciz "npcmeet_no"
	.asciz "col6_h_no"
	.asciz "col6_h"
	.asciz "col6_k_no"
	.asciz "col6_k"
	.asciz "name"
	.asciz "MNU_name"
	.asciz "rlt_sex"
	.asciz "SYS_filelist"
	.asciz "filename"
	.asciz "%s.tpl"
	.asciz "SYS_iconlist"
	.asciz "filename_1"
	.asciz "filename_2"
	.asciz "itemType"
	.asciz "itemID"
	.asciz "rankType"
	.asciz "MNU_item"
	.asciz "%s%s"
	.asciz "CL6_uplist"
	.asciz "flg_s1"
	.asciz "JNL_PCrelatelist"
	.asciz "JNL_PClinelist"
	.asciz "minimap_origin"
	.asciz "minimap_rate"
	.asciz "height"
	.asciz "CL6_materiallist"
	.asciz "money"
	.asciz "material%d"
	.asciz "number%d"
	.balign 4

.global lbl_804FC110
lbl_804FC110:
	.asciz "CUIWindowManager"
	.balign 4

.global lbl_804FC124
lbl_804FC124:
	.asciz "reslist<IUIWindow *>"
	.balign 4

.global lbl_804FC13C
lbl_804FC13C:
	.asciz "_reslist_base<IUIWindow *>"
	.balign 4

.global lbl_804FC158
lbl_804FC158:
	.asciz "CUIWindowManager::CTest"

.global lbl_804FC170
lbl_804FC170:
	.asciz "CTTask<CUIWindowManager::CTest>"

.global lbl_804FC190
lbl_804FC190:
	.asciz "CTTask<CUIWindowManager>"
	.balign 4


.global lbl_804FC1AC
lbl_804FC1AC:
	.asciz "qst_genre"
	.asciz "landmarklist"
	.asciz "mapID"
	.balign 4
	.4byte 0


.global lbl_804FC1D0
lbl_804FC1D0:
	# ROM: 0x4F82D0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000056
	.4byte 0x00000074
	.4byte 0x000000AE
	.4byte 0x00000105
	.4byte 0x00000114
	.4byte 0x00000137
	.4byte 0x0000015F
	.4byte 0x000001D1
	.4byte 0x000001D2
	.4byte 0x000001F0
	.4byte 0x00000218
	.4byte 0x00000263
	.4byte 0x00000272
	.4byte 0x00000281
	.4byte 0x000002A9
	.4byte 0x000002D1
	.4byte 0x000002EF
	.4byte 0
	.4byte 0x0000032B
	.4byte 0x00000352
	.4byte 0x00000353
	.4byte 0x0000037B
	.4byte 0x00000399
	.4byte 0x000003C1
	.4byte 0
	.4byte 0
.global lbl_804FC240
lbl_804FC240:
	.4byte 0x0000006F
	.4byte 0x00000070
	.4byte 0x00000079
	.4byte 0x0000007A
	.4byte 0x00000083
	.4byte 0x00000084
	.4byte 0x0000008D
	.4byte 0x0000008E


.global lbl_804FC260
lbl_804FC260:
	# ROM: 0x4F8360
	.4byte 0x0000006F
	.4byte 0x00000070
	.4byte 0x00000079
	.4byte 0x0000007A
	.4byte 0x00000083
	.4byte 0x00000084
	.4byte 0x0000008D
	.4byte 0x0000008E


.global lbl_804FC280
lbl_804FC280:
	.asciz "rlt_meet"
	.asciz "itemType"
	.asciz "qst_genre"
	.asciz "non_auto"
	.asciz "title"
	.asciz "no_map"
	.asciz "npc_id"
	.asciz "mes_refuse"
	.asciz "flg_s"
	.asciz "cnd_questID"
	.asciz "flg_famous"
	.asciz "cnd_famous"
	.asciz "npcmeetID1"
	.asciz "npcmeetID2"
	.asciz "flg_relate"
	.asciz "cnd_relate"
	.asciz "up_questID"
	.asciz "up_questID2"
	.asciz "no_report"
	.asciz "type_succ_A1"
	.asciz "cnd_succ_A1"
	.asciz "num_succ_A1"
	.asciz "flg_relate_A1"
	.asciz "up_relate_A1"
	.asciz "order_succ_A"
	.asciz "up_famous_A"
	.asciz "reward_A1"
	.asciz "reward_A2"
	.asciz "reward_A3"
	.asciz "type_succ_A2"
	.asciz "cnd_succ_A2"
	.asciz "num_succ_A2"
	.asciz "flg_relate_A2"
	.asciz "up_relate_A2"
	.asciz "type_succ_A3"
	.asciz "cnd_succ_A3"
	.asciz "num_succ_A3"
	.asciz "flg_relate_A3"
	.asciz "up_relate_A3"
	.asciz "type_succ_A4"
	.asciz "cnd_succ_A4"
	.asciz "num_succ_A4"
	.asciz "flg_relate_A4"
	.asciz "up_relate_A4"
	.asciz "type_succ_B1"
	.asciz "cnd_succ_B1"
	.asciz "num_succ_B1"
	.asciz "flg_relate_B1"
	.asciz "up_relate_B1"
	.asciz "order_succ_B"
	.asciz "up_famous_B"
	.asciz "reward_B1"
	.asciz "reward_B2"
	.asciz "reward_B3"
	.asciz "type_succ_B2"
	.asciz "cnd_succ_B2"
	.asciz "num_succ_B2"
	.asciz "flg_relate_B2"
	.asciz "up_relate_B2"
	.asciz "type_succ_B3"
	.asciz "cnd_succ_B3"
	.asciz "num_succ_B3"
	.asciz "flg_relate_B3"
	.asciz "up_relate_B3"
	.asciz "type_succ_B4"
	.asciz "cnd_succ_B4"
	.asciz "num_succ_B4"
	.asciz "flg_relate_B4"
	.asciz "up_relate_B4"
	.balign 4

.global lbl_804FC5A8
lbl_804FC5A8:
	.asciz "JNL_quest0000"
	.balign 4

.global lbl_804FC5B8
lbl_804FC5B8:
	.asciz "JNL_quest0101"
	.balign 4

.global lbl_804FC5C8
lbl_804FC5C8:
	.asciz "JNL_quest0201"
	.balign 4

.global lbl_804FC5D8
lbl_804FC5D8:
	.asciz "JNL_quest0301"
	.balign 4

.global lbl_804FC5E8
lbl_804FC5E8:
	.asciz "JNL_quest0401"
	.balign 4

.global lbl_804FC5F8
lbl_804FC5F8:
	.asciz "JNL_quest0402"
	.balign 4

.global lbl_804FC608
lbl_804FC608:
	.asciz "JNL_quest0501"
	.balign 4

.global lbl_804FC618
lbl_804FC618:
	.asciz "JNL_quest0601"
	.balign 4

.global lbl_804FC628
lbl_804FC628:
	.asciz "JNL_quest0701"
	.balign 4

.global lbl_804FC638
lbl_804FC638:
	.asciz "JNL_quest0801"
	.balign 4

.global lbl_804FC648
lbl_804FC648:
	.asciz "JNL_quest0901"
	.balign 4

.global lbl_804FC658
lbl_804FC658:
	.asciz "JNL_quest1001"
	.balign 4

.global lbl_804FC668
lbl_804FC668:
	.asciz "JNL_quest1101"
	.balign 4

.global lbl_804FC678
lbl_804FC678:
	.asciz "JNL_quest1201"
	.balign 4

.global lbl_804FC688
lbl_804FC688:
	.asciz "JNL_quest1202"
	.balign 4

.global lbl_804FC698
lbl_804FC698:
	.asciz "JNL_quest1301"
	.balign 4

.global lbl_804FC6A8
lbl_804FC6A8:
	.asciz "JNL_quest1401"
	.balign 4

.global lbl_804FC6B8
lbl_804FC6B8:
	.asciz "JNL_quest1501"
	.balign 4

.global lbl_804FC6C8
lbl_804FC6C8:
	.asciz "JNL_quest1601"
	.balign 4

.global lbl_804FC6D8
lbl_804FC6D8:
	.asciz "JNL_quest1701"
	.balign 4

.global lbl_804FC6E8
lbl_804FC6E8:
	.asciz "JNL_quest1801"
	.balign 4

.global lbl_804FC6F8
lbl_804FC6F8:
	.asciz "JNL_quest1901"
	.balign 4

.global lbl_804FC708
lbl_804FC708:
	.asciz "JNL_quest2001"
	.balign 4

.global lbl_804FC718
lbl_804FC718:
	.asciz "JNL_quest2101"
	.balign 4

.global lbl_804FC728
lbl_804FC728:
	.asciz "JNL_quest2201"
	.balign 4

.global lbl_804FC738
lbl_804FC738:
	.asciz "JNL_quest2301"
	.balign 4

.global lbl_804FC748
lbl_804FC748:
	.asciz "JNL_quest2401"
	.balign 4


.global lbl_804FC758
lbl_804FC758:
	# ROM: 0x4F8858
	.4byte lbl_804FC5A8
	.4byte lbl_804FC5B8
	.4byte lbl_804FC5C8
	.4byte lbl_804FC5D8
	.4byte lbl_804FC5E8
	.4byte lbl_804FC5F8
	.4byte lbl_804FC608
	.4byte lbl_804FC618
	.4byte lbl_804FC628
	.4byte lbl_804FC638
	.4byte lbl_804FC648
	.4byte lbl_804FC658
	.4byte lbl_804FC668
	.4byte lbl_804FC678
	.4byte lbl_804FC688
	.4byte lbl_804FC698
	.4byte lbl_804FC6A8
	.4byte lbl_804FC6B8
	.4byte lbl_804FC6C8
	.4byte lbl_804FC6C8
	.4byte lbl_804FC6D8
	.4byte lbl_804FC6E8
	.4byte lbl_804FC6F8
	.4byte lbl_804FC708
	.4byte lbl_804FC718
	.4byte lbl_804FC728
	.4byte lbl_804FC738
	.4byte lbl_804FC748

.global lbl_804FC7C8
lbl_804FC7C8:
	.asciz "cf::CfBdat"
	.balign 4


.global lbl_804FC7D4
lbl_804FC7D4:
	.asciz "BTL_pclist"
	.asciz "BTL_enelist"
	.asciz "BTL_skilllist"
	.asciz "BTL_growlist"
	.asciz "BTL_bufflist"
	.asciz "FLD_pointlist"
	.asciz "FLD_tboxlist"
	.asciz "BTL_camlist"
	.asciz "BTL_camdatalist"
	.asciz "BTL_crystalnamelist"
	.asciz "MNU_item"
	.asciz "FLD_npclist"
	.asciz "FLD_maplist"
	.asciz "landmarklist"
	.asciz "FLD_valpoplist"
	.asciz "FLD_dmobjlist"
	.asciz "ITM_itemlist"
	.asciz "ITM_wpnlist"
	.asciz "ITM_equiplist"
	.asciz "ITM_crystallist"
	.asciz "ITM_dropcrystallist"
	.asciz "ITM_collectlist"
	.asciz "ITM_materiallist"
	.asciz "ITM_valuablelist"
	.asciz "ITM_artslist"
	.asciz "ITM_headlist"
	.asciz "ITM_bodylist"
	.asciz "ITM_armlist"
	.asciz "ITM_waistlist"
	.asciz "ITM_legglist"
	.asciz "BTL_PSVskill"
	.asciz "BTL_PSVlink"
	.asciz "BTL_PSSlist"
	.asciz "routelist%02d%02d"
	.asciz "mapefflist%02d%02d"
	.asciz "mapobjlist%02d%02d"
	.asciz "maplodlist%02d%02d"
	.asciz "mapselist%02d%02d"
	.asciz "FLD_GimCamList%02d%02d"
	.asciz "Litemlist%02d%02d"
	.asciz "extalklist%02d%02d"
	.asciz "minelist%02d%02d"
	.asciz "BTL_enelist%02d%02d"
	.asciz "Gimlist%02d%02d"
	.asciz "FieldLock%02d%02d"
	.asciz "ElvGm%02d%02d"
	.asciz "WarpGm%02d%02d"
	.asciz "JumpGm%02d%02d"
	.asciz "ItemGm%02d%02d"
	.asciz "GimSVoff%02d%02d"
	.asciz "GimEne%02d%02d"
	.asciz "GimMess%02d%02d"
	.asciz "drop_nmllist%02d%02d"
	.asciz "drop_rarlist%02d%02d"
	.asciz "drop_sprlist%02d%02d"
	.asciz "resource"
	.asciz "posX"
	.asciz "posY"
	.asciz "posZ"
	.asciz "pc%d"
	.asciz "parts"
	.asciz "bat_mount"
	.asciz "def_mount"
	.asciz "name"
	.asciz "itemType"
	.asciz "itemID"
	#未定義アイテム
	.byte 0x96
	.4byte 0xA292E88B
	.4byte 0x60834183
	.4byte 0x43836583
	.2byte 0x8000
	.asciz "common/jp/bdat_eve.bin"
	.asciz "MNU_eve_start"
	.asciz "MNU_eve_table"
	.balign 4
	.4byte 0

.global lbl_804FCBB8
lbl_804FCBB8:
	.asciz "face_n01"
	.balign 4

.global lbl_804FCBC4
lbl_804FCBC4:
	.asciz "face_m01"
	.balign 4

.global lbl_804FCBD0
lbl_804FCBD0:
	.asciz "face_n02"
	.balign 4

.global lbl_804FCBDC
lbl_804FCBDC:
	.asciz "face_m02"
	.balign 4

.global lbl_804FCBE8
lbl_804FCBE8:
	.asciz "CMenuUpdate"
	.4byte 0


.global lbl_804FCBF8
lbl_804FCBF8:
	.asciz "CMenuUpdate"
	.asciz "mf70_cf52_sideinfo.brlyt"
	.asciz "mf70_cf52_sideinfo_in.brlan"
	.asciz "mf70_cf52_sideinfo_kizuna_in.brlan"
	.asciz "help"
	.asciz "%s.tpl"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "MNU_kyeassign"
	.asciz "pic_button_q"
	.asciz "pic_button_g"
	.asciz "pic_button_b"
	.asciz "txt_kakunin_q"
	.asciz "txt_kakunin_g"
	.asciz "txt_kakunin_b"
	.asciz "nul_kizuna"
	.asciz "nul_quest"
	.asciz "nul_gram"
	.asciz "nul_buf"
	.asciz "mf70_cf52_sideinfo03.tpl"
	.asciz "pic_icon_g"
	.asciz "mf00_com12_face_area"
	.asciz "SYS_filelist"
	.asciz "filename"
	.asciz "pic_face00"
	.asciz "pic_face01"
	.asciz "mf00_com12_face_area01.tpl"
	.asciz "mf00_com12_face_area02.tpl"
	.asciz "mf00_com12_face_area03.tpl"
	.asciz "mf00_com12_face_area04.tpl"
	.asciz "mf00_com12_face_area05.tpl"
	.asciz "nul_anim_b"
	.asciz "nul_anim_g"
	.asciz "pic_kiz_b"
	.asciz "pic_rp_b"
	.asciz "mf00_com00_rp03.tpl"
	.asciz "mf00_com00_rp02.tpl"
	.asciz "mf00_com00_rp01.tpl"
	.asciz "pic_kiz_g"
	.asciz "pic_rp_g"
	.asciz "mf00_com00_rp00.tpl"
	.asciz "mf00_com00_rp04.tpl"
	.asciz "JNL_PCrelatelist"
	.asciz "flg_s1"
	.asciz "JNL_PClinelist"
	.asciz "mf00_com00_kizp04.tpl"
	.asciz "mf00_com00_kizp02.tpl"
	.asciz "mf00_com00_kizp01.tpl"
	.asciz "mf00_com00_kizp00.tpl"
	.asciz "mf00_com00_kizp03.tpl"
	.asciz "txt_buf"
	.asciz "name"
	.asciz "mf00_reg00_tut.tpl"

.global lbl_804FCF40
lbl_804FCF40:
	.asciz "CMenuLandTelop"
	.balign 4


.global lbl_804FCF50
lbl_804FCF50:
	.asciz "landmarklist"
	.asciz "getEXP"
	.asciz "category"
	.asciz "getAP"
	.asciz "getPP"
	.asciz "snd/adx/j04.adx"
	.asciz "snd/adx/j05.adx"
	.asciz "snd/adx/j03.adx"
	.asciz "CMenuLandTelop"
	.asciz "mf70_cf60_syswin11.brlyt"
	.asciz "mf70_cf60_syswin11_land_mes.brlan"
	.asciz "nul_land00"
	.asciz "nul_land01"
	.asciz "nul_land02"
	.asciz "MNU_update"
	.asciz "info"
	.asciz "txt_head00"
	.asciz "name"
	.asciz "txt_land00"
	.asciz "txt_head01"
	.asciz "txt_land01"
	.asciz "txt_head02"
	.asciz "txt_land02"
	.asciz "mf70_cf51_sideinfo.brlyt"
	.asciz "mf70_cf51_sideinfo_in.brlan"
	.asciz "pic_landmark"
	.asciz "pic_secret"
	.asciz "pic_area"
	.asciz "txt_landmark"
	.asciz "txt_area"
	.balign 4


.global lbl_804FD0D8
lbl_804FD0D8:
	.asciz "name_dbg"
	.asciz "name"
	.byte 0x00
	.asciz "elem"
	.4byte 0

.global lbl_804FD0F0
lbl_804FD0F0:
	.asciz "CMenuGetItem"
	.balign 4


.global lbl_804FD100
lbl_804FD100:
	.asciz "CMenuGetItem"
	.asciz "mf70_cf50_sideinfo.brlyt"
	.asciz "mf70_cf50_sideinfo_in.brlan"
	.asciz "pic_title"
	.asciz "pic_title01"
	.asciz "pic_title02"
	.asciz "MNU_battle"
	.asciz "name"
	.asciz "JNL_playaward"
	.asciz "title"
	.asciz "exp"
	.asciz "txt_item"
	.asciz "%s"


.global lbl_804FD198
lbl_804FD198:
	# ROM: 0x4F9298
	.byte 0x00
	.asciz "arm_type"
	.balign 4
	.4byte 0


.global lbl_804FD1A8
lbl_804FD1A8:
	# ROM: 0x4F92A8
	.float 6.5
	.float 8.0
	.float 10.0
	.4byte 0x41480000
	.4byte 0x41700000
	.4byte 0


.global lbl_804FD1C0
lbl_804FD1C0:
	# ROM: 0x4F92C0
	.4byte 0x40400000
	.4byte 0x40800000
	.4byte 0x40B00000
	.4byte 0x40E00000
	.4byte 0x41080000
	.float 10.0


.global lbl_804FD1D8
lbl_804FD1D8:
	# ROM: 0x4F92D8
	.float 1.0
	.4byte 0x3F99999A
	.float 1.5
	.4byte 0x3FE66666
	.4byte 0x40066666
	.4byte 0x4019999A


.global lbl_804FD1F0
lbl_804FD1F0:
	# ROM: 0x4F92F0
	.4byte 0
	.4byte 0
	.4byte 0x40400000
	.4byte 0x40A00000
	.float 10.0
	.4byte 0x41700000


.global lbl_804FD208
lbl_804FD208:
	# ROM: 0x4F9308
	.4byte 0
	.4byte 0
	.4byte 0x00000100
	.4byte 0x00000020
	.4byte 0
	.4byte 0
	.4byte 0x00000020
	.4byte 0x00000100
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000020
	.4byte 0x00000100


.global lbl_804FD268
lbl_804FD268:
	.asciz "cf::CAttackSet"
	.balign 4

.global lbl_804FD278
lbl_804FD278:
	.asciz "cf::_sAttackSet"

.global lbl_804FD288
lbl_804FD288:
	.asciz "cf::CArtsSet"
	.balign 4

.global lbl_804FD298
lbl_804FD298:
	.asciz "cf::_sArtsSet"
	.balign 4

.global lbl_804FD2A8
lbl_804FD2A8:
	.asciz "cf::CArtsParam"
	.balign 4

.global lbl_804FD2B8
lbl_804FD2B8:
	.asciz "cf::CAttackParam"
	.balign 4
	.4byte 0

.global lbl_804FD2D0
lbl_804FD2D0:
	.asciz "qst_name"
	.balign 4

.global lbl_804FD2DC
lbl_804FD2DC:
	.asciz "percent_E"
	.balign 4

.global lbl_804FD2E8
lbl_804FD2E8:
	.asciz "percent_D"
	.balign 4

.global lbl_804FD2F4
lbl_804FD2F4:
	.asciz "percent_C"
	.balign 4

.global lbl_804FD300
lbl_804FD300:
	.asciz "percent_B"
	.balign 4

.global lbl_804FD30C
lbl_804FD30C:
	.asciz "percent_A"
	.balign 4

.global lbl_804FD318
lbl_804FD318:
	.asciz "percent_S"
	.balign 4

.global lbl_804FD324
lbl_804FD324:
	.asciz "jwl_skill1"
	.balign 4

.global lbl_804FD330
lbl_804FD330:
	.asciz "crystal1"
	.balign 4

.global lbl_804FD33C
lbl_804FD33C:
	.asciz "crystal1Per"

.global lbl_804FD348
lbl_804FD348:
	.asciz "wpn1_slot"
	.balign 4

.global lbl_804FD354
lbl_804FD354:
	.asciz "uni_wpn1"
	.balign 4

.global lbl_804FD360
lbl_804FD360:
	.asciz "uni_wpn1Per"

.global lbl_804FD36C
lbl_804FD36C:
	.asciz "equip1Per"
	.balign 4

.global lbl_804FD378
lbl_804FD378:
	.asciz "equip1_slot"

.global lbl_804FD384
lbl_804FD384:
	.asciz "uni_equip1"
	.balign 4

.global lbl_804FD390
lbl_804FD390:
	.asciz "uni_equip1Per"
	.balign 4

.global lbl_804FD3A0
lbl_804FD3A0:
	.asciz "arts1Per"
	.balign 4

.global lbl_804FD3AC
lbl_804FD3AC:
	.asciz "materia1"
	.balign 4

.global lbl_804FD3B8
lbl_804FD3B8:
	.asciz "materia1Per"

.global lbl_804FD3C4
lbl_804FD3C4:
	.asciz "cf::ItemPurifyKessyouImpl"
	.balign 4

.global lbl_804FD3E0
lbl_804FD3E0:
	.asciz "cf::ItemKessyouImpl"

.global lbl_804FD3F4
lbl_804FD3F4:
	.asciz "cf::ItemPurifyCrystalImpl"
	.balign 4

.global lbl_804FD410
lbl_804FD410:
	.asciz "cf::ItemDropCrystalImpl"

.global lbl_804FD428
lbl_804FD428:
	.asciz "cf::ItemCrystalImpl"

.global lbl_804FD43C
lbl_804FD43C:
	.asciz "cf::ItemEquipImpl"
	.balign 4

.global lbl_804FD450
lbl_804FD450:
	.asciz "cf::ItemConsImpl"
	.balign 4

.global lbl_804FD464
lbl_804FD464:
	.asciz "cf::ItemDummyImpl"
	.balign 4

.global lbl_804FD478
lbl_804FD478:
	.asciz "cf::ItemImpl"
	.balign 4


.global lbl_804FD488
lbl_804FD488:
	.asciz "drop_nml"
	.asciz "drop_rar"
	.asciz "drop_spr"
	.asciz "drop_nml_per"
	.asciz "drop_rar_per"
	.asciz "drop_spr_per"
	.asciz "percent"
	.asciz "itemID"
	.asciz "rankType"
	.asciz "jwl_slot"
	.balign 4
	.asciz "crs_type"
	.asciz "atr_type"
	.asciz "rank_type_low"
	.asciz "rank_type_up"
	.asciz "skill_max"
	.asciz "rank"
	.asciz "cylinder"
	.asciz "skill1"
	.asciz "skill2"
	.asciz "named"
	.asciz "itemType"
	#エーテル鉱石
	.byte 0x83, 0x47
	.4byte 0x815B8365
	.4byte 0x838B8D7A
	.2byte 0x90CE
	.byte 0x00
	.asciz "name"
	.asciz "qst_name"
	.asciz "cylinder_name"
	.asciz "c_name_id"
	.asciz "equip_per"
	.asciz "wpn_per"
	.asciz "crystal_per"
	.asciz "arts_per"
	.asciz "uni_wpn_per"
	.asciz "uni_equip_per"
	.asciz "gimID"
	.asciz "itm%dID"


.global lbl_804FD5D0
lbl_804FD5D0:
	# ROM: 0x4F96D0
	.4byte 0x00000001
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x00000001
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010100
	.4byte 0x00010101
	.4byte 0x01010101


.global lbl_804FD5FC
lbl_804FD5FC:
	# ROM: 0x4F96FC
	.4byte 0x00000002
	.4byte 0x02020202
	.4byte 0x02020000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_804FD628
lbl_804FD628:
	# ROM: 0x4F9728
	.4byte 0x02020101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01000000
	.4byte 0x00010101
	.4byte 0x01010101
	.4byte 0x01010102
	.4byte 0x02020101
	.4byte 0x01000101
	.4byte 0x02020201
	.4byte 0

.global lbl_804FD658
lbl_804FD658:
	.asciz "cf::CCharEffect"


.global lbl_804FD668
lbl_804FD668:
	.asciz "en014911"
	.balign 4
	.4byte 0


.global lbl_804FD678
lbl_804FD678:
	# ROM: 0x4F9778
	.4byte 0x00790051
	.4byte 0x00650201
	.4byte 0x02020203
	.4byte 0x02040205
	.4byte 0x0206020F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000A7
	.4byte 0x00A60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00550056
	.4byte 0x00570052
	.4byte 0x00590058
	.4byte 0x02460000
	.4byte 0
	.4byte 0
	.4byte 0x005A0054
	.4byte 0x00530000

.global lbl_804FD6D0
lbl_804FD6D0:
	.asciz "cf::CCharEffectEne"
	.balign 4
	.4byte 0


.global lbl_804FD6E8
lbl_804FD6E8:
	# ROM: 0x4F97E8
	.4byte 0x007B0051
	.4byte 0x00650000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000A7
	.4byte 0x00A60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00550056
	.4byte 0x00570052
	.4byte 0x00590058
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005A0054
	.4byte 0x00530000

.global lbl_804FD740
lbl_804FD740:
	.asciz "cf::CCharEffectNpc"
	.balign 4
	.4byte 0


.global lbl_804FD758
lbl_804FD758:
	# ROM: 0x4F9858
	.4byte 0x00790051
	.4byte 0x00650000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000A7
	.4byte 0x00A60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00550056
	.4byte 0x00570052
	.4byte 0x00590058
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005A0054
	.4byte 0x00530000

.global lbl_804FD7B0
lbl_804FD7B0:
	.asciz "cf::CCharEffectObj"
	.balign 4
	.4byte 0


.global lbl_804FD7C8
lbl_804FD7C8:
	# ROM: 0x4F98C8
	.4byte 0x007B0051
	.4byte 0x00650000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x020B020B
	.4byte 0x02150215
	.4byte 0x02290229
	.4byte 0x000000A7
	.4byte 0x00A60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00550056
	.4byte 0x00570052
	.4byte 0x00590058
	.4byte 0
	.4byte 0x00000031
	.4byte 0
	.4byte 0x005A0054
	.4byte 0x00530000

.global lbl_804FD820
lbl_804FD820:
	.asciz "cf::CCharEffectPc"
	.balign 4
	.4byte 0

.global lbl_804FD838
lbl_804FD838:
	.asciz "/menu/Col6Sys.arc"
	.balign 4

.global lbl_804FD84C
lbl_804FD84C:
	.asciz "CCol6Invite"

.global lbl_804FD858
lbl_804FD858:
	.asciz "CCol6System"

.global lbl_804FD864
lbl_804FD864:
	.asciz "CCol6Hint"
	.balign 4

.global lbl_804FD870
lbl_804FD870:
	.asciz "CCol6CheckBat"
	.balign 4


.global lbl_804FD880
lbl_804FD880:
	.asciz "MNU_col6"
	.asciz "name"
	.asciz "txt_%02d"
	.asciz "nul_proportion"
	.asciz "CL6_hintlist"
	.asciz "U_ID"
	.asciz "CCol6Hint"
	.asciz "arc"
	.asciz "mf35_rv00.brlyt"
	.asciz "mf35_rv00_in.brlan"
	.asciz "mf35_rv00_info_in.brlan"
	.asciz "txt_title"
	.asciz "txt_help"
	.asciz "nul_inf01"
	.asciz "flag"
	.asciz "title"
	.asciz "nul_sel%02d"
	.asciz "%s<n>%s"
	.asciz "CL6_rwdlist"
	.asciz "itemID"
	.asciz "CCol6System"
	.asciz "mf35_rv00_next.brlan"
	.asciz "mf35_rv00_out.brlan"
	.asciz "txt_now02"
	.asciz "txt_now_val01"
	.asciz "txt_now_val02"
	.asciz "txt_num01"
	.asciz "txt_num02"
	.asciz "txt_num03"
	.asciz "txt_num04"
	.asciz "txt_mat_val01"
	.asciz "txt_mat_val02"
	.asciz "txt_mat_val03"
	.asciz "txt_mat_val04"
	.asciz "txt_mat_val05"
	.asciz "txt_gold00"
	.asciz "txt_gold01"
	.asciz "txt_mat_val01_01"
	.asciz "txt_mat_val02_01"
	.asciz "txt_mat_val03_01"
	.asciz "txt_mat_val04_01"
	.asciz "txt_mat_val05_01"
	.asciz "txt_gold00_01"
	.asciz "txt_gold01_01"
	.asciz "txt_04"
	.balign 4
	.asciz "txt_05"
	.asciz "txt_mes"
	.asciz "txt_sel05"
	.asciz "txt_material"
	.asciz "txt_material_01"
	.asciz "txt_num%02d"
	.asciz "txt_lv%02d"
	.asciz "txt_sel%02d"
	.asciz "txt_now"
	.asciz "txt_now01"
	.asciz "help"
	.asciz "txt_now03"
	.asciz "txt_now04"
	.asciz "txt_now05"
	.asciz "txt_now06"
	.asciz "txt_comment"
	.asciz "CL6_materiallist"
	.asciz "money"
	.asciz "MNU_item"
	.asciz "txt_material%02d"
	.asciz "txt_mat_val%02d"
	.asciz "txt_mat_val%02d_01"
	.asciz "material%d"
	.asciz "number%d"
	.asciz "CL6_uplist"
	.asciz "rev_LV"
	.asciz "rev_people"
	.asciz "rev_effflag1"
	.asciz "rev_selflag"
	.asciz "rev_qstflag"
	.asciz "rev_sound"
	.asciz "rev_cam1x"
	.asciz "rev_cam1y"
	.asciz "rev_cam1z"
	.asciz "rev_cam1rx"
	.asciz "rev_cam1ry"
	.asciz "rev_cam2x"
	.asciz "rev_cam2y"
	.asciz "rev_cam2z"
	.asciz "rev_cam2rx"
	.asciz "rev_cam2ry"
	.asciz "rev_cam2flm"
	.asciz "rev_cam2key"
	.asciz "rev_cam3x"
	.asciz "rev_cam3y"
	.asciz "rev_cam3z"
	.asciz "rev_cam3rx"
	.asciz "rev_cam3ry"
	.asciz "rev_cam4x"
	.asciz "rev_cam4y"
	.asciz "rev_cam4z"
	.asciz "rev_cam4rx"
	.asciz "rev_cam4ry"
	.asciz "rev_cam4flm"
	.asciz "rev_cam4key"
	.asciz "%s<n>%s<n>%s +%d<n>%s +%d"
	.balign 4
	.4byte 0

.global lbl_804FDD20
lbl_804FDD20:
	.4byte 0x00003E80
	.4byte 0
	.4byte 0x00004A38
	.4byte 0x00000168
	.4byte 0x00006978
	.4byte 0x0000003C
	.4byte 0x00007530
	.4byte 0x00000168
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDD48
lbl_804FDD48:
	.4byte 0x00003E80
	.4byte 0
	.4byte 0x00004268
	.4byte 0x00000168
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDD60
lbl_804FDD60:
	.4byte 0x00003E80
	.4byte 0
	.4byte 0x00004A38
	.4byte 0x000001C2
	.4byte 0x00006978
	.4byte 0x0000005A
	.4byte 0x00007530
	.4byte 0x0000012C
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDD88
lbl_804FDD88:
	.4byte 0x00004268
	.4byte 0
	.4byte 0x00004A38
	.4byte 0x00000186
	.4byte 0x00006978
	.4byte 0x0000005A
	.4byte 0x00007530
	.4byte 0x0000012C
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDDB0
lbl_804FDDB0:
	.4byte 0x00004268
	.4byte 0
	.4byte 0x00004A38
	.4byte 0x0000014A
	.4byte 0x00006978
	.4byte 0x0000003C
	.4byte 0x00007530
	.4byte 0x0000012C
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDDD8
lbl_804FDDD8:
	.4byte 0x00003A98
	.4byte 0
	.4byte 0x00004A38
	.4byte 0x000001E0
	.4byte 0x00006978
	.4byte 0x0000003C
	.4byte 0x00007530
	.4byte 0x000000F0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDE00
lbl_804FDE00:
	.4byte 0x00004E20
	.4byte 0
	.4byte 0x00005208
	.4byte 0x000001E0
	.4byte 0x00006978
	.4byte 0x0000003C
	.4byte 0x00007530
	.4byte 0x000000F0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDE28
lbl_804FDE28:
	.4byte 0x00003E80
	.4byte 0
	.4byte 0x00004268
	.4byte 0x0000012C
	.4byte 0x00004975
	.4byte 0x0000012C
	.4byte 0x00004F4C
	.4byte 0x0000012C
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDE50
lbl_804FDE50:
	.4byte 0x00005208
	.4byte 0
	.4byte 0x000055F0
	.4byte 0x0000003C
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDE68
lbl_804FDE68:
	.4byte 0x00005208
	.4byte 0
	.4byte 0x000055F0
	.4byte 0x0000003C
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDE80
lbl_804FDE80:
	.4byte 0x00003E80
	.4byte 0
	.4byte 0x00004A38
	.4byte 0x00000168
	.4byte 0x00006978
	.4byte 0x0000003C
	.4byte 0x00007530
	.4byte 0x00000168
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDEA8
lbl_804FDEA8:
	.4byte 0x00003E80
	.4byte 0
	.4byte 0x00004268
	.4byte 0x00000168
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDEC0
lbl_804FDEC0:
	.4byte 0x00003E80
	.4byte 0
	.4byte 0x00004A38
	.4byte 0x00000168
	.4byte 0x00006978
	.4byte 0x0000003C
	.4byte 0x00007530
	.4byte 0x00000168
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDEE8
lbl_804FDEE8:
	.4byte 0x00004650
	.4byte 0
	.4byte 0x00004844
	.4byte 0x0000012C
	.4byte 0x00004E20
	.4byte 0x00000078
	.4byte 0x00006978
	.4byte 0x0000001E
	.4byte 0x00007530
	.4byte 0x0000014A
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDF18
lbl_804FDF18:
	.4byte 0x00003E80
	.4byte 0
	.4byte 0x00004A38
	.4byte 0x00000168
	.4byte 0x00006978
	.4byte 0x0000003C
	.4byte 0x00007530
	.4byte 0x00000168
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDF40
lbl_804FDF40:
	.4byte 0x00003E80
	.4byte 0
	.4byte 0x00004A38
	.4byte 0x00000168
	.4byte 0x00006978
	.4byte 0x0000003C
	.4byte 0x00007530
	.4byte 0x00000168
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDF68
lbl_804FDF68:
	.4byte 0x00003E80
	.4byte 0
	.4byte 0x00004268
	.4byte 0x00000168
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDF80
lbl_804FDF80:
	.4byte 0x0000157C
	.4byte 0
	.4byte 0x0000733C
	.4byte 0x00001964
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_804FDF98
lbl_804FDF98:
	.asciz "01000000"
	.balign 4

.global lbl_804FDFA4
lbl_804FDFA4:
	.asciz "01040100"
	.balign 4

.global lbl_804FDFB0
lbl_804FDFB0:
	.asciz "01050100"
	.balign 4

.global lbl_804FDFBC
lbl_804FDFBC:
	.asciz "01090010"
	.balign 4

.global lbl_804FDFC8
lbl_804FDFC8:
	.asciz "01110100"
	.balign 4

.global lbl_804FDFD4
lbl_804FDFD4:
	.asciz "01140100"
	.balign 4

.global lbl_804FDFE0
lbl_804FDFE0:
	.asciz "01170100"
	.balign 4

.global lbl_804FDFEC
lbl_804FDFEC:
	.asciz "01180100"
	.balign 4

.global lbl_804FDFF8
lbl_804FDFF8:
	.asciz "01230100"
	.balign 4

.global lbl_804FE004
lbl_804FE004:
	.asciz "01240050"
	.balign 4

.global lbl_804FE010
lbl_804FE010:
	.asciz "01270100"
	.balign 4

.global lbl_804FE01C
lbl_804FE01C:
	.asciz "01290100"
	.balign 4

.global lbl_804FE028
lbl_804FE028:
	.asciz "02010100"
	.balign 4

.global lbl_804FE034
lbl_804FE034:
	.asciz "02100100"
	.balign 4

.global lbl_804FE040
lbl_804FE040:
	.asciz "02140100"
	.balign 4

.global lbl_804FE04C
lbl_804FE04C:
	.asciz "02160100"
	.balign 4

.global lbl_804FE058
lbl_804FE058:
	.asciz "02180100"
	.balign 4

.global lbl_804FE064
lbl_804FE064:
	.asciz "02190100"
	.balign 4

.global lbl_804FE070
lbl_804FE070:
	.asciz "02200100"
	.balign 4

.global lbl_804FE07C
lbl_804FE07C:
	.asciz "02220100"
	.balign 4

.global lbl_804FE088
lbl_804FE088:
	.asciz "02240100"
	.balign 4

.global lbl_804FE094
lbl_804FE094:
	.asciz "02250100"
	.balign 4

.global lbl_804FE0A0
lbl_804FE0A0:
	.asciz "02290150"
	.balign 4

.global lbl_804FE0AC
lbl_804FE0AC:
	.asciz "02300100"
	.balign 4

.global lbl_804FE0B8
lbl_804FE0B8:
	.asciz "03010100"
	.balign 4

.global lbl_804FE0C4
lbl_804FE0C4:
	.asciz "03060150"
	.balign 4

.global lbl_804FE0D0
lbl_804FE0D0:
	.asciz "03070150"
	.balign 4

.global lbl_804FE0DC
lbl_804FE0DC:
	.asciz "03100100"
	.balign 4

.global lbl_804FE0E8
lbl_804FE0E8:
	.asciz "03120100"
	.balign 4

.global lbl_804FE0F4
lbl_804FE0F4:
	.asciz "04010070"
	.balign 4

.global lbl_804FE100
lbl_804FE100:
	.asciz "04040010"
	.balign 4

.global lbl_804FE10C
lbl_804FE10C:
	.asciz "04060100"
	.balign 4

.global lbl_804FE118
lbl_804FE118:
	.asciz "04110120"
	.balign 4

.global lbl_804FE124
lbl_804FE124:
	.asciz "04130100"
	.balign 4

.global lbl_804FE130
lbl_804FE130:
	.asciz "04140100"
	.balign 4

.global lbl_804FE13C
lbl_804FE13C:
	.asciz "04150100"
	.balign 4

.global lbl_804FE148
lbl_804FE148:
	.asciz "05010100"
	.balign 4

.global lbl_804FE154
lbl_804FE154:
	.asciz "05030050"
	.balign 4

.global lbl_804FE160
lbl_804FE160:
	.asciz "05060100"
	.balign 4

.global lbl_804FE16C
lbl_804FE16C:
	.asciz "05110100"
	.balign 4

.global lbl_804FE178
lbl_804FE178:
	.asciz "05130100"
	.balign 4

.global lbl_804FE184
lbl_804FE184:
	.asciz "05150100"
	.balign 4

.global lbl_804FE190
lbl_804FE190:
	.asciz "05170100"
	.balign 4

.global lbl_804FE19C
lbl_804FE19C:
	.asciz "05200100"
	.balign 4

.global lbl_804FE1A8
lbl_804FE1A8:
	.asciz "05210100"
	.balign 4

.global lbl_804FE1B4
lbl_804FE1B4:
	.asciz "06030100"
	.balign 4

.global lbl_804FE1C0
lbl_804FE1C0:
	.asciz "06050050"
	.balign 4

.global lbl_804FE1CC
lbl_804FE1CC:
	.asciz "06060100"
	.balign 4

.global lbl_804FE1D8
lbl_804FE1D8:
	.asciz "06090100"
	.balign 4

.global lbl_804FE1E4
lbl_804FE1E4:
	.asciz "07010100"
	.balign 4

.global lbl_804FE1F0
lbl_804FE1F0:
	.asciz "07020100"
	.balign 4

.global lbl_804FE1FC
lbl_804FE1FC:
	.asciz "07030150"
	.balign 4

.global lbl_804FE208
lbl_804FE208:
	.asciz "07040100"
	.balign 4

.global lbl_804FE214
lbl_804FE214:
	.asciz "07050100"
	.balign 4

.global lbl_804FE220
lbl_804FE220:
	.asciz "07060100"
	.balign 4

.global lbl_804FE22C
lbl_804FE22C:
	.asciz "07070100"
	.balign 4

.global lbl_804FE238
lbl_804FE238:
	.asciz "07090100"
	.balign 4

.global lbl_804FE244
lbl_804FE244:
	.asciz "07110100"
	.balign 4

.global lbl_804FE250
lbl_804FE250:
	.asciz "07150150"
	.balign 4

.global lbl_804FE25C
lbl_804FE25C:
	.asciz "07160100"
	.balign 4

.global lbl_804FE268
lbl_804FE268:
	.asciz "07170100"
	.balign 4

.global lbl_804FE274
lbl_804FE274:
	.asciz "07210100"
	.balign 4

.global lbl_804FE280
lbl_804FE280:
	.asciz "08010050"
	.balign 4

.global lbl_804FE28C
lbl_804FE28C:
	.asciz "08040100"
	.balign 4

.global lbl_804FE298
lbl_804FE298:
	.asciz "08060050"
	.balign 4

.global lbl_804FE2A4
lbl_804FE2A4:
	.asciz "08130100"
	.balign 4

.global lbl_804FE2B0
lbl_804FE2B0:
	.asciz "08190150"
	.balign 4

.global lbl_804FE2BC
lbl_804FE2BC:
	.asciz "08200150"
	.balign 4

.global lbl_804FE2C8
lbl_804FE2C8:
	.asciz "08220100"
	.balign 4

.global lbl_804FE2D4
lbl_804FE2D4:
	.asciz "08230100"
	.balign 4

.global lbl_804FE2E0
lbl_804FE2E0:
	.asciz "08250100"
	.balign 4

.global lbl_804FE2EC
lbl_804FE2EC:
	.asciz "09010100"
	.balign 4

.global lbl_804FE2F8
lbl_804FE2F8:
	.asciz "09040100"
	.balign 4

.global lbl_804FE304
lbl_804FE304:
	.asciz "09060100"
	.balign 4

.global lbl_804FE310
lbl_804FE310:
	.asciz "09070150"
	.balign 4

.global lbl_804FE31C
lbl_804FE31C:
	.asciz "09080100"
	.balign 4

.global lbl_804FE328
lbl_804FE328:
	.asciz "09120100"
	.balign 4

.global lbl_804FE334
lbl_804FE334:
	.asciz "09150100"
	.balign 4

.global lbl_804FE340
lbl_804FE340:
	.asciz "09170150"
	.balign 4

.global lbl_804FE34C
lbl_804FE34C:
	.asciz "09190100"
	.balign 4

.global lbl_804FE358
lbl_804FE358:
	.asciz "09220100"
	.balign 4

.global lbl_804FE364
lbl_804FE364:
	.asciz "09230150"
	.balign 4

.global lbl_804FE370
lbl_804FE370:
	.asciz "09240100"
	.balign 4

.global lbl_804FE37C
lbl_804FE37C:
	.asciz "09260100"
	.balign 4

.global lbl_804FE388
lbl_804FE388:
	.asciz "09280100"
	.balign 4

.global lbl_804FE394
lbl_804FE394:
	.asciz "09300100"
	.balign 4

.global lbl_804FE3A0
lbl_804FE3A0:
	.asciz "10030100"
	.balign 4

.global lbl_804FE3AC
lbl_804FE3AC:
	.asciz "10090100"
	.balign 4

.global lbl_804FE3B8
lbl_804FE3B8:
	.asciz "10100100"
	.balign 4

.global lbl_804FE3C4
lbl_804FE3C4:
	.asciz "10120110"
	.balign 4

.global lbl_804FE3D0
lbl_804FE3D0:
	.asciz "10150100"
	.balign 4

.global lbl_804FE3DC
lbl_804FE3DC:
	.asciz "10160100"
	.balign 4

.global lbl_804FE3E8
lbl_804FE3E8:
	.asciz "11010100"
	.balign 4

.global lbl_804FE3F4
lbl_804FE3F4:
	.asciz "11020100"
	.balign 4

.global lbl_804FE400
lbl_804FE400:
	.asciz "11080100"
	.balign 4

.global lbl_804FE40C
lbl_804FE40C:
	.asciz "11100100"
	.balign 4

.global lbl_804FE418
lbl_804FE418:
	.asciz "11120150"
	.balign 4

.global lbl_804FE424
lbl_804FE424:
	.asciz "11130100"
	.balign 4

.global lbl_804FE430
lbl_804FE430:
	.asciz "11160100"
	.balign 4

.global lbl_804FE43C
lbl_804FE43C:
	.asciz "11170100"
	.balign 4

.global lbl_804FE448
lbl_804FE448:
	.asciz "12010100"
	.balign 4

.global lbl_804FE454
lbl_804FE454:
	.asciz "12020100"
	.balign 4

.global lbl_804FE460
lbl_804FE460:
	.asciz "12030100"
	.balign 4

.global lbl_804FE46C
lbl_804FE46C:
	.asciz "12040100"
	.balign 4

.global lbl_804FE478
lbl_804FE478:
	.asciz "12060100"
	.balign 4

.global lbl_804FE484
lbl_804FE484:
	.asciz "12070150"
	.balign 4

.global lbl_804FE490
lbl_804FE490:
	.asciz "12090100"
	.balign 4

.global lbl_804FE49C
lbl_804FE49C:
	.asciz "12140100"
	.balign 4

.global lbl_804FE4A8
lbl_804FE4A8:
	.asciz "12210100"
	.balign 4

.global lbl_804FE4B4
lbl_804FE4B4:
	.asciz "12220060"
	.balign 4

.global lbl_804FE4C0
lbl_804FE4C0:
	.asciz "13050100"
	.balign 4

.global lbl_804FE4CC
lbl_804FE4CC:
	.asciz "13080100"
	.balign 4

.global lbl_804FE4D8
lbl_804FE4D8:
	.asciz "13100100"
	.balign 4

.global lbl_804FE4E4
lbl_804FE4E4:
	.asciz "13110150"
	.balign 4

.global lbl_804FE4F0
lbl_804FE4F0:
	.asciz "13130050"
	.balign 4

.global lbl_804FE4FC
lbl_804FE4FC:
	.asciz "13130100"
	.balign 4

.global lbl_804FE508
lbl_804FE508:
	.asciz "13140100"
	.balign 4

.global lbl_804FE514
lbl_804FE514:
	.asciz "13150100"
	.balign 4

.global lbl_804FE520
lbl_804FE520:
	.asciz "13160100"
	.balign 4

.global lbl_804FE52C
lbl_804FE52C:
	.asciz "14010100"
	.balign 4

.global lbl_804FE538
lbl_804FE538:
	.asciz "14020100"
	.balign 4

.global lbl_804FE544
lbl_804FE544:
	.asciz "14030100"
	.balign 4

.global lbl_804FE550
lbl_804FE550:
	.asciz "14040100"
	.balign 4

.global lbl_804FE55C
lbl_804FE55C:
	.asciz "14050160"
	.balign 4

.global lbl_804FE568
lbl_804FE568:
	.asciz "14060100"
	.balign 4

.global lbl_804FE574
lbl_804FE574:
	.asciz "14070050"
	.balign 4

.global lbl_804FE580
lbl_804FE580:
	.asciz "14080100"
	.balign 4

.global lbl_804FE58C
lbl_804FE58C:
	.asciz "14100160"
	.balign 4

.global lbl_804FE598
lbl_804FE598:
	.asciz "14120100"
	.balign 4

.global lbl_804FE5A4
lbl_804FE5A4:
	.asciz "14130100"
	.balign 4

.global lbl_804FE5B0
lbl_804FE5B0:
	.asciz "14140100"
	.balign 4

.global lbl_804FE5BC
lbl_804FE5BC:
	.asciz "14150150"
	.balign 4

.global lbl_804FE5C8
lbl_804FE5C8:
	.asciz "14160100"
	.balign 4

.global lbl_804FE5D4
lbl_804FE5D4:
	.asciz "14170100"
	.balign 4

.global lbl_804FE5E0
lbl_804FE5E0:
	.asciz "15010100"
	.balign 4

.global lbl_804FE5EC
lbl_804FE5EC:
	.asciz "15070100"
	.balign 4

.global lbl_804FE5F8
lbl_804FE5F8:
	.asciz "15080100"
	.balign 4

.global lbl_804FE604
lbl_804FE604:
	.asciz "15090100"
	.balign 4

.global lbl_804FE610
lbl_804FE610:
	.asciz "15090160"
	.balign 4

.global lbl_804FE61C
lbl_804FE61C:
	.asciz "15100100"
	.balign 4

.global lbl_804FE628
lbl_804FE628:
	.asciz "15110100"
	.balign 4

.global lbl_804FE634
lbl_804FE634:
	.asciz "15120150"
	.balign 4

.global lbl_804FE640
lbl_804FE640:
	.asciz "15140100"
	.balign 4

.global lbl_804FE64C
lbl_804FE64C:
	.asciz "15150100"
	.balign 4

.global lbl_804FE658
lbl_804FE658:
	.asciz "16010100"
	.balign 4

.global lbl_804FE664
lbl_804FE664:
	.asciz "16030100"
	.balign 4

.global lbl_804FE670
lbl_804FE670:
	.asciz "16040100"
	.balign 4

.global lbl_804FE67C
lbl_804FE67C:
	.asciz "16060100"
	.balign 4

.global lbl_804FE688
lbl_804FE688:
	.asciz "16070100"
	.balign 4

.global lbl_804FE694
lbl_804FE694:
	.asciz "16080100"
	.balign 4

.global lbl_804FE6A0
lbl_804FE6A0:
	.asciz "16090100"
	.balign 4

.global lbl_804FE6AC
lbl_804FE6AC:
	.asciz "16110100"
	.balign 4

.global lbl_804FE6B8
lbl_804FE6B8:
	.asciz "17010100"
	.balign 4

.global lbl_804FE6C4
lbl_804FE6C4:
	.asciz "17030100"
	.balign 4

.global lbl_804FE6D0
lbl_804FE6D0:
	.asciz "17030160"
	.balign 4

.global lbl_804FE6DC
lbl_804FE6DC:
	.asciz "17040100"
	.balign 4

.global lbl_804FE6E8
lbl_804FE6E8:
	.asciz "17050100"
	.balign 4

.global lbl_804FE6F4
lbl_804FE6F4:
	.asciz "17060100"
	.balign 4

.global lbl_804FE700
lbl_804FE700:
	.asciz "17070100"
	.balign 4

.global lbl_804FE70C
lbl_804FE70C:
	.asciz "17080100"
	.balign 4

.global lbl_804FE718
lbl_804FE718:
	.asciz "17100010"
	.balign 4

.global lbl_804FE724
lbl_804FE724:
	.asciz "17100050"
	.balign 4

.global lbl_804FE730
lbl_804FE730:
	.asciz "17100100"
	.balign 4

.global lbl_804FE73C
lbl_804FE73C:
	.asciz "17110100"
	.balign 4

.global lbl_804FE748
lbl_804FE748:
	.asciz "17130150"
	.balign 4

.global lbl_804FE754
lbl_804FE754:
	.asciz "17140100"
	.balign 4

.global lbl_804FE760
lbl_804FE760:
	.asciz "17150100"
	.balign 4

.global lbl_804FE76C
lbl_804FE76C:
	.asciz "17160100"
	.balign 4

.global lbl_804FE778
lbl_804FE778:
	.asciz "17170050"
	.balign 4

.global lbl_804FE784
lbl_804FE784:
	.asciz "17190100"
	.balign 4

.global lbl_804FE790
lbl_804FE790:
	.asciz "17200100"
	.balign 4

.global lbl_804FE79C
lbl_804FE79C:
	.asciz "17210100"
	.balign 4

.global lbl_804FE7A8
lbl_804FE7A8:
	.asciz "17220100"
	.balign 4

.global lbl_804FE7B4
lbl_804FE7B4:
	.asciz "17240100"
	.balign 4


.global lbl_804FE7C0
lbl_804FE7C0:
	# ROM: 0x4FA8C0
	.4byte 0x0004000A
	.4byte 0x000E000F
	.4byte 0x00230038
	.4byte 0x00620065
	.4byte 0x0066008D
	.4byte 0x00D500D6
	.4byte 0x00FD010F
	.4byte 0x01520165
	.4byte 0x01660074
	.4byte 0x01520152
	.4byte 0x01520152
	.4byte 0x01520152
	.4byte 0x01520152
	.4byte 0x01520152
	.4byte 0x01520152
	.4byte 0x01520152

.global lbl_804FE800
lbl_804FE800:
	.asciz "/ev/realtime/"
	.balign 4

.global lbl_804FE810
lbl_804FE810:
	.asciz "cf::CTaskREvent"

.global lbl_804FE820
lbl_804FE820:
	.asciz "CTTask<cf::CTaskREvent>"


.global lbl_804FE838
lbl_804FE838:
	.asciz "vs"
	.asciz "vs00"
	.asciz ".rev"
	.byte 0x00
	.asciz "abcd"
	.4byte 0
	.byte 0x00
.global lbl_804FE850
lbl_804FE850:
	.asciz "cf::CInfoCf"
	.4byte 0

.global lbl_804FE860
lbl_804FE860:
	.asciz "CMenuItem"
	.balign 4


.global lbl_804FE86C
lbl_804FE86C:
	.asciz "MNU_item"
	.asciz "name"
	.4byte 0
	.2byte 0
.global lbl_804FE880
lbl_804FE880:
	.asciz "cf::CREvtMem"
	.balign 4

.global lbl_804FE890
lbl_804FE890:
	.asciz "cf::CTaskREvtSequence"
	.balign 4

.global lbl_804FE8A8
lbl_804FE8A8:
	.asciz "CTTask<cf::CTaskREvtSequence>"
	.balign 4


.global lbl_804FE8C8
lbl_804FE8C8:
	.asciz "vs17240100"
	.asciz "vs17220100"
	.asciz "vs16010100"
	.asciz "pc100101"
	.asciz "np620109"
	.asciz "pc090101"
	.asciz "np730109"
	.asciz "vs17210100"
	.asciz "%d:"
	.asciz "0"
	.asciz "%d"
	.asciz "timevis"
	.balign 4
	.4byte 0

.global lbl_804FE930
lbl_804FE930:
	.asciz "cf::CfResObjImpl"
	.balign 4

.global lbl_804FE944
lbl_804FE944:
	.asciz "cf::CfResImpl"
	.balign 4
	.4byte 0

.global lbl_804FE958
lbl_804FE958:
	.asciz "cf::CfResReloadImpl"
	.4byte 0


.global lbl_804FE970
lbl_804FE970:
	.asciz "NONE"
	.asciz "wb_size_X"
	.asciz "wb_size_Y"
	.asciz "wb_size_Z"
	.asciz "wb_radius"
	.asciz "wa_size_X"
	.asciz "wa_size_Y"
	.asciz "wa_size_Z"
	.asciz "wa_radius"
	.asciz "a_S_FLG_MIN"
	.asciz "a_S_FLG_MAX"
	.asciz "b_S_FLG_MIN"
	.asciz "b_S_FLG_MAX"
	.asciz "mapATR"
	.asciz "wb_time"
	.asciz "wa_time"
	.asciz "wb_pop_rate"
	.asciz "wa_pop_rate"
	.asciz "wb_end_time"
	.asciz "wa_end_time"
	.asciz "wb_type"
	.asciz "wa_type"
	.asciz "wind_WA"
	.asciz "wind_WB"
	.4byte 0

.global lbl_804FEA60
lbl_804FEA60:
	.asciz "cf::CfMapEffectManager"
	.balign 4


.global lbl_804FEA78
lbl_804FEA78:
	.asciz "questID"
	.asciz "qst_sflg"
	.asciz "qst_eflg"
	.asciz "sflg1"
	.asciz "eflg1"
	.asciz "sflg2"
	.asciz "eflg2"
	.asciz "erase"
	.asciz "pack_no"
	.asciz "weather"
	.asciz "loop"
	.asciz "flg_eff"
	.asciz "playtime1"
	.asciz "playtime2"
	.asciz "playtime3"
	.asciz "progframe"
	.asciz "caster"
	.asciz "posX"
	.asciz "posY"
	.asciz "posZ"
	.asciz "rotX"
	.asciz "rotY"
	.asciz "rotZ"
	.asciz "skip"
	.asciz "calc_frame"
	.balign 4
	.4byte 0

.global lbl_804FEB30
lbl_804FEB30:
	.asciz "CScnMaruShadowNw4r"
	.balign 4

.global lbl_804FEB44
lbl_804FEB44:
	.asciz "IScnPolyShadow"
	.balign 4

.global lbl_804FEB54
lbl_804FEB54:
	.asciz "cf::CREvtModel"
	.balign 4

.global lbl_804FEB64
lbl_804FEB64:
	.asciz "cf::CREvtObj"
	.balign 4


.global lbl_804FEB74
lbl_804FEB74:
	.asciz "Monochrome"
	.asciz "MonoRGB"
	.asciz "noDynamics"
	.asciz "LgtID"
	.asciz "SdwType"
	.asciz "SdwRadius"
	.asciz "SdwPow"
	.asciz "HidePT"
	.asciz "core"
	.balign 4

.global lbl_804FEBC0
lbl_804FEBC0:
	.asciz "cf::CfValueItemManager"
	.balign 4

.global lbl_804FEBD8
lbl_804FEBD8:
	.asciz "cf::CfMapItemManager"
	.balign 4


.global lbl_804FEBF0
lbl_804FEBF0:
	.asciz "posX"
	.asciz "posY"
	.asciz "posZ"
	.asciz "Radius"
	.asciz "snap"
	.asciz "popNum"
	.asciz "mapID"
	.asciz "popTime"
	.asciz "wtrType"
	.asciz "questID"
	.asciz "quest_STFLG"
	.asciz "gimmickID"
	.asciz "S_FLG_MIN"
	.asciz "S_FLG_MAX"
	.asciz "e_repoptime"
	.balign 4


.global lbl_804FEC68
lbl_804FEC68:
	# ROM: 0x4FAD68
	.byte 0x00
	.asciz "level_exp"
	.balign 4
	.4byte 0

.global lbl_804FEC78
lbl_804FEC78:
	.asciz "CMenuZeal"
	.balign 4


.global lbl_804FEC84
lbl_804FEC84:
	.asciz "CMenuZeal"
	.asciz "mf71_battle90_chance_gage.brlyt"
	.asciz "mf71_battle90_chance_gage_in.brlan"
	.asciz "mf71_battle90_chance_gage_go.brlan"
	.asciz "mf71_battle90_chance_gage_verrygood.brlan"
	.asciz "mf71_battle90_chance_gage_out.brlan"
	.asciz "mf71_battle92_chance_pointer.brlyt"
	.asciz "mf71_battle92_chance_pointer_in.brlan"
	.asciz "mf71_battle92_chance_pointer_go.brlan"
	.asciz "mf71_battle92_chance_pointer_verrygood.brlan"
	.asciz "mf71_battle92_chance_pointer_out.brlan"
	.asciz "mf71_battle91_chance_hit.brlyt"
	.asciz "mf71_battle91_chance_hit_glow_in.brlan"
	.asciz "mf71_btl90_chn_btn_c01.tpl"
	.asciz "mf71_btl90_chn_btn_r01.tpl"
	.asciz "pic_button_r"
	.asciz "mf71_btl90_chn_btngl_c00.tpl"
	.asciz "mf71_btl90_chn_btngl_r00.tpl"
	.asciz "pic_line_r00"
	.asciz "pic_line_r01"
	.asciz "pic_pointer_def"
	.balign 4
	.4byte 0

.global lbl_804FEEF8
lbl_804FEEF8:
	.asciz "cf::CREvtCamera"


.global lbl_804FEF08
lbl_804FEF08:
	.asciz "CAM"
	.asciz "Monochrome"
	.asciz "MonoRGB"
	.asciz "envLGT"
	.asciz "HideMPF"
	.asciz "Time"
	.asciz "HideLOD"
	.asciz "ShowLOD"
	.balign 4
	.4byte 0

.global lbl_804FEF48
lbl_804FEF48:
	.asciz "cf::CREvtModelMap"
	.balign 4


.global lbl_804FEF5C
lbl_804FEF5C:
	.asciz ".lod"
	.asciz "/obj/"
	.asciz ".map"
	.asciz ".lgt"
	.balign 4
	.4byte 0

.global lbl_804FEF78
lbl_804FEF78:
	.asciz "cf::CREvtModelObj"
	.balign 4


.global lbl_804FEF8C
lbl_804FEF8C:
	.asciz "eff/rec/ev/evwpn01.rec"
	.asciz "/chr/en/"
	.asciz "/chr/np/"
	.asciz "/chr/wp/"
	.asciz "/obj/"
	.asciz ".kp"
	.asciz ".chr"
	.balign 4


.global lbl_804FEFD0
lbl_804FEFD0:
	# ROM: 0x4FB0D0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_804FF000
lbl_804FF000:
	.asciz "cf::CREvtModelPc"
	.balign 4
	.4byte 0

.global lbl_804FF018
lbl_804FF018:
	.asciz "cf::CREvtEffect"


.global lbl_804FF028
lbl_804FF028:
	.asciz "EFF"
	.asciz "Monochrome"
	.asciz "MonoRGB"
	.balign 4


.global lbl_804FF040
lbl_804FF040:
	.asciz "time"
	.balign 4

.global lbl_804FF048
lbl_804FF048:
	.asciz "startObserve"
	.balign 4

.global lbl_804FF058
lbl_804FF058:
	.asciz "endObserve"
	.balign 4

.global lbl_804FF064
lbl_804FF064:
	.asciz "defeatingCount"
	.balign 4

.global lbl_804FF074
lbl_804FF074:
	.asciz "attackEne"
	.balign 4

.global lbl_804FF080
lbl_804FF080:
	.asciz "selectTgt"
	.balign 4

.global lbl_804FF08C
lbl_804FF08C:
	.asciz "voiceEvent"
	.balign 4

.global lbl_804FF098
lbl_804FF098:
	.asciz "isVoiceEvent"
	.balign 4

.global lbl_804FF0A8
lbl_804FF0A8:
	.asciz "unlockMonadoArts"
	.balign 4

.global lbl_804FF0BC
lbl_804FF0BC:
	.asciz "setTensionLv"
	.balign 4

.global lbl_804FF0CC
lbl_804FF0CC:
	.asciz "breakVision"


.global lbl_804FF0D8
lbl_804FF0D8:
	.asciz "ene_arts"
	.asciz "name"
	.asciz "btl"
	.2byte 0
	.4byte 0


.global lbl_804FF0F0
lbl_804FF0F0:
	.asciz "model"
	.asciz "motion"
	.asciz "posX"
	.asciz "posY"
	.asciz "posZ"
	.asciz "rotX"
	.asciz "rotY"
	.asciz "rotZ"
	.asciz "ground"
	.asciz "gravity"
	.asciz "scale"
	.asciz "disp"
	.asciz "erase"
	.asciz "action"
	.asciz "act_questID"
	.asciz "act_qst_sflg"
	.asciz "act_qst_eflg"
	.asciz "act_sflg1"
	.asciz "act_eflg1"
	.asciz "act_sflg2"
	.asciz "act_eflg2"
	.asciz "pos_questID"
	.asciz "pos_qst_sflg"
	.asciz "pos_qst_eflg"
	.asciz "pos_sflg1"
	.asciz "pos_eflg1"
	.asciz "pos_sflg2"
	.asciz "pos_eflg2"
	.balign 4

.global lbl_804FF1E0
lbl_804FF1E0:
	.asciz "CMenuPTGauge"
	.balign 4


.global lbl_804FF1F0
lbl_804FF1F0:
	.asciz "CMenuPTGauge"
	.asciz "mf71_battle70_party00.brlyt"
	.asciz "mf71_battle70_party00_in.brlan"
	.asciz "mf71_battle70_party00_full_part1.brlan"
	.asciz "mf71_battle70_party00_full_part2.brlan"
	.asciz "mf71_battle70_party00_full.brlan"
	.asciz "mf71_battle70_party00_wait.brlan"
	.asciz "pic_gage00"
	.balign 4
	.4byte 0


.global lbl_804FF2D8
lbl_804FF2D8:
	.asciz "."
	.asciz "/"
	.byte 0x00
	.asciz ".adx"
	.asciz "%s%s%s"
	.asciz "snd/adx/"
	.asciz "loop"
	.byte 0x00
.global lbl_804FF2F8
lbl_804FF2F8:
	.asciz "CMenuSelectShop"


.global lbl_804FF308
lbl_804FF308:
	.asciz "CMenuSelectShop"

.global lbl_804FF318
lbl_804FF318:
	.asciz "CMenuShopSell"
	.balign 4


.global lbl_804FF328
lbl_804FF328:
	.asciz "MNU_shop"
	.asciz "name"
	.2byte 0
.global lbl_804FF338
lbl_804FF338:
	.asciz "CMenuShopBuy"
	.balign 4


.global lbl_804FF348
lbl_804FF348:
	.asciz "MNU_shop"
	.asciz "name"
	.2byte 0


.global lbl_804FF358
lbl_804FF358:
	# ROM: 0x4FB458
	.4byte 0x3DCCCCCD
	.4byte 0x3F666666
	.4byte 0x3D23D70A
	.4byte 0x3F666666
	.4byte 0x3E428F5C
	.4byte 0x3F666666
	.4byte 0x3D8F5C29
	.4byte 0x3F666666
	.4byte 0x3DCCCCCD
	.4byte 0x3F666666
	.4byte 0x3E428F5C
	.4byte 0x3F666666
	.4byte 0x3DCCCCCD
	.4byte 0x3F666666
	.4byte 0x3E428F5C
	.4byte 0x3F666666
	.4byte 0x3DCCCCCD
	.4byte 0x3F666666
	.4byte 0x3DCCCCCD
	.4byte 0x3F666666

.global lbl_804FF3A8
lbl_804FF3A8:
	.asciz "CScnItemModelNw4r"
	.balign 4
	.4byte 0

.global lbl_804FF3C0
lbl_804FF3C0:
	.asciz "cf::CfResPcImpl"

.global lbl_804FF3D0
lbl_804FF3D0:
	.asciz "CScnItemModel"
	.balign 4

.global lbl_804FF3E0
lbl_804FF3E0:
	.asciz "CScnItem"
	.balign 4


.global lbl_804FF3EC
lbl_804FF3EC:
	.asciz "%s(%x)"
	.asciz "JUspA"
	.balign 4
	.4byte 0

.global lbl_804FF400
lbl_804FF400:
	.asciz "CMenuPTState"
	.balign 4

.global lbl_804FF410
lbl_804FF410:
	.asciz "cf::CPartsChange"
	.balign 4

.global lbl_804FF424
lbl_804FF424:
	.asciz "%s%s"
	.balign 4
	.4byte 0

.global lbl_804FF430
lbl_804FF430:
	.asciz "reslist<cf::CfPartyInfo *>"
	.balign 4

.global lbl_804FF44C
lbl_804FF44C:
	.asciz "_reslist_base<cf::CfPartyInfo *>"
	.balign 4


.global lbl_804FF470
lbl_804FF470:
	.asciz "e_repoptime"
	.asciz "posX"
	.asciz "posY"
	.asciz "posZ"
	.asciz "Radius"
	.asciz "pop_type"
	.asciz "ene_type"
	.asciz "form"
	.asciz "posATR"
	.asciz "named"
	.asciz "resource"
	.asciz "snap"
	.asciz "Dir"
	.asciz "BTL_enelist"
	.asciz "routeID"
	.asciz "questID"
	.asciz "quest_STFLG"
	.asciz "S_FLG_MIN"
	.asciz "S_FLG_MAX"
	.asciz "POP_TIME"
	.asciz "move_type"
	.asciz "form_range"
	.asciz "NAMED_FLG"
	.asciz "child_ID"
	.balign 4

.global lbl_804FF538
lbl_804FF538:
	.asciz "cf::CtrlMovePC"
	.balign 4

.global lbl_804FF548
lbl_804FF548:
	.asciz "cf::CtrlMoveNpc"


.global lbl_804FF558
lbl_804FF558:
	.asciz "erase"
	.asciz "questID"
	.asciz "qst_sflg"
	.asciz "qst_eflg"
	.asciz "sflg1"
	.asciz "eflg1"
	.asciz "sflg2"
	.asciz "eflg2"
	.asciz "model"
	.balign 4

.global lbl_804FF598
lbl_804FF598:
	.asciz "CMenuBattleMode"


.global lbl_804FF5A8
lbl_804FF5A8:
	.asciz "CMenuBattleMode"
	.asciz "mf71_battle40_mark.brlyt"
	.asciz "mf71_battle40_mark_in.brlan"
	.asciz "mf71_battle40_mark_roop.brlan"
	.balign 4
	.4byte 0

.global lbl_804FF610
lbl_804FF610:
	.asciz "COccCulling"


.global lbl_804FF61C
lbl_804FF61C:
	.asciz "OCC_CULL"
	.balign 4

.global lbl_804FF628
lbl_804FF628:
	.asciz "CSimpleEveTalkWin"
	.balign 4


.global lbl_804FF63C
lbl_804FF63C:
	.asciz "CSimpleEveTalkWin"
	.asciz "mf70_cf01_esywin00.brlyt"
	.asciz "mf70_cf01_esywin00_in.brlan"
	.asciz "mf70_cf01_esywin00_cursor_in.brlan"
	.asciz "mf70_cf01_esywin00_cursor_def.brlan"
	.asciz "mf00_com00_btn30_anim00.tpl"
	.asciz "mf00_com00_btn00_anim00.tpl"
	.asciz "pic_cursor00"
	.asciz "txt_name"
	.asciz "txt_name_r"
	.asciz "txt_name_l"
	.asciz "txt_name_o"
	.asciz "txt_name_u"
	.byte 0x00
	.asciz "txt_mes"
	.balign 4

.global lbl_804FF750
lbl_804FF750:
	.asciz "cf::CTaskCulling"
	.balign 4

.global lbl_804FF764
lbl_804FF764:
	.asciz "CTTask<cf::CTaskCulling>"
	.balign 4


.global lbl_804FF780
lbl_804FF780:
	# ROM: 0x4FB880
	.4byte 0x2F006F63
	.4byte 0x63000000


.global lbl_804FF788
lbl_804FF788:
	# ROM: 0x4FB888
	.4byte 0x000000A1
	.4byte 0x000000A2
	.4byte 0x000000A3
	.4byte 0x000000A4
	.4byte 0x000000B8
	.4byte 0x000000B8
	.4byte 0x000000BD
	.4byte 0x000000BD

.global lbl_804FF7A8
lbl_804FF7A8:
	.4byte 0x3CF5C28F
	.4byte 0x3D75C28F
	.4byte 0x3DB851EC
	.4byte 0x3DF5C28F
	.4byte 0x3E19999A

.global lbl_804FF7BC
lbl_804FF7BC:
	.asciz "cf::CVision"


.global lbl_804FF7C8
lbl_804FF7C8:
	.asciz "PosX_L%d"
	.asciz "PosY_L%d"
	.asciz "PosZ_L%d"
	.asciz "posX"
	.asciz "posY"
	.asciz "posZ"
	.asciz "Radius"
	.asciz "se_id"
	.asciz "fixed"
	.asciz "loop"
	.asciz "volume"
	.asciz "in_out"
	.asciz "caster"
	.asciz "se_TYPE"
	.asciz "weather"
	.asciz "playtime1"
	.asciz "playtime2"
	.asciz "playtime3"
	.asciz "pos_questID"
	.asciz "pos_qst_sflg"
	.asciz "pos_qst_eflg"
	.asciz "pos_sflg1"
	.asciz "pos_eflg1"
	.asciz "pos_sflg2"
	.asciz "pos_eflg2"
	.balign 4
	.4byte 0

.global lbl_804FF8A0
lbl_804FF8A0:
	.asciz "setFieldBgm"

.global lbl_804FF8AC
lbl_804FF8AC:
	.asciz "setTownBgm"
	.balign 4

.global lbl_804FF8B8
lbl_804FF8B8:
	.asciz "stopFieldBgm"
	.balign 4

.global lbl_804FF8C8
lbl_804FF8C8:
	.asciz "stopTownBgm"

.global lbl_804FF8D4
lbl_804FF8D4:
	.asciz "forceFieldBgm"
	.balign 4

.global lbl_804FF8E4
lbl_804FF8E4:
	.asciz "setVolBgm"
	.balign 4

.global lbl_804FF8F0
lbl_804FF8F0:
	.asciz "playVoice"
	.balign 4

.global lbl_804FF8FC
lbl_804FF8FC:
	.asciz "stopVoice"
	.balign 4

.global lbl_804FF908
lbl_804FF908:
	.asciz "waitVoice"
	.balign 4

.global lbl_804FF914
lbl_804FF914:
	.asciz "playSeCommon"
	.balign 4

.global lbl_804FF924
lbl_804FF924:
	.asciz "playSeMap"
	.balign 4

.global lbl_804FF930
lbl_804FF930:
	.asciz "volSeMap"
	.balign 4

.global lbl_804FF93C
lbl_804FF93C:
	.asciz "stopSeCommon"
	.balign 4

.global lbl_804FF94C
lbl_804FF94C:
	.asciz "stopSeMap"
	.balign 4

.global lbl_804FF958
lbl_804FF958:
	.asciz "setCamPos"
	.balign 4

.global lbl_804FF964
lbl_804FF964:
	.asciz "clearCamPos"


.global lbl_804FF970
lbl_804FF970:
	.asciz "snd/ahx/ev/%s/%s.ahx"
	.asciz "snd"
	.byte 0x00, 0x00, 0x00
	.4byte 0


.global lbl_804FF990
lbl_804FF990:
	.asciz "game"
	.balign 4

.global lbl_804FF998
lbl_804FF998:
	.asciz "nul_enemmy"
	.balign 4

.global lbl_804FF9A4
lbl_804FF9A4:
	.asciz "nul_action"
	.balign 4

.global lbl_804FF9B0
lbl_804FF9B0:
	.asciz "nul_target"
	.balign 4

.global lbl_804FF9BC
lbl_804FF9BC:
	.asciz "nul_damage"
	.balign 4

.global lbl_804FF9C8
lbl_804FF9C8:
	.asciz "nul_timegage"
	.balign 4

.global lbl_804FF9D8
lbl_804FF9D8:
	.asciz "nul_time"
	.balign 4
	.4byte 0

.global lbl_804FF9E8
lbl_804FF9E8:
	.4byte lbl_804FF998
	.4byte lbl_804FF9A4
	.4byte lbl_804FF9B0
	.4byte lbl_804FF9BC
	.4byte lbl_804FF9C8
	.4byte lbl_804FF9D8

.global lbl_804FFA00
lbl_804FFA00:
	.asciz "mf71_btl00_pnmk00.tpl"
	.balign 4

.global lbl_804FFA18
lbl_804FFA18:
	.asciz "mf71_btl00_pnmk01.tpl"
	.balign 4

.global lbl_804FFA30
lbl_804FFA30:
	.asciz "mf71_btl00_pnmk02.tpl"
	.balign 4

.global lbl_804FFA48
lbl_804FFA48:
	.asciz "mf71_btl00_pnmk03.tpl"
	.balign 4

.global lbl_804FFA60
lbl_804FFA60:
	.4byte lbl_804FFA00
	.4byte lbl_804FFA18
	.4byte lbl_804FFA30
	.4byte lbl_804FFA48

.global lbl_804FFA70
lbl_804FFA70:
	.4byte lbl_804FFA00
	.4byte lbl_804FFA18
	.4byte lbl_804FFA30
	.4byte lbl_804FFA48

.global lbl_804FFA80
lbl_804FFA80:
	.asciz "CMenuVision"
	.4byte 0


.global lbl_804FFA90
lbl_804FFA90:
	.asciz "MenuVision"
	.asciz "mf71_battle81_future_base.brlyt"
	.asciz "mf71_battle81_future_base_in.brlan"
	.asciz "mf71_battle81_future_base_out.brlan"
	.asciz "mf71_battle81_future_base_rebirth.brlan"
	.asciz "mf71_battle81_future_base_bright_out.brlan"
	.asciz "mf71_battle81_future_base_cange_out.brlan"
	.asciz "mf71_battle81_future_base_change_in.brlan"
	.asciz "mf71_battle81_future_base_break.brlan"
	.asciz "mf71_battle81_future_base_time_stop.brlan"
	.asciz "nul_enemmy"
	.asciz "nul_action"
	.asciz "nul_target"
	.asciz "nul_damage"
	.asciz "nul_timegage"
	.asciz "nul_time"
	.asciz "txt_action_u"
	.asciz "txt_action_o"
	.asciz "txt_action_l"
	.asciz "txt_action_r"
	.asciz "txt_action_00"
	.asciz "txt_action_01"
	.asciz "txt_damage_g"
	.asciz "txt_time_num"
	.asciz "pic_bar"
	.asciz "mf71_btl81_god01.tpl"
	.asciz "mf71_btl81_enm00.tpl"
	.asciz "mf71_btl81_enm05.tpl"
	.asciz "mf71_btl81_enm01.tpl"
	.asciz "mf71_btl81_enm02.tpl"
	.asciz "mf71_btl81_enm03.tpl"
	.asciz "mf71_btl81_enm11.tpl"
	.asciz "mf71_btl81_enm04.tpl"
	.asciz "mf71_btl81_enm06.tpl"
	.asciz "mf71_btl81_enm07.tpl"
	.asciz "mf71_btl81_enm08.tpl"
	.asciz "mf71_btl81_enm09.tpl"
	.asciz "mf71_btl81_enm10.tpl"
	.asciz "mf71_btl81_enm12.tpl"
	.asciz "mf71_btl81_enm13.tpl"
	.asciz "mf71_btl81_enm16.tpl"
	.asciz "mf71_btl81_enm18.tpl"
	.asciz "mf71_btl81_enm14.tpl"
	.asciz "mf71_btl81_enm15.tpl"
	.asciz "mf71_btl81_enm17.tpl"
	.asciz "pic_enemmyicon"
	.asciz "mf71_btl81_rng00.tpl"
	.asciz "mf71_btl81_rng01.tpl"
	.asciz "mf71_btl81_rng02.tpl"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "pic_rng"
	.asciz "pic_targeticon"
	.asciz "mf71_btl81_god00.tpl"
	.asciz "mf71_btl81_pc01.tpl"
	.asciz "mf71_btl81_pc02.tpl"
	.asciz "mf71_btl81_pc03.tpl"
	.asciz "mf71_btl81_pc04.tpl"
	.asciz "mf71_btl81_pc05.tpl"
	.asciz "mf71_btl81_pc06.tpl"
	.asciz "mf71_btl81_pc07.tpl"
	.asciz "mf71_btl81_pc08.tpl"
	.asciz "mf71_btl81_pc09.tpl"
	.asciz "mf71_btl81_pc10.tpl"
	.asciz "mf71_btl81_pc11.tpl"
	.asciz "pic_status_b"
	.asciz "pic_status_b01"
	.asciz "pic_panic"
	.asciz "pic_infinity"
	.asciz "pic_pic_death"
	.asciz "MNU_battle"
	.asciz "name"
	.asciz "icon"

.global lbl_80500010
lbl_80500010:
	.asciz "CMenuBattleCommu"
	.balign 4


.global lbl_80500024
lbl_80500024:
	.asciz "MenuBattleCommu"
	.asciz "mf71_battle95_communi.brlyt"
	.asciz "mf71_battle95_communi_in.brlan"
	.asciz "mf71_battle95_communi_ripple_in.brlan"
	.asciz "mf71_battle95_communi_ripple_roop.brlan"
	.asciz "mf71_battle95_communi_ripple_out.brlan"
	.asciz "mf71_battle95_communi_out.brlan"
	.asciz "mf71_battle95_communi_bright_out.brlan"
	.asciz "txt_mess_l"
	.asciz "txt_mess_r"
	.asciz "txt_mess_o"
	.asciz "txt_mess_u"
	.asciz "txt_mess"
	.byte 0x00
	.asciz "mf71_btl90_chn_btn_c00.tpl"
	.asciz "pic_button_r"
	.asciz "mf71_btl90_chn_btngl_c00.tpl"
	.asciz "pic_line_r00"
	.asciz "pic_line_r01"
	.asciz "mf71_btl90_chn_btn_r00.tpl"
	.asciz "mf71_btl90_chn_btngl_r00.tpl"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "%s"
	.asciz "%s%s"
	.asciz "name"


.global lbl_80500218
lbl_80500218:
	# ROM: 0x4FC318
	.2byte 0x0064
	.2byte 0x0065
	.2byte 0x0066
	.2byte 0x006C
	.2byte 0x006D
	.2byte 0x006E
	.4byte 0

.global lbl_80500228
lbl_80500228:
	.asciz "cf::CPcEffect07"

.global lbl_80500238
lbl_80500238:
	.asciz "cf::IPcEffect"
	.balign 4

.global lbl_80500248
lbl_80500248:
	.asciz "CMenuGetItemMulti"
	.balign 4


.global lbl_8050025C
lbl_8050025C:
	.asciz "CMenuGetItemMulti"
	.asciz "common/jp/bdat_mes.bin"
	.asciz "mf70_cf60_syswin09.brlyt"
	.asciz "mf70_cf60_syswin09_in.brlan"
	.asciz "txt_num01"
	.asciz "txt_num02"
	.asciz "txt_num03"
	.asciz "txt_num04"
	.asciz "txt_value02"
	.asciz "txt_value08"
	.asciz "txt_value09"
	.asciz "txt_value04"
	.asciz "txt_value07"
	.asciz "txt_value22"
	.asciz "txt_value50"
	.asciz "txt_value51"
	.asciz "txt_havenum"
	.asciz "txt_value30"
	.asciz "txt_value31"
	.asciz "txt_value32"
	.asciz "txt_value33"
	.asciz "txt_value34"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_help"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.asciz "txt_close00"
	.asciz "MNU_sysmes"
	.asciz "name"
	.asciz "txt_item05"
	.asciz "txt_item%02d"
	.byte 0x00
	.asciz "txt_num%02d"
	.asciz "MNU_collect"
	.asciz "txt_have"
	.asciz "MNU_item"
	.asciz "txt_para01"
	.asciz "txt_para04"
	.asciz "txt_para08"
	.asciz "txt_para10"
	.asciz "txt_para11"
	.asciz "txt_para22"
	.asciz "txt_para50"
	.asciz "txt_para60"
	.asciz "txt_para61"
	.asciz "txt_para30"
	.asciz "txt_para23"
	.asciz "MNU_main"
	.asciz "txt_titlemes"
	.asciz "%s%s"
	.asciz "pic_item%02d"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "mf00_reg20_cat00.tpl"
	.asciz "mf00_reg20_cat07.tpl"
	.asciz "mf00_reg20_cat01.tpl"
	.asciz "mf00_reg20_cat02.tpl"
	.asciz "mf00_reg20_cat03.tpl"
	.asciz "mf00_reg20_cat04.tpl"
	.asciz "mf00_reg20_cat05.tpl"
	.asciz "mf00_reg20_cat06.tpl"
	.asciz "mf00_reg20_cat09.tpl"
	.asciz "rare"
	.asciz "mf00_reg20_cat12.tpl"
	.asciz "mf00_reg20_cat10.tpl"
	.asciz "mf00_reg20_cat11.tpl"
	.asciz "mf00_reg20_cat08.tpl"
	.asciz "S"
	.asciz "U"
	.asciz "item_keep"
	.asciz "jwl_slot"
	.asciz "jwl_skill%d"
	.asciz "rankType"
	.asciz "pic_full%02d"
	.asciz "nul_item%02d"
	.asciz "nul_proportion"
	.asciz "MNU_skill"
	.asciz "win_main"
	.asciz "nul_close00"
	.asciz "nul_inf"
	.asciz "nul_para_01"
	.asciz "nul_para_30"
	.asciz "nul_para_50"
	.asciz "nul_para_60"
	.asciz "nul_para_80"
	.asciz "txt_para24"
	.asciz "txt_para25"
	.asciz "pic_ethcol01"
	.asciz "pic_ethcol02"
	.asciz "pic_ethcol03"
	.asciz "txt_eth01"
	.asciz "txt_eth02"
	.asciz "txt_eth03"
	.asciz "txt_para51"
	.asciz "txt_value60"
	.asciz "txt_value61"
	.asciz "txt_para%02d"
	.asciz "txt_value%02d"
	.asciz "dmg_low"
	.asciz "dmg_hi"
	.asciz "arm_phy"
	.asciz "arm_eth"
	.asciz "att_lev"
	.asciz "speed"
	.asciz "grd_rate"
	.asciz "flag"
	.asciz "equip_pc%d"
	.asciz "%d%s%d"
	.asciz "%s%d%s"
	.asciz "%d%s"
	.asciz "eva_rate"
	.asciz "arm_type"
	.asciz "pc_arts"
	.asciz "max"
	.asciz "MNU_shop"
	.asciz "attach"
	.asciz "txt_para52"
	.asciz "type"
	.asciz "mapID"
	.asciz "memory_type"
	.asciz "pc_type"
	.asciz "get_arts"
	.asciz "idx"
	.asciz "txt_para80"
	.asciz "pic_ethcol%02d"
	.asciz "atr_type"
	.asciz "mf00_reg30_crys00.tpl"
	.asciz "mf00_reg30_crys01.tpl"
	.asciz "mf00_reg30_crys02.tpl"
	.asciz "mf00_reg30_crys03.tpl"
	.asciz "mf00_reg30_crys04.tpl"
	.asciz "mf00_reg30_crys05.tpl"
	.asciz "mf00_reg30_crys06.tpl"
	.asciz "%s"
	.asciz "txt_eth%02d"
	.asciz "percent"
	.balign 4


.global lbl_805008D0
lbl_805008D0:
	# ROM: 0x4FC9D0
	.4byte 0x01020304
	.4byte 0x05060703
	.4byte 0x08010900
	.4byte 0x070E0579
	.4byte 0x05790579
	.4byte 0x0579057A
	.4byte 0x05790579
	.4byte 0x070E0000
	.4byte 0x0E1F0E1F
	.4byte 0x0E1A0E1F
	.4byte 0x0E1A0E1D
	.4byte 0x0E1C0105
	.4byte 0x0DAF0000

.global lbl_80500904
lbl_80500904:
	.asciz "cf::CSuddenCommu"
	.balign 4
	.asciz "cf::IObjectInfo"

.global lbl_80500928
lbl_80500928:
	.asciz "CMenuKizunaTalk"


.global lbl_80500938
lbl_80500938:
	.asciz "common/jp/bdat_kzn.bin"
	.asciz "/menu/KizunaTalk.arc"
	.asciz "MNU_sysmes"
	.asciz "name"
	.asciz "title"
	.asciz "flag"
	.asciz "chara_01"
	.asciz "chara_02"
	.asciz "friendly"
	.asciz "time"
	.asciz "CMenuKizunaTalk"
	.asciz "arc"
	.asciz "mf70_cf60_syswin04.brlyt"
	.asciz "mf70_cf60_syswin04_in.brlan"
	.asciz "txt_sysmes01"
	.asciz "txt_sysmes02"
	.asciz "txt_sysmes03"
	.asciz "txt_sysmes04"
	.asciz "BTL_pclist"
	.asciz "txt_sysmes02_00"
	.asciz "txt_sysmes02_01"
	.asciz "mf40_kiz_pcicon_e00.tpl"
	.asciz "mf40_kiz_pcicon_d00.tpl"
	.asciz "mf40_kiz_pcicon_c00.tpl"
	.asciz "mf40_kiz_pcicon_b00.tpl"
	.asciz "mf40_kiz_pcicon_a00.tpl"
	.asciz "pic_kizicon"
	.asciz "txt_sysmes04_00"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_close00"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.asciz "JNL_kizunalist"
	.balign 4

.global lbl_80500B28
lbl_80500B28:
	.asciz "CMenuItemExchange"
	.balign 4


.global lbl_80500B3C
lbl_80500B3C:
	.asciz "MNU_shop"
	.asciz "name"
	.4byte 0
	.2byte 0
.global lbl_80500B50
lbl_80500B50:
	.asciz "cf::CfPadTask"
	.balign 4

.global lbl_80500B60
lbl_80500B60:
	.asciz "CTTask<cf::CfPadTask>"
	.balign 4

.global lbl_80500B78
lbl_80500B78:
	.asciz "cf::CREvtLight"
	.balign 4


.global lbl_80500B88
lbl_80500B88:
	.asciz "CBgTexLyt"
	.asciz "mf00_reg_bg06.brlyt"
	.asciz "mf00_reg_bg07.brlyt"
	.asciz "mf00_reg_bg01.brlyt"
	.asciz "mf00_reg_bg02.brlyt"
	.asciz "mf00_reg_bg03.brlyt"
	.asciz "mf00_reg_bg04.brlyt"
	.asciz "mf00_reg_bg05.brlyt"
	.asciz "pic_ptm00"
	.asciz "pic_ptm01"
	.asciz "/menu/BgTex06.arc"
	.asciz "/menu/BgTex07.arc"
	.asciz "/menu/BgTex01.arc"
	.asciz "/menu/BgTex02.arc"
	.asciz "/menu/BgTex03.arc"
	.asciz "/menu/BgTex04.arc"
	.asciz "/menu/BgTex05.arc"
	.asciz "arc"
	.4byte 0

.global lbl_80500CB8
lbl_80500CB8:
	.asciz "CTitleAHelp"


.global lbl_80500CC4
lbl_80500CC4:
	.asciz "/menu/TitleAHelp.arc"
	.asciz "txt_tit"
	.asciz "pic_btn%02d"
	.asciz "txt_hlp%02d"
	.asciz "fileID_1"
	.asciz "fileID_2"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "nul_ttl"
	.asciz "txt_caution"
	.asciz "nul_caution"
	.asciz "CTitleAHelp"
	.asciz "arc"
	.asciz "mf00_hlp_tit.brlyt"
	.asciz "mf00_hlp_tit_in.brlan"
	.asciz "mf00_hlp_tit_change.brlan"
	.balign 4
	.4byte 0


.global lbl_80500D98
lbl_80500D98:
	# ROM: 0x4FCE98
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008

.global lbl_80500DB0
lbl_80500DB0:
	.asciz "percent_E"
	.balign 4

.global lbl_80500DBC
lbl_80500DBC:
	.asciz "percent_D"
	.balign 4

.global lbl_80500DC8
lbl_80500DC8:
	.asciz "percent_C"
	.balign 4

.global lbl_80500DD4
lbl_80500DD4:
	.asciz "percent_B"
	.balign 4

.global lbl_80500DE0
lbl_80500DE0:
	.asciz "percent_A"
	.balign 4

.global lbl_80500DEC
lbl_80500DEC:
	.asciz "percent_S"
	.balign 4


.global lbl_80500DF8
lbl_80500DF8:
	# ROM: 0x4FCEF8
	.4byte lbl_8066A830
	.4byte lbl_80500DB0
	.4byte lbl_80500DBC
	.4byte lbl_80500DC8
	.4byte lbl_80500DD4
	.4byte lbl_80500DE0
	.4byte lbl_80500DEC


.global lbl_80500E14
lbl_80500E14:
	# ROM: 0x4FCF14
	.4byte 0
	.float 1.0
	.4byte 0x3F99999A
	.float 1.5
	.4byte 0x3FE66666
	.4byte 0x40000000
	.4byte 0x40200000

.global lbl_80500E30
lbl_80500E30:
	.4byte 0x00000010
	.4byte 0x00100000
	.4byte 0x00200000

.global lbl_80500E3C
lbl_80500E3C:
	.asciz "CItemBoxGrid"
	.balign 4

.global lbl_80500E4C
lbl_80500E4C:
	.asciz "CArtsBookItem"
	.balign 4

.global lbl_80500E5C
lbl_80500E5C:
	.asciz "CVisionItem"

.global lbl_80500E68
lbl_80500E68:
	.asciz "CQuestItem"
	.balign 4


.global lbl_80500E74
lbl_80500E74:
	.asciz "type_succ_B1"
	.asciz "type_succ_A1"
	.asciz "cnd_succ_A1"
	.asciz "cnd_succ_B1"
	.asciz "type_succ_A2"
	.asciz "cnd_succ_A2"
	.asciz "type_succ_A3"
	.asciz "cnd_succ_A3"
	.asciz "type_succ_A4"
	.asciz "cnd_succ_A4"
	.asciz "type_succ_B2"
	.asciz "cnd_succ_B2"
	.asciz "type_succ_B3"
	.asciz "cnd_succ_B3"
	.asciz "type_succ_B4"
	.asciz "cnd_succ_B4"
	.asciz "order_succ_A"
	.asciz "MMU_questeve"
	.asciz "questID"
	.asciz "questval"
	.asciz "col6ID"
	.asciz "col6val"
	.asciz "itemID"
	.asciz "memory_type"
	.asciz "pc_type"
	.asciz "get_arts"
	.asciz "pc_arts"
	.asciz "idx"
	.asciz "equip_pc%d"
	.asciz "pc%d"
	.asciz "item_keep"
	.asciz "%s"
	.asciz "MNU_item"
	.asciz "name"
	.asciz "%s%s"
	.asciz "%d"
	.asciz "rvs_type"
	.asciz "rvs_caption"
	.asciz "<col=red>%s<col=def2>"
	.asciz "<col=red>%s%%<col=def2>"
	.asciz "<col=red>%d%%<col=def2>"
	.asciz "comment"
	.asciz "money"
	.asciz "rankType"
	.asciz "jwl_slot"
	.asciz "type"
	.asciz "category"
	.asciz "attach"
	.asciz "att_lev"
	.asciz "grd_rate"
	.asciz "arm_phy"
	.asciz "arm_eth"
	.asciz "arm_type"
	.asciz "eva_rate"
	.asciz "dmg_hi"
	.asciz "flag"
	.asciz "/menu/ItemBoxGrid.arc"
	.asciz "/menu/tpl/ItemIcon.arc"
	.asciz "common/jp/bdat_item.bin"
	.asciz "common/jp/bdat_mes.bin"
	.asciz "MNU_item_mes_a"
	.asciz "MNU_item_mes_b"
	.asciz "MNU_skill"
	.asciz "nul_sort"
	.asciz "nul_proportion"
	.asciz "MNU_shop"
	.asciz "present"
	.asciz "help"
	.asciz "MNU_battle"
	.asciz "atr_type"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "icon_base"
	.asciz "mf00_reg10_base21.tpl"
	.asciz "mf00_reg10_base20.tpl"
	.asciz "pic_btnbs%02d"
	.asciz "icon"
	.asciz "pic_icon%02d"
	.asciz "txt_num%02d"
	.balign 4
	.asciz "S"
	.asciz "U"
	.asciz "pic_eq%02d"
	.asciz "mf00_reg00_eq00.tpl"
	.asciz "mf00_reg00_eq03.tpl"
	.asciz "mf00_reg00_eq04.tpl"
	.asciz "mf00_reg00_eq02.tpl"
	.asciz "mf00_reg20_cat00.tpl"
	.asciz "mf00_reg20_cat07.tpl"
	.asciz "mf00_reg20_cat01.tpl"
	.asciz "mf00_reg20_cat02.tpl"
	.asciz "mf00_reg20_cat03.tpl"
	.asciz "mf00_reg20_cat04.tpl"
	.asciz "mf00_reg20_cat05.tpl"
	.asciz "mf00_reg20_cat06.tpl"
	.asciz "mf00_reg20_cat09.tpl"
	.asciz "mf00_reg20_cat10.tpl"
	.asciz "mf00_reg20_cat11.tpl"
	.asciz "mf00_reg20_cat08.tpl"
	.asciz "pic_cat%02d"
	.asciz "pic_slct%02d"
	.asciz "pic_tbbcon%02d"
	.asciz "pic_tbbcof%02d"
	.asciz "txt_pg01"
	.asciz "nul_pg"
	.asciz "pic_pghole%02d"
	.asciz "txt_pg00"
	.asciz "pic_pghole_on"
	.asciz "pic_hole%02d"
	.asciz "txt_name"
	.asciz "txt_comment"
	.asciz "%d%s"
	.asciz "txt_buyvalue02"
	.asciz "pic_bxbco00"
	.asciz "pic_bxbco01"
	.asciz "pic_bxbco02"
	.asciz "pic_bxbco03"
	.asciz "pic_bxbco04"
	.asciz "pic_bxbco05"
	.asciz "pic_bxbco06"
	.asciz "pic_bxbco07"
	.asciz "pic_bxbco08"
	.asciz "pic_hole01"
	.asciz "pic_hole02"
	.asciz "pic_hole03"
	.asciz "nul_button"
	.asciz "txt_soat01"
	.asciz "CItemBoxGrid"
	.asciz "arc"
	.asciz "mf02_box01_box.brlyt"
	.asciz "mf02_box01_box_in.brlan"
	.asciz "mf02_box01_box_in_info.brlan"
	.asciz "mf02_box01_box_slct.brlan"
	.asciz "txt_buyvalue01"
	.asciz "txt_soattit"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "MNU_kyeassign"
	.asciz "pic_soatbtn"
	.asciz "pic_pghole10"
	.asciz "pic_tbbcof01"
	.asciz "txt_num01"
	.asciz "txt_button00"
	.asciz "CItemBoxGridTex"
	.balign 4
	.4byte 0

.global lbl_80501588
lbl_80501588:
	.asciz "nul_curs06s"

.global lbl_80501594
lbl_80501594:
	.asciz "nul_curs06l"

.global lbl_805015A0
lbl_805015A0:
	.asciz "nul_curs07s"

.global lbl_805015AC
lbl_805015AC:
	.asciz "nul_curs07l"


.global lbl_805015B8
lbl_805015B8:
	.asciz "mf00_reg00_curs08.brlyt"
	.asciz "mf00_reg00_curs08_roop.brlan"
	.asciz "mf00_reg00_curs08_on.brlan"
	.asciz "mf00_reg00_curs07.brlyt"
	.asciz "mf00_reg00_curs07_roop.brlan"
	.asciz "mf00_reg00_curs07_on.brlan"
	.asciz "mf00_reg00_curs09.brlyt"
	.asciz "mf00_reg00_curs09_roop.brlan"
	.asciz "pic_pgarw_r"
	.asciz "pic_pgarw_l"
	.asciz "mf00_reg00_curs11.brlyt"
	.asciz "mf00_reg00_curs11_roop.brlan"
	.asciz "mf00_reg00_curs11_on.brlan"
	.asciz "pic_arrow08_l00"
	.asciz "pic_arrow08_r00"
	.asciz "mf00_reg00_curs14.brlyt"
	.asciz "mf00_reg00_curs14_roop.brlan"
	.asciz "mf00_reg00_curs14_on.brlan"
	.asciz "mf00_reg00_curs15.brlyt"
	.asciz "mf00_reg00_curs15_roop.brlan"
	.asciz "mf00_reg00_curs15_on.brlan"
	.asciz "mf00_reg00_curs16.brlyt"
	.asciz "mf00_reg00_curs16_roop.brlan"
	.asciz "mf00_reg00_curs16_on.brlan"
	.asciz "mf00_reg00_curs17.brlyt"
	.asciz "mf00_reg00_curs17_roop.brlan"
	.asciz "mf00_reg00_curs17_on.brlan"
	.asciz "mf00_reg00_curs18.brlyt"
	.asciz "mf00_reg00_curs18_roop.brlan"
	.asciz "mf00_reg00_curs18_on.brlan"
	.asciz "mf00_reg00_curs21.brlyt"
	.asciz "mf00_reg00_curs21_roop.brlan"
	.asciz "mf00_reg00_curs21_on.brlan"
	.asciz "mf00_reg00_curs22.brlyt"
	.asciz "mf00_reg00_curs22_roop.brlan"
	.asciz "mf00_reg00_curs22_on.brlan"
	.asciz "mf01_main22_subcursor.brlyt"
	.asciz "mf01_main22_subcursor_roop.brlan"
	.asciz "mf01_main22_subcursor_on.brlan"
	.asciz "pic_arrow_l00"
	.asciz "pic_arrow_r00"
	.balign 4

.global lbl_805019C0
lbl_805019C0:
	.asciz "txt_menu01_01"
	.balign 4

.global lbl_805019D0
lbl_805019D0:
	.asciz "txt_menu01_02"
	.balign 4

.global lbl_805019E0
lbl_805019E0:
	.asciz "txt_menu01_03"
	.balign 4

.global lbl_805019F0
lbl_805019F0:
	.asciz "txt_menu01_04"
	.balign 4

.global lbl_80501A00
lbl_80501A00:
	.asciz "txt_menu01_05"
	.balign 4

.global lbl_80501A10
lbl_80501A10:
	.asciz "CSortMenu"
	.balign 4
	.4byte 0


.global lbl_80501A20
lbl_80501A20:
	.asciz "/menu/SortMenu.arc"
	.asciz "nul_scr"
	.asciz "nul_proportion"
	.asciz "%s"
	.asciz "win_sortmenu01"
	.byte 0x00
	.asciz "CSortMenu"
	.asciz "arc"
	.asciz "mf00_reg00_sort.brlyt"
	.asciz "mf00_reg00_sort_in.brlan"
	.asciz "mf00_reg00_sort_info_in.brlan"

.global lbl_80501AB8
lbl_80501AB8:
	.asciz "percent_E"
	.balign 4

.global lbl_80501AC4
lbl_80501AC4:
	.asciz "percent_D"
	.balign 4

.global lbl_80501AD0
lbl_80501AD0:
	.asciz "percent_C"
	.balign 4

.global lbl_80501ADC
lbl_80501ADC:
	.asciz "percent_B"
	.balign 4

.global lbl_80501AE8
lbl_80501AE8:
	.asciz "percent_A"
	.balign 4

.global lbl_80501AF4
lbl_80501AF4:
	.asciz "percent_S"
	.balign 4


.global lbl_80501B00
lbl_80501B00:
	# ROM: 0x4FDC00
	.4byte lbl_8066A8C8
	.4byte lbl_80501AB8
	.4byte lbl_80501AC4
	.4byte lbl_80501AD0
	.4byte lbl_80501ADC
	.4byte lbl_80501AE8
	.4byte lbl_80501AF4


.global lbl_80501B1C
lbl_80501B1C:
	# ROM: 0x4FDC1C
	.4byte lbl_8066A8C8
	.4byte lbl_80501AF4
	.4byte lbl_80501AE8
	.4byte lbl_80501ADC
	.4byte lbl_80501AD0
	.4byte lbl_80501AC4
	.4byte lbl_80501AB8


.global lbl_80501B38
lbl_80501B38:
	# ROM: 0x4FDC38
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008


.global lbl_80501B50
lbl_80501B50:
	# ROM: 0x4FDC50
	.4byte lbl_8066A8C8
	.4byte lbl_80501AF4
	.4byte lbl_80501AE8
	.4byte lbl_80501ADC
	.4byte lbl_80501AD0
	.4byte lbl_80501AC4
	.4byte lbl_80501AB8

.global lbl_80501B6C
lbl_80501B6C:
	.asciz "CItemBoxInfo2"
	.balign 4

.global lbl_80501B7C
lbl_80501B7C:
	.asciz "CItemBoxInfo"
	.balign 4


.global lbl_80501B8C
lbl_80501B8C:
	.asciz "%d"
	.asciz "rvs_type"
	.asciz "rvs_caption"
	.asciz "%s"
	.asciz "<col=red>%s<col=def>"
	.asciz "<col=red>%s%%<col=def>"
	.asciz "<col=red>%d%%<col=def>"
	.asciz "/menu/ItemBoxInfo.arc"
	.asciz "/menu/tpl/CrystalIcon.arc"
	.asciz "nul_para_01"
	.asciz "nul_para_30"
	.asciz "nul_para_50"
	.asciz "nul_para_60"
	.asciz "nul_para_80"
	.asciz "nul_para_700"
	.asciz "nul_eth"
	.asciz "nul_infbcln01"
	.asciz "nul_infbcln700"
	.asciz "MNU_item"
	.asciz "name"
	.asciz "%d%s"
	.asciz "txt_gold01_00"
	.asciz "txt_excange%02d"
	.asciz "pic_pcbs%02d"
	.asciz "nul_proportion"
	.asciz "txt_scnd01"
	.asciz "txt_scnd03"
	.asciz "nul_scnd"
	.asciz "dmg_low"
	.asciz "dmg_hi"
	.asciz "arm_phy"
	.asciz "arm_eth"
	.asciz "att_lev"
	.asciz "speed"
	.asciz "grd_rate"
	.asciz "flag"
	.asciz "equip_pc%d"
	.asciz "eva_rate"
	.asciz "arm_type"
	.asciz "pc%d"
	.asciz "rankType"
	.asciz "MNU_shop"
	.asciz "atr_type"
	.asciz "type"
	.asciz "MNU_collect"
	.asciz "mapID"
	.asciz "memory_type"
	.asciz "pc_type"
	.asciz "get_arts"
	.asciz "pc_arts"
	.asciz "idx"
	.asciz "%d%s%d"
	.asciz "txt_value02"
	.asciz "txt_value08"
	.asciz "txt_value09"
	.asciz "%s%d%s"
	.asciz "txt_value04"
	.asciz "txt_value07"
	.asciz "txt_value22"
	.byte 0x00
	.asciz "txt_para25"
	.asciz "txt_para01"
	.asciz "txt_para10"
	.asciz "txt_para11"
	.asciz "txt_para04"
	.asciz "txt_para08"
	.asciz "txt_para22"
	.asciz "txt_para23"
	.asciz "pic_pc%02d"
	.asciz "pic_eq%02d"
	.asciz "mf00_reg00_eq01.tpl"
	.asciz "mf00_reg00_eq00.tpl"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "txt_para24"
	.asciz "pic_ethcol%02d"
	.asciz "mf00_reg30_crys00.tpl"
	.asciz "mf00_reg30_crys01.tpl"
	.asciz "mf00_reg30_crys02.tpl"
	.asciz "mf00_reg30_crys03.tpl"
	.asciz "mf00_reg30_crys04.tpl"
	.asciz "mf00_reg30_crys05.tpl"
	.asciz "mf00_reg30_crys06.tpl"
	.asciz "txt_ethvalue%02d"
	.asciz "%s%s"
	.asciz "%s "
	.asciz "%d "
	.asciz "txt_eth%02d"
	.asciz "jwl_slot"
	.asciz "jwl_skill%d"
	.asciz "percent"
	.asciz "txt_para80"
	.asciz "txt_value50"
	.asciz "txt_value51"
	.asciz "txt_para51"
	.asciz "attach"
	.asciz "txt_para52"
	.asciz "txt_value60"
	.asciz "txt_value61"
	.asciz "txt_value30"
	.asciz "txt_para%02d"
	.asciz "txt_value%02d"
	.asciz "tag_icon"
	.asciz "txt_para736"
	.asciz "txt_value700"
	.asciz "txt_value702"
	.asciz "accum"
	.asciz "max"
	.asciz "txt_para7%02d"
	.asciz "txt_value7%02d"
	.asciz "CItemBoxInfo"
	.asciz "arc"
	.asciz "mf02_box02_inf.brlyt"
	.asciz "mf02_box02_inf_in.brlan"
	.asciz "mf02_box02_inf_info_in.brlan"
	.asciz "txt_value31"
	.asciz "txt_value32"
	.asciz "txt_value33"
	.asciz "txt_value34"
	.asciz "txt_ethvalue01"
	.asciz "txt_ethvalue02"
	.asciz "txt_ethvalue03"
	.asciz "txt_value703"
	.asciz "txt_value704"
	.asciz "txt_value705"
	.asciz "txt_value708"
	.asciz "txt_value710"
	.asciz "txt_value706"
	.asciz "txt_value709"
	.asciz "txt_value712"
	.asciz "txt_value714"
	.asciz "txt_value715"
	.asciz "txt_value716"
	.asciz "txt_value717"
	.asciz "txt_value718"
	.asciz "txt_value719"
	.asciz "txt_value720"
	.asciz "txt_value721"
	.asciz "txt_value722"
	.asciz "txt_value723"
	.asciz "txt_para704"
	.asciz "txt_scnd02"
	.asciz "nul_shop"
	.asciz "nul_excange"
	.asciz "txt_para30"
	.asciz "txt_para50"
	.asciz "txt_para60"
	.asciz "txt_para61"
	.asciz "txt_para700"
	.asciz "txt_para702"
	.asciz "txt_para703"
	.asciz "txt_para705"
	.asciz "txt_para706"
	.asciz "txt_para708"
	.asciz "txt_para709"
	.asciz "txt_para710"
	.asciz "txt_para713"
	.asciz "txt_para716"
	.asciz "txt_para717"
	.asciz "MNU_relate"
	.asciz "txt_npctype"
	.asciz "txt_npcname"
	.asciz "txt_npcframe"
	.asciz "txt_excange00"
	.asciz "txt_excange01"
	.asciz "pic_pcbs01"
	.asciz "txt_scnd00"
	.asciz "CItemBoxInfoTex"
	.asciz "itemID"
	.asciz "jwl_skill1"
	.asciz "CItemBoxInfo2"
	.asciz "CItemBoxInfo2Tex"
	.balign 4

.global lbl_805023A0
lbl_805023A0:
	.asciz "CNumSelect"
	.balign 4
	.4byte 0


.global lbl_805023B0
lbl_805023B0:
	.asciz "/menu/ShopSubWin.arc"
	.asciz "txt_name"
	.asciz "txt_value"
	.asciz "MNU_item"
	.asciz "name"
	.asciz "%d%s"
	.asciz "txt_total"
	.asciz "pic_arrow_o01"
	.asciz "pic_arrow_u01"
	.asciz "pic_up"
	.asciz "pic_down"
	.asciz "CNumSelect"
	.asciz "arc"
	.asciz "mf70_cf60_syswin05.brlyt"
	.asciz "mf70_cf60_syswin05_in_value.brlan"
	.asciz "mf70_cf60_syswin05_roop.brlan"
	.asciz "mf70_cf60_syswin05_on.brlan"
	.asciz "nul_shslct"
	.asciz "MNU_shop"
	.asciz "txt_buy01"
	.asciz "txt_buy02"
	.asciz "txt_buy03"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_close00"
	.asciz "txt_close01"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.asciz "pic_btn01"


.global lbl_80502528
lbl_80502528:
	# ROM: 0x4FE628
	.4byte 0
	.4byte 0
	.4byte lbl_8066A958
	.4byte 0
	.4byte lbl_8066A95C
	.4byte lbl_8066A964
	.4byte lbl_8066A96C
	.4byte lbl_8066A970
	.4byte lbl_8066A978
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8066A980

.global lbl_80502560
lbl_80502560:
	.asciz "exchangelist0000"
	.balign 4

.global lbl_80502574
lbl_80502574:
	.asciz "exchangelist0101"
	.balign 4

.global lbl_80502588
lbl_80502588:
	.asciz "exchangelist0201"
	.balign 4

.global lbl_8050259C
lbl_8050259C:
	.asciz "exchangelist0301"
	.balign 4

.global lbl_805025B0
lbl_805025B0:
	.asciz "exchangelist0401"
	.balign 4

.global lbl_805025C4
lbl_805025C4:
	.asciz "exchangelist0402"
	.balign 4

.global lbl_805025D8
lbl_805025D8:
	.asciz "exchangelist0501"
	.balign 4

.global lbl_805025EC
lbl_805025EC:
	.asciz "exchangelist0601"
	.balign 4

.global lbl_80502600
lbl_80502600:
	.asciz "exchangelist0701"
	.balign 4

.global lbl_80502614
lbl_80502614:
	.asciz "exchangelist0801"
	.balign 4

.global lbl_80502628
lbl_80502628:
	.asciz "exchangelist0901"
	.balign 4

.global lbl_8050263C
lbl_8050263C:
	.asciz "exchangelist1001"
	.balign 4

.global lbl_80502650
lbl_80502650:
	.asciz "exchangelist1101"
	.balign 4

.global lbl_80502664
lbl_80502664:
	.asciz "exchangelist1201"
	.balign 4

.global lbl_80502678
lbl_80502678:
	.asciz "exchangelist1202"
	.balign 4

.global lbl_8050268C
lbl_8050268C:
	.asciz "exchangelist1301"
	.balign 4

.global lbl_805026A0
lbl_805026A0:
	.asciz "exchangelist1401"
	.balign 4

.global lbl_805026B4
lbl_805026B4:
	.asciz "exchangelist1501"
	.balign 4

.global lbl_805026C8
lbl_805026C8:
	.asciz "exchangelist1601"
	.balign 4

.global lbl_805026DC
lbl_805026DC:
	.asciz "exchangelist1701"
	.balign 4

.global lbl_805026F0
lbl_805026F0:
	.asciz "exchangelist1801"
	.balign 4

.global lbl_80502704
lbl_80502704:
	.asciz "exchangelist1901"
	.balign 4

.global lbl_80502718
lbl_80502718:
	.asciz "exchangelist2001"
	.balign 4

.global lbl_8050272C
lbl_8050272C:
	.asciz "exchangelist2101"
	.balign 4

.global lbl_80502740
lbl_80502740:
	.asciz "exchangelist2201"
	.balign 4

.global lbl_80502754
lbl_80502754:
	.asciz "exchangelist2301"
	.balign 4
	.4byte lbl_80502560
	.4byte lbl_80502574
	.4byte lbl_80502588
	.4byte lbl_8050259C
	.4byte lbl_805025B0
	.4byte lbl_805025C4
	.4byte lbl_805025D8
	.4byte lbl_805025EC
	.4byte lbl_80502600
	.4byte lbl_80502614
	.4byte lbl_80502628
	.4byte lbl_8050263C
	.4byte lbl_80502650
	.4byte lbl_80502664
	.4byte lbl_80502678
	.4byte lbl_8050268C
	.4byte lbl_805026A0
	.4byte lbl_805026B4
	.4byte lbl_805026C8
	.4byte lbl_805026C8
	.4byte lbl_805026DC
	.4byte lbl_805026F0
	.4byte lbl_80502704
	.4byte lbl_80502718
	.4byte lbl_8050272C
	.4byte lbl_80502740
	.4byte lbl_80502754

.global lbl_805027D4
lbl_805027D4:
	.asciz "kessyou1"
	.balign 4

.global lbl_805027E0
lbl_805027E0:
	.asciz "kessyou2"
	.balign 4

.global lbl_805027EC
lbl_805027EC:
	.asciz "collect1"
	.balign 4

.global lbl_805027F8
lbl_805027F8:
	.asciz "collect2"
	.balign 4

.global lbl_80502804
lbl_80502804:
	.asciz "materia1"
	.balign 4

.global lbl_80502810
lbl_80502810:
	.asciz "materia2"
	.balign 4
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8066A988
	.4byte 0
	.4byte lbl_805027D4
	.4byte lbl_805027E0
	.4byte lbl_8066A990
	.4byte 0
	.4byte lbl_8066A998
	.4byte 0
	.4byte lbl_8066A9A0
	.4byte 0
	.4byte lbl_8066A9A8
	.4byte 0
	.4byte lbl_8066A9B0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_805027EC
	.4byte lbl_805027F8
	.4byte lbl_80502804
	.4byte lbl_80502810
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_80502890
lbl_80502890:
	.asciz "percent_E"
	.balign 4

.global lbl_8050289C
lbl_8050289C:
	.asciz "percent_D"
	.balign 4

.global lbl_805028A8
lbl_805028A8:
	.asciz "percent_C"
	.balign 4

.global lbl_805028B4
lbl_805028B4:
	.asciz "percent_B"
	.balign 4

.global lbl_805028C0
lbl_805028C0:
	.asciz "percent_A"
	.balign 4

.global lbl_805028CC
lbl_805028CC:
	.asciz "percent_S"
	.balign 4


.global lbl_805028D8
lbl_805028D8:
	# ROM: 0x4FE9D8
	.4byte lbl_8066A9D0
	.4byte lbl_80502890
	.4byte lbl_8050289C
	.4byte lbl_805028A8
	.4byte lbl_805028B4
	.4byte lbl_805028C0
	.4byte lbl_805028CC


.global lbl_805028F4
lbl_805028F4:
	# ROM: 0x4FE9F4
	.4byte 0
	.float 1.0
	.4byte 0x3F99999A
	.float 1.5
	.4byte 0x3FE66666
	.4byte 0x40000000
	.4byte 0x40200000

.global lbl_80502910
lbl_80502910:
	.asciz "CItemBoxLine"
	.balign 4

.global lbl_80502920
lbl_80502920:
	.asciz "CIBLTabCur"
	.balign 4
	.asciz "CBaseCur"
	.balign 4
	.asciz "IWorkEvent"
	.balign 4


.global lbl_80502944
lbl_80502944:
	.asciz "%s%d"
	.asciz "shoplist"
	.asciz "pc_type"
	.asciz "equip_pc%d"
	.asciz "pc%d"
	.asciz "arm_type"
	.asciz "exc_id5"
	.asciz "exc_id4"
	.asciz "exc_id3"
	.asciz "exc_id2"
	.asciz "exc_id1"
	.asciz "%s"
	.asciz "rankType"
	.asciz "MNU_shop"
	.asciz "name"
	.asciz "rvs_type"
	.asciz "rvs_caption"
	.asciz "<col=red>%s<col=def2>"
	.asciz "<col=red>%s%%<col=def2>"
	.asciz "<col=red>%d%%<col=def2>"
	.asciz "comment"
	.asciz "jwl_slot"
	.asciz "jwl_skill%d"
	.asciz "money"
	.asciz "mf00_reg00_curs07.brlyt"
	.asciz "mf00_reg00_curs07_roop.brlan"
	.asciz "mf00_reg00_curs07_on.brlan"
	.asciz "/menu/ItemBoxLine.arc"
	.asciz "/menu/tpl/ItemIcon.arc"
	.asciz "common/jp/bdat_item.bin"
	.asciz "common/jp/bdat_mes.bin"
	.asciz "MNU_sysmes"
	.asciz "MNU_party"
	.asciz "MNU_skill"
	.asciz "help"
	.asciz "icon_base"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "pic_btnbs%02d"
	.asciz "icon"
	.asciz "pic_icon%02d"
	.asciz "txt_num%02d"
	.asciz "MNU_item"
	.asciz "%d"
	.byte 0x00
	.asciz "S"
	.asciz "U"
	.asciz "mf00_reg20_cat00.tpl"
	.asciz "mf00_reg20_cat07.tpl"
	.asciz "mf00_reg20_cat01.tpl"
	.asciz "mf00_reg20_cat02.tpl"
	.asciz "mf00_reg20_cat03.tpl"
	.asciz "mf00_reg20_cat04.tpl"
	.asciz "mf00_reg20_cat05.tpl"
	.asciz "mf00_reg20_cat06.tpl"
	.asciz "mf00_reg20_cat09.tpl"
	.asciz "mf00_reg20_cat10.tpl"
	.asciz "mf00_reg20_cat11.tpl"
	.asciz "mf00_reg20_cat08.tpl"
	.asciz "pic_cat%02d"
	.asciz "pic_off%02d"
	.asciz "pic_tbbcon%02d"
	.asciz "pic_tbbcof%02d"
	.asciz "mf02_box00_tabemp.tpl"
	.asciz "txt_name%02d"
	.asciz "txt_buyvalue%02d"
	.asciz "%d%s"
	.asciz "txt_comment"
	.asciz "nul_proportion"
	.asciz "nulbtn%02d"
	.asciz "txt_havenum"
	.asciz "nul_bcln01"
	.asciz "nul_bcln50"
	.asciz "nul_bcln60"
	.asciz "nul_para_01"
	.asciz "nul_para_50"
	.asciz "nul_para_60"
	.asciz "nul_para_80"
	.asciz "txt_para01"
	.asciz "txt_para04"
	.asciz "txt_para08"
	.asciz "txt_para10"
	.asciz "txt_para11"
	.asciz "txt_para22"
	.asciz "txt_para23"
	.asciz "txt_para24"
	.asciz "txt_para25"
	.asciz "txt_value02"
	.asciz "txt_value04"
	.asciz "txt_value07"
	.asciz "txt_value08"
	.asciz "txt_value09"
	.asciz "txt_value22"
	.asciz "pic_ethcol01"
	.asciz "pic_ethcol02"
	.asciz "pic_ethcol03"
	.asciz "txt_eth01"
	.asciz "txt_eth02"
	.asciz "txt_eth03"
	.asciz "txt_para50"
	.asciz "txt_para51"
	.asciz "txt_value50"
	.asciz "txt_value51"
	.asciz "txt_para60"
	.asciz "txt_para61"
	.asciz "txt_value60"
	.asciz "txt_value61"
	.asciz "dmg_low"
	.asciz "dmg_hi"
	.asciz "arm_phy"
	.asciz "arm_eth"
	.asciz "att_lev"
	.asciz "speed"
	.asciz "grd_rate"
	.asciz "flag"
	.asciz "%d%s%d"
	.asciz "%s%d%s"
	.asciz "eva_rate"
	.asciz "pc_arts"
	.asciz "max"
	.asciz "attach"
	.asciz "txt_para52"
	.asciz "type"
	.asciz "MNU_collect"
	.asciz "mapID"
	.asciz "memory_type"
	.asciz "get_arts"
	.asciz "idx"
	.asciz "txt_para80"
	.asciz "pic_ethcol%02d"
	.asciz "percent"
	.asciz "atr_type"
	.asciz "mf00_reg30_crys00.tpl"
	.asciz "mf00_reg30_crys01.tpl"
	.asciz "mf00_reg30_crys02.tpl"
	.asciz "mf00_reg30_crys03.tpl"
	.asciz "mf00_reg30_crys04.tpl"
	.asciz "mf00_reg30_crys05.tpl"
	.asciz "mf00_reg30_crys06.tpl"
	.asciz "txt_eth%02d"
	.asciz "CItemBoxLine"
	.asciz "arc"
	.asciz "mf02_box01_boxsh.brlyt"
	.asciz "mf02_box01_boxsh_in.brlan"
	.asciz "mf02_box01_boxsh_info_in.brlan"
	.asciz "pic_cat01"
	.asciz "txt_num01"
	.asciz "txt_num02"
	.asciz "txt_num03"
	.asciz "txt_num04"
	.asciz "txt_num05"
	.asciz "txt_num06"
	.asciz "txt_num07"
	.asciz "txt_have"
	.asciz "CItemBoxLineTex"
	.asciz "MNU_item_mes_a"
	.asciz "MNU_item_mes_b"

.global lbl_805030F0
lbl_805030F0:
	.asciz "nul_scr00"
	.balign 4

.global lbl_805030FC
lbl_805030FC:
	.asciz "nul_scr01"
	.balign 4

.global lbl_80503108
lbl_80503108:
	.asciz "nul_scr02"
	.balign 4

.global lbl_80503114
lbl_80503114:
	.asciz "nul_scr03"
	.balign 4

.global lbl_80503120
lbl_80503120:
	.asciz "nul_scr04"
	.balign 4

.global lbl_8050312C
lbl_8050312C:
	.asciz "nul_scr05"
	.balign 4

.global lbl_80503138
lbl_80503138:
	.asciz "pic_scr00_bar"
	.balign 4

.global lbl_80503148
lbl_80503148:
	.asciz "pic_scr01_bar"
	.balign 4

.global lbl_80503158
lbl_80503158:
	.asciz "pic_scr02_bar"
	.balign 4

.global lbl_80503168
lbl_80503168:
	.asciz "pic_scr03_bar"
	.balign 4

.global lbl_80503178
lbl_80503178:
	.asciz "pic_scr04_bar"
	.balign 4

.global lbl_80503188
lbl_80503188:
	.asciz "pic_scr05_bar"
	.balign 4

.global lbl_80503198
lbl_80503198:
	.asciz "CScrollBar"
	.balign 4


.global lbl_805031A4
lbl_805031A4:
	.asciz "/menu/ScrollBar.arc"
	.asciz "CScrollBar"
	.asciz "arc"
	.asciz "mf00_scr00.brlyt"
	.asciz "mf00_scr00_info_in.brlan"
	.balign 4
	.4byte 0

.global lbl_805031F8
lbl_805031F8:
	.asciz "r1_quest_FLG"
	.balign 4

.global lbl_80503208
lbl_80503208:
	.asciz "r1_quest_STFLG"
	.balign 4

.global lbl_80503218
lbl_80503218:
	.asciz "r1_S_FLG_MIN"
	.balign 4

.global lbl_80503228
lbl_80503228:
	.asciz "r1_S_FLG_MAX"
	.balign 4

.global lbl_80503238
lbl_80503238:
	.asciz "r1_gimID"
	.balign 4

.global lbl_80503244
lbl_80503244:
	.asciz "r1_named_FLG"
	.balign 4

.global lbl_80503254
lbl_80503254:
	.asciz "r1_item_lost"
	.balign 4

.global lbl_80503264
lbl_80503264:
	.asciz "s1pcwait"
	.balign 4

.global lbl_80503270
lbl_80503270:
	.asciz "s1LODtype"
	.balign 4

.global lbl_8050327C
lbl_8050327C:
	.asciz "s1LODsub"
	.balign 4

.global lbl_80503288
lbl_80503288:
	.asciz "s1LODSTOP"
	.balign 4

.global lbl_80503294
lbl_80503294:
	.asciz "cf::CfGimmickObject"

.global lbl_805032A8
lbl_805032A8:
	.asciz "cf::CfGimmick"
	.balign 4


.global lbl_805032B8
lbl_805032B8:
	.asciz "rectype"
	.asciz "ct"
	.asciz "visible"
	.asciz "named_FLG"
	.asciz "popSTIME"
	.asciz "popETIME"
	.asciz "mapOBJ"
	.asciz "LODOBJ"
	.asciz "LODOBJ2"
	.asciz "s1MSGID"
	.asciz "s2MSGID"
	.asciz "s3cleartype"
	.asciz "s4cleartype"
	.asciz "s3gimENskip"
	.asciz "s3gimENID1"
	.asciz "s3gimENID2"
	.asciz "s3gimENID3"
	.asciz "s5gimENID1"
	.asciz "s5gimENID2"
	.asciz "s5gimENID3"
	.asciz "s3touchSE"
	.asciz "s3wait"
	.asciz "s4wait"
	.asciz "nextqFLG"
	.asciz "nextqstFLG"
	.asciz "nextwait"
	.asciz "s2lockPC"
	.balign 4
	.4byte 0

.global lbl_805033B8
lbl_805033B8:
	.asciz "cf::CfResTboxImpl"
	.balign 4
	.4byte 0

.global lbl_805033D0
lbl_805033D0:
	.4byte 0x00000010
	.4byte 0x00100000
	.4byte 0x00200000

.global lbl_805033DC
lbl_805033DC:
	.asciz "CPartyStateWin"
	.balign 4


.global lbl_805033EC
lbl_805033EC:
	.asciz "CPartyStateWin"
	.asciz "CPartyStateScn"
	.asciz "MNU_party"
	.asciz "name"
	.asciz "MNU_item"
	.balign 4
	.4byte 0

.global lbl_80503428
lbl_80503428:
	.4byte 0x00000010
	.4byte 0x00100000
	.4byte 0x00200000

.global lbl_80503434
lbl_80503434:
	.4byte 0x00000010
	.4byte 0x00100000
	.4byte 0x00200000

.global lbl_80503440
lbl_80503440:
	.asciz "CModelDisp"
	.balign 4


.global lbl_8050344C
lbl_8050344C:
	.asciz "BBB"
	.asciz "FFF"
	.asciz "AAA"
	.asciz "core"
	.balign 4

.global lbl_80503460
lbl_80503460:
	.asciz "/menu/PartyState.arc"
	.balign 4


.global lbl_80503478
lbl_80503478:
	# ROM: 0x4FF578
	.4byte 0
	.4byte 0x41880000
	.4byte 0x42080000
	.4byte 0x424C0000
	.4byte 0x42880000

.global lbl_8050348C
lbl_8050348C:
	.asciz "CPartyState"


.global lbl_80503498
lbl_80503498:
	.asciz "nul_pc%02d"
	.asciz "%02d"
	.asciz "txt_pc%02dvalue700"
	.asciz "txt_pc%02dvalue703"
	.asciz "txt_pc%02dvalue704"
	.asciz "txt_pc%02dpara705"
	.asciz "pic_gage_skl%02d"
	.asciz "pic_gage_exp%02d"
	.asciz "icon_type2"
	.asciz "pic_face%02d"
	.asciz "nul_sklcat%02d"
	.asciz "mf20_skl01_pc%02dcat%02d.tpl"
	.asciz "pic_sklcat%02d"
	.asciz "pic_guest%02d_bs"
	.asciz "rlt_texture"
	.asciz "pic_guest%02d_face"
	.asciz "txt_othval02"
	.asciz "txt_othval03"
	.asciz "BTL_PSVskill"
	.asciz "point_PP"
	.asciz "CPartyState"
	.asciz "arc"
	.asciz "mf02_pt00.brlyt"
	.asciz "mf02_pt00_in.brlan"
	.asciz "mf02_pt00_info_in.brlan"
	.asciz "txt_othunit02"
	.asciz "txt_othval01"
	.asciz "txt_pc%02dpara704"
	.asciz "txt_pc%02dpara700"
	.asciz "MNU_party"
	.asciz "name"
	.asciz "txt_pc%02dpara703"
	.asciz "%d%s"

.global lbl_80503678
lbl_80503678:
	.asciz "getPcHpRate"

.global lbl_80503684
lbl_80503684:
	.asciz "getEneHp"
	.balign 4

.global lbl_80503690
lbl_80503690:
	.asciz "getEneHpRate"
	.balign 4

.global lbl_805036A0
lbl_805036A0:
	.asciz "setPcBtlState"
	.balign 4

.global lbl_805036B0
lbl_805036B0:
	.asciz "clearPcBtlState"

.global lbl_805036C0
lbl_805036C0:
	.asciz "setEneBtlState"
	.balign 4

.global lbl_805036D0
lbl_805036D0:
	.asciz "clearEneBtlState"
	.balign 4

.global lbl_805036E4
lbl_805036E4:
	.asciz "onPcArtsAttack"
	.balign 4
	.4byte 0

.global lbl_805036F8
lbl_805036F8:
	.asciz "onEneArtsAttack"

.global lbl_80503708
lbl_80503708:
	.asciz "learnArts"
	.balign 4
	.4byte 0


.global lbl_80503718
lbl_80503718:
	.asciz "pc_arts"
	.4byte 0x70630075
	.4byte 0x6E697400

.global lbl_80503728
lbl_80503728:
	.4byte 0x00000010
	.4byte 0x00100000
	.4byte 0x00200000

.global lbl_80503734
lbl_80503734:
	.4byte 0x00000010
	.4byte 0x00100000
	.4byte 0x00200000

.global lbl_80503740
lbl_80503740:
	.asciz "CModelDispEquip"


.global lbl_80503750
lbl_80503750:
	.asciz "BBB"
	.asciz "FFF"
	.asciz "AAA"
	.asciz "core"
	.asciz "/chr/pc/mp%02d%02d%02d.mca"
	.asciz "ITM_wpnlist"
	.asciz "resource"
	.asciz "/chr/wp/mw%s.mca"
	.asciz "def_mount"
	.asciz "bat_mount"
	.balign 4

.global lbl_805037B8
lbl_805037B8:
	.4byte 0x00000010
	.4byte 0x00100000
	.4byte 0x00200000

.global lbl_805037C4
lbl_805037C4:
	.asciz "pic_btn00"
	.balign 4

.global lbl_805037D0
lbl_805037D0:
	.asciz "pic_slot00"
	.balign 4

.global lbl_805037DC
lbl_805037DC:
	.asciz "pic_slot01"
	.balign 4

.global lbl_805037E8
lbl_805037E8:
	.asciz "pic_slot02"
	.balign 4

.global lbl_805037F4
lbl_805037F4:
	.asciz "pic_btn01"
	.balign 4

.global lbl_80503800
lbl_80503800:
	.asciz "pic_slot03"
	.balign 4

.global lbl_8050380C
lbl_8050380C:
	.asciz "pic_btn02"
	.balign 4

.global lbl_80503818
lbl_80503818:
	.asciz "pic_slot04"
	.balign 4

.global lbl_80503824
lbl_80503824:
	.asciz "pic_btn03"
	.balign 4

.global lbl_80503830
lbl_80503830:
	.asciz "pic_slot05"
	.balign 4

.global lbl_8050383C
lbl_8050383C:
	.asciz "pic_btn04"
	.balign 4

.global lbl_80503848
lbl_80503848:
	.asciz "pic_slot06"
	.balign 4

.global lbl_80503854
lbl_80503854:
	.asciz "pic_btn05"
	.balign 4

.global lbl_80503860
lbl_80503860:
	.asciz "pic_slot07"
	.balign 4
	.4byte 0


.global lbl_80503870
lbl_80503870:
	# ROM: 0x4FF970
	.4byte lbl_805037C4
	.4byte lbl_805037D0
	.4byte lbl_805037DC
	.4byte lbl_805037E8
	.4byte lbl_805037F4
	.4byte lbl_80503800
	.4byte lbl_8050380C
	.4byte lbl_80503818
	.4byte lbl_80503824
	.4byte lbl_80503830
	.4byte lbl_8050383C
	.4byte lbl_80503848
	.4byte lbl_80503854
	.4byte lbl_80503860

.global lbl_805038A8
lbl_805038A8:
	.asciz "CEquipChange"
	.balign 4


.global lbl_805038B8
lbl_805038B8:
	.asciz "/menu/EquipChange.arc"
	.asciz "/menu/tpl/CrystalIcon.arc"
	.asciz "item_keep"
	.asciz "nul_btn"
	.asciz "nul_proportion"
	.asciz "txt_num00"
	.balign 4
	.asciz "txt_num01"
	.asciz "txt_num02"
	.asciz "txt_num03"
	.asciz "txt_num04"
	.asciz "txt_num05"
	.asciz "txt_wpname00"
	.asciz "S"
	.asciz "txt_crysname%02d"
	.asciz "pic_crys%02d"
	.asciz "pic_slot%02d"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "MNU_item"
	.asciz "name"
	.asciz "%s%s"
	.asciz "atr_type"
	.asciz "mf00_reg30_crys00.tpl"
	.asciz "mf00_reg30_crys01.tpl"
	.asciz "mf00_reg30_crys02.tpl"
	.asciz "mf00_reg30_crys03.tpl"
	.asciz "mf00_reg30_crys04.tpl"
	.asciz "mf00_reg30_crys05.tpl"
	.asciz "mf00_reg30_crys06.tpl"
	.asciz "U"
	.asciz "%s"
	.asciz "txt_wpname%02d"
	.asciz "txt_num%02d"
	.asciz "itemType"
	.asciz "CEquipChange"
	.asciz "arc"
	.asciz "mf02_eq00.brlyt"
	.asciz "mf02_eq00_in.brlan"
	.asciz "mf02_eq00_info_in.brlan"
	.asciz "mf02_eq00_box_in.brlan"
	.asciz "CEquipChangeTex"
	.balign 4

.global lbl_80503AE8
lbl_80503AE8:
	.asciz "reslist<cf::CfMapMineManager::MinePoint>"
	.balign 4

.global lbl_80503B14
lbl_80503B14:
	.asciz "_reslist_base<cf::CfMapMineManager::MinePoint>"
	.balign 4


.global lbl_80503B44
lbl_80503B44:
	.asciz "cnt_min"
	.asciz "cnt_max"
	.asciz "posX"
	.asciz "posY"
	.asciz "posZ"
	.asciz "get_id"
	.asciz "obj_id"
	.asciz "mine_type"
	.asciz "FLD_pointlist"
	.asciz "point_id"
	.asciz "name"
	.asciz "rank_type_up"
	.asciz "sflg1"
	.asciz "eflg1"
	.asciz "reset_time"
	.asciz "MNU_sysmes"
	.balign 4

.global lbl_80503BC8
lbl_80503BC8:
	.asciz "CItemBoxGridSubMenu"


.global lbl_80503BDC
lbl_80503BDC:
	.asciz "mf70_cf60_syswin07.brlyt"
	.asciz "mf70_cf60_syswin07_in.brlan"
	.asciz "txt_point"
	.asciz "nul_proportion"
	.asciz "txt_slct01"
	.asciz "txt_slct02"
	.asciz "txt_slct03"
	.asciz "nul_coll"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_close01"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn01"
	.balign 4
	.asciz "MNU_item"
	.asciz "name"
	.asciz "win_slct"
	.asciz "nul_close01"
	.balign 4
	.4byte 0

.global lbl_80503CB8
lbl_80503CB8:
	.asciz "A_area_x"
	.balign 4

.global lbl_80503CC4
lbl_80503CC4:
	.asciz "A_area_py"
	.balign 4

.global lbl_80503CD0
lbl_80503CD0:
	.asciz "A_area_my"
	.balign 4

.global lbl_80503CDC
lbl_80503CDC:
	.asciz "A_area_z"
	.balign 4

.global lbl_80503CE8
lbl_80503CE8:
	.asciz "A_area_rx"
	.balign 4

.global lbl_80503CF4
lbl_80503CF4:
	.asciz "A_area_ry"
	.balign 4

.global lbl_80503D00
lbl_80503D00:
	.asciz "A_area_rz"
	.balign 4

.global lbl_80503D0C
lbl_80503D0C:
	.asciz "A_rectype"
	.balign 4

.global lbl_80503D18
lbl_80503D18:
	.asciz "S_FLG_MIN"
	.balign 4

.global lbl_80503D24
lbl_80503D24:
	.asciz "S_FLG_MAX"
	.balign 4

.global lbl_80503D30
lbl_80503D30:
	.asciz "quest_FLG"
	.balign 4

.global lbl_80503D3C
lbl_80503D3C:
	.asciz "quest_STFLG"

.global lbl_80503D48
lbl_80503D48:
	.asciz "MESS ERR"
	.balign 4


.global lbl_80503D54
lbl_80503D54:
	.asciz "cl_area_x"
	.asciz "cl_area_py"
	.asciz "cl_area_my"
	.asciz "cl_area_z"
	.asciz "%s"
	.4byte 0
	.byte 0x00, 0x00, 0x00
.global lbl_80503D88
lbl_80503D88:
	.asciz "cf::CfGimmickElv"
	.balign 4


.global lbl_80503D9C
lbl_80503D9C:
	.asciz "mapObj"
	.asciz "LIFTLOD"
	.asciz "shtALOD"
	.asciz "shtBLOD"
	.asciz "swtLOD"
	.asciz "switchEF"
	.asciz "switchSE"
	.asciz "shtSE"
	.asciz "LSSE"
	.asciz "LLSE"
	.asciz "LESE"
	.asciz "LODSTOP"
	.balign 4
	.4byte 0

.global lbl_80503DF8
lbl_80503DF8:
	.asciz "cf::CfGimmickLock"
	.balign 4


.global lbl_80503E0C
lbl_80503E0C:
	.asciz "rockTYPE"
	.balign 4

.global lbl_80503E18
lbl_80503E18:
	.asciz "cf::CfGimmickWarp"
	.balign 4


.global lbl_80503E2C
lbl_80503E2C:
	.asciz "warpEF"
	.asciz "warpSE"
	.asciz "A_roty"
	.asciz "B_roty"

.global lbl_80503E48
lbl_80503E48:
	.asciz "cf::CfGimmickJump"
	.balign 4


.global lbl_80503E5C
lbl_80503E5C:
	.asciz "lnPosX"
	.asciz "lnPosY"
	.asciz "lnPosZ"
	.asciz "lnRotY"
	.asciz "rectype"
	.asciz "jpEF"
	.asciz "jpSE"
	.asciz "jumpS"
	.asciz "wait"
	.asciz "EFATR"
	.asciz "rkWait"
	.asciz "top"
	.asciz "time"
	.asciz "exTime"
	.balign 4
	.4byte 0

.global lbl_80503EB8
lbl_80503EB8:
	.asciz "cf::CfGimmickItem"
	.balign 4


.global lbl_80503ECC
lbl_80503ECC:
	.asciz "rectype"
	.asciz "geItem"
	.asciz "MSG1"
	.asciz "MSG2"
	.asciz "time"
	.asciz "LODObj"
	.asciz "LODSub"
	.asciz "LODType"
	.asciz "EFF"
	.asciz "camID"
	.asciz "swtSE"
	.asciz "finSE"
	.asciz "ct"
	.asciz "quest_Max"
	.asciz "quest_Min"
	.balign 4

.global lbl_80503F30
lbl_80503F30:
	.asciz "CMenuMakeCrystal"
	.balign 4
	.4byte 0

.global lbl_80503F48
lbl_80503F48:
	.asciz "CMakeCrystalWin"


.global lbl_80503F58
lbl_80503F58:
	.asciz "CMakeCrystalWin"
	.asciz "CMakeCrystalScn"
	.asciz "MNU_crystal"
	.asciz "info"
	.balign 4
	.4byte 0

.global lbl_80503F90
lbl_80503F90:
	.4byte 0x00000044
	.4byte 0x00000058
	.4byte 0

.global lbl_80503F9C
lbl_80503F9C:
	.asciz "CMCCrystalBox"
	.balign 4


.global lbl_80503FAC
lbl_80503FAC:
	.asciz "%s"
	.asciz "category"
	.asciz "/menu/McCrystalBox.arc"
	.asciz "/menu/tpl/ItemIcon.arc"
	.asciz "common/jp/bdat_mes.bin"
	.asciz "nul_sort"
	.asciz "nul_proportion"
	.asciz "pic_msk01"
	.asciz "pic_msk00"
	.asciz "pic_tbbcon%02d"
	.asciz "pic_tbbcof%02d"
	.asciz "help"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "icon_base"
	.asciz "pic_btnbs%02d"
	.asciz "pic_setbs%02d"
	.asciz "icon"
	.asciz "pic_icon%02d"
	.asciz "MNU_item"
	.asciz "name"
	.asciz "txt_num%02d"
	.asciz "pic_seticon%02d"
	.asciz "txt_num_set%02d"
	.asciz "txt_pg01"
	.asciz "nul_pg"
	.asciz "pic_pghole%02d"
	.asciz "txt_pg00"
	.asciz "pic_pghole_on"
	.asciz "pic_off%02d"
	.asciz "pic_rcm%02d_00"
	.asciz "pic_rcm%02d_01"
	.asciz "txt_name"
	.asciz "nul_button"
	.asciz "pic_cat%02d"
	.asciz "nul_pcface%02d"
	.asciz "txt_button01"
	.asciz "txt_soat01"
	.asciz "MNU_crystal"
	.asciz "info"
	.asciz "txt_pccmt01_00"
	.asciz "txt_pccmt01_01"
	.asciz "icon_type2"
	.asciz "pic_pcface01"
	.asciz "txt_pccmt02_00"
	.byte 0x00
	.asciz "txt_pccmt02_01"
	.asciz "txt_pccmt02_02"
	.asciz "pic_pcface02"
	.asciz "txt_kizuna01"
	.asciz "mf40_kiz_pclin_e.tpl"
	.asciz "mf40_kiz_pclin_d.tpl"
	.asciz "mf40_kiz_pclin_c.tpl"
	.asciz "mf40_kiz_pclin_b.tpl"
	.asciz "mf40_kiz_pclin_a.tpl"
	.asciz "pic_kizline"
	.asciz "mf40_kiz_pcicon_e00.tpl"
	.asciz "mf40_kiz_pcicon_d00.tpl"
	.asciz "mf40_kiz_pcicon_c00.tpl"
	.asciz "mf40_kiz_pcicon_b00.tpl"
	.asciz "mf40_kiz_pcicon_a00.tpl"
	.asciz "pic_kizuna01"
	.asciz "%d%s%d"
	.asciz "txt_crnum00"
	.asciz "CMCCrystalBox"
	.asciz "arc"
	.asciz "mf10_cry01_box00.brlyt"
	.asciz "mf10_cry01_box00_in.brlan"
	.asciz "mf10_cry01_box00_info_in.brlan"
	.asciz "mf10_cry01_box00_rmc_roop.brlan"
	.asciz "mf10_cry01_box00_box.brlan"
	.asciz "mf10_cry01_box00_boxinfo.brlan"
	.asciz "mf10_cry01_box00_frnd_in.brlan"
	.asciz "mf10_cry01_box00_frnd_chn.brlan"
	.asciz "mf10_cry01_box00_frd_out.brlan"
	.asciz "mf10_cry01_box00_out.brlan"
	.asciz "txt_button00"
	.asciz "txt_setbc01"
	.asciz "txt_fr00"
	.asciz "txt_fr01"
	.asciz "txt_soattit"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "MNU_kyeassign"
	.asciz "pic_soatbtn"
	.asciz "txt_pcname01"
	.asciz "txt_pcname02"
	.asciz "pic_pghole10"
	.asciz "CMCCrystalBoxTex"
	.asciz "MNU_item_mes_a"
	.asciz "MNU_skill"
	.balign 4

.global lbl_80504500
lbl_80504500:
	.asciz "CMCCrystalInfo"
	.balign 4


.global lbl_80504510
lbl_80504510:
	.asciz "/menu/McCrystalInfo.arc"
	.asciz "/menu/tpl/CrystalIcon.arc"
	.asciz "name"
	.asciz "txt_listname%02d"
	.asciz "txt_listvalue%02d"
	.asciz "txt_listpara%02d"
	.asciz "MNU_item"
	.asciz "atr_type"
	.asciz "mf00_reg30_crys00.tpl"
	.asciz "mf00_reg30_crys01.tpl"
	.asciz "mf00_reg30_crys02.tpl"
	.asciz "mf00_reg30_crys03.tpl"
	.asciz "mf00_reg30_crys04.tpl"
	.asciz "mf00_reg30_crys05.tpl"
	.asciz "mf00_reg30_crys06.tpl"
	.asciz "pic_ethcol%02d"
	.byte 0x00
	.asciz "mf00_com00_dmy.tpl"
	.asciz "nul_list%02d"
	.asciz "nul_proportion"
	.asciz "txt_value30"
	.asciz "txt_para%02d"
	.asciz "txt_value%02d"
	.asciz "CMCCrystalInfo"
	.asciz "arc"
	.asciz "mf10_cry00_inf00.brlyt"
	.asciz "mf10_cry00_inf00_in.brlan"
	.asciz "mf10_cry00_inf00_info_in.brlan"
	.asciz "mf10_cry00_inf00_box.brlan"
	.asciz "mf10_cry00_inf00_out.brlan"
	.asciz "txt_value31"
	.asciz "txt_value32"
	.asciz "txt_value33"
	.asciz "txt_value34"
	.asciz "txt_para32"
	.asciz "txt_para34"
	.asciz "txt_para36"
	.asciz "txt_para38"
	.asciz "txt_para30"
	.asciz "MNU_crystal"
	.asciz "info"
	.asciz "txt_listname00"
	.asciz "txt_listvalue00"
	.asciz "txt_listname01"
	.asciz "txt_listvalue01"
	.asciz "CItemBoxInfoTex"
	.4byte 0

.global lbl_805047F0
lbl_805047F0:
	.4byte 0x00000010
	.4byte 0x00100000
	.4byte 0x00200000

.global lbl_805047FC
lbl_805047FC:
	.asciz "CModelDispMakeCrystal"
	.balign 4


.global lbl_80504814
lbl_80504814:
	.asciz "obj/oj820002.chr"
	.asciz "eff/rec/eu/eu01.rec"
	.asciz "menu/McData.arc"
	.asciz "MNU_skill"
	.asciz "help"
	.asciz "MNU_sysmes"
	.asciz "name"
	.asciz "MNU_crystal"
	.asciz "info"
	.asciz "itemType"
	.asciz "lower_E"
	.asciz "upper_E"
	.asciz "lower_D"
	.asciz "upper_D"
	.asciz "lower_C"
	.asciz "upper_C"
	.asciz "lower_B"
	.asciz "upper_B"
	.asciz "lower_A"
	.asciz "upper_A"
	.asciz "lower_S"
	.asciz "upper_S"
	.asciz "/chr/pc/mu%02d%02d%02d.mca"
	.asciz "ANM"
	.asciz "CModelDispMakeCrystal"
	.asciz "arc"
	.4byte 0
	.byte 0x00
.global lbl_80504920
lbl_80504920:
	.asciz "CMCCylinderGauge"
	.balign 4


.global lbl_80504934
lbl_80504934:
	.asciz "mf10_cry01_gage.brlyt"
	.asciz "mf10_cry01_gage_in.brlan"
	.asciz "mf10_cry01_gage_up.brlan"
	.asciz "mf10_cry01_gage_full.brlan"
	.asciz "mf10_cry01_gage_out.brlan"
	.asciz "txt_sylinder"
	.balign 4

.global lbl_805049C0
lbl_805049C0:
	.asciz "CMCCrystalList"
	.balign 4


.global lbl_805049D0
lbl_805049D0:
	.asciz "/menu/MCCrystalList.arc"
	.asciz "/menu/tpl/CrystalIcon.arc"
	.asciz "name"
	.asciz "txt_listname%02d"
	.asciz "txt_listvalue%02d"
	.asciz "txt_listpara%02d"
	.asciz "MNU_item"
	.asciz "atr_type"
	.asciz "mf00_reg30_crys00.tpl"
	.asciz "mf00_reg30_crys01.tpl"
	.asciz "mf00_reg30_crys02.tpl"
	.asciz "mf00_reg30_crys03.tpl"
	.asciz "mf00_reg30_crys04.tpl"
	.asciz "mf00_reg30_crys05.tpl"
	.asciz "mf00_reg30_crys06.tpl"
	.asciz "pic_ethcol%02d"
	.byte 0x00
	.asciz "mf00_com00_dmy.tpl"
	.asciz "pic_heat%02d"
	.asciz "nul_list%02d"
	.asciz "nul_proportion"
	.asciz "mf10_cry00_heat.tpl"
	.asciz "mf10_cry00_mega.tpl"
	.asciz "CMCCrystalList"
	.asciz "arc"
	.asciz "mf10_cry00_inf01.brlyt"
	.asciz "mf10_cry00_inf01_in.brlan"
	.asciz "mf10_cry00_inf01_info_in.brlan"
	.asciz "mf10_cry00_inf01_bl_in.brlan"
	.asciz "mf10_cry00_inf01_drop.brlan"
	.asciz "mf10_cry00_inf01_heat.brlan"
	.asciz "MNU_crystal"
	.asciz "info"
	.asciz "txt_listname00"
	.asciz "txt_listvalue00"
	.asciz "CItemBoxInfoTex"
	.balign 4
	.4byte 0

.global lbl_80504C58
lbl_80504C58:
	.asciz "CMCEffCylinder"
	.balign 4

.global lbl_80504C68
lbl_80504C68:
	.asciz "CMCEffDivide"
	.balign 4

.global lbl_80504C78
lbl_80504C78:
	.asciz "CMCEffUpRank"
	.balign 4

.global lbl_80504C88
lbl_80504C88:
	.asciz "CMCEffCrystal"
	.balign 4

.global lbl_80504C98
lbl_80504C98:
	.asciz "CMCEffFailure"
	.balign 4

.global lbl_80504CA8
lbl_80504CA8:
	.asciz "CMCEffSuccess"
	.balign 4

.global lbl_80504CB8
lbl_80504CB8:
	.asciz "CMCEffUpPrm"

.global lbl_80504CC4
lbl_80504CC4:
	.asciz "CMCEffUpGreen"
	.balign 4

.global lbl_80504CD4
lbl_80504CD4:
	.asciz "CMCEffUpBlue"
	.balign 4

.global lbl_80504CE4
lbl_80504CE4:
	.asciz "CMCEffUpRed"

.global lbl_80504CF0
lbl_80504CF0:
	.asciz "CMCEffStart"


.global lbl_80504CFC
lbl_80504CFC:
	.asciz "mf10_cry06_start.brlyt"
	.asciz "mf10_cry06_start_in.brlan"
	.asciz "mf10_cry02_prt00.brlyt"
	.asciz "mf10_cry02_prt00_in.brlan"
	.asciz "mf10_cry02_prt01.brlyt"
	.asciz "mf10_cry02_prt01_in.brlan"
	.asciz "mf10_cry02_prt02.brlyt"
	.asciz "mf10_cry02_prt02_in.brlan"
	.asciz "mf10_cry02_prt03.brlyt"
	.asciz "mf10_cry02_prt03_in.brlan"
	.asciz "txt_bns"
	.asciz "mf10_cry06_comp.brlyt"
	.asciz "mf10_cry06_comp_in.brlan"
	.asciz "mf10_cry06_comp_out.brlan"
	.asciz "mf10_cry06_fail.brlyt"
	.asciz "mf10_cry06_fail_in.brlan"
	.asciz "mf10_cry02_trc.brlyt"
	.asciz "mf10_cry02_trc_in.brlan"
	.asciz "mf10_cry02_trc_out.brlan"
	.asciz "mf10_cry03_crys.brlyt"
	.asciz "mf10_cry03_crys_in.brlan"
	.asciz "mf10_cry03_crys_change.brlan"
	.asciz "mf10_cry03_crys_spl.brlan"
	.asciz "mf10_cry03_crys_out.brlan"
	.asciz "mf10_cry04_lst.brlyt"
	.asciz "mf10_cry04_lst_roop.brlan"
	.asciz "nul_trc01"
	.asciz "name"
	.asciz "MNU_item"
	.asciz "%s%s"
	.asciz "txt_listname01"
	.asciz "atr_type"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "mf10_cry00_crys01.tpl"
	.asciz "mf10_cry00_crys02.tpl"
	.asciz "mf10_cry00_crys03.tpl"
	.asciz "mf10_cry00_crys04.tpl"
	.asciz "mf10_cry00_crys05.tpl"
	.asciz "mf10_cry00_crys06.tpl"
	.asciz "pic_crs"
	.asciz "pic_crs01"
	.asciz "mf10_cry05_rank.brlyt"
	.asciz "mf10_cry05_rank_in.brlan"
	.asciz "mf10_cry05_spl.brlyt"
	.asciz "mf10_cry05_spl_in.brlan"
	.asciz "mf10_cry06_chn.brlyt"
	.asciz "mf10_cry06_chn_in.brlan"
	.asciz "mf10_cry06_chn_change.brlan"
	.asciz "mf10_cry06_chn_out.brlan"
	.asciz "txt_num"
	.balign 4
	.4byte 0

.global lbl_80505110
lbl_80505110:
	.asciz "CMenuQstCnt"
	.4byte 0


.global lbl_80505120
lbl_80505120:
	.asciz "CMenuQstCnt"
	.asciz "mf70_cf60_qst_cunt.brlyt"
	.asciz "mf70_cf60_qst_cunt_in.brlan"
	.asciz "txt_value00"
	.asciz "txt_value01"
	.asciz "txt_para00"
	.asciz "txt_questtitle"
	.balign 4
	.asciz "txt_en"
	.asciz "MNU_quest"
	.asciz "name"
	.asciz "txt_num"
	.asciz "title"

.global lbl_805051B8
lbl_805051B8:
	.asciz "CQstLogList"


.global lbl_805051C4
lbl_805051C4:
	.asciz "qst_genre"
	.asciz "index"
	.asciz "%s"
	.asciz "/menu/QstLogList.arc"
	.asciz "nul_sort"
	.asciz "nul_proportion"
	.asciz "title"
	.asciz "txt_tit%02d"
	.asciz "npc_id"
	.asciz "rlt_lnd"
	.asciz "landmarklist"
	.asciz "mapID"
	.asciz "name"
	.asciz "txt_map%02d"
	.asciz "pic_icon%02d"
	.asciz "mf00_reg00_new.tpl"
	.asciz "mf00_reg00_cmp.tpl"
	.asciz "pic_icon%02d_00"
	.asciz "mf00_reg00_qt01.tpl"
	.asciz "mf00_reg00_qt02.tpl"
	.asciz "mf00_reg00_qt03.tpl"
	.byte 0x00
	.asciz "txt_soat01"
	.asciz "CQstLogList"
	.asciz "arc"
	.asciz "mf30_qst_all.brlyt"
	.asciz "mf30_qst_all_in.brlan"
	.asciz "mf30_qst_all_info_in.brlan"
	.asciz "MNU_quest"
	.asciz "category"
	.asciz "txt_soattit"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "MNU_kyeassign"
	.asciz "pic_soatbtn"
	.asciz "txt_tit01"
	.balign 4

.global lbl_80505380
lbl_80505380:
	.asciz "/common/jp/bdat_qs0000.bin"
	.balign 4

.global lbl_8050539C
lbl_8050539C:
	.asciz "/common/jp/bdat_qs0101.bin"
	.balign 4

.global lbl_805053B8
lbl_805053B8:
	.asciz "/common/jp/bdat_qs0201.bin"
	.balign 4

.global lbl_805053D4
lbl_805053D4:
	.asciz "/common/jp/bdat_qs0301.bin"
	.balign 4

.global lbl_805053F0
lbl_805053F0:
	.asciz "/common/jp/bdat_qs0401.bin"
	.balign 4

.global lbl_8050540C
lbl_8050540C:
	.asciz "/common/jp/bdat_qs0402.bin"
	.balign 4

.global lbl_80505428
lbl_80505428:
	.asciz "/common/jp/bdat_qs0501.bin"
	.balign 4

.global lbl_80505444
lbl_80505444:
	.asciz "/common/jp/bdat_qs0601.bin"
	.balign 4

.global lbl_80505460
lbl_80505460:
	.asciz "/common/jp/bdat_qs0701.bin"
	.balign 4

.global lbl_8050547C
lbl_8050547C:
	.asciz "/common/jp/bdat_qs0801.bin"
	.balign 4

.global lbl_80505498
lbl_80505498:
	.asciz "/common/jp/bdat_qs0901.bin"
	.balign 4

.global lbl_805054B4
lbl_805054B4:
	.asciz "/common/jp/bdat_qs1001.bin"
	.balign 4

.global lbl_805054D0
lbl_805054D0:
	.asciz "/common/jp/bdat_qs1101.bin"
	.balign 4

.global lbl_805054EC
lbl_805054EC:
	.asciz "/common/jp/bdat_qs1201.bin"
	.balign 4

.global lbl_80505508
lbl_80505508:
	.asciz "/common/jp/bdat_qs1202.bin"
	.balign 4

.global lbl_80505524
lbl_80505524:
	.asciz "/common/jp/bdat_qs1301.bin"
	.balign 4

.global lbl_80505540
lbl_80505540:
	.asciz "/common/jp/bdat_qs1401.bin"
	.balign 4

.global lbl_8050555C
lbl_8050555C:
	.asciz "/common/jp/bdat_qs1501.bin"
	.balign 4

.global lbl_80505578
lbl_80505578:
	.asciz "/common/jp/bdat_qs1601.bin"
	.balign 4

.global lbl_80505594
lbl_80505594:
	.asciz "/common/jp/bdat_qs1701.bin"
	.balign 4

.global lbl_805055B0
lbl_805055B0:
	.asciz "/common/jp/bdat_qs1801.bin"
	.balign 4

.global lbl_805055CC
lbl_805055CC:
	.asciz "/common/jp/bdat_qs1901.bin"
	.balign 4

.global lbl_805055E8
lbl_805055E8:
	.asciz "/common/jp/bdat_qs2001.bin"
	.balign 4

.global lbl_80505604
lbl_80505604:
	.asciz "/common/jp/bdat_qs2101.bin"
	.balign 4

.global lbl_80505620
lbl_80505620:
	.asciz "/common/jp/bdat_qs2201.bin"
	.balign 4

.global lbl_8050563C
lbl_8050563C:
	.asciz "/common/jp/bdat_qs2301.bin"
	.balign 4

.global lbl_80505658
lbl_80505658:
	.asciz "/common/jp/bdat_qs2401.bin"
	.balign 4

.global lbl_80505674
lbl_80505674:
	.asciz "MNU_qt0000"
	.balign 4

.global lbl_80505680
lbl_80505680:
	.asciz "MNU_qt0101"
	.balign 4

.global lbl_8050568C
lbl_8050568C:
	.asciz "MNU_qt0201"
	.balign 4

.global lbl_80505698
lbl_80505698:
	.asciz "MNU_qt0301"
	.balign 4

.global lbl_805056A4
lbl_805056A4:
	.asciz "MNU_qt0401"
	.balign 4

.global lbl_805056B0
lbl_805056B0:
	.asciz "MNU_qt0402"
	.balign 4

.global lbl_805056BC
lbl_805056BC:
	.asciz "MNU_qt0501"
	.balign 4

.global lbl_805056C8
lbl_805056C8:
	.asciz "MNU_qt0601"
	.balign 4

.global lbl_805056D4
lbl_805056D4:
	.asciz "MNU_qt0701"
	.balign 4

.global lbl_805056E0
lbl_805056E0:
	.asciz "MNU_qt0801"
	.balign 4

.global lbl_805056EC
lbl_805056EC:
	.asciz "MNU_qt0901"
	.balign 4

.global lbl_805056F8
lbl_805056F8:
	.asciz "MNU_qt1001"
	.balign 4

.global lbl_80505704
lbl_80505704:
	.asciz "MNU_qt1101"
	.balign 4

.global lbl_80505710
lbl_80505710:
	.asciz "MNU_qt1201"
	.balign 4

.global lbl_8050571C
lbl_8050571C:
	.asciz "MNU_qt1202"
	.balign 4

.global lbl_80505728
lbl_80505728:
	.asciz "MNU_qt1301"
	.balign 4

.global lbl_80505734
lbl_80505734:
	.asciz "MNU_qt1401"
	.balign 4

.global lbl_80505740
lbl_80505740:
	.asciz "MNU_qt1501"
	.balign 4

.global lbl_8050574C
lbl_8050574C:
	.asciz "MNU_qt1601"
	.balign 4

.global lbl_80505758
lbl_80505758:
	.asciz "MNU_qt1701"
	.balign 4

.global lbl_80505764
lbl_80505764:
	.asciz "MNU_qt1801"
	.balign 4

.global lbl_80505770
lbl_80505770:
	.asciz "MNU_qt1901"
	.balign 4

.global lbl_8050577C
lbl_8050577C:
	.asciz "MNU_qt2001"
	.balign 4

.global lbl_80505788
lbl_80505788:
	.asciz "MNU_qt2101"
	.balign 4

.global lbl_80505794
lbl_80505794:
	.asciz "MNU_qt2201"
	.balign 4

.global lbl_805057A0
lbl_805057A0:
	.asciz "MNU_qt2301"
	.balign 4

.global lbl_805057AC
lbl_805057AC:
	.asciz "MNU_qt2401"
	.balign 4

.global lbl_805057B8
lbl_805057B8:
	.asciz "CQstLogInfo"


.global lbl_805057C4
lbl_805057C4:
	.asciz "/menu/QstLogInfo.arc"
	.asciz "title"
	.asciz "txt_tit"
	.asciz "pic_icon_tit"
	.asciz "qst_genre"
	.asciz "mf00_reg00_qt01.tpl"
	.asciz "mf00_reg00_qt02.tpl"
	.asciz "mf00_reg00_qt03.tpl"
	.asciz "npc_id"
	.asciz "name"
	.asciz "txt_man"
	.asciz "MNU_quest"
	.asciz "rlt_lnd"
	.asciz "landmarklist"
	.asciz "txt_map"
	.asciz "purpose"
	.asciz "txt_exp"
	.asciz "order_succ_A"
	.asciz "info_prog"
	.asciz "txt_subtit01"
	.asciz "pic_chbx01"
	.asciz "pic_ch01"
	.asciz "type_succ_A2"
	.asciz "type_succ_B2"
	.asciz "info_succ_A1"
	.asciz "info_succ_B1"
	.asciz "txt_subtit%02d"
	.asciz "pic_chbx%02d"
	.asciz "pic_ch%02d"
	.asciz "type_succ_A3"
	.asciz "type_succ_B3"
	.asciz "info_succ_A2"
	.asciz "info_succ_B2"
	.asciz "type_succ_A4"
	.asciz "type_succ_B4"
	.asciz "info_succ_A3"
	.asciz "info_succ_B3"
	.asciz "no_report"
	.asciz "info_report"
	.asciz "info_end_B"
	.asciz "info_end_A"
	.asciz "type_succ_A%d"
	.asciz "type_succ_B%d"
	.asciz "info_succ_A%d"
	.asciz "info_succ_B%d"
	.asciz "reward_mes"
	.asciz "txt_item01"
	.asciz "txt_gold00"
	.asciz "txt_exp01"
	.asciz "reward_exp"
	.asciz "reward_money"
	.asciz "reward_B%d"
	.asciz "reward_A%d"
	.asciz "txt_item%02d"
	.asciz "rankType"
	.asciz "MNU_item"
	.asciz "%s%s"
	.asciz "%s"
	.byte 0x00
	.asciz "txt_subtit02"
	.asciz "txt_subtit03"
	.asciz "txt_subtit04"
	.asciz "txt_subtit05"
	.asciz "txt_subtit06"
	.asciz "pic_chbx02"
	.asciz "pic_chbx03"
	.asciz "pic_chbx04"
	.asciz "pic_chbx05"
	.asciz "pic_chbx06"
	.asciz "pic_ch02"
	.asciz "pic_ch03"
	.asciz "pic_ch04"
	.asciz "pic_ch05"
	.asciz "pic_ch06"
	.asciz "txt_item02"
	.asciz "txt_item03"
	.asciz "CQstLogInfo"
	.asciz "arc"
	.asciz "mf30_qst_dtl.brlyt"
	.asciz "mf30_qst_dtl_in.brlan"
	.asciz "mf30_qst_dtl_info_in.brlan"
	.asciz "txt_gold01"
	.balign 4


.global lbl_80505B80
lbl_80505B80:
	.asciz "/menu/SysWin.arc"
	.asciz "win_main"
	.asciz "txt_sysmes01"
	.asciz "txt_sysmes02_00"
	.balign 4
	.asciz "txt_sysmes02_01"
	.asciz "txt_sysmes03"
	.asciz "txt_sysmes04_00"
	.asciz "txt_sysmes04_01"
	.asciz "txt_slct01"
	.asciz "txt_slct02"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_close00"
	.asciz "txt_close01"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.asciz "pic_btn01"
	.asciz "txt_slct%02d"
	.asciz "nul_proportion"
	.asciz "nul_close00"
	.asciz "nul_slct"
	.asciz "CSysWin"
	.asciz "arc"
	.asciz "mf70_cf60_syswin01.brlyt"
	.asciz "mf70_cf60_syswin01_in.brlan"
	.asciz "/menu/SysWin2.arc"
	.asciz "CSysWin2"
	.asciz "mf70_cf60_syswin00.brlyt"
	.asciz "mf70_cf60_syswin00_in.brlan"
	.balign 4

.global lbl_80505D20
lbl_80505D20:
	.asciz "CSelShopWin"


.global lbl_80505D2C
lbl_80505D2C:
	.asciz "/menu/ShopSubWin.arc"
	.asciz "txt_%02d"
	.asciz "nul_proportion"
	.asciz "CSelShopWin"
	.asciz "arc"
	.asciz "mf70_cf60_syswin05.brlyt"
	.asciz "mf70_cf60_syswin05_in.brlan"
	.asciz "nul_value"
	.asciz "txt_titlemes"
	.asciz "MNU_shop"
	.asciz "name"
	.asciz "txt_01"
	.asciz "txt_02"
	.asciz "txt_03"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_close00"
	.asciz "txt_close01"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.asciz "pic_btn01"
	.balign 4
	.4byte 0

.global lbl_80505E30
lbl_80505E30:
	.asciz "CExchangeWin"
	.balign 4


.global lbl_80505E40
lbl_80505E40:
	.asciz "/menu/ExchangeWin.arc"
	.asciz "txt_slct%02d"
	.asciz "nul_proportion"
	.asciz "txt_sysmes00"
	.asciz "txt_sysmes01"
	.asciz "CExchangeWin"
	.asciz "arc"
	.asciz "mf70_cf60_syswin06.brlyt"
	.asciz "mf70_cf60_syswin06_in.brlan"
	.asciz "MNU_shop"
	.asciz "name"
	.asciz "txt_sysmes02"
	.asciz "txt_slct01"
	.asciz "txt_slct02"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_close00"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.balign 4

.global lbl_80505F40
lbl_80505F40:
	.asciz "CPresentWin"


.global lbl_80505F4C
lbl_80505F4C:
	.asciz "mf70_cf60_syswin07.brlyt"
	.asciz "mf70_cf60_syswin07_in.brlan"
	.asciz "mf70_cf60_syswin07_ef.brlan"
	.asciz "nul_proportion"
	.asciz "nul_pcface01"
	.asciz "nul_pcface02"
	.asciz "txt_pcname01"
	.asciz "txt_pcname02"
	.asciz "pic_pcface01"
	.asciz "pic_pcface02"
	.asciz "nul_slct"
	.asciz "txt_sysmes00"
	.byte 0x00
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_close00"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.asciz "txt_change00"
	.asciz "pic_btn02"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "FSplus%d"
	.asciz "nul_anim_b"
	.asciz "nul_anim_g"
	.asciz "pic_kiz_b"
	.asciz "mf00_com00_kizp04.tpl"
	.asciz "mf00_com00_kizp02.tpl"
	.asciz "mf00_com00_kizp01.tpl"
	.asciz "pic_kiz_g"
	.asciz "mf00_com00_kizp00.tpl"
	.asciz "mf00_com00_kizp03.tpl"
	.asciz "name"
	.asciz "icon_type2"
	.balign 4

.global lbl_80506128
lbl_80506128:
	.asciz "CMCCrystalSupport"
	.balign 4


.global lbl_8050613C
lbl_8050613C:
	.asciz "mf10_cry02_sup.brlyt"
	.asciz "mf10_cry02_sup_in.brlan"
	.asciz "icon_type3"
	.asciz "pic_pcface01"
	.balign 4
	.4byte 0

.global lbl_80506188
lbl_80506188:
	.asciz "CMenuArtsSet"
	.balign 4


.global lbl_80506198
lbl_80506198:
	.asciz "MNU_battle"
	.asciz "name"

.global lbl_805061A8
lbl_805061A8:
	.asciz "pic_arts01"
	.balign 4

.global lbl_805061B4
lbl_805061B4:
	.asciz "pic_arts02"
	.balign 4

.global lbl_805061C0
lbl_805061C0:
	.asciz "pic_arts03"
	.balign 4

.global lbl_805061CC
lbl_805061CC:
	.asciz "pic_arts04"
	.balign 4

.global lbl_805061D8
lbl_805061D8:
	.asciz "pic_arts05"
	.balign 4

.global lbl_805061E4
lbl_805061E4:
	.asciz "pic_arts06"
	.balign 4

.global lbl_805061F0
lbl_805061F0:
	.asciz "pic_arts07"
	.balign 4

.global lbl_805061FC
lbl_805061FC:
	.asciz "pic_arts08"
	.balign 4


.global lbl_80506208
lbl_80506208:
	# ROM: 0x502308
	.4byte lbl_805061A8
	.4byte lbl_805061B4
	.4byte lbl_805061C0
	.4byte lbl_805061CC
	.4byte lbl_805061D8
	.4byte lbl_805061E4
	.4byte lbl_805061F0
	.4byte lbl_805061FC

.global lbl_80506228
lbl_80506228:
	.asciz "pic_icon01"
	.balign 4

.global lbl_80506234
lbl_80506234:
	.asciz "pic_icon02"
	.balign 4

.global lbl_80506240
lbl_80506240:
	.asciz "pic_icon03"
	.balign 4

.global lbl_8050624C
lbl_8050624C:
	.asciz "pic_icon04"
	.balign 4

.global lbl_80506258
lbl_80506258:
	.asciz "pic_icon05"
	.balign 4

.global lbl_80506264
lbl_80506264:
	.asciz "pic_icon06"
	.balign 4

.global lbl_80506270
lbl_80506270:
	.asciz "pic_icon07"
	.balign 4

.global lbl_8050627C
lbl_8050627C:
	.asciz "pic_icon08"
	.balign 4


.global lbl_80506288
lbl_80506288:
	# ROM: 0x502388
	.4byte lbl_80506228
	.4byte lbl_80506234
	.4byte lbl_80506240
	.4byte lbl_8050624C
	.4byte lbl_80506258
	.4byte lbl_80506264
	.4byte lbl_80506270
	.4byte lbl_8050627C

.global lbl_805062A8
lbl_805062A8:
	.asciz "pic_arts00"
	.balign 4


.global lbl_805062B4
lbl_805062B4:
	# ROM: 0x5023B4
	.4byte lbl_805061A8
	.4byte lbl_805061B4
	.4byte lbl_805061C0
	.4byte lbl_805061CC
	.4byte lbl_805062A8
	.4byte lbl_805061D8
	.4byte lbl_805061E4
	.4byte lbl_805061F0
	.4byte lbl_805061FC


.global lbl_805062D8
lbl_805062D8:
	# ROM: 0x5023D8
	.4byte lbl_805061A8
	.4byte lbl_805061B4
	.4byte lbl_805061C0
	.4byte lbl_805061CC
	.4byte lbl_805062A8
	.4byte lbl_805061D8
	.4byte lbl_805061E4
	.4byte lbl_805061F0
	.4byte lbl_805061FC


.global lbl_805062FC
lbl_805062FC:
	# ROM: 0x5023FC
	.4byte 0x00000B08
	.4byte 0x14102504
	.4byte 0x2D103F10
	.4byte 0x50106710
	.4byte func_80100000

.global lbl_80506310
lbl_80506310:
	.asciz "pic_arts09"
	.balign 4

.global lbl_8050631C
lbl_8050631C:
	.asciz "pic_arts10"
	.balign 4

.global lbl_80506328
lbl_80506328:
	.asciz "pic_arts11"
	.balign 4

.global lbl_80506334
lbl_80506334:
	.asciz "pic_arts12"
	.balign 4

.global lbl_80506340
lbl_80506340:
	.asciz "pic_arts13"
	.balign 4


.global lbl_8050634C
lbl_8050634C:
	# ROM: 0x50244C
	.4byte lbl_80506310
	.4byte lbl_8050631C
	.4byte lbl_80506328
	.4byte lbl_80506334
	.4byte lbl_80506340

.global lbl_80506360
lbl_80506360:
	.asciz "CArtsList"
	.balign 4


.global lbl_8050636C
lbl_8050636C:
	.asciz "mf00_reg00_curs01.brlyt"
	.asciz "mf00_reg00_curs01_roop.brlan"
	.asciz "mf00_reg00_curs01_on.brlan"
	.asciz "MNU_battle"
	.asciz "name"
	.asciz "txt_rd_ap"
	.asciz "%d%s"
	.asciz "txt_ap00"
	.asciz "nul_01"
	.asciz "pic_arrow00_l01"
	.asciz "pic_arrow00_r01"
	.asciz "nul_pc"
	.asciz "nul_proportion"
	.asciz "pic_pcbs01"
	.asciz "pic_pcbs02"
	.asciz "icon_type2"
	.asciz "pic_face00"
	.asciz "tag_icon"
	.asciz "pic_face01"
	.asciz "pic_face02"
	.asciz "txt_pt00"
	.asciz "mf15_arts22_cursor.brlyt"
	.asciz "mf15_arts22_cursor_roop.brlan"
	.asciz "mf15_arts22_cursor_on.brlan"
	.asciz "pic_arrow_o00"
	.asciz "pic_arrow_u00"
	.asciz "mf00_reg00_curs02.brlyt"
	.asciz "mf00_reg00_curs02_roop.brlan"
	.asciz "mf00_reg00_curs02_on.brlan"
	.asciz "pc_arts"
	.asciz "icon"
	.asciz "icon_base"
	.asciz "arm_type"
	.asciz "pic_arts00"
	.asciz "pic_icon00"
	.asciz "idx"
	.asciz "pic_arrow_l00"
	.asciz "pic_arrow_r00"
	.asciz "grow_arts_base"
	.asciz "value"
	.asciz "idx_%02d"
	.asciz "grow_arts_rate"
	.asciz "nul_inf%02d"
	.asciz "pic_icon%02d"
	.asciz "pic_arts%02d"
	.asciz "txt_name%02d"
	.asciz "pic_set%02d"
	.asciz "txt_ap%02d"
	.asciz "txt_pt%02d"
	.asciz "pic_on%02d"
	.asciz "pic_unlock%02d"
	.asciz "/menu/ArtsList.arc"
	.asciz "CArtsList"
	.asciz "arc"
	.asciz "mf15_arts30_set_box.brlyt"
	.asciz "mf15_arts30_set_box_in.brlan"
	.asciz "mf15_arts30_set_box_info_in.brlan"
	.asciz "txt_ap09"
	.asciz "txt_ap10"
	.asciz "txt_ap11"
	.asciz "txt_ap12"
	.asciz "txt_ap13"
	.asciz "txt_pt09"
	.asciz "txt_pt10"
	.asciz "txt_pt11"
	.asciz "txt_pt12"
	.asciz "txt_pt13"
	.balign 4
	.4byte 0

.global lbl_80506700
lbl_80506700:
	.asciz "CArtsInfo"
	.balign 4


.global lbl_8050670C
lbl_8050670C:
	.asciz "/menu/ArtsInfo.arc"
	.asciz "common/jp/bdat_arts.bin"
	.asciz "MNU_battle"
	.asciz "name"
	.asciz "%d%s"
	.asciz "txt_ap00"
	.asciz "txt_tit"
	.byte 0x00
	.asciz "txt_para00"
	.asciz "txt_para01_00"
	.asciz "txt_para01_01"
	.asciz "txt_para02"
	.asciz "txt_para03"
	.asciz "txt_para04"
	.asciz "txt_para05"
	.asciz "txt_para06"
	.asciz "txt_para07"
	.asciz "txt_para08"
	.asciz "txt_para09"
	.asciz "txt_para10"
	.asciz "txt_para11"
	.asciz "txt_value02_02"
	.asciz "txt_value03_02"
	.asciz "txt_value04_02"
	.asciz "txt_value05_02"
	.asciz "txt_value06_02"
	.asciz "txt_value07_02"
	.asciz "txt_value08_02"
	.asciz "txt_value09_02"
	.asciz "txt_value10_02"
	.asciz "txt_value11_02"
	.asciz "txt_ap"
	.asciz "pc_arts"
	.asciz "%s%s"
	.asciz "msg"
	.asciz "trgA"
	.asciz "trgB"
	.asciz "trgC"
	.asciz "tagStr"
	.asciz "tag%d"
	.asciz "txt_slct%02d"
	.asciz "nul_proportion"
	.asciz "max"
	.asciz "rate1"
	.asciz "grow_powl"
	.asciz "rate2"
	.asciz "grow_powh"
	.asciz "dmg_low"
	.asciz "flag"
	.asciz "dmg_hi"
	.asciz "tagFS"
	.asciz "tagBS"
	.asciz "txt_para%02d"
	.asciz "tagCALC"
	.asciz "cast"
	.asciz "%s%.1f%s"
	.asciz "txt_value%02d_02"
	.asciz "idx"
	.asciz "recast"
	.asciz "glow_recast"
	.asciz "tp"
	.asciz "%s%d%s"
	.asciz "st_time"
	.asciz "grow_st_time"
	.asciz "%d%s%d"
	.asciz "st_val"
	.asciz "st_itv"
	.asciz "st_type"
	.asciz "grow_st_val"
	.asciz "st_val2"
	.asciz "sp_val1"
	.asciz "%s%.2f%s"
	.asciz "sp_val2"
	.asciz "CArtsInfo"
	.asciz "arc"
	.asciz "mf15_arts30_set_inf.brlyt"
	.asciz "mf15_arts30_set_inf_in.brlan"
	.asciz "mf15_arts30_set_inf_info_in.brlan"
	.asciz "mf15_arts30_set_inf_lvup_out.brlan"
	.asciz "mf15_arts30_set_inf_lvup_in.brlan"
	.asciz "txt_aptit"
	.asciz "txt_rd_ap"
	.asciz "txt_slct01"
	.asciz "txt_slct02"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_close00"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.asciz "mf15_arts30_set_inf_lvup.brlan"
	.asciz "nul_inf"
	.asciz "pic_bl"
	.asciz "nul_arw"
	.asciz "nul_meswin"
	.asciz "MNU_arts"
	.asciz "MNU_arts_tag"
	.balign 4
	.4byte 0

.global lbl_80506B40
lbl_80506B40:
	.asciz "cf::CfNandManager"
	.balign 4

.global lbl_80506B54
lbl_80506B54:
	.asciz "CTTask<cf::CfNandManager>"
	.balign 4


.global lbl_80506B70
lbl_80506B70:
	.asciz "%s%02d"
	.asciz "banner.bin"
	.asciz "name"
	.byte 0x00
.global lbl_80506B88
lbl_80506B88:
	.asciz "CMenuMapSelect"
	.balign 4


.global lbl_80506B98
lbl_80506B98:
	.asciz "MNU_map"
	.asciz "name"
	.balign 4


.global lbl_80506BA8
lbl_80506BA8:
	.asciz "mapID"
	.asciz "index"
	.asciz "/menu/MapSel.arc"
	.asciz "txt_map%02d"
	.asciz "name"
	.asciz "txt_map00"
	.asciz "map_caption"
	.asciz "txt_comment"
	.byte 0x00
	.asciz "mf00_com00_dmy.tpl"
	.asciz "pic_map"
	.asciz "map_fileID"
	.asciz "/menu/tpl/%s"
	.asciz "nul_proportion"
	.asciz "CMapSel"
	.asciz "arc"
	.asciz "mf03_map00_mpslct.brlyt"
	.asciz "mf03_map00_mpslct_in.brlan"
	.asciz "mf03_map00_mpslct_in_info.brlan"
	.balign 4
	.4byte 0


.global lbl_80506CA0
lbl_80506CA0:
	.asciz "/menu/Fade.arc"
	.asciz "CFade"
	.asciz "arc"
	.asciz "mf00_fade.brlyt"
	.asciz "mf00_fade_fade_in.brlan"
	.balign 4
	.4byte 0

.global lbl_80506CE8
lbl_80506CE8:
	.asciz "markerlist0000"
	.balign 4

.global lbl_80506CF8
lbl_80506CF8:
	.asciz "markerlist0101"
	.balign 4

.global lbl_80506D08
lbl_80506D08:
	.asciz "markerlist0201"
	.balign 4

.global lbl_80506D18
lbl_80506D18:
	.asciz "markerlist0301"
	.balign 4

.global lbl_80506D28
lbl_80506D28:
	.asciz "markerlist0401"
	.balign 4

.global lbl_80506D38
lbl_80506D38:
	.asciz "markerlist0402"
	.balign 4

.global lbl_80506D48
lbl_80506D48:
	.asciz "markerlist0501"
	.balign 4

.global lbl_80506D58
lbl_80506D58:
	.asciz "markerlist0601"
	.balign 4

.global lbl_80506D68
lbl_80506D68:
	.asciz "markerlist0701"
	.balign 4

.global lbl_80506D78
lbl_80506D78:
	.asciz "markerlist0801"
	.balign 4

.global lbl_80506D88
lbl_80506D88:
	.asciz "markerlist0901"
	.balign 4

.global lbl_80506D98
lbl_80506D98:
	.asciz "markerlist1001"
	.balign 4

.global lbl_80506DA8
lbl_80506DA8:
	.asciz "markerlist1101"
	.balign 4

.global lbl_80506DB8
lbl_80506DB8:
	.asciz "markerlist1201"
	.balign 4

.global lbl_80506DC8
lbl_80506DC8:
	.asciz "markerlist1202"
	.balign 4

.global lbl_80506DD8
lbl_80506DD8:
	.asciz "markerlist1301"
	.balign 4

.global lbl_80506DE8
lbl_80506DE8:
	.asciz "markerlist1401"
	.balign 4

.global lbl_80506DF8
lbl_80506DF8:
	.asciz "markerlist1501"
	.balign 4

.global lbl_80506E08
lbl_80506E08:
	.asciz "markerlist1601"
	.balign 4

.global lbl_80506E18
lbl_80506E18:
	.asciz "markerlist1701"
	.balign 4

.global lbl_80506E28
lbl_80506E28:
	.asciz "markerlist1801"
	.balign 4

.global lbl_80506E38
lbl_80506E38:
	.asciz "markerlist1901"
	.balign 4

.global lbl_80506E48
lbl_80506E48:
	.asciz "markerlist2001"
	.balign 4

.global lbl_80506E58
lbl_80506E58:
	.asciz "markerlist2101"
	.balign 4

.global lbl_80506E68
lbl_80506E68:
	.asciz "markerlist2201"
	.balign 4

.global lbl_80506E78
lbl_80506E78:
	.asciz "markerlist2301"
	.balign 4

.global lbl_80506E88
lbl_80506E88:
	.asciz "markerlist2401"
	.balign 4


.global lbl_80506E98
lbl_80506E98:
	# ROM: 0x502F98
	.4byte 0
	.4byte 0x00010017
	.4byte 0x002E0048
	.4byte 0x00530068
	.4byte 0x007E009B
	.4byte 0x000000B1
	.4byte 0x00BC00D7
	.4byte 0x00E300E8
	.4byte 0x00FB0115
	.4byte 0x01260135
	.4byte 0x00000151
	.4byte 0x0000016B
	.4byte 0x0182019A
	.4byte 0x01A90000
	.4byte 0x01AF0000

.global lbl_80506ED4
lbl_80506ED4:
	.asciz "mf03_map01_flr0101.brlyt"
	.balign 4

.global lbl_80506EF0
lbl_80506EF0:
	.asciz "mf03_map01_flr0201.brlyt"
	.balign 4

.global lbl_80506F0C
lbl_80506F0C:
	.asciz "mf03_map01_flr0301.brlyt"
	.balign 4

.global lbl_80506F28
lbl_80506F28:
	.asciz "mf03_map01_flr0401.brlyt"
	.balign 4

.global lbl_80506F44
lbl_80506F44:
	.asciz "mf03_map01_flr0402.brlyt"
	.balign 4

.global lbl_80506F60
lbl_80506F60:
	.asciz "mf03_map01_flr0501.brlyt"
	.balign 4

.global lbl_80506F7C
lbl_80506F7C:
	.asciz "mf03_map01_flr0601.brlyt"
	.balign 4

.global lbl_80506F98
lbl_80506F98:
	.asciz "mf03_map01_flr0701.brlyt"
	.balign 4

.global lbl_80506FB4
lbl_80506FB4:
	.asciz "mf03_map01_flr0801.brlyt"
	.balign 4

.global lbl_80506FD0
lbl_80506FD0:
	.asciz "mf03_map01_flr0901.brlyt"
	.balign 4

.global lbl_80506FEC
lbl_80506FEC:
	.asciz "mf03_map01_flr1001.brlyt"
	.balign 4

.global lbl_80507008
lbl_80507008:
	.asciz "mf03_map01_flr1101.brlyt"
	.balign 4

.global lbl_80507024
lbl_80507024:
	.asciz "mf03_map01_flr1201.brlyt"
	.balign 4

.global lbl_80507040
lbl_80507040:
	.asciz "mf03_map01_flr1202.brlyt"
	.balign 4

.global lbl_8050705C
lbl_8050705C:
	.asciz "mf03_map01_flr1301.brlyt"
	.balign 4

.global lbl_80507078
lbl_80507078:
	.asciz "mf03_map01_flr1401.brlyt"
	.balign 4

.global lbl_80507094
lbl_80507094:
	.asciz "mf03_map01_flr1501.brlyt"
	.balign 4

.global lbl_805070B0
lbl_805070B0:
	.asciz "mf03_map01_flr1601.brlyt"
	.balign 4

.global lbl_805070CC
lbl_805070CC:
	.asciz "mf03_map01_flr1701.brlyt"
	.balign 4

.global lbl_805070E8
lbl_805070E8:
	.asciz "mf03_map01_flr1801.brlyt"
	.balign 4

.global lbl_80507104
lbl_80507104:
	.asciz "mf03_map01_flr1901.brlyt"
	.balign 4

.global lbl_80507120
lbl_80507120:
	.asciz "mf03_map01_flr2001.brlyt"
	.balign 4

.global lbl_8050713C
lbl_8050713C:
	.asciz "mf03_map01_flr2101.brlyt"
	.balign 4

.global lbl_80507158
lbl_80507158:
	.asciz "mf03_map01_flr2201.brlyt"
	.balign 4

.global lbl_80507174
lbl_80507174:
	.asciz "mf03_map01_flr2301.brlyt"
	.balign 4

.global lbl_80507190
lbl_80507190:
	.asciz "mf03_map01_flr2401.brlyt"
	.balign 4
	.4byte 0


.global lbl_805071B0
lbl_805071B0:
	# ROM: 0x5032B0
	.4byte 0
	.4byte lbl_80506ED4
	.4byte lbl_80506EF0
	.4byte lbl_80506F0C
	.4byte lbl_80506F28
	.4byte lbl_80506F44
	.4byte lbl_80506F60
	.4byte lbl_80506F7C
	.4byte lbl_80506F98
	.4byte lbl_80506FB4
	.4byte lbl_80506FD0
	.4byte lbl_80506FEC
	.4byte lbl_80507008
	.4byte lbl_80507024
	.4byte lbl_80507040
	.4byte lbl_8050705C
	.4byte lbl_80507078
	.4byte lbl_80507094
	.4byte lbl_805070B0
	.4byte lbl_805070B0
	.4byte lbl_805070CC
	.4byte lbl_805070E8
	.4byte lbl_80507104
	.4byte lbl_80507120
	.4byte lbl_8050713C
	.4byte lbl_80507158
	.4byte lbl_80507174
	.4byte lbl_80507190

.global lbl_80507220
lbl_80507220:
	.asciz "/menu/floor_ma0101.arc"
	.balign 4

.global lbl_80507238
lbl_80507238:
	.asciz "/menu/floor_ma0201.arc"
	.balign 4

.global lbl_80507250
lbl_80507250:
	.asciz "/menu/floor_ma0301.arc"
	.balign 4

.global lbl_80507268
lbl_80507268:
	.asciz "/menu/floor_ma0401.arc"
	.balign 4

.global lbl_80507280
lbl_80507280:
	.asciz "/menu/floor_ma0402.arc"
	.balign 4

.global lbl_80507298
lbl_80507298:
	.asciz "/menu/floor_ma0501.arc"
	.balign 4

.global lbl_805072B0
lbl_805072B0:
	.asciz "/menu/floor_ma0601.arc"
	.balign 4

.global lbl_805072C8
lbl_805072C8:
	.asciz "/menu/floor_ma0701.arc"
	.balign 4

.global lbl_805072E0
lbl_805072E0:
	.asciz "/menu/floor_ma0801.arc"
	.balign 4

.global lbl_805072F8
lbl_805072F8:
	.asciz "/menu/floor_ma0901.arc"
	.balign 4

.global lbl_80507310
lbl_80507310:
	.asciz "/menu/floor_ma1001.arc"
	.balign 4

.global lbl_80507328
lbl_80507328:
	.asciz "/menu/floor_ma1101.arc"
	.balign 4

.global lbl_80507340
lbl_80507340:
	.asciz "/menu/floor_ma1201.arc"
	.balign 4

.global lbl_80507358
lbl_80507358:
	.asciz "/menu/floor_ma1202.arc"
	.balign 4

.global lbl_80507370
lbl_80507370:
	.asciz "/menu/floor_ma1301.arc"
	.balign 4

.global lbl_80507388
lbl_80507388:
	.asciz "/menu/floor_ma1401.arc"
	.balign 4

.global lbl_805073A0
lbl_805073A0:
	.asciz "/menu/floor_ma1501.arc"
	.balign 4

.global lbl_805073B8
lbl_805073B8:
	.asciz "/menu/floor_ma1601.arc"
	.balign 4

.global lbl_805073D0
lbl_805073D0:
	.asciz "/menu/floor_ma1701.arc"
	.balign 4

.global lbl_805073E8
lbl_805073E8:
	.asciz "/menu/floor_ma1801.arc"
	.balign 4

.global lbl_80507400
lbl_80507400:
	.asciz "/menu/floor_ma1901.arc"
	.balign 4

.global lbl_80507418
lbl_80507418:
	.asciz "/menu/floor_ma2001.arc"
	.balign 4

.global lbl_80507430
lbl_80507430:
	.asciz "/menu/floor_ma2101.arc"
	.balign 4

.global lbl_80507448
lbl_80507448:
	.asciz "/menu/floor_ma2201.arc"
	.balign 4

.global lbl_80507460
lbl_80507460:
	.asciz "/menu/floor_ma2301.arc"
	.balign 4

.global lbl_80507478
lbl_80507478:
	.asciz "/menu/floor_ma2401.arc"
	.balign 4


.global lbl_80507490
lbl_80507490:
	# ROM: 0x503590
	.4byte 0
	.4byte lbl_80507220
	.4byte lbl_80507238
	.4byte lbl_80507250
	.4byte lbl_80507268
	.4byte lbl_80507280
	.4byte lbl_80507298
	.4byte lbl_805072B0
	.4byte lbl_805072C8
	.4byte lbl_805072E0
	.4byte lbl_805072F8
	.4byte lbl_80507310
	.4byte lbl_80507328
	.4byte lbl_80507340
	.4byte lbl_80507358
	.4byte lbl_80507370
	.4byte lbl_80507388
	.4byte lbl_805073A0
	.4byte lbl_805073B8
	.4byte lbl_805073B8
	.4byte lbl_805073D0
	.4byte lbl_805073E8
	.4byte lbl_80507400
	.4byte lbl_80507418
	.4byte lbl_80507430
	.4byte lbl_80507448
	.4byte lbl_80507460
	.4byte lbl_80507478

.global lbl_80507500
lbl_80507500:
	.asciz "CFloorMap"
	.balign 4

.global lbl_8050750C
lbl_8050750C:
	.asciz "CTargetCur"
	.balign 4

.global lbl_80507518
lbl_80507518:
	.asciz "CLandCur"
	.balign 4

.global lbl_80507524
lbl_80507524:
	.asciz "CFloorMarker"
	.balign 4

.global lbl_80507534
lbl_80507534:
	.asciz "CFloorCur"
	.balign 4


.global lbl_80507540
lbl_80507540:
	.asciz "mf03_map01_win01.brlyt"
	.asciz "MNU_map"
	.asciz "name"
	.asciz "txt_ic00"
	.asciz "txt_ic01"
	.asciz "txt_ic02"
	.asciz "txt_ic03"
	.asciz "txt_ic04"
	.asciz "txt_ic05"
	.asciz "txt_ic06"
	.asciz "txt_ic07"
	.asciz "txt_ic08"
	.asciz "txt_ic09"
	.asciz "mf00_reg00_curs03.brlyt"
	.asciz "mf00_reg00_curs03_roop.brlan"
	.asciz "mf00_reg00_curs03_on.brlan"
	.asciz "nul_curs01"
	.asciz "nul_curs02"
	.asciz "nul_pcpos"
	.asciz "nul_arw00"
	.asciz "txt_flr"
	.asciz "nul_curs00"
	.asciz "mf03_map01_win.brlyt"
	.asciz "pic_flr01"
	.asciz "pic_flr%02d"
	.asciz "nul_proportion"
	.asciz "txt_tit"
	.asciz "txt_land%02d"
	.asciz "height"
	.asciz "floorname"
	.asciz "pic_god00"
	.asciz "pic_god01"
	.asciz "landmarklist"
	.asciz "mapID"
	.asciz "category"
	.asciz "posX"
	.asciz "posY"
	.asciz "posZ"
	.asciz "S_FLG_MIN1"
	.asciz "S_FLG_MAX1"
	.byte 0x00
	.asciz "mf03_map01_area.brlyt"
	.asciz "txt_area01"
	.asciz "minimap_painx"
	.asciz "minimap_painy"
	.asciz "minimap_rate"
	.asciz "UI_posX"
	.asciz "UI_posY"
	.asciz "nul_all"
	.asciz "%s"
	.asciz "pic_areabs00"
	.asciz "pic_areabs01"
	.asciz "pic_areabs02"
	.asciz "mf03_map01_mask.brlyt"
	.asciz "ico_root"
	.asciz "ico_land"
	.asciz "ico_mapjump"
	.asciz "ico_mine"
	.asciz "ico_shop"
	.asciz "ico_elevator"
	.asciz "ico_kizuna"
	.asciz "ico_qst2"
	.asciz "ico_qst1"
	.asciz "ico_scene"
	.asciz "ico_cam"
	.asciz "ico_pc"
	.asciz "ico_rot"
	.asciz "pic_mask%02d"
	.asciz "pic_land%d"
	.asciz "SYS_iconlist"
	.asciz "filename_1"
	.asciz "%s.tpl"
	.asciz "MNU_mappoint"
	.asciz "map_id"
	.asciz "sflg1"
	.asciz "eflg1"
	.asciz "COL6_FLG1_NO1"
	.asciz "COL6_FLG1"
	.asciz "COL6_FLG1_NO2"
	.asciz "COL6_FLG2"
	.asciz "COL6_FLG1_NO3"
	.asciz "quest_FLG"
	.asciz "type"
	.asciz "pic_mapjump%d"
	.asciz "pic_mine%d"
	.asciz "pic_shop%d"
	.asciz "pic_elevator%d"
	.asciz "npc_id"
	.asciz "pic_npc%d"
	.asciz "FLD_npclist"
	.asciz "rlt_lnd"
	.asciz "pic_npc_b%d"
	.asciz "marker"
	.asciz "pic_point%d"
	.asciz "pic_pop%d"
	.asciz "FLD_valpoplist"
	.asciz "itm1ID"
	.asciz "pic_val%d"
	.asciz "pic_gmk%d"
	.asciz "quest_no"
	.asciz "qst_genre"
	.asciz "relate_no"
	.asciz "scmarkerlist"
	.asciz "map"
	.asciz "pic_attr%d"
	.asciz "pic_scene"
	.asciz "pic_cam"
	.asciz "pic_pc"
	.asciz "pic_map"
	.asciz "nul_f%02d"
	.asciz "pic_obj00"
	.asciz "mf03_map01_bg.brlyt"
	.asciz "sflag"
	.asciz "qflag1"
	.asciz "val1"
	.asciz "mapimg"
	.asciz "mapimg1"
	.asciz "mapimg2"
	.asciz "/menu/tpl/%s"
	.asciz "/menu/FloorMap.arc"
	.asciz "/common/jp/bdat_map.bin"
	.asciz "MNU_sysmes"
	.asciz "minimaplist0101"
	.asciz "minimaplist0201"
	.asciz "minimaplist0301"
	.asciz "minimaplist0401"
	.asciz "minimaplist0402"
	.asciz "minimaplist0501"
	.asciz "minimaplist0601"
	.asciz "minimaplist0701"
	.asciz "minimaplist0801"
	.asciz "minimaplist0901"
	.asciz "minimaplist1001"
	.asciz "minimaplist1101"
	.asciz "minimaplist1201"
	.asciz "minimaplist1202"
	.asciz "minimaplist1301"
	.asciz "minimaplist1401"
	.asciz "minimaplist1501"
	.asciz "minimaplist1601"
	.asciz "minimaplist1701"
	.asciz "minimaplist1801"
	.asciz "minimaplist1901"
	.asciz "minimaplist2001"
	.asciz "minimaplist2101"
	.asciz "minimaplist2201"
	.asciz "minimaplist2301"
	.asciz "minimaplist2401"
	.asciz "CFloorMapLyt"
	.asciz "arc"
	.asciz "CFloorMapMap"
	.balign 4
	.4byte 0

.global lbl_80507C20
lbl_80507C20:
	.asciz "CMenuMapSelectSC"
	.balign 4


.global lbl_80507C34
lbl_80507C34:
	.asciz "MNU_map"
	.asciz "name"
	.balign 4
	.4byte 0

.global lbl_80507C48
lbl_80507C48:
	.asciz "CMenuPause"
	.balign 4
	.4byte 0


.global lbl_80507C58
lbl_80507C58:
	.asciz "CMenuPause"
	.asciz "mf70_cf60_syswin13.brlyt"
	.asciz "mf70_cf60_syswin13_in.brlan"
	.asciz "MNU_sysmes"
	.asciz "name"
	.asciz "txt_titlemes"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_sysmes00"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.asciz "txt_sysmes01"
	.asciz "pic_btn01"

.global lbl_80507D08
lbl_80507D08:
	.asciz "CMenuCollepedia"


.global lbl_80507D18
lbl_80507D18:
	.asciz "MNU_collect"
	.asciz "name"
	.balign 4
	.4byte 0


.global lbl_80507D30
lbl_80507D30:
	# ROM: 0x503E30
	.4byte 0
	.4byte 0x00010008
	.4byte 0x000F0016
	.4byte 0x001A0020
	.4byte 0x0027002E
	.4byte 0x00000032
	.4byte 0x0036003C
	.4byte 0x00000040
	.4byte 0x0047004E
	.4byte 0x00540058
	.4byte 0x0000005F
	.4byte 0x00000066
	.4byte 0x006D0074
	.4byte 0x00780000
	.4byte 0

.global lbl_80507D6C
lbl_80507D6C:
	.asciz "CCollepedia"


.global lbl_80507D78
lbl_80507D78:
	.asciz "mf00_reg00_curs09.brlyt"
	.asciz "mf00_reg00_curs09_roop.brlan"
	.asciz "pic_pgarw_r"
	.asciz "pic_pgarw_l"
	.asciz "mf70_cf60_syswin12.brlyt"
	.asciz "mf70_cf60_syswin12_in.brlan"
	.asciz "txt_sysmes03_00"
	.asciz "txt_sysmes04_00"
	.asciz "MNU_collect"
	.asciz "name"
	.asciz "txt_sysmes02"
	.asciz "txt_sysmes03"
	.asciz "txt_sysmes04"
	.asciz "txt_slct01"
	.asciz "txt_slct02"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_close00"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.asciz "txt_sysmes01"
	.asciz "pic_btnbs01"
	.asciz "pic_icon01"
	.asciz "txt_slct%02d"
	.asciz "nul_proportion"
	.asciz "mapID"
	.asciz "category"
	.asciz "index"
	.asciz "type"
	.asciz "icon_base"
	.asciz "comment"
	.asciz "icon"
	.asciz "/menu/Collepedia.arc"
	.asciz "/menu/tpl/ItemIcon.arc"
	.asciz "common/jp/bdat_item.bin"
	.asciz "snd/adx/j01.adx"
	.asciz "itemID"
	.asciz "snd/adx/j02.adx"
	.asciz "mf55_sys01_icbsno00.tpl"
	.asciz "mf55_sys01_icbsof00.tpl"
	.asciz "mf55_sys01_icbs00.tpl"
	.asciz "pic_btnbs%02d"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "pic_icon%02d"
	.asciz "txt_pg00"
	.asciz "pic_pghole_on"
	.asciz "txt_map"
	.asciz "%d%s"
	.asciz "txt_cmp"
	.asciz "txt_ct%02d"
	.asciz "nul_icon%02d"
	.asciz "pic_cmpbs%02d"
	.asciz "nul_compall"
	.asciz "txt_name"
	.asciz "txt_comment"
	.asciz "pic_pghole%02d"
	.asciz "txt_pg01"
	.asciz "CCollepedia"
	.asciz "arc"
	.asciz "mf55_sys01_cl00.brlyt"
	.asciz "mf55_sys01_cl00_in.brlan"
	.asciz "mf55_sys01_cl00_in_info.brlan"
	.asciz "mf55_sys01_cl00_compall.brlan"
	.asciz "txt_cmptit"
	.asciz "CCollepediaTex"
	.asciz "MNU_item_mes_b"
	.asciz "MNU_col"
	.balign 4
	.4byte 0

	
.global lbl_80508130
lbl_80508130:
	.asciz "CMenuKizunagram"


.global lbl_80508140
lbl_80508140:
	.asciz "MNU_relate"
	.asciz "name"

.global lbl_80508150
lbl_80508150:
	.asciz "nul_curs02"
	.balign 4

.global lbl_8050815C
lbl_8050815C:
	.asciz "nul_curs03"
	.balign 4

.global lbl_80508168
lbl_80508168:
	.asciz "CKizunagram"

.global lbl_80508174
lbl_80508174:
	.asciz "CKizunaInfo"

.global lbl_80508180
lbl_80508180:
	.asciz "CKizunaLine"

.global lbl_8050818C
lbl_8050818C:
	.asciz "CKizunaCur"
	.balign 4

.global lbl_80508198
lbl_80508198:
	.asciz "CKizunaRadar"
	.balign 4


.global lbl_805081A8
lbl_805081A8:
	.asciz "mf40_kiz_rdr.brlyt"
	.asciz "win_rdr01"
	.asciz "win_rdr00"
	.asciz "mf00_reg00_curs04.brlyt"
	.asciz "mf00_reg00_curs04_roop.brlan"
	.asciz "mf40_kiz_line.brlyt"
	.asciz "mf40_kiz_line_scale1.brlan"
	.asciz "nul_all"
	.asciz "pic_bg"
	.asciz "face_icon"
	.asciz "nul_scroll"
	.asciz "rlt_posX"
	.asciz "rlt_posY"
	.asciz "rlt_meet"
	.asciz "rlt_face"
	.balign 4
	.asciz "rlt_texture"
	.asciz "%s"
	.asciz "pic_pcbs"
	.asciz "mf40_kiz_pc06.tpl"
	.asciz "mf40_kiz_pc05.tpl"
	.asciz "mf40_kiz_pc04.tpl"
	.asciz "mf40_kiz_pc03.tpl"
	.asciz "mf40_kiz_pc02.tpl"
	.asciz "mf40_kiz_pc00.tpl"
	.asciz "mf40_kiz_pc01.tpl"
	.asciz "pic_pc"
	.asciz "pc_map%02d"
	.asciz "mapicon_%02d"
	.asciz "txt_area01_00"
	.asciz "txt_area02_00"
	.asciz "txt_area03_00"
	.asciz "txt_area04_00"
	.asciz "txt_area05_00"
	.asciz "txt_area01_00u"
	.asciz "txt_area02_00u"
	.asciz "txt_area03_00u"
	.asciz "txt_area04_00u"
	.asciz "txt_area05_00u"
	.asciz "txt_area01_00o"
	.asciz "txt_area02_00o"
	.asciz "txt_area03_00o"
	.asciz "txt_area04_00o"
	.asciz "txt_area05_00o"
	.asciz "txt_area01_00r"
	.asciz "txt_area02_00r"
	.asciz "txt_area03_00r"
	.asciz "txt_area04_00r"
	.asciz "txt_area05_00r"
	.asciz "txt_area01_00l"
	.asciz "txt_area02_00l"
	.asciz "txt_area03_00l"
	.asciz "txt_area04_00l"
	.asciz "txt_area05_00l"
	.asciz "rlt_lnd"
	.asciz "landmarklist"
	.asciz "mapID"
	.asciz "MNU_relate"
	.asciz "name"
	.asciz "txt_area%02d_00"
	.asciz "txt_area%02d_00u"
	.asciz "txt_area%02d_00o"
	.asciz "txt_area%02d_00r"
	.asciz "txt_area%02d_00l"
	.asciz "mf40_kiz_pclin_e.tpl"
	.asciz "mf40_kiz_pclin_d.tpl"
	.asciz "mf40_kiz_pclin_c.tpl"
	.asciz "mf40_kiz_pclin_b.tpl"
	.asciz "mf40_kiz_pclin_a.tpl"
	.asciz "pic_est%02d_m%02d"
	.asciz "txt_relate01"
	.asciz "JNL_relatelist"
	.asciz "pain1"
	.asciz "pain_txt1"
	.asciz "pain_txt2"
	.asciz "caption%d"
	.asciz "%su"
	.asciz "%so"
	.asciz "%sr"
	.asciz "%sl"
	.asciz "txt_relate%02d"
	.asciz "txt_relate%02du"
	.asciz "txt_relate%02do"
	.asciz "txt_relate%02dr"
	.asciz "txt_relate%02dl"
	.asciz "txt_relate07"
	.asciz "mf40_kiz_000line_e00.tpl"
	.asciz "txt_relate13"
	.asciz "txt_relate05"
	.asciz "mf40_kiz_018line_e00.tpl"
	.asciz "txt_relate03"
	.asciz "mf40_kiz_045line_e00.tpl"
	.asciz "txt_relate16"
	.asciz "mf40_kiz_090line_e00.tpl"
	.asciz "txt_relate02"
	.asciz "mf40_kiz_135line_e00.tpl"
	.asciz "txt_relate15"
	.asciz "txt_relate04"
	.asciz "mf40_kiz_162line_e00.tpl"
	.asciz "none"
	.asciz "mf40_kiz_000line_d00.tpl"
	.asciz "mf40_kiz_018line_d00.tpl"
	.asciz "mf40_kiz_045line_d00.tpl"
	.asciz "mf40_kiz_090line_d00.tpl"
	.asciz "mf40_kiz_135line_d00.tpl"
	.asciz "mf40_kiz_162line_d00.tpl"
	.asciz "mf40_kiz_000line_c00.tpl"
	.asciz "mf40_kiz_018line_c00.tpl"
	.asciz "mf40_kiz_045line_c00.tpl"
	.asciz "mf40_kiz_090line_c00.tpl"
	.asciz "mf40_kiz_135line_c00.tpl"
	.asciz "mf40_kiz_162line_c00.tpl"
	.asciz "mf40_kiz_000line_b00.tpl"
	.asciz "mf40_kiz_018line_b00.tpl"
	.asciz "mf40_kiz_045line_b00.tpl"
	.asciz "mf40_kiz_090line_b00.tpl"
	.asciz "mf40_kiz_135line_b00.tpl"
	.asciz "mf40_kiz_162line_b00.tpl"
	.asciz "mf40_kiz_000line_a00.tpl"
	.asciz "mf40_kiz_018line_a00.tpl"
	.asciz "mf40_kiz_045line_a00.tpl"
	.asciz "mf40_kiz_090line_a00.tpl"
	.asciz "mf40_kiz_135line_a00.tpl"
	.asciz "mf40_kiz_162line_a00.tpl"
	.asciz "mf40_kiz_000line_e%02d.tpl"
	.asciz "mf40_kiz_018line_e%02d.tpl"
	.asciz "mf40_kiz_045line_e%02d.tpl"
	.asciz "mf40_kiz_090line_e%02d.tpl"
	.asciz "mf40_kiz_135line_e%02d.tpl"
	.asciz "mf40_kiz_162line_e%02d.tpl"
	.asciz "mf40_kiz_000line_d%02d.tpl"
	.asciz "mf40_kiz_018line_d%02d.tpl"
	.asciz "mf40_kiz_045line_d%02d.tpl"
	.asciz "mf40_kiz_090line_d%02d.tpl"
	.asciz "mf40_kiz_135line_d%02d.tpl"
	.asciz "mf40_kiz_162line_d%02d.tpl"
	.asciz "mf40_kiz_000line_c%02d.tpl"
	.asciz "mf40_kiz_018line_c%02d.tpl"
	.asciz "mf40_kiz_045line_c%02d.tpl"
	.asciz "mf40_kiz_090line_c%02d.tpl"
	.asciz "mf40_kiz_135line_c%02d.tpl"
	.asciz "mf40_kiz_162line_c%02d.tpl"
	.asciz "mf40_kiz_000line_b%02d.tpl"
	.asciz "mf40_kiz_018line_b%02d.tpl"
	.asciz "mf40_kiz_045line_b%02d.tpl"
	.asciz "mf40_kiz_090line_b%02d.tpl"
	.asciz "mf40_kiz_135line_b%02d.tpl"
	.asciz "mf40_kiz_162line_b%02d.tpl"
	.asciz "mf40_kiz_000line_a%02d.tpl"
	.asciz "mf40_kiz_018line_a%02d.tpl"
	.asciz "mf40_kiz_045line_a%02d.tpl"
	.asciz "mf40_kiz_090line_a%02d.tpl"
	.asciz "mf40_kiz_135line_a%02d.tpl"
	.asciz "mf40_kiz_162line_a%02d.tpl"
	.asciz "mf40_kiz_win.brlyt"
	.asciz "mf40_kiz_win_in.brlan"
	.asciz "mf40_kiz_win_info_in.brlan"
	.asciz "txt_info03_00"
	.asciz "txt_info03_01"
	.asciz "txt_info03_02"
	.asciz "txt_info03_03"
	.asciz "txt_info03_04"
	.asciz "txt_info06_00"
	.asciz "txt_tit01"
	.asciz "txt_tit02"
	.asciz "txt_tit03"
	.asciz "txt_tit04"
	.asciz "txt_tit05"
	.asciz "txt_tit06"
	.asciz "txt_info07"
	.asciz "txt_info01"
	.asciz "txt_info04"
	.asciz "txt_info05"
	.asciz "txt_info06_01"
	.asciz "txt_info02"
	.asciz "pic_npcicon"
	.asciz "mf00_com12_face_area01.tpl"
	.asciz "mf00_com12_face_area02.tpl"
	.asciz "mf00_com12_face_area03.tpl"
	.asciz "mf00_com12_face_area04.tpl"
	.asciz "mf00_com12_face_area05.tpl"
	.asciz "rlt_age"
	.asciz "rlt_job"
	.asciz "range_s"
	.asciz "range_e"
	.asciz "/menu/tpl/KizunaFaceData.arc"
	.asciz "/menu/Kizunagram.arc"
	.asciz "CKizunagram"
	.asciz "arc"
	.asciz "CKizunagram_tex"
	.balign 4

.global lbl_80508EE0
lbl_80508EE0:
	.asciz "CPcKizunagram"
	.balign 4

.global lbl_80508EF0
lbl_80508EF0:
	.asciz "CPcKizunaCur"
	.balign 4


.global lbl_80508F00
lbl_80508F00:
	.asciz "mf00_reg00_curs04.brlyt"
	.asciz "mf00_reg00_curs04_roop.brlan"
	.asciz "mf00_reg00_curs04_on.brlan"
	.asciz "nul_curs02"
	.asciz "nul_curs03"
	.asciz "/menu/PcKizunagram.arc"
	.asciz "JNL_PCrelatelist"
	.asciz "pain1"
	.asciz "on_pain%d"
	.asciz "JNL_PClinelist"
	.asciz "pain2"
	.asciz "mf40_kiz_pclin_n.tpl"
	.asciz "icon_pain"
	.asciz "txt_pain"
	.asciz "flg_s1"
	.asciz "mf40_kiz_pclin_e.tpl"
	.asciz "mf40_kiz_pclin_d.tpl"
	.asciz "mf40_kiz_pclin_c.tpl"
	.asciz "mf40_kiz_pclin_b.tpl"
	.asciz "mf40_kiz_pclin_a.tpl"
	.asciz "mf40_kiz_pcicon_e00.tpl"
	.asciz "mf40_kiz_pcicon_d00.tpl"
	.asciz "mf40_kiz_pcicon_c00.tpl"
	.asciz "mf40_kiz_pcicon_b00.tpl"
	.asciz "mf40_kiz_pcicon_a00.tpl"
	.asciz "nul_proportion"
	.asciz "mf40_kiz_pcicon_e%02d.tpl"
	.asciz "mf40_kiz_pcicon_d%02d.tpl"
	.asciz "mf40_kiz_pcicon_c%02d.tpl"
	.asciz "mf40_kiz_pcicon_b%02d.tpl"
	.asciz "mf40_kiz_pcicon_a%02d.tpl"
	.asciz "flg_e1"
	.asciz "flg_s2"
	.asciz "flg_e2"
	.asciz "CPcKizunagram"
	.asciz "arc"
	.asciz "mf40_kiz_pcline.brlyt"
	.asciz "mf40_kiz_pcline_in.brlan"
	.balign 4
	.4byte 0


.global lbl_805091B0
lbl_805091B0:
	.asciz "name"
	.byte 0x00
	.asciz "skill"
	.asciz "val1"
	.asciz "val2"
	.asciz "time"
	.asciz "flag"

.global lbl_805091D0
lbl_805091D0:
	.asciz "CMenuPassiveSkill"
	.balign 4


.global lbl_805091E4
lbl_805091E4:
	.asciz "MNU_passive"
	.asciz "name"
	.balign 4


.global lbl_805091F8
lbl_805091F8:
	# ROM: 0x5052F8
	.4byte 0x00000501
	.4byte 0x02040305
	.4byte 0x00000501
	.4byte 0x02040305
	.4byte 0x00010002
	.4byte 0x03050400
	.4byte 0x00010500
	.4byte 0x02040305
	.4byte 0x00010502
	.4byte 0x00040305
	.4byte 0x00010502
	.4byte 0x03000405
	.4byte 0x00010502
	.4byte 0x03040005
	.4byte 0x00010002
	.4byte 0x03050400

.global lbl_80509238
lbl_80509238:
	.asciz "nul_curs00"
	.balign 4

.global lbl_80509244
lbl_80509244:
	.asciz "nul_curs01"
	.balign 4

.global lbl_80509250
lbl_80509250:
	.4byte 0x00000010
	.4byte 0x00100000
	.4byte 0x00200000

.global lbl_8050925C
lbl_8050925C:
	.asciz "UI::CPassiveSkill"
	.balign 4

.global lbl_80509270
lbl_80509270:
	.asciz "UI::CPassiveSkillLine"
	.balign 4

.global lbl_80509288
lbl_80509288:
	.asciz "UI::CPassiveSkillInfo"
	.balign 4

.global lbl_805092A0
lbl_805092A0:
	.asciz "UI::CPassiveSkillCur"
	.balign 4


.global lbl_805092B8
lbl_805092B8:
	.asciz "mf00_reg00_curs05.brlyt"
	.asciz "mf00_reg00_curs05_roop.brlan"
	.asciz "mf00_reg00_curs05_on.brlan"
	.asciz "mf00_reg00_curs01.brlyt"
	.asciz "mf00_reg00_curs01_roop.brlan"
	.asciz "mf00_reg00_curs01_on.brlan"
	.asciz "nul_00"
	.asciz "pic_arrow01_l01"
	.asciz "pic_arrow01_r01"
	.asciz "mf20_skl02_inf.brlyt"
	.asciz "mf20_skl02_inf_in.brlan"
	.asciz "mf20_skl02_inf_info_in.brlan"
	.asciz "mf20_skl02_inf_change.brlan"
	.asciz "txt_value01"
	.asciz "txt_value02"
	.asciz "txt_value02_01"
	.asciz "txt_value03"
	.asciz "txt_value04"
	.asciz "txt_value05"
	.asciz "txt_exp06"
	.byte 0x00
	.asciz "txt_exp07"
	.asciz "nul_sort"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_soat01"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_soatbtn"
	.asciz "pic_pcbs01"
	.asciz "pic_pcbs02"
	.asciz "tag_icon"
	.asciz "pic_face02"
	.asciz "pic_face01"
	.asciz "name"
	.asciz "txt_nm01"
	.asciz "txt_exp01"
	.asciz "MNU_passive"
	.asciz "txt_exp02"
	.asciz "skill"
	.asciz "txt_exp03"
	.asciz "val_type"
	.asciz "val%d"
	.asciz "txt_exp04"
	.asciz "%d"
	.asciz "%d%s"
	.asciz "val6"
	.asciz "txt_exp05"
	.asciz "type"
	.asciz "val2"
	.asciz "val1"
	.asciz "time"
	.asciz "mf40_kiz_pcicon_e00.tpl"
	.asciz "mf40_kiz_pcicon_d00.tpl"
	.asciz "mf40_kiz_pcicon_c00.tpl"
	.asciz "mf40_kiz_pcicon_b00.tpl"
	.asciz "mf40_kiz_pcicon_a00.tpl"
	.asciz "pic_kizicon"
	.asciz "nul_chsele"
	.asciz "point_SP"
	.asciz "%d%s%d"
	.asciz "txt_unt01"
	.asciz "txt_hd01"
	.asciz "%s%s%s%s"
	.asciz "point_PP"
	.asciz "%d%s%d%s"
	.asciz "txt_hd02"
	.asciz "txt_unt02"
	.asciz "mf20_skl00_slf.brlyt"
	.asciz "mf20_skl00_slf_in.brlan"
	.asciz "mf20_skl00_slf_fade_out.brlan"
	.asciz "mf20_skl00_slf_roop.brlan"
	.asciz "mf20_skl01_frnd.brlyt"
	.asciz "mf20_skl01_frnd_fade_in.brlan"
	.asciz "mf20_skl03_msk.brlyt"
	.asciz "mf20_skl03_msk_full.brlan"
	.asciz "pic_icbs_sl%02d_%02d"
	.asciz "pic_lock00"
	.asciz "pic_lock01"
	.asciz "pic_lock02"
	.asciz "pic_lock03"
	.asciz "pic_lock04"
	.asciz "pic_line_pt01"
	.asciz "nul_fc_slpt"
	.asciz "pic_fcbs_sl00"
	.asciz "nul_proportion"
	.asciz "icon_type2"
	.asciz "pic_fc_sl00"
	.asciz "pic_fc_sl02"
	.asciz "pic_fc_sl01"
	.asciz "mf20_skl01_pc%02dcat%02d.tpl"
	.asciz "pic_cat%02d"
	.asciz "flag"
	.asciz "nul_cat04"
	.asciz "mf20_skl00_plbs02.tpl"
	.asciz "pic_bis02"
	.asciz "mf20_skl00_plbs04.tpl"
	.asciz "nul_cat05"
	.asciz "mf20_skl00_plbs03.tpl"
	.asciz "pic_bis03"
	.asciz "mf20_skl00_plbs05.tpl"
	.asciz "pic_ef%02d_00"
	.asciz "pic_ef%02d_01"
	.asciz "shape"
	.asciz "target"
	.asciz "mf20_skl02_icnbs_c00.tpl"
	.asciz "mf20_skl02_icnbs_c01.tpl"
	.asciz "mf20_skl02_icnbs_c02.tpl"
	.asciz "mf20_skl02_icnbs_c03.tpl"
	.asciz "mf20_skl02_icnbs_c04.tpl"
	.asciz "mf20_skl02_icnbs_a00.tpl"
	.asciz "mf20_skl02_icnbs_a01.tpl"
	.asciz "mf20_skl02_icnbs_a02.tpl"
	.asciz "mf20_skl02_icnbs_a03.tpl"
	.asciz "mf20_skl02_icnbs_a04.tpl"
	.asciz "mf20_skl02_icnbs_b00.tpl"
	.asciz "mf20_skl02_icnbs_b01.tpl"
	.asciz "mf20_skl02_icnbs_b02.tpl"
	.asciz "mf20_skl02_icnbs_b03.tpl"
	.asciz "mf20_skl02_icnbs_b04.tpl"
	.asciz "icon"
	.asciz "pic_ic_sl%02d_%02d"
	.asciz "pic_msk_sl%02d_%02d"
	.asciz "pic_curs_sl%02d_%02d"
	.asciz "rvs_effect%02d"
	.asciz "pic_fc_pt00"
	.asciz "mf20_skl02_lck00.tpl"
	.asciz "mf20_skl02_lck01.tpl"
	.asciz "mf20_skl02_lck02.tpl"
	.asciz "mf20_skl02_lck03.tpl"
	.asciz "mf20_skl02_lck04.tpl"
	.asciz "mf20_skl00_curs03.tpl"
	.asciz "mf20_skl00_curs01.tpl"
	.asciz "mf20_skl00_curs02.tpl"
	.asciz "nul_pt01"
	.asciz "nul_pt02"
	.asciz "nul_pt03"
	.asciz "nul_pt04"
	.asciz "nul_pt05"
	.asciz "nul_pt06"
	.asciz "nul_pt%02d"
	.asciz "pic_fc_pt%02d"
	.asciz "mf20_skl02_icnbs_e00.tpl"
	.asciz "mf20_skl02_icnbs_e01.tpl"
	.asciz "mf20_skl02_icnbs_e02.tpl"
	.asciz "mf20_skl02_icnbs_e03.tpl"
	.asciz "mf20_skl02_icnbs_e04.tpl"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "mf20_skl02_icnbs_d00.tpl"
	.asciz "mf20_skl02_icnbs_d01.tpl"
	.asciz "mf20_skl02_icnbs_d02.tpl"
	.asciz "mf20_skl02_icnbs_d03.tpl"
	.asciz "mf20_skl02_icnbs_d04.tpl"
	.asciz "pic_icbs_pt%02d_%02d"
	.asciz "pic_ic_pt%02d_%02d"
	.asciz "pic_line_pt%02d"
	.asciz "arm_type"
	.asciz "nul_all"
	.asciz "/menu/PassiveSkill.arc"
	.asciz "common/jp/bdat_psv.bin"
	.asciz "CPassiveSkill"
	.asciz "arc"
	.asciz "MNU_PSskil"
	.asciz "MNU_PSlink"
	.asciz "MNU_PSset"
	.asciz "BTL_PSVskill"
	.asciz "BTL_PSVlink"
	.asciz "BTL_PSSlist"
	.balign 4
	.4byte 0

.global lbl_80509D20
lbl_80509D20:
	.asciz "cf::CfGimmickEne"
	.balign 4


.global lbl_80509D34
lbl_80509D34:
	.asciz "eneID"
	.asciz "artID"
	.asciz "state"
	.asciz "EFF"
	.asciz "SE"
	.asciz "envSE"
	.asciz "wet"
	.asciz "hour"
	.asciz "spWF"
	.asciz "startF"
	.asciz "watiF"
	.asciz "endF"
	.4byte 0
	.byte 0x00
.global lbl_80509D78
lbl_80509D78:
	.asciz "CMenuBattleEnd"
	.balign 4


.global lbl_80509D88
lbl_80509D88:
	.asciz "CMenuBattleEnd"
	.asciz "mf70_cf53_sideinfo.brlyt"
	.asciz "mf70_cf53_sideinfo_battle.brlan"
	.asciz "mf70_cf53_sideinfo_renkei.brlan"
	.asciz "txt_num_b00"
	.asciz "txt_num_b01"
	.asciz "txt_num_r00"
	.asciz "txt_num_r01"

.global lbl_80509E20
lbl_80509E20:
	.asciz "CMenuPlayAward"
	.balign 4


.global lbl_80509E30
lbl_80509E30:
	.asciz "MNU_update"
	.asciz "info"

.global lbl_80509E40
lbl_80509E40:
	.asciz "CPlayAwardList"
	.balign 4


.global lbl_80509E50
lbl_80509E50:
	.asciz "JNL_playaward"
	.asciz "order"
	.asciz "MNU_update"
	.asciz "info"
	.asciz "genre"
	.asciz "com1_terms1"
	.asciz "com1_terms2"
	.asciz "title"
	.asciz "comment2"
	.asciz "comment1"
	.asciz "/menu/PlayAwardList.arc"
	.asciz "/common/jp/bdat_award.bin"
	.asciz "txt_tit%02d"
	.asciz "txt_exp%02d"
	.asciz "nul_proportion"
	.asciz "txt_cat00"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_soatbtn"
	.asciz "txt_btn"
	.asciz "MNU_battle"
	.asciz "name"
	.asciz "txt_btntit"
	.asciz "CPlayAwardList"
	.asciz "arc"
	.asciz "mf31_award00.brlyt"
	.asciz "mf31_award00_in.brlan"
	.asciz "mf31_award00_info_in.brlan"
	.asciz "txt_val01"
	.asciz "txt_cat01"
	.asciz "MNU_playaward"
	.balign 4
	.4byte 0

.global lbl_80509FE0
lbl_80509FE0:
	.asciz "CMenuKizunaTalkList"
	.4byte 0


.global lbl_80509FF8
lbl_80509FF8:
	.asciz "MNU_update"
	.asciz "info"

.global lbl_8050A008
lbl_8050A008:
	.asciz "CKizunaTalkList"


.global lbl_8050A018
lbl_8050A018:
	.asciz "MNU_update"
	.asciz "info"
	.asciz "flag"
	.asciz "friendly"
	.asciz "chara_01"
	.asciz "chara_02"
	.asciz "mapID"
	.asciz "name"
	.asciz "list"
	.asciz "title"
	.asciz "mf31_kiztalk_face00.tpl"
	.asciz "tag_icon"
	.asciz "/menu/KizunaTalkList.arc"
	.asciz "common/jp/bdat_kzn.bin"
	.asciz "pic_pcbs%02d_00"
	.asciz "pic_pcbs%02d_01"
	.asciz "pic_chbx%02d"
	.asciz "txt_tit%02d"
	.asciz "txt_exp%02d"
	.asciz "pic_pc%02d_00"
	.asciz "pic_pc%02d_01"
	.asciz "pic_kizicon%02d"
	.asciz "mf40_kiz_pcicon_f00.tpl"
	.asciz "mf40_kiz_pcicon_e00.tpl"
	.asciz "mf40_kiz_pcicon_d00.tpl"
	.asciz "mf40_kiz_pcicon_c00.tpl"
	.asciz "mf40_kiz_pcicon_b00.tpl"
	.asciz "mf40_kiz_pcicon_a00.tpl"
	.asciz "pic_ch%02d"
	.asciz "nul_proportion"
	.asciz "CKizunaTalkList"
	.asciz "arc"
	.asciz "mf31_kiztalk00.brlyt"
	.asciz "mf31_kiztalk00_in.brlan"
	.asciz "mf31_kiztalk00_info_in.brlan"
	.asciz "JNL_kizunalist"
	.balign 4

.global lbl_8050A238
lbl_8050A238:
	.asciz "CSysWinBuff"


.global lbl_8050A244
lbl_8050A244:
	.asciz "/common/jp/bdat_mes.bin"
	.asciz "help"
	.asciz "MNU_buff"
	.balign 4
	.4byte 0

.global lbl_8050A270
lbl_8050A270:
	.asciz "cf::ICamControlClassic"
	.balign 4

.global lbl_8050A288
lbl_8050A288:
	.asciz "cf::ICamControlGc"
	.balign 4

.global lbl_8050A29C
lbl_8050A29C:
	.asciz "cf::ICamControlRemote"
	.balign 4
	.4byte 0

.global lbl_8050A2B8
lbl_8050A2B8:
	.asciz "cf::ICamControl"

.global lbl_8050A2C8
lbl_8050A2C8:
	.asciz "cf::CfObjectImplTbox"
	.balign 4

.global lbl_8050A2E0
lbl_8050A2E0:
	.asciz "CMenuLvUp"
	.balign 4
	.4byte 0


.global lbl_8050A2F0
lbl_8050A2F0:
	.asciz "CMenuLvUp"
	.asciz "mf71_battle18_lv.brlyt"
	.asciz "mf71_battle18_lv_in.brlan"
	.asciz "mf71_battle19_mstr.brlyt"
	.asciz "mf71_battle19_mstr_in.brlan"
	.asciz "pic_kiz00"
	.asciz "pic_kiz01"
	.asciz "pic_ps00"
	.asciz "pic_ps01"
	.asciz "pic_at00"
	.asciz "pic_at01"

.global lbl_8050A398
lbl_8050A398:
	.asciz "cf::CChainChance"
	.balign 4
	.4byte 0

.global lbl_8050A3B0
lbl_8050A3B0:
	.asciz "cf::CChainTimer"

.global lbl_8050A3C0
lbl_8050A3C0:
	.asciz "cf::CChainMember"
	.balign 4
	.4byte 0

.global lbl_8050A3D8
lbl_8050A3D8:
	.asciz "cf::CChainActor"

.global lbl_8050A3E8
lbl_8050A3E8:
	.asciz "cf::CChainActorList"

.global lbl_8050A3FC
lbl_8050A3FC:
	.asciz "reslist<cf::CChainActor *>"
	.balign 4

.global lbl_8050A418
lbl_8050A418:
	.asciz "_reslist_base<cf::CChainActor *>"
	.balign 4

.global lbl_8050A43C
lbl_8050A43C:
	.asciz "cf::CChainTemp"
	.balign 4
	.4byte 0


.global lbl_8050A450
lbl_8050A450:
	# ROM: 0x506550
	.4byte 0x0000000F
	.4byte 0x00140019
	.4byte 0x001E0000
	.4byte 0


.global lbl_8050A460
lbl_8050A460:
	# ROM: 0x506560
	.float 1.0
	.4byte 0x3F99999A
	.4byte 0x3FB33333
	.4byte 0x3FCCCCCD

.global lbl_8050A470
lbl_8050A470:
	.asciz "cf::Flusher<cf::CfObjectActor>"
	.balign 4

.global lbl_8050A490
lbl_8050A490:
	.asciz "CSysWinScenarioLog"
	.balign 4
	.4byte 0


.global lbl_8050A4A8
lbl_8050A4A8:
	.asciz "/menu/ScenarioLog.arc"
	.asciz "/common/jp/bdat_slog.bin"
	.asciz "flag"
	.asciz "MNU_main"
	.asciz "name"
	.asciz "txt_titlemes"
	.asciz "help"
	.asciz "txt_sysmes01"
	.asciz "MNU_kyeassign"
	.asciz "txt_close00"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.asciz "CSysWinScenarioLog"
	.asciz "arc"
	.asciz "mf70_cf60_syswin14.brlyt"
	.asciz "mf70_cf60_syswin14_in.brlan"
	.asciz "MNU_scenario"

.global lbl_8050A598
lbl_8050A598:
	.asciz "cf::CChainActorEne"
	.balign 4
	.4byte 0

.global lbl_8050A5B0
lbl_8050A5B0:
	.asciz "cf::CChainActorPc"
	.balign 4
	.4byte 0


.global lbl_8050A5C8
lbl_8050A5C8:
	# ROM: 0x5066C8
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008


.global lbl_8050A5E0
lbl_8050A5E0:
	# ROM: 0x5066E0
	.4byte 0
	.float 1.0
	.4byte 0x3F99999A
	.float 1.5
	.4byte 0x3FE66666
	.4byte 0x40000000
	.4byte 0x40200000

.global lbl_8050A5FC
lbl_8050A5FC:
	.4byte 0x00000010
	.4byte 0x00100000
	.4byte 0x00200000


.global lbl_8050A608
lbl_8050A608:
	# ROM: 0x506708
	.4byte 0x02000000
	.4byte 0x01000400
	.4byte 0x00000400
	.4byte 0x05000000
	.4byte 0x05000600
	.4byte 0x00000600
	.4byte 0x07000000
	.4byte 0x07000800
	.4byte 0x00000800

.global lbl_8050A62C
lbl_8050A62C:
	.4byte 0x00000010
	.4byte 0x00100000
	.4byte 0x00200000

.global lbl_8050A638
lbl_8050A638:
	.asciz "CEquipItemBox"
	.balign 4

.global lbl_8050A648
lbl_8050A648:
	.asciz "CEIBPageCur"


.global lbl_8050A654
lbl_8050A654:
	.asciz "attach"
	.asciz "equip_pc%d"
	.asciz "pc%d"
	.asciz "arm_type"
	.asciz "item_keep"
	.asciz "%s"
	.asciz "MNU_item"
	.asciz "name"
	.asciz "%s%s"
	.asciz "money"
	.asciz "rankType"
	.asciz "jwl_slot"
	.asciz "category"
	.asciz "att_lev"
	.asciz "grd_rate"
	.asciz "arm_phy"
	.asciz "arm_eth"
	.asciz "eva_rate"
	.asciz "dmg_hi"
	.asciz "flag"
	.asciz "mf00_reg00_curs07.brlyt"
	.asciz "mf00_reg00_curs07_roop.brlan"
	.asciz "mf00_reg00_curs07_on.brlan"
	.asciz "mf00_reg00_curs09.brlyt"
	.asciz "mf00_reg00_curs09_roop.brlan"
	.asciz "pic_pgarw_r"
	.asciz "pic_pgarw_l"
	.asciz "/menu/EquipItemBox.arc"
	.asciz "/menu/tpl/ItemIcon.arc"
	.asciz "common/jp/bdat_mes.bin"
	.asciz "nul_inf"
	.asciz "nul_sort"
	.asciz "nul_proportion"
	.asciz "help"
	.asciz "atr_type"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "icon_base"
	.asciz "mf00_reg10_base21.tpl"
	.asciz "mf00_reg10_base20.tpl"
	.asciz "pic_btnbs%02d"
	.asciz "icon"
	.asciz "pic_icon%02d"
	.asciz "txt_num%02d"
	.asciz "%d"
	.byte 0x00
	.asciz "S"
	.asciz "U"
	.asciz "pic_eq%02d"
	.asciz "mf00_reg00_eq01.tpl"
	.asciz "mf00_reg00_eq00.tpl"
	.asciz "mf00_reg00_eq03.tpl"
	.asciz "pic_off%02d"
	.asciz "txt_pg01"
	.asciz "nul_pg"
	.asciz "pic_pghole%02d"
	.asciz "txt_pg00"
	.asciz "pic_pghole_on"
	.asciz "pic_hole%02d"
	.asciz "txt_name"
	.asciz "pic_cat%02d"
	.asciz "txt_soat01"
	.asciz "pic_tbbcon%02d"
	.asciz "pic_tbbcof%02d"
	.asciz "mf00_reg20_cat00.tpl"
	.asciz "mf00_reg20_cat07.tpl"
	.asciz "mf00_reg20_cat01.tpl"
	.asciz "mf00_reg20_cat02.tpl"
	.asciz "mf00_reg20_cat03.tpl"
	.asciz "mf00_reg20_cat04.tpl"
	.asciz "mf00_reg20_cat05.tpl"
	.asciz "mf00_reg20_cat06.tpl"
	.asciz "mf00_reg20_cat09.tpl"
	.asciz "mf00_reg20_cat10.tpl"
	.asciz "mf00_reg20_cat11.tpl"
	.asciz "mf00_reg20_cat08.tpl"
	.asciz "pic_bxbco00"
	.asciz "pic_bxbco01"
	.asciz "pic_bxbco02"
	.asciz "pic_bxbco03"
	.asciz "pic_bxbco04"
	.asciz "pic_bxbco05"
	.asciz "pic_bxbco06"
	.asciz "pic_bxbco07"
	.asciz "pic_bxbco08"
	.asciz "pic_hole01"
	.asciz "pic_hole02"
	.asciz "pic_hole03"
	.asciz "pic_hole04"
	.asciz "pic_hole05"
	.asciz "pic_hole06"
	.asciz "nul_para_01"
	.asciz "nul_para_50"
	.asciz "txt_para01"
	.asciz "txt_para04"
	.asciz "txt_para08"
	.asciz "txt_para10"
	.asciz "txt_para11"
	.asciz "txt_para22"
	.asciz "txt_para23"
	.asciz "txt_para24"
	.asciz "txt_para25"
	.asciz "txt_value02"
	.asciz "txt_value04"
	.asciz "txt_value07"
	.asciz "txt_value08"
	.asciz "txt_value09"
	.asciz "txt_value22"
	.asciz "pic_ethcol01"
	.asciz "pic_ethcol02"
	.asciz "pic_ethcol03"
	.asciz "txt_eth01"
	.asciz "txt_eth02"
	.asciz "txt_eth03"
	.asciz "txt_ethvalue01"
	.asciz "txt_ethvalue02"
	.asciz "txt_ethvalue03"
	.asciz "txt_para50"
	.asciz "txt_para51"
	.asciz "txt_value50"
	.asciz "txt_value51"
	.asciz "dmg_low"
	.asciz "speed"
	.asciz "%d%s%d"
	.asciz "%s%d%s"
	.asciz "%d%s"
	.asciz "pc_arts"
	.asciz "rvs_type"
	.asciz "%d "
	.asciz "txt_para52"
	.asciz "pic_ethcol%02d"
	.asciz "mf00_reg30_crys00.tpl"
	.asciz "mf00_reg30_crys01.tpl"
	.asciz "mf00_reg30_crys02.tpl"
	.asciz "mf00_reg30_crys03.tpl"
	.asciz "mf00_reg30_crys04.tpl"
	.asciz "mf00_reg30_crys05.tpl"
	.asciz "mf00_reg30_crys06.tpl"
	.asciz "txt_ethvalue%02d"
	.asciz "txt_eth%02d"
	.asciz "CEquipItemBox"
	.asciz "arc"
	.asciz "mf02_eqbox.brlyt"
	.asciz "mf02_eqbox_box_in.brlan"
	.asciz "txt_soattit"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "MNU_kyeassign"
	.asciz "pic_soatbtn"
	.asciz "pic_pghole10"
	.asciz "pic_tbbcof01"
	.asciz "txt_num01"
	.asciz "CEquipItemBoxTex"
	.asciz "MNU_skill"
	.balign 4
	.4byte 0

.global lbl_8050AE18
lbl_8050AE18:
	.asciz "CMenuSave"
	.balign 4
	.4byte 0


.global lbl_8050AE28
lbl_8050AE28:
	.asciz "MNU_sysmes"
	.asciz "name"

.global lbl_8050AE38
lbl_8050AE38:
	.asciz "CSaveLoad"
	.balign 4


.global lbl_8050AE44
lbl_8050AE44:
	.asciz "mf00_reg00_curs13.brlyt"
	.asciz "mf00_reg00_curs13_roop.brlan"
	.asciz "mf00_reg00_curs13_on.brlan"
	.asciz "mf70_cf60_syswin16.brlyt"
	.asciz "mf70_cf60_syswin16_in.brlan"
	.asciz "txt_sysmes01"
	.asciz "/menu/SaveLoad.arc"
	.asciz "MNU_sysmes"
	.asciz "name"
	.asciz "pic_shbs%02d"
	.asciz "nul_proportion"
	.asciz "txt_lv%02d"
	.asciz "%s%s"
	.asciz "txt_lvpara%02d"
	.asciz "txt_pc%02d"
	.balign 4
	.asciz "%s%s%s%s%s"
	.asciz "txt_tm%02d_00"
	.asciz "%s%s%s%s%s%s%s%s%s%s"
	.asciz "txt_date%02d"
	.asciz "txt_date%02d_01"
	.asciz "pic_facebs%02d_%02d"
	.asciz "txt_map%02d"
	.asciz "mf95_sys10_new.tpl"
	.asciz "pic_sh16_%02d"
	.asciz "nul_comp%02d"
	.asciz "%02d"
	.asciz "%02d%s%02d"
	.asciz "%04d%s%02d%s%02d"
	.asciz "tag_icon"
	.asciz "pic_face%02d_%02d"
	.asciz "mf95_sys10_sys.tpl"
	.asciz "CSaveLoad"
	.asciz "arc"
	.asciz "mf95_sys10_sv00.brlyt"
	.asciz "mf95_sys10_sv00_in.brlan"
	.asciz "mf95_sys10_sv00_info_in.brlan"
	.asciz "txt_lv01"
	.asciz "txt_lvpara01"
	.asciz "txt_lv02"
	.asciz "txt_lvpara02"
	.asciz "txt_lv03"
	.asciz "txt_lvpara03"
	.asciz "txt_tm01_00"
	.asciz "txt_tm01_01"
	.asciz "txt_tm01_02"
	.asciz "txt_date01"
	.asciz "txt_date01_01"
	.asciz "txt_tm02_00"
	.asciz "txt_tm02_01"
	.asciz "txt_tm02_02"
	.asciz "txt_date02"
	.asciz "txt_date02_01"
	.asciz "txt_tm03_00"
	.asciz "txt_tm03_01"
	.asciz "txt_tm03_02"
	.asciz "txt_date03"
	.asciz "txt_date03_01"
	.asciz "txt_datetit01_00"
	.asciz "txt_datetit01_01"
	.asciz "txt_datetit02_00"
	.asciz "txt_datetit02_01"
	.asciz "txt_datetit03_00"
	.asciz "txt_datetit03_01"
	.asciz "pic_sh43_01"
	.asciz "pic_sh43_02"
	.asciz "pic_sh43_03"
	.balign 4

.global lbl_8050B208
lbl_8050B208:
	.asciz "cf::CfAward"

.global lbl_8050B214
lbl_8050B214:
	.asciz "cf::CAwardBase"
	.balign 4
	.4byte 0

.global lbl_8050B228
lbl_8050B228:
	.asciz "/menu/PtChangeNotice.arc"
	.balign 4

.global lbl_8050B244
lbl_8050B244:
	.asciz "CMenuPTChangeNotice"


.global lbl_8050B258
lbl_8050B258:
	.asciz "CMenuPTChangeNotice"
	.asciz "arc"
	.asciz "mf70_cf60_syswin15.brlyt"
	.asciz "mf70_cf60_syswin15_in.brlan"
	.asciz "MNU_party"
	.asciz "name"
	.asciz "txt_sysmes01"
	.asciz "txt_titlemes"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_close00"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.asciz "txt_pt"
	.asciz "pic_btn01"
	.asciz "pic_bm%02d_bs"
	.asciz "pic_rs%02d_bs"
	.asciz "pic_bm%02d_fc"
	.asciz "pic_rs%02d_fc"
	.asciz "icon_type2"
	.asciz "pic_gs%02d_bs"
	.asciz "pic_gs%02d_fc"
	.asciz "rlt_texture"
	.balign 4

.global lbl_8050B388
lbl_8050B388:
	.asciz "cf::CChainCombo"

.global lbl_8050B398
lbl_8050B398:
	.asciz "CSysWinSave"


.global lbl_8050B3A4
lbl_8050B3A4:
	.asciz "CSysWinSave"
	.asciz "MNU_sysmes"
	.asciz "name"

.global lbl_8050B3C0
lbl_8050B3C0:
	.asciz "cf::CREvtMovie"
	.balign 4


.global lbl_8050B3D0
lbl_8050B3D0:
	.asciz "/ev/realtime/"
	.asciz ".sfd"
	.4byte 0
	.byte 0x00
.global lbl_8050B3E8
lbl_8050B3E8:
	.asciz "CTaskGamePic"
	.balign 4

.global lbl_8050B3F8
lbl_8050B3F8:
	.asciz "CTTask<CTaskGamePic>"
	.balign 4

.global lbl_8050B410
lbl_8050B410:
	.asciz "CTaskGameEvt"
	.balign 4

.global lbl_8050B420
lbl_8050B420:
	.asciz "CTTask<CTaskGameEvt>"
	.balign 4

.global lbl_8050B438
lbl_8050B438:
	.asciz "cf::CHelp_EtherMakeTIPS"

.global lbl_8050B450
lbl_8050B450:
	.asciz "cf::CHelp_EtherMake"

.global lbl_8050B464
lbl_8050B464:
	.asciz "cf::CHelp_TalkTIPS"
	.balign 4

.global lbl_8050B478
lbl_8050B478:
	.asciz "cf::CHelp_Talk"
	.balign 4

.global lbl_8050B488
lbl_8050B488:
	.asciz "cf::CHelp_KizunaTIPS"
	.balign 4

.global lbl_8050B4A0
lbl_8050B4A0:
	.asciz "cf::CHelp_Kizuna"
	.balign 4

.global lbl_8050B4B4
lbl_8050B4B4:
	.asciz "cf::CHelp_EndEventTIPS"
	.balign 4

.global lbl_8050B4CC
lbl_8050B4CC:
	.asciz "cf::CHelp_EndEvent"
	.balign 4

.global lbl_8050B4E0
lbl_8050B4E0:
	.asciz "cf::CHelp_AlwaysTIPS"
	.balign 4

.global lbl_8050B4F8
lbl_8050B4F8:
	.asciz "cf::CHelp_Always"
	.balign 4
	.4byte 0

.global lbl_8050B510
lbl_8050B510:
	.asciz "cf::CHelpSwitch"

.global lbl_8050B520
lbl_8050B520:
	.asciz "cf::CHelp"
	.balign 4

.global lbl_8050B52C
lbl_8050B52C:
	.asciz "cf::CHelpManager"
	.balign 4


.global lbl_8050B540
lbl_8050B540:
	.asciz "vs01240050"
	.balign 4
	.4byte 0

.global lbl_8050B550
lbl_8050B550:
	.asciz "percent_E"
	.balign 4

.global lbl_8050B55C
lbl_8050B55C:
	.asciz "percent_D"
	.balign 4

.global lbl_8050B568
lbl_8050B568:
	.asciz "percent_C"
	.balign 4

.global lbl_8050B574
lbl_8050B574:
	.asciz "percent_B"
	.balign 4

.global lbl_8050B580
lbl_8050B580:
	.asciz "percent_A"
	.balign 4

.global lbl_8050B58C
lbl_8050B58C:
	.asciz "percent_S"
	.balign 4


.global lbl_8050B598
lbl_8050B598:
	# ROM: 0x507698
	.4byte lbl_8066B490
	.4byte lbl_8050B550
	.4byte lbl_8050B55C
	.4byte lbl_8050B568
	.4byte lbl_8050B574
	.4byte lbl_8050B580
	.4byte lbl_8050B58C

.global lbl_8050B5B4
lbl_8050B5B4:
	.asciz "CMCGetItemBox"
	.balign 4


.global lbl_8050B5C4
lbl_8050B5C4:
	.asciz "%s"
	.asciz "MNU_item"
	.asciz "name"
	.asciz "%s%s"
	.asciz "comment"
	.asciz "%d"
	.asciz "rvs_type"
	.asciz "rvs_caption"
	.asciz "<col=red>%s<col=def2>"
	.asciz "<col=red>%s%%<col=def2>"
	.asciz "<col=red>%d%%<col=def2>"
	.asciz "/menu/McGetItemBox.arc"
	.asciz "/menu/tpl/ItemIcon.arc"
	.asciz "common/jp/bdat_item.bin"
	.asciz "common/jp/bdat_mes.bin"
	.asciz "MNU_skill"
	.asciz "help"
	.asciz "atr_type"
	.asciz "mf00_com00_dmy.tpl"
	.asciz "icon_base"
	.asciz "pic_btnbs%02d"
	.asciz "icon"
	.asciz "pic_icon%02d"
	.asciz "txt_num%02d"
	.byte 0x00
	.asciz "txt_pg01"
	.asciz "nul_bxbc_c"
	.asciz "nul_bxbc_s"
	.asciz "nul_pg"
	.asciz "pic_pghole%02d"
	.asciz "txt_pg00"
	.asciz "pic_pghole_on"
	.asciz "txt_name"
	.asciz "txt_comment"
	.asciz "nul_button00"
	.asciz "nul_proportion"
	.asciz "CMCGetItemBox"
	.asciz "arc"
	.asciz "mf10_cry01_box01.brlyt"
	.asciz "mf10_cry01_box01_in.brlan"
	.asciz "mf10_cry01_box01_info_in.brlan"
	.asciz "txt_buyvalue02"
	.asciz "MNU_sysmes"
	.asciz "txt_button00"
	.asciz "pic_pghole03"
	.asciz "CMCGetItemBoxTex"
	.asciz "MNU_item_mes_a"
	.asciz "MNU_item_mes_b"
	.balign 4
	.4byte 0

.global lbl_8050B848
lbl_8050B848:
	.asciz "CMenuTutorial"
	.balign 4


.global lbl_8050B858
lbl_8050B858:
	.asciz "MNU_main"
	.asciz "name"
	.asciz "MNU_ttrl"
	.asciz "title"
	.balign 4

.global lbl_8050B878
lbl_8050B878:
	.asciz "CTutorial"
	.balign 4


.global lbl_8050B884
lbl_8050B884:
	.asciz "/menu/Tutorial.arc"
	.asciz "/common/jp/bdat_ttrl.bin"
	.asciz "/menu/tpl/c_ttrl_%03d.arc"
	.asciz "/menu/tpl/r_ttrl_%03d.arc"
	.asciz "MNU_ttrl"
	.asciz "page"
	.asciz "txt_pg00"
	.asciz "txt_pg01"
	.asciz "cttrl_i%03d_%02d.tpl"
	.asciz "rttrl_i%03d_%02d.tpl"
	.asciz "pic_cap"
	.asciz "CTutorial"
	.asciz "arc"
	.asciz "mf85_opt01_tut01.brlyt"
	.asciz "mf85_opt01_tut01_in.brlan"
	.asciz "mf85_opt01_tut01_info_in.brlan"
	.asciz "CTutorialTex"
	.balign 4
	.4byte 0

.global lbl_8050B9A8
lbl_8050B9A8:
	.asciz "CMenuOption"


.global lbl_8050B9B4
lbl_8050B9B4:
	.asciz "MNU_main"
	.asciz "name"
	.2byte 0
	.4byte 0


.global lbl_8050B9C8
lbl_8050B9C8:
	.asciz "mf00_reg00_curs19.brlyt"
	.asciz "mf00_reg00_curs19_roop.brlan"
	.asciz "mf00_reg00_curs19_on.brlan"
	.asciz "pic_arw00_l01"
	.asciz "pic_arw00_r01"
	.asciz "/menu/Option.arc"
	.asciz "MNU_main"
	.asciz "name"
	.asciz "pic_cat%02d"
	.asciz "txt_cat%02d"
	.asciz "txt_head%02d"
	.asciz "txt_btn%02d"
	.asciz "pic_bcln%02d"
	.asciz "help"
	.asciz "txt_comment"
	.asciz "nul_btn%02d"
	.asciz "nul_proportion"
	.asciz "COption"
	.asciz "arc"
	.asciz "mf85_opt00_opt00.brlyt"
	.asciz "mf85_opt00_opt00_in.brlan"
	.asciz "mf85_opt00_opt00_info_in.brlan"
	.balign 4
	.4byte 0

.global lbl_8050BB20
lbl_8050BB20:
	.asciz "CMenuSkipTimer"
	.balign 4


.global lbl_8050BB30
lbl_8050BB30:
	.asciz "MNU_main"
	.asciz "name"
	.2byte 0
.global lbl_8050BB40
lbl_8050BB40:
	.asciz "CSkipTimer"
	.balign 4

.global lbl_8050BB4C
lbl_8050BB4C:
	.asciz "CSkipTimer2"


.global lbl_8050BB58
lbl_8050BB58:
	.asciz "CSkipTimer2"
	.asciz "mf85_opt00_clock01.brlyt"
	.asciz "mf85_opt00_clock01_in.brlan"
	.asciz "txt_time"
	.asciz "pic_apm"
	.asciz "%d:%02d"
	.asciz "mf85_opt00_pm.tpl"
	.asciz "mf85_opt00_am.tpl"
	.asciz "nul_all"
	.asciz "nul_bg00"
	.asciz "nul_bg01"
	.asciz "nul_bg02"
	.asciz "nul_bg03"
	.asciz "nul_bg04"
	.asciz "nul_bg05"
	.asciz "nul_bg06"
	.asciz "/menu/SkipTimer.arc"
	.asciz "MNU_main"
	.asciz "name"
	.asciz "CSkipTimer"
	.asciz "arc"
	.asciz "mf85_opt00_clock00.brlyt"
	.asciz "mf85_opt00_clock00_in.brlan"
	.asciz "mf85_opt00_clock00_time_all.brlan"
	.balign 4

.global lbl_8050BCA8
lbl_8050BCA8:
	.asciz "cf::CChainEffect"
	.balign 4
	.4byte 0

.global lbl_8050BCC0
lbl_8050BCC0:
	.asciz "snd/ahx/pc01/pc01_01_01.ahx"

.global lbl_8050BCDC
lbl_8050BCDC:
	.asciz "cf::CCharVoice"
	.balign 4


.global lbl_8050BCEC
lbl_8050BCEC:
	# ROM: 0x507DEC
	.4byte 0

.global lbl_8050BCF0
lbl_8050BCF0:
	.asciz "cf::CCharVoiceMan"
	.balign 4
	.4byte 0

.global lbl_8050BD08
lbl_8050BD08:
	.asciz "cf::CVS_THREAD"
	.balign 4

.global lbl_8050BD18
lbl_8050BD18:
	.asciz "cf::CVS_THREAD_BATTLE_END"
	.balign 4
	.4byte 0

.global lbl_8050BD38
lbl_8050BD38:
	.asciz "cf::CVS_THREAD_BUF"
	.balign 4
	.4byte 0

.global lbl_8050BD50
lbl_8050BD50:
	.asciz "cf::CVS_THREAD_CHAIN"
	.balign 4

.global lbl_8050BD68
lbl_8050BD68:
	.asciz "cf::CVS_THREAD_DOWN"
	.4byte 0

.global lbl_8050BD80
lbl_8050BD80:
	.asciz "cf::CVS_THREAD_EHP"
	.balign 4
	.4byte 0

.global lbl_8050BD98
lbl_8050BD98:
	.asciz "cf::CVS_THREAD_FAINT"
	.balign 4

.global lbl_8050BDB0
lbl_8050BDB0:
	.asciz "cf::CVS_THREAD_HAGE"
	.4byte 0

.global lbl_8050BDC8
lbl_8050BDC8:
	.asciz "cf::CVS_THREAD_HP"
	.balign 4
	.4byte 0

.global lbl_8050BDE0
lbl_8050BDE0:
	.asciz "cf::CVS_THREAD_PARTY_GAGE"
	.balign 4
	.4byte 0

.global lbl_8050BE00
lbl_8050BE00:
	.asciz "cf::CVS_THREAD_REVIVE"
	.balign 4

.global lbl_8050BE18
lbl_8050BE18:
	.asciz "cf::CVS_THREAD_SUDDEN"
	.balign 4

.global lbl_8050BE30
lbl_8050BE30:
	.asciz "cf::CVS_THREAD_TENSION_UP"
	.balign 4
	.4byte 0

.global lbl_8050BE50
lbl_8050BE50:
	.asciz "cf::CVS_THREAD_VISION_BREAK"
	.4byte 0

.global lbl_8050BE70
lbl_8050BE70:
	.asciz "cf::CVS_THREAD_VISION_TELL"
	.balign 4
	.4byte 0

.global lbl_8050BE90
lbl_8050BE90:
	.asciz "CMenuBattleChain"
	.balign 4


.global lbl_8050BEA4
lbl_8050BEA4:
	.asciz "CMenuBattleChain"
	.asciz "mf70_cf54_sideinfo.brlyt"
	.asciz "mf70_cf54_sideinfo_in.brlan"
	.asciz "mf70_cf54_sideinfo_glow.brlan"
	.asciz "mf70_cf54_sideinfo_chang_out.brlan"
	.asciz "mf70_cf54_sideinfo_change_in.brlan"
	.asciz "mf70_cf54_sideinfo_break.brlan"
	.asciz "pic_ic"
	.asciz "pic_chain00"
	.asciz "pic_chain01"
	.asciz "pic_chain02"
	.asciz "txt_num"
	.asciz "pic_ic_gl"
	.asciz "pic_chain00_gl"
	.asciz "pic_chain01_gl"
	.asciz "pic_chain02_gl"
	.asciz "txt_num_gl"
	.balign 4
	.4byte 0

.global lbl_8050BFE8
lbl_8050BFE8:
	.4byte 0x01040203
	.4byte 0x01050204
	.4byte 0

.global lbl_8050BFF4
lbl_8050BFF4:
	.4byte 0x02060108
	.4byte 0x04010109
	.4byte 0x02F90000

.global lbl_8050C000
lbl_8050C000:
	.4byte 0x02080501
	.4byte 0x0209010A
	.4byte 0

.global lbl_8050C00C
lbl_8050C00C:
	.4byte 0x0601020A
	.4byte 0x0602020B
	.4byte 0x010B0000

.global lbl_8050C018
lbl_8050C018:
	.4byte 0x010C0701
	.4byte 0x0702020C
	.4byte 0x010D0000

.global lbl_8050C024
lbl_8050C024:
	.4byte 0x04020303
	.4byte 0x010E0304
	.4byte 0x010F0305
	.4byte 0

.global lbl_8050C034
lbl_8050C034:
	.4byte 0x011003FA
	.4byte 0x05020111
	.4byte 0x03F90503
	.4byte 0

.global lbl_8050C044
lbl_8050C044:
	.4byte 0x06030308
	.4byte 0x06040112
	.4byte 0x0605010A
	.4byte 0x03F70000

.global lbl_8050C054
lbl_8050C054:
	.4byte 0x0113030A
	.4byte 0x07030114
	.4byte 0x03090704
	.4byte 0

.global lbl_8050C064
lbl_8050C064:
	.4byte 0x01150403
	.4byte 0x01160504
	.4byte 0

.global lbl_8050C070
lbl_8050C070:
	.4byte 0x01180403
	.4byte 0x01160705
	.4byte 0

.global lbl_8050C07C
lbl_8050C07C:
	.4byte 0x06070505
	.4byte 0x06080119
	.4byte 0

.global lbl_8050C088
lbl_8050C088:
	.4byte 0x0405030B
	.4byte 0x020E0406
	.4byte 0x020F030C
	.4byte 0

.global lbl_8050C098
lbl_8050C098:
	.4byte 0x060A030E
	.4byte 0x0211060B
	.4byte 0x0212030F
	.4byte 0

.global lbl_8050C0A8
lbl_8050C0A8:
	.4byte 0x02130310
	.4byte 0x07080214
	.4byte 0

.global lbl_8050C0B4
lbl_8050C0B4:
	.4byte 0x02150407
	.4byte 0x05090216
	.4byte 0

.global lbl_8050C0C0
lbl_8050C0C0:
	.4byte 0x0219050A
	.4byte 0x060D050B
	.4byte 0

.global lbl_8050C0CC
lbl_8050C0CC:
	.4byte 0x021A050C
	.4byte 0x070A021B
	.4byte 0

.global lbl_8050C0D8
lbl_8050C0D8:
	.4byte 0x070B060E
	.4byte 0x021C060F
	.4byte 0x021D0000

.global lbl_8050C0E4
lbl_8050C0E4:
	.4byte 0x0610040B
	.4byte 0x06110312
	.4byte 0

.global lbl_8050C0F0
lbl_8050C0F0:
	.4byte 0x0613040D
	.4byte 0x050E0614
	.4byte 0

.global lbl_8050C0FC
lbl_8050C0FC:
	.4byte 0x06160710
	.4byte 0x06170510
	.4byte 0

.global lbl_8050C108
lbl_8050C108:
	.asciz "cf::CVS_THREAD_BATTLE_END_SP"
	.balign 4

.global lbl_8050C128
lbl_8050C128:
	.asciz "cf::CfGimmickSaveOff"
	.balign 4


.global lbl_8050C140
lbl_8050C140:
	.asciz "naviOff"

.global lbl_8050C148
lbl_8050C148:
	.asciz "CMenuTutorialList"
	.balign 4


.global lbl_8050C15C
lbl_8050C15C:
	.asciz "MNU_main"
	.asciz "name"
	.asciz "MNU_ttrl"
	.asciz "title"
	.balign 4
	.4byte 0

.global lbl_8050C180
lbl_8050C180:
	.asciz "CTutorialList"
	.balign 4


.global lbl_8050C190
lbl_8050C190:
	.asciz "type_cat"
	.asciz "order"
	.asciz "/menu/TutorialList.arc"
	.asciz "/common/jp/bdat_ttrl.bin"
	.asciz "nul_btn"
	.asciz "nul_proportion"
	.asciz "pic_icon%02d"
	.asciz "txt_tit%02d"
	.balign 4
	.asciz "title"
	.asciz "type"
	.asciz "nul_tit%02d"
	.asciz "MNU_main"
	.asciz "name"
	.asciz "txt_btn"
	.asciz "CTutorialList"
	.asciz "arc"
	.asciz "mf85_opt01_tutlist.brlyt"
	.asciz "mf85_opt01_tutlist_in.brlan"
	.asciz "mf85_opt01_tutlist_info_in.brlan"
	.asciz "txt_btntit"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "MNU_kyeassign"
	.asciz "pic_soatbtn"
	.asciz "MNU_ttrl"
	.balign 4


.global lbl_8050C2D8
lbl_8050C2D8:
	.asciz "/menu/Load.arc"
	.asciz "CLoad"
	.asciz "arc"
	.asciz "mf00_load01.brlyt"
	.asciz "mf00_load00.brlyt"
	.asciz "mf00_load01_in.brlan"
	.asciz "mf00_load00_in.brlan"
	.asciz "mf00_load01_roop.brlan"
	.asciz "mf00_load00_roop.brlan"
	.balign 4

	#Xenoblade
	#"ゼノブレイド"
.global lbl_8050C370
lbl_8050C370:
	.4byte 0x835B836D
	.4byte 0x8375838C
	.4byte 0x83438368
	.byte 0
	.byte 0x00,0x00,0x00

#The Bionis and Mechonis's Monados cut the future open
#"巨神と機神　モナドが未来を斬り開く"
.global lbl_8050C380
lbl_8050C380:
	.4byte 0x8B90905F
	.4byte 0x82C68B40
	.4byte 0x905F8140
	.4byte 0x83828369
	.4byte 0x836882AA
	.4byte 0x96A29788
	.4byte 0x82F08E61
	.4byte 0x82E88A4A
	.2byte 0x82AD
	.byte 0x00
	.byte 0x00

.global lbl_8050C3A4
lbl_8050C3A4:
	.asciz "bannerTexture.tpl"
	.balign 4

.global lbl_8050C3B8
lbl_8050C3B8:
	.asciz "iconTexture[0].tpl"
	.balign 4

.global lbl_8050C3CC
lbl_8050C3CC:
	.asciz "iconTexture[1].tpl"
	.balign 4

.global lbl_8050C3E0
lbl_8050C3E0:
	.asciz "iconTexture[2].tpl"
	.balign 4

.global lbl_8050C3F4
lbl_8050C3F4:
	.asciz "iconTexture[3].tpl"
	.balign 4

.global lbl_8050C408
lbl_8050C408:
	.asciz "iconTexture[4].tpl"
	.balign 4

.global lbl_8050C41C
lbl_8050C41C:
	.asciz "iconTexture[5].tpl"
	.balign 4

.global lbl_8050C430
lbl_8050C430:
	.asciz "iconTexture[6].tpl"
	.balign 4

.global lbl_8050C444
lbl_8050C444:
	.asciz "iconTexture[7].tpl"
	.balign 4

.global lbl_8050C458
lbl_8050C458:
	.4byte 0x30BC30CE
	.4byte 0x30D630EC
	.4byte 0x30A430C9
	.4byte 0x306E30C7
	.4byte 0x30A330B9
	.4byte 0x30AF3092
	.4byte 0x30BB30C3
	.4byte 0x30C83057
	.4byte 0x3066304F
	.4byte 0x30603055
	.4byte 0x30443002
	.4byte 0

.global lbl_8050C488
lbl_8050C488:
	.4byte 0x30C730A3
	.4byte 0x30B930AF
	.4byte 0x30928AAD
	.4byte 0x3081307E
	.4byte 0x305B3093
	.4byte 0x30673057
	.4byte 0x305F3002
	.4byte 0x00268A73
	.4byte 0x3057304F
	.4byte 0x306F0057
	.4byte 0x00690069
	.4byte 0x672C4F53
	.4byte 0x306E53D6
	.4byte 0x62718AAC
	.4byte 0x660E66F8
	.4byte 0x3092304A
	.4byte 0x8AAD307F
	.4byte 0x304F3060
	.4byte 0x30553044
	.4byte 0x30020000

.global lbl_8050C4D8
lbl_8050C4D8:
	.4byte 0x30C730A3
	.4byte 0x30B930AF
	.4byte 0x306E8AAD
	.4byte 0x307F8FBC
	.4byte 0x307F4E2D
	.4byte 0x30673059
	.4byte 0x30020000

.global lbl_8050C4F4
lbl_8050C4F4:
	.4byte 0x00570069
	.4byte 0x006930EA
	.4byte 0x30E230B3
	.4byte 0x30F3306E
	.4byte 0x901A4FE1
	.4byte 0x304C5207
	.4byte 0x308C307E
	.4byte 0x3057305F
	.4byte 0x30020000

.global lbl_8050C518
lbl_8050C518:
	.4byte 0x00570069
	.4byte 0x006930EA
	.4byte 0x30E230B3
	.4byte 0x30F3306B
	.4byte 0x30CC30F3
	.4byte 0x30C130E3
	.4byte 0x30AF3092
	.4byte 0x63A57D9A
	.4byte 0x30573066
	.4byte 0x304F3060
	.4byte 0x30553044
	.4byte 0x30020026
	.4byte 0x002662E1
	.4byte 0x5F3530B3
	.4byte 0x30F330C8
	.4byte 0x30ED30FC
	.4byte 0x30E93092
	.4byte 0x30AF30E9
	.4byte 0x30B730C3
	.4byte 0x30AF30B3
	.4byte 0x30F330C8
	.4byte 0x30ED30FC
	.4byte 0x30E93078
	.4byte 0x00265909
	.4byte 0x66F43059
	.4byte 0x308B5834
	.4byte 0x5408306F
	.4byte 0x30014E00
	.4byte 0x5EA630B2
	.4byte 0x30FC30E0
	.4byte 0x309230EA
	.4byte 0x30BB30C3
	.4byte 0x30C83057
	.4byte 0x305F5F8C
	.4byte 0x30010026
	.4byte 0x30BF30A4
	.4byte 0x30C830EB
	.4byte 0x753B9762
	.4byte 0x306762E1
	.4byte 0x5F3530B3
	.4byte 0x30F330C8
	.4byte 0x30ED30FC
	.4byte 0x30E93092
	.4byte 0x002630AF
	.4byte 0x30E930B7
	.4byte 0x30C330AF
	.4byte 0x30B330F3
	.4byte 0x30C830ED
	.4byte 0x30FC30E9
	.4byte 0x306B5909
	.4byte 0x66F43057
	.4byte 0x3066304F
	.4byte 0x30603055
	.4byte 0x30443002
	.4byte 0

.global lbl_8050C5F4
lbl_8050C5F4:
	.4byte 0x00570069
	.4byte 0x006930EA
	.4byte 0x30E230B3
	.4byte 0x30F3306B
	.4byte 0x30AF30E9
	.4byte 0x30B730C3
	.4byte 0x30AF30B3
	.4byte 0x30F330C8
	.4byte 0x30ED30FC
	.4byte 0x30E93092
	.4byte 0x63A57D9A
	.4byte 0x30573066
	.4byte 0x304F3060
	.4byte 0x30553044
	.4byte 0x30020026
	.4byte 0x002662E1
	.4byte 0x5F3530B3
	.4byte 0x30F330C8
	.4byte 0x30ED30FC
	.4byte 0x30E93092
	.4byte 0x30CC30F3
	.4byte 0x30C130E3
	.4byte 0x30AF3078
	.4byte 0x00265909
	.4byte 0x66F43059
	.4byte 0x308B5834
	.4byte 0x5408306F
	.4byte 0x30014E00
	.4byte 0x5EA630B2
	.4byte 0x30FC30E0
	.4byte 0x309230EA
	.4byte 0x30BB30C3
	.4byte 0x30C83057
	.4byte 0x305F5F8C
	.4byte 0x30010026
	.4byte 0x30BF30A4
	.4byte 0x30C830EB
	.4byte 0x753B9762
	.4byte 0x306762E1
	.4byte 0x5F3530B3
	.4byte 0x30F330C8
	.4byte 0x30ED30FC
	.4byte 0x30E93092
	.4byte 0x002630CC
	.4byte 0x30F330C1
	.4byte 0x30E330AF
	.4byte 0x306B5909
	.4byte 0x66F43057
	.4byte 0x3066304F
	.4byte 0x30603055
	.4byte 0x30443002
	.4byte 0

.global lbl_8050C6C4
lbl_8050C6C4:
	.4byte 0x00570069
	.4byte 0x006930EA
	.4byte 0x30E230B3
	.4byte 0x30F3306B
	.4byte 0x62E15F35
	.4byte 0x30B330F3
	.4byte 0x30C830ED
	.4byte 0x30FC30E9
	.4byte 0x304C63A5
	.4byte 0x7D9A3055
	.4byte 0x308C3066
	.4byte 0x3044307E
	.4byte 0x305B3093
	.4byte 0x30020026
	.4byte 0x30CC30F3
	.4byte 0x30C130E3
	.4byte 0x30AF307E
	.4byte 0x305F306F
	.4byte 0x30AF30E9
	.4byte 0x30B730C3
	.4byte 0x30AF30B3
	.4byte 0x30F330C8
	.4byte 0x30ED30FC
	.4byte 0x30E93092
	.4byte 0x63A57D9A
	.4byte 0x30573066
	.4byte 0x304F3060
	.4byte 0x30553044
	.4byte 0x30020000

.global lbl_8050C738
lbl_8050C738:
	.4byte 0x00570069
	.4byte 0x0069672C
	.4byte 0x4F534FDD
	.4byte 0x5B5830E1
	.4byte 0x30E230EA
	.4byte 0x304C58CA
	.4byte 0x308C307E
	.4byte 0x3057305F
	.4byte 0x30020026
	.4byte 0x304F308F
	.4byte 0x3057304F
	.4byte 0x306F0057
	.4byte 0x00690069
	.4byte 0x672C4F53
	.4byte 0x306E53D6
	.4byte 0x62718AAC
	.4byte 0x660E66F8
	.4byte 0x3092304A
	.4byte 0x8AAD307F
	.4byte 0x304F3060
	.4byte 0x30553044
	.4byte 0x30020000

.global lbl_8050C790
lbl_8050C790:
	.4byte 0x00570069
	.4byte 0x0069672C
	.4byte 0x4F534FDD
	.4byte 0x5B5830E1
	.4byte 0x30E230EA
	.4byte 0x306E66F8
	.4byte 0x304D8FBC
	.4byte 0x307F002F
	.4byte 0x8AAD307F
	.4byte 0x51FA3057
	.4byte 0x304C3067
	.4byte 0x304D307E
	.4byte 0x305B3093
	.4byte 0x30673057
	.4byte 0x305F3002
	.4byte 0x0026304F
	.4byte 0x308F3057
	.4byte 0x304F306F
	.4byte 0x00570069
	.4byte 0x0069672C
	.4byte 0x4F53306E
	.4byte 0x53D66271
	.4byte 0x8AAC660E
	.4byte 0x66F83092
	.4byte 0x304A8AAD
	.4byte 0x307F304F
	.4byte 0x30603055
	.4byte 0x30443002
	.4byte 0
	.4byte 0

.global lbl_8050C808
lbl_8050C808:
	.4byte 0x00570069
	.4byte 0x0069672C
	.4byte 0x4F534FDD
	.4byte 0x5B5830E1
	.4byte 0x30E230EA
	.4byte 0x306E66F8
	.4byte 0x304D8FBC
	.4byte 0x307F002F
	.4byte 0x8AAD307F
	.4byte 0x51FA3057
	.4byte 0x4E2D306B
	.4byte 0x30A830E9
	.4byte 0x30FC304C
	.4byte 0x767A751F
	.4byte 0x3057307E
	.4byte 0x3057305F
	.4byte 0x30020026
	.4byte 0x304F308F
	.4byte 0x3057304F
	.4byte 0x306F0057
	.4byte 0x00690069
	.4byte 0x672C4F53
	.4byte 0x306E53D6
	.4byte 0x62718AAC
	.4byte 0x660E66F8
	.4byte 0x3092304A
	.4byte 0x8AAD307F
	.4byte 0x304F3060
	.4byte 0x30553044
	.4byte 0x30020000
	
.global lbl_8050C880
lbl_8050C880:
	.asciz "gameStart"
	.balign 4

.global lbl_8050C88C
lbl_8050C88C:
	.asciz "itemVision"
	.balign 4

.global lbl_8050C898
lbl_8050C898:
	.asciz "ptChange"
	.balign 4


.global lbl_8050C8A4
lbl_8050C8A4:
	.asciz "help"
	.balign 4
	.4byte 0

.global lbl_8050C8B0
lbl_8050C8B0:
	.asciz "cf::CVS_THREAD_BATTLE_MAIN"
	.balign 4
	.4byte 0

.global lbl_8050C8D0
lbl_8050C8D0:
	.asciz "cf::CVS_THREAD_BATTLE_BEGIN"

.global lbl_8050C8EC
lbl_8050C8EC:
	.asciz "cf::EVS_THREAD_LIB"
	.balign 4

.global lbl_8050C900
lbl_8050C900:
	.asciz "cf::CVS_THREAD_LIB"
	.balign 4
	.4byte 0

.global lbl_8050C918
lbl_8050C918:
	.asciz "CMenuGCItem"


.global lbl_8050C924
lbl_8050C924:
	.asciz "MNU_item"
	.asciz "name"
	.4byte 0
	.2byte 0

.global lbl_8050C938
lbl_8050C938:
	.asciz "CMenuGameClear"
	.balign 4


.global lbl_8050C948
lbl_8050C948:
	.asciz "JNL_playaward"
	.asciz "clear_flg"
	.asciz "pc_arts"
	.asciz "idx"
	.asciz "CMenuGameClear"
	.asciz "MNU_sysmes"
	.asciz "name"
	.4byte 0
	.byte 0x00
.global lbl_8050C990
lbl_8050C990:
	.asciz "cf::CfHikariItemManager"


.global lbl_8050C9A8
lbl_8050C9A8:
	.asciz "HIKARI"
	.balign 4


.global lbl_8050C9B0
lbl_8050C9B0:
	# ROM: 0x508AB0
	.4byte 0x41A80000
	.4byte 0x42200000
	.4byte 0x3D430C31
	.4byte 0x3D579436


.global lbl_8050C9C0
lbl_8050C9C0:
	# ROM: 0x508AC0
	.float 10.0
	.4byte 0x42200000
	.4byte 0x3DCCCCCD
	.4byte 0x3D088889


.global lbl_8050C9D0
lbl_8050C9D0:
	# ROM: 0x508AD0
	.float 10.0
	.4byte 0x42200000
	.4byte 0x3DCCCCCD
	.4byte 0x3D088889

.global lbl_8050C9E0
lbl_8050C9E0:
	.asciz "CUIErrMesWin"
	.balign 4

.global lbl_8050C9F0
lbl_8050C9F0:
	.asciz "CTTask<CUIErrMesWin>"
	.balign 4


.global lbl_8050CA08
lbl_8050CA08:
	.asciz "MNU_sysmes"
	.asciz "name"

.global lbl_8050CA18
lbl_8050CA18:
	.asciz "CMenuTitle"
	.balign 4

.global lbl_8050CA24
lbl_8050CA24:
	.asciz "CTTask<CMenuTitle>"
	.balign 4

.global lbl_8050CA38
lbl_8050CA38:
	.asciz "CTitleMenu"
	.balign 4

.global lbl_8050CA44
lbl_8050CA44:
	.asciz "CTitleLogo"
	.balign 4


.global lbl_8050CA50
lbl_8050CA50:
	.asciz "mf99_title00.brlyt"
	.asciz "mf99_title00_in.brlan"
	.asciz "mf99_title00_roop.brlan"
	.asciz "mf99_title00_out.brlan"
	.asciz "mf99_title01.brlyt"
	.asciz "mf99_title01_anykey_in.brlan"
	.asciz "mf99_title01_anykey_roop.brlan"
	.asciz "mf99_title01_anykey_on.brlan"
	.asciz "mf99_title01_in.brlan"
	.asciz "mf99_title01_roop.brlan"
	.asciz "mf99_title01_out.brlan"
	.asciz "pic_menu01_00"
	.asciz "nul_menu%02d"
	.asciz "nul_proportion"
	.asciz "/menu/Title.arc"
	.asciz "CTitle"
	.asciz "arc"
	.2byte 0
.global lbl_8050CBA0
lbl_8050CBA0:
	.asciz "cf::CHelp_ToAttack"
	.balign 4
	.4byte 0

.global lbl_8050CBB8
lbl_8050CBB8:
	.asciz "cf::CHelp_ArtsAttack"
	.balign 4

.global lbl_8050CBD0
lbl_8050CBD0:
	.asciz "cf::CHelp_ArtsSet"
	.balign 4
	.4byte 0

.global lbl_8050CBE8
lbl_8050CBE8:
	.asciz "cf::CHelp_CkKizuna"
	.balign 4
	.4byte 0

.global lbl_8050CC00
lbl_8050CC00:
	.asciz "cf::CHelp_CloseItemMenu"

.global lbl_8050CC18
lbl_8050CC18:
	.asciz "cf::CHelp_CloseSysMenu"
	.balign 4

.global lbl_8050CC30
lbl_8050CC30:
	.asciz "cf::CHelp_EnemyCount"
	.balign 4

.global lbl_8050CC48
lbl_8050CC48:
	.asciz "cf::CHelp_EnemyEnable"
	.balign 4

.global lbl_8050CC60
lbl_8050CC60:
	.asciz "cf::CHelp_Exchange"
	.balign 4
	.4byte 0

.global lbl_8050CC78
lbl_8050CC78:
	.asciz "cf::CHelp_GameOver"
	.balign 4
	.4byte 0

.global lbl_8050CC90
lbl_8050CC90:
	.asciz "cf::CHelp_ItemCole"
	.balign 4
	.4byte 0

.global lbl_8050CCA8
lbl_8050CCA8:
	.asciz "cf::CHelp_LandMark"
	.balign 4
	.4byte 0

.global lbl_8050CCC0
lbl_8050CCC0:
	.asciz "cf::CHelp_LearnArts"

.global lbl_8050CCD4
lbl_8050CCD4:
	.asciz "wpn_type"
	.balign 4

.global lbl_8050CCE0
lbl_8050CCE0:
	.asciz "cf::CHelp_ClosePartyMenu"
	.balign 4
	.4byte 0

.global lbl_8050CD00
lbl_8050CD00:
	.asciz "cf::CHelp_OpenPartyMenu"

.global lbl_8050CD18
lbl_8050CD18:
	.asciz "cf::CHelp_Pg"
	.balign 4

.global lbl_8050CD28
lbl_8050CD28:
	.asciz "cf::CHelp_CloseQuestMenu"
	.balign 4
	.4byte 0

.global lbl_8050CD48
lbl_8050CD48:
	.asciz "cf::CHelp_ShopSel"
	.balign 4

.global lbl_8050CD5C
lbl_8050CD5C:
	.asciz "cf::CHelp_ShopBuy"
	.balign 4

.global lbl_8050CD70
lbl_8050CD70:
	.asciz "cf::CHelp_Sp"
	.balign 4

.global lbl_8050CD80
lbl_8050CD80:
	.asciz "cf::CHelp_Target"
	.balign 4
	.4byte 0

.global lbl_8050CD98
lbl_8050CD98:
	.asciz "cf::CVS_THREAD_ORDER"
	.balign 4


.global lbl_8050CDB0
lbl_8050CDB0:
	.asciz "voice"
	.balign 4

.global lbl_8050CDB8
lbl_8050CDB8:
	.asciz "CBattery"
	.balign 4
	.4byte 0


.global lbl_8050CDC8
lbl_8050CDC8:
	.asciz "/menu/Battery.arc"
	.asciz "pic_%02d"
	.asciz "CBattery"
	.asciz "arc"
	.asciz "mf00_btry.brlyt"

.global lbl_8050CE00
lbl_8050CE00:
	.asciz "std::exception"
	.balign 4


.global lbl_8050CE10
lbl_8050CE10:
	# ROM: 0x508F10
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8050CE20
lbl_8050CE20:
	.asciz "std::bad_cast"
	.balign 4


.global lbl_8050CE30
lbl_8050CE30:
	.asciz "???"
	.asciz "!std::exception!!std::bad_typeid!!"
	.asciz "!std::exception!!std::bad_cast!!"


.global lbl_8050CE78
lbl_8050CE78:
	# ROM: 0x508F78
	.4byte 0
	.4byte 0
	.4byte 0x41F00000
	.4byte 0
	.4byte 0x41E00000
	.4byte 0


.global lbl_8050CE90
lbl_8050CE90:
	.asciz "GCN_Mem_Alloc.c : InitDefaultHeap. No Heap Available\n"
	.asciz "Metrowerks CW runtime library initializing default heap\n"
	.balign 4


.global lbl_8050CF00
lbl_8050CF00:
	# ROM: 0x509000
	.4byte 0x00000004
	.4byte 0x0000000C
	.4byte 0x00000014
	.4byte 0x00000024
	.4byte 0x00000034
	.4byte 0x00000044


.global lbl_8050CF18
lbl_8050CF18:
	.asciz "542101086242752217003726400434970855712890625"
	.asciz "11102230246251565404236316680908203125"
	.asciz "23283064365386962890625"
	.asciz "152587890625"
	.asciz "390625"
	.asciz "78125"
	.asciz "15625"
	.asciz "3125"
	.asciz "625"
	.asciz "125"
	.asciz "25"
	.asciz "5"
	.asciz "1"
	.asciz "2"
	.asciz "4"
	.asciz "8"
	.asciz "16"
	.asciz "32"
	.asciz "64"
	.asciz "128"
	.asciz "256"
	.asciz "179769313486231580793728714053034151"
	.balign 4


.global lbl_8050CFF8
lbl_8050CFF8:
	.asciz "Assertion (%s) failed in \"%s\", line %d\n"

.global lbl_8050D020
lbl_8050D020:
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040106
	.4byte 0x01040104
	.4byte 0x01040104
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x014200D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x04580458
	.4byte 0x04580458
	.4byte 0x04580458
	.4byte 0x04580458
	.4byte 0x04580458
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D00651
	.4byte 0x06510651
	.4byte 0x06510651
	.4byte 0x06510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x02510251
	.4byte 0x025100D0
	.4byte 0x00D000D0
	.4byte 0x00D000D0
	.4byte 0x00D00471
	.4byte 0x04710471
	.4byte 0x04710471
	.4byte 0x04710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x00710071
	.4byte 0x007100D0
	.4byte 0x00D000D0
	.4byte 0x00D00004
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

	#seems like an ascii uppercase/lowercase conversion table
.global lbl_8050D220
lbl_8050D220:
	.4byte 0x00010203
	.4byte 0x04050607
	.4byte 0x08090A0B
	.4byte 0x0C0D0E0F
	.4byte 0x10111213
	.4byte 0x14151617
	.4byte 0x18191A1B
	.4byte 0x1C1D1E1F
	.4byte 0x20212223
	.4byte 0x24252627
	.4byte 0x28292A2B
	.4byte 0x2C2D2E2F
	.4byte 0x30313233
	.4byte 0x34353637
	.4byte 0x38393A3B
	.4byte 0x3C3D3E3F
	.4byte 0x40616263
	.4byte 0x64656667
	.4byte 0x68696A6B
	.4byte 0x6C6D6E6F
	.4byte 0x70717273
	.4byte 0x74757677
	.4byte 0x78797A5B
	.4byte 0x5C5D5E5F
	.4byte 0x60616263
	.4byte 0x64656667
	.4byte 0x68696A6B
	.4byte 0x6C6D6E6F
	.4byte 0x70717273
	.4byte 0x74757677
	.4byte 0x78797A7B
	.4byte 0x7C7D7E7F
	.4byte 0x80818283
	.4byte 0x84858687
	.4byte 0x88898A8B
	.4byte 0x8C8D8E8F
	.4byte 0x90919293
	.4byte 0x94959697
	.4byte 0x98999A9B
	.4byte 0x9C9D9E9F
	.4byte 0xA0A1A2A3
	.4byte 0xA4A5A6A7
	.4byte 0xA8A9AAAB
	.4byte 0xACADAEAF
	.4byte 0xB0B1B2B3
	.4byte 0xB4B5B6B7
	.4byte 0xB8B9BABB
	.4byte 0xBCBDBEBF
	.4byte 0xC0C1C2C3
	.4byte 0xC4C5C6C7
	.4byte 0xC8C9CACB
	.4byte 0xCCCDCECF
	.4byte 0xD0D1D2D3
	.4byte 0xD4D5D6D7
	.4byte 0xD8D9DADB
	.4byte 0xDCDDDEDF
	.4byte 0xE0E1E2E3
	.4byte 0xE4E5E6E7
	.4byte 0xE8E9EAEB
	.4byte 0xECEDEEEF
	.4byte 0xF0F1F2F3
	.4byte 0xF4F5F6F7
	.4byte 0xF8F9FAFB
	.4byte 0xFCFDFEFF

.global lbl_8050D320
lbl_8050D320:
	.4byte 0x00010203
	.4byte 0x04050607
	.4byte 0x08090A0B
	.4byte 0x0C0D0E0F
	.4byte 0x10111213
	.4byte 0x14151617
	.4byte 0x18191A1B
	.4byte 0x1C1D1E1F
	.4byte 0x20212223
	.4byte 0x24252627
	.4byte 0x28292A2B
	.4byte 0x2C2D2E2F
	.4byte 0x30313233
	.4byte 0x34353637
	.4byte 0x38393A3B
	.4byte 0x3C3D3E3F
	.4byte 0x40414243
	.4byte 0x44454647
	.4byte 0x48494A4B
	.4byte 0x4C4D4E4F
	.4byte 0x50515253
	.4byte 0x54555657
	.4byte 0x58595A5B
	.4byte 0x5C5D5E5F
	.4byte 0x60414243
	.4byte 0x44454647
	.4byte 0x48494A4B
	.4byte 0x4C4D4E4F
	.4byte 0x50515253
	.4byte 0x54555657
	.4byte 0x58595A7B
	.4byte 0x7C7D7E7F
	.4byte 0x80818283
	.4byte 0x84858687
	.4byte 0x88898A8B
	.4byte 0x8C8D8E8F
	.4byte 0x90919293
	.4byte 0x94959697
	.4byte 0x98999A9B
	.4byte 0x9C9D9E9F
	.4byte 0xA0A1A2A3
	.4byte 0xA4A5A6A7
	.4byte 0xA8A9AAAB
	.4byte 0xACADAEAF
	.4byte 0xB0B1B2B3
	.4byte 0xB4B5B6B7
	.4byte 0xB8B9BABB
	.4byte 0xBCBDBEBF
	.4byte 0xC0C1C2C3
	.4byte 0xC4C5C6C7
	.4byte 0xC8C9CACB
	.4byte 0xCCCDCECF
	.4byte 0xD0D1D2D3
	.4byte 0xD4D5D6D7
	.4byte 0xD8D9DADB
	.4byte 0xDCDDDEDF
	.4byte 0xE0E1E2E3
	.4byte 0xE4E5E6E7
	.4byte 0xE8E9EAEB
	.4byte 0xECEDEEEF
	.4byte 0xF0F1F2F3
	.4byte 0xF4F5F6F7
	.4byte 0xF8F9FAFB
	.4byte 0xFCFDFEFF

.global lbl_8050D420
lbl_8050D420:
	.asciz "%a %b %e %T %Y"
	.balign 4

.global lbl_8050D430
lbl_8050D430:
	.asciz "%I:%M:%S %p"

.global lbl_8050D43C
lbl_8050D43C:
	.asciz "%m/%d/%y"
	.balign 4

.global lbl_8050D448
lbl_8050D448:
	.asciz "Sun|Sunday|Mon|Monday|Tue|Tuesday|Wed|Wednesday|Thu|Thursday|Fri|Friday|Sat|Saturday"
	.balign 4

.global lbl_8050D4A0
lbl_8050D4A0:
	.asciz "Jan|January|Feb|February|Mar|March|Apr|April|May|May|Jun|June|Jul|July|Aug|August|Sep|September|Oct|October|Nov|November|Dec|December"
	.balign 4


.global lbl_8050D528
lbl_8050D528:
	.asciz "-INF"
	.asciz "-inf"
	.asciz "INF"
	.asciz "inf"
	.asciz "-NAN"
	.asciz "-nan"
	.asciz "NAN"
	.asciz "nan"
	.4byte 0

.global lbl_8050D550
lbl_8050D550:
	.4byte 0
	.4byte 0x7FFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8050D578
lbl_8050D578:
	.asciz "INFINITY"
	.balign 4
	.4byte 0

.global lbl_8050D588
lbl_8050D588:
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0106
	.2byte 0x0104
	.2byte 0x0104
	.2byte 0x0104
	.2byte 0x0104
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0004
	.2byte 0x0142
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x0458
	.2byte 0x0458
	.2byte 0x0458
	.2byte 0x0458
	.2byte 0x0458
	.2byte 0x0458
	.2byte 0x0458
	.2byte 0x0458
	.2byte 0x0458
	.2byte 0x0458
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x0651
	.2byte 0x0651
	.2byte 0x0651
	.2byte 0x0651
	.2byte 0x0651
	.2byte 0x0651
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x0251
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x0471
	.2byte 0x0471
	.2byte 0x0471
	.2byte 0x0471
	.2byte 0x0471
	.2byte 0x0471
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x0071
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x00D0
	.2byte 0x0004
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0
	.2byte 0

.global lowercaseTable
lowercaseTable:
	.2byte 0x0000
	.2byte 0x0001
	.2byte 0x0002
	.2byte 0x0003
	.2byte 0x0004
	.2byte 0x0005
	.2byte 0x0006
	.2byte 0x0007
	.2byte 0x0008
	.2byte 0x0009
	.2byte 0x000A
	.2byte 0x000B
	.2byte 0x000C
	.2byte 0x000D
	.2byte 0x000E
	.2byte 0x000F
	.2byte 0x0010
	.2byte 0x0011
	.2byte 0x0012
	.2byte 0x0013
	.2byte 0x0014
	.2byte 0x0015
	.2byte 0x0016
	.2byte 0x0017
	.2byte 0x0018
	.2byte 0x0019
	.2byte 0x001A
	.2byte 0x001B
	.2byte 0x001C
	.2byte 0x001D
	.2byte 0x001E
	.2byte 0x001F
	.2byte 0x0020
	.2byte 0x0021
	.2byte 0x0022
	.2byte 0x0023
	.2byte 0x0024
	.2byte 0x0025
	.2byte 0x0026
	.2byte 0x0027
	.2byte 0x0028
	.2byte 0x0029
	.2byte 0x002A
	.2byte 0x002B
	.2byte 0x002C
	.2byte 0x002D
	.2byte 0x002E
	.2byte 0x002F
	.2byte 0x0030
	.2byte 0x0031
	.2byte 0x0032
	.2byte 0x0033
	.2byte 0x0034
	.2byte 0x0035
	.2byte 0x0036
	.2byte 0x0037
	.2byte 0x0038
	.2byte 0x0039
	.2byte 0x003A
	.2byte 0x003B
	.2byte 0x003C
	.2byte 0x003D
	.2byte 0x003E
	.2byte 0x003F
	.2byte 0x0040
	.2byte 0x0061
	.2byte 0x0062
	.2byte 0x0063
	.2byte 0x0064
	.2byte 0x0065
	.2byte 0x0066
	.2byte 0x0067
	.2byte 0x0068
	.2byte 0x0069
	.2byte 0x006A
	.2byte 0x006B
	.2byte 0x006C
	.2byte 0x006D
	.2byte 0x006E
	.2byte 0x006F
	.2byte 0x0070
	.2byte 0x0071
	.2byte 0x0072
	.2byte 0x0073
	.2byte 0x0074
	.2byte 0x0075
	.2byte 0x0076
	.2byte 0x0077
	.2byte 0x0078
	.2byte 0x0079
	.2byte 0x007A
	.2byte 0x005B
	.2byte 0x005C
	.2byte 0x005D
	.2byte 0x005E
	.2byte 0x005F
	.2byte 0x0060
	.2byte 0x0061
	.2byte 0x0062
	.2byte 0x0063
	.2byte 0x0064
	.2byte 0x0065
	.2byte 0x0066
	.2byte 0x0067
	.2byte 0x0068
	.2byte 0x0069
	.2byte 0x006A
	.2byte 0x006B
	.2byte 0x006C
	.2byte 0x006D
	.2byte 0x006E
	.2byte 0x006F
	.2byte 0x0070
	.2byte 0x0071
	.2byte 0x0072
	.2byte 0x0073
	.2byte 0x0074
	.2byte 0x0075
	.2byte 0x0076
	.2byte 0x0077
	.2byte 0x0078
	.2byte 0x0079
	.2byte 0x007A
	.2byte 0x007B
	.2byte 0x007C
	.2byte 0x007D
	.2byte 0x007E
	.2byte 0x007F
	.2byte 0x0080
	.2byte 0x0081
	.2byte 0x0082
	.2byte 0x0083
	.2byte 0x0084
	.2byte 0x0085
	.2byte 0x0086
	.2byte 0x0087
	.2byte 0x0088
	.2byte 0x0089
	.2byte 0x008A
	.2byte 0x008B
	.2byte 0x008C
	.2byte 0x008D
	.2byte 0x008E
	.2byte 0x008F
	.2byte 0x0090
	.2byte 0x0091
	.2byte 0x0092
	.2byte 0x0093
	.2byte 0x0094
	.2byte 0x0095
	.2byte 0x0096
	.2byte 0x0097
	.2byte 0x0098
	.2byte 0x0099
	.2byte 0x009A
	.2byte 0x009B
	.2byte 0x009C
	.2byte 0x009D
	.2byte 0x009E
	.2byte 0x009F
	.2byte 0x00A0
	.2byte 0x00A1
	.2byte 0x00A2
	.2byte 0x00A3
	.2byte 0x00A4
	.2byte 0x00A5
	.2byte 0x00A6
	.2byte 0x00A7
	.2byte 0x00A8
	.2byte 0x00A9
	.2byte 0x00AA
	.2byte 0x00AB
	.2byte 0x00AC
	.2byte 0x00AD
	.2byte 0x00AE
	.2byte 0x00AF
	.2byte 0x00B0
	.2byte 0x00B1
	.2byte 0x00B2
	.2byte 0x00B3
	.2byte 0x00B4
	.2byte 0x00B5
	.2byte 0x00B6
	.2byte 0x00B7
	.2byte 0x00B8
	.2byte 0x00B9
	.2byte 0x00BA
	.2byte 0x00BB
	.2byte 0x00BC
	.2byte 0x00BD
	.2byte 0x00BE
	.2byte 0x00BF
	.2byte 0x00C0
	.2byte 0x00C1
	.2byte 0x00C2
	.2byte 0x00C3
	.2byte 0x00C4
	.2byte 0x00C5
	.2byte 0x00C6
	.2byte 0x00C7
	.2byte 0x00C8
	.2byte 0x00C9
	.2byte 0x00CA
	.2byte 0x00CB
	.2byte 0x00CC
	.2byte 0x00CD
	.2byte 0x00CE
	.2byte 0x00CF
	.2byte 0x00D0
	.2byte 0x00D1
	.2byte 0x00D2
	.2byte 0x00D3
	.2byte 0x00D4
	.2byte 0x00D5
	.2byte 0x00D6
	.2byte 0x00D7
	.2byte 0x00D8
	.2byte 0x00D9
	.2byte 0x00DA
	.2byte 0x00DB
	.2byte 0x00DC
	.2byte 0x00DD
	.2byte 0x00DE
	.2byte 0x00DF
	.2byte 0x00E0
	.2byte 0x00E1
	.2byte 0x00E2
	.2byte 0x00E3
	.2byte 0x00E4
	.2byte 0x00E5
	.2byte 0x00E6
	.2byte 0x00E7
	.2byte 0x00E8
	.2byte 0x00E9
	.2byte 0x00EA
	.2byte 0x00EB
	.2byte 0x00EC
	.2byte 0x00ED
	.2byte 0x00EE
	.2byte 0x00EF
	.2byte 0x00F0
	.2byte 0x00F1
	.2byte 0x00F2
	.2byte 0x00F3
	.2byte 0x00F4
	.2byte 0x00F5
	.2byte 0x00F6
	.2byte 0x00F7
	.2byte 0x00F8
	.2byte 0x00F9
	.2byte 0x00FA
	.2byte 0x00FB
	.2byte 0x00FC
	.2byte 0x00FD
	.2byte 0x00FE
	.2byte 0x00FF

.global uppercaseTable
uppercaseTable:
	.2byte 0x0000
	.2byte 0x0001
	.2byte 0x0002
	.2byte 0x0003
	.2byte 0x0004
	.2byte 0x0005
	.2byte 0x0006
	.2byte 0x0007
	.2byte 0x0008
	.2byte 0x0009
	.2byte 0x000A
	.2byte 0x000B
	.2byte 0x000C
	.2byte 0x000D
	.2byte 0x000E
	.2byte 0x000F
	.2byte 0x0010
	.2byte 0x0011
	.2byte 0x0012
	.2byte 0x0013
	.2byte 0x0014
	.2byte 0x0015
	.2byte 0x0016
	.2byte 0x0017
	.2byte 0x0018
	.2byte 0x0019
	.2byte 0x001A
	.2byte 0x001B
	.2byte 0x001C
	.2byte 0x001D
	.2byte 0x001E
	.2byte 0x001F
	.2byte 0x0020
	.2byte 0x0021
	.2byte 0x0022
	.2byte 0x0023
	.2byte 0x0024
	.2byte 0x0025
	.2byte 0x0026
	.2byte 0x0027
	.2byte 0x0028
	.2byte 0x0029
	.2byte 0x002A
	.2byte 0x002B
	.2byte 0x002C
	.2byte 0x002D
	.2byte 0x002E
	.2byte 0x002F
	.2byte 0x0030
	.2byte 0x0031
	.2byte 0x0032
	.2byte 0x0033
	.2byte 0x0034
	.2byte 0x0035
	.2byte 0x0036
	.2byte 0x0037
	.2byte 0x0038
	.2byte 0x0039
	.2byte 0x003A
	.2byte 0x003B
	.2byte 0x003C
	.2byte 0x003D
	.2byte 0x003E
	.2byte 0x003F
	.2byte 0x0040
	.2byte 0x0041
	.2byte 0x0042
	.2byte 0x0043
	.2byte 0x0044
	.2byte 0x0045
	.2byte 0x0046
	.2byte 0x0047
	.2byte 0x0048
	.2byte 0x0049
	.2byte 0x004A
	.2byte 0x004B
	.2byte 0x004C
	.2byte 0x004D
	.2byte 0x004E
	.2byte 0x004F
	.2byte 0x0050
	.2byte 0x0051
	.2byte 0x0052
	.2byte 0x0053
	.2byte 0x0054
	.2byte 0x0055
	.2byte 0x0056
	.2byte 0x0057
	.2byte 0x0058
	.2byte 0x0059
	.2byte 0x005A
	.2byte 0x005B
	.2byte 0x005C
	.2byte 0x005D
	.2byte 0x005E
	.2byte 0x005F
	.2byte 0x0060
	.2byte 0x0041
	.2byte 0x0042
	.2byte 0x0043
	.2byte 0x0044
	.2byte 0x0045
	.2byte 0x0046
	.2byte 0x0047
	.2byte 0x0048
	.2byte 0x0049
	.2byte 0x004A
	.2byte 0x004B
	.2byte 0x004C
	.2byte 0x004D
	.2byte 0x004E
	.2byte 0x004F
	.2byte 0x0050
	.2byte 0x0051
	.2byte 0x0052
	.2byte 0x0053
	.2byte 0x0054
	.2byte 0x0055
	.2byte 0x0056
	.2byte 0x0057
	.2byte 0x0058
	.2byte 0x0059
	.2byte 0x005A
	.2byte 0x007B
	.2byte 0x007C
	.2byte 0x007D
	.2byte 0x007E
	.2byte 0x007F
	.2byte 0x0080
	.2byte 0x0081
	.2byte 0x0082
	.2byte 0x0083
	.2byte 0x0084
	.2byte 0x0085
	.2byte 0x0086
	.2byte 0x0087
	.2byte 0x0088
	.2byte 0x0089
	.2byte 0x008A
	.2byte 0x008B
	.2byte 0x008C
	.2byte 0x008D
	.2byte 0x008E
	.2byte 0x008F
	.2byte 0x0090
	.2byte 0x0091
	.2byte 0x0092
	.2byte 0x0093
	.2byte 0x0094
	.2byte 0x0095
	.2byte 0x0096
	.2byte 0x0097
	.2byte 0x0098
	.2byte 0x0099
	.2byte 0x009A
	.2byte 0x009B
	.2byte 0x009C
	.2byte 0x009D
	.2byte 0x009E
	.2byte 0x009F
	.2byte 0x00A0
	.2byte 0x00A1
	.2byte 0x00A2
	.2byte 0x00A3
	.2byte 0x00A4
	.2byte 0x00A5
	.2byte 0x00A6
	.2byte 0x00A7
	.2byte 0x00A8
	.2byte 0x00A9
	.2byte 0x00AA
	.2byte 0x00AB
	.2byte 0x00AC
	.2byte 0x00AD
	.2byte 0x00AE
	.2byte 0x00AF
	.2byte 0x00B0
	.2byte 0x00B1
	.2byte 0x00B2
	.2byte 0x00B3
	.2byte 0x00B4
	.2byte 0x00B5
	.2byte 0x00B6
	.2byte 0x00B7
	.2byte 0x00B8
	.2byte 0x00B9
	.2byte 0x00BA
	.2byte 0x00BB
	.2byte 0x00BC
	.2byte 0x00BD
	.2byte 0x00BE
	.2byte 0x00BF
	.2byte 0x00C0
	.2byte 0x00C1
	.2byte 0x00C2
	.2byte 0x00C3
	.2byte 0x00C4
	.2byte 0x00C5
	.2byte 0x00C6
	.2byte 0x00C7
	.2byte 0x00C8
	.2byte 0x00C9
	.2byte 0x00CA
	.2byte 0x00CB
	.2byte 0x00CC
	.2byte 0x00CD
	.2byte 0x00CE
	.2byte 0x00CF
	.2byte 0x00D0
	.2byte 0x00D1
	.2byte 0x00D2
	.2byte 0x00D3
	.2byte 0x00D4
	.2byte 0x00D5
	.2byte 0x00D6
	.2byte 0x00D7
	.2byte 0x00D8
	.2byte 0x00D9
	.2byte 0x00DA
	.2byte 0x00DB
	.2byte 0x00DC
	.2byte 0x00DD
	.2byte 0x00DE
	.2byte 0x00DF
	.2byte 0x00E0
	.2byte 0x00E1
	.2byte 0x00E2
	.2byte 0x00E3
	.2byte 0x00E4
	.2byte 0x00E5
	.2byte 0x00E6
	.2byte 0x00E7
	.2byte 0x00E8
	.2byte 0x00E9
	.2byte 0x00EA
	.2byte 0x00EB
	.2byte 0x00EC
	.2byte 0x00ED
	.2byte 0x00EE
	.2byte 0x00EF
	.2byte 0x00F0
	.2byte 0x00F1
	.2byte 0x00F2
	.2byte 0x00F3
	.2byte 0x00F4
	.2byte 0x00F5
	.2byte 0x00F6
	.2byte 0x00F7
	.2byte 0x00F8
	.2byte 0x00F9
	.2byte 0x00FA
	.2byte 0x00FB
	.2byte 0x00FC
	.2byte 0x00FD
	.2byte 0x00FE
	.2byte 0x00FF
	
.global lbl_8050DB88
lbl_8050DB88:
	.4byte 0
	.4byte 0