.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_802A8DE8, global
/* 802A8DE8 002723A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A8DEC 002723AC  7C 08 02 A6 */	mflr r0
/* 802A8DF0 002723B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A8DF4 002723B4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802A8DF8 002723B8  7C 3F 0B 78 */	mr r31, r1
/* 802A8DFC 002723BC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802A8E00 002723C0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802A8E04 002723C4  7C 9D 23 78 */	mr r29, r4
/* 802A8E08 002723C8  93 81 00 20 */	stw r28, 0x20(r1)
/* 802A8E0C 002723CC  7C 7C 1B 78 */	mr r28, r3
/* 802A8E10 002723D0  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802A8E14 002723D4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802A8E18 002723D8  40 82 00 0C */	bne .L_802A8E24
/* 802A8E1C 002723DC  38 60 00 00 */	li r3, 0
/* 802A8E20 002723E0  48 00 00 A4 */	b .L_802A8EC4
.L_802A8E24:
/* 802A8E24 002723E4  2C 04 00 03 */	cmpwi r4, 3
/* 802A8E28 002723E8  40 80 00 0C */	bge .L_802A8E34
/* 802A8E2C 002723EC  38 60 00 00 */	li r3, 0
/* 802A8E30 002723F0  48 00 00 94 */	b .L_802A8EC4
.L_802A8E34:
/* 802A8E34 002723F4  38 60 00 82 */	li r3, 0x82
/* 802A8E38 002723F8  38 80 00 01 */	li r4, 1
/* 802A8E3C 002723FC  4B FF A4 D1 */	bl func_802A330C
/* 802A8E40 00272400  2C 03 00 00 */	cmpwi r3, 0
/* 802A8E44 00272404  40 82 00 0C */	bne .L_802A8E50
/* 802A8E48 00272408  38 60 00 00 */	li r3, 0
/* 802A8E4C 0027240C  48 00 00 78 */	b .L_802A8EC4
.L_802A8E50:
/* 802A8E50 00272410  38 60 00 28 */	li r3, 0x28
/* 802A8E54 00272414  4B FF A6 91 */	bl func_802A34E4
/* 802A8E58 00272418  2C 03 00 00 */	cmpwi r3, 0
/* 802A8E5C 0027241C  7C 7E 1B 78 */	mr r30, r3
/* 802A8E60 00272420  40 82 00 0C */	bne .L_802A8E6C
/* 802A8E64 00272424  38 60 00 00 */	li r3, 0
/* 802A8E68 00272428  48 00 00 5C */	b .L_802A8EC4
.L_802A8E6C:
/* 802A8E6C 0027242C  41 82 00 34 */	beq .L_802A8EA0
/* 802A8E70 00272430  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 802A8E74 00272434  4B FF AC 0D */	bl func_802A3A80
/* 802A8E78 00272438  3C 60 80 54 */	lis r3, __vt__cf_CVS_THREAD_TENSION_UP@ha
/* 802A8E7C 0027243C  38 63 D4 D4 */	addi r3, r3, __vt__cf_CVS_THREAD_TENSION_UP@l
/* 802A8E80 00272440  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802A8E84 00272444  93 9E 00 20 */	stw r28, 0x20(r30)
/* 802A8E88 00272448  93 BE 00 24 */	stw r29, 0x24(r30)
/* 802A8E8C 0027244C  48 00 00 14 */	b .L_802A8EA0
/* 802A8E90 00272450  38 60 00 00 */	li r3, 0
/* 802A8E94 00272454  38 80 00 00 */	li r4, 0
/* 802A8E98 00272458  38 A0 00 00 */	li r5, 0
/* 802A8E9C 0027245C  48 01 2D 21 */	bl __throw
.L_802A8EA0:
/* 802A8EA0 00272460  3C A0 80 54 */	lis r5, lbl_8053D4B0@ha
/* 802A8EA4 00272464  7F C3 F3 78 */	mr r3, r30
/* 802A8EA8 00272468  38 A5 D4 B0 */	addi r5, r5, lbl_8053D4B0@l
/* 802A8EAC 0027246C  80 05 00 04 */	lwz r0, 4(r5)
/* 802A8EB0 00272470  80 85 00 00 */	lwz r4, 0(r5)
/* 802A8EB4 00272474  90 9E 00 00 */	stw r4, 0(r30)
/* 802A8EB8 00272478  90 1E 00 04 */	stw r0, 4(r30)
/* 802A8EBC 0027247C  80 05 00 08 */	lwz r0, 8(r5)
/* 802A8EC0 00272480  90 1E 00 08 */	stw r0, 8(r30)
.L_802A8EC4:
/* 802A8EC4 00272484  7F EA FB 78 */	mr r10, r31
/* 802A8EC8 00272488  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 802A8ECC 0027248C  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 802A8ED0 00272490  83 AA 00 24 */	lwz r29, 0x24(r10)
/* 802A8ED4 00272494  83 8A 00 20 */	lwz r28, 0x20(r10)
/* 802A8ED8 00272498  81 41 00 00 */	lwz r10, 0(r1)
/* 802A8EDC 0027249C  80 0A 00 04 */	lwz r0, 4(r10)
/* 802A8EE0 002724A0  7D 41 53 78 */	mr r1, r10
/* 802A8EE4 002724A4  7C 08 03 A6 */	mtlr r0
/* 802A8EE8 002724A8  4E 80 00 20 */	blr 
.endfn func_802A8DE8

