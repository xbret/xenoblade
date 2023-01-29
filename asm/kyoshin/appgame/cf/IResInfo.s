.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn func_80068990, global
/* 80068990 00031F50  38 60 00 00 */	li r3, 0x0
/* 80068994 00031F54  4E 80 00 20 */	blr
.endfn func_80068990

.fn func_80068998, global
/* 80068998 00031F58  38 60 00 01 */	li r3, 0x1
/* 8006899C 00031F5C  4E 80 00 20 */	blr
.endfn func_80068998

.fn func_800689A0, global
/* 800689A0 00031F60  4E 80 00 20 */	blr
.endfn func_800689A0

.fn func_800689A4, global
/* 800689A4 00031F64  38 60 00 00 */	li r3, 0x0
/* 800689A8 00031F68  4E 80 00 20 */	blr
.endfn func_800689A4

.fn func_800689AC, global
/* 800689AC 00031F6C  3C 60 00 01 */	lis r3, 0x1
/* 800689B0 00031F70  38 63 00 04 */	addi r3, r3, 0x4
/* 800689B4 00031F74  4E 80 00 20 */	blr
.endfn func_800689AC

.fn func_800689B8, global
/* 800689B8 00031F78  38 60 00 04 */	li r3, 0x4
/* 800689BC 00031F7C  4E 80 00 20 */	blr
.endfn func_800689B8

.fn func_800689C0, global
/* 800689C0 00031F80  38 60 00 00 */	li r3, 0x0
/* 800689C4 00031F84  4E 80 00 20 */	blr
.endfn func_800689C0

.fn func_800689C8, global
/* 800689C8 00031F88  38 60 00 02 */	li r3, 0x2
/* 800689CC 00031F8C  4E 80 00 20 */	blr
.endfn func_800689C8

.fn func_800689D0, global
/* 800689D0 00031F90  38 60 00 00 */	li r3, 0x0
/* 800689D4 00031F94  4E 80 00 20 */	blr
.endfn func_800689D0

.fn func_800689D8, global
/* 800689D8 00031F98  38 60 00 00 */	li r3, 0x0
/* 800689DC 00031F9C  4E 80 00 20 */	blr
.endfn func_800689D8

.fn func_800689E0, global
/* 800689E0 00031FA0  38 60 02 00 */	li r3, 0x200
/* 800689E4 00031FA4  4E 80 00 20 */	blr
.endfn func_800689E0

.fn func_800689E8, global
/* 800689E8 00031FA8  38 60 02 00 */	li r3, 0x200
/* 800689EC 00031FAC  4E 80 00 20 */	blr
.endfn func_800689E8

.fn func_800689F0, global
/* 800689F0 00031FB0  38 60 02 00 */	li r3, 0x200
/* 800689F4 00031FB4  4E 80 00 20 */	blr
.endfn func_800689F0

.fn func_800689F8, global
/* 800689F8 00031FB8  38 60 00 20 */	li r3, 0x20
/* 800689FC 00031FBC  4E 80 00 20 */	blr
.endfn func_800689F8

.fn func_80068A00, global
/* 80068A00 00031FC0  38 60 02 00 */	li r3, 0x200
/* 80068A04 00031FC4  4E 80 00 20 */	blr
.endfn func_80068A00

.fn func_80068A08, global
/* 80068A08 00031FC8  38 60 02 00 */	li r3, 0x200
/* 80068A0C 00031FCC  4E 80 00 20 */	blr
.endfn func_80068A08

.fn func_80068A10, global
/* 80068A10 00031FD0  38 60 02 00 */	li r3, 0x200
/* 80068A14 00031FD4  4E 80 00 20 */	blr
.endfn func_80068A10

.fn func_80068A18, global
/* 80068A18 00031FD8  38 60 02 00 */	li r3, 0x200
/* 80068A1C 00031FDC  4E 80 00 20 */	blr
.endfn func_80068A18

.section .rodata, "a" # 0x804F5B20 - 0x805281E0

.balign 8

.global reslist_unsigned_short_typestr
reslist_unsigned_short_typestr:
	.4byte 0x7265736C
	.4byte 0x6973743C
	.4byte 0x756E7369
	.4byte 0x676E6564
	.4byte 0x2073686F
	.4byte 0x72743E00

.global _reslist_base_unsigned_short_typestr
_reslist_base_unsigned_short_typestr:
	.4byte 0x5F726573
	.4byte 0x6C697374
	.4byte 0x5F626173
	.4byte 0x653C756E
	.4byte 0x7369676E
	.4byte 0x65642073
	.4byte 0x686F7274
	.4byte 0x3E000000

