.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__Q22cf5CHelpFv, global
/* 802B7BD4 00281194  3C C0 80 54 */	lis r6, __vt__Q22cf5CHelp@ha
/* 802B7BD8 00281198  90 83 00 00 */	stw r4, 0(r3)
/* 802B7BDC 0028119C  38 C6 EA B8 */	addi r6, r6, __vt__Q22cf5CHelp@l
/* 802B7BE0 002811A0  90 C3 00 08 */	stw r6, 8(r3)
/* 802B7BE4 002811A4  90 A3 00 04 */	stw r5, 4(r3)
/* 802B7BE8 002811A8  4E 80 00 20 */	blr 
.endfn __ct__Q22cf5CHelpFv

.fn func_802B7BEC__Q22cf5CHelpFv, global
/* 802B7BEC 002811AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7BF0 002811B0  7C 08 02 A6 */	mflr r0
/* 802B7BF4 002811B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7BF8 002811B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B7BFC 002811BC  93 C1 00 08 */	stw r30, 8(r1)
/* 802B7C00 002811C0  7C 7E 1B 78 */	mr r30, r3
/* 802B7C04 002811C4  81 83 00 08 */	lwz r12, 8(r3)
/* 802B7C08 002811C8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802B7C0C 002811CC  7D 89 03 A6 */	mtctr r12
/* 802B7C10 002811D0  4E 80 04 21 */	bctrl 
/* 802B7C14 002811D4  81 9E 00 08 */	lwz r12, 8(r30)
/* 802B7C18 002811D8  7C 7F 1B 78 */	mr r31, r3
/* 802B7C1C 002811DC  7F C3 F3 78 */	mr r3, r30
/* 802B7C20 002811E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802B7C24 002811E4  7D 89 03 A6 */	mtctr r12
/* 802B7C28 002811E8  4E 80 04 21 */	bctrl 
/* 802B7C2C 002811EC  80 1E 00 04 */	lwz r0, 4(r30)
/* 802B7C30 002811F0  7C 64 1B 78 */	mr r4, r3
/* 802B7C34 002811F4  7F E5 FB 78 */	mr r5, r31
/* 802B7C38 002811F8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 802B7C3C 002811FC  4B E7 D0 DD */	bl func_80134D18
/* 802B7C40 00281200  80 7E 00 00 */	lwz r3, 0(r30)
/* 802B7C44 00281204  38 80 00 01 */	li r4, 1
/* 802B7C48 00281208  4B DE 53 D1 */	bl func_8009D018
/* 802B7C4C 0028120C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7C50 00281210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B7C54 00281214  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B7C58 00281218  7C 08 03 A6 */	mtlr r0
/* 802B7C5C 0028121C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7C60 00281220  4E 80 00 20 */	blr 
.endfn func_802B7BEC__Q22cf5CHelpFv

.fn func_802B7C64, global
/* 802B7C64 00281224  4B FE 29 F4 */	b func_8029A658
.endfn func_802B7C64

.fn func_802B7C68, global
/* 802B7C68 00281228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7C6C 0028122C  7C 08 02 A6 */	mflr r0
/* 802B7C70 00281230  38 A0 00 00 */	li r5, 0
/* 802B7C74 00281234  38 C0 00 00 */	li r6, 0
/* 802B7C78 00281238  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7C7C 0028123C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B7C80 00281240  7C 7F 1B 78 */	mr r31, r3
/* 802B7C84 00281244  38 60 00 03 */	li r3, 3
/* 802B7C88 00281248  80 9F 00 04 */	lwz r4, 4(r31)
/* 802B7C8C 0028124C  4B E8 5E E1 */	bl func_8013DB6C
/* 802B7C90 00281250  80 7F 00 00 */	lwz r3, 0(r31)
/* 802B7C94 00281254  38 80 00 01 */	li r4, 1
/* 802B7C98 00281258  4B DE 53 81 */	bl func_8009D018
/* 802B7C9C 0028125C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7CA0 00281260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B7CA4 00281264  7C 08 03 A6 */	mtlr r0
/* 802B7CA8 00281268  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7CAC 0028126C  4E 80 00 20 */	blr 
.endfn func_802B7C68

