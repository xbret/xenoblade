.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CMainMenu, global
/* 800FEB84 000C8144  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FEB88 000C8148  7C 08 02 A6 */	mflr r0
/* 800FEB8C 000C814C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FEB90 000C8150  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FEB94 000C8154  7C 7F 1B 78 */	mr r31, r3
/* 800FEB98 000C8158  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FEB9C 000C815C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800FEBA0 000C8160  93 81 00 10 */	stw r28, 0x10(r1)
/* 800FEBA4 000C8164  7C 9C 23 78 */	mr r28, r4
/* 800FEBA8 000C8168  48 34 5E 71 */	bl __ct__8CProcessFv
/* 800FEBAC 000C816C  3C 60 80 53 */	lis r3, __vt__CTTask_IUICf@ha
/* 800FEBB0 000C8170  3C A0 80 53 */	lis r5, __vt__CMainMenu@ha
/* 800FEBB4 000C8174  38 63 F7 40 */	addi r3, r3, __vt__CTTask_IUICf@l
/* 800FEBB8 000C8178  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800FEBBC 000C817C  3D 00 80 51 */	lis r8, lbl_8050CE10@ha
/* 800FEBC0 000C8180  38 A5 F5 F4 */	addi r5, r5, __vt__CMainMenu@l
/* 800FEBC4 000C8184  84 C8 CE 10 */	lwzu r6, lbl_8050CE10@l(r8)
/* 800FEBC8 000C8188  38 85 00 24 */	addi r4, r5, 0x24
/* 800FEBCC 000C818C  3B C0 00 00 */	li r30, 0
/* 800FEBD0 000C8190  38 7F 00 60 */	addi r3, r31, 0x60
/* 800FEBD4 000C8194  80 08 00 04 */	lwz r0, 4(r8)
/* 800FEBD8 000C8198  90 1F 00 40 */	stw r0, 0x40(r31)
/* 800FEBDC 000C819C  38 05 00 AC */	addi r0, r5, 0xac
/* 800FEBE0 000C81A0  90 DF 00 3C */	stw r6, 0x3c(r31)
/* 800FEBE4 000C81A4  80 C8 00 08 */	lwz r6, 8(r8)
/* 800FEBE8 000C81A8  90 DF 00 44 */	stw r6, 0x44(r31)
/* 800FEBEC 000C81AC  80 E8 00 00 */	lwz r7, 0(r8)
/* 800FEBF0 000C81B0  80 C8 00 04 */	lwz r6, 4(r8)
/* 800FEBF4 000C81B4  90 DF 00 4C */	stw r6, 0x4c(r31)
/* 800FEBF8 000C81B8  90 FF 00 48 */	stw r7, 0x48(r31)
/* 800FEBFC 000C81BC  80 C8 00 08 */	lwz r6, 8(r8)
/* 800FEC00 000C81C0  90 DF 00 50 */	stw r6, 0x50(r31)
/* 800FEC04 000C81C4  9B DF 00 54 */	stb r30, 0x54(r31)
/* 800FEC08 000C81C8  9B DF 00 55 */	stb r30, 0x55(r31)
/* 800FEC0C 000C81CC  90 BF 00 10 */	stw r5, 0x10(r31)
/* 800FEC10 000C81D0  90 9F 00 58 */	stw r4, 0x58(r31)
/* 800FEC14 000C81D4  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 800FEC18 000C81D8  48 36 09 4D */	bl __ct__8045F564
/* 800FEC1C 000C81DC  3B BF 00 90 */	addi r29, r31, 0x90
/* 800FEC20 000C81E0  93 9F 00 70 */	stw r28, 0x70(r31)
/* 800FEC24 000C81E4  38 80 00 00 */	li r4, 0
/* 800FEC28 000C81E8  93 DF 00 74 */	stw r30, 0x74(r31)
/* 800FEC2C 000C81EC  7F A3 EB 78 */	mr r3, r29
/* 800FEC30 000C81F0  93 DF 00 78 */	stw r30, 0x78(r31)
/* 800FEC34 000C81F4  93 DF 00 7C */	stw r30, 0x7c(r31)
/* 800FEC38 000C81F8  93 DF 00 80 */	stw r30, 0x80(r31)
/* 800FEC3C 000C81FC  93 DF 00 84 */	stw r30, 0x84(r31)
/* 800FEC40 000C8200  93 DF 00 88 */	stw r30, 0x88(r31)
/* 800FEC44 000C8204  93 DF 00 8C */	stw r30, 0x8c(r31)
/* 800FEC48 000C8208  48 0D 33 79 */	bl func_801D1FC0
/* 800FEC4C 000C820C  3C 80 80 53 */	lis r4, __vt__CMainCur@ha
/* 800FEC50 000C8210  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 800FEC54 000C8214  38 84 F6 F8 */	addi r4, r4, __vt__CMainCur@l
/* 800FEC58 000C8218  90 9D 00 00 */	stw r4, 0(r29)
/* 800FEC5C 000C821C  38 80 00 00 */	li r4, 0
/* 800FEC60 000C8220  48 0D 40 ED */	bl func_801D2D4C
/* 800FEC64 000C8224  38 00 00 03 */	li r0, 3
/* 800FEC68 000C8228  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 800FEC6C 000C822C  3C A0 80 53 */	lis r5, lbl_8052F5B8@ha
/* 800FEC70 000C8230  7F E3 FB 78 */	mr r3, r31
/* 800FEC74 000C8234  93 DF 00 C4 */	stw r30, 0xc4(r31)
/* 800FEC78 000C8238  93 DF 00 E0 */	stw r30, 0xe0(r31)
/* 800FEC7C 000C823C  84 85 F5 B8 */	lwzu r4, lbl_8052F5B8@l(r5)
/* 800FEC80 000C8240  80 05 00 04 */	lwz r0, 4(r5)
/* 800FEC84 000C8244  90 1F 00 40 */	stw r0, 0x40(r31)
/* 800FEC88 000C8248  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 800FEC8C 000C824C  80 05 00 08 */	lwz r0, 8(r5)
/* 800FEC90 000C8250  90 1F 00 44 */	stw r0, 0x44(r31)
/* 800FEC94 000C8254  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FEC98 000C8258  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FEC9C 000C825C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800FECA0 000C8260  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800FECA4 000C8264  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FECA8 000C8268  7C 08 03 A6 */	mtlr r0
/* 800FECAC 000C826C  38 21 00 20 */	addi r1, r1, 0x20
/* 800FECB0 000C8270  4E 80 00 20 */	blr 
.endfn __ct__CMainMenu