.global cf_IResInfoEneNpcEvent_typestr
cf_IResInfoEneNpcEvent_typestr:
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x456E654E
	.4byte 0x70634576
	.4byte 0x656E7400

.global cf_IResInfoEneNpc_typestr
cf_IResInfoEneNpc_typestr:
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x456E654E
	.4byte 0x70630000

.global cf_IResInfoPc_typestr
cf_IResInfoPc_typestr:
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x50630000
	.4byte 0x00000000

.global cf_IResInfoObj_typestr
cf_IResInfoObj_typestr:
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x4F626A00

.global cf_IResInfoTBox_typestr
cf_IResInfoTBox_typestr:
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x54426F78
	.4byte 0x00000000

.global cf_IResInfoSe_typestr
cf_IResInfoSe_typestr:
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x53650000

.global cf_IResInfoEffect_typestr
cf_IResInfoEffect_typestr:
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x45666665
	.4byte 0x63740000

.global cf_IResInfoLOD_typestr
cf_IResInfoLOD_typestr:
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x4C4F4400

.global cf_IResInfoID_typestr
cf_IResInfoID_typestr:
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x49440000

.global cf_IResInfoPreloadMap_typestr
cf_IResInfoPreloadMap_typestr:
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x5072656C
	.4byte 0x6F61644D
	.4byte 0x61700000

.global cf_IResInfoMap_typestr
cf_IResInfoMap_typestr:
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x4D617000

.global cf_IResInfo_typestr
cf_IResInfo_typestr:
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x00000000
.global lbl_804F6B90
lbl_804F6B90:
	.4byte 0x4B595000
	.4byte 0x00000000

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.global __vt__reslist_unsigned_short
__vt__reslist_unsigned_short:
	.4byte __RTTI__reslist_unsigned_short
	.4byte 0x00000000
	.4byte func_80067494

.global reslist_unsigned_short_hierarchy
reslist_unsigned_short_hierarchy:
	.4byte __RTTI___reslist_base_unsigned_short
	.4byte 0x00000000
	.4byte 0x00000000

.global __vt___reslist_base_unsigned_short
__vt___reslist_base_unsigned_short:
	.4byte __RTTI___reslist_base_unsigned_short
	.4byte 0x00000000
	.4byte func_800673E0

.global __vt__cf_IResInfoEneNpcEvent
__vt__cf_IResInfoEneNpcEvent:
	.4byte __RTTI__cf_IResInfoEneNpcEvent
	.4byte 0x00000000
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

.global cf_IResInfoEneNpcEvent_hierarchy
cf_IResInfoEneNpcEvent_hierarchy:
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte __RTTI__cf_IResInfoEneNpc
	.4byte 0x00000000
	.4byte 0x00000000

.global __vt__cf_IResInfoEneNpc
__vt__cf_IResInfoEneNpc:
	.4byte __RTTI__cf_IResInfoEneNpc
	.4byte 0x00000000
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

.global cf_IResInfoEneNpc_hierarchy
cf_IResInfoEneNpc_hierarchy:
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.global __vt__cf_IResInfoPc
__vt__cf_IResInfoPc:
	.4byte __RTTI__cf_IResInfoPc
	.4byte 0x00000000
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

.global cf_IResInfoPc_hierarchy
cf_IResInfoPc_hierarchy:
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.global __vt__cf_IResInfoObj
__vt__cf_IResInfoObj:
	.4byte __RTTI__cf_IResInfoObj
	.4byte 0x00000000
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

.global cf_IResInfoObj_hierarchy
cf_IResInfoObj_hierarchy:
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.global __vt__cf_IResInfoTBox
__vt__cf_IResInfoTBox:
	.4byte __RTTI__cf_IResInfoTBox
	.4byte 0x00000000
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

.global cf_IResInfoTBox_hierarchy
cf_IResInfoTBox_hierarchy:
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.global __vt__cf_IResInfoSe
__vt__cf_IResInfoSe:
	.4byte __RTTI__cf_IResInfoSe
	.4byte 0x00000000
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

.global cf_IResInfoSe_hierarchy
cf_IResInfoSe_hierarchy:
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.global __vt__cf_IResInfoEffect
__vt__cf_IResInfoEffect:
	.4byte __RTTI__cf_IResInfoEffect
	.4byte 0x00000000
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

.global cf_IResInfoEffect_hierarchy
cf_IResInfoEffect_hierarchy:
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.global __vt__cf_IResInfoLOD
__vt__cf_IResInfoLOD:
	.4byte __RTTI__cf_IResInfoLOD
	.4byte 0x00000000
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

