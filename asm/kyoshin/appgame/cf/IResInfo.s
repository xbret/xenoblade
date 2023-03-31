.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900





#IResInfo
.fn func_80068990, global
/* 80068990 00031F50  38 60 00 00 */	li r3, 0
/* 80068994 00031F54  4E 80 00 20 */	blr 
.endfn func_80068990

#IResInfo
.fn func_80068998, global
/* 80068998 00031F58  38 60 00 01 */	li r3, 1
/* 8006899C 00031F5C  4E 80 00 20 */	blr 
.endfn func_80068998

#IResInfo
.fn func_800689A0, global
/* 800689A0 00031F60  4E 80 00 20 */	blr 
.endfn func_800689A0

#IResInfo
.fn func_800689A4, global
/* 800689A4 00031F64  38 60 00 00 */	li r3, 0
/* 800689A8 00031F68  4E 80 00 20 */	blr 
.endfn func_800689A4

#IResInfoEneNpcEvent
.fn func_800689AC, global
/* 800689AC 00031F6C  3C 60 00 01 */	lis r3, 0x00010004@ha
/* 800689B0 00031F70  38 63 00 04 */	addi r3, r3, 0x00010004@l
/* 800689B4 00031F74  4E 80 00 20 */	blr 
.endfn func_800689AC

#IResInfoEneNpc
.fn func_800689B8, global
/* 800689B8 00031F78  38 60 00 04 */	li r3, 4
/* 800689BC 00031F7C  4E 80 00 20 */	blr 
.endfn func_800689B8

#IResInfo
.fn func_800689C0, global
/* 800689C0 00031F80  38 60 00 00 */	li r3, 0
/* 800689C4 00031F84  4E 80 00 20 */	blr 
.endfn func_800689C0

#IResInfoPc
.fn func_800689C8, global
/* 800689C8 00031F88  38 60 00 02 */	li r3, 2
/* 800689CC 00031F8C  4E 80 00 20 */	blr 
.endfn func_800689C8

#IResInfo
.fn func_800689D0, global
/* 800689D0 00031F90  38 60 00 00 */	li r3, 0
/* 800689D4 00031F94  4E 80 00 20 */	blr 
.endfn func_800689D0

#IResInfo
.fn func_800689D8, global
/* 800689D8 00031F98  38 60 00 00 */	li r3, 0
/* 800689DC 00031F9C  4E 80 00 20 */	blr 
.endfn func_800689D8

#IResInfoObj
.fn func_800689E0, global
/* 800689E0 00031FA0  38 60 02 00 */	li r3, 0x200
/* 800689E4 00031FA4  4E 80 00 20 */	blr 
.endfn func_800689E0

#IResInfoTBox
.fn func_800689E8, global
/* 800689E8 00031FA8  38 60 02 00 */	li r3, 0x200
/* 800689EC 00031FAC  4E 80 00 20 */	blr 
.endfn func_800689E8

#IResInfoSe
.fn func_800689F0, global
/* 800689F0 00031FB0  38 60 02 00 */	li r3, 0x200
/* 800689F4 00031FB4  4E 80 00 20 */	blr 
.endfn func_800689F0

#IResInfoEffect
.fn func_800689F8, global
/* 800689F8 00031FB8  38 60 00 20 */	li r3, 0x20
/* 800689FC 00031FBC  4E 80 00 20 */	blr 
.endfn func_800689F8

#IResInfoLOD
.fn func_80068A00, global
/* 80068A00 00031FC0  38 60 02 00 */	li r3, 0x200
/* 80068A04 00031FC4  4E 80 00 20 */	blr 
.endfn func_80068A00

#IResInfoID
.fn func_80068A08, global
/* 80068A08 00031FC8  38 60 02 00 */	li r3, 0x200
/* 80068A0C 00031FCC  4E 80 00 20 */	blr 
.endfn func_80068A08

#IResInfoPreloadMap
.fn func_80068A10, global
/* 80068A10 00031FD0  38 60 02 00 */	li r3, 0x200
/* 80068A14 00031FD4  4E 80 00 20 */	blr 
.endfn func_80068A10