.fn __dt__CTTask_IUICf, global
/* 800FECB4 000C8274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FECB8 000C8278  7C 08 02 A6 */	mflr r0
/* 800FECBC 000C827C  2C 03 00 00 */	cmpwi r3, 0
/* 800FECC0 000C8280  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FECC4 000C8284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FECC8 000C8288  7C 9F 23 78 */	mr r31, r4
/* 800FECCC 000C828C  93 C1 00 08 */	stw r30, 8(r1)
/* 800FECD0 000C8290  7C 7E 1B 78 */	mr r30, r3
/* 800FECD4 000C8294  41 82 00 1C */	beq .L_800FECF0
/* 800FECD8 000C8298  38 80 00 00 */	li r4, 0
/* 800FECDC 000C829C  48 34 5E 5D */	bl __dt__CProcess
/* 800FECE0 000C82A0  2C 1F 00 00 */	cmpwi r31, 0
/* 800FECE4 000C82A4  40 81 00 0C */	ble .L_800FECF0
/* 800FECE8 000C82A8  7F C3 F3 78 */	mr r3, r30
/* 800FECEC 000C82AC  48 33 5F 41 */	bl __dl__FPv
.L_800FECF0:
/* 800FECF0 000C82B0  7F C3 F3 78 */	mr r3, r30
/* 800FECF4 000C82B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FECF8 000C82B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FECFC 000C82BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FED00 000C82C0  7C 08 03 A6 */	mtlr r0
/* 800FED04 000C82C4  38 21 00 10 */	addi r1, r1, 0x10
/* 800FED08 000C82C8  4E 80 00 20 */	blr 
.endfn __dt__CTTask_IUICf

.fn __dt__800FED0C, global
/* 800FED0C 000C82CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FED10 000C82D0  7C 08 02 A6 */	mflr r0
/* 800FED14 000C82D4  2C 03 00 00 */	cmpwi r3, 0
/* 800FED18 000C82D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FED1C 000C82DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FED20 000C82E0  7C 9F 23 78 */	mr r31, r4
/* 800FED24 000C82E4  93 C1 00 08 */	stw r30, 8(r1)
/* 800FED28 000C82E8  7C 7E 1B 78 */	mr r30, r3
/* 800FED2C 000C82EC  41 82 00 20 */	beq .L_800FED4C
/* 800FED30 000C82F0  41 82 00 0C */	beq .L_800FED3C
/* 800FED34 000C82F4  38 80 00 00 */	li r4, 0
/* 800FED38 000C82F8  48 34 5E 01 */	bl __dt__CProcess
.L_800FED3C:
/* 800FED3C 000C82FC  2C 1F 00 00 */	cmpwi r31, 0
/* 800FED40 000C8300  40 81 00 0C */	ble .L_800FED4C
/* 800FED44 000C8304  7F C3 F3 78 */	mr r3, r30
/* 800FED48 000C8308  48 33 5E E5 */	bl __dl__FPv
.L_800FED4C:
/* 800FED4C 000C830C  7F C3 F3 78 */	mr r3, r30
/* 800FED50 000C8310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FED54 000C8314  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FED58 000C8318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FED5C 000C831C  7C 08 03 A6 */	mtlr r0
/* 800FED60 000C8320  38 21 00 10 */	addi r1, r1, 0x10
/* 800FED64 000C8324  4E 80 00 20 */	blr
.endfn __dt__800FED0C

.fn __dt__CMainMenu, global
/* 800FED68 000C8328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FED6C 000C832C  7C 08 02 A6 */	mflr r0
/* 800FED70 000C8330  2C 03 00 00 */	cmpwi r3, 0
/* 800FED74 000C8334  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FED78 000C8338  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FED7C 000C833C  7C 9F 23 78 */	mr r31, r4
/* 800FED80 000C8340  93 C1 00 08 */	stw r30, 8(r1)
/* 800FED84 000C8344  7C 7E 1B 78 */	mr r30, r3
/* 800FED88 000C8348  41 82 00 54 */	beq .L_800FEDDC
/* 800FED8C 000C834C  38 80 FF FF */	li r4, -1
/* 800FED90 000C8350  38 63 00 A8 */	addi r3, r3, 0xa8
/* 800FED94 000C8354  48 0D 3F F5 */	bl __dt__801D2D88
/* 800FED98 000C8358  34 7E 00 90 */	addic. r3, r30, 0x90
/* 800FED9C 000C835C  41 82 00 0C */	beq .L_800FEDA8
/* 800FEDA0 000C8360  38 80 00 00 */	li r4, 0
/* 800FEDA4 000C8364  48 0D 32 49 */	bl __dt__801D1FEC
.L_800FEDA8:
/* 800FEDA8 000C8368  38 7E 00 60 */	addi r3, r30, 0x60
/* 800FEDAC 000C836C  38 80 FF FF */	li r4, -1
/* 800FEDB0 000C8370  48 36 07 D1 */	bl __dt__8045F580
/* 800FEDB4 000C8374  2C 1E 00 00 */	cmpwi r30, 0
/* 800FEDB8 000C8378  41 82 00 14 */	beq .L_800FEDCC
/* 800FEDBC 000C837C  41 82 00 10 */	beq .L_800FEDCC
/* 800FEDC0 000C8380  7F C3 F3 78 */	mr r3, r30
/* 800FEDC4 000C8384  38 80 00 00 */	li r4, 0
/* 800FEDC8 000C8388  48 34 5D 71 */	bl __dt__CProcess
.L_800FEDCC:
/* 800FEDCC 000C838C  2C 1F 00 00 */	cmpwi r31, 0
/* 800FEDD0 000C8390  40 81 00 0C */	ble .L_800FEDDC
/* 800FEDD4 000C8394  7F C3 F3 78 */	mr r3, r30
/* 800FEDD8 000C8398  48 33 5E 55 */	bl __dl__FPv
.L_800FEDDC:
/* 800FEDDC 000C839C  7F C3 F3 78 */	mr r3, r30
/* 800FEDE0 000C83A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FEDE4 000C83A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FEDE8 000C83A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FEDEC 000C83AC  7C 08 03 A6 */	mtlr r0
/* 800FEDF0 000C83B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800FEDF4 000C83B4  4E 80 00 20 */	blr 
.endfn __dt__CMainMenu

.fn func_800FEDF8, global
/* 800FEDF8 000C83B8  80 6D A6 90 */	lwz r3, lbl_80666810@sda21(r13)
/* 800FEDFC 000C83BC  4E 80 00 20 */	blr 
.endfn func_800FEDF8

