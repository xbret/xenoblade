.include "macros.inc"
.file "kyoshin/appgame/main.o"

# 0x800067C4 - 0x8000684C
.section extab, "a"
.balign 4

.obj "@etb_800067C4", local
.hidden "@etb_800067C4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800067C4"

.obj "@etb_800067CC", local
.hidden "@etb_800067CC"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800067CC"

.obj "@etb_800067D4", local
.hidden "@etb_800067D4"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800067D4"

.obj "@10", local
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@10"

.obj "@etb_800067E4", local
.hidden "@etb_800067E4"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800067E4"

.obj "@etb_800067EC", local
.hidden "@etb_800067EC"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_800067EC"

.obj "@etb_800067F4", local
.hidden "@etb_800067F4"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_800067F4"

.obj "@etb_800067FC", local
.hidden "@etb_800067FC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800067FC"

.obj "@etb_80006804", local
.hidden "@etb_80006804"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80006804"

.obj "@etb_8000680C", local
.hidden "@etb_8000680C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000680C"

.obj "@etb_80006814", local
.hidden "@etb_80006814"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80006814"

.obj "@etb_8000681C", local
.hidden "@etb_8000681C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000681C"

.obj "@etb_80006824", local
.hidden "@etb_80006824"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006824"

.obj "@etb_8000682C", local
.hidden "@etb_8000682C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000682C"

.obj "@etb_80006834", local
.hidden "@etb_80006834"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80006834"

.obj "@etb_8000683C", local
.hidden "@etb_8000683C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000683C"

.obj "@etb_80006844", local
.hidden "@etb_80006844"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_80006844"

# 0x80021104 - 0x800211D0
.section extabindex, "a"
.balign 4

.obj "@eti_80021104", local
.hidden "@eti_80021104"
	.4byte fn_80039EFC
	.4byte 0x00000038
	.4byte "@etb_800067C4"
.endobj "@eti_80021104"

.obj "@eti_80021110", local
.hidden "@eti_80021110"
	.4byte fn_80039F34
	.4byte 0x00000028
	.4byte "@etb_800067CC"
.endobj "@eti_80021110"

.obj "@eti_8002111C", local
.hidden "@eti_8002111C"
	.4byte fn_80039F6C
	.4byte 0x00000024
	.4byte "@etb_800067D4"
.endobj "@eti_8002111C"

.obj "@eti_80021128", local
.hidden "@eti_80021128"
	.4byte main
	.4byte 0x000000C8
	.4byte "@10"
.endobj "@eti_80021128"

.obj "@eti_80021134", local
.hidden "@eti_80021134"
	.4byte performanceStart
	.4byte 0x00000034
	.4byte "@etb_800067E4"
.endobj "@eti_80021134"

.obj "@eti_80021140", local
.hidden "@eti_80021140"
	.4byte performanceEnd
	.4byte 0x00000034
	.4byte "@etb_800067EC"
.endobj "@eti_80021140"

.obj "@eti_8002114C", local
.hidden "@eti_8002114C"
	.4byte frame
	.4byte 0x000000B8
	.4byte "@etb_800067F4"
.endobj "@eti_8002114C"

.obj "@eti_80021158", local
.hidden "@eti_80021158"
	.4byte isExistProperty
	.4byte 0x0000007C
	.4byte "@etb_800067FC"
.endobj "@eti_80021158"

.obj "@eti_80021164", local
.hidden "@eti_80021164"
	.4byte isExistSelector
	.4byte 0x0000007C
	.4byte "@etb_80006804"
.endobj "@eti_80021164"

.obj "@eti_80021170", local
.hidden "@eti_80021170"
	.4byte getOCName
	.4byte 0x00000060
	.4byte "@etb_8000680C"
.endobj "@eti_80021170"

.obj "@eti_8002117C", local
.hidden "@eti_8002117C"
	.4byte thread
	.4byte 0x00000094
	.4byte "@etb_80006814"
.endobj "@eti_8002117C"

.obj "@eti_80021188", local
.hidden "@eti_80021188"
	.4byte start
	.4byte 0x00000024
	.4byte "@etb_8000681C"
.endobj "@eti_80021188"

.obj "@eti_80021194", local
.hidden "@eti_80021194"
	.4byte end
	.4byte 0x00000028
	.4byte "@etb_80006824"
.endobj "@eti_80021194"

.obj "@eti_800211A0", local
.hidden "@eti_800211A0"
	.4byte isAlive
	.4byte 0x00000050
	.4byte "@etb_8000682C"
.endobj "@eti_800211A0"

.obj "@eti_800211AC", local
.hidden "@eti_800211AC"
	.4byte join
	.4byte 0x00000044
	.4byte "@etb_80006834"
.endobj "@eti_800211AC"

.obj "@eti_800211B8", local
.hidden "@eti_800211B8"
	.4byte sleep
	.4byte 0x00000028
	.4byte "@etb_8000683C"
.endobj "@eti_800211B8"

.obj "@eti_800211C4", local
.hidden "@eti_800211C4"
	.4byte wakeup
	.4byte 0x00000028
	.4byte "@etb_80006844"
.endobj "@eti_800211C4"

# 0x80039EFC - 0x8003A53C
.text
.balign 4

.fn fn_80039EFC, local
/* 80039EFC 000034BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80039F00 000034C0  7C 08 02 A6 */	mflr r0
/* 80039F04 000034C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80039F08 000034C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80039F0C 000034CC  7C 7F 1B 78 */	mr r31, r3
/* 80039F10 000034D0  48 00 0B 41 */	bl fn_8003AA50
/* 80039F14 000034D4  7F E4 FB 78 */	mr r4, r31
/* 80039F18 000034D8  38 60 00 00 */	li r3, 0x0
/* 80039F1C 000034DC  48 00 0B 5D */	bl fn_8003AA78
/* 80039F20 000034E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80039F24 000034E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80039F28 000034E8  7C 08 03 A6 */	mtlr r0
/* 80039F2C 000034EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80039F30 000034F0  4E 80 00 20 */	blr
.endfn fn_80039EFC