.fn func_802B7CB0__Q22cf11CHelpSwitchFv, global
/* 802B7CB0 00281270  38 00 00 01 */	li r0, 1
/* 802B7CB4 00281274  98 03 00 0C */	stb r0, 0xc(r3)
/* 802B7CB8 00281278  4E 80 00 20 */	blr 
.endfn func_802B7CB0__Q22cf11CHelpSwitchFv

.fn func_802B7CBC__Q22cf11CHelpSwitchFv, global
/* 802B7CBC 0028127C  88 A3 00 0C */	lbz r5, 0xc(r3)
/* 802B7CC0 00281280  38 00 00 00 */	li r0, 0
/* 802B7CC4 00281284  2C 05 00 00 */	cmpwi r5, 0
/* 802B7CC8 00281288  98 83 00 0C */	stb r4, 0xc(r3)
/* 802B7CCC 0028128C  40 82 00 10 */	bne .L_802B7CDC
/* 802B7CD0 00281290  2C 04 00 00 */	cmpwi r4, 0
/* 802B7CD4 00281294  41 82 00 08 */	beq .L_802B7CDC
/* 802B7CD8 00281298  38 00 00 01 */	li r0, 1
.L_802B7CDC:
/* 802B7CDC 0028129C  7C 03 03 78 */	mr r3, r0
/* 802B7CE0 002812A0  4E 80 00 20 */	blr 
.endfn func_802B7CBC__Q22cf11CHelpSwitchFv

.fn func_802B7CE4__Q22cf11CHelpSwitchFv, global
/* 802B7CE4 002812A4  88 03 00 0C */	lbz r0, 0xc(r3)
/* 802B7CE8 002812A8  7C A0 20 50 */	subf r5, r0, r4
/* 802B7CEC 002812AC  7C 04 00 50 */	subf r0, r4, r0
/* 802B7CF0 002812B0  98 83 00 0C */	stb r4, 0xc(r3)
/* 802B7CF4 002812B4  7C A0 03 78 */	or r0, r5, r0
/* 802B7CF8 002812B8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 802B7CFC 002812BC  4E 80 00 20 */	blr 
.endfn func_802B7CE4__Q22cf11CHelpSwitchFv

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj cf_CHelp_ToAttack_typestr, global
	.asciz "cf::CHelp_ToAttack"
	.balign 4
	.4byte 0
.endobj cf_CHelp_ToAttack_typestr

.obj cf_CHelp_ArtsAttack_typestr, global
	.asciz "cf::CHelp_ArtsAttack"
	.balign 4
.endobj cf_CHelp_ArtsAttack_typestr

.obj cf_CHelp_ArtsSet_typestr, global
	.asciz "cf::CHelp_ArtsSet"
	.balign 4
	.4byte 0
.endobj cf_CHelp_ArtsSet_typestr

.obj cf_CHelp_CkKizuna_typestr, global
	.asciz "cf::CHelp_CkKizuna"
	.balign 4
	.4byte 0
.endobj cf_CHelp_CkKizuna_typestr

.obj cf_CHelp_CloseItemMenu_typestr, global
	.asciz "cf::CHelp_CloseItemMenu"
.endobj cf_CHelp_CloseItemMenu_typestr

.obj cf_CHelp_CloseSysMenu_typestr, global
	.asciz "cf::CHelp_CloseSysMenu"
	.balign 4
.endobj cf_CHelp_CloseSysMenu_typestr

.obj cf_CHelp_EnemyCount_typestr, global
	.asciz "cf::CHelp_EnemyCount"
	.balign 4
.endobj cf_CHelp_EnemyCount_typestr

.obj cf_CHelp_EnemyEnable_typestr, global
	.asciz "cf::CHelp_EnemyEnable"
	.balign 4
.endobj cf_CHelp_EnemyEnable_typestr

.obj cf_CHelp_Exchange_typestr, global
	.asciz "cf::CHelp_Exchange"
	.balign 4
	.4byte 0
.endobj cf_CHelp_Exchange_typestr

.obj cf_CHelp_GameOver_typestr, global
	.asciz "cf::CHelp_GameOver"
	.balign 4
	.4byte 0
.endobj cf_CHelp_GameOver_typestr

.obj cf_CHelp_ItemCole_typestr, global
	.asciz "cf::CHelp_ItemCole"
	.balign 4
	.4byte 0
.endobj cf_CHelp_ItemCole_typestr

.obj cf_CHelp_LandMark_typestr, global
	.asciz "cf::CHelp_LandMark"
	.balign 4
	.4byte 0