.fn func_800FEE00, global
/* 800FEE00 000C83C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FEE04 000C83C4  7C 08 02 A6 */	mflr r0
/* 800FEE08 000C83C8  2C 03 00 00 */	cmpwi r3, 0
/* 800FEE0C 000C83CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FEE10 000C83D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FEE14 000C83D4  93 C1 00 08 */	stw r30, 8(r1)
/* 800FEE18 000C83D8  7C 7E 1B 78 */	mr r30, r3
/* 800FEE1C 000C83DC  7F DF F3 78 */	mr r31, r30
/* 800FEE20 000C83E0  41 82 00 08 */	beq .L_800FEE28
/* 800FEE24 000C83E4  3B E3 00 58 */	addi r31, r3, 0x58
.L_800FEE28:
/* 800FEE28 000C83E8  48 33 55 79 */	bl func_804343A0
/* 800FEE2C 000C83EC  80 8D 85 38 */	lwz r4, lbl_806646B8@sda21(r13)
/* 800FEE30 000C83F0  7F E5 FB 78 */	mr r5, r31
/* 800FEE34 000C83F4  38 C0 00 00 */	li r6, 0
/* 800FEE38 000C83F8  38 E0 00 00 */	li r7, 0
/* 800FEE3C 000C83FC  48 34 F9 59 */	bl func_8044E794
/* 800FEE40 000C8400  90 7E 00 74 */	stw r3, 0x74(r30)
/* 800FEE44 000C8404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FEE48 000C8408  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FEE4C 000C840C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FEE50 000C8410  7C 08 03 A6 */	mtlr r0
/* 800FEE54 000C8414  38 21 00 10 */	addi r1, r1, 0x10
/* 800FEE58 000C8418  4E 80 00 20 */	blr 
.endfn func_800FEE00

.fn func_800FEE5C, global
/* 800FEE5C 000C841C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FEE60 000C8420  7C 08 02 A6 */	mflr r0
/* 800FEE64 000C8424  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FEE68 000C8428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FEE6C 000C842C  93 C1 00 08 */	stw r30, 8(r1)
/* 800FEE70 000C8430  7C 7E 1B 78 */	mr r30, r3
/* 800FEE74 000C8434  48 34 9B D1 */	bl func_80448A44
/* 800FEE78 000C8438  2C 1E 00 00 */	cmpwi r30, 0
/* 800FEE7C 000C843C  7F C4 F3 78 */	mr r4, r30
/* 800FEE80 000C8440  41 82 00 08 */	beq .L_800FEE88
/* 800FEE84 000C8444  38 9E 00 5C */	addi r4, r30, 0x5c
.L_800FEE88:
/* 800FEE88 000C8448  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 800FEE8C 000C844C  48 39 70 C5 */	bl func_80495F50
/* 800FEE90 000C8450  38 7E 00 74 */	addi r3, r30, 0x74
/* 800FEE94 000C8454  48 03 A2 4D */	bl func_801390E0
/* 800FEE98 000C8458  81 9E 00 90 */	lwz r12, 0x90(r30)
/* 800FEE9C 000C845C  38 7E 00 90 */	addi r3, r30, 0x90
/* 800FEEA0 000C8460  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800FEEA4 000C8464  7D 89 03 A6 */	mtctr r12
/* 800FEEA8 000C8468  4E 80 04 21 */	bctrl 
/* 800FEEAC 000C846C  81 9E 00 A8 */	lwz r12, 0xa8(r30)
/* 800FEEB0 000C8470  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 800FEEB4 000C8474  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800FEEB8 000C8478  7D 89 03 A6 */	mtctr r12
/* 800FEEBC 000C847C  4E 80 04 21 */	bctrl 
/* 800FEEC0 000C8480  80 7E 00 7C */	lwz r3, 0x7c(r30)
/* 800FEEC4 000C8484  2C 03 00 00 */	cmpwi r3, 0
/* 800FEEC8 000C8488  41 82 00 24 */	beq .L_800FEEEC
/* 800FEECC 000C848C  41 82 00 18 */	beq .L_800FEEE4
/* 800FEED0 000C8490  81 83 00 00 */	lwz r12, 0(r3)
/* 800FEED4 000C8494  38 80 00 01 */	li r4, 1
/* 800FEED8 000C8498  81 8C 00 08 */	lwz r12, 8(r12)
/* 800FEEDC 000C849C  7D 89 03 A6 */	mtctr r12
/* 800FEEE0 000C84A0  4E 80 04 21 */	bctrl 
.L_800FEEE4:
/* 800FEEE4 000C84A4  38 00 00 00 */	li r0, 0
/* 800FEEE8 000C84A8  90 1E 00 7C */	stw r0, 0x7c(r30)
.L_800FEEEC:
/* 800FEEEC 000C84AC  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 800FEEF0 000C84B0  48 03 A2 35 */	bl func_80139124
/* 800FEEF4 000C84B4  3B E0 00 00 */	li r31, 0
/* 800FEEF8 000C84B8  93 FE 00 78 */	stw r31, 0x78(r30)
/* 800FEEFC 000C84BC  38 7E 00 60 */	addi r3, r30, 0x60
/* 800FEF00 000C84C0  48 36 08 79 */	bl func_8045F778
/* 800FEF04 000C84C4  93 ED A6 90 */	stw r31, lbl_80666810@sda21(r13)
/* 800FEF08 000C84C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FEF0C 000C84CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FEF10 000C84D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FEF14 000C84D4  7C 08 03 A6 */	mtlr r0
/* 800FEF18 000C84D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800FEF1C 000C84DC  4E 80 00 20 */	blr 
.endfn func_800FEE5C

.fn func_800FEF20, global
/* 800FEF20 000C84E0  80 03 00 74 */	lwz r0, 0x74(r3)
/* 800FEF24 000C84E4  2C 00 00 00 */	cmpwi r0, 0
/* 800FEF28 000C84E8  4C 82 00 20 */	bnelr 
/* 800FEF2C 000C84EC  3C A0 80 53 */	lis r5, lbl_8052F5C4@ha
/* 800FEF30 000C84F0  84 85 F5 C4 */	lwzu r4, lbl_8052F5C4@l(r5)
/* 800FEF34 000C84F4  80 05 00 04 */	lwz r0, 4(r5)
/* 800FEF38 000C84F8  90 03 00 40 */	stw r0, 0x40(r3)
/* 800FEF3C 000C84FC  90 83 00 3C */	stw r4, 0x3c(r3)
/* 800FEF40 000C8500  80 05 00 08 */	lwz r0, 8(r5)
/* 800FEF44 000C8504  90 03 00 44 */	stw r0, 0x44(r3)
/* 800FEF48 000C8508  4E 80 00 20 */	blr 
.endfn func_800FEF20