.fn fn_80039F34, local
/* 80039F34 000034F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80039F38 000034F8  7C 08 02 A6 */	mflr r0
/* 80039F3C 000034FC  38 60 00 00 */	li r3, 0x0
/* 80039F40 00003500  90 01 00 14 */	stw r0, 0x14(r1)
/* 80039F44 00003504  48 00 0B 49 */	bl fn_8003AA8C
/* 80039F48 00003508  48 00 0B 09 */	bl fn_8003AA50
/* 80039F4C 0000350C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80039F50 00003510  7C 08 03 A6 */	mtlr r0
/* 80039F54 00003514  38 21 00 10 */	addi r1, r1, 0x10
/* 80039F58 00003518  4E 80 00 20 */	blr
.endfn fn_80039F34

.fn fn_80039F5C, local
/* 80039F5C 0000351C  48 11 09 10 */	b fn_8014A86C
.endfn fn_80039F5C

.fn fn_80039F60, local
/* 80039F60 00003520  48 11 09 98 */	b fn_8014A8F8
.endfn fn_80039F60

.fn fn_80039F64, local
/* 80039F64 00003524  48 42 35 1C */	b fn_8045D480
.endfn fn_80039F64

.fn fn_80039F68, local
/* 80039F68 00003528  48 42 35 94 */	b fn_8045D4FC
.endfn fn_80039F68

.fn fn_80039F6C, local
/* 80039F6C 0000352C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80039F70 00003530  7C 08 02 A6 */	mflr r0
/* 80039F74 00003534  90 01 00 14 */	stw r0, 0x14(r1)
/* 80039F78 00003538  48 46 5D 35 */	bl fn_8049FCAC
/* 80039F7C 0000353C  48 00 B8 99 */	bl fn_80045814
/* 80039F80 00003540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80039F84 00003544  7C 08 03 A6 */	mtlr r0
/* 80039F88 00003548  38 21 00 10 */	addi r1, r1, 0x10
/* 80039F8C 0000354C  4E 80 00 20 */	blr
.endfn fn_80039F6C

.fn fn_80039F90, local
/* 80039F90 00003550  48 46 5D 1C */	b fn_8049FCAC
.endfn fn_80039F90

.fn main, global
/* 80039F94 00003554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80039F98 00003558  7C 08 02 A6 */	mflr r0
/* 80039F9C 0000355C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80039FA0 00003560  48 27 4B D5 */	bl fn_802AEB74
/* 80039FA4 00003564  48 41 6B 71 */	bl fn_80450B14
/* 80039FA8 00003568  48 27 4B D5 */	bl fn_802AEB7C
/* 80039FAC 0000356C  48 41 6B 71 */	bl fn_80450B1C
/* 80039FB0 00003570  48 27 4B D5 */	bl fn_802AEB84
/* 80039FB4 00003574  48 41 6B 71 */	bl fn_80450B24
/* 80039FB8 00003578  48 27 4B F5 */	bl fn_802AEBAC
/* 80039FBC 0000357C  48 4A 0A D5 */	bl fn_804DAA90
/* 80039FC0 00003580  48 27 4B F5 */	bl fn_802AEBB4
/* 80039FC4 00003584  48 4A 0A D5 */	bl fn_804DAA98
/* 80039FC8 00003588  48 27 4B F5 */	bl fn_802AEBBC
/* 80039FCC 0000358C  48 4A 0A D5 */	bl fn_804DAAA0
/* 80039FD0 00003590  38 00 00 00 */	li r0, 0x0
/* 80039FD4 00003594  98 0D A2 B8 */	stb r0, lbl_80666438@sda21(r13)
/* 80039FD8 00003598  3C 60 00 68 */	lis r3, 0x68
/* 80039FDC 0000359C  38 80 00 00 */	li r4, 0x0
/* 80039FE0 000035A0  48 3F 97 05 */	bl SetArenaMemorySize
/* 80039FE4 000035A4  38 60 00 00 */	li r3, 0x0
/* 80039FE8 000035A8  48 40 EE 91 */	bl fn_80448E78
/* 80039FEC 000035AC  38 60 00 00 */	li r3, 0x0
/* 80039FF0 000035B0  3C 80 00 18 */	lis r4, 0x18
/* 80039FF4 000035B4  48 41 B9 B5 */	bl fn_804559A8
/* 80039FF8 000035B8  3C 60 80 53 */	lis r3, lbl_80528380@ha
/* 80039FFC 000035BC  38 80 00 01 */	li r4, 0x1
/* 8003A000 000035C0  38 63 83 80 */	addi r3, r3, lbl_80528380@l
/* 8003A004 000035C4  48 41 BF C5 */	bl CDesktop_SaveStartFunctionCallback
/* 8003A008 000035C8  3C 60 80 53 */	lis r3, lbl_80528390@ha
/* 8003A00C 000035CC  38 63 83 90 */	addi r3, r3, lbl_80528390@l
/* 8003A010 000035D0  48 42 5B A1 */	bl fn_8045FBB0
/* 8003A014 000035D4  3C 60 80 04 */	lis r3, fn_80039F6C@ha
/* 8003A018 000035D8  3C 80 80 04 */	lis r4, fn_80039F90@ha
/* 8003A01C 000035DC  38 63 9F 6C */	addi r3, r3, fn_80039F6C@l
/* 8003A020 000035E0  38 84 9F 90 */	addi r4, r4, fn_80039F90@l
/* 8003A024 000035E4  48 42 62 19 */	bl CLibVM_SetCallbacks
/* 8003A028 000035E8  38 62 80 20 */	addi r3, r2, staticArcStr@sda21
/* 8003A02C 000035EC  48 4A 3E 09 */	bl SaveStaticArcFilenameStringPtr
/* 8003A030 000035F0  3C 60 80 4F */	lis r3, pkhFilenames@ha
/* 8003A034 000035F4  38 63 5B E0 */	addi r3, r3, pkhFilenames@l
/* 8003A038 000035F8  48 4A 3D F5 */	bl SavePkhFilenamesArrayPtr
/* 8003A03C 000035FC  48 01 DC A1 */	bl fn_80057CDC
/* 8003A040 00003600  38 60 00 01 */	li r3, 0x1
/* 8003A044 00003604  48 42 35 85 */	bl fn_8045D5C8
/* 8003A048 00003608  48 40 A2 91 */	bl CWorkRoot_Run
/* 8003A04C 0000360C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A050 00003610  7C 08 03 A6 */	mtlr r0
/* 8003A054 00003614  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A058 00003618  4E 80 00 20 */	blr
.endfn main

