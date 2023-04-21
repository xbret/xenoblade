.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CWorkSystem, global
/* 80444418 0040D9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044441C 0040D9DC  7C 08 02 A6 */	mflr r0
/* 80444420 0040D9E0  38 C0 00 20 */	li r6, 0x20
/* 80444424 0040D9E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80444428 0040D9E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044442C 0040D9EC  7C 7F 1B 78 */	mr r31, r3
/* 80444430 0040D9F0  4B FF 31 8D */	bl __ct__CWorkThread
/* 80444434 0040D9F4  3C 60 80 57 */	lis r3, __vt__CWorkSystem@ha
/* 80444438 0040D9F8  38 80 00 00 */	li r4, 0
/* 8044443C 0040D9FC  38 63 F2 68 */	addi r3, r3, __vt__CWorkSystem@l
/* 80444440 0040DA00  38 A0 FF FF */	li r5, -1
/* 80444444 0040DA04  90 7F 00 00 */	stw r3, 0(r31)
/* 80444448 0040DA08  38 00 00 02 */	li r0, 2
/* 8044444C 0040DA0C  7F E3 FB 78 */	mr r3, r31
/* 80444450 0040DA10  90 BF 01 C4 */	stw r5, 0x1c4(r31)
/* 80444454 0040DA14  98 9F 01 C8 */	stb r4, 0x1c8(r31)
/* 80444458 0040DA18  98 9F 01 C9 */	stb r4, 0x1c9(r31)
/* 8044445C 0040DA1C  98 9F 01 CA */	stb r4, 0x1ca(r31)
/* 80444460 0040DA20  93 ED BD 7C */	stw r31, lbl_80667EFC@sda21(r13)
/* 80444464 0040DA24  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80444468 0040DA28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044446C 0040DA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80444470 0040DA30  7C 08 03 A6 */	mtlr r0
/* 80444474 0040DA34  38 21 00 10 */	addi r1, r1, 0x10
/* 80444478 0040DA38  4E 80 00 20 */	blr 
.endfn __ct__CWorkSystem

.fn __dt__CWorkSystem, global
/* 8044447C 0040DA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80444480 0040DA40  7C 08 02 A6 */	mflr r0
/* 80444484 0040DA44  2C 03 00 00 */	cmpwi r3, 0
/* 80444488 0040DA48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8044448C 0040DA4C  BF C1 00 08 */	stmw r30, 8(r1)
/* 80444490 0040DA50  7C 7E 1B 78 */	mr r30, r3
/* 80444494 0040DA54  7C 9F 23 78 */	mr r31, r4
/* 80444498 0040DA58  41 82 00 24 */	beq .L_804444BC
/* 8044449C 0040DA5C  38 00 00 00 */	li r0, 0
/* 804444A0 0040DA60  90 0D BD 7C */	stw r0, lbl_80667EFC@sda21(r13)
/* 804444A4 0040DA64  38 80 00 00 */	li r4, 0
/* 804444A8 0040DA68  4B FF 36 21 */	bl __dt__CWorkThread
/* 804444AC 0040DA6C  2C 1F 00 00 */	cmpwi r31, 0
/* 804444B0 0040DA70  40 81 00 0C */	ble .L_804444BC
/* 804444B4 0040DA74  7F C3 F3 78 */	mr r3, r30
/* 804444B8 0040DA78  4B FF 07 75 */	bl __dl__FPv
.L_804444BC:
/* 804444BC 0040DA7C  7F C3 F3 78 */	mr r3, r30
/* 804444C0 0040DA80  BB C1 00 08 */	lmw r30, 8(r1)
/* 804444C4 0040DA84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804444C8 0040DA88  7C 08 03 A6 */	mtlr r0
/* 804444CC 0040DA8C  38 21 00 10 */	addi r1, r1, 0x10
/* 804444D0 0040DA90  4E 80 00 20 */	blr 
.endfn __dt__CWorkSystem