.fn func_800FEF4C, global
/* 800FEF4C 000C850C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800FEF50 000C8510  7C 08 02 A6 */	mflr r0
/* 800FEF54 000C8514  90 01 00 24 */	stw r0, 0x24(r1)
/* 800FEF58 000C8518  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FEF5C 000C851C  7C 7F 1B 78 */	mr r31, r3
/* 800FEF60 000C8520  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FEF64 000C8524  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800FEF68 000C8528  93 81 00 10 */	stw r28, 0x10(r1)
/* 800FEF6C 000C852C  48 03 CE E5 */	bl func_8013BE50
/* 800FEF70 000C8530  2C 03 00 00 */	cmpwi r3, 0
/* 800FEF74 000C8534  41 82 03 6C */	beq .L_800FF2E0
/* 800FEF78 000C8538  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 800FEF7C 000C853C  74 00 AF E4 */	andis. r0, r0, 0xafe4
/* 800FEF80 000C8540  41 82 00 10 */	beq .L_800FEF90
/* 800FEF84 000C8544  38 00 00 01 */	li r0, 1
/* 800FEF88 000C8548  98 1F 00 54 */	stb r0, 0x54(r31)
/* 800FEF8C 000C854C  48 00 03 54 */	b .L_800FF2E0
.L_800FEF90:
/* 800FEF90 000C8550  48 17 FA D5 */	bl func_8027EA64
/* 800FEF94 000C8554  2C 03 00 00 */	cmpwi r3, 0
/* 800FEF98 000C8558  40 82 03 48 */	bne .L_800FF2E0
/* 800FEF9C 000C855C  48 17 5A E1 */	bl func_80274A7C
/* 800FEFA0 000C8560  2C 03 00 00 */	cmpwi r3, 0
/* 800FEFA4 000C8564  40 82 03 3C */	bne .L_800FF2E0
/* 800FEFA8 000C8568  48 09 3C 29 */	bl func_80192BD0
/* 800FEFAC 000C856C  2C 03 00 00 */	cmpwi r3, 0
/* 800FEFB0 000C8570  40 82 03 30 */	bne .L_800FF2E0
/* 800FEFB4 000C8574  48 06 8A 65 */	bl func_80167A18
/* 800FEFB8 000C8578  2C 03 00 00 */	cmpwi r3, 0
/* 800FEFBC 000C857C  40 82 03 24 */	bne .L_800FF2E0
/* 800FEFC0 000C8580  48 01 DD 9D */	bl func_8011CD5C
/* 800FEFC4 000C8584  2C 03 00 00 */	cmpwi r3, 0
/* 800FEFC8 000C8588  40 82 03 18 */	bne .L_800FF2E0
/* 800FEFCC 000C858C  48 11 34 B5 */	bl func_80212480
/* 800FEFD0 000C8590  2C 03 00 00 */	cmpwi r3, 0
/* 800FEFD4 000C8594  40 82 03 0C */	bne .L_800FF2E0
/* 800FEFD8 000C8598  48 13 05 59 */	bl func_8022F530
/* 800FEFDC 000C859C  2C 03 00 00 */	cmpwi r3, 0
/* 800FEFE0 000C85A0  40 82 03 00 */	bne .L_800FF2E0
/* 800FEFE4 000C85A4  48 14 33 71 */	bl func_80242354
/* 800FEFE8 000C85A8  2C 03 00 00 */	cmpwi r3, 0
/* 800FEFEC 000C85AC  40 82 02 F4 */	bne .L_800FF2E0
/* 800FEFF0 000C85B0  48 15 3C E5 */	bl func_80252CD4
/* 800FEFF4 000C85B4  2C 03 00 00 */	cmpwi r3, 0
/* 800FEFF8 000C85B8  40 82 02 E8 */	bne .L_800FF2E0
/* 800FEFFC 000C85BC  48 15 83 0D */	bl func_80257308
/* 800FF000 000C85C0  2C 03 00 00 */	cmpwi r3, 0
/* 800FF004 000C85C4  40 82 02 DC */	bne .L_800FF2E0
/* 800FF008 000C85C8  48 16 49 3D */	bl func_80263944
/* 800FF00C 000C85CC  2C 03 00 00 */	cmpwi r3, 0
/* 800FF010 000C85D0  40 82 02 D0 */	bne .L_800FF2E0
/* 800FF014 000C85D4  48 17 13 69 */	bl func_8027037C
/* 800FF018 000C85D8  2C 03 00 00 */	cmpwi r3, 0
/* 800FF01C 000C85DC  40 82 02 C4 */	bne .L_800FF2E0
/* 800FF020 000C85E0  48 17 34 69 */	bl func_80272488
/* 800FF024 000C85E4  2C 03 00 00 */	cmpwi r3, 0
/* 800FF028 000C85E8  40 82 02 B8 */	bne .L_800FF2E0
/* 800FF02C 000C85EC  48 18 F4 15 */	bl func_8028E440
/* 800FF030 000C85F0  2C 03 00 00 */	cmpwi r3, 0
/* 800FF034 000C85F4  40 82 02 AC */	bne .L_800FF2E0
/* 800FF038 000C85F8  48 19 CB 69 */	bl func_8029BBA0
/* 800FF03C 000C85FC  2C 03 00 00 */	cmpwi r3, 0
/* 800FF040 000C8600  40 82 02 A0 */	bne .L_800FF2E0
/* 800FF044 000C8604  48 19 FE 15 */	bl func_8029EE58
/* 800FF048 000C8608  2C 03 00 00 */	cmpwi r3, 0
/* 800FF04C 000C860C  40 82 02 94 */	bne .L_800FF2E0
/* 800FF050 000C8610  48 1A D4 C1 */	bl func_802AC510
/* 800FF054 000C8614  2C 03 00 00 */	cmpwi r3, 0
/* 800FF058 000C8618  40 82 02 88 */	bne .L_800FF2E0
/* 800FF05C 000C861C  7F E3 FB 78 */	mr r3, r31
/* 800FF060 000C8620  48 00 2B 99 */	bl func_80101BF8
/* 800FF064 000C8624  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 800FF068 000C8628  28 00 00 08 */	cmplwi r0, 8
/* 800FF06C 000C862C  41 81 02 4C */	bgt .L_800FF2B8
/* 800FF070 000C8630  3C 60 80 53 */	lis r3, jumptable_8052F5D0@ha
/* 800FF074 000C8634  54 00 10 3A */	slwi r0, r0, 2
/* 800FF078 000C8638  38 63 F5 D0 */	addi r3, r3, jumptable_8052F5D0@l
/* 800FF07C 000C863C  7C 63 00 2E */	lwzx r3, r3, r0
/* 800FF080 000C8640  7C 69 03 A6 */	mtctr r3
/* 800FF084 000C8644  4E 80 04 20 */	bctr
.L_800FF088:
/* 800FF088 000C8648  38 60 00 08 */	li r3, 8
/* 800FF08C 000C864C  48 03 8F ED */	bl func_80138078
/* 800FF090 000C8650  38 00 00 01 */	li r0, 1
/* 800FF094 000C8654  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 800FF098 000C8658  48 00 02 20 */	b .L_800FF2B8
.L_800FF09C:
/* 800FF09C 000C865C  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 800FF0A0 000C8660  C0 22 94 60 */	lfs f1, float_806697E0@sda21(r2)
/* 800FF0A4 000C8664  48 03 83 A1 */	bl func_80137444
/* 800FF0A8 000C8668  2C 03 00 00 */	cmpwi r3, 0
/* 800FF0AC 000C866C  41 82 02 0C */	beq .L_800FF2B8
/* 800FF0B0 000C8670  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 800FF0B4 000C8674  37 83 00 01 */	addic. r28, r3, 1
/* 800FF0B8 000C8678  40 81 00 60 */	ble .L_800FF118
/* 800FF0BC 000C867C  3F C0 80 50 */	lis r30, CMainMenu_strpool@ha
/* 800FF0C0 000C8680  7F 85 E3 78 */	mr r5, r28
/* 800FF0C4 000C8684  3B DE 86 DC */	addi r30, r30, CMainMenu_strpool@l
/* 800FF0C8 000C8688  38 7E 00 5E */	addi r3, r30, 0x5e
/* 800FF0CC 000C868C  38 9E 00 67 */	addi r4, r30, 0x67
/* 800FF0D0 000C8690  48 03 70 C1 */	bl func_80136190
/* 800FF0D4 000C8694  7C 7D 1B 78 */	mr r29, r3
/* 800FF0D8 000C8698  7F 85 E3 78 */	mr r5, r28
/* 800FF0DC 000C869C  38 7E 00 5E */	addi r3, r30, 0x5e
/* 800FF0E0 000C86A0  38 9E 00 6C */	addi r4, r30, 0x6c
/* 800FF0E4 000C86A4  48 03 70 AD */	bl func_80136190
/* 800FF0E8 000C86A8  7C 7C 1B 78 */	mr r28, r3
/* 800FF0EC 000C86AC  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 800FF0F0 000C86B0  7F A5 EB 78 */	mr r5, r29
/* 800FF0F4 000C86B4  38 9E 00 71 */	addi r4, r30, 0x71
/* 800FF0F8 000C86B8  38 C0 00 00 */	li r6, 0
/* 800FF0FC 000C86BC  48 03 7A 51 */	bl func_80136B4C
/* 800FF100 000C86C0  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 800FF104 000C86C4  7F 85 E3 78 */	mr r5, r28
/* 800FF108 000C86C8  38 9E 00 7C */	addi r4, r30, 0x7c
/* 800FF10C 000C86CC  38 C0 00 00 */	li r6, 0
/* 800FF110 000C86D0  48 03 7A 3D */	bl func_80136B4C
/* 800FF114 000C86D4  48 00 00 34 */	b .L_800FF148
.L_800FF118:
/* 800FF118 000C86D8  3F C0 80 50 */	lis r30, CMainMenu_strpool@ha
/* 800FF11C 000C86DC  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 800FF120 000C86E0  3B DE 86 DC */	addi r30, r30, CMainMenu_strpool@l
/* 800FF124 000C86E4  38 C0 00 00 */	li r6, 0
/* 800FF128 000C86E8  38 9E 00 71 */	addi r4, r30, 0x71
/* 800FF12C 000C86EC  38 BE 00 89 */	addi r5, r30, 0x89
/* 800FF130 000C86F0  48 03 7A 1D */	bl func_80136B4C
/* 800FF134 000C86F4  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 800FF138 000C86F8  38 9E 00 7C */	addi r4, r30, 0x7c
/* 800FF13C 000C86FC  38 BE 00 89 */	addi r5, r30, 0x89
/* 800FF140 000C8700  38 C0 00 00 */	li r6, 0
/* 800FF144 000C8704  48 03 7A 09 */	bl func_80136B4C
.L_800FF148:
/* 800FF148 000C8708  38 7F 00 90 */	addi r3, r31, 0x90
/* 800FF14C 000C870C  38 80 00 01 */	li r4, 1
/* 800FF150 000C8710  48 0D 30 1D */	bl func_801D216C
/* 800FF154 000C8714  38 00 00 02 */	li r0, 2
/* 800FF158 000C8718  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 800FF15C 000C871C  48 00 01 5C */	b .L_800FF2B8
.L_800FF160:
/* 800FF160 000C8720  7F E3 FB 78 */	mr r3, r31
/* 800FF164 000C8724  48 00 07 BD */	bl func_800FF920
/* 800FF168 000C8728  48 00 01 50 */	b .L_800FF2B8
.L_800FF16C:
/* 800FF16C 000C872C  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 800FF170 000C8730  C0 22 94 60 */	lfs f1, float_806697E0@sda21(r2)
/* 800FF174 000C8734  48 03 82 D1 */	bl func_80137444
/* 800FF178 000C8738  2C 03 00 00 */	cmpwi r3, 0
/* 800FF17C 000C873C  41 82 01 3C */	beq .L_800FF2B8
/* 800FF180 000C8740  38 60 00 01 */	li r3, 1
/* 800FF184 000C8744  38 00 00 00 */	li r0, 0
/* 800FF188 000C8748  98 7F 00 54 */	stb r3, 0x54(r31)
/* 800FF18C 000C874C  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 800FF190 000C8750  48 00 01 28 */	b .L_800FF2B8
.L_800FF194:
/* 800FF194 000C8754  7F E3 FB 78 */	mr r3, r31
/* 800FF198 000C8758  48 00 28 F1 */	bl func_80101A88
/* 800FF19C 000C875C  2C 03 00 00 */	cmpwi r3, 0
/* 800FF1A0 000C8760  40 82 00 34 */	bne .L_800FF1D4
/* 800FF1A4 000C8764  48 19 B4 B5 */	bl func_8029A658
/* 800FF1A8 000C8768  2C 03 00 00 */	cmpwi r3, 0
/* 800FF1AC 000C876C  40 82 00 28 */	bne .L_800FF1D4
/* 800FF1B0 000C8770  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 800FF1B4 000C8774  2C 00 00 00 */	cmpwi r0, 0
/* 800FF1B8 000C8778  41 82 00 10 */	beq .L_800FF1C8
/* 800FF1BC 000C877C  2C 00 00 03 */	cmpwi r0, 3
/* 800FF1C0 000C8780  41 82 00 10 */	beq .L_800FF1D0
/* 800FF1C4 000C8784  48 00 00 10 */	b .L_800FF1D4
.L_800FF1C8:
/* 800FF1C8 000C8788  48 03 52 99 */	bl func_80134460
/* 800FF1CC 000C878C  48 00 00 08 */	b .L_800FF1D4
.L_800FF1D0:
/* 800FF1D0 000C8790  48 03 50 09 */	bl func_801341D8
.L_800FF1D4:
/* 800FF1D4 000C8794  38 00 00 02 */	li r0, 2
/* 800FF1D8 000C8798  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 800FF1DC 000C879C  48 00 00 DC */	b .L_800FF2B8
.L_800FF1E0:
/* 800FF1E0 000C87A0  7F E3 FB 78 */	mr r3, r31
/* 800FF1E4 000C87A4  48 00 1C 31 */	bl func_80100E14
/* 800FF1E8 000C87A8  48 00 00 D0 */	b .L_800FF2B8
.L_800FF1EC:
/* 800FF1EC 000C87AC  7F E3 FB 78 */	mr r3, r31
/* 800FF1F0 000C87B0  48 00 1E C9 */	bl func_801010B8
/* 800FF1F4 000C87B4  48 00 00 C4 */	b .L_800FF2B8
.L_800FF1F8:
/* 800FF1F8 000C87B8  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 800FF1FC 000C87BC  C0 22 94 60 */	lfs f1, float_806697E0@sda21(r2)
/* 800FF200 000C87C0  48 03 82 45 */	bl func_80137444
/* 800FF204 000C87C4  2C 03 00 00 */	cmpwi r3, 0
/* 800FF208 000C87C8  41 82 00 B0 */	beq .L_800FF2B8
/* 800FF20C 000C87CC  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 800FF210 000C87D0  37 A3 00 01 */	addic. r29, r3, 1
/* 800FF214 000C87D4  40 81 00 60 */	ble .L_800FF274
/* 800FF218 000C87D8  3F C0 80 50 */	lis r30, CMainMenu_strpool@ha
/* 800FF21C 000C87DC  7F A5 EB 78 */	mr r5, r29
/* 800FF220 000C87E0  3B DE 86 DC */	addi r30, r30, CMainMenu_strpool@l
/* 800FF224 000C87E4  38 7E 00 5E */	addi r3, r30, 0x5e
/* 800FF228 000C87E8  38 9E 00 67 */	addi r4, r30, 0x67
/* 800FF22C 000C87EC  48 03 6F 65 */	bl func_80136190
/* 800FF230 000C87F0  7C 7C 1B 78 */	mr r28, r3
/* 800FF234 000C87F4  7F A5 EB 78 */	mr r5, r29
/* 800FF238 000C87F8  38 7E 00 5E */	addi r3, r30, 0x5e
/* 800FF23C 000C87FC  38 9E 00 6C */	addi r4, r30, 0x6c
/* 800FF240 000C8800  48 03 6F 51 */	bl func_80136190
/* 800FF244 000C8804  7C 7D 1B 78 */	mr r29, r3
/* 800FF248 000C8808  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 800FF24C 000C880C  7F 85 E3 78 */	mr r5, r28
/* 800FF250 000C8810  38 9E 00 71 */	addi r4, r30, 0x71
/* 800FF254 000C8814  38 C0 00 00 */	li r6, 0
/* 800FF258 000C8818  48 03 78 F5 */	bl func_80136B4C
/* 800FF25C 000C881C  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 800FF260 000C8820  7F A5 EB 78 */	mr r5, r29
/* 800FF264 000C8824  38 9E 00 7C */	addi r4, r30, 0x7c
/* 800FF268 000C8828  38 C0 00 00 */	li r6, 0
/* 800FF26C 000C882C  48 03 78 E1 */	bl func_80136B4C
/* 800FF270 000C8830  48 00 00 34 */	b .L_800FF2A4
.L_800FF274:
/* 800FF274 000C8834  3F C0 80 50 */	lis r30, CMainMenu_strpool@ha
/* 800FF278 000C8838  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 800FF27C 000C883C  3B DE 86 DC */	addi r30, r30, CMainMenu_strpool@l
/* 800FF280 000C8840  38 C0 00 00 */	li r6, 0
/* 800FF284 000C8844  38 9E 00 71 */	addi r4, r30, 0x71
/* 800FF288 000C8848  38 BE 00 89 */	addi r5, r30, 0x89
/* 800FF28C 000C884C  48 03 78 C1 */	bl func_80136B4C
/* 800FF290 000C8850  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 800FF294 000C8854  38 9E 00 7C */	addi r4, r30, 0x7c
/* 800FF298 000C8858  38 BE 00 89 */	addi r5, r30, 0x89
/* 800FF29C 000C885C  38 C0 00 00 */	li r6, 0
/* 800FF2A0 000C8860  48 03 78 AD */	bl func_80136B4C
.L_800FF2A4:
/* 800FF2A4 000C8864  38 00 00 02 */	li r0, 2
/* 800FF2A8 000C8868  90 1F 00 E0 */	stw r0, 0xe0(r31)
/* 800FF2AC 000C886C  48 00 00 0C */	b .L_800FF2B8
.L_800FF2B0:
/* 800FF2B0 000C8870  7F E3 FB 78 */	mr r3, r31
/* 800FF2B4 000C8874  48 00 26 41 */	bl func_801018F4
.L_800FF2B8:
/* 800FF2B8 000C8878  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 800FF2BC 000C887C  38 80 00 00 */	li r4, 0
/* 800FF2C0 000C8880  81 83 00 00 */	lwz r12, 0(r3)
/* 800FF2C4 000C8884  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 800FF2C8 000C8888  7D 89 03 A6 */	mtctr r12
/* 800FF2CC 000C888C  4E 80 04 21 */	bctrl 
/* 800FF2D0 000C8890  38 7F 00 90 */	addi r3, r31, 0x90
/* 800FF2D4 000C8894  48 0D 2D 59 */	bl func_801D202C
/* 800FF2D8 000C8898  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 800FF2DC 000C889C  48 0D 2D 51 */	bl func_801D202C
.L_800FF2E0:
/* 800FF2E0 000C88A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800FF2E4 000C88A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FF2E8 000C88A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FF2EC 000C88AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800FF2F0 000C88B0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 800FF2F4 000C88B4  7C 08 03 A6 */	mtlr r0
/* 800FF2F8 000C88B8  38 21 00 20 */	addi r1, r1, 0x20
/* 800FF2FC 000C88BC  4E 80 00 20 */	blr
.endfn func_800FEF4C

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0



