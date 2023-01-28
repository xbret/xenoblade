.include "macros.inc"
.file "kyoshin/appgame/help/CHelp.o"

# 0x8001BD48 - 0x8001BD58
.section extab, "a"
.balign 4

.obj "@etb_8001BD48", local
.hidden "@etb_8001BD48"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001BD48"

.obj "@etb_8001BD50", local
.hidden "@etb_8001BD50"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BD50"

# 0x800338B4 - 0x800338CC
.section extabindex, "a"
.balign 4

.obj "@eti_800338B4", local
.hidden "@eti_800338B4"
	.4byte fn_802B7BEC
	.4byte 0x00000078
	.4byte "@etb_8001BD48"
.endobj "@eti_800338B4"

.obj "@eti_800338C0", local
.hidden "@eti_800338C0"
	.4byte fn_802B7C68
	.4byte 0x00000048
	.4byte "@etb_8001BD50"
.endobj "@eti_800338C0"

# 0x802B7BD4 - 0x802B7D00
.text
.balign 4

.fn fn_802B7BD4, global
/* 802B7BD4 00281194  3C C0 80 54 */	lis r6, __vt__cf_CHelp@ha
/* 802B7BD8 00281198  90 83 00 00 */	stw r4, 0x0(r3)
/* 802B7BDC 0028119C  38 C6 EA B8 */	addi r6, r6, __vt__cf_CHelp@l
/* 802B7BE0 002811A0  90 C3 00 08 */	stw r6, 0x8(r3)
/* 802B7BE4 002811A4  90 A3 00 04 */	stw r5, 0x4(r3)
/* 802B7BE8 002811A8  4E 80 00 20 */	blr
.endfn fn_802B7BD4

.fn fn_802B7BEC, global
/* 802B7BEC 002811AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7BF0 002811B0  7C 08 02 A6 */	mflr r0
/* 802B7BF4 002811B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7BF8 002811B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B7BFC 002811BC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802B7C00 002811C0  7C 7E 1B 78 */	mr r30, r3
/* 802B7C04 002811C4  81 83 00 08 */	lwz r12, 0x8(r3)
/* 802B7C08 002811C8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B7C0C 002811CC  7D 89 03 A6 */	mtctr r12
/* 802B7C10 002811D0  4E 80 04 21 */	bctrl
/* 802B7C14 002811D4  81 9E 00 08 */	lwz r12, 0x8(r30)
/* 802B7C18 002811D8  7C 7F 1B 78 */	mr r31, r3
/* 802B7C1C 002811DC  7F C3 F3 78 */	mr r3, r30
/* 802B7C20 002811E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802B7C24 002811E4  7D 89 03 A6 */	mtctr r12
/* 802B7C28 002811E8  4E 80 04 21 */	bctrl
/* 802B7C2C 002811EC  80 1E 00 04 */	lwz r0, 0x4(r30)
/* 802B7C30 002811F0  7C 64 1B 78 */	mr r4, r3
/* 802B7C34 002811F4  7F E5 FB 78 */	mr r5, r31
/* 802B7C38 002811F8  54 03 06 3E */	clrlwi r3, r0, 24
/* 802B7C3C 002811FC  4B E7 D0 DD */	bl fn_80134D18
/* 802B7C40 00281200  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 802B7C44 00281204  38 80 00 01 */	li r4, 0x1
/* 802B7C48 00281208  4B DE 53 D1 */	bl fn_8009D018
/* 802B7C4C 0028120C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7C50 00281210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B7C54 00281214  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802B7C58 00281218  7C 08 03 A6 */	mtlr r0
/* 802B7C5C 0028121C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7C60 00281220  4E 80 00 20 */	blr
.endfn fn_802B7BEC

.fn fn_802B7C64, global
/* 802B7C64 00281224  4B FE 29 F4 */	b fn_8029A658
.endfn fn_802B7C64