.fn func_802A8EEC, global
/* 802A8EEC 002724AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8EF0 002724B0  7C 08 02 A6 */	mflr r0
/* 802A8EF4 002724B4  3C A0 80 54 */	lis r5, lbl_8053D4BC@ha
/* 802A8EF8 002724B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8EFC 002724BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8F00 002724C0  7C 7F 1B 78 */	mr r31, r3
/* 802A8F04 002724C4  84 85 D4 BC */	lwzu r4, lbl_8053D4BC@l(r5)
/* 802A8F08 002724C8  80 C3 00 20 */	lwz r6, 0x20(r3)
/* 802A8F0C 002724CC  80 05 00 04 */	lwz r0, 4(r5)
/* 802A8F10 002724D0  90 03 00 04 */	stw r0, 4(r3)
/* 802A8F14 002724D4  2C 06 00 00 */	cmpwi r6, 0
/* 802A8F18 002724D8  90 83 00 00 */	stw r4, 0(r3)
/* 802A8F1C 002724DC  80 05 00 08 */	lwz r0, 8(r5)
/* 802A8F20 002724E0  90 03 00 08 */	stw r0, 8(r3)
/* 802A8F24 002724E4  41 82 00 E4 */	beq .L_802A9008
/* 802A8F28 002724E8  81 86 00 00 */	lwz r12, 0(r6)
/* 802A8F2C 002724EC  7C C3 33 78 */	mr r3, r6
/* 802A8F30 002724F0  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802A8F34 002724F4  7D 89 03 A6 */	mtctr r12
/* 802A8F38 002724F8  4E 80 04 21 */	bctrl 
/* 802A8F3C 002724FC  2C 03 00 00 */	cmpwi r3, 0
/* 802A8F40 00272500  40 82 00 C8 */	bne .L_802A9008
/* 802A8F44 00272504  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 802A8F48 00272508  2C 00 00 04 */	cmpwi r0, 4
/* 802A8F4C 0027250C  40 82 00 28 */	bne .L_802A8F74
/* 802A8F50 00272510  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802A8F54 00272514  2C 04 00 00 */	cmpwi r4, 0
/* 802A8F58 00272518  41 82 00 08 */	beq .L_802A8F60
/* 802A8F5C 0027251C  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A8F60:
/* 802A8F60 00272520  7F E3 FB 78 */	mr r3, r31
/* 802A8F64 00272524  38 A0 05 DE */	li r5, 0x5de
/* 802A8F68 00272528  4B FF AC DD */	bl func_802A3C44
/* 802A8F6C 0027252C  2C 03 00 00 */	cmpwi r3, 0
/* 802A8F70 00272530  40 82 00 AC */	bne .L_802A901C
.L_802A8F74:
/* 802A8F74 00272534  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 802A8F78 00272538  2C 00 00 03 */	cmpwi r0, 3
/* 802A8F7C 0027253C  40 82 00 8C */	bne .L_802A9008
/* 802A8F80 00272540  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802A8F84 00272544  4B FF E8 65 */	bl func_802A77E8
/* 802A8F88 00272548  2C 03 00 04 */	cmpwi r3, 4
/* 802A8F8C 0027254C  41 82 00 0C */	beq .L_802A8F98
/* 802A8F90 00272550  38 00 00 00 */	li r0, 0
/* 802A8F94 00272554  48 00 00 20 */	b .L_802A8FB4
.L_802A8F98:
/* 802A8F98 00272558  4B DD 93 5D */	bl func_800822F4
/* 802A8F9C 0027255C  20 03 00 03 */	subfic r0, r3, 3
/* 802A8FA0 00272560  38 80 00 03 */	li r4, 3
/* 802A8FA4 00272564  7C 83 1B 38 */	orc r3, r4, r3
/* 802A8FA8 00272568  54 00 F8 7E */	srwi r0, r0, 1
/* 802A8FAC 0027256C  7C 00 18 50 */	subf r0, r0, r3
/* 802A8FB0 00272570  54 00 0F FE */	srwi r0, r0, 0x1f
.L_802A8FB4:
/* 802A8FB4 00272574  2C 00 00 00 */	cmpwi r0, 0
/* 802A8FB8 00272578  41 82 00 2C */	beq .L_802A8FE4
/* 802A8FBC 0027257C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802A8FC0 00272580  2C 04 00 00 */	cmpwi r4, 0
/* 802A8FC4 00272584  41 82 00 08 */	beq .L_802A8FCC
/* 802A8FC8 00272588  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A8FCC:
/* 802A8FCC 0027258C  7F E3 FB 78 */	mr r3, r31
/* 802A8FD0 00272590  38 A0 05 DE */	li r5, 0x5de
/* 802A8FD4 00272594  4B FF AC 71 */	bl func_802A3C44
/* 802A8FD8 00272598  2C 03 00 00 */	cmpwi r3, 0
/* 802A8FDC 0027259C  41 82 00 2C */	beq .L_802A9008
/* 802A8FE0 002725A0  48 00 00 3C */	b .L_802A901C
.L_802A8FE4:
/* 802A8FE4 002725A4  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802A8FE8 002725A8  2C 04 00 00 */	cmpwi r4, 0
/* 802A8FEC 002725AC  41 82 00 08 */	beq .L_802A8FF4
/* 802A8FF0 002725B0  38 84 3E 9C */	addi r4, r4, 0x3e9c
.L_802A8FF4:
/* 802A8FF4 002725B4  7F E3 FB 78 */	mr r3, r31
/* 802A8FF8 002725B8  38 A0 05 DD */	li r5, 0x5dd
/* 802A8FFC 002725BC  4B FF AC 49 */	bl func_802A3C44
/* 802A9000 002725C0  2C 03 00 00 */	cmpwi r3, 0
/* 802A9004 002725C4  40 82 00 18 */	bne .L_802A901C
.L_802A9008:
/* 802A9008 002725C8  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A900C 002725CC  7F E3 FB 78 */	mr r3, r31
/* 802A9010 002725D0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A9014 002725D4  7D 89 03 A6 */	mtctr r12
/* 802A9018 002725D8  4E 80 04 21 */	bctrl 
.L_802A901C:
/* 802A901C 002725DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9020 002725E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A9024 002725E4  7C 08 03 A6 */	mtlr r0
/* 802A9028 002725E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A902C 002725EC  4E 80 00 20 */	blr 
.endfn func_802A8EEC