.fn func_804444D4, global
/* 804444D4 0040DA94  80 6D BD 7C */	lwz r3, lbl_80667EFC@sda21(r13)
/* 804444D8 0040DA98  4E 80 00 20 */	blr 
.endfn func_804444D4

.fn func_804444DC, global
/* 804444DC 0040DA9C  80 8D BD 7C */	lwz r4, lbl_80667EFC@sda21(r13)
/* 804444E0 0040DAA0  2C 04 00 00 */	cmpwi r4, 0
/* 804444E4 0040DAA4  40 82 00 0C */	bne .L_804444F0
/* 804444E8 0040DAA8  38 60 00 00 */	li r3, 0
/* 804444EC 0040DAAC  4E 80 00 20 */	blr
.L_804444F0:
/* 804444F0 0040DAB0  88 04 01 C8 */	lbz r0, 0x1c8(r4)
/* 804444F4 0040DAB4  38 60 00 00 */	li r3, 0
/* 804444F8 0040DAB8  2C 00 00 00 */	cmpwi r0, 0
/* 804444FC 0040DABC  40 82 00 10 */	bne .L_8044450C
/* 80444500 0040DAC0  88 04 01 C9 */	lbz r0, 0x1c9(r4)
/* 80444504 0040DAC4  2C 00 00 00 */	cmpwi r0, 0
/* 80444508 0040DAC8  4D 82 00 20 */	beqlr 
.L_8044450C:
/* 8044450C 0040DACC  38 60 00 01 */	li r3, 1
/* 80444510 0040DAD0  4E 80 00 20 */	blr 
.endfn func_804444DC

.fn func_80444514, global
/* 80444514 0040DAD4  80 6D BD 7C */	lwz r3, lbl_80667EFC@sda21(r13)
/* 80444518 0040DAD8  80 63 01 C4 */	lwz r3, 0x1c4(r3)
/* 8044451C 0040DADC  4E 80 00 20 */	blr 
.endfn func_80444514

.fn func_80444520, global
/* 80444520 0040DAE0  80 8D BD 7C */	lwz r4, lbl_80667EFC@sda21(r13)
/* 80444524 0040DAE4  2C 04 00 00 */	cmpwi r4, 0
/* 80444528 0040DAE8  4D 82 00 20 */	beqlr 
/* 8044452C 0040DAEC  98 64 01 CA */	stb r3, 0x1ca(r4)
/* 80444530 0040DAF0  4E 80 00 20 */	blr 
.endfn func_80444520

