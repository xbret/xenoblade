.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn bta_dm_sm_execute, global
/* 802E156C 002AAB2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E1570 002AAB30  7C 08 02 A6 */	mflr r0
/* 802E1574 002AAB34  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E1578 002AAB38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E157C 002AAB3C  3F E0 80 51 */	lis r31, bta_dm_action@ha
/* 802E1580 002AAB40  3B FF E0 90 */	addi r31, r31, bta_dm_action@l
/* 802E1584 002AAB44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E1588 002AAB48  3F C0 80 51 */	lis r30, bta_dm_st_table@ha
/* 802E158C 002AAB4C  3B DE E0 C4 */	addi r30, r30, bta_dm_st_table@l
/* 802E1590 002AAB50  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E1594 002AAB54  3B A0 00 00 */	li r29, 0
/* 802E1598 002AAB58  93 81 00 10 */	stw r28, 0x10(r1)
/* 802E159C 002AAB5C  7C 7C 1B 78 */	mr r28, r3
.L_802E15A0:
/* 802E15A0 002AAB60  A0 7C 00 00 */	lhz r3, 0(r28)
/* 802E15A4 002AAB64  7C 1D F2 14 */	add r0, r29, r30
/* 802E15A8 002AAB68  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 802E15AC 002AAB6C  54 63 15 BA */	rlwinm r3, r3, 2, 0x16, 0x1d
/* 802E15B0 002AAB70  7C 64 18 50 */	subf r3, r4, r3
/* 802E15B4 002AAB74  7C 03 00 AE */	lbzx r0, r3, r0
/* 802E15B8 002AAB78  28 00 00 0D */	cmplwi r0, 0xd
/* 802E15BC 002AAB7C  41 82 00 24 */	beq .L_802E15E0
/* 802E15C0 002AAB80  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 802E15C4 002AAB84  7F 83 E3 78 */	mr r3, r28
/* 802E15C8 002AAB88  7D 9F 00 2E */	lwzx r12, r31, r0
/* 802E15CC 002AAB8C  7D 89 03 A6 */	mtctr r12
/* 802E15D0 002AAB90  4E 80 04 21 */	bctrl 
/* 802E15D4 002AAB94  3B BD 00 01 */	addi r29, r29, 1
/* 802E15D8 002AAB98  2C 1D 00 02 */	cmpwi r29, 2
/* 802E15DC 002AAB9C  41 80 FF C4 */	blt .L_802E15A0
.L_802E15E0:
/* 802E15E0 002AABA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E15E4 002AABA4  38 60 00 01 */	li r3, 1
/* 802E15E8 002AABA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E15EC 002AABAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E15F0 002AABB0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802E15F4 002AABB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E15F8 002AABB8  7C 08 03 A6 */	mtlr r0
/* 802E15FC 002AABBC  38 21 00 20 */	addi r1, r1, 0x20
/* 802E1600 002AABC0  4E 80 00 20 */	blr
.endfn bta_dm_sm_execute


.fn bta_dm_search_sm_execute, global
/* 802E1604 002AABC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E1608 002AABC8  7C 08 02 A6 */	mflr r0
/* 802E160C 002AABCC  3C E0 80 5C */	lis r7, bta_dm_search_cb@ha
/* 802E1610 002AABD0  3C A0 80 51 */	lis r5, bta_dm_search_st_tbl@ha
/* 802E1614 002AABD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E1618 002AABD8  38 E7 F6 18 */	addi r7, r7, bta_dm_search_cb@l
/* 802E161C 002AABDC  38 A5 E1 A8 */	addi r5, r5, bta_dm_search_st_tbl@l
/* 802E1620 002AABE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802E1624 002AABE4  3F E0 80 51 */	lis r31, bta_dm_search_action@ha
/* 802E1628 002AABE8  3B FF E0 F0 */	addi r31, r31, bta_dm_search_action@l
/* 802E162C 002AABEC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802E1630 002AABF0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802E1634 002AABF4  3B A0 00 00 */	li r29, 0
/* 802E1638 002AABF8  93 81 00 10 */	stw r28, 0x10(r1)
/* 802E163C 002AABFC  7C 7C 1B 78 */	mr r28, r3
/* 802E1640 002AAC00  A0 C7 00 18 */	lhz r6, 0x18(r7)
/* 802E1644 002AAC04  A0 03 00 00 */	lhz r0, 0(r3)
/* 802E1648 002AAC08  54 C6 10 3A */	slwi r6, r6, 2
/* 802E164C 002AAC0C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802E1650 002AAC10  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 802E1654 002AAC14  7F C5 30 2E */	lwzx r30, r5, r6
/* 802E1658 002AAC18  7C 04 00 50 */	subf r0, r4, r0
/* 802E165C 002AAC1C  7C 7E 02 14 */	add r3, r30, r0
/* 802E1660 002AAC20  88 03 00 02 */	lbz r0, 2(r3)
/* 802E1664 002AAC24  B0 07 00 18 */	sth r0, 0x18(r7)
.L_802E1668:
/* 802E1668 002AAC28  A0 7C 00 00 */	lhz r3, 0(r28)
/* 802E166C 002AAC2C  7C 1D F2 14 */	add r0, r29, r30
/* 802E1670 002AAC30  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 802E1674 002AAC34  54 63 15 BA */	rlwinm r3, r3, 2, 0x16, 0x1d
/* 802E1678 002AAC38  7C 64 18 50 */	subf r3, r4, r3
/* 802E167C 002AAC3C  7C 03 00 AE */	lbzx r0, r3, r0
/* 802E1680 002AAC40  28 00 00 12 */	cmplwi r0, 0x12
/* 802E1684 002AAC44  41 82 00 24 */	beq .L_802E16A8
/* 802E1688 002AAC48  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 802E168C 002AAC4C  7F 83 E3 78 */	mr r3, r28
/* 802E1690 002AAC50  7D 9F 00 2E */	lwzx r12, r31, r0
/* 802E1694 002AAC54  7D 89 03 A6 */	mtctr r12
/* 802E1698 002AAC58  4E 80 04 21 */	bctrl 
/* 802E169C 002AAC5C  3B BD 00 01 */	addi r29, r29, 1
/* 802E16A0 002AAC60  2C 1D 00 02 */	cmpwi r29, 2
/* 802E16A4 002AAC64  41 80 FF C4 */	blt .L_802E1668
.L_802E16A8:
/* 802E16A8 002AAC68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802E16AC 002AAC6C  38 60 00 01 */	li r3, 1
/* 802E16B0 002AAC70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802E16B4 002AAC74  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802E16B8 002AAC78  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802E16BC 002AAC7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E16C0 002AAC80  7C 08 03 A6 */	mtlr r0
/* 802E16C4 002AAC84  38 21 00 20 */	addi r1, r1, 0x20
/* 802E16C8 002AAC88  4E 80 00 20 */	blr
.endfn bta_dm_search_sm_execute

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