.fn fn_802B7C68, global
/* 802B7C68 00281228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7C6C 0028122C  7C 08 02 A6 */	mflr r0
/* 802B7C70 00281230  38 A0 00 00 */	li r5, 0x0
/* 802B7C74 00281234  38 C0 00 00 */	li r6, 0x0
/* 802B7C78 00281238  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7C7C 0028123C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B7C80 00281240  7C 7F 1B 78 */	mr r31, r3
/* 802B7C84 00281244  38 60 00 03 */	li r3, 0x3
/* 802B7C88 00281248  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 802B7C8C 0028124C  4B E8 5E E1 */	bl fn_8013DB6C
/* 802B7C90 00281250  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 802B7C94 00281254  38 80 00 01 */	li r4, 0x1
/* 802B7C98 00281258  4B DE 53 81 */	bl fn_8009D018
/* 802B7C9C 0028125C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7CA0 00281260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B7CA4 00281264  7C 08 03 A6 */	mtlr r0
/* 802B7CA8 00281268  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7CAC 0028126C  4E 80 00 20 */	blr
.endfn fn_802B7C68

.fn fn_802B7CB0, global
/* 802B7CB0 00281270  38 00 00 01 */	li r0, 0x1
/* 802B7CB4 00281274  98 03 00 0C */	stb r0, 0xc(r3)
/* 802B7CB8 00281278  4E 80 00 20 */	blr
.endfn fn_802B7CB0

.fn fn_802B7CBC, global
/* 802B7CBC 0028127C  88 A3 00 0C */	lbz r5, 0xc(r3)
/* 802B7CC0 00281280  38 00 00 00 */	li r0, 0x0
/* 802B7CC4 00281284  2C 05 00 00 */	cmpwi r5, 0x0
/* 802B7CC8 00281288  98 83 00 0C */	stb r4, 0xc(r3)
/* 802B7CCC 0028128C  40 82 00 10 */	bne .L_802B7CDC
/* 802B7CD0 00281290  2C 04 00 00 */	cmpwi r4, 0x0
/* 802B7CD4 00281294  41 82 00 08 */	beq .L_802B7CDC
/* 802B7CD8 00281298  38 00 00 01 */	li r0, 0x1
.L_802B7CDC:
/* 802B7CDC 0028129C  7C 03 03 78 */	mr r3, r0
/* 802B7CE0 002812A0  4E 80 00 20 */	blr
.endfn fn_802B7CBC

.fn fn_802B7CE4, global
/* 802B7CE4 002812A4  88 03 00 0C */	lbz r0, 0xc(r3)
/* 802B7CE8 002812A8  7C A0 20 50 */	subf r5, r0, r4
/* 802B7CEC 002812AC  7C 04 00 50 */	subf r0, r4, r0
/* 802B7CF0 002812B0  98 83 00 0C */	stb r4, 0xc(r3)
/* 802B7CF4 002812B4  7C A0 03 78 */	or r0, r5, r0
/* 802B7CF8 002812B8  54 03 0F FE */	srwi r3, r0, 31
/* 802B7CFC 002812BC  4E 80 00 20 */	blr
.endfn fn_802B7CE4

# 0x8050CBA0 - 0x8050CD98
.rodata
.balign 8

.obj cf_CHelp_ToAttack_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F546F
	.4byte 0x41747461
	.4byte 0x636B0000
	.4byte 0x00000000

.obj cf_CHelp_ArtsAttack_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F4172
	.4byte 0x74734174
	.4byte 0x7461636B
	.4byte 0x00000000

.obj cf_CHelp_ArtsSet_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F4172
	.4byte 0x74735365
	.4byte 0x74000000
	.4byte 0x00000000

.obj cf_CHelp_CkKizuna_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F436B
	.4byte 0x4B697A75
	.4byte 0x6E610000
	.4byte 0x00000000

.obj cf_CHelp_CloseItemMenu_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F436C
	.4byte 0x6F736549
	.4byte 0x74656D4D
	.4byte 0x656E7500

.obj cf_CHelp_CloseSysMenu_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F436C
	.4byte 0x6F736553
	.4byte 0x79734D65
	.4byte 0x6E750000

.obj cf_CHelp_EnemyCount_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F456E
	.4byte 0x656D7943
	.4byte 0x6F756E74
	.4byte 0x00000000

