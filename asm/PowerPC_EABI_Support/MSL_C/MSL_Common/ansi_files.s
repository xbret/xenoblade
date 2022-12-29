.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __close_all
__close_all:
/* 802BC2CC 0028588C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BC2D0 00285890  7C 08 02 A6 */	mflr r0
/* 802BC2D4 00285894  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BC2D8 00285898  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BC2DC 0028589C  3B E0 00 00 */	li r31, 0
/* 802BC2E0 002858A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BC2E4 002858A4  3B C0 00 03 */	li r30, 3
/* 802BC2E8 002858A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802BC2EC 002858AC  3F A0 80 54 */	lis r29, lbl_8053F0F0@ha
/* 802BC2F0 002858B0  3B BD F0 F0 */	addi r29, r29, lbl_8053F0F0@l
/* 802BC2F4 002858B4  48 00 00 58 */	b .L_802BC34C
.L_802BC2F8:
/* 802BC2F8 002858B8  80 1D 00 04 */	lwz r0, 4(r29)
/* 802BC2FC 002858BC  54 00 57 7F */	rlwinm. r0, r0, 0xa, 0x1d, 0x1f
/* 802BC300 002858C0  41 82 00 0C */	beq .L_802BC30C
/* 802BC304 002858C4  7F A3 EB 78 */	mr r3, r29
/* 802BC308 002858C8  48 00 1D A9 */	bl fclose
.L_802BC30C:
/* 802BC30C 002858CC  7F A3 EB 78 */	mr r3, r29
/* 802BC310 002858D0  83 BD 00 4C */	lwz r29, 0x4c(r29)
/* 802BC314 002858D4  88 03 00 0C */	lbz r0, 0xc(r3)
/* 802BC318 002858D8  2C 00 00 00 */	cmpwi r0, 0
/* 802BC31C 002858DC  41 82 00 0C */	beq .L_802BC328
/* 802BC320 002858E0  4B FF FE 7D */	bl free
/* 802BC324 002858E4  48 00 00 28 */	b .L_802BC34C
.L_802BC328:
/* 802BC328 002858E8  80 03 00 04 */	lwz r0, 4(r3)
/* 802BC32C 002858EC  2C 1D 00 00 */	cmpwi r29, 0
/* 802BC330 002858F0  53 C0 B1 D2 */	rlwimi r0, r30, 0x16, 7, 9
/* 802BC334 002858F4  90 03 00 04 */	stw r0, 4(r3)
/* 802BC338 002858F8  41 82 00 14 */	beq .L_802BC34C
/* 802BC33C 002858FC  88 1D 00 0C */	lbz r0, 0xc(r29)
/* 802BC340 00285900  2C 00 00 00 */	cmpwi r0, 0
/* 802BC344 00285904  41 82 00 08 */	beq .L_802BC34C
/* 802BC348 00285908  93 E3 00 4C */	stw r31, 0x4c(r3)
.L_802BC34C:
/* 802BC34C 0028590C  2C 1D 00 00 */	cmpwi r29, 0
/* 802BC350 00285910  40 82 FF A8 */	bne .L_802BC2F8
/* 802BC354 00285914  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BC358 00285918  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BC35C 0028591C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BC360 00285920  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802BC364 00285924  7C 08 03 A6 */	mtlr r0
/* 802BC368 00285928  38 21 00 20 */	addi r1, r1, 0x20
/* 802BC36C 0028592C  4E 80 00 20 */	blr 

.global __flush_all
__flush_all:
/* 802BC370 00285930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BC374 00285934  7C 08 02 A6 */	mflr r0
/* 802BC378 00285938  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BC37C 0028593C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BC380 00285940  3B E0 00 00 */	li r31, 0
/* 802BC384 00285944  93 C1 00 08 */	stw r30, 8(r1)
/* 802BC388 00285948  3F C0 80 54 */	lis r30, lbl_8053F0F0@ha
/* 802BC38C 0028594C  3B DE F0 F0 */	addi r30, r30, lbl_8053F0F0@l
/* 802BC390 00285950  48 00 00 28 */	b .L_802BC3B8
.L_802BC394:
/* 802BC394 00285954  80 1E 00 04 */	lwz r0, 4(r30)
/* 802BC398 00285958  54 00 57 7F */	rlwinm. r0, r0, 0xa, 0x1d, 0x1f
/* 802BC39C 0028595C  41 82 00 18 */	beq .L_802BC3B4
/* 802BC3A0 00285960  7F C3 F3 78 */	mr r3, r30
/* 802BC3A4 00285964  48 00 1D C9 */	bl fflush
/* 802BC3A8 00285968  2C 03 00 00 */	cmpwi r3, 0
/* 802BC3AC 0028596C  41 82 00 08 */	beq .L_802BC3B4
/* 802BC3B0 00285970  3B E0 FF FF */	li r31, -1
.L_802BC3B4:
/* 802BC3B4 00285974  83 DE 00 4C */	lwz r30, 0x4c(r30)
.L_802BC3B8:
/* 802BC3B8 00285978  2C 1E 00 00 */	cmpwi r30, 0
/* 802BC3BC 0028597C  40 82 FF D8 */	bne .L_802BC394
/* 802BC3C0 00285980  7F E3 FB 78 */	mr r3, r31
/* 802BC3C4 00285984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BC3C8 00285988  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BC3CC 0028598C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BC3D0 00285990  7C 08 03 A6 */	mtlr r0
/* 802BC3D4 00285994  38 21 00 10 */	addi r1, r1, 0x10
/* 802BC3D8 00285998  4E 80 00 20 */	blr 


.section .data, "wa"  # 0x805281E0 - 0x80573C60
.global lbl_8053F0F0
lbl_8053F0F0:
	# ROM: 0x53B1F0
	.4byte 0
	.4byte 0x0A800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8057B248
	.4byte 0x00000100
	.4byte lbl_8057B248
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __read_console
	.4byte __write_console
	.4byte __close_console
	.4byte 0
	.4byte lbl_8053F140

.global lbl_8053F140
lbl_8053F140:
	.4byte 0x00000001
	.4byte 0x12800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8057B148
	.4byte 0x00000100
	.4byte lbl_8057B148
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __read_console
	.4byte __write_console
	.4byte __close_console
	.4byte 0
	.4byte lbl_8053F190

.global lbl_8053F190
lbl_8053F190:
	.4byte 0x00000002
	.4byte 0x10800000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_8057B048
	.4byte 0x00000100
	.4byte lbl_8057B048
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte __read_console
	.4byte __write_console
	.4byte __close_console
	.4byte 0
	.4byte lbl_8053F1E0

.global lbl_8053F1E0
lbl_8053F1E0:
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

.section .bss, "wa"  # 0x80573C80 - 0x8066417B
.global lbl_8057B048
lbl_8057B048:
	.skip 0x100
.global lbl_8057B148
lbl_8057B148:
	.skip 0x100
.global lbl_8057B248
lbl_8057B248:
	.skip 0x100