bta_dm_action:
	.4byte bta_dm_enable
	.4byte bta_dm_disable
	.4byte bta_dm_set_dev_name
	.4byte bta_dm_set_visibility
	.4byte bta_dm_bond
	.4byte bta_dm_pin_reply
	.4byte bta_dm_auth_reply
	.4byte bta_dm_signal_strength
	.4byte bta_dm_acl_change
	.4byte bta_dm_pm_btm_status
	.4byte bta_dm_pm_timer
	.4byte bta_dm_keep_acl
	.4byte bta_dm_send_hci_reset


bta_dm_st_table:
	.4byte 0x000D0001
	.4byte 0x0D00020D
	.4byte 0x00030D00
	.4byte 0x070D0008
	.4byte 0x0D00040D
	.4byte 0x00050D00
	.4byte 0x060D0009
	.4byte 0x0D000A0D
	.4byte 0x000B0D00
	.4byte 0x0C0D0000
	.4byte 0


bta_dm_search_action:
	.4byte bta_dm_search_start
	.4byte bta_dm_search_cancel
	.4byte bta_dm_discover
	.4byte bta_dm_inq_cmpl
	.4byte bta_dm_rmt_name
	.4byte bta_dm_sdp_result
	.4byte bta_dm_search_cmpl
	.4byte bta_dm_free_sdp_db
	.4byte bta_dm_disc_result
	.4byte bta_dm_search_result
	.4byte bta_dm_queue_search
	.4byte bta_dm_queue_disc
	.4byte bta_dm_search_clear_queue
	.4byte bta_dm_search_cancel_cmpl
	.4byte bta_dm_search_cancel_notify
	.4byte bta_dm_search_cancel_transac_cmpl
	.4byte bta_dm_disc_rmt_name
	.4byte bta_dm_cancel_rmt_name

bta_dm_search_idle_st_table:
	.4byte 0x0012010E
	.4byte 0x12000212
	.4byte 0x03121200
	.4byte 0x12120012
	.4byte 0x12000712
	.4byte 0x00121200
	.4byte 0x12120000

bta_dm_search_search_active_st_table:
	.4byte 0x12120101
	.4byte 0x12021212
	.4byte 0x01031201
	.4byte 0x04120111
	.4byte 0x12010512
	.4byte 0x01061200
	.4byte 0x09120100

bta_dm_search_search_cancelling_st_table:
	.4byte 0x0A12020C
	.4byte 0x0E020B12
	.4byte 0x020D1200
	.4byte 0x0F0D0012
	.4byte 0x12020F0D
	.4byte 0x000D1200
	.4byte 0x0D120000

bta_dm_search_disc_active_st_table:
	.4byte 0x1212030E
	.4byte 0x12031212
	.4byte 0x03121203
	.4byte 0x10120311
	.4byte 0x12030512
	.4byte 0x03121200
	.4byte 0x08120300


bta_dm_search_st_tbl:
	.4byte bta_dm_search_idle_st_table
	.4byte bta_dm_search_search_active_st_table
	.4byte bta_dm_search_search_cancelling_st_table
	.4byte bta_dm_search_disc_active_st_table

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global bta_dm_search_cb
bta_dm_search_cb:
	.skip 0x7C

.global bta_dm_cb
bta_dm_cb:
	.skip 0x104