#IResInfoMap
.fn func_80068A18, global
/* 80068A18 00031FD8  38 60 02 00 */	li r3, 0x200
/* 80068A1C 00031FDC  4E 80 00 20 */	blr 
.endfn func_80068A18



.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__reslist_unsigned_short, global
	.4byte __RTTI__reslist_unsigned_short
	.4byte 0
	.4byte __dt__reslist_unsigned_short
.endobj __vt__reslist_unsigned_short

.obj reslist_unsigned_short_hierarchy, global
	.4byte __RTTI___reslist_base_unsigned_short
	.4byte 0
	.4byte 0
.endobj reslist_unsigned_short_hierarchy


.obj __vt___reslist_base_unsigned_short, global
	.4byte __RTTI___reslist_base_unsigned_short
	.4byte 0
	.4byte __dt___reslist_base_unsigned_short
.endobj __vt___reslist_base_unsigned_short


.obj __vt__cf_IResInfoEneNpcEvent, global
	.4byte __RTTI__cf_IResInfoEneNpcEvent
	.4byte 0
	.4byte func_80066374
	.4byte func_800689AC
	.4byte func_800689A4
	.4byte func_800689A0
	.4byte func_8006638C
	.4byte func_800663D8
	.4byte func_80066424
	.4byte func_8006646C
	.4byte func_800664B8
	.4byte func_8006650C
	.4byte func_80066554
	.4byte func_800665F4
	.4byte func_8006660C
	.4byte func_80065C48
	.4byte func_80065C5C
	.4byte func_80065C80
	.4byte func_80068998
	.4byte func_80068990
	.4byte func_800665A0
.endobj __vt__cf_IResInfoEneNpcEvent

.obj cf_IResInfoEneNpcEvent_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0
	.4byte __RTTI__cf_IResInfoEneNpc
	.4byte 0
	.4byte 0
.endobj cf_IResInfoEneNpcEvent_hierarchy


.obj __vt__cf_IResInfoEneNpc, global
	.4byte __RTTI__cf_IResInfoEneNpc
	.4byte 0
	.4byte func_80066374
	.4byte func_800689B8
	.4byte func_800689A4
	.4byte func_800689A0
	.4byte func_8006638C
	.4byte func_800663D8
	.4byte func_80066424
	.4byte func_8006646C
	.4byte func_800664B8
	.4byte func_8006650C
	.4byte func_80066554
	.4byte func_800665F4
	.4byte func_8006660C
	.4byte func_80065C48
	.4byte func_80065C5C
	.4byte func_80065C80
	.4byte func_80068998
	.4byte func_80068990
	.4byte func_800665A0
.endobj __vt__cf_IResInfoEneNpc

.obj cf_IResInfoEneNpc_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_IResInfoEneNpc_hierarchy


.obj __vt__cf_IResInfoPc, global
	.4byte __RTTI__cf_IResInfoPc
	.4byte 0
	.4byte func_80065FB4
	.4byte func_800689C8
	.4byte func_800689A4
	.4byte func_800689A0
	.4byte func_80064388
	.4byte func_800643A8
	.4byte func_80066184
	.4byte func_800643E8
	.4byte func_8006611C
	.4byte func_80066160
	.4byte func_800689C0
	.4byte func_8006626C
	.4byte func_80066290
	.4byte func_80065C48
	.4byte func_80065C5C
	.4byte func_80065C80
	.4byte func_80068998
	.4byte func_800661A8
.endobj __vt__cf_IResInfoPc

.obj cf_IResInfoPc_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_IResInfoPc_hierarchy


.obj __vt__cf_IResInfoObj, global
	.4byte __RTTI__cf_IResInfoObj
	.4byte 0
	.4byte func_80065F1C
	.4byte func_800689E0
	.4byte func_800689A4
	.4byte func_800689A0
	.4byte func_80064388
	.4byte func_800643A8
	.4byte func_800689D8
	.4byte func_800643E8
	.4byte func_800643C8
	.4byte func_800689D0
	.4byte func_800689C0
	.4byte func_80065F20
	.4byte func_80065F24
	.4byte func_80065C48
	.4byte func_80065C5C
	.4byte func_80065C80
	.4byte func_80068998
	.4byte func_80068990