.global lbl_804F8568
lbl_804F8568:
	.asciz "/menu/MainMenu.arc"
	.balign 4


.global lbl_804F857C
lbl_804F857C:
	.4byte 0xFF40FF80
	.4byte 0xFFC00000
	.4byte 0x00400080
	.4byte 0x00C00000

.global lbl_804F858C
lbl_804F858C:
	.asciz "pic_icon02_01"
	.balign 4

.global lbl_804F859C
lbl_804F859C:
	.asciz "pic_icon02_02"
	.balign 4

.global lbl_804F85AC
lbl_804F85AC:
	.asciz "pic_icon02_03"
	.balign 4

.global lbl_804F85BC
lbl_804F85BC:
	.asciz "pic_icon03_01"
	.balign 4

.global lbl_804F85CC
lbl_804F85CC:
	.asciz "pic_icon03_02"
	.balign 4

.global lbl_804F85DC
lbl_804F85DC:
	.asciz "pic_icon05_01"
	.balign 4

.global lbl_804F85EC
lbl_804F85EC:
	.asciz "pic_icon05_02"
	.balign 4

.global lbl_804F85FC
lbl_804F85FC:
	.asciz "pic_icon05_03"
	.balign 4

.global lbl_804F860C
lbl_804F860C:
	.asciz "pic_icon05_04"
	.balign 4