.obj cf_CHelp_EnemyEnable_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F456E
	.4byte 0x656D7945
	.4byte 0x6E61626C
	.4byte 0x65000000

.obj cf_CHelp_Exchange_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F4578
	.4byte 0x6368616E
	.4byte 0x67650000
	.4byte 0x00000000

.obj cf_CHelp_GameOver_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F4761
	.4byte 0x6D654F76
	.4byte 0x65720000
	.4byte 0x00000000

.obj cf_CHelp_ItemCole_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F4974
	.4byte 0x656D436F
	.4byte 0x6C650000
	.4byte 0x00000000

.obj cf_CHelp_LandMark_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F4C61
	.4byte 0x6E644D61
	.4byte 0x726B0000
	.4byte 0x00000000

.obj cf_CHelp_LearnArts_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F4C65
	.4byte 0x61726E41
	.4byte 0x72747300
.sym lbl_8050CCD4, global
	.4byte 0x77706E5F
	.4byte 0x74797065
	.4byte 0x00000000

.obj cf_CHelp_ClosePartyMenu_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F436C
	.4byte 0x6F736550
	.4byte 0x61727479
	.4byte 0x4D656E75
	.4byte 0x00000000
	.4byte 0x00000000

.obj cf_CHelp_OpenPartyMenu_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F4F70
	.4byte 0x656E5061
	.4byte 0x7274794D
	.4byte 0x656E7500

.obj cf_CHelp_Pg_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F5067
	.4byte 0x00000000

.obj cf_CHelp_CloseQuestMenu_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F436C
	.4byte 0x6F736551
	.4byte 0x75657374
	.4byte 0x4D656E75
	.4byte 0x00000000
	.4byte 0x00000000

.obj cf_CHelp_ShopSel_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F5368
	.4byte 0x6F705365
	.4byte 0x6C000000

.obj cf_CHelp_ShopBuy_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F5368
	.4byte 0x6F704275
	.4byte 0x79000000

.obj cf_CHelp_Sp_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F5370
	.4byte 0x00000000

.obj cf_CHelp_Target_typestr, global
	.4byte 0x63663A3A
	.4byte 0x4348656C
	.4byte 0x705F5461
	.4byte 0x72676574
	.4byte 0x00000000
	.4byte 0x00000000

# 0x8053EA90 - 0x8053EF00
.data
.balign 8

.obj __vt__cf_CHelp_ToAttack, global
	.4byte __RTTI__cf_CHelp_ToAttack
	.4byte 0x00000000
	.4byte fn_80296898
	.4byte fn_802B7BEC
	.4byte fn_802B7A90
	.4byte fn_80295D90
	.4byte fn_80295D80

.obj cf_CHelp_ToAttack_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte fn_80295D88
	.4byte fn_802B7BEC
	.4byte 0x00000000
	.4byte fn_80295D90
	.4byte fn_80295D80
	.4byte 0x00000000

.obj __vt__cf_CHelp_ArtsAttack, global
	.4byte __RTTI__cf_CHelp_ArtsAttack
	.4byte 0x00000000
	.4byte fn_802B7CB0
	.4byte fn_802B7BEC
	.4byte fn_802B7D00
	.4byte fn_80295D90
	.4byte fn_80295D80
	.4byte fn_802B7CBC
	.4byte fn_802B7CE4

.obj cf_CHelp_ArtsAttack_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte __RTTI__cf_CHelpSwitch
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_ArtsSet, global
	.4byte __RTTI__cf_CHelp_ArtsSet
	.4byte 0x00000000
	.4byte fn_80295D88
	.4byte fn_802B7BEC
	.4byte fn_802B7D9C
	.4byte fn_80295D90
	.4byte fn_80295D80

.obj cf_CHelp_ArtsSet_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_CkKizuna, global
	.4byte __RTTI__cf_CHelp_CkKizuna
	.4byte 0x00000000
	.4byte fn_802B7CB0
	.4byte fn_802B7BEC
	.4byte fn_802B7DEC
	.4byte fn_80295D90
	.4byte fn_80295D80
	.4byte fn_802B7CBC
	.4byte fn_802B7CE4