.fn CWorkSystem_wkUpdate, global
/* 80444534 0040DAF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80444538 0040DAF8  7C 08 02 A6 */	mflr r0
/* 8044453C 0040DAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80444540 0040DB00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80444544 0040DB04  7C 7F 1B 78 */	mr r31, r3
/* 80444548 0040DB08  88 03 01 CA */	lbz r0, 0x1ca(r3)
/* 8044454C 0040DB0C  2C 00 00 00 */	cmpwi r0, 0
/* 80444550 0040DB10  40 82 00 C4 */	bne .L_80444614
/* 80444554 0040DB14  88 03 01 C8 */	lbz r0, 0x1c8(r3)
/* 80444558 0040DB18  2C 00 00 00 */	cmpwi r0, 0
/* 8044455C 0040DB1C  40 82 00 54 */	bne .L_804445B0
/* 80444560 0040DB20  48 0A 9F 19 */	bl func_804EE478
/* 80444564 0040DB24  2C 03 00 00 */	cmpwi r3, 0
/* 80444568 0040DB28  41 82 00 48 */	beq .L_804445B0
/* 8044456C 0040DB2C  38 00 00 01 */	li r0, 1
/* 80444570 0040DB30  98 1F 01 C8 */	stb r0, 0x1c8(r31)
/* 80444574 0040DB34  48 00 03 09 */	bl func_8044487C
/* 80444578 0040DB38  38 60 00 01 */	li r3, 1
/* 8044457C 0040DB3C  4B F2 1D C5 */	bl VISetBlack
/* 80444580 0040DB40  4B F2 1C 31 */	bl VIFlush
/* 80444584 0040DB44  4B F2 0C 6D */	bl VIWaitForRetrace
/* 80444588 0040DB48  4B F2 0C 69 */	bl VIWaitForRetrace
/* 8044458C 0040DB4C  4B F2 0C 65 */	bl VIWaitForRetrace
/* 80444590 0040DB50  4B F2 0C 61 */	bl VIWaitForRetrace
/* 80444594 0040DB54  4B F2 0C 5D */	bl VIWaitForRetrace
/* 80444598 0040DB58  4B F2 0C 59 */	bl VIWaitForRetrace
/* 8044459C 0040DB5C  3C 60 80 52 */	lis r3, CWorkSystem_strpool@ha
/* 804445A0 0040DB60  38 63 60 B4 */	addi r3, r3, CWorkSystem_strpool@l
/* 804445A4 0040DB64  4C C6 31 82 */	crclr 6
/* 804445A8 0040DB68  4B F1 09 49 */	bl OSReport #exit wii power off
/* 804445AC 0040DB6C  4B F1 5C 25 */	bl OSShutdownSystem
.L_804445B0:
/* 804445B0 0040DB70  88 1F 01 C9 */	lbz r0, 0x1c9(r31)
/* 804445B4 0040DB74  2C 00 00 00 */	cmpwi r0, 0
/* 804445B8 0040DB78  40 82 00 5C */	bne .L_80444614
/* 804445BC 0040DB7C  48 0A 9E D1 */	bl func_804EE48C #OSPanic triggers here when trying to shift Shutdown
/* 804445C0 0040DB80  2C 03 00 00 */	cmpwi r3, 0
/* 804445C4 0040DB84  41 82 00 50 */	beq .L_80444614
/* 804445C8 0040DB88  38 00 00 01 */	li r0, 1
/* 804445CC 0040DB8C  98 1F 01 C9 */	stb r0, 0x1c9(r31)
/* 804445D0 0040DB90  48 00 02 AD */	bl func_8044487C
/* 804445D4 0040DB94  38 60 00 01 */	li r3, 1
/* 804445D8 0040DB98  4B F2 1D 69 */	bl VISetBlack
/* 804445DC 0040DB9C  4B F2 1B D5 */	bl VIFlush
/* 804445E0 0040DBA0  4B F2 0C 11 */	bl VIWaitForRetrace
/* 804445E4 0040DBA4  4B F2 0C 0D */	bl VIWaitForRetrace
/* 804445E8 0040DBA8  4B F2 0C 09 */	bl VIWaitForRetrace
/* 804445EC 0040DBAC  4B F2 0C 05 */	bl VIWaitForRetrace
/* 804445F0 0040DBB0  4B F2 0C 01 */	bl VIWaitForRetrace
/* 804445F4 0040DBB4  4B F2 0B FD */	bl VIWaitForRetrace
/* 804445F8 0040DBB8  3C 60 80 52 */	lis r3, CWorkSystem_strpool@ha
/* 804445FC 0040DBBC  38 63 60 B4 */	addi r3, r3, CWorkSystem_strpool@l
/* 80444600 0040DBC0  38 63 00 14 */	addi r3, r3, 0x14
/* 80444604 0040DBC4  4C C6 31 82 */	crclr 6
/* 80444608 0040DBC8  4B F1 08 E9 */	bl OSReport #exit wii reset
/* 8044460C 0040DBCC  38 60 00 00 */	li r3, 0
/* 80444610 0040DBD0  4B F1 5C E1 */	bl OSRestart
.L_80444614:
/* 80444614 0040DBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80444618 0040DBD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8044461C 0040DBDC  7C 08 03 A6 */	mtlr r0
/* 80444620 0040DBE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80444624 0040DBE4  4E 80 00 20 */	blr 
.endfn CWorkSystem_wkUpdate