.global lbl_804F861C
lbl_804F861C:
	.asciz "pic_icon06_01"
	.balign 4

.global lbl_804F862C
lbl_804F862C:
	.asciz "pic_icon06_02"
	.balign 4

.global lbl_804F863C
lbl_804F863C:
	.asciz "pic_icon07_01"
	.balign 4

.global lbl_804F864C
lbl_804F864C:
	.asciz "pic_icon07_02"
	.balign 4

.global lbl_804F865C
lbl_804F865C:
	.asciz "pic_icon07_03"
	.balign 4
	.4byte 0

.global lbl_804F8670
lbl_804F8670:
	.4byte lbl_804F858C
	.4byte lbl_804F859C
	.4byte lbl_804F85AC
	.4byte lbl_804F85BC
	.4byte lbl_804F85CC
	.4byte lbl_804F85DC
	.4byte lbl_804F85EC
	.4byte lbl_804F85FC
	.4byte lbl_804F860C
	.4byte lbl_804F861C
	.4byte lbl_804F862C
	.4byte lbl_804F863C
	.4byte lbl_804F864C
	.4byte lbl_804F865C

.global CMainMenu_typestr
CMainMenu_typestr:
	.asciz "CMainMenu"
	.balign 4

.global CMainCur_typestr
CMainCur_typestr:
	.asciz "CMainCur"
	.balign 4

