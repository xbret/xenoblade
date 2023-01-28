.include "macros.inc"
.file "RevoSDK/bte/hidd_api.o"

# 0x802F35D8 - 0x802F3640
.text
.balign 4

.fn HID_DevInit, global
/* 802F35D8 002BCB98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F35DC 002BCB9C  7C 08 02 A6 */	mflr r0
/* 802F35E0 002BCBA0  38 80 00 00 */	li r4, 0x0
/* 802F35E4 002BCBA4  38 A0 01 44 */	li r5, 0x144
/* 802F35E8 002BCBA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F35EC 002BCBAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F35F0 002BCBB0  3F E0 80 5C */	lis r31, lbl_805C2570@ha
/* 802F35F4 002BCBB4  38 7F 25 70 */	addi r3, r31, lbl_805C2570@l
/* 802F35F8 002BCBB8  4B D1 0D 59 */	bl memset
/* 802F35FC 002BCBBC  3C 60 80 2F */	lis r3, hidd_proc_repage_timeout@ha
/* 802F3600 002BCBC0  38 BF 25 70 */	addi r5, r31, lbl_805C2570@l
/* 802F3604 002BCBC4  38 C0 00 01 */	li r6, 0x1
/* 802F3608 002BCBC8  38 80 00 40 */	li r4, 0x40
/* 802F360C 002BCBCC  38 63 37 00 */	addi r3, r3, hidd_proc_repage_timeout@l
/* 802F3610 002BCBD0  38 00 00 00 */	li r0, 0x0
/* 802F3614 002BCBD4  98 C5 00 CA */	stb r6, 0xca(r5)
/* 802F3618 002BCBD8  B0 85 00 CC */	sth r4, 0xcc(r5)
/* 802F361C 002BCBDC  98 C5 01 06 */	stb r6, 0x106(r5)
/* 802F3620 002BCBE0  B0 85 01 08 */	sth r4, 0x108(r5)
/* 802F3624 002BCBE4  90 65 00 2C */	stw r3, 0x2c(r5)
/* 802F3628 002BCBE8  98 05 01 41 */	stb r0, 0x141(r5)
/* 802F362C 002BCBEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F3630 002BCBF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F3634 002BCBF4  7C 08 03 A6 */	mtlr r0
/* 802F3638 002BCBF8  38 21 00 10 */	addi r1, r1, 0x10
/* 802F363C 002BCBFC  4E 80 00 20 */	blr
.endfn HID_DevInit
