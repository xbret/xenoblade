.include "macros.inc"
.file "kyoshin/appgame/cf/IResInfo.o"

# 0x80068990 - 0x80068A20
.text
.balign 4

.fn fn_80068990, local
/* 80068990 00031F50  38 60 00 00 */	li r3, 0x0
/* 80068994 00031F54  4E 80 00 20 */	blr
.endfn fn_80068990

.fn fn_80068998, local
/* 80068998 00031F58  38 60 00 01 */	li r3, 0x1
/* 8006899C 00031F5C  4E 80 00 20 */	blr
.endfn fn_80068998

.fn fn_800689A0, local
/* 800689A0 00031F60  4E 80 00 20 */	blr
.endfn fn_800689A0

.fn fn_800689A4, local
/* 800689A4 00031F64  38 60 00 00 */	li r3, 0x0
/* 800689A8 00031F68  4E 80 00 20 */	blr
.endfn fn_800689A4

.fn fn_800689AC, local
/* 800689AC 00031F6C  3C 60 00 01 */	lis r3, 0x1
/* 800689B0 00031F70  38 63 00 04 */	addi r3, r3, 0x4
/* 800689B4 00031F74  4E 80 00 20 */	blr
.endfn fn_800689AC

.fn fn_800689B8, local
/* 800689B8 00031F78  38 60 00 04 */	li r3, 0x4
/* 800689BC 00031F7C  4E 80 00 20 */	blr
.endfn fn_800689B8

.fn fn_800689C0, local
/* 800689C0 00031F80  38 60 00 00 */	li r3, 0x0
/* 800689C4 00031F84  4E 80 00 20 */	blr
.endfn fn_800689C0

.fn fn_800689C8, local
/* 800689C8 00031F88  38 60 00 02 */	li r3, 0x2
/* 800689CC 00031F8C  4E 80 00 20 */	blr
.endfn fn_800689C8

.fn fn_800689D0, local
/* 800689D0 00031F90  38 60 00 00 */	li r3, 0x0
/* 800689D4 00031F94  4E 80 00 20 */	blr
.endfn fn_800689D0

.fn fn_800689D8, local
/* 800689D8 00031F98  38 60 00 00 */	li r3, 0x0
/* 800689DC 00031F9C  4E 80 00 20 */	blr
.endfn fn_800689D8

.fn fn_800689E0, local
/* 800689E0 00031FA0  38 60 02 00 */	li r3, 0x200
/* 800689E4 00031FA4  4E 80 00 20 */	blr
.endfn fn_800689E0

.fn fn_800689E8, local
/* 800689E8 00031FA8  38 60 02 00 */	li r3, 0x200
/* 800689EC 00031FAC  4E 80 00 20 */	blr
.endfn fn_800689E8

.fn fn_800689F0, local
/* 800689F0 00031FB0  38 60 02 00 */	li r3, 0x200
/* 800689F4 00031FB4  4E 80 00 20 */	blr
.endfn fn_800689F0

.fn fn_800689F8, local
/* 800689F8 00031FB8  38 60 00 20 */	li r3, 0x20
/* 800689FC 00031FBC  4E 80 00 20 */	blr
.endfn fn_800689F8

.fn fn_80068A00, local
/* 80068A00 00031FC0  38 60 02 00 */	li r3, 0x200
/* 80068A04 00031FC4  4E 80 00 20 */	blr
.endfn fn_80068A00

.fn fn_80068A08, local
/* 80068A08 00031FC8  38 60 02 00 */	li r3, 0x200
/* 80068A0C 00031FCC  4E 80 00 20 */	blr
.endfn fn_80068A08

.fn fn_80068A10, local
/* 80068A10 00031FD0  38 60 02 00 */	li r3, 0x200
/* 80068A14 00031FD4  4E 80 00 20 */	blr
.endfn fn_80068A10

.fn fn_80068A18, local
/* 80068A18 00031FD8  38 60 02 00 */	li r3, 0x200
/* 80068A1C 00031FDC  4E 80 00 20 */	blr
.endfn fn_80068A18

# 0x804F6A78 - 0x804F6B98
.rodata
.balign 8

.obj reslist_unsigned_short_typestr, global
	.4byte 0x7265736C
	.4byte 0x6973743C
	.4byte 0x756E7369
	.4byte 0x676E6564
	.4byte 0x2073686F
	.4byte 0x72743E00