.fn CWorkSystem_WorkThreadEvent4, global
/* 80444628 0040DBE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044462C 0040DBEC  7C 08 02 A6 */	mflr r0
/* 80444630 0040DBF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80444634 0040DBF4  BF C1 00 08 */	stmw r30, 8(r1)
/* 80444638 0040DBF8  7C 7E 1B 78 */	mr r30, r3
/* 8044463C 0040DBFC  48 00 9E D9 */	bl func_8044E514
/* 80444640 0040DC00  2C 03 00 00 */	cmpwi r3, 0
/* 80444644 0040DC04  40 82 00 0C */	bne .L_80444650
/* 80444648 0040DC08  38 60 00 00 */	li r3, 0
/* 8044464C 0040DC0C  48 00 01 0C */	b .L_80444758
.L_80444650:
/* 80444650 0040DC10  3C 60 80 52 */	lis r3, CWorkSystem_strpool@ha
/* 80444654 0040DC14  38 63 60 B4 */	addi r3, r3, CWorkSystem_strpool@l
/* 80444658 0040DC18  3B E3 00 24 */	addi r31, r3, 0x24
/* 8044465C 0040DC1C  4B FF 2F 59 */	bl getHeapIndex
/* 80444660 0040DC20  7C 64 1B 78 */	mr r4, r3
/* 80444664 0040DC24  38 60 01 C8 */	li r3, 0x1c8
/* 80444668 0040DC28  4B FF 03 F5 */	bl heap_malloc
/* 8044466C 0040DC2C  2C 03 00 00 */	cmpwi r3, 0
/* 80444670 0040DC30  41 82 00 10 */	beq .L_80444680
/* 80444674 0040DC34  7F E4 FB 78 */	mr r4, r31
/* 80444678 0040DC38  7F C5 F3 78 */	mr r5, r30
/* 8044467C 0040DC3C  48 00 02 3D */	bl __ct__CWorkSystemMem
.L_80444680:
/* 80444680 0040DC40  7F C4 F3 78 */	mr r4, r30
/* 80444684 0040DC44  38 A0 00 00 */	li r5, 0
/* 80444688 0040DC48  4B FF 45 51 */	bl func_80438BD8
/* 8044468C 0040DC4C  48 00 02 E5 */	bl func_80444970
/* 80444690 0040DC50  3C 80 80 52 */	lis r4, CWorkSystem_strpool@ha
/* 80444694 0040DC54  90 7E 01 C4 */	stw r3, 0x1c4(r30)
/* 80444698 0040DC58  38 84 60 B4 */	addi r4, r4, CWorkSystem_strpool@l
/* 8044469C 0040DC5C  3B E4 00 33 */	addi r31, r4, 0x33
/* 804446A0 0040DC60  4B FF 2F 15 */	bl getHeapIndex
/* 804446A4 0040DC64  7C 64 1B 78 */	mr r4, r3
/* 804446A8 0040DC68  38 60 01 E8 */	li r3, 0x1e8
/* 804446AC 0040DC6C  4B FF 03 B1 */	bl heap_malloc
/* 804446B0 0040DC70  2C 03 00 00 */	cmpwi r3, 0
/* 804446B4 0040DC74  41 82 00 10 */	beq .L_804446C4
/* 804446B8 0040DC78  7F E4 FB 78 */	mr r4, r31
/* 804446BC 0040DC7C  7F C5 F3 78 */	mr r5, r30
/* 804446C0 0040DC80  48 09 46 D1 */	bl __ct__CWorkSystemCache
.L_804446C4:
/* 804446C4 0040DC84  7F C4 F3 78 */	mr r4, r30
/* 804446C8 0040DC88  38 A0 00 00 */	li r5, 0
/* 804446CC 0040DC8C  4B FF 45 0D */	bl func_80438BD8
/* 804446D0 0040DC90  3C 60 80 52 */	lis r3, CWorkSystem_strpool@ha
/* 804446D4 0040DC94  38 63 60 B4 */	addi r3, r3, CWorkSystem_strpool@l
/* 804446D8 0040DC98  3B E3 00 44 */	addi r31, r3, 0x44
/* 804446DC 0040DC9C  4B FF 2E D9 */	bl getHeapIndex
/* 804446E0 0040DCA0  7C 64 1B 78 */	mr r4, r3
/* 804446E4 0040DCA4  38 60 02 08 */	li r3, 0x208
/* 804446E8 0040DCA8  4B FF 03 75 */	bl heap_malloc
/* 804446EC 0040DCAC  2C 03 00 00 */	cmpwi r3, 0
/* 804446F0 0040DCB0  41 82 00 10 */	beq .L_80444700
/* 804446F4 0040DCB4  7F E4 FB 78 */	mr r4, r31
/* 804446F8 0040DCB8  7F C5 F3 78 */	mr r5, r30
/* 804446FC 0040DCBC  48 09 91 F9 */	bl __ct__CWorkSystemPack
.L_80444700:
/* 80444700 0040DCC0  7F C4 F3 78 */	mr r4, r30
/* 80444704 0040DCC4  38 A0 00 00 */	li r5, 0
/* 80444708 0040DCC8  4B FF 44 D1 */	bl func_80438BD8
/* 8044470C 0040DCCC  7F C3 F3 78 */	mr r3, r30
/* 80444710 0040DCD0  4B FF 61 11 */	bl __ct__8043A820
/* 80444714 0040DCD4  7F C3 F3 78 */	mr r3, r30
/* 80444718 0040DCD8  4B FF 51 61 */	bl __ct__80439878
/* 8044471C 0040DCDC  7F C3 F3 78 */	mr r3, r30
/* 80444720 0040DCE0  4B FF ED DD */	bl __ct__804434FC
/* 80444724 0040DCE4  38 60 00 00 */	li r3, 0
/* 80444728 0040DCE8  48 01 0C 59 */	bl func_80455380
/* 8044472C 0040DCEC  48 05 22 69 */	bl func_80496994
/* 80444730 0040DCF0  4B FF 75 55 */	bl __ct__CRootProc
/* 80444734 0040DCF4  48 00 98 55 */	bl func_8044DF88
/* 80444738 0040DCF8  38 00 FF FF */	li r0, -1
/* 8044473C 0040DCFC  7C 83 00 38 */	and r3, r4, r0
/* 80444740 0040DD00  4B FF 17 65 */	bl mtInit__2mlFUl
/* 80444744 0040DD04  48 07 82 A9 */	bl func_804BC9EC
/* 80444748 0040DD08  38 80 00 00 */	li r4, 0
/* 8044474C 0040DD0C  48 07 82 A9 */	bl func_804BC9F4
/* 80444750 0040DD10  7F C3 F3 78 */	mr r3, r30
/* 80444754 0040DD14  4B FF 42 A5 */	bl CWorkThread_WorkThreadEvent4
.L_80444758:
/* 80444758 0040DD18  BB C1 00 08 */	lmw r30, 8(r1)
/* 8044475C 0040DD1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80444760 0040DD20  7C 08 03 A6 */	mtlr r0
/* 80444764 0040DD24  38 21 00 10 */	addi r1, r1, 0x10
/* 80444768 0040DD28  4E 80 00 20 */	blr 
.endfn CWorkSystem_WorkThreadEvent4