.fn put, global
/* 8003A05C 0000361C  38 60 00 00 */	li r3, 0x0
/* 8003A060 00003620  4E 80 00 20 */	blr
.endfn put

.fn performanceStart, global
/* 8003A064 00003624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A068 00003628  7C 08 02 A6 */	mflr r0
/* 8003A06C 0000362C  38 80 00 01 */	li r4, 0x1
/* 8003A070 00003630  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A074 00003634  48 46 6C 05 */	bl fn_804A0C78
/* 8003A078 00003638  7C 64 1B 78 */	mr r4, r3
/* 8003A07C 0000363C  38 60 00 02 */	li r3, 0x2
/* 8003A080 00003640  48 46 6D ED */	bl fn_804A0E6C
/* 8003A084 00003644  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A088 00003648  38 60 00 00 */	li r3, 0x0
/* 8003A08C 0000364C  7C 08 03 A6 */	mtlr r0
/* 8003A090 00003650  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A094 00003654  4E 80 00 20 */	blr
.endfn performanceStart

.fn performanceEnd, global
/* 8003A098 00003658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A09C 0000365C  7C 08 02 A6 */	mflr r0
/* 8003A0A0 00003660  38 80 00 01 */	li r4, 0x1
/* 8003A0A4 00003664  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A0A8 00003668  48 46 6B D1 */	bl fn_804A0C78
/* 8003A0AC 0000366C  7C 64 1B 78 */	mr r4, r3
/* 8003A0B0 00003670  38 60 00 02 */	li r3, 0x2
/* 8003A0B4 00003674  48 46 6D B9 */	bl fn_804A0E6C
/* 8003A0B8 00003678  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A0BC 0000367C  38 60 00 00 */	li r3, 0x0
/* 8003A0C0 00003680  7C 08 03 A6 */	mtlr r0
/* 8003A0C4 00003684  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A0C8 00003688  4E 80 00 20 */	blr
.endfn performanceEnd

.fn fn_8003A0CC, local
/* 8003A0CC 0000368C  3C 60 80 4F */	lis r3, lbl_804F5D14@ha
/* 8003A0D0 00003690  3C 80 80 53 */	lis r4, lbl_80528458@ha
/* 8003A0D4 00003694  38 63 5D 14 */	addi r3, r3, lbl_804F5D14@l
/* 8003A0D8 00003698  38 84 84 58 */	addi r4, r4, lbl_80528458@l
/* 8003A0DC 0000369C  48 46 6A B4 */	b fn_804A0B90
.endfn fn_8003A0CC

.fn frame, global
/* 8003A0E0 000036A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A0E4 000036A4  7C 08 02 A6 */	mflr r0
/* 8003A0E8 000036A8  38 80 00 01 */	li r4, 0x1
/* 8003A0EC 000036AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A0F0 000036B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A0F4 000036B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A0F8 000036B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8003A0FC 000036BC  7C 7D 1B 78 */	mr r29, r3
/* 8003A100 000036C0  48 46 6B 79 */	bl fn_804A0C78
/* 8003A104 000036C4  7C 64 1B 78 */	mr r4, r3
/* 8003A108 000036C8  38 60 00 02 */	li r3, 0x2
/* 8003A10C 000036CC  48 46 6C C1 */	bl fn_804A0DCC
/* 8003A110 000036D0  7C 7E 1B 78 */	mr r30, r3
/* 8003A114 000036D4  7F A3 EB 78 */	mr r3, r29
/* 8003A118 000036D8  48 46 6E CD */	bl fn_804A0FE4
/* 8003A11C 000036DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8003A120 000036E0  7C 7F 1B 78 */	mr r31, r3
/* 8003A124 000036E4  40 82 00 30 */	bne .L_8003A154
/* 8003A128 000036E8  7F A3 EB 78 */	mr r3, r29
/* 8003A12C 000036EC  38 80 00 00 */	li r4, 0x0
/* 8003A130 000036F0  48 46 6E C5 */	bl fn_804A0FF4
/* 8003A134 000036F4  57 C0 60 26 */	slwi r0, r30, 12
/* 8003A138 000036F8  90 03 00 00 */	stw r0, 0x0(r3)
/* 8003A13C 000036FC  7F A3 EB 78 */	mr r3, r29
/* 8003A140 00003700  38 9F 00 01 */	addi r4, r31, 0x1
/* 8003A144 00003704  48 46 6E A9 */	bl fn_804A0FEC
/* 8003A148 00003708  7F A3 EB 78 */	mr r3, r29
/* 8003A14C 0000370C  48 46 6E 8D */	bl fn_804A0FD8
/* 8003A150 00003710  48 00 00 28 */	b .L_8003A178
.L_8003A154:
/* 8003A154 00003714  7F A3 EB 78 */	mr r3, r29
/* 8003A158 00003718  38 80 00 00 */	li r4, 0x0
/* 8003A15C 0000371C  48 46 6E 99 */	bl fn_804A0FF4
/* 8003A160 00003720  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8003A164 00003724  34 04 F0 00 */	addic. r0, r4, -0x1000
/* 8003A168 00003728  90 03 00 00 */	stw r0, 0x0(r3)
/* 8003A16C 0000372C  40 81 00 0C */	ble .L_8003A178
/* 8003A170 00003730  7F A3 EB 78 */	mr r3, r29
/* 8003A174 00003734  48 46 6E 65 */	bl fn_804A0FD8
.L_8003A178:
/* 8003A178 00003738  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A17C 0000373C  38 60 00 00 */	li r3, 0x0
/* 8003A180 00003740  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A184 00003744  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8003A188 00003748  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A18C 0000374C  7C 08 03 A6 */	mtlr r0
/* 8003A190 00003750  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A194 00003754  4E 80 00 20 */	blr
.endfn frame