.endobj __vt__cf_IResInfoObj

.obj cf_IResInfoObj_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_IResInfoObj_hierarchy


.obj __vt__cf_IResInfoTBox, global
	.4byte __RTTI__cf_IResInfoTBox
	.4byte 0
	.4byte func_80065F18
	.4byte func_800689E8
	.4byte func_800689A4
	.4byte func_800689A0
	.4byte func_80064388
	.4byte func_800643A8
	.4byte func_800689D8
	.4byte func_800643E8
	.4byte func_800643C8
	.4byte func_800689D0
	.4byte func_800689C0
	.4byte func_80063C2C
	.4byte func_80063C78
	.4byte func_80065C48
	.4byte func_80065C5C
	.4byte func_80065C80
	.4byte func_80068998
	.4byte func_80068990
.endobj __vt__cf_IResInfoTBox

.obj cf_IResInfoTBox_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_IResInfoTBox_hierarchy


.obj __vt__cf_IResInfoSe, global
	.4byte __RTTI__cf_IResInfoSe
	.4byte 0
	.4byte func_80065E08
	.4byte func_800689F0
	.4byte func_800689A4
	.4byte func_800689A0
	.4byte func_80064388
	.4byte func_800643A8
	.4byte func_800689D8
	.4byte func_800643E8
	.4byte func_800643C8
	.4byte func_800689D0
	.4byte func_800689C0
	.4byte func_80065E2C
	.4byte func_80065E54
	.4byte func_80065C48
	.4byte func_80065C5C
	.4byte func_80065C80
	.4byte func_80068998
	.4byte func_80068990
.endobj __vt__cf_IResInfoSe

.obj cf_IResInfoSe_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_IResInfoSe_hierarchy


.obj __vt__cf_IResInfoEffect, global
	.4byte __RTTI__cf_IResInfoEffect
	.4byte 0
	.4byte func_80065D88
	.4byte func_800689F8
	.4byte func_800689A4
	.4byte func_800689A0
	.4byte func_80064388
	.4byte func_800643A8
	.4byte func_800689D8
	.4byte func_800643E8
	.4byte func_800643C8
	.4byte func_80065E00
	.4byte func_800689C0
	.4byte func_80065D8C
	.4byte func_80065D90
	.4byte func_80065C48
	.4byte func_80065C5C
	.4byte func_80065C80
	.4byte func_80068998
	.4byte func_80068990
.endobj __vt__cf_IResInfoEffect

.obj cf_IResInfoEffect_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_IResInfoEffect_hierarchy


.obj __vt__cf_IResInfoLOD, global
	.4byte __RTTI__cf_IResInfoLOD
	.4byte 0
	.4byte func_80065D84
	.4byte func_80068A00
	.4byte func_800689A4
	.4byte func_800689A0
	.4byte func_80064388
	.4byte func_800643A8
	.4byte func_800689D8
	.4byte func_800643E8
	.4byte func_800643C8
	.4byte func_800689D0
	.4byte func_800689C0
	.4byte func_80063C2C
	.4byte func_80063C78
	.4byte func_80065C48
	.4byte func_80065C5C
	.4byte func_80065C80
	.4byte func_80068998
	.4byte func_80068990
.endobj __vt__cf_IResInfoLOD

.obj cf_IResInfoLOD_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_IResInfoLOD_hierarchy


.obj __vt__cf_IResInfoID, global
	.4byte __RTTI__cf_IResInfoID
	.4byte 0
	.4byte func_80065D80
	.4byte func_80068A08
	.4byte func_800689A4
	.4byte func_800689A0
	.4byte func_80064388
	.4byte func_800643A8
	.4byte func_800689D8
	.4byte func_800643E8
	.4byte func_800643C8
	.4byte func_800689D0
	.4byte func_800689C0
	.4byte func_80063C2C
	.4byte func_80063C78
	.4byte func_80065C48
	.4byte func_80065C5C
	.4byte func_80065C80
	.4byte func_80068998
	.4byte func_80068990