.fn CWorkSystem_WorkThreadEvent5, global
/* 8044476C 0040DD2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80444770 0040DD30  7C 08 02 A6 */	mflr r0
/* 80444774 0040DD34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80444778 0040DD38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044477C 0040DD3C  7C 7F 1B 78 */	mr r31, r3
/* 80444780 0040DD40  4B FF 53 55 */	bl func_80439AD4
/* 80444784 0040DD44  3C C0 80 52 */	lis r6, CWorkSystem_strpool@ha
/* 80444788 0040DD48  7C 60 00 34 */	cntlzw r0, r3
/* 8044478C 0040DD4C  38 C6 60 B4 */	addi r6, r6, CWorkSystem_strpool@l
/* 80444790 0040DD50  7F E3 FB 78 */	mr r3, r31
/* 80444794 0040DD54  54 05 D9 7E */	srwi r5, r0, 5
/* 80444798 0040DD58  38 80 75 30 */	li r4, 0x7530
/* 8044479C 0040DD5C  38 C6 00 54 */	addi r6, r6, 0x54
/* 804447A0 0040DD60  4B FF 3B F9 */	bl func_80438398
/* 804447A4 0040DD64  4B FF 5A 31 */	bl func_8043A1D4
/* 804447A8 0040DD68  2C 03 00 00 */	cmpwi r3, 0
/* 804447AC 0040DD6C  41 82 00 08 */	beq .L_804447B4
/* 804447B0 0040DD70  48 05 21 E9 */	bl func_80496998
.L_804447B4:
/* 804447B4 0040DD74  7F E3 FB 78 */	mr r3, r31
/* 804447B8 0040DD78  4B FF 53 1D */	bl func_80439AD4
/* 804447BC 0040DD7C  2C 03 00 00 */	cmpwi r3, 0
/* 804447C0 0040DD80  40 82 00 24 */	bne .L_804447E4
/* 804447C4 0040DD84  4B FF 77 55 */	bl func_8043BF18
/* 804447C8 0040DD88  48 07 82 25 */	bl func_804BC9EC
/* 804447CC 0040DD8C  48 07 84 51 */	bl func_804BCC1C
/* 804447D0 0040DD90  38 00 FF FF */	li r0, -1
/* 804447D4 0040DD94  90 1F 01 C4 */	stw r0, 0x1c4(r31)
/* 804447D8 0040DD98  7F E3 FB 78 */	mr r3, r31
/* 804447DC 0040DD9C  4B FF 42 49 */	bl CWorkThread_WorkThreadEvent5
/* 804447E0 0040DDA0  48 00 00 08 */	b .L_804447E8
.L_804447E4:
/* 804447E4 0040DDA4  38 60 00 00 */	li r3, 0
.L_804447E8:
/* 804447E8 0040DDA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804447EC 0040DDAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804447F0 0040DDB0  7C 08 03 A6 */	mtlr r0
/* 804447F4 0040DDB4  38 21 00 10 */	addi r1, r1, 0x10
/* 804447F8 0040DDB8  4E 80 00 20 */	blr 
.endfn CWorkSystem_WorkThreadEvent5

