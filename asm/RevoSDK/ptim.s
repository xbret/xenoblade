.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802DEBA0
func_802DEBA0:
/* 802DEBA0 002A8160  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DEBA4 002A8164  7C 08 02 A6 */	mflr r0
/* 802DEBA8 002A8168  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DEBAC 002A816C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DEBB0 002A8170  7C BF 2B 78 */	mr r31, r5
/* 802DEBB4 002A8174  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DEBB8 002A8178  7C 9E 23 78 */	mr r30, r4
/* 802DEBBC 002A817C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DEBC0 002A8180  7C 7D 1B 78 */	mr r29, r3
/* 802DEBC4 002A8184  4B FF D8 FD */	bl func_802DC4C0
/* 802DEBC8 002A8188  93 DD 00 0C */	stw r30, 0xc(r29)
/* 802DEBCC 002A818C  9B FD 00 10 */	stb r31, 0x10(r29)
/* 802DEBD0 002A8190  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DEBD4 002A8194  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DEBD8 002A8198  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DEBDC 002A819C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DEBE0 002A81A0  7C 08 03 A6 */	mtlr r0
/* 802DEBE4 002A81A4  38 21 00 20 */	addi r1, r1, 0x20
/* 802DEBE8 002A81A8  4E 80 00 20 */	blr

.global lbl_802DEBEC
lbl_802DEBEC:
/* 802DEBEC 002A81AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DEBF0 002A81B0  7C 08 02 A6 */	mflr r0
/* 802DEBF4 002A81B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DEBF8 002A81B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DEBFC 002A81BC  93 C1 00 08 */	stw r30, 8(r1)
/* 802DEC00 002A81C0  7C 7E 1B 78 */	mr r30, r3
/* 802DEC04 002A81C4  80 83 00 0C */	lwz r4, 0xc(r3)
/* 802DEC08 002A81C8  4B FF D8 D9 */	bl func_802DC4E0
/* 802DEC0C 002A81CC  48 00 00 54 */	b lbl_802DEC60
lbl_802DEC10:
/* 802DEC10 002A81D0  7F C3 F3 78 */	mr r3, r30
/* 802DEC14 002A81D4  7F E4 FB 78 */	mr r4, r31
/* 802DEC18 002A81D8  4B FF DA 49 */	bl func_802DC660
/* 802DEC1C 002A81DC  81 9F 00 08 */	lwz r12, 8(r31)
/* 802DEC20 002A81E0  2C 0C 00 00 */	cmpwi r12, 0
/* 802DEC24 002A81E4  41 82 00 14 */	beq lbl_802DEC38
/* 802DEC28 002A81E8  7F E3 FB 78 */	mr r3, r31
/* 802DEC2C 002A81EC  7D 89 03 A6 */	mtctr r12
/* 802DEC30 002A81F0  4E 80 04 21 */	bctrl 
/* 802DEC34 002A81F4  48 00 00 2C */	b lbl_802DEC60
lbl_802DEC38:
/* 802DEC38 002A81F8  A0 1F 00 14 */	lhz r0, 0x14(r31)
/* 802DEC3C 002A81FC  2C 00 00 00 */	cmpwi r0, 0
/* 802DEC40 002A8200  41 82 00 20 */	beq lbl_802DEC60
/* 802DEC44 002A8204  38 60 00 08 */	li r3, 8
/* 802DEC48 002A8208  4B FF C6 09 */	bl func_802DB250
/* 802DEC4C 002A820C  2C 03 00 00 */	cmpwi r3, 0
/* 802DEC50 002A8210  41 82 00 10 */	beq lbl_802DEC60
/* 802DEC54 002A8214  A0 1F 00 14 */	lhz r0, 0x14(r31)
/* 802DEC58 002A8218  B0 03 00 00 */	sth r0, 0(r3)
/* 802DEC5C 002A821C  4B FF FE 85 */	bl func_802DEAE0
lbl_802DEC60:
/* 802DEC60 002A8220  83 FE 00 00 */	lwz r31, 0(r30)
/* 802DEC64 002A8224  2C 1F 00 00 */	cmpwi r31, 0
/* 802DEC68 002A8228  41 82 00 10 */	beq lbl_802DEC78
/* 802DEC6C 002A822C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802DEC70 002A8230  2C 00 00 00 */	cmpwi r0, 0
/* 802DEC74 002A8234  40 81 FF 9C */	ble lbl_802DEC10
lbl_802DEC78:
/* 802DEC78 002A8238  2C 1F 00 00 */	cmpwi r31, 0
/* 802DEC7C 002A823C  40 82 00 0C */	bne lbl_802DEC88
/* 802DEC80 002A8240  88 7E 00 10 */	lbz r3, 0x10(r30)
/* 802DEC84 002A8244  4B FF D7 AD */	bl func_802DC430
lbl_802DEC88:
/* 802DEC88 002A8248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DEC8C 002A824C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DEC90 002A8250  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DEC94 002A8254  7C 08 03 A6 */	mtlr r0
/* 802DEC98 002A8258  38 21 00 10 */	addi r1, r1, 0x10
/* 802DEC9C 002A825C  4E 80 00 20 */	blr