.endobj cf_CHelp_LandMark_typestr

.obj cf_CHelp_LearnArts_typestr, global
	.asciz "cf::CHelp_LearnArts"
.endobj cf_CHelp_LearnArts_typestr

.obj lbl_8050CCD4, global
	.asciz "wpn_type"
	.balign 4
.endobj lbl_8050CCD4

.obj cf_CHelp_ClosePartyMenu_typestr, global
	.asciz "cf::CHelp_ClosePartyMenu"
	.balign 4
	.4byte 0
.endobj cf_CHelp_ClosePartyMenu_typestr

.obj cf_CHelp_OpenPartyMenu_typestr, global
	.asciz "cf::CHelp_OpenPartyMenu"
.endobj cf_CHelp_OpenPartyMenu_typestr

.obj cf_CHelp_Pg_typestr, global
	.asciz "cf::CHelp_Pg"
	.balign 4
.endobj cf_CHelp_Pg_typestr

.obj cf_CHelp_CloseQuestMenu_typestr, global
	.asciz "cf::CHelp_CloseQuestMenu"
	.balign 4
	.4byte 0
.endobj cf_CHelp_CloseQuestMenu_typestr

.obj cf_CHelp_ShopSel_typestr, global
	.asciz "cf::CHelp_ShopSel"
	.balign 4
.endobj cf_CHelp_ShopSel_typestr

.obj cf_CHelp_ShopBuy_typestr, global
	.asciz "cf::CHelp_ShopBuy"
	.balign 4
.endobj cf_CHelp_ShopBuy_typestr

.obj cf_CHelp_Sp_typestr, global
	.asciz "cf::CHelp_Sp"
	.balign 4
.endobj cf_CHelp_Sp_typestr

.obj cf_CHelp_Target_typestr, global
	.asciz "cf::CHelp_Target"
	.balign 4
	.4byte 0
.endobj cf_CHelp_Target_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__Q22cf14CHelp_ToAttack, global
	.4byte __RTTI__Q22cf14CHelp_ToAttack
	.4byte 0
	.4byte func_80296898__Q22cf14CHelp_ToAttackFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B7A90__Q22cf14CHelp_ToAttackFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
.endobj __vt__Q22cf14CHelp_ToAttack

.obj cf_CHelp_ToAttack_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_ToAttack_hierarchy


.obj __vt__Q22cf5CHelp, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte func_80295D88__Q22cf5CHelpFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte 0
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
	.4byte 0
.endobj __vt__Q22cf5CHelp

.obj __vt__Q22cf16CHelp_ArtsAttack, global
	.4byte __RTTI__Q22cf16CHelp_ArtsAttack
	.4byte 0
	.4byte func_802B7CB0__Q22cf11CHelpSwitchFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B7D00__Q22cf16CHelp_ArtsAttackFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
	.4byte func_802B7CBC__Q22cf11CHelpSwitchFv
	.4byte func_802B7CE4__Q22cf11CHelpSwitchFv
.endobj __vt__Q22cf16CHelp_ArtsAttack

.obj cf_CHelp_ArtsAttack_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte __RTTI__Q22cf11CHelpSwitch
	.4byte 0
	.4byte 0
.endobj cf_CHelp_ArtsAttack_hierarchy


.obj __vt__Q22cf13CHelp_ArtsSet, global
	.4byte __RTTI__Q22cf13CHelp_ArtsSet
	.4byte 0
	.4byte func_80295D88__Q22cf5CHelpFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B7D9C__Q22cf13CHelp_ArtsSetFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
.endobj __vt__Q22cf13CHelp_ArtsSet

.obj cf_CHelp_ArtsSet_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_ArtsSet_hierarchy


.obj __vt__Q22cf14CHelp_CkKizuna, global
	.4byte __RTTI__Q22cf14CHelp_CkKizuna
	.4byte 0
	.4byte func_802B7CB0__Q22cf11CHelpSwitchFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B7DEC__Q22cf14CHelp_CkKizunaFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
	.4byte func_802B7CBC__Q22cf11CHelpSwitchFv
	.4byte func_802B7CE4__Q22cf11CHelpSwitchFv
.endobj __vt__Q22cf14CHelp_CkKizuna

.obj cf_CHelp_CkKizuna_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte __RTTI__Q22cf11CHelpSwitch
	.4byte 0
	.4byte 0