.global CBaseCur_typestr
CBaseCur_typestr:
	.asciz "CBaseCur"
	.balign 4

.global CTTask_IUICf_typestr
CTTask_IUICf_typestr:
	.asciz "CTTask<IUICf>"
	.balign 4


.global CMainMenu_strpool
CMainMenu_strpool:
	.asciz "mf01_main21_cursor.brlyt"
	.asciz "mf01_main21_cursor_roop.brlan"
	.asciz "mf01_main21_cursor_on.brlan"
	.asciz "txt_cursor"
	.asciz "MNU_main"
	.asciz "name"
	.asciz "help"
	.asciz "txt_suject"
	.asciz "txt_helpmess"
	.byte 0x00
	.asciz "CMainMenu"
	.asciz "arc"
	.asciz "mf01_main00_icon.brlyt"
	.asciz "mf01_main00_icon_in.brlan"
	.asciz "mf01_main00_icon_out.brlan"
	.asciz "mf01_main00_icon_sub_in.brlan"
	.asciz "mf01_main00_icon_sub_out.brlan"
	.asciz "pic_base%02d_%02d"
	.asciz "nul_proportion"
	.asciz "pic_base02_01"
	.asciz "pic_base02_02"
	.asciz "pic_base02_03"
	.asciz "pic_base03_01"
	.asciz "pic_base03_02"
	.asciz "pic_base05_01"
	.asciz "pic_base05_02"
	.asciz "pic_base05_03"
	.asciz "pic_base05_04"
	.asciz "pic_base06_01"
	.asciz "pic_base06_02"
	.asciz "pic_base07_01"
	.asciz "pic_base07_02"
	.asciz "pic_base07_03"
	.asciz "pic_icon%02d"
	.balign 4

.section .data, "wa"  # 0x805281E0 - 0x80573C60



.global lbl_8052F5B8
lbl_8052F5B8:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_800FEF20

.global lbl_8052F5C4
lbl_8052F5C4:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_800FEF4C


.global jumptable_8052F5D0
jumptable_8052F5D0:
	.4byte .L_800FF088
	.4byte .L_800FF09C
	.4byte .L_800FF160
	.4byte .L_800FF16C
	.4byte .L_800FF194
	.4byte .L_800FF1E0
	.4byte .L_800FF1EC
	.4byte .L_800FF1F8
	.4byte .L_800FF2B0


.global __vt__CMainMenu
__vt__CMainMenu:
	.4byte __RTTI__CMainMenu
	.4byte 0
	.4byte __dt__CMainMenu
	.4byte CChildListNode_Reset
	.4byte func_800FEE00
	.4byte func_800FEE5C
	.4byte func_80101F70
	.4byte func_80101FB8
	.4byte func_80043F20
	.4byte __RTTI__CMainMenu
	.4byte 0xFFFFFFA8
	.4byte func_80102008
	.4byte IWorkEvent_80039E28
	.4byte func_80102000
	.4byte IWorkEvent_80039E18
	.4byte IWorkEvent_80039E10
	.4byte IWorkEvent_80039E0C
	.4byte IWorkEvent_80039E04
	.4byte IWorkEvent_80039DFC
	.4byte IWorkEvent_80039DF4
	.4byte IWorkEvent_80039DEC
	.4byte IWorkEvent_80039DE4
	.4byte IWorkEvent_80039DDC
	.4byte IWorkEvent_80039DD4
	.4byte IWorkEvent_80039DCC
	.4byte IWorkEvent_80039DC4
	.4byte IWorkEvent_80039DBC
	.4byte IWorkEvent_80039DB4
	.4byte IWorkEvent_80039DAC
	.4byte IWorkEvent_80039DA4
	.4byte IWorkEvent_80039D9C
	.4byte IWorkEvent_80039D94
	.4byte IWorkEvent_80039D8C
	.4byte IWorkEvent_80039D84
	.4byte IWorkEvent_80039D7C
	.4byte IWorkEvent_80039D74
	.4byte IWorkEvent_80039D6C
	.4byte IWorkEvent_80039D64
	.4byte IWorkEvent_80039D5C
	.4byte IWorkEvent_80039D54
	.4byte IWorkEvent_80039D4C
	.4byte IWorkEvent_80039D44
	.4byte IWorkEvent_80039D40
	.4byte __RTTI__CMainMenu
	.4byte 0xFFFFFFA4
	.4byte func_80102018
	.4byte func_80102010
	.4byte func_800FF604
	.4byte func_800FF300