.fn fn_8003A198, local
/* 8003A198 00003758  3C 60 80 4F */	lis r3, lbl_804F5D18@ha
/* 8003A19C 0000375C  3C 80 80 53 */	lis r4, lbl_80528478@ha
/* 8003A1A0 00003760  38 63 5D 18 */	addi r3, r3, lbl_804F5D18@l
/* 8003A1A4 00003764  38 84 84 78 */	addi r4, r4, lbl_80528478@l
/* 8003A1A8 00003768  48 46 69 E8 */	b fn_804A0B90
.endfn fn_8003A198

.fn isExistProperty, global
/* 8003A1AC 0000376C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A1B0 00003770  7C 08 02 A6 */	mflr r0
/* 8003A1B4 00003774  38 80 00 01 */	li r4, 0x1
/* 8003A1B8 00003778  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A1BC 0000377C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A1C0 00003780  7C BF 2B 78 */	mr r31, r5
/* 8003A1C4 00003784  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A1C8 00003788  7C 7E 1B 78 */	mr r30, r3
/* 8003A1CC 0000378C  48 46 6A AD */	bl fn_804A0C78
/* 8003A1D0 00003790  7C 64 1B 78 */	mr r4, r3
/* 8003A1D4 00003794  38 60 00 02 */	li r3, 0x2
/* 8003A1D8 00003798  48 46 6C 95 */	bl fn_804A0E6C
/* 8003A1DC 0000379C  7C 64 1B 78 */	mr r4, r3
/* 8003A1E0 000037A0  7F E3 FB 78 */	mr r3, r31
/* 8003A1E4 000037A4  48 46 76 BD */	bl fn_804A18A0
/* 8003A1E8 000037A8  54 60 0F FE */	srwi r0, r3, 31
/* 8003A1EC 000037AC  7F C3 F3 78 */	mr r3, r30
/* 8003A1F0 000037B0  68 00 00 01 */	xori r0, r0, 0x1
/* 8003A1F4 000037B4  38 81 00 08 */	addi r4, r1, 0x8
/* 8003A1F8 000037B8  7C 00 00 34 */	cntlzw r0, r0
/* 8003A1FC 000037BC  54 05 D9 7E */	srwi r5, r0, 5
/* 8003A200 000037C0  38 05 00 01 */	addi r0, r5, 0x1
/* 8003A204 000037C4  98 01 00 08 */	stb r0, 0x8(r1)
/* 8003A208 000037C8  48 46 6D 95 */	bl fn_804A0F9C
/* 8003A20C 000037CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A210 000037D0  38 60 00 01 */	li r3, 0x1
/* 8003A214 000037D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A218 000037D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A21C 000037DC  7C 08 03 A6 */	mtlr r0
/* 8003A220 000037E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A224 000037E4  4E 80 00 20 */	blr
.endfn isExistProperty

.fn isExistSelector, global
/* 8003A228 000037E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A22C 000037EC  7C 08 02 A6 */	mflr r0
/* 8003A230 000037F0  38 80 00 01 */	li r4, 0x1
/* 8003A234 000037F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A238 000037F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A23C 000037FC  7C BF 2B 78 */	mr r31, r5
/* 8003A240 00003800  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A244 00003804  7C 7E 1B 78 */	mr r30, r3
/* 8003A248 00003808  48 46 6A 31 */	bl fn_804A0C78
/* 8003A24C 0000380C  7C 64 1B 78 */	mr r4, r3
/* 8003A250 00003810  38 60 00 02 */	li r3, 0x2
/* 8003A254 00003814  48 46 6C 19 */	bl fn_804A0E6C
/* 8003A258 00003818  7C 64 1B 78 */	mr r4, r3
/* 8003A25C 0000381C  7F E3 FB 78 */	mr r3, r31
/* 8003A260 00003820  48 46 76 DD */	bl fn_804A193C
/* 8003A264 00003824  54 60 0F FE */	srwi r0, r3, 31
/* 8003A268 00003828  7F C3 F3 78 */	mr r3, r30
/* 8003A26C 0000382C  68 00 00 01 */	xori r0, r0, 0x1
/* 8003A270 00003830  38 81 00 08 */	addi r4, r1, 0x8
/* 8003A274 00003834  7C 00 00 34 */	cntlzw r0, r0
/* 8003A278 00003838  54 05 D9 7E */	srwi r5, r0, 5
/* 8003A27C 0000383C  38 05 00 01 */	addi r0, r5, 0x1
/* 8003A280 00003840  98 01 00 08 */	stb r0, 0x8(r1)
/* 8003A284 00003844  48 46 6D 19 */	bl fn_804A0F9C
/* 8003A288 00003848  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A28C 0000384C  38 60 00 01 */	li r3, 0x1
/* 8003A290 00003850  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A294 00003854  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A298 00003858  7C 08 03 A6 */	mtlr r0
/* 8003A29C 0000385C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A2A0 00003860  4E 80 00 20 */	blr
.endfn isExistSelector