.endobj cf_CHelp_CkKizuna_hierarchy


.obj __vt__Q22cf19CHelp_CloseItemMenu, global
	.4byte __RTTI__Q22cf19CHelp_CloseItemMenu
	.4byte 0
	.4byte func_802B7CB0__Q22cf11CHelpSwitchFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B7E34__Q22cf19CHelp_CloseItemMenuFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
	.4byte func_802B7CBC__Q22cf11CHelpSwitchFv
	.4byte func_802B7CE4__Q22cf11CHelpSwitchFv
.endobj __vt__Q22cf19CHelp_CloseItemMenu

.obj cf_CHelp_CloseItemMenu_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte __RTTI__Q22cf11CHelpSwitch
	.4byte 0
	.4byte 0
.endobj cf_CHelp_CloseItemMenu_hierarchy


.obj __vt__Q22cf18CHelp_CloseSysMenu, global
	.4byte __RTTI__Q22cf18CHelp_CloseSysMenu
	.4byte 0
	.4byte func_802B7CB0__Q22cf11CHelpSwitchFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B7E7C__Q22cf18CHelp_CloseSysMenuFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
	.4byte func_802B7CBC__Q22cf11CHelpSwitchFv
	.4byte func_802B7CE4__Q22cf11CHelpSwitchFv
.endobj __vt__Q22cf18CHelp_CloseSysMenu

.obj cf_CHelp_CloseSysMenu_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte __RTTI__Q22cf11CHelpSwitch
	.4byte 0
	.4byte 0
.endobj cf_CHelp_CloseSysMenu_hierarchy


.obj __vt__Q22cf14CHelp_EndEvent, global
	.4byte __RTTI__Q22cf14CHelp_EndEvent
	.4byte 0
	.4byte func_802B7CB0__Q22cf11CHelpSwitchFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B7EC4__Q22cf14CHelp_EndEventFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
	.4byte func_802B7CBC__Q22cf11CHelpSwitchFv
	.4byte func_802B7CE4__Q22cf11CHelpSwitchFv
	.4byte 0
.endobj __vt__Q22cf14CHelp_EndEvent


.obj __vt__Q22cf16CHelp_EnemyCount, global
	.4byte __RTTI__Q22cf16CHelp_EnemyCount
	.4byte 0
	.4byte func_802B7F54__Q22cf16CHelp_EnemyCountFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B7F60__Q22cf16CHelp_EnemyCountFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
.endobj __vt__Q22cf16CHelp_EnemyCount

.obj cf_CHelp_EnemyCount_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_EnemyCount_hierarchy


.obj __vt__Q22cf17CHelp_EnemyEnable, global
	.4byte __RTTI__Q22cf17CHelp_EnemyEnable
	.4byte 0
	.4byte func_80295D88__Q22cf5CHelpFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B8028__Q22cf17CHelp_EnemyEnableFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
.endobj __vt__Q22cf17CHelp_EnemyEnable

.obj cf_CHelp_EnemyEnable_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_EnemyEnable_hierarchy


.obj __vt__Q22cf15CHelp_EtherMake, global
	.4byte __RTTI__Q22cf15CHelp_EtherMake
	.4byte 0
	.4byte func_80295D88__Q22cf5CHelpFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B80A4__Q22cf15CHelp_EtherMakeFv
	.4byte func_802B80EC__Q22cf15CHelp_EtherMakeFv
	.4byte func_80295D80__Q22cf5CHelpFv
	.4byte 0
.endobj __vt__Q22cf15CHelp_EtherMake


.obj __vt__Q22cf14CHelp_Exchange, global
	.4byte __RTTI__Q22cf14CHelp_Exchange
	.4byte 0
	.4byte func_80295D88__Q22cf5CHelpFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B80F0__Q22cf14CHelp_ExchangeFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
.endobj __vt__Q22cf14CHelp_Exchange

.obj cf_CHelp_Exchange_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_Exchange_hierarchy


.obj __vt__Q22cf14CHelp_GameOver, global
	.4byte __RTTI__Q22cf14CHelp_GameOver
	.4byte 0
	.4byte func_80295D88__Q22cf5CHelpFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B80F4__Q22cf14CHelp_GameOverFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
.endobj __vt__Q22cf14CHelp_GameOver

.obj cf_CHelp_GameOver_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_GameOver_hierarchy