.endobj __vt__cf_IResInfoID

.obj cf_IResInfoID_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_IResInfoID_hierarchy


.obj __vt__cf_IResInfoPreloadMap, global
	.4byte __RTTI__cf_IResInfoPreloadMap
	.4byte 0
	.4byte func_80065D74
	.4byte func_80068A10
	.4byte func_800689A4
	.4byte func_800689A0
	.4byte func_80064388
	.4byte func_800643A8
	.4byte func_800689D8
	.4byte func_800643E8
	.4byte func_800643C8
	.4byte func_800689D0
	.4byte func_800689C0
	.4byte func_80065D78
	.4byte func_80065D7C
	.4byte func_80065C48
	.4byte func_80065C5C
	.4byte func_80065C80
	.4byte func_80068998
	.4byte func_80068990
.endobj __vt__cf_IResInfoPreloadMap

.obj cf_IResInfoPreloadMap_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_IResInfoPreloadMap_hierarchy


.obj __vt__cf_IResInfoMap, global
	.4byte __RTTI__cf_IResInfoMap
	.4byte 0
	.4byte func_80065D08
	.4byte func_80068A18
	.4byte func_800689A4
	.4byte func_800689A0
	.4byte func_80064388
	.4byte func_800643A8
	.4byte func_800689D8
	.4byte func_800643E8
	.4byte func_800643C8
	.4byte func_800689D0
	.4byte func_800689C0
	.4byte func_80063C2C
	.4byte func_80063C78
	.4byte func_80065C48
	.4byte func_80065D0C
	.4byte func_80065C80
	.4byte func_80065D64
	.4byte func_80068990
.endobj __vt__cf_IResInfoMap

.obj cf_IResInfoMap_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_IResInfoMap_hierarchy


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj reslist_unsigned_short_typestr, global
	.asciz "reslist<unsigned short>"
.endobj reslist_unsigned_short_typestr

.obj _reslist_base_unsigned_short_typestr, global
	.asciz "_reslist_base<unsigned short>"
	.balign 4
.endobj _reslist_base_unsigned_short_typestr

.obj cf_IResInfoEneNpcEvent_typestr, global
	.asciz "cf::IResInfoEneNpcEvent"
.endobj cf_IResInfoEneNpcEvent_typestr

.obj cf_IResInfoEneNpc_typestr, global
	.asciz "cf::IResInfoEneNpc"
	.balign 4
.endobj cf_IResInfoEneNpc_typestr

.obj cf_IResInfoPc_typestr, global
	.asciz "cf::IResInfoPc"
	.balign 4
	.4byte 0
.endobj cf_IResInfoPc_typestr

.obj cf_IResInfoObj_typestr, global
	.asciz "cf::IResInfoObj"
.endobj cf_IResInfoObj_typestr

.obj cf_IResInfoTBox_typestr, global
	.asciz "cf::IResInfoTBox"
	.balign 4
.endobj cf_IResInfoTBox_typestr

.obj cf_IResInfoSe_typestr, global
	.asciz "cf::IResInfoSe"
	.balign 4
.endobj cf_IResInfoSe_typestr

.obj cf_IResInfoEffect_typestr, global
	.asciz "cf::IResInfoEffect"
	.balign 4
.endobj cf_IResInfoEffect_typestr

.obj cf_IResInfoLOD_typestr, global
	.asciz "cf::IResInfoLOD"
.endobj cf_IResInfoLOD_typestr

.obj cf_IResInfoID_typestr, global
	.asciz "cf::IResInfoID"
	.balign 4
.endobj cf_IResInfoID_typestr

.obj cf_IResInfoPreloadMap_typestr, global
	.asciz "cf::IResInfoPreloadMap"
	.balign 4