.obj _reslist_base_unsigned_short_typestr, global
	.4byte 0x5F726573
	.4byte 0x6C697374
	.4byte 0x5F626173
	.4byte 0x653C756E
	.4byte 0x7369676E
	.4byte 0x65642073
	.4byte 0x686F7274
	.4byte 0x3E000000

.obj cf_IResInfoEneNpcEvent_typestr, global
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x456E654E
	.4byte 0x70634576
	.4byte 0x656E7400

.obj cf_IResInfoEneNpc_typestr, global
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x456E654E
	.4byte 0x70630000

.obj cf_IResInfoPc_typestr, global
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x50630000
	.4byte 0x00000000

.obj cf_IResInfoObj_typestr, global
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x4F626A00

.obj cf_IResInfoTBox_typestr, global
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x54426F78
	.4byte 0x00000000

.obj cf_IResInfoSe_typestr, global
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x53650000

.obj cf_IResInfoEffect_typestr, global
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x45666665
	.4byte 0x63740000

.obj cf_IResInfoLOD_typestr, global
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x4C4F4400

.obj cf_IResInfoID_typestr, global
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x49440000

.obj cf_IResInfoPreloadMap_typestr, global
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x5072656C
	.4byte 0x6F61644D
	.4byte 0x61700000

.obj cf_IResInfoMap_typestr, global
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x4D617000

.obj cf_IResInfo_typestr, global
	.4byte 0x63663A3A
	.4byte 0x49526573
	.4byte 0x496E666F
	.4byte 0x00000000
.sym lbl_804F6B90, local
	.4byte 0x4B595000
	.4byte 0x00000000

# 0x8052A150 - 0x8052A5A0
.data
.balign 8

.obj __vt__reslist_unsigned_short, global
	.4byte __RTTI__reslist_unsigned_short
	.4byte 0x00000000
	.4byte fn_80067494

.obj reslist_unsigned_short_hierarchy, global
	.4byte __RTTI___reslist_base_unsigned_short
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt___reslist_base_unsigned_short, global
	.4byte __RTTI___reslist_base_unsigned_short
	.4byte 0x00000000
	.4byte fn_800673E0

.obj __vt__cf_IResInfoEneNpcEvent, global
	.4byte __RTTI__cf_IResInfoEneNpcEvent
	.4byte 0x00000000
	.4byte fn_80066374
	.4byte fn_800689AC
	.4byte fn_800689A4
	.4byte fn_800689A0
	.4byte fn_8006638C
	.4byte fn_800663D8
	.4byte fn_80066424
	.4byte fn_8006646C
	.4byte fn_800664B8
	.4byte fn_8006650C
	.4byte fn_80066554
	.4byte fn_800665F4
	.4byte fn_8006660C
	.4byte fn_80065C48
	.4byte fn_80065C5C
	.4byte fn_80065C80
	.4byte fn_80068998
	.4byte fn_80068990
	.4byte fn_800665A0

.obj cf_IResInfoEneNpcEvent_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte __RTTI__cf_IResInfoEneNpc
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_IResInfoEneNpc, global
	.4byte __RTTI__cf_IResInfoEneNpc
	.4byte 0x00000000
	.4byte fn_80066374
	.4byte fn_800689B8
	.4byte fn_800689A4
	.4byte fn_800689A0
	.4byte fn_8006638C
	.4byte fn_800663D8
	.4byte fn_80066424
	.4byte fn_8006646C
	.4byte fn_800664B8
	.4byte fn_8006650C
	.4byte fn_80066554
	.4byte fn_800665F4
	.4byte fn_8006660C
	.4byte fn_80065C48
	.4byte fn_80065C5C
	.4byte fn_80065C80
	.4byte fn_80068998
	.4byte fn_80068990
	.4byte fn_800665A0

.obj cf_IResInfoEneNpc_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_IResInfoPc, global
	.4byte __RTTI__cf_IResInfoPc
	.4byte 0x00000000
	.4byte fn_80065FB4
	.4byte fn_800689C8
	.4byte fn_800689A4
	.4byte fn_800689A0
	.4byte fn_80064388
	.4byte fn_800643A8
	.4byte fn_80066184
	.4byte fn_800643E8
	.4byte fn_8006611C
	.4byte fn_80066160
	.4byte fn_800689C0
	.4byte fn_8006626C
	.4byte fn_80066290
	.4byte fn_80065C48
	.4byte fn_80065C5C
	.4byte fn_80065C80
	.4byte fn_80068998
	.4byte fn_800661A8