.fn func_804447FC, global
/* 804447FC 0040DDBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80444800 0040DDC0  7C 08 02 A6 */	mflr r0
/* 80444804 0040DDC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80444808 0040DDC8  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 8044480C 0040DDCC  4B FF EF B1 */	bl func_804437BC
/* 80444810 0040DDD0  3C 80 80 52 */	lis r4, CWorkSystem_strpool@ha
/* 80444814 0040DDD4  7C 7E 1B 78 */	mr r30, r3
/* 80444818 0040DDD8  38 84 60 B4 */	addi r4, r4, CWorkSystem_strpool@l
/* 8044481C 0040DDDC  3B E4 00 6D */	addi r31, r4, 0x6d
/* 80444820 0040DDE0  4B FF 2D 95 */	bl getHeapIndex
/* 80444824 0040DDE4  7C 64 1B 78 */	mr r4, r3
/* 80444828 0040DDE8  38 60 01 D0 */	li r3, 0x1d0
/* 8044482C 0040DDEC  4B FF 02 31 */	bl heap_malloc
/* 80444830 0040DDF0  2C 03 00 00 */	cmpwi r3, 0
/* 80444834 0040DDF4  7C 7D 1B 78 */	mr r29, r3
/* 80444838 0040DDF8  41 82 00 14 */	beq .L_8044484C
/* 8044483C 0040DDFC  7F E4 FB 78 */	mr r4, r31
/* 80444840 0040DE00  7F C5 F3 78 */	mr r5, r30
/* 80444844 0040DE04  4B FF FB D5 */	bl __ct__CWorkSystem
/* 80444848 0040DE08  7C 7D 1B 78 */	mr r29, r3
.L_8044484C:
/* 8044484C 0040DE0C  7F A3 EB 78 */	mr r3, r29
/* 80444850 0040DE10  7F C4 F3 78 */	mr r4, r30
/* 80444854 0040DE14  38 A0 00 00 */	li r5, 0
/* 80444858 0040DE18  4B FF 43 81 */	bl func_80438BD8
/* 8044485C 0040DE1C  7F A3 EB 78 */	mr r3, r29
/* 80444860 0040DE20  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 80444864 0040DE24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80444868 0040DE28  7C 08 03 A6 */	mtlr r0
/* 8044486C 0040DE2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80444870 0040DE30  4E 80 00 20 */	blr 
.endfn func_804447FC

