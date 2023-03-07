.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn GKI_init, global
/* 802DC790 002A5D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC794 002A5D54  7C 08 02 A6 */	mflr r0
/* 802DC798 002A5D58  3C A0 00 03 */	lis r5, 0x00028AE0@ha
/* 802DC79C 002A5D5C  38 80 00 00 */	li r4, 0
/* 802DC7A0 002A5D60  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC7A4 002A5D64  38 A5 8A E0 */	addi r5, r5, 0x00028AE0@l
/* 802DC7A8 002A5D68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC7AC 002A5D6C  93 C1 00 08 */	stw r30, 8(r1)
/* 802DC7B0 002A5D70  3F C0 80 59 */	lis r30, gki_cb@ha
/* 802DC7B4 002A5D74  38 7E 31 40 */	addi r3, r30, gki_cb@l
/* 802DC7B8 002A5D78  4B D2 7B 99 */	bl memset
/* 802DC7BC 002A5D7C  4B FF E7 C5 */	bl gki_buffer_init
/* 802DC7C0 002A5D80  4B FF FA 41 */	bl gki_timers_init
/* 802DC7C4 002A5D84  3B FE 31 40 */	addi r31, r30, gki_cb@l
/* 802DC7C8 002A5D88  38 80 00 01 */	li r4, 1
/* 802DC7CC 002A5D8C  3C 7F 00 03 */	addis r3, r31, 3
/* 802DC7D0 002A5D90  38 00 00 00 */	li r0, 0
/* 802DC7D4 002A5D94  98 83 88 02 */	stb r4, -0x77fe(r3)
/* 802DC7D8 002A5D98  90 03 87 E8 */	stw r0, -0x7818(r3)
/* 802DC7DC 002A5D9C  90 03 88 48 */	stw r0, -0x77b8(r3)
/* 802DC7E0 002A5DA0  B0 03 88 0C */	sth r0, -0x77f4(r3)
/* 802DC7E4 002A5DA4  98 1E 31 40 */	stb r0, gki_cb@l(r30)
/* 802DC7E8 002A5DA8  48 07 C1 E9 */	bl OSEnableInterrupts
/* 802DC7EC 002A5DAC  88 1E 31 40 */	lbz r0, gki_cb@l(r30)
/* 802DC7F0 002A5DB0  54 00 10 3A */	slwi r0, r0, 2
/* 802DC7F4 002A5DB4  7C 9F 02 14 */	add r4, r31, r0
/* 802DC7F8 002A5DB8  90 64 00 04 */	stw r3, 4(r4)
/* 802DC7FC 002A5DBC  88 7E 31 40 */	lbz r3, gki_cb@l(r30)
/* 802DC800 002A5DC0  38 03 00 01 */	addi r0, r3, 1
/* 802DC804 002A5DC4  98 1E 31 40 */	stb r0, gki_cb@l(r30)
/* 802DC808 002A5DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC80C 002A5DCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DC810 002A5DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC814 002A5DD4  7C 08 03 A6 */	mtlr r0
/* 802DC818 002A5DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC81C 002A5DDC  4E 80 00 20 */	blr 
.endfn GKI_init

.balign 16, 0
.fn GKI_shutdown, global
/* 802DC820 002A5DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC824 002A5DE4  7C 08 02 A6 */	mflr r0
/* 802DC828 002A5DE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC82C 002A5DEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC830 002A5DF0  93 C1 00 08 */	stw r30, 8(r1)
/* 802DC834 002A5DF4  48 07 C1 7D */	bl OSDisableInterrupts
/* 802DC838 002A5DF8  3F C0 80 59 */	lis r30, gki_cb@ha
/* 802DC83C 002A5DFC  38 00 00 00 */	li r0, 0
/* 802DC840 002A5E00  88 BE 31 40 */	lbz r5, gki_cb@l(r30)
/* 802DC844 002A5E04  3B FE 31 40 */	addi r31, r30, gki_cb@l
/* 802DC848 002A5E08  3C 9F 00 03 */	addis r4, r31, 3
/* 802DC84C 002A5E0C  54 A5 10 3A */	slwi r5, r5, 2
/* 802DC850 002A5E10  7C BF 2A 14 */	add r5, r31, r5
/* 802DC854 002A5E14  90 65 00 04 */	stw r3, 4(r5)
/* 802DC858 002A5E18  88 7E 31 40 */	lbz r3, gki_cb@l(r30)
/* 802DC85C 002A5E1C  38 63 00 01 */	addi r3, r3, 1
/* 802DC860 002A5E20  98 7E 31 40 */	stb r3, gki_cb@l(r30)
/* 802DC864 002A5E24  98 04 88 02 */	stb r0, -0x77fe(r4)
/* 802DC868 002A5E28  88 7E 31 40 */	lbz r3, gki_cb@l(r30)
/* 802DC86C 002A5E2C  38 03 FF FF */	addi r0, r3, -1
/* 802DC870 002A5E30  98 1E 31 40 */	stb r0, gki_cb@l(r30)
/* 802DC874 002A5E34  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 802DC878 002A5E38  7C 7F 02 14 */	add r3, r31, r0
/* 802DC87C 002A5E3C  80 63 00 04 */	lwz r3, 4(r3)
/* 802DC880 002A5E40  48 07 C1 71 */	bl OSRestoreInterrupts
/* 802DC884 002A5E44  48 00 00 20 */	b .L_802DC8A4
.L_802DC888:
/* 802DC888 002A5E48  88 7E 31 40 */	lbz r3, gki_cb@l(r30)
/* 802DC88C 002A5E4C  38 03 FF FF */	addi r0, r3, -1
/* 802DC890 002A5E50  98 1E 31 40 */	stb r0, gki_cb@l(r30)
/* 802DC894 002A5E54  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 802DC898 002A5E58  7C 7F 02 14 */	add r3, r31, r0
/* 802DC89C 002A5E5C  80 63 00 04 */	lwz r3, 4(r3)
/* 802DC8A0 002A5E60  48 07 C1 51 */	bl OSRestoreInterrupts
.L_802DC8A4:
/* 802DC8A4 002A5E64  88 1E 31 40 */	lbz r0, gki_cb@l(r30)
/* 802DC8A8 002A5E68  2C 00 00 00 */	cmpwi r0, 0
/* 802DC8AC 002A5E6C  40 82 FF DC */	bne .L_802DC888
/* 802DC8B0 002A5E70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC8B4 002A5E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC8B8 002A5E78  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DC8BC 002A5E7C  7C 08 03 A6 */	mtlr r0
/* 802DC8C0 002A5E80  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC8C4 002A5E84  4E 80 00 20 */	blr 
.endfn GKI_shutdown