.fn func_802A9030, global
/* 802A9030 002725F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A9034 002725F4  7C 08 02 A6 */	mflr r0
/* 802A9038 002725F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A903C 002725FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A9040 00272600  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802A9044 00272604  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802A9048 00272608  7C 7D 1B 78 */	mr r29, r3
/* 802A904C 0027260C  4B FF AE 3D */	bl func_802A3E88
/* 802A9050 00272610  2C 03 00 00 */	cmpwi r3, 0
/* 802A9054 00272614  40 82 01 C0 */	bne .L_802A9214
/* 802A9058 00272618  3C A0 80 54 */	lis r5, lbl_8053D4C8@ha
/* 802A905C 0027261C  84 85 D4 C8 */	lwzu r4, lbl_8053D4C8@l(r5)
/* 802A9060 00272620  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802A9064 00272624  80 05 00 04 */	lwz r0, 4(r5)
/* 802A9068 00272628  90 1D 00 04 */	stw r0, 4(r29)
/* 802A906C 0027262C  90 9D 00 00 */	stw r4, 0(r29)
/* 802A9070 00272630  80 05 00 08 */	lwz r0, 8(r5)
/* 802A9074 00272634  90 1D 00 08 */	stw r0, 8(r29)
/* 802A9078 00272638  4B FF E9 21 */	bl func_802A7998
/* 802A907C 0027263C  2C 03 00 00 */	cmpwi r3, 0
/* 802A9080 00272640  7C 7F 1B 78 */	mr r31, r3
/* 802A9084 00272644  41 82 01 7C */	beq .L_802A9200
/* 802A9088 00272648  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 802A908C 0027264C  4B FF E7 5D */	bl func_802A77E8
/* 802A9090 00272650  2C 03 00 01 */	cmpwi r3, 1
/* 802A9094 00272654  41 82 00 38 */	beq .L_802A90CC
/* 802A9098 00272658  2C 03 00 02 */	cmpwi r3, 2
/* 802A909C 0027265C  41 82 00 4C */	beq .L_802A90E8
/* 802A90A0 00272660  2C 03 00 03 */	cmpwi r3, 3
/* 802A90A4 00272664  41 82 00 60 */	beq .L_802A9104
/* 802A90A8 00272668  2C 03 00 04 */	cmpwi r3, 4
/* 802A90AC 0027266C  41 82 00 74 */	beq .L_802A9120
/* 802A90B0 00272670  2C 03 00 05 */	cmpwi r3, 5
/* 802A90B4 00272674  41 82 00 88 */	beq .L_802A913C
/* 802A90B8 00272678  2C 03 00 06 */	cmpwi r3, 6
/* 802A90BC 0027267C  41 82 00 9C */	beq .L_802A9158
/* 802A90C0 00272680  2C 03 00 07 */	cmpwi r3, 7
/* 802A90C4 00272684  41 82 00 B0 */	beq .L_802A9174
/* 802A90C8 00272688  48 00 00 C8 */	b .L_802A9190
.L_802A90CC:
/* 802A90CC 0027268C  38 60 00 02 */	li r3, 2
/* 802A90D0 00272690  48 18 CE 2D */	bl mtRand__2mlFi
/* 802A90D4 00272694  2C 03 00 00 */	cmpwi r3, 0
/* 802A90D8 00272698  3B C0 05 E6 */	li r30, 0x5e6
/* 802A90DC 0027269C  41 82 00 B8 */	beq .L_802A9194
/* 802A90E0 002726A0  3B C0 05 DF */	li r30, 0x5df
/* 802A90E4 002726A4  48 00 00 B0 */	b .L_802A9194
.L_802A90E8:
/* 802A90E8 002726A8  38 60 00 02 */	li r3, 2
/* 802A90EC 002726AC  48 18 CE 11 */	bl mtRand__2mlFi
/* 802A90F0 002726B0  2C 03 00 00 */	cmpwi r3, 0
/* 802A90F4 002726B4  3B C0 05 E7 */	li r30, 0x5e7
/* 802A90F8 002726B8  41 82 00 9C */	beq .L_802A9194
/* 802A90FC 002726BC  3B C0 05 E0 */	li r30, 0x5e0
/* 802A9100 002726C0  48 00 00 94 */	b .L_802A9194
.L_802A9104:
/* 802A9104 002726C4  38 60 00 02 */	li r3, 2
/* 802A9108 002726C8  48 18 CD F5 */	bl mtRand__2mlFi
/* 802A910C 002726CC  2C 03 00 00 */	cmpwi r3, 0
/* 802A9110 002726D0  3B C0 05 E8 */	li r30, 0x5e8
/* 802A9114 002726D4  41 82 00 80 */	beq .L_802A9194
/* 802A9118 002726D8  3B C0 05 E1 */	li r30, 0x5e1
/* 802A911C 002726DC  48 00 00 78 */	b .L_802A9194
.L_802A9120:
/* 802A9120 002726E0  38 60 00 02 */	li r3, 2
/* 802A9124 002726E4  48 18 CD D9 */	bl mtRand__2mlFi
/* 802A9128 002726E8  2C 03 00 00 */	cmpwi r3, 0
/* 802A912C 002726EC  3B C0 05 E9 */	li r30, 0x5e9
/* 802A9130 002726F0  41 82 00 64 */	beq .L_802A9194
/* 802A9134 002726F4  3B C0 05 E2 */	li r30, 0x5e2
/* 802A9138 002726F8  48 00 00 5C */	b .L_802A9194
.L_802A913C:
/* 802A913C 002726FC  38 60 00 02 */	li r3, 2
/* 802A9140 00272700  48 18 CD BD */	bl mtRand__2mlFi
/* 802A9144 00272704  2C 03 00 00 */	cmpwi r3, 0
/* 802A9148 00272708  3B C0 05 EA */	li r30, 0x5ea
/* 802A914C 0027270C  41 82 00 48 */	beq .L_802A9194
/* 802A9150 00272710  3B C0 05 E3 */	li r30, 0x5e3
/* 802A9154 00272714  48 00 00 40 */	b .L_802A9194
.L_802A9158:
/* 802A9158 00272718  38 60 00 02 */	li r3, 2
/* 802A915C 0027271C  48 18 CD A1 */	bl mtRand__2mlFi
/* 802A9160 00272720  2C 03 00 00 */	cmpwi r3, 0
/* 802A9164 00272724  3B C0 05 EB */	li r30, 0x5eb
/* 802A9168 00272728  41 82 00 2C */	beq .L_802A9194
/* 802A916C 0027272C  3B C0 05 E4 */	li r30, 0x5e4
/* 802A9170 00272730  48 00 00 24 */	b .L_802A9194
.L_802A9174:
/* 802A9174 00272734  38 60 00 02 */	li r3, 2
/* 802A9178 00272738  48 18 CD 85 */	bl mtRand__2mlFi
/* 802A917C 0027273C  2C 03 00 00 */	cmpwi r3, 0
/* 802A9180 00272740  3B C0 05 EC */	li r30, 0x5ec
/* 802A9184 00272744  41 82 00 10 */	beq .L_802A9194
/* 802A9188 00272748  3B C0 05 E5 */	li r30, 0x5e5
/* 802A918C 0027274C  48 00 00 08 */	b .L_802A9194
.L_802A9190:
/* 802A9190 00272750  3B C0 FF FF */	li r30, -1
.L_802A9194:
/* 802A9194 00272754  2C 1E 05 E4 */	cmpwi r30, 0x5e4
/* 802A9198 00272758  40 82 00 1C */	bne .L_802A91B4
/* 802A919C 0027275C  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 802A91A0 00272760  7F E3 FB 78 */	mr r3, r31
/* 802A91A4 00272764  4B FF E9 ED */	bl func_802A7B90
/* 802A91A8 00272768  2C 03 00 00 */	cmpwi r3, 0
/* 802A91AC 0027276C  41 82 00 08 */	beq .L_802A91B4
/* 802A91B0 00272770  3B C0 08 9F */	li r30, 0x89f
.L_802A91B4:
/* 802A91B4 00272774  2C 1E 05 EB */	cmpwi r30, 0x5eb
/* 802A91B8 00272778  40 82 00 1C */	bne .L_802A91D4
/* 802A91BC 0027277C  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 802A91C0 00272780  7F E3 FB 78 */	mr r3, r31
/* 802A91C4 00272784  4B FF E9 CD */	bl func_802A7B90
/* 802A91C8 00272788  2C 03 00 00 */	cmpwi r3, 0
/* 802A91CC 0027278C  41 82 00 08 */	beq .L_802A91D4
/* 802A91D0 00272790  3B C0 04 51 */	li r30, 0x451
.L_802A91D4:
/* 802A91D4 00272794  2C 1E 00 00 */	cmpwi r30, 0
/* 802A91D8 00272798  40 81 00 28 */	ble .L_802A9200
/* 802A91DC 0027279C  2C 1F 00 00 */	cmpwi r31, 0
/* 802A91E0 002727A0  41 82 00 08 */	beq .L_802A91E8
/* 802A91E4 002727A4  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802A91E8:
/* 802A91E8 002727A8  7F A3 EB 78 */	mr r3, r29
/* 802A91EC 002727AC  7F E4 FB 78 */	mr r4, r31
/* 802A91F0 002727B0  7F C5 F3 78 */	mr r5, r30
/* 802A91F4 002727B4  4B FF AA 51 */	bl func_802A3C44
/* 802A91F8 002727B8  2C 03 00 00 */	cmpwi r3, 0
/* 802A91FC 002727BC  40 82 00 18 */	bne .L_802A9214
.L_802A9200:
/* 802A9200 002727C0  81 9D 00 1C */	lwz r12, 0x1c(r29)
/* 802A9204 002727C4  7F A3 EB 78 */	mr r3, r29
/* 802A9208 002727C8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A920C 002727CC  7D 89 03 A6 */	mtctr r12
/* 802A9210 002727D0  4E 80 04 21 */	bctrl 
.L_802A9214:
/* 802A9214 002727D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A9218 002727D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A921C 002727DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802A9220 002727E0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802A9224 002727E4  7C 08 03 A6 */	mtlr r0
/* 802A9228 002727E8  38 21 00 20 */	addi r1, r1, 0x20
/* 802A922C 002727EC  4E 80 00 20 */	blr 
.endfn func_802A9030