.obj cf_CHelp_CkKizuna_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte __RTTI__cf_CHelpSwitch
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_CloseItemMenu, global
	.4byte __RTTI__cf_CHelp_CloseItemMenu
	.4byte 0x00000000
	.4byte fn_802B7CB0
	.4byte fn_802B7BEC
	.4byte fn_802B7E34
	.4byte fn_80295D90
	.4byte fn_80295D80
	.4byte fn_802B7CBC
	.4byte fn_802B7CE4

.obj cf_CHelp_CloseItemMenu_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte __RTTI__cf_CHelpSwitch
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_CloseSysMenu, global
	.4byte __RTTI__cf_CHelp_CloseSysMenu
	.4byte 0x00000000
	.4byte fn_802B7CB0
	.4byte fn_802B7BEC
	.4byte fn_802B7E7C
	.4byte fn_80295D90
	.4byte fn_80295D80
	.4byte fn_802B7CBC
	.4byte fn_802B7CE4

.obj cf_CHelp_CloseSysMenu_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte __RTTI__cf_CHelpSwitch
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_EndEvent, global
	.4byte __RTTI__cf_CHelp_EndEvent
	.4byte 0x00000000
	.4byte fn_802B7CB0
	.4byte fn_802B7BEC
	.4byte fn_802B7EC4
	.4byte fn_80295D90
	.4byte fn_80295D80
	.4byte fn_802B7CBC
	.4byte fn_802B7CE4
	.4byte 0x00000000

.obj __vt__cf_CHelp_EnemyCount, global
	.4byte __RTTI__cf_CHelp_EnemyCount
	.4byte 0x00000000
	.4byte fn_802B7F54
	.4byte fn_802B7BEC
	.4byte fn_802B7F60
	.4byte fn_80295D90
	.4byte fn_80295D80

.obj cf_CHelp_EnemyCount_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_EnemyEnable, global
	.4byte __RTTI__cf_CHelp_EnemyEnable
	.4byte 0x00000000
	.4byte fn_80295D88
	.4byte fn_802B7BEC
	.4byte fn_802B8028
	.4byte fn_80295D90
	.4byte fn_80295D80

.obj cf_CHelp_EnemyEnable_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_EtherMake, global
	.4byte __RTTI__cf_CHelp_EtherMake
	.4byte 0x00000000
	.4byte fn_80295D88
	.4byte fn_802B7BEC
	.4byte fn_802B80A4
	.4byte fn_802B80EC
	.4byte fn_80295D80
	.4byte 0x00000000

.obj __vt__cf_CHelp_Exchange, global
	.4byte __RTTI__cf_CHelp_Exchange
	.4byte 0x00000000
	.4byte fn_80295D88
	.4byte fn_802B7BEC
	.4byte fn_802B80F0
	.4byte fn_80295D90
	.4byte fn_80295D80

.obj cf_CHelp_Exchange_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_GameOver, global
	.4byte __RTTI__cf_CHelp_GameOver
	.4byte 0x00000000
	.4byte fn_80295D88
	.4byte fn_802B7BEC
	.4byte fn_802B80F4
	.4byte fn_80295D90
	.4byte fn_80295D80

.obj cf_CHelp_GameOver_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_ItemCole, global
	.4byte __RTTI__cf_CHelp_ItemCole
	.4byte 0x00000000
	.4byte fn_80295D88
	.4byte fn_802B7BEC
	.4byte fn_802B8180
	.4byte fn_80295D90
	.4byte fn_80295D80

.obj cf_CHelp_ItemCole_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_Kizuna, global
	.4byte __RTTI__cf_CHelp_Kizuna
	.4byte 0x00000000
	.4byte fn_80295D88
	.4byte fn_802B7BEC
	.4byte fn_802B818C
	.4byte fn_80295D90
	.4byte fn_80295D80
	.4byte 0x00000000

.obj __vt__cf_CHelp_LandMark, global
	.4byte __RTTI__cf_CHelp_LandMark
	.4byte 0x00000000
	.4byte fn_802B8280
	.4byte fn_802B7BEC
	.4byte fn_802B8328
	.4byte fn_80295D90
	.4byte fn_80295D80
	.4byte __RTTI__cf_CHelp_LandMark
	.4byte 0xFFFFFFF4
	.4byte fn_802B8390
	.4byte fn_802B8388
	.4byte fn_802B8208
	.4byte fn_802B8290