.global cf_IResInfoLOD_hierarchy
cf_IResInfoLOD_hierarchy:
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.global __vt__cf_IResInfoID
__vt__cf_IResInfoID:
	.4byte __RTTI__cf_IResInfoID
	.4byte 0x00000000
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

.global cf_IResInfoID_hierarchy
cf_IResInfoID_hierarchy:
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.global __vt__cf_IResInfoPreloadMap
__vt__cf_IResInfoPreloadMap:
	.4byte __RTTI__cf_IResInfoPreloadMap
	.4byte 0x00000000
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

.global cf_IResInfoPreloadMap_hierarchy
cf_IResInfoPreloadMap_hierarchy:
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.global __vt__cf_IResInfoMap
__vt__cf_IResInfoMap:
	.4byte __RTTI__cf_IResInfoMap
	.4byte 0x00000000
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

.global cf_IResInfoMap_hierarchy
cf_IResInfoMap_hierarchy:
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.section .sdata, "wa" # 0x80664180 - 0x80666600

.balign 8

.global __RTTI__reslist_unsigned_short
__RTTI__reslist_unsigned_short:
	.4byte reslist_unsigned_short_typestr
	.4byte reslist_unsigned_short_hierarchy

.global __RTTI___reslist_base_unsigned_short
__RTTI___reslist_base_unsigned_short:
	.4byte _reslist_base_unsigned_short_typestr
	.4byte 0x00000000

.global __RTTI__cf_IResInfoEneNpcEvent
__RTTI__cf_IResInfoEneNpcEvent:
	.4byte cf_IResInfoEneNpcEvent_typestr
	.4byte cf_IResInfoEneNpcEvent_hierarchy

.global __RTTI__cf_IResInfoEneNpc
__RTTI__cf_IResInfoEneNpc:
	.4byte cf_IResInfoEneNpc_typestr
	.4byte cf_IResInfoEneNpc_hierarchy

.global __RTTI__cf_IResInfoPc
__RTTI__cf_IResInfoPc:
	.4byte cf_IResInfoPc_typestr
	.4byte cf_IResInfoPc_hierarchy

.global __RTTI__cf_IResInfoObj
__RTTI__cf_IResInfoObj:
	.4byte cf_IResInfoObj_typestr
	.4byte cf_IResInfoObj_hierarchy

.global __RTTI__cf_IResInfoTBox
__RTTI__cf_IResInfoTBox:
	.4byte cf_IResInfoTBox_typestr
	.4byte cf_IResInfoTBox_hierarchy

.global __RTTI__cf_IResInfoSe
__RTTI__cf_IResInfoSe:
	.4byte cf_IResInfoSe_typestr
	.4byte cf_IResInfoSe_hierarchy

.global __RTTI__cf_IResInfoEffect
__RTTI__cf_IResInfoEffect:
	.4byte cf_IResInfoEffect_typestr
	.4byte cf_IResInfoEffect_hierarchy

.global __RTTI__cf_IResInfoLOD
__RTTI__cf_IResInfoLOD:
	.4byte cf_IResInfoLOD_typestr
	.4byte cf_IResInfoLOD_hierarchy

.global __RTTI__cf_IResInfoID
__RTTI__cf_IResInfoID:
	.4byte cf_IResInfoID_typestr
	.4byte cf_IResInfoID_hierarchy

.global __RTTI__cf_IResInfoPreloadMap
__RTTI__cf_IResInfoPreloadMap:
	.4byte cf_IResInfoPreloadMap_typestr
	.4byte cf_IResInfoPreloadMap_hierarchy

.global __RTTI__cf_IResInfoMap
__RTTI__cf_IResInfoMap:
	.4byte cf_IResInfoMap_typestr
	.4byte cf_IResInfoMap_hierarchy

.global __RTTI__cf_IResInfo
__RTTI__cf_IResInfo:
	.4byte cf_IResInfo_typestr
	.4byte 0x00000000

.section .sbss, "wa", @nobits # 0x80666600 - 0x8066836F

.balign 8
.global lbl_80666688
lbl_80666688:
	.skip 0x8

.section .sdata2, "a" # 0x80668380 - 0x8066DCE0

.balign 8
.global lbl_80668A88
lbl_80668A88:
	.4byte 0x00000000
.global lbl_80668A8C
lbl_80668A8C:
	.4byte 0x40400000
.global lbl_80668A90
lbl_80668A90:
	.4byte 0x42F00000
.global lbl_80668A94
lbl_80668A94:
	.4byte 0x3F800000
.global lbl_80668A98
lbl_80668A98:
	.4byte 0x41F00000