.fn getOCName, global
/* 8003A2A4 00003864  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A2A8 00003868  7C 08 02 A6 */	mflr r0
/* 8003A2AC 0000386C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A2B0 00003870  38 00 00 05 */	li r0, 0x5
/* 8003A2B4 00003874  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A2B8 00003878  7C BF 2B 78 */	mr r31, r5
/* 8003A2BC 0000387C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A2C0 00003880  7C 7E 1B 78 */	mr r30, r3
/* 8003A2C4 00003884  98 01 00 08 */	stb r0, 0x8(r1)
/* 8003A2C8 00003888  80 65 00 00 */	lwz r3, 0x0(r5)
/* 8003A2CC 0000388C  48 27 F2 ED */	bl strlen
/* 8003A2D0 00003890  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8003A2D4 00003894  7F C3 F3 78 */	mr r3, r30
/* 8003A2D8 00003898  38 81 00 08 */	addi r4, r1, 0x8
/* 8003A2DC 0000389C  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 8003A2E0 000038A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003A2E4 000038A4  48 46 6C B9 */	bl fn_804A0F9C
/* 8003A2E8 000038A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A2EC 000038AC  38 60 00 01 */	li r3, 0x1
/* 8003A2F0 000038B0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A2F4 000038B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A2F8 000038B8  7C 08 03 A6 */	mtlr r0
/* 8003A2FC 000038BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A300 000038C0  4E 80 00 20 */	blr
.endfn getOCName

.fn fn_8003A304, local
/* 8003A304 000038C4  3C 60 80 53 */	lis r3, lbl_805284B8@ha
/* 8003A308 000038C8  38 63 84 B8 */	addi r3, r3, lbl_805284B8@l
/* 8003A30C 000038CC  48 46 6D 0C */	b fn_804A1018
.endfn fn_8003A304

.fn thread, global
/* 8003A310 000038D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A314 000038D4  7C 08 02 A6 */	mflr r0
/* 8003A318 000038D8  38 80 00 01 */	li r4, 0x1
/* 8003A31C 000038DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A320 000038E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A324 000038E4  7C BF 2B 78 */	mr r31, r5
/* 8003A328 000038E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8003A32C 000038EC  7C 7E 1B 78 */	mr r30, r3
/* 8003A330 000038F0  48 46 69 49 */	bl fn_804A0C78
/* 8003A334 000038F4  7C 64 1B 78 */	mr r4, r3
/* 8003A338 000038F8  38 60 00 02 */	li r3, 0x2
/* 8003A33C 000038FC  48 46 6B 6D */	bl fn_804A0EA8
/* 8003A340 00003900  7C 64 1B 78 */	mr r4, r3
/* 8003A344 00003904  7F C3 F3 78 */	mr r3, r30
/* 8003A348 00003908  38 A1 00 08 */	addi r5, r1, 0x8
/* 8003A34C 0000390C  48 46 6F A5 */	bl fn_804A12F0
/* 8003A350 00003910  2C 03 00 00 */	cmpwi r3, 0x0
/* 8003A354 00003914  40 82 00 14 */	bne .L_8003A368
/* 8003A358 00003918  7F C3 F3 78 */	mr r3, r30
/* 8003A35C 0000391C  48 46 6E 59 */	bl fn_804A11B4
/* 8003A360 00003920  38 60 00 00 */	li r3, 0x0
/* 8003A364 00003924  48 00 00 28 */	b .L_8003A38C
.L_8003A368:
/* 8003A368 00003928  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8003A36C 0000392C  38 60 00 09 */	li r3, 0x9
/* 8003A370 00003930  98 61 00 10 */	stb r3, 0x10(r1)
/* 8003A374 00003934  7F C3 F3 78 */	mr r3, r30
/* 8003A378 00003938  38 81 00 10 */	addi r4, r1, 0x10
/* 8003A37C 0000393C  B3 E1 00 12 */	sth r31, 0x12(r1)
/* 8003A380 00003940  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A384 00003944  48 46 6C 19 */	bl fn_804A0F9C
/* 8003A388 00003948  38 60 00 01 */	li r3, 0x1
.L_8003A38C:
/* 8003A38C 0000394C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A390 00003950  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A394 00003954  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8003A398 00003958  7C 08 03 A6 */	mtlr r0
/* 8003A39C 0000395C  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A3A0 00003960  4E 80 00 20 */	blr
.endfn thread

.fn start, local
/* 8003A3A4 00003964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A3A8 00003968  7C 08 02 A6 */	mflr r0
/* 8003A3AC 0000396C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A3B0 00003970  48 46 6F AD */	bl fn_804A135C
/* 8003A3B4 00003974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A3B8 00003978  38 60 00 00 */	li r3, 0x0
/* 8003A3BC 0000397C  7C 08 03 A6 */	mtlr r0
/* 8003A3C0 00003980  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A3C4 00003984  4E 80 00 20 */	blr
.endfn start