.global CMainMenu_hierarchy
CMainMenu_hierarchy:
	.4byte __RTTI__IScnRender
	.4byte 0x0000005C
	.4byte __RTTI__IWorkEvent
	.4byte 0x00000058
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte __RTTI__CTTask_IUICf
	.4byte 0
	.4byte __RTTI__IUICf
	.4byte 0
	.4byte 0
	.4byte 0

.global __vt__CMainCur
__vt__CMainCur:
	.4byte __RTTI__CMainCur
	.4byte 0
	.4byte func_800FEA88
	.4byte func_801D20DC
	.4byte func_800FEB14
	.4byte func_801D2180

.global CMainCur_hierarchy
CMainCur_hierarchy:
	.4byte __RTTI__CBaseCur
	.4byte 0
	.4byte 0

.global IUICf_hierarchy
IUICf_hierarchy:
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte __RTTI__CTTask_IUICf
	.4byte 0
	.4byte 0


.global __vt__CTTask_IUICf
__vt__CTTask_IUICf:
	.4byte __RTTI__CTTask_IUICf
	.4byte 0
	.4byte __dt__CTTask_IUICf
	.4byte CChildListNode_Reset
	.4byte 0
	.4byte 0
	.4byte func_80101F70
	.4byte func_80101FB8
	.4byte func_80043F20

.global CTTask_IUICf_hierarchy
CTTask_IUICf_hierarchy:
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600




.global lbl_806646B8
lbl_806646B8:
	.4byte lbl_804F8568
	.4byte 0

.global __RTTI__CMainMenu
__RTTI__CMainMenu:
	.4byte CMainMenu_typestr
	.4byte CMainMenu_hierarchy

.global __RTTI__CMainCur
__RTTI__CMainCur:
	.4byte CMainCur_typestr
	.4byte CMainCur_hierarchy

.global __RTTI__CBaseCur
__RTTI__CBaseCur:
	.4byte CBaseCur_typestr
	.4byte 0

.global __RTTI__IUICf
__RTTI__IUICf:
	.4byte IUICf_typestr
	.4byte IUICf_hierarchy

.global __RTTI__CTTask_IUICf
__RTTI__CTTask_IUICf:
	.4byte CTTask_IUICf_typestr
	.4byte CTTask_IUICf_hierarchy

.section .sbss, "wa"  # 0x80666600 - 0x8066836F



.global lbl_80666810
lbl_80666810:
	.skip 0x8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000AD80", local
.hidden "@etb_8000AD80"
	.4byte 0x20080000
	.4byte 0x00000098
	.4byte 0x00000038
	.4byte 0x000000C8
	.4byte 0x0000002C
	.4byte 0x000000E0
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x0780001F
	.4byte 0x00000090
	.4byte __dt__800FEA30
	.4byte 0x0780001F
	.4byte 0x00000060
	.4byte __dt__8045F580
	.4byte 0x0680001F
	.4byte 0x0000005C
	.4byte __dt__IScnRender
	.4byte 0x0680001F
	.4byte 0x00000058
	.4byte __dt__IWorkEvent
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte __dt__800FED0C
.endobj "@etb_8000AD80"

.obj "@etb_8000ADDC", local
.hidden "@etb_8000ADDC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000ADDC"

.obj "@etb_8000ADE4", local
.hidden "@etb_8000ADE4"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000ADE4"

.obj "@etb_8000ADEC", local
.hidden "@etb_8000ADEC"
	.4byte 0x10080000
	.4byte 0x00000040
	.4byte 0x00000020
	.4byte 0x0000004C
	.4byte 0x0000002C
	.4byte 0x00000064
	.4byte 0x00000044
	.4byte 0x00000000
	.4byte 0x8780001E
	.4byte 0x000000A8
	.4byte __dt__801D2D88
	.4byte 0x0780001E
	.4byte 0x000000A8
	.4byte __dt__801D2D88
	.4byte 0x8780001E
	.4byte 0x00000090
	.4byte __dt__800FEA30
	.4byte 0x0780001E
	.4byte 0x000000A8
	.4byte __dt__801D2D88
	.4byte 0x0780001E
	.4byte 0x00000090
	.4byte __dt__800FEA30
	.4byte 0x0780001E
	.4byte 0x00000060
	.4byte __dt__8045F580
	.4byte 0x0680001E
	.4byte 0x0000005C
	.4byte __dt__IScnRender
	.4byte 0x8680001E
	.4byte 0x00000058
	.4byte __dt__IWorkEvent
.endobj "@etb_8000ADEC"

.obj "@etb_8000AE6C", local
.hidden "@etb_8000AE6C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000AE6C"

.obj "@etb_8000AE74", local
.hidden "@etb_8000AE74"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000AE74"

.obj "@etb_8000AE7C", local
.hidden "@etb_8000AE7C"
	.4byte 0x200A0000
	.4byte 0x00000000
.endobj "@etb_8000AE7C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80026660", local
.hidden "@eti_80026660"
	.4byte __ct__CMainMenu
	.4byte 0x00000130
	.4byte "@etb_8000AD80"
.endobj "@eti_80026660"

.obj "@eti_8002666C", local
.hidden "@eti_8002666C"
	.4byte __dt__CTTask_IUICf
	.4byte 0x00000058
	.4byte "@etb_8000ADDC"
.endobj "@eti_8002666C"

.obj "@eti_80026678", local
.hidden "@eti_80026678"
	.4byte __dt__800FED0C
	.4byte 0x0000005C
	.4byte "@etb_8000ADE4"
.endobj "@eti_80026678"

.obj "@eti_80026684", local
.hidden "@eti_80026684"
	.4byte __dt__CMainMenu
	.4byte 0x00000090
	.4byte "@etb_8000ADEC"
.endobj "@eti_80026684"

.obj "@eti_80026690", local
.hidden "@eti_80026690"
	.4byte func_800FEE00
	.4byte 0x0000005C
	.4byte "@etb_8000AE6C"
.endobj "@eti_80026690"

.obj "@eti_8002669C", local
.hidden "@eti_8002669C"
	.4byte func_800FEE5C
	.4byte 0x000000C4
	.4byte "@etb_8000AE74"
.endobj "@eti_8002669C"

.obj "@eti_800266A8", local
.hidden "@eti_800266A8"
	.4byte func_800FEF4C
	.4byte 0x000003B4
	.4byte "@etb_8000AE7C"
.endobj "@eti_800266A8"