.obj __vt__Q22cf14CHelp_ItemCole, global
	.4byte __RTTI__Q22cf14CHelp_ItemCole
	.4byte 0
	.4byte func_80295D88__Q22cf5CHelpFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B8180__Q22cf14CHelp_ItemColeFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
.endobj __vt__Q22cf14CHelp_ItemCole

.obj cf_CHelp_ItemCole_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_ItemCole_hierarchy


.obj __vt__Q22cf12CHelp_Kizuna, global
	.4byte __RTTI__Q22cf12CHelp_Kizuna
	.4byte 0
	.4byte func_80295D88__Q22cf5CHelpFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B818C__Q22cf12CHelp_KizunaFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
	.4byte 0
.endobj __vt__Q22cf12CHelp_Kizuna


.obj __vt__Q22cf14CHelp_LandMark, global
	.4byte __RTTI__Q22cf14CHelp_LandMark
	.4byte 0
	.4byte func_802B8280__Q22cf14CHelp_LandMarkFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B8328__Q22cf14CHelp_LandMarkFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
	.4byte __RTTI__Q22cf14CHelp_LandMark
	.4byte 0xFFFFFFF4
	.4byte func_802B8390__Q22cf14CHelp_LandMarkFv
	.4byte func_802B8388__Q22cf14CHelp_LandMarkFv
	.4byte __dt__Q22cf14CHelp_LandMarkFv
	.4byte func_802B8290__Q22cf14CHelp_LandMarkFv
.endobj __vt__Q22cf14CHelp_LandMark

.obj cf_CHelp_LandMark_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_LandMark_hierarchy


.obj __vt__Q22cf15CHelp_LearnArts, global
	.4byte __RTTI__Q22cf15CHelp_LearnArts
	.4byte 0
	.4byte func_802B84E0__Q22cf15CHelp_LearnArtsFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B8398__Q22cf15CHelp_LearnArtsFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
.endobj __vt__Q22cf15CHelp_LearnArts

.obj cf_CHelp_LearnArts_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_LearnArts_hierarchy


.obj __vt__Q22cf20CHelp_ClosePartyMenu, global
	.4byte __RTTI__Q22cf20CHelp_ClosePartyMenu
	.4byte 0
	.4byte func_802B7CB0__Q22cf11CHelpSwitchFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B8534__Q22cf20CHelp_ClosePartyMenuFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
	.4byte func_802B7CBC__Q22cf11CHelpSwitchFv
	.4byte func_802B7CE4__Q22cf11CHelpSwitchFv
.endobj __vt__Q22cf20CHelp_ClosePartyMenu

.obj cf_CHelp_ClosePartyMenu_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte __RTTI__Q22cf11CHelpSwitch
	.4byte 0
	.4byte 0
.endobj cf_CHelp_ClosePartyMenu_hierarchy


.obj __vt__Q22cf19CHelp_OpenPartyMenu, global
	.4byte __RTTI__Q22cf19CHelp_OpenPartyMenu
	.4byte 0
	.4byte func_80295D88__Q22cf5CHelpFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B84EC__Q22cf19CHelp_OpenPartyMenuFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_802B859C__Q22cf19CHelp_OpenPartyMenuFv
.endobj __vt__Q22cf19CHelp_OpenPartyMenu

.obj cf_CHelp_OpenPartyMenu_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_OpenPartyMenu_hierarchy


.obj __vt__Q22cf8CHelp_Pg, global
	.4byte __RTTI__Q22cf8CHelp_Pg
	.4byte 0
	.4byte func_80295D88__Q22cf5CHelpFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B85A4__Q22cf8CHelp_PgFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
.endobj __vt__Q22cf8CHelp_Pg

.obj cf_CHelp_Pg_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_Pg_hierarchy


.obj __vt__Q22cf20CHelp_CloseQuestMenu, global
	.4byte __RTTI__Q22cf20CHelp_CloseQuestMenu
	.4byte 0
	.4byte func_802B7CB0__Q22cf11CHelpSwitchFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B8604__Q22cf20CHelp_CloseQuestMenuFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
	.4byte func_802B7CBC__Q22cf11CHelpSwitchFv
	.4byte func_802B7CE4__Q22cf11CHelpSwitchFv
.endobj __vt__Q22cf20CHelp_CloseQuestMenu