.fn end, local
/* 8003A3C8 00003988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A3CC 0000398C  7C 08 02 A6 */	mflr r0
/* 8003A3D0 00003990  7C 83 23 78 */	mr r3, r4
/* 8003A3D4 00003994  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A3D8 00003998  48 46 70 89 */	bl fn_804A1460
/* 8003A3DC 0000399C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A3E0 000039A0  38 60 00 00 */	li r3, 0x0
/* 8003A3E4 000039A4  7C 08 03 A6 */	mtlr r0
/* 8003A3E8 000039A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A3EC 000039AC  4E 80 00 20 */	blr
.endfn end

.fn isAlive, global
/* 8003A3F0 000039B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003A3F4 000039B4  7C 08 02 A6 */	mflr r0
/* 8003A3F8 000039B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003A3FC 000039BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8003A400 000039C0  7C 7F 1B 78 */	mr r31, r3
/* 8003A404 000039C4  7C 83 23 78 */	mr r3, r4
/* 8003A408 000039C8  48 46 70 CD */	bl fn_804A14D4
/* 8003A40C 000039CC  7C 60 00 34 */	cntlzw r0, r3
/* 8003A410 000039D0  7F E3 FB 78 */	mr r3, r31
/* 8003A414 000039D4  54 05 D9 7E */	srwi r5, r0, 5
/* 8003A418 000039D8  38 81 00 08 */	addi r4, r1, 0x8
/* 8003A41C 000039DC  38 05 00 01 */	addi r0, r5, 0x1
/* 8003A420 000039E0  98 01 00 08 */	stb r0, 0x8(r1)
/* 8003A424 000039E4  48 46 6B 79 */	bl fn_804A0F9C
/* 8003A428 000039E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8003A42C 000039EC  38 60 00 01 */	li r3, 0x1
/* 8003A430 000039F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003A434 000039F4  7C 08 03 A6 */	mtlr r0
/* 8003A438 000039F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8003A43C 000039FC  4E 80 00 20 */	blr
.endfn isAlive

.fn join, global
/* 8003A440 00003A00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A444 00003A04  7C 08 02 A6 */	mflr r0
/* 8003A448 00003A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A44C 00003A0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003A450 00003A10  7C 7F 1B 78 */	mr r31, r3
/* 8003A454 00003A14  7C 83 23 78 */	mr r3, r4
/* 8003A458 00003A18  48 46 70 7D */	bl fn_804A14D4
/* 8003A45C 00003A1C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8003A460 00003A20  41 82 00 0C */	beq .L_8003A46C
/* 8003A464 00003A24  7F E3 FB 78 */	mr r3, r31
/* 8003A468 00003A28  48 46 6B 71 */	bl fn_804A0FD8
.L_8003A46C:
/* 8003A46C 00003A2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003A470 00003A30  38 60 00 00 */	li r3, 0x0
/* 8003A474 00003A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A478 00003A38  7C 08 03 A6 */	mtlr r0
/* 8003A47C 00003A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A480 00003A40  4E 80 00 20 */	blr
.endfn join

.fn sleep, global
/* 8003A484 00003A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A488 00003A48  7C 08 02 A6 */	mflr r0
/* 8003A48C 00003A4C  7C 83 23 78 */	mr r3, r4
/* 8003A490 00003A50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A494 00003A54  48 46 70 AD */	bl fn_804A1540
/* 8003A498 00003A58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A49C 00003A5C  38 60 00 00 */	li r3, 0x0
/* 8003A4A0 00003A60  7C 08 03 A6 */	mtlr r0
/* 8003A4A4 00003A64  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A4A8 00003A68  4E 80 00 20 */	blr
.endfn sleep

.fn wakeup, global
/* 8003A4AC 00003A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003A4B0 00003A70  7C 08 02 A6 */	mflr r0
/* 8003A4B4 00003A74  7C 83 23 78 */	mr r3, r4
/* 8003A4B8 00003A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003A4BC 00003A7C  48 46 70 FD */	bl fn_804A15B8
/* 8003A4C0 00003A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003A4C4 00003A84  38 60 00 00 */	li r3, 0x0
/* 8003A4C8 00003A88  7C 08 03 A6 */	mtlr r0
/* 8003A4CC 00003A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8003A4D0 00003A90  4E 80 00 20 */	blr
.endfn wakeup

.fn fn_8003A4D4, local
/* 8003A4D4 00003A94  3C 60 80 53 */	lis r3, lbl_80528520@ha
/* 8003A4D8 00003A98  38 63 85 20 */	addi r3, r3, lbl_80528520@l
/* 8003A4DC 00003A9C  48 46 6B A0 */	b fn_804A107C
.endfn fn_8003A4D4

.fn fn_8003A4E0, local
/* 8003A4E0 00003AA0  3C 60 80 57 */	lis r3, lbl_80573CC8@ha
/* 8003A4E4 00003AA4  38 63 3C C8 */	addi r3, r3, lbl_80573CC8@l
/* 8003A4E8 00003AA8  4E 80 00 20 */	blr
.endfn fn_8003A4E0

.fn fn_8003A4EC, local
/* 8003A4EC 00003AAC  3C 60 80 57 */	lis r3, lbl_80573D38@ha
/* 8003A4F0 00003AB0  38 63 3D 38 */	addi r3, r3, lbl_80573D38@l
/* 8003A4F4 00003AB4  4E 80 00 20 */	blr
.endfn fn_8003A4EC