.obj cf_IResInfoPc_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_IResInfoObj, global
	.4byte __RTTI__cf_IResInfoObj
	.4byte 0x00000000
	.4byte fn_80065F1C
	.4byte fn_800689E0
	.4byte fn_800689A4
	.4byte fn_800689A0
	.4byte fn_80064388
	.4byte fn_800643A8
	.4byte fn_800689D8
	.4byte fn_800643E8
	.4byte fn_800643C8
	.4byte fn_800689D0
	.4byte fn_800689C0
	.4byte fn_80065F20
	.4byte fn_80065F24
	.4byte fn_80065C48
	.4byte fn_80065C5C
	.4byte fn_80065C80
	.4byte fn_80068998
	.4byte fn_80068990

.obj cf_IResInfoObj_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_IResInfoTBox, global
	.4byte __RTTI__cf_IResInfoTBox
	.4byte 0x00000000
	.4byte fn_80065F18
	.4byte fn_800689E8
	.4byte fn_800689A4
	.4byte fn_800689A0
	.4byte fn_80064388
	.4byte fn_800643A8
	.4byte fn_800689D8
	.4byte fn_800643E8
	.4byte fn_800643C8
	.4byte fn_800689D0
	.4byte fn_800689C0
	.4byte fn_80063C2C
	.4byte fn_80063C78
	.4byte fn_80065C48
	.4byte fn_80065C5C
	.4byte fn_80065C80
	.4byte fn_80068998
	.4byte fn_80068990

.obj cf_IResInfoTBox_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_IResInfoSe, global
	.4byte __RTTI__cf_IResInfoSe
	.4byte 0x00000000
	.4byte fn_80065E08
	.4byte fn_800689F0
	.4byte fn_800689A4
	.4byte fn_800689A0
	.4byte fn_80064388
	.4byte fn_800643A8
	.4byte fn_800689D8
	.4byte fn_800643E8
	.4byte fn_800643C8
	.4byte fn_800689D0
	.4byte fn_800689C0
	.4byte fn_80065E2C
	.4byte fn_80065E54
	.4byte fn_80065C48
	.4byte fn_80065C5C
	.4byte fn_80065C80
	.4byte fn_80068998
	.4byte fn_80068990

.obj cf_IResInfoSe_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_IResInfoEffect, global
	.4byte __RTTI__cf_IResInfoEffect
	.4byte 0x00000000
	.4byte fn_80065D88
	.4byte fn_800689F8
	.4byte fn_800689A4
	.4byte fn_800689A0
	.4byte fn_80064388
	.4byte fn_800643A8
	.4byte fn_800689D8
	.4byte fn_800643E8
	.4byte fn_800643C8
	.4byte fn_80065E00
	.4byte fn_800689C0
	.4byte fn_80065D8C
	.4byte fn_80065D90
	.4byte fn_80065C48
	.4byte fn_80065C5C
	.4byte fn_80065C80
	.4byte fn_80068998
	.4byte fn_80068990

.obj cf_IResInfoEffect_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_IResInfoLOD, global
	.4byte __RTTI__cf_IResInfoLOD
	.4byte 0x00000000
	.4byte fn_80065D84
	.4byte fn_80068A00
	.4byte fn_800689A4
	.4byte fn_800689A0
	.4byte fn_80064388
	.4byte fn_800643A8
	.4byte fn_800689D8
	.4byte fn_800643E8
	.4byte fn_800643C8
	.4byte fn_800689D0
	.4byte fn_800689C0
	.4byte fn_80063C2C
	.4byte fn_80063C78
	.4byte fn_80065C48
	.4byte fn_80065C5C
	.4byte fn_80065C80
	.4byte fn_80068998
	.4byte fn_80068990

.obj cf_IResInfoLOD_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_IResInfoID, global
	.4byte __RTTI__cf_IResInfoID
	.4byte 0x00000000
	.4byte fn_80065D80
	.4byte fn_80068A08
	.4byte fn_800689A4
	.4byte fn_800689A0
	.4byte fn_80064388
	.4byte fn_800643A8
	.4byte fn_800689D8
	.4byte fn_800643E8
	.4byte fn_800643C8
	.4byte fn_800689D0
	.4byte fn_800689C0
	.4byte fn_80063C2C
	.4byte fn_80063C78
	.4byte fn_80065C48
	.4byte fn_80065C5C
	.4byte fn_80065C80
	.4byte fn_80068998
	.4byte fn_80068990