.obj cf_CHelp_CloseQuestMenu_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte __RTTI__Q22cf11CHelpSwitch
	.4byte 0
	.4byte 0
.endobj cf_CHelp_CloseQuestMenu_hierarchy


.obj __vt__Q22cf13CHelp_ShopSel, global
	.4byte __RTTI__Q22cf13CHelp_ShopSel
	.4byte 0
	.4byte func_80295D88__Q22cf5CHelpFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B8650__Q22cf13CHelp_ShopSelFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
.endobj __vt__Q22cf13CHelp_ShopSel

.obj cf_CHelp_ShopSel_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_ShopSel_hierarchy


.obj __vt__Q22cf13CHelp_ShopBuy, global
	.4byte __RTTI__Q22cf13CHelp_ShopBuy
	.4byte 0
	.4byte func_80295D88__Q22cf5CHelpFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B864C__Q22cf13CHelp_ShopBuyFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
.endobj __vt__Q22cf13CHelp_ShopBuy

.obj cf_CHelp_ShopBuy_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_ShopBuy_hierarchy


.obj __vt__Q22cf8CHelp_Sp, global
	.4byte __RTTI__Q22cf8CHelp_Sp
	.4byte 0
	.4byte func_80295D88__Q22cf5CHelpFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B8654__Q22cf8CHelp_SpFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
.endobj __vt__Q22cf8CHelp_Sp

.obj cf_CHelp_Sp_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_Sp_hierarchy


.obj __vt__Q22cf10CHelp_Talk, global
	.4byte __RTTI__Q22cf10CHelp_Talk
	.4byte 0
	.4byte func_802B86BC__Q22cf10CHelp_TalkFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B86F0__Q22cf10CHelp_TalkFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
	.4byte func_802B7CBC__Q22cf11CHelpSwitchFv
	.4byte func_802B7CE4__Q22cf11CHelpSwitchFv
	.4byte 0
.endobj __vt__Q22cf10CHelp_Talk


.obj __vt__Q22cf12CHelp_Target, global
	.4byte __RTTI__Q22cf12CHelp_Target
	.4byte 0
	.4byte func_80295D88__Q22cf5CHelpFv
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte func_802B88C8__Q22cf12CHelp_TargetFv
	.4byte func_80295D90__Q22cf5CHelpFv
	.4byte func_80295D80__Q22cf5CHelpFv
.endobj __vt__Q22cf12CHelp_Target

.obj cf_CHelp_Target_hierarchy, global
	.4byte __RTTI__Q22cf5CHelp
	.4byte 0
	.4byte 0
.endobj cf_CHelp_Target_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__Q22cf14CHelp_ToAttack, global
	.4byte cf_CHelp_ToAttack_typestr
	.4byte cf_CHelp_ToAttack_hierarchy
.endobj __RTTI__Q22cf14CHelp_ToAttack

.obj __RTTI__Q22cf16CHelp_ArtsAttack, global
	.4byte cf_CHelp_ArtsAttack_typestr
	.4byte cf_CHelp_ArtsAttack_hierarchy
.endobj __RTTI__Q22cf16CHelp_ArtsAttack

.obj __RTTI__Q22cf13CHelp_ArtsSet, global
	.4byte cf_CHelp_ArtsSet_typestr
	.4byte cf_CHelp_ArtsSet_hierarchy
.endobj __RTTI__Q22cf13CHelp_ArtsSet

.obj __RTTI__Q22cf14CHelp_CkKizuna, global
	.4byte cf_CHelp_CkKizuna_typestr
	.4byte cf_CHelp_CkKizuna_hierarchy
.endobj __RTTI__Q22cf14CHelp_CkKizuna

.obj __RTTI__Q22cf19CHelp_CloseItemMenu, global
	.4byte cf_CHelp_CloseItemMenu_typestr
	.4byte cf_CHelp_CloseItemMenu_hierarchy
.endobj __RTTI__Q22cf19CHelp_CloseItemMenu

.obj __RTTI__Q22cf18CHelp_CloseSysMenu, global
	.4byte cf_CHelp_CloseSysMenu_typestr
	.4byte cf_CHelp_CloseSysMenu_hierarchy
.endobj __RTTI__Q22cf18CHelp_CloseSysMenu

.obj __RTTI__Q22cf16CHelp_EnemyCount, global
	.4byte cf_CHelp_EnemyCount_typestr
	.4byte cf_CHelp_EnemyCount_hierarchy