.fn sinit_8003A4F8, global
/* 8003A4F8 00003AB8  3C C0 80 57 */	lis r6, lbl_80573CC8@ha
/* 8003A4FC 00003ABC  3C 80 80 57 */	lis r4, lbl_80573D38@ha
/* 8003A500 00003AC0  38 A6 3C C8 */	addi r5, r6, lbl_80573CC8@l
/* 8003A504 00003AC4  38 E0 00 00 */	li r7, 0x0
/* 8003A508 00003AC8  38 64 3D 38 */	addi r3, r4, lbl_80573D38@l
/* 8003A50C 00003ACC  38 00 00 09 */	li r0, 0x9
/* 8003A510 00003AD0  90 E5 00 10 */	stw r7, 0x10(r5)
/* 8003A514 00003AD4  90 E6 3C C8 */	stw r7, lbl_80573CC8@l(r6)
/* 8003A518 00003AD8  90 E5 00 0C */	stw r7, 0xc(r5)
/* 8003A51C 00003ADC  90 E5 00 08 */	stw r7, 0x8(r5)
/* 8003A520 00003AE0  90 05 00 04 */	stw r0, 0x4(r5)
/* 8003A524 00003AE4  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8003A528 00003AE8  90 E4 3D 38 */	stw r7, lbl_80573D38@l(r4)
/* 8003A52C 00003AEC  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8003A530 00003AF0  90 E3 00 08 */	stw r7, 0x8(r3)
/* 8003A534 00003AF4  90 03 00 04 */	stw r0, 0x4(r3)
/* 8003A538 00003AF8  4E 80 00 20 */	blr
.endfn sinit_8003A4F8

# 0x804F5908 - 0x804F590C
.section .ctors, "a"
.balign 4
	.4byte sinit_8003A4F8

# 0x804F5B88 - 0x804F5D50
.rodata
.balign 8

.obj "@3", local
	.4byte 0x8351815B
	.4byte 0x83808381
	.byte 0x83, 0x43, 0x83
.endobj "@3"
	.4byte 0x93000000
	.byte 0x00
.sym lbl_804F5B98, local
	.4byte 0x73746174
	.4byte 0x69632E61
	.4byte 0x72630000
.sym lbl_804F5BA4, local
	.4byte 0x636F6D6D
	.4byte 0x6F6E2E70
	.4byte 0x6B680000
.sym lbl_804F5BB0, local
	.4byte 0x666F6E74
	.4byte 0x2E706B68
	.4byte 0x00000000
.sym lbl_804F5BBC, local
	.4byte 0x6D656E75
	.4byte 0x2E706B68
	.4byte 0x00000000
.sym lbl_804F5BC8, local
	.4byte 0x73637269
	.4byte 0x70742E70
	.4byte 0x6B680000
.sym lbl_804F5BD4, local
	.4byte 0x776F726B
	.4byte 0x2E706B68
	.4byte 0x00000000

.obj pkhFilenames, global
	.4byte lbl_806683A8
	.4byte lbl_806683B0
	.4byte lbl_806683B8
	.4byte lbl_804F5BA4
	.4byte lbl_806683C0
	.4byte lbl_804F5BB0
	.4byte lbl_806683C8
	.4byte lbl_804F5BBC
	.4byte lbl_806683D0
	.4byte lbl_804F5BC8
	.4byte lbl_806683D8
	.4byte lbl_804F5BD4
	.4byte 0x00000000
.sym lbl_804F5C14, local
	.4byte 0x64766464
	.4byte 0x6174612F
	.4byte 0x6574632F
	.4byte 0x73686164
	.4byte 0x6F772E73
	.4byte 0x68610000
.sym lbl_804F5C2C, local
	.4byte 0x64766464
	.4byte 0x6174612F
	.4byte 0x6574632F
	.4byte 0x63616D2E
	.4byte 0x63687200
.sym lbl_804F5C40, local
	.4byte 0x64766464
	.4byte 0x6174612F
	.4byte 0x6574632F
	.4byte 0x6566662E
	.4byte 0x63687200
.sym lbl_804F5C54, local
	.4byte 0x64766464
	.4byte 0x6174612F
	.4byte 0x6574632F
	.4byte 0x6172726F
	.4byte 0x772E6D64
	.4byte 0x6F000000
	.4byte 0x00000000
.sym lbl_804F5C70, local
	.4byte 0x64766464
	.4byte 0x6174612F
	.4byte 0x6D656E75
	.4byte 0x2F4D6F64
	.4byte 0x6534332E
	.4byte 0x61726300
.sym lbl_804F5C88, local
	.4byte 0x64766464
	.4byte 0x6174612F
	.4byte 0x636F6D6D
	.4byte 0x6F6E2F6A
	.4byte 0x702F6264
	.4byte 0x61742E62
	.4byte 0x696E0000
.sym lbl_804F5CA4, local
	.4byte 0x64766464
	.4byte 0x6174612F
	.4byte 0x6574632F
	.4byte 0x61692E62
	.4byte 0x696E0000
.sym lbl_804F5CB8, local
	.4byte 0x64766464
	.4byte 0x6174612F
	.4byte 0x6574632F
	.4byte 0x68696B61
	.4byte 0x72692E62
	.4byte 0x72726573
	.4byte 0x00000000
	.4byte 0x00000000
.sym lbl_804F5CD8, local
	.4byte 0x64766464
	.4byte 0x6174612F
	.4byte 0x6574632F
	.4byte 0x68626D73
	.4byte 0x746F702E
	.4byte 0x74706C00
.sym lbl_804F5CF0, local
	.4byte 0x70657266
	.4byte 0x6F726D61
	.4byte 0x6E636553
	.4byte 0x74617274
	.4byte 0x00000000
.sym lbl_804F5D04, local
	.4byte 0x70657266
	.4byte 0x6F726D61
	.4byte 0x6E636545
	.4byte 0x6E640000
.sym lbl_804F5D14, local
	.4byte 0x64656200
.sym lbl_804F5D18, local
	.4byte 0x77616974
	.4byte 0x00000000
.sym lbl_804F5D20, local
	.4byte 0x69734578
	.4byte 0x69737450
	.4byte 0x726F7065
	.4byte 0x72747900