.fn func_802A9230, global
/* 802A9230 002727F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A9234 002727F4  7C 08 02 A6 */	mflr r0
/* 802A9238 002727F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A923C 002727FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9240 00272800  7C 7F 1B 78 */	mr r31, r3
/* 802A9244 00272804  4B FF AC 45 */	bl func_802A3E88
/* 802A9248 00272808  2C 03 00 00 */	cmpwi r3, 0
/* 802A924C 0027280C  40 82 00 18 */	bne .L_802A9264
/* 802A9250 00272810  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802A9254 00272814  7F E3 FB 78 */	mr r3, r31
/* 802A9258 00272818  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A925C 0027281C  7D 89 03 A6 */	mtctr r12
/* 802A9260 00272820  4E 80 04 21 */	bctrl 
.L_802A9264:
/* 802A9264 00272824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A9268 00272828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A926C 0027282C  7C 08 03 A6 */	mtlr r0
/* 802A9270 00272830  38 21 00 10 */	addi r1, r1, 0x10
/* 802A9274 00272834  4E 80 00 20 */	blr 
.endfn func_802A9230

.fn func_802A9278, global
/* 802A9278 00272838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A927C 0027283C  7C 08 02 A6 */	mflr r0
/* 802A9280 00272840  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A9284 00272844  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A9288 00272848  7C 9F 23 78 */	mr r31, r4
/* 802A928C 0027284C  93 C1 00 08 */	stw r30, 8(r1)
/* 802A9290 00272850  7C 7E 1B 78 */	mr r30, r3
/* 802A9294 00272854  4B FF A9 59 */	bl func_802A3BEC
/* 802A9298 00272858  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 802A929C 0027285C  2C 03 00 00 */	cmpwi r3, 0
/* 802A92A0 00272860  41 82 00 08 */	beq .L_802A92A8
/* 802A92A4 00272864  38 63 3E 9C */	addi r3, r3, 0x3e9c
.L_802A92A8:
/* 802A92A8 00272868  7C 03 F8 40 */	cmplw r3, r31
/* 802A92AC 0027286C  40 82 00 0C */	bne .L_802A92B8
/* 802A92B0 00272870  38 00 00 00 */	li r0, 0
/* 802A92B4 00272874  90 1E 00 20 */	stw r0, 0x20(r30)
.L_802A92B8:
/* 802A92B8 00272878  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A92BC 0027287C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A92C0 00272880  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A92C4 00272884  7C 08 03 A6 */	mtlr r0
/* 802A92C8 00272888  38 21 00 10 */	addi r1, r1, 0x10
/* 802A92CC 0027288C  4E 80 00 20 */	blr 
.endfn func_802A9278