.endobj cf_IResInfoPreloadMap_typestr

.obj cf_IResInfoMap_typestr, global
	.asciz "cf::IResInfoMap"
.endobj cf_IResInfoMap_typestr

.obj cf_IResInfo_typestr, global
	.asciz "cf::IResInfo"
	.balign 4
.endobj cf_IResInfo_typestr


.obj lbl_804F6B90, global
	.asciz "KYP"
	.4byte 0
.endobj lbl_804F6B90

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__reslist_unsigned_short, global
	.4byte reslist_unsigned_short_typestr
	.4byte reslist_unsigned_short_hierarchy
.endobj __RTTI__reslist_unsigned_short

.obj __RTTI___reslist_base_unsigned_short, global
	.4byte _reslist_base_unsigned_short_typestr
	.4byte 0
.endobj __RTTI___reslist_base_unsigned_short

.obj __RTTI__cf_IResInfoEneNpcEvent, global
	.4byte cf_IResInfoEneNpcEvent_typestr
	.4byte cf_IResInfoEneNpcEvent_hierarchy
.endobj __RTTI__cf_IResInfoEneNpcEvent

.obj __RTTI__cf_IResInfoEneNpc, global
	.4byte cf_IResInfoEneNpc_typestr
	.4byte cf_IResInfoEneNpc_hierarchy
.endobj __RTTI__cf_IResInfoEneNpc

.obj __RTTI__cf_IResInfoPc, global
	.4byte cf_IResInfoPc_typestr
	.4byte cf_IResInfoPc_hierarchy
.endobj __RTTI__cf_IResInfoPc

.obj __RTTI__cf_IResInfoObj, global
	.4byte cf_IResInfoObj_typestr
	.4byte cf_IResInfoObj_hierarchy
.endobj __RTTI__cf_IResInfoObj

.obj __RTTI__cf_IResInfoTBox, global
	.4byte cf_IResInfoTBox_typestr
	.4byte cf_IResInfoTBox_hierarchy
.endobj __RTTI__cf_IResInfoTBox

.obj __RTTI__cf_IResInfoSe, global
	.4byte cf_IResInfoSe_typestr
	.4byte cf_IResInfoSe_hierarchy
.endobj __RTTI__cf_IResInfoSe

.obj __RTTI__cf_IResInfoEffect, global
	.4byte cf_IResInfoEffect_typestr
	.4byte cf_IResInfoEffect_hierarchy
.endobj __RTTI__cf_IResInfoEffect

.obj __RTTI__cf_IResInfoLOD, global
	.4byte cf_IResInfoLOD_typestr
	.4byte cf_IResInfoLOD_hierarchy
.endobj __RTTI__cf_IResInfoLOD

.obj __RTTI__cf_IResInfoID, global
	.4byte cf_IResInfoID_typestr
	.4byte cf_IResInfoID_hierarchy
.endobj __RTTI__cf_IResInfoID

.obj __RTTI__cf_IResInfoPreloadMap, global
	.4byte cf_IResInfoPreloadMap_typestr
	.4byte cf_IResInfoPreloadMap_hierarchy
.endobj __RTTI__cf_IResInfoPreloadMap

.obj __RTTI__cf_IResInfoMap, global
	.4byte cf_IResInfoMap_typestr
	.4byte cf_IResInfoMap_hierarchy
.endobj __RTTI__cf_IResInfoMap

.obj __RTTI__cf_IResInfo, global
	.4byte cf_IResInfo_typestr
	.4byte 0
.endobj __RTTI__cf_IResInfo

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_80668A88, global
	.float 0
.endobj float_80668A88


.obj float_80668A8C, global
	.float 3
.endobj float_80668A8C


.obj float_80668A90, global
	.float 120
.endobj float_80668A90


.obj float_80668A94, global
	.float 1.0
.endobj float_80668A94

.obj float_80668A98, global
	.float 30
.endobj float_80668A98

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80666688, global
	.skip 0x8
.endobj lbl_80666688