.sym lbl_804F5D30, local
	.4byte 0x69734578
	.4byte 0x69737453
	.4byte 0x656C6563
	.4byte 0x746F7200
.sym lbl_804F5D40, local
	.4byte 0x6765744F
	.4byte 0x434E616D
	.4byte 0x65000000
	.4byte 0x00000000

# 0x80528380 - 0x80528530
.data
.balign 8
.sym lbl_80528380, local
	.4byte "@3"
	.4byte GameMain
	.4byte 0x00000000
	.4byte 0x00000000
.sym lbl_80528390, local
	.4byte lbl_806683E0
	.4byte lbl_804F5C14
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_806683E4
	.4byte lbl_804F5C2C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_806683E8
	.4byte lbl_804F5C40
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_806683EC
	.4byte lbl_804F5C54
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_806683F4
	.4byte lbl_804F5C70
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_806683F8
	.4byte lbl_804F5C88
	.4byte 0x00000001
	.4byte fn_80039EFC
	.4byte fn_80039F34
	.4byte lbl_80668400
	.4byte lbl_804F5CA4
	.4byte 0x00000001
	.4byte fn_80039F5C
	.4byte fn_80039F60
	.4byte lbl_80668408
	.4byte lbl_804F5CB8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_80668410
	.4byte lbl_804F5CD8
	.4byte 0x00000001
	.4byte fn_80039F64
	.4byte fn_80039F68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.sym lbl_80528458, local
	.4byte lbl_80668418
	.4byte put
	.4byte lbl_804F5CF0
	.4byte performanceStart
	.4byte lbl_804F5D04
	.4byte performanceEnd
	.4byte 0x00000000
	.4byte 0x00000000
.sym lbl_80528478, local
	.4byte lbl_80668420
	.4byte frame
	.4byte 0x00000000
	.4byte 0x00000000
.sym lbl_80528488, local
	.4byte lbl_804F5D20
	.4byte isExistProperty
	.4byte 0x00000000
	.4byte lbl_804F5D30
	.4byte isExistSelector
	.4byte 0x00000000
	.4byte lbl_804F5D40
	.4byte getOCName
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.sym lbl_805284B8, local
	.4byte lbl_80668428
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte lbl_80528488
.sym lbl_805284C8, local
	.4byte lbl_80668430
	.4byte start
	.4byte 0x00000000
	.4byte lbl_80668438
	.4byte end
	.4byte 0x00000000
	.4byte lbl_80668440
	.4byte isAlive
	.4byte 0x00000000
	.4byte lbl_80668448
	.4byte join
	.4byte 0x00000000
	.4byte lbl_80668450
	.4byte sleep
	.4byte 0x00000000
	.4byte lbl_80668458
	.4byte wakeup
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.sym lbl_80528520, local
	.4byte lbl_80668460
	.4byte thread
	.4byte 0x00000000
	.4byte lbl_805284C8

# 0x80573C80 - 0x80573DD0
.section .bss, "wa", @nobits
.balign 8
	.skip 0x48
.sym lbl_80573CC8, local
	.skip 0x70
.sym lbl_80573D38, local
	.skip 0x98

# 0x806683A0 - 0x80668468
.section .sdata2, "a"
.balign 8

.obj staticArcStr, local
	.4byte lbl_804F5B98
.endobj staticArcStr
	.4byte 0x00000000
.sym lbl_806683A8, local
	.4byte 0x6168782E
	.4byte 0x706B6800
.sym lbl_806683B0, local
	.4byte 0x6164782E
	.4byte 0x706B6800
.sym lbl_806683B8, local
	.4byte 0x6368722E
	.4byte 0x706B6800
.sym lbl_806683C0, local
	.4byte 0x6566662E
	.4byte 0x706B6800
.sym lbl_806683C8, local
	.4byte 0x6D61702E
	.4byte 0x706B6800
.sym lbl_806683D0, local
	.4byte 0x6F626A2E
	.4byte 0x706B6800
.sym lbl_806683D8, local
	.4byte 0x736E642E
	.4byte 0x706B6800
.sym lbl_806683E0, local
	.4byte 0x53484100
.sym lbl_806683E4, local
	.4byte 0x43414D00
.sym lbl_806683E8, local
	.4byte 0x45464600
.sym lbl_806683EC, local
	.4byte 0x4152524F
	.4byte 0x57000000
.sym lbl_806683F4, local
	.4byte 0x34330000
.sym lbl_806683F8, local
	.4byte 0x42444154
	.4byte 0x00000000
.sym lbl_80668400, local
	.4byte 0x41494441
	.4byte 0x54000000
.sym lbl_80668408, local
	.4byte 0x48494B41
	.4byte 0x52490000
.sym lbl_80668410, local
	.4byte 0x48424D53
	.4byte 0x544F5000
.sym lbl_80668418, local
	.4byte 0x70757400
	.4byte 0x00000000
.sym lbl_80668420, local
	.4byte 0x6672616D
	.4byte 0x65000000
.sym lbl_80668428, local
	.4byte 0x6275696C
	.4byte 0x74696E00
.sym lbl_80668430, local
	.4byte 0x73746172
	.4byte 0x74000000
.sym lbl_80668438, local
	.4byte 0x656E6400
	.4byte 0x00000000
.sym lbl_80668440, local
	.4byte 0x6973416C
	.4byte 0x69766500
.sym lbl_80668448, local
	.4byte 0x6A6F696E
	.4byte 0x00000000
.sym lbl_80668450, local
	.4byte 0x736C6565
	.4byte 0x70000000
.sym lbl_80668458, local
	.4byte 0x77616B65
	.4byte 0x75700000
.sym lbl_80668460, local
	.4byte 0x74687265
	.4byte 0x61640000