.balign 16, 0
.fn GKI_run, global
/* 802DC8D0 002A5E90  4E 80 00 20 */	blr 
.endfn GKI_run

.balign 16, 0
.fn GKI_sched_lock, global
/* 802DC8E0 002A5EA0  4E 80 00 20 */	blr 
.endfn GKI_sched_lock

.balign 16, 0
.fn GKI_sched_unlock, global
/* 802DC8F0 002A5EB0  4E 80 00 20 */	blr 
.endfn GKI_sched_unlock

.balign 16, 0
.fn GKI_delay, global
/* 802DC900 002A5EC0  4E 80 00 20 */	blr 
.endfn GKI_delay

.balign 16, 0
.fn GKI_send_event, global
/* 802DC910 002A5ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC914 002A5ED4  7C 08 02 A6 */	mflr r0
/* 802DC918 002A5ED8  28 03 00 08 */	cmplwi r3, 8
/* 802DC91C 002A5EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC920 002A5EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC924 002A5EE4  7C 9F 23 78 */	mr r31, r4
/* 802DC928 002A5EE8  93 C1 00 08 */	stw r30, 8(r1)
/* 802DC92C 002A5EEC  7C 7E 1B 78 */	mr r30, r3
/* 802DC930 002A5EF0  41 80 00 0C */	blt .L_802DC93C
/* 802DC934 002A5EF4  38 60 00 01 */	li r3, 1
/* 802DC938 002A5EF8  48 00 00 64 */	b .L_802DC99C
.L_802DC93C:
/* 802DC93C 002A5EFC  48 07 C0 75 */	bl OSDisableInterrupts
/* 802DC940 002A5F00  3C E0 80 59 */	lis r7, gki_cb@ha
/* 802DC944 002A5F04  57 C0 0D FC */	rlwinm r0, r30, 1, 0x17, 0x1e
/* 802DC948 002A5F08  88 A7 31 40 */	lbz r5, gki_cb@l(r7)
/* 802DC94C 002A5F0C  38 C7 31 40 */	addi r6, r7, gki_cb@l
/* 802DC950 002A5F10  3C 86 00 03 */	addis r4, r6, 3
/* 802DC954 002A5F14  54 A5 10 3A */	slwi r5, r5, 2
/* 802DC958 002A5F18  7C A6 2A 14 */	add r5, r6, r5
/* 802DC95C 002A5F1C  7C 84 02 14 */	add r4, r4, r0
/* 802DC960 002A5F20  90 65 00 04 */	stw r3, 4(r5)
/* 802DC964 002A5F24  88 67 31 40 */	lbz r3, gki_cb@l(r7)
/* 802DC968 002A5F28  38 03 00 01 */	addi r0, r3, 1
/* 802DC96C 002A5F2C  98 07 31 40 */	stb r0, gki_cb@l(r7)
/* 802DC970 002A5F30  A0 04 88 08 */	lhz r0, -0x77f8(r4)
/* 802DC974 002A5F34  7C 00 FB 78 */	or r0, r0, r31
/* 802DC978 002A5F38  B0 04 88 08 */	sth r0, -0x77f8(r4)
/* 802DC97C 002A5F3C  88 67 31 40 */	lbz r3, gki_cb@l(r7)
/* 802DC980 002A5F40  38 03 FF FF */	addi r0, r3, -1
/* 802DC984 002A5F44  98 07 31 40 */	stb r0, gki_cb@l(r7)
/* 802DC988 002A5F48  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 802DC98C 002A5F4C  7C 66 02 14 */	add r3, r6, r0
/* 802DC990 002A5F50  80 63 00 04 */	lwz r3, 4(r3)
/* 802DC994 002A5F54  48 07 C0 5D */	bl OSRestoreInterrupts
/* 802DC998 002A5F58  38 60 00 00 */	li r3, 0
.L_802DC99C:
/* 802DC99C 002A5F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC9A0 002A5F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC9A4 002A5F64  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DC9A8 002A5F68  7C 08 03 A6 */	mtlr r0
/* 802DC9AC 002A5F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC9B0 002A5F70  4E 80 00 20 */	blr 
.endfn GKI_send_event