.fn func_802A92D0, global
/* 802A92D0 00272890  38 60 00 82 */	li r3, 0x82
/* 802A92D4 00272894  4E 80 00 20 */	blr 
.endfn func_802A92D0

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj cf_CVS_THREAD_TENSION_UP_typestr, global
	.asciz "cf::CVS_THREAD_TENSION_UP"
	.balign 4
	.4byte 0
.endobj cf_CVS_THREAD_TENSION_UP_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj lbl_8053D4B0, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A8EEC
.endobj lbl_8053D4B0

.obj lbl_8053D4BC, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A9030
.endobj lbl_8053D4BC

.obj lbl_8053D4C8, global
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802A9230
.endobj lbl_8053D4C8


.obj __vt__cf_CVS_THREAD_TENSION_UP, global
	.4byte __RTTI__cf_CVS_THREAD_TENSION_UP
	.4byte 0
	.4byte func_802A3B50
	.4byte func_802A9278
	.4byte func_802A92D0
	.4byte func_802A1EA0
	.4byte func_802A3740
.endobj __vt__cf_CVS_THREAD_TENSION_UP

.obj cf_CVS_THREAD_TENSION_UP_hierarchy, global
	.4byte __RTTI__cf_CVS_THREAD
	.4byte 0
	.4byte 0
	.4byte 0