.obj cf_IResInfoID_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_IResInfoPreloadMap, global
	.4byte __RTTI__cf_IResInfoPreloadMap
	.4byte 0x00000000
	.4byte fn_80065D74
	.4byte fn_80068A10
	.4byte fn_800689A4
	.4byte fn_800689A0
	.4byte fn_80064388
	.4byte fn_800643A8
	.4byte fn_800689D8
	.4byte fn_800643E8
	.4byte fn_800643C8
	.4byte fn_800689D0
	.4byte fn_800689C0
	.4byte fn_80065D78
	.4byte fn_80065D7C
	.4byte fn_80065C48
	.4byte fn_80065C5C
	.4byte fn_80065C80
	.4byte fn_80068998
	.4byte fn_80068990

.obj cf_IResInfoPreloadMap_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_IResInfoMap, global
	.4byte __RTTI__cf_IResInfoMap
	.4byte 0x00000000
	.4byte fn_80065D08
	.4byte fn_80068A18
	.4byte fn_800689A4
	.4byte fn_800689A0
	.4byte fn_80064388
	.4byte fn_800643A8
	.4byte fn_800689D8
	.4byte fn_800643E8
	.4byte fn_800643C8
	.4byte fn_800689D0
	.4byte fn_800689C0
	.4byte fn_80063C2C
	.4byte fn_80063C78
	.4byte fn_80065C48
	.4byte fn_80065D0C
	.4byte fn_80065C80
	.4byte fn_80065D64
	.4byte fn_80068990

.obj cf_IResInfoMap_hierarchy, global
	.4byte __RTTI__cf_IResInfo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

# 0x80664348 - 0x806643B8
.section .sdata, "wa"
.balign 8

.obj __RTTI__reslist_unsigned_short, global
	.4byte reslist_unsigned_short_typestr
	.4byte reslist_unsigned_short_hierarchy

.obj __RTTI___reslist_base_unsigned_short, global
	.4byte _reslist_base_unsigned_short_typestr
	.4byte 0x00000000

.obj __RTTI__cf_IResInfoEneNpcEvent, global
	.4byte cf_IResInfoEneNpcEvent_typestr
	.4byte cf_IResInfoEneNpcEvent_hierarchy

.obj __RTTI__cf_IResInfoEneNpc, global
	.4byte cf_IResInfoEneNpc_typestr
	.4byte cf_IResInfoEneNpc_hierarchy

.obj __RTTI__cf_IResInfoPc, global
	.4byte cf_IResInfoPc_typestr
	.4byte cf_IResInfoPc_hierarchy

.obj __RTTI__cf_IResInfoObj, global
	.4byte cf_IResInfoObj_typestr
	.4byte cf_IResInfoObj_hierarchy

.obj __RTTI__cf_IResInfoTBox, global
	.4byte cf_IResInfoTBox_typestr
	.4byte cf_IResInfoTBox_hierarchy

.obj __RTTI__cf_IResInfoSe, global
	.4byte cf_IResInfoSe_typestr
	.4byte cf_IResInfoSe_hierarchy

.obj __RTTI__cf_IResInfoEffect, global
	.4byte cf_IResInfoEffect_typestr
	.4byte cf_IResInfoEffect_hierarchy

.obj __RTTI__cf_IResInfoLOD, global
	.4byte cf_IResInfoLOD_typestr
	.4byte cf_IResInfoLOD_hierarchy

.obj __RTTI__cf_IResInfoID, global
	.4byte cf_IResInfoID_typestr
	.4byte cf_IResInfoID_hierarchy

.obj __RTTI__cf_IResInfoPreloadMap, global
	.4byte cf_IResInfoPreloadMap_typestr
	.4byte cf_IResInfoPreloadMap_hierarchy

.obj __RTTI__cf_IResInfoMap, global
	.4byte cf_IResInfoMap_typestr
	.4byte cf_IResInfoMap_hierarchy

.obj __RTTI__cf_IResInfo, global
	.4byte cf_IResInfo_typestr
	.4byte 0x00000000

# 0x80666688 - 0x80666690
.section .sbss, "wa", @nobits
.balign 8
.sym lbl_80666688, local
	.skip 0x8

# 0x80668A88 - 0x80668A9C
.section .sdata2, "a"
.balign 8
.sym lbl_80668A88, local
	.4byte 0x00000000
.sym lbl_80668A8C, local
	.4byte 0x40400000
.sym lbl_80668A90, local
	.4byte 0x42F00000
.sym lbl_80668A94, local
	.4byte 0x3F800000
.sym lbl_80668A98, local
	.4byte 0x41F00000