.fn func_80444874, global
/* 80444874 0040DE34  90 6D BD 78 */	stw r3, lbl_80667EF8@sda21(r13)
/* 80444878 0040DE38  4E 80 00 20 */	blr 
.endfn func_80444874

.fn func_8044487C, global
/* 8044487C 0040DE3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80444880 0040DE40  7C 08 02 A6 */	mflr r0
/* 80444884 0040DE44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80444888 0040DE48  81 8D BD 78 */	lwz r12, lbl_80667EF8@sda21(r13)
/* 8044488C 0040DE4C  2C 0C 00 00 */	cmpwi r12, 0
/* 80444890 0040DE50  41 82 00 18 */	beq .L_804448A8
/* 80444894 0040DE54  7D 89 03 A6 */	mtctr r12
/* 80444898 0040DE58  4E 80 04 21 */	bctrl 
/* 8044489C 0040DE5C  48 01 51 E5 */	bl func_80459A80
/* 804448A0 0040DE60  48 00 B0 C5 */	bl func_8044F964
/* 804448A4 0040DE64  48 00 21 2D */	bl func_804469D0
.L_804448A8:
/* 804448A8 0040DE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804448AC 0040DE6C  7C 08 03 A6 */	mtlr r0
/* 804448B0 0040DE70  38 21 00 10 */	addi r1, r1, 0x10
/* 804448B4 0040DE74  4E 80 00 20 */	blr 
.endfn func_8044487C


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CWorkSystem_typestr, global
	.asciz "CWorkSystem"
.endobj CWorkSystem_typestr


.obj CWorkSystem_strpool, global
	.asciz "exit wii power off\n"
	.asciz "exit wii reset\n"
	.asciz "CWorkSystemMem"
	.asciz "CWorkSystemCache"
	.asciz "CWorkSystemPack"
	#"ログアウトに失敗しました"
	.4byte 0x838D834F
	.4byte 0x83418345
	.4byte 0x836782C9
	.4byte 0x8EB89473
	.4byte 0x82B582DC
	.4byte 0x82B582BD
	.byte 0x00
	.asciz "CWorkSystem"
	.balign 4