.balign 16, 0
.fn GKI_get_taskid, global
/* 802DC9C0 002A5F80  38 60 00 02 */	li r3, 2
/* 802DC9C4 002A5F84  4E 80 00 20 */	blr 
.endfn GKI_get_taskid

.balign 16, 0
.fn GKI_enable, global
/* 802DC9D0 002A5F90  3C A0 80 59 */	lis r5, gki_cb@ha
/* 802DC9D4 002A5F94  88 85 31 40 */	lbz r4, gki_cb@l(r5)
/* 802DC9D8 002A5F98  38 65 31 40 */	addi r3, r5, gki_cb@l
/* 802DC9DC 002A5F9C  38 04 FF FF */	addi r0, r4, -1
/* 802DC9E0 002A5FA0  98 05 31 40 */	stb r0, gki_cb@l(r5)
/* 802DC9E4 002A5FA4  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 802DC9E8 002A5FA8  7C 63 02 14 */	add r3, r3, r0
/* 802DC9EC 002A5FAC  80 63 00 04 */	lwz r3, 4(r3)
/* 802DC9F0 002A5FB0  48 07 C0 00 */	b OSRestoreInterrupts
.endfn GKI_enable

.balign 16, 0
.fn GKI_disable, global
/* 802DCA00 002A5FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DCA04 002A5FC4  7C 08 02 A6 */	mflr r0
/* 802DCA08 002A5FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DCA0C 002A5FCC  48 07 BF A5 */	bl OSDisableInterrupts
/* 802DCA10 002A5FD0  3C A0 80 59 */	lis r5, gki_cb@ha
/* 802DCA14 002A5FD4  88 05 31 40 */	lbz r0, gki_cb@l(r5)
/* 802DCA18 002A5FD8  38 85 31 40 */	addi r4, r5, gki_cb@l
/* 802DCA1C 002A5FDC  54 00 10 3A */	slwi r0, r0, 2
/* 802DCA20 002A5FE0  7C 84 02 14 */	add r4, r4, r0
/* 802DCA24 002A5FE4  90 64 00 04 */	stw r3, 4(r4)
/* 802DCA28 002A5FE8  88 65 31 40 */	lbz r3, gki_cb@l(r5)
/* 802DCA2C 002A5FEC  38 03 00 01 */	addi r0, r3, 1
/* 802DCA30 002A5FF0  98 05 31 40 */	stb r0, gki_cb@l(r5)
/* 802DCA34 002A5FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DCA38 002A5FF8  7C 08 03 A6 */	mtlr r0
/* 802DCA3C 002A5FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 802DCA40 002A6000  4E 80 00 20 */	blr 
.endfn GKI_disable

.balign 16, 0
.fn GKI_exception, global
/* 802DCA50 002A6010  4E 80 00 20 */	blr 
.endfn GKI_exception

.balign 16, 0
.fn GKI_os_malloc, global
/* 802DCA60 002A6020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DCA64 002A6024  7C 08 02 A6 */	mflr r0
/* 802DCA68 002A6028  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DCA6C 002A602C  48 09 91 85 */	bl App_MEMalloc
/* 802DCA70 002A6030  2C 03 00 00 */	cmpwi r3, 0
/* 802DCA74 002A6034  40 82 00 08 */	bne .L_802DCA7C
/* 802DCA78 002A6038  38 60 00 00 */	li r3, 0
.L_802DCA7C:
/* 802DCA7C 002A603C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DCA80 002A6040  7C 08 03 A6 */	mtlr r0
/* 802DCA84 002A6044  38 21 00 10 */	addi r1, r1, 0x10
/* 802DCA88 002A6048  4E 80 00 20 */	blr 
.endfn GKI_os_malloc

.balign 16, 0
.fn GKI_os_free, global
/* 802DCA90 002A6050  48 09 91 B0 */	b App_MEMfree
.endfn GKI_os_free

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj gki_cb, global
	.skip 0x28AE0
.endobj gki_cb