.global lbl_802DECA0
lbl_802DECA0:
/* 802DECA0 002A8260  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DECA4 002A8264  7C 08 02 A6 */	mflr r0
/* 802DECA8 002A8268  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DECAC 002A826C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DECB0 002A8270  7C DF 33 78 */	mr r31, r6
/* 802DECB4 002A8274  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DECB8 002A8278  7C BE 2B 78 */	mr r30, r5
/* 802DECBC 002A827C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DECC0 002A8280  7C 9D 23 78 */	mr r29, r4
/* 802DECC4 002A8284  93 81 00 10 */	stw r28, 0x10(r1)
/* 802DECC8 002A8288  7C 7C 1B 78 */	mr r28, r3
/* 802DECCC 002A828C  80 03 00 00 */	lwz r0, 0(r3)
/* 802DECD0 002A8290  2C 00 00 00 */	cmpwi r0, 0
/* 802DECD4 002A8294  40 82 00 2C */	bne lbl_802DED00
/* 802DECD8 002A8298  3C 80 66 66 */	lis r4, 0x66666667@ha
/* 802DECDC 002A829C  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 802DECE0 002A82A0  38 84 66 67 */	addi r4, r4, 0x66666667@l
/* 802DECE4 002A82A4  88 63 00 10 */	lbz r3, 0x10(r3)
/* 802DECE8 002A82A8  7C 04 00 96 */	mulhw r0, r4, r0
/* 802DECEC 002A82AC  38 A0 00 01 */	li r5, 1
/* 802DECF0 002A82B0  7C 00 16 70 */	srawi r0, r0, 2
/* 802DECF4 002A82B4  54 04 0F FE */	srwi r4, r0, 0x1f
/* 802DECF8 002A82B8  7C 80 22 14 */	add r4, r0, r4
/* 802DECFC 002A82BC  4B FF D5 E5 */	bl func_802DC2E0
lbl_802DED00:
/* 802DED00 002A82C0  7F 83 E3 78 */	mr r3, r28
/* 802DED04 002A82C4  7F A4 EB 78 */	mr r4, r29
/* 802DED08 002A82C8  4B FF D9 59 */	bl func_802DC660
/* 802DED0C 002A82CC  B3 DD 00 14 */	sth r30, 0x14(r29)
/* 802DED10 002A82D0  7F 83 E3 78 */	mr r3, r28
/* 802DED14 002A82D4  7F A4 EB 78 */	mr r4, r29
/* 802DED18 002A82D8  93 FD 00 0C */	stw r31, 0xc(r29)
/* 802DED1C 002A82DC  4B FF D8 55 */	bl func_802DC570
/* 802DED20 002A82E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DED24 002A82E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DED28 002A82E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DED2C 002A82EC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DED30 002A82F0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802DED34 002A82F4  7C 08 03 A6 */	mtlr r0
/* 802DED38 002A82F8  38 21 00 20 */	addi r1, r1, 0x20
/* 802DED3C 002A82FC  4E 80 00 20 */	blr

.global lbl_802DED40
lbl_802DED40:
/* 802DED40 002A8300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DED44 002A8304  7C 08 02 A6 */	mflr r0
/* 802DED48 002A8308  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DED4C 002A830C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DED50 002A8310  7C 7F 1B 78 */	mr r31, r3
/* 802DED54 002A8314  4B FF D9 0D */	bl func_802DC660
/* 802DED58 002A8318  80 1F 00 00 */	lwz r0, 0(r31)
/* 802DED5C 002A831C  2C 00 00 00 */	cmpwi r0, 0
/* 802DED60 002A8320  40 82 00 0C */	bne lbl_802DED6C
/* 802DED64 002A8324  88 7F 00 10 */	lbz r3, 0x10(r31)
/* 802DED68 002A8328  4B FF D6 C9 */	bl func_802DC430
lbl_802DED6C:
/* 802DED6C 002A832C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DED70 002A8330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DED74 002A8334  7C 08 03 A6 */	mtlr r0
/* 802DED78 002A8338  38 21 00 10 */	addi r1, r1, 0x10
/* 802DED7C 002A833C  4E 80 00 20 */	blr