.endobj __RTTI__Q22cf16CHelp_EnemyCount

.obj __RTTI__Q22cf17CHelp_EnemyEnable, global
	.4byte cf_CHelp_EnemyEnable_typestr
	.4byte cf_CHelp_EnemyEnable_hierarchy
.endobj __RTTI__Q22cf17CHelp_EnemyEnable

.obj __RTTI__Q22cf14CHelp_Exchange, global
	.4byte cf_CHelp_Exchange_typestr
	.4byte cf_CHelp_Exchange_hierarchy
.endobj __RTTI__Q22cf14CHelp_Exchange

.obj __RTTI__Q22cf14CHelp_GameOver, global
	.4byte cf_CHelp_GameOver_typestr
	.4byte cf_CHelp_GameOver_hierarchy
.endobj __RTTI__Q22cf14CHelp_GameOver

.obj __RTTI__Q22cf14CHelp_ItemCole, global
	.4byte cf_CHelp_ItemCole_typestr
	.4byte cf_CHelp_ItemCole_hierarchy
.endobj __RTTI__Q22cf14CHelp_ItemCole

.obj __RTTI__Q22cf14CHelp_LandMark, global
	.4byte cf_CHelp_LandMark_typestr
	.4byte cf_CHelp_LandMark_hierarchy
.endobj __RTTI__Q22cf14CHelp_LandMark

.obj __RTTI__Q22cf15CHelp_LearnArts, global
	.4byte cf_CHelp_LearnArts_typestr
	.4byte cf_CHelp_LearnArts_hierarchy
.endobj __RTTI__Q22cf15CHelp_LearnArts

.obj __RTTI__Q22cf20CHelp_ClosePartyMenu, global
	.4byte cf_CHelp_ClosePartyMenu_typestr
	.4byte cf_CHelp_ClosePartyMenu_hierarchy
.endobj __RTTI__Q22cf20CHelp_ClosePartyMenu

.obj __RTTI__Q22cf19CHelp_OpenPartyMenu, global
	.4byte cf_CHelp_OpenPartyMenu_typestr
	.4byte cf_CHelp_OpenPartyMenu_hierarchy
.endobj __RTTI__Q22cf19CHelp_OpenPartyMenu

.obj __RTTI__Q22cf8CHelp_Pg, global
	.4byte cf_CHelp_Pg_typestr
	.4byte cf_CHelp_Pg_hierarchy
.endobj __RTTI__Q22cf8CHelp_Pg

.obj __RTTI__Q22cf20CHelp_CloseQuestMenu, global
	.4byte cf_CHelp_CloseQuestMenu_typestr
	.4byte cf_CHelp_CloseQuestMenu_hierarchy
.endobj __RTTI__Q22cf20CHelp_CloseQuestMenu

.obj __RTTI__Q22cf13CHelp_ShopSel, global
	.4byte cf_CHelp_ShopSel_typestr
	.4byte cf_CHelp_ShopSel_hierarchy
.endobj __RTTI__Q22cf13CHelp_ShopSel

.obj __RTTI__Q22cf13CHelp_ShopBuy, global
	.4byte cf_CHelp_ShopBuy_typestr
	.4byte cf_CHelp_ShopBuy_hierarchy
.endobj __RTTI__Q22cf13CHelp_ShopBuy

.obj __RTTI__Q22cf8CHelp_Sp, global
	.4byte cf_CHelp_Sp_typestr
	.4byte cf_CHelp_Sp_hierarchy
.endobj __RTTI__Q22cf8CHelp_Sp

.obj __RTTI__Q22cf12CHelp_Target, global
	.4byte cf_CHelp_Target_typestr
	.4byte cf_CHelp_Target_hierarchy
.endobj __RTTI__Q22cf12CHelp_Target

.section extab, "a" # 0x800066E0 - 0x80021020

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

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800338B4", local
.hidden "@eti_800338B4"
	.4byte func_802B7BEC__Q22cf5CHelpFv
	.4byte 0x00000078
	.4byte "@etb_8001BD48"
.endobj "@eti_800338B4"

.obj "@eti_800338C0", local
.hidden "@eti_800338C0"
	.4byte func_802B7C68
	.4byte 0x00000048
	.4byte "@etb_8001BD50"
.endobj "@eti_800338C0"