.endobj cf_CVS_THREAD_TENSION_UP_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__cf_CVS_THREAD_TENSION_UP, global
	.4byte cf_CVS_THREAD_TENSION_UP_typestr
	.4byte cf_CVS_THREAD_TENSION_UP_hierarchy
.endobj __RTTI__cf_CVS_THREAD_TENSION_UP

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001AEDC", local
.hidden "@etb_8001AEDC"
	.4byte 0x20180000
	.4byte 0x00000090
	.4byte 0x00000018
	.4byte 0x000000B8
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x90000000
	.4byte 0x00000000
	.4byte 0x000000A8
	.4byte 0x00000008
	.4byte 0x8D000008
.endobj "@etb_8001AEDC"

.obj "@etb_8001AF08", local
.hidden "@etb_8001AF08"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001AF08"

.obj "@etb_8001AF10", local
.hidden "@etb_8001AF10"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001AF10"

.obj "@etb_8001AF18", local
.hidden "@etb_8001AF18"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001AF18"

.obj "@etb_8001AF20", local
.hidden "@etb_8001AF20"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001AF20"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80032D68", local
.hidden "@eti_80032D68"
	.4byte func_802A8DE8
	.4byte 0x00000104
	.4byte "@etb_8001AEDC"
.endobj "@eti_80032D68"

.obj "@eti_80032D74", local
.hidden "@eti_80032D74"
	.4byte func_802A8EEC
	.4byte 0x00000144
	.4byte "@etb_8001AF08"
.endobj "@eti_80032D74"

.obj "@eti_80032D80", local
.hidden "@eti_80032D80"
	.4byte func_802A9030
	.4byte 0x00000200
	.4byte "@etb_8001AF10"
.endobj "@eti_80032D80"

.obj "@eti_80032D8C", local
.hidden "@eti_80032D8C"
	.4byte func_802A9230
	.4byte 0x00000048
	.4byte "@etb_8001AF18"
.endobj "@eti_80032D8C"

.obj "@eti_80032D98", local
.hidden "@eti_80032D98"
	.4byte func_802A9278
	.4byte 0x00000058
	.4byte "@etb_8001AF20"
.endobj "@eti_80032D98"