.obj cf_CHelp_LandMark_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_LearnArts, global
	.4byte __RTTI__cf_CHelp_LearnArts
	.4byte 0x00000000
	.4byte fn_802B84E0
	.4byte fn_802B7BEC
	.4byte fn_802B8398
	.4byte fn_80295D90
	.4byte fn_80295D80

.obj cf_CHelp_LearnArts_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_ClosePartyMenu, global
	.4byte __RTTI__cf_CHelp_ClosePartyMenu
	.4byte 0x00000000
	.4byte fn_802B7CB0
	.4byte fn_802B7BEC
	.4byte fn_802B8534
	.4byte fn_80295D90
	.4byte fn_80295D80
	.4byte fn_802B7CBC
	.4byte fn_802B7CE4

.obj cf_CHelp_ClosePartyMenu_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte __RTTI__cf_CHelpSwitch
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_OpenPartyMenu, global
	.4byte __RTTI__cf_CHelp_OpenPartyMenu
	.4byte 0x00000000
	.4byte fn_80295D88
	.4byte fn_802B7BEC
	.4byte fn_802B84EC
	.4byte fn_80295D90
	.4byte fn_802B859C

.obj cf_CHelp_OpenPartyMenu_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_Pg, global
	.4byte __RTTI__cf_CHelp_Pg
	.4byte 0x00000000
	.4byte fn_80295D88
	.4byte fn_802B7BEC
	.4byte fn_802B85A4
	.4byte fn_80295D90
	.4byte fn_80295D80

.obj cf_CHelp_Pg_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_CloseQuestMenu, global
	.4byte __RTTI__cf_CHelp_CloseQuestMenu
	.4byte 0x00000000
	.4byte fn_802B7CB0
	.4byte fn_802B7BEC
	.4byte fn_802B8604
	.4byte fn_80295D90
	.4byte fn_80295D80
	.4byte fn_802B7CBC
	.4byte fn_802B7CE4

.obj cf_CHelp_CloseQuestMenu_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte __RTTI__cf_CHelpSwitch
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_ShopSel, global
	.4byte __RTTI__cf_CHelp_ShopSel
	.4byte 0x00000000
	.4byte fn_80295D88
	.4byte fn_802B7BEC
	.4byte fn_802B8650
	.4byte fn_80295D90
	.4byte fn_80295D80

.obj cf_CHelp_ShopSel_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_ShopBuy, global
	.4byte __RTTI__cf_CHelp_ShopBuy
	.4byte 0x00000000
	.4byte fn_80295D88
	.4byte fn_802B7BEC
	.4byte fn_802B864C
	.4byte fn_80295D90
	.4byte fn_80295D80

.obj cf_CHelp_ShopBuy_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_Sp, global
	.4byte __RTTI__cf_CHelp_Sp
	.4byte 0x00000000
	.4byte fn_80295D88
	.4byte fn_802B7BEC
	.4byte fn_802B8654
	.4byte fn_80295D90
	.4byte fn_80295D80

.obj cf_CHelp_Sp_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__cf_CHelp_Talk, global
	.4byte __RTTI__cf_CHelp_Talk
	.4byte 0x00000000
	.4byte fn_802B86BC
	.4byte fn_802B7BEC
	.4byte fn_802B86F0
	.4byte fn_80295D90
	.4byte fn_80295D80
	.4byte fn_802B7CBC
	.4byte fn_802B7CE4
	.4byte 0x00000000

.obj __vt__cf_CHelp_Target, global
	.4byte __RTTI__cf_CHelp_Target
	.4byte 0x00000000
	.4byte fn_80295D88
	.4byte fn_802B7BEC
	.4byte fn_802B88C8
	.4byte fn_80295D90
	.4byte fn_80295D80

.obj cf_CHelp_Target_hierarchy, global
	.4byte __RTTI__cf_CHelp
	.4byte 0x00000000
	.4byte 0x00000000