.endobj CWorkSystem_strpool

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CWorkSystem, global
	.4byte __RTTI__CWorkSystem
	.4byte 0
	.4byte __dt__CWorkSystem
	.4byte IWorkEvent_WorkEvent1
	.4byte IWorkEvent_OnFileEvent
	.4byte IWorkEvent_WorkEvent3
	.4byte IWorkEvent_WorkEvent4
	.4byte IWorkEvent_WorkEvent5
	.4byte IWorkEvent_WorkEvent6
	.4byte IWorkEvent_WorkEvent7
	.4byte IWorkEvent_WorkEvent8
	.4byte IWorkEvent_WorkEvent9
	.4byte IWorkEvent_WorkEvent10
	.4byte IWorkEvent_WorkEvent11
	.4byte IWorkEvent_WorkEvent12
	.4byte IWorkEvent_WorkEvent13
	.4byte IWorkEvent_WorkEvent14
	.4byte IWorkEvent_WorkEvent15
	.4byte IWorkEvent_WorkEvent16
	.4byte IWorkEvent_WorkEvent17
	.4byte IWorkEvent_WorkEvent18
	.4byte IWorkEvent_WorkEvent19
	.4byte IWorkEvent_WorkEvent20
	.4byte IWorkEvent_WorkEvent21
	.4byte IWorkEvent_WorkEvent22
	.4byte IWorkEvent_WorkEvent23
	.4byte IWorkEvent_WorkEvent24
	.4byte IWorkEvent_WorkEvent25
	.4byte IWorkEvent_WorkEvent26
	.4byte IWorkEvent_WorkEvent27
	.4byte IWorkEvent_WorkEvent28
	.4byte IWorkEvent_WorkEvent29
	.4byte IWorkEvent_WorkEvent30
	.4byte IWorkEvent_WorkEvent31
	.4byte CWorkSystem_wkUpdate
	.4byte CWorkThread_WorkThreadEvent2
	.4byte CWorkThread_WorkThreadEvent3
	.4byte CWorkSystem_WorkThreadEvent4
	.4byte CWorkSystem_WorkThreadEvent5
	.4byte CWorkThread_WorkThreadEvent6
.endobj __vt__CWorkSystem

.obj CWorkSystem_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte __RTTI__CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CWorkSystem_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CWorkSystem, global
	.4byte CWorkSystem_typestr
	.4byte CWorkSystem_hierarchy
.endobj __RTTI__CWorkSystem

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667EF8, global
	.skip 0x4
.endobj lbl_80667EF8

.obj lbl_80667EFC, global
	.skip 0x4
.endobj lbl_80667EFC

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C838", local
.hidden "@etb_8001C838"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C838"

.obj "@etb_8001C840", local
.hidden "@etb_8001C840"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001C840"

.obj "@etb_8001C848", local
.hidden "@etb_8001C848"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C848"

.obj "@etb_8001C850", local
.hidden "@etb_8001C850"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001C850"

.obj "@etb_8001C858", local
.hidden "@etb_8001C858"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C858"

.obj "@etb_8001C860", local
.hidden "@etb_8001C860"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001C860"

.obj "@etb_8001C868", local
.hidden "@etb_8001C868"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001C868"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034430", local
.hidden "@eti_80034430"
	.4byte __ct__CWorkSystem
	.4byte 0x00000064
	.4byte "@etb_8001C838"
.endobj "@eti_80034430"

.obj "@eti_8003443C", local
.hidden "@eti_8003443C"
	.4byte __dt__CWorkSystem
	.4byte 0x00000058
	.4byte "@etb_8001C840"
.endobj "@eti_8003443C"

.obj "@eti_80034448", local
.hidden "@eti_80034448"
	.4byte CWorkSystem_wkUpdate
	.4byte 0x000000F4
	.4byte "@etb_8001C848"
.endobj "@eti_80034448"

.obj "@eti_80034454", local
.hidden "@eti_80034454"
	.4byte CWorkSystem_WorkThreadEvent4
	.4byte 0x00000144
	.4byte "@etb_8001C850"
.endobj "@eti_80034454"

.obj "@eti_80034460", local
.hidden "@eti_80034460"
	.4byte CWorkSystem_WorkThreadEvent5
	.4byte 0x00000090
	.4byte "@etb_8001C858"
.endobj "@eti_80034460"

.obj "@eti_8003446C", local
.hidden "@eti_8003446C"
	.4byte func_804447FC
	.4byte 0x00000078
	.4byte "@etb_8001C860"
.endobj "@eti_8003446C"

.obj "@eti_80034478", local
.hidden "@eti_80034478"
	.4byte func_8044487C
	.4byte 0x0000003C
	.4byte "@etb_8001C868"
.endobj "@eti_80034478"