# 0x806657A0 - 0x80665848
.section .sdata, "wa"
.balign 8

.obj __RTTI__cf_CHelp_ToAttack, global
	.4byte cf_CHelp_ToAttack_typestr
	.4byte cf_CHelp_ToAttack_hierarchy

.obj __RTTI__cf_CHelp_ArtsAttack, global
	.4byte cf_CHelp_ArtsAttack_typestr
	.4byte cf_CHelp_ArtsAttack_hierarchy

.obj __RTTI__cf_CHelp_ArtsSet, global
	.4byte cf_CHelp_ArtsSet_typestr
	.4byte cf_CHelp_ArtsSet_hierarchy

.obj __RTTI__cf_CHelp_CkKizuna, global
	.4byte cf_CHelp_CkKizuna_typestr
	.4byte cf_CHelp_CkKizuna_hierarchy

.obj __RTTI__cf_CHelp_CloseItemMenu, global
	.4byte cf_CHelp_CloseItemMenu_typestr
	.4byte cf_CHelp_CloseItemMenu_hierarchy

.obj __RTTI__cf_CHelp_CloseSysMenu, global
	.4byte cf_CHelp_CloseSysMenu_typestr
	.4byte cf_CHelp_CloseSysMenu_hierarchy

.obj __RTTI__cf_CHelp_EnemyCount, global
	.4byte cf_CHelp_EnemyCount_typestr
	.4byte cf_CHelp_EnemyCount_hierarchy

.obj __RTTI__cf_CHelp_EnemyEnable, global
	.4byte cf_CHelp_EnemyEnable_typestr
	.4byte cf_CHelp_EnemyEnable_hierarchy

.obj __RTTI__cf_CHelp_Exchange, global
	.4byte cf_CHelp_Exchange_typestr
	.4byte cf_CHelp_Exchange_hierarchy

.obj __RTTI__cf_CHelp_GameOver, global
	.4byte cf_CHelp_GameOver_typestr
	.4byte cf_CHelp_GameOver_hierarchy

.obj __RTTI__cf_CHelp_ItemCole, global
	.4byte cf_CHelp_ItemCole_typestr
	.4byte cf_CHelp_ItemCole_hierarchy

.obj __RTTI__cf_CHelp_LandMark, global
	.4byte cf_CHelp_LandMark_typestr
	.4byte cf_CHelp_LandMark_hierarchy

.obj __RTTI__cf_CHelp_LearnArts, global
	.4byte cf_CHelp_LearnArts_typestr
	.4byte cf_CHelp_LearnArts_hierarchy

.obj __RTTI__cf_CHelp_ClosePartyMenu, global
	.4byte cf_CHelp_ClosePartyMenu_typestr
	.4byte cf_CHelp_ClosePartyMenu_hierarchy

.obj __RTTI__cf_CHelp_OpenPartyMenu, global
	.4byte cf_CHelp_OpenPartyMenu_typestr
	.4byte cf_CHelp_OpenPartyMenu_hierarchy

.obj __RTTI__cf_CHelp_Pg, global
	.4byte cf_CHelp_Pg_typestr
	.4byte cf_CHelp_Pg_hierarchy

.obj __RTTI__cf_CHelp_CloseQuestMenu, global
	.4byte cf_CHelp_CloseQuestMenu_typestr
	.4byte cf_CHelp_CloseQuestMenu_hierarchy

.obj __RTTI__cf_CHelp_ShopSel, global
	.4byte cf_CHelp_ShopSel_typestr
	.4byte cf_CHelp_ShopSel_hierarchy

.obj __RTTI__cf_CHelp_ShopBuy, global
	.4byte cf_CHelp_ShopBuy_typestr
	.4byte cf_CHelp_ShopBuy_hierarchy

.obj __RTTI__cf_CHelp_Sp, global
	.4byte cf_CHelp_Sp_typestr
	.4byte cf_CHelp_Sp_hierarchy

.obj __RTTI__cf_CHelp_Target, global
	.4byte cf_CHelp_Target_typestr
	.4byte cf_CHelp_Target_hierarchy
