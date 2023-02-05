.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



.fn func_8015CCBC, global
/* 8015CCBC 0012627C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015CCC0 00126280  7C 08 02 A6 */	mflr r0
/* 8015CCC4 00126284  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015CCC8 00126288  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015CCCC 0012628C  7C 7F 1B 78 */	mr r31, r3
/* 8015CCD0 00126290  4B FF ED D9 */	bl func_8015BAA8
/* 8015CCD4 00126294  A0 1F 02 6C */	lhz r0, 0x26c(r31)
/* 8015CCD8 00126298  3C 60 80 53 */	lis r3, __vt__cf_CCharEffectEne@ha
/* 8015CCDC 0012629C  38 63 35 A8 */	addi r3, r3, __vt__cf_CCharEffectEne@l
/* 8015CCE0 001262A0  90 7F 00 00 */	stw r3, 0(r31)
/* 8015CCE4 001262A4  60 00 00 01 */	ori r0, r0, 1
/* 8015CCE8 001262A8  B0 1F 02 6C */	sth r0, 0x26c(r31)
/* 8015CCEC 001262AC  7F E3 FB 78 */	mr r3, r31
/* 8015CCF0 001262B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015CCF4 001262B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015CCF8 001262B8  7C 08 03 A6 */	mtlr r0
/* 8015CCFC 001262BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8015CD00 001262C0  4E 80 00 20 */	blr 
.endfn func_8015CCBC

.fn func_8015CD04, global
/* 8015CD04 001262C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015CD08 001262C8  7C 08 02 A6 */	mflr r0
/* 8015CD0C 001262CC  2C 05 00 00 */	cmpwi r5, 0
/* 8015CD10 001262D0  38 C0 00 00 */	li r6, 0
/* 8015CD14 001262D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015CD18 001262D8  40 80 00 54 */	bge .L_8015CD6C
/* 8015CD1C 001262DC  3C A0 80 50 */	lis r5, lbl_804FD678@ha
/* 8015CD20 001262E0  54 80 08 3C */	slwi r0, r4, 1
/* 8015CD24 001262E4  38 A5 D6 78 */	addi r5, r5, lbl_804FD678@l
/* 8015CD28 001262E8  7C 85 02 2E */	lhzx r4, r5, r0
/* 8015CD2C 001262EC  2C 04 00 00 */	cmpwi r4, 0
/* 8015CD30 001262F0  41 82 00 58 */	beq .L_8015CD88
/* 8015CD34 001262F4  28 04 02 00 */	cmplwi r4, 0x200
/* 8015CD38 001262F8  40 80 00 14 */	bge .L_8015CD4C
/* 8015CD3C 001262FC  7C 83 23 78 */	mr r3, r4
/* 8015CD40 00126300  4B F2 4B 3D */	bl func_8008187C
/* 8015CD44 00126304  7C 66 1B 78 */	mr r6, r3
/* 8015CD48 00126308  48 00 00 40 */	b .L_8015CD88
.L_8015CD4C:
/* 8015CD4C 0012630C  80 63 02 9C */	lwz r3, 0x29c(r3)
/* 8015CD50 00126310  38 84 FE 00 */	addi r4, r4, -512
/* 8015CD54 00126314  81 83 00 00 */	lwz r12, 0(r3)
/* 8015CD58 00126318  81 8C 02 20 */	lwz r12, 0x220(r12)
/* 8015CD5C 0012631C  7D 89 03 A6 */	mtctr r12
/* 8015CD60 00126320  4E 80 04 21 */	bctrl 
/* 8015CD64 00126324  7C 66 1B 78 */	mr r6, r3
/* 8015CD68 00126328  48 00 00 20 */	b .L_8015CD88
.L_8015CD6C:
/* 8015CD6C 0012632C  80 63 02 9C */	lwz r3, 0x29c(r3)
/* 8015CD70 00126330  7C A4 2B 78 */	mr r4, r5
/* 8015CD74 00126334  81 83 00 00 */	lwz r12, 0(r3)
/* 8015CD78 00126338  81 8C 02 20 */	lwz r12, 0x220(r12)
/* 8015CD7C 0012633C  7D 89 03 A6 */	mtctr r12
/* 8015CD80 00126340  4E 80 04 21 */	bctrl 
/* 8015CD84 00126344  7C 66 1B 78 */	mr r6, r3
.L_8015CD88:
/* 8015CD88 00126348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015CD8C 0012634C  7C C3 33 78 */	mr r3, r6
/* 8015CD90 00126350  7C 08 03 A6 */	mtlr r0
/* 8015CD94 00126354  38 21 00 10 */	addi r1, r1, 0x10
/* 8015CD98 00126358  4E 80 00 20 */	blr 
.endfn func_8015CD04

.fn func_8015CD9C, global
/* 8015CD9C 0012635C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015CDA0 00126360  7C 08 02 A6 */	mflr r0
/* 8015CDA4 00126364  2C 05 00 00 */	cmpwi r5, 0
/* 8015CDA8 00126368  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015CDAC 0012636C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015CDB0 00126370  3B E0 00 00 */	li r31, 0
/* 8015CDB4 00126374  93 C1 00 08 */	stw r30, 8(r1)
/* 8015CDB8 00126378  7C 7E 1B 78 */	mr r30, r3
/* 8015CDBC 0012637C  40 80 00 38 */	bge .L_8015CDF4
/* 8015CDC0 00126380  3C A0 80 50 */	lis r5, lbl_804FD6E8@ha
/* 8015CDC4 00126384  54 80 08 3C */	slwi r0, r4, 1
/* 8015CDC8 00126388  38 A5 D6 E8 */	addi r5, r5, lbl_804FD6E8@l
/* 8015CDCC 0012638C  7C 85 02 2E */	lhzx r4, r5, r0
/* 8015CDD0 00126390  2C 04 00 00 */	cmpwi r4, 0
/* 8015CDD4 00126394  41 82 00 3C */	beq .L_8015CE10
/* 8015CDD8 00126398  80 63 02 9C */	lwz r3, 0x29c(r3)
/* 8015CDDC 0012639C  81 83 00 00 */	lwz r12, 0(r3)
/* 8015CDE0 001263A0  81 8C 02 20 */	lwz r12, 0x220(r12)
/* 8015CDE4 001263A4  7D 89 03 A6 */	mtctr r12
/* 8015CDE8 001263A8  4E 80 04 21 */	bctrl 
/* 8015CDEC 001263AC  7C 7F 1B 78 */	mr r31, r3
/* 8015CDF0 001263B0  48 00 00 20 */	b .L_8015CE10
.L_8015CDF4:
/* 8015CDF4 001263B4  80 63 02 9C */	lwz r3, 0x29c(r3)
/* 8015CDF8 001263B8  7C A4 2B 78 */	mr r4, r5
/* 8015CDFC 001263BC  81 83 00 00 */	lwz r12, 0(r3)
/* 8015CE00 001263C0  81 8C 02 20 */	lwz r12, 0x220(r12)
/* 8015CE04 001263C4  7D 89 03 A6 */	mtctr r12
/* 8015CE08 001263C8  4E 80 04 21 */	bctrl 
/* 8015CE0C 001263CC  7C 7F 1B 78 */	mr r31, r3
.L_8015CE10:
/* 8015CE10 001263D0  2C 1F 00 00 */	cmpwi r31, 0
/* 8015CE14 001263D4  41 82 00 14 */	beq .L_8015CE28
/* 8015CE18 001263D8  80 9E 02 9C */	lwz r4, 0x29c(r30)
/* 8015CE1C 001263DC  7F E3 FB 78 */	mr r3, r31
/* 8015CE20 001263E0  38 A0 00 00 */	li r5, 0
/* 8015CE24 001263E4  4B F5 01 55 */	bl func_800ACF78
.L_8015CE28:
/* 8015CE28 001263E8  7F E3 FB 78 */	mr r3, r31
/* 8015CE2C 001263EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015CE30 001263F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015CE34 001263F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015CE38 001263F8  7C 08 03 A6 */	mtlr r0
/* 8015CE3C 001263FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8015CE40 00126400  4E 80 00 20 */	blr 
.endfn func_8015CD9C

.fn func_8015CE44, global
/* 8015CE44 00126404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015CE48 00126408  7C 08 02 A6 */	mflr r0
/* 8015CE4C 0012640C  2C 05 00 00 */	cmpwi r5, 0
/* 8015CE50 00126410  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015CE54 00126414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015CE58 00126418  3B E0 00 00 */	li r31, 0
/* 8015CE5C 0012641C  93 C1 00 08 */	stw r30, 8(r1)
/* 8015CE60 00126420  7C 7E 1B 78 */	mr r30, r3
/* 8015CE64 00126424  40 80 00 28 */	bge .L_8015CE8C
/* 8015CE68 00126428  3C 60 80 50 */	lis r3, lbl_804FD758@ha
/* 8015CE6C 0012642C  54 80 08 3C */	slwi r0, r4, 1
/* 8015CE70 00126430  38 63 D7 58 */	addi r3, r3, lbl_804FD758@l
/* 8015CE74 00126434  7C 63 02 2E */	lhzx r3, r3, r0
/* 8015CE78 00126438  2C 03 00 00 */	cmpwi r3, 0
/* 8015CE7C 0012643C  41 82 00 20 */	beq .L_8015CE9C
/* 8015CE80 00126440  4B F2 49 FD */	bl func_8008187C
/* 8015CE84 00126444  7C 7F 1B 78 */	mr r31, r3
/* 8015CE88 00126448  48 00 00 14 */	b .L_8015CE9C
.L_8015CE8C:
/* 8015CE8C 0012644C  7C A3 2B 78 */	mr r3, r5
/* 8015CE90 00126450  38 80 00 00 */	li r4, 0
/* 8015CE94 00126454  4B F2 49 29 */	bl func_800817BC
/* 8015CE98 00126458  7C 7F 1B 78 */	mr r31, r3
.L_8015CE9C:
/* 8015CE9C 0012645C  2C 1F 00 00 */	cmpwi r31, 0
/* 8015CEA0 00126460  41 82 00 14 */	beq .L_8015CEB4
/* 8015CEA4 00126464  80 9E 02 9C */	lwz r4, 0x29c(r30)
/* 8015CEA8 00126468  7F E3 FB 78 */	mr r3, r31
/* 8015CEAC 0012646C  38 A0 00 00 */	li r5, 0
/* 8015CEB0 00126470  4B F5 00 C9 */	bl func_800ACF78
.L_8015CEB4:
/* 8015CEB4 00126474  7F E3 FB 78 */	mr r3, r31
/* 8015CEB8 00126478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015CEBC 0012647C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015CEC0 00126480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015CEC4 00126484  7C 08 03 A6 */	mtlr r0
/* 8015CEC8 00126488  38 21 00 10 */	addi r1, r1, 0x10
/* 8015CECC 0012648C  4E 80 00 20 */	blr 
.endfn func_8015CE44

.fn func_8015CED0, global
/* 8015CED0 00126490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015CED4 00126494  7C 08 02 A6 */	mflr r0
/* 8015CED8 00126498  2C 05 00 00 */	cmpwi r5, 0
/* 8015CEDC 0012649C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015CEE0 001264A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015CEE4 001264A4  3B E0 00 00 */	li r31, 0
/* 8015CEE8 001264A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8015CEEC 001264AC  7C 7E 1B 78 */	mr r30, r3
/* 8015CEF0 001264B0  40 80 00 68 */	bge .L_8015CF58
/* 8015CEF4 001264B4  3C A0 80 50 */	lis r5, lbl_804FD7C8@ha
/* 8015CEF8 001264B8  54 80 08 3C */	slwi r0, r4, 1
/* 8015CEFC 001264BC  38 A5 D7 C8 */	addi r5, r5, lbl_804FD7C8@l
/* 8015CF00 001264C0  7C 85 02 2E */	lhzx r4, r5, r0
/* 8015CF04 001264C4  2C 04 00 00 */	cmpwi r4, 0
/* 8015CF08 001264C8  41 82 00 6C */	beq .L_8015CF74
/* 8015CF0C 001264CC  28 04 02 00 */	cmplwi r4, 0x200
/* 8015CF10 001264D0  40 80 00 28 */	bge .L_8015CF38
/* 8015CF14 001264D4  7C 83 23 78 */	mr r3, r4
/* 8015CF18 001264D8  4B F2 49 65 */	bl func_8008187C
/* 8015CF1C 001264DC  2C 03 00 00 */	cmpwi r3, 0
/* 8015CF20 001264E0  7C 7F 1B 78 */	mr r31, r3
/* 8015CF24 001264E4  41 82 00 50 */	beq .L_8015CF74
/* 8015CF28 001264E8  80 9E 02 9C */	lwz r4, 0x29c(r30)
/* 8015CF2C 001264EC  38 A0 00 00 */	li r5, 0
/* 8015CF30 001264F0  4B F5 00 49 */	bl func_800ACF78
/* 8015CF34 001264F4  48 00 00 40 */	b .L_8015CF74
.L_8015CF38:
/* 8015CF38 001264F8  80 63 02 9C */	lwz r3, 0x29c(r3)
/* 8015CF3C 001264FC  38 84 FE 00 */	addi r4, r4, -512
/* 8015CF40 00126500  81 83 00 00 */	lwz r12, 0(r3)
/* 8015CF44 00126504  81 8C 02 20 */	lwz r12, 0x220(r12)
/* 8015CF48 00126508  7D 89 03 A6 */	mtctr r12
/* 8015CF4C 0012650C  4E 80 04 21 */	bctrl 
/* 8015CF50 00126510  7C 7F 1B 78 */	mr r31, r3
/* 8015CF54 00126514  48 00 00 20 */	b .L_8015CF74
.L_8015CF58:
/* 8015CF58 00126518  80 63 02 9C */	lwz r3, 0x29c(r3)
/* 8015CF5C 0012651C  7C A4 2B 78 */	mr r4, r5
/* 8015CF60 00126520  81 83 00 00 */	lwz r12, 0(r3)
/* 8015CF64 00126524  81 8C 02 20 */	lwz r12, 0x220(r12)
/* 8015CF68 00126528  7D 89 03 A6 */	mtctr r12
/* 8015CF6C 0012652C  4E 80 04 21 */	bctrl 
/* 8015CF70 00126530  7C 7F 1B 78 */	mr r31, r3
.L_8015CF74:
/* 8015CF74 00126534  7F E3 FB 78 */	mr r3, r31
/* 8015CF78 00126538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015CF7C 0012653C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015CF80 00126540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015CF84 00126544  7C 08 03 A6 */	mtlr r0
/* 8015CF88 00126548  38 21 00 10 */	addi r1, r1, 0x10
/* 8015CF8C 0012654C  4E 80 00 20 */	blr 
.endfn func_8015CED0

.fn func_8015CF90, global
/* 8015CF90 00126550  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015CF94 00126554  7C 08 02 A6 */	mflr r0
/* 8015CF98 00126558  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015CF9C 0012655C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015CFA0 00126560  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8015CFA4 00126564  7C 9E 23 78 */	mr r30, r4
/* 8015CFA8 00126568  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8015CFAC 0012656C  7C 7D 1B 78 */	mr r29, r3
/* 8015CFB0 00126570  80 E3 02 9C */	lwz r7, 0x29c(r3)
/* 8015CFB4 00126574  80 07 00 98 */	lwz r0, 0x98(r7)
/* 8015CFB8 00126578  2C 00 00 00 */	cmpwi r0, 0
/* 8015CFBC 0012657C  41 82 00 E0 */	beq .L_8015D09C
/* 8015CFC0 00126580  2C 07 00 00 */	cmpwi r7, 0
/* 8015CFC4 00126584  54 DF CF FE */	rlwinm r31, r6, 0x19, 0x1f, 0x1f
/* 8015CFC8 00126588  54 C4 06 7E */	clrlwi r4, r6, 0x19
/* 8015CFCC 0012658C  38 00 00 00 */	li r0, 0
/* 8015CFD0 00126590  41 82 00 08 */	beq .L_8015CFD8
/* 8015CFD4 00126594  38 E7 C1 64 */	addi r7, r7, -16028
.L_8015CFD8:
/* 8015CFD8 00126598  28 05 00 0A */	cmplwi r5, 0xa
/* 8015CFDC 0012659C  38 60 00 00 */	li r3, 0
/* 8015CFE0 001265A0  41 82 00 24 */	beq .L_8015D004
/* 8015CFE4 001265A4  28 05 00 0C */	cmplwi r5, 0xc
/* 8015CFE8 001265A8  41 82 00 1C */	beq .L_8015D004
/* 8015CFEC 001265AC  28 05 00 0E */	cmplwi r5, 0xe
/* 8015CFF0 001265B0  41 82 00 14 */	beq .L_8015D004
/* 8015CFF4 001265B4  28 05 00 19 */	cmplwi r5, 0x19
/* 8015CFF8 001265B8  41 82 00 0C */	beq .L_8015D004
/* 8015CFFC 001265BC  28 04 00 02 */	cmplwi r4, 2
/* 8015D000 001265C0  40 82 00 0C */	bne .L_8015D00C
.L_8015D004:
/* 8015D004 001265C4  80 67 45 94 */	lwz r3, 0x4594(r7)
/* 8015D008 001265C8  48 00 00 28 */	b .L_8015D030
.L_8015D00C:
/* 8015D00C 001265CC  28 05 00 0B */	cmplwi r5, 0xb
/* 8015D010 001265D0  41 82 00 1C */	beq .L_8015D02C
/* 8015D014 001265D4  28 05 00 0D */	cmplwi r5, 0xd
/* 8015D018 001265D8  41 82 00 14 */	beq .L_8015D02C
/* 8015D01C 001265DC  28 05 00 0F */	cmplwi r5, 0xf
/* 8015D020 001265E0  41 82 00 0C */	beq .L_8015D02C
/* 8015D024 001265E4  28 04 00 03 */	cmplwi r4, 3
/* 8015D028 001265E8  40 82 00 08 */	bne .L_8015D030
.L_8015D02C:
/* 8015D02C 001265EC  80 67 45 98 */	lwz r3, 0x4598(r7)
.L_8015D030:
/* 8015D030 001265F0  2C 03 00 00 */	cmpwi r3, 0
/* 8015D034 001265F4  41 82 00 18 */	beq .L_8015D04C
/* 8015D038 001265F8  81 83 00 00 */	lwz r12, 0(r3)
/* 8015D03C 001265FC  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8015D040 00126600  7D 89 03 A6 */	mtctr r12
/* 8015D044 00126604  4E 80 04 21 */	bctrl 
/* 8015D048 00126608  7C 60 1B 78 */	mr r0, r3
.L_8015D04C:
/* 8015D04C 0012660C  80 9D 02 9C */	lwz r4, 0x29c(r29)
/* 8015D050 00126610  7F C3 F3 78 */	mr r3, r30
/* 8015D054 00126614  7C 05 03 78 */	mr r5, r0
/* 8015D058 00126618  4B F4 FF 21 */	bl func_800ACF78
/* 8015D05C 0012661C  81 9E 00 00 */	lwz r12, 0(r30)
/* 8015D060 00126620  7F C3 F3 78 */	mr r3, r30
/* 8015D064 00126624  7F E4 FB 78 */	mr r4, r31
/* 8015D068 00126628  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 8015D06C 0012662C  7D 89 03 A6 */	mtctr r12
/* 8015D070 00126630  4E 80 04 21 */	bctrl 
/* 8015D074 00126634  80 9D 02 9C */	lwz r4, 0x29c(r29)
/* 8015D078 00126638  7F C3 F3 78 */	mr r3, r30
/* 8015D07C 0012663C  80 84 00 98 */	lwz r4, 0x98(r4)
/* 8015D080 00126640  38 84 03 04 */	addi r4, r4, 0x304
/* 8015D084 00126644  4B F4 FE 75 */	bl func_800ACEF8
/* 8015D088 00126648  80 7D 02 9C */	lwz r3, 0x29c(r29)
/* 8015D08C 0012664C  80 63 00 98 */	lwz r3, 0x98(r3)
/* 8015D090 00126650  48 32 7E 21 */	bl func_80484EB0
/* 8015D094 00126654  7F C3 F3 78 */	mr r3, r30
/* 8015D098 00126658  4B F4 FB B9 */	bl func_800ACC50
.L_8015D09C:
/* 8015D09C 0012665C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015D0A0 00126660  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015D0A4 00126664  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8015D0A8 00126668  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8015D0AC 0012666C  7C 08 03 A6 */	mtlr r0
/* 8015D0B0 00126670  38 21 00 20 */	addi r1, r1, 0x20
/* 8015D0B4 00126674  4E 80 00 20 */	blr 
.endfn func_8015CF90

.fn func_8015D0B8, global
/* 8015D0B8 00126678  38 60 00 00 */	li r3, 0
/* 8015D0BC 0012667C  38 00 FF FF */	li r0, -1
/* 8015D0C0 00126680  90 6D A9 A0 */	stw r3, lbl_80666B20@sda21(r13)
/* 8015D0C4 00126684  90 6D A9 A4 */	stw r3, lbl_80666B24@sda21(r13)
/* 8015D0C8 00126688  90 6D A9 A8 */	stw r3, lbl_80666B28@sda21(r13)
/* 8015D0CC 0012668C  90 0D 8A D4 */	stw r0, lbl_80664C54@sda21(r13)
/* 8015D0D0 00126690  4E 80 00 20 */	blr
.endfn func_8015D0B8

.fn func_8015D0D4, global
/* 8015D0D4 00126694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D0D8 00126698  7C 08 02 A6 */	mflr r0
/* 8015D0DC 0012669C  2C 03 00 00 */	cmpwi r3, 0
/* 8015D0E0 001266A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D0E4 001266A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D0E8 001266A8  7C 9F 23 78 */	mr r31, r4
/* 8015D0EC 001266AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8015D0F0 001266B0  7C 7E 1B 78 */	mr r30, r3
/* 8015D0F4 001266B4  41 82 00 24 */	beq .L_8015D118
/* 8015D0F8 001266B8  41 82 00 10 */	beq .L_8015D108
/* 8015D0FC 001266BC  41 82 00 0C */	beq .L_8015D108
/* 8015D100 001266C0  38 80 00 00 */	li r4, 0
/* 8015D104 001266C4  48 2E 7A 35 */	bl func_80444B38
.L_8015D108:
/* 8015D108 001266C8  2C 1F 00 00 */	cmpwi r31, 0
/* 8015D10C 001266CC  40 81 00 0C */	ble .L_8015D118
/* 8015D110 001266D0  7F C3 F3 78 */	mr r3, r30
/* 8015D114 001266D4  48 2D 7B 19 */	bl __dl__FPv
.L_8015D118:
/* 8015D118 001266D8  7F C3 F3 78 */	mr r3, r30
/* 8015D11C 001266DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D120 001266E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015D124 001266E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D128 001266E8  7C 08 03 A6 */	mtlr r0
/* 8015D12C 001266EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D130 001266F0  4E 80 00 20 */	blr 
.endfn func_8015D0D4

.fn func_8015D134, global
/* 8015D134 001266F4  4E 80 00 20 */	blr 
.endfn func_8015D134

.fn func_8015D138, global
/* 8015D138 001266F8  38 00 00 00 */	li r0, 0
/* 8015D13C 001266FC  90 0D A9 A0 */	stw r0, lbl_80666B20@sda21(r13)
/* 8015D140 00126700  4E 80 00 20 */	blr 
.endfn func_8015D138

.fn func_8015D144, global
/* 8015D144 00126704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015D148 00126708  7C 08 02 A6 */	mflr r0
/* 8015D14C 0012670C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015D150 00126710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015D154 00126714  93 C1 00 08 */	stw r30, 8(r1)
/* 8015D158 00126718  7C 7E 1B 78 */	mr r30, r3
/* 8015D15C 0012671C  4B FD EC F5 */	bl func_8013BE50
/* 8015D160 00126720  2C 03 00 00 */	cmpwi r3, 0
/* 8015D164 00126724  41 82 00 8C */	beq .L_8015D1F0
/* 8015D168 00126728  80 0D 8A D4 */	lwz r0, lbl_80664C54@sda21(r13)
/* 8015D16C 0012672C  2C 00 00 00 */	cmpwi r0, 0
/* 8015D170 00126730  41 80 00 78 */	blt .L_8015D1E8
/* 8015D174 00126734  38 60 00 01 */	li r3, 1
/* 8015D178 00126738  4B FD 88 21 */	bl func_80135998
/* 8015D17C 0012673C  3F E0 80 50 */	lis r31, CCol6System_strpool@ha
/* 8015D180 00126740  38 A0 00 7F */	li r5, 0x7f
/* 8015D184 00126744  38 7F D8 80 */	addi r3, r31, CCol6System_strpool@l
/* 8015D188 00126748  38 83 00 09 */	addi r4, r3, 9
/* 8015D18C 0012674C  4B FD 90 05 */	bl func_80136190
/* 8015D190 00126750  38 80 00 00 */	li r4, 0
/* 8015D194 00126754  38 A0 00 00 */	li r5, 0
/* 8015D198 00126758  4B FE 03 C5 */	bl func_8013D55C
/* 8015D19C 0012675C  38 7F D8 80 */	addi r3, r31, CCol6System_strpool@l
/* 8015D1A0 00126760  38 A0 00 80 */	li r5, 0x80
/* 8015D1A4 00126764  38 83 00 09 */	addi r4, r3, 9
/* 8015D1A8 00126768  4B FD 8F E9 */	bl func_80136190
/* 8015D1AC 0012676C  38 80 00 00 */	li r4, 0
/* 8015D1B0 00126770  38 A0 00 00 */	li r5, 0
/* 8015D1B4 00126774  4B FE 03 A9 */	bl func_8013D55C
/* 8015D1B8 00126778  80 6D 8A D4 */	lwz r3, lbl_80664C54@sda21(r13)
/* 8015D1BC 0012677C  38 80 00 00 */	li r4, 0
/* 8015D1C0 00126780  38 A0 00 00 */	li r5, 0
/* 8015D1C4 00126784  38 63 01 00 */	addi r3, r3, 0x100
/* 8015D1C8 00126788  4B FE 08 99 */	bl func_8013DA60
/* 8015D1CC 0012678C  38 00 FF FF */	li r0, -1
/* 8015D1D0 00126790  90 0D 8A D4 */	stw r0, lbl_80664C54@sda21(r13)
/* 8015D1D4 00126794  38 60 00 00 */	li r3, 0
/* 8015D1D8 00126798  4B FD 87 C1 */	bl func_80135998
/* 8015D1DC 0012679C  38 00 00 01 */	li r0, 1
/* 8015D1E0 001267A0  98 1E 00 64 */	stb r0, 0x64(r30)
/* 8015D1E4 001267A4  48 00 00 0C */	b .L_8015D1F0
.L_8015D1E8:
/* 8015D1E8 001267A8  38 00 00 01 */	li r0, 1
/* 8015D1EC 001267AC  98 1E 00 64 */	stb r0, 0x64(r30)
.L_8015D1F0:
/* 8015D1F0 001267B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015D1F4 001267B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015D1F8 001267B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015D1FC 001267BC  7C 08 03 A6 */	mtlr r0
/* 8015D200 001267C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8015D204 001267C4  4E 80 00 20 */	blr 
.endfn func_8015D144

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0



.global lbl_804FD678
lbl_804FD678:
	.4byte 0x00790051
	.4byte 0x00650201
	.4byte 0x02020203
	.4byte 0x02040205
	.4byte 0x0206020F
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000A7
	.4byte 0x00A60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00550056
	.4byte 0x00570052
	.4byte 0x00590058
	.4byte 0x02460000
	.4byte 0
	.4byte 0
	.4byte 0x005A0054
	.4byte 0x00530000

.global cf_CCharEffectEne_typestr
cf_CCharEffectEne_typestr:
	.asciz "cf::CCharEffectEne"
	.balign 4
	.4byte 0


.global lbl_804FD6E8
lbl_804FD6E8:
	.4byte 0x007B0051
	.4byte 0x00650000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000A7
	.4byte 0x00A60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00550056
	.4byte 0x00570052
	.4byte 0x00590058
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005A0054
	.4byte 0x00530000

.global cf_CCharEffectNpc_typestr
cf_CCharEffectNpc_typestr:
	.asciz "cf::CCharEffectNpc"
	.balign 4
	.4byte 0


.global lbl_804FD758
lbl_804FD758:
	.4byte 0x00790051
	.4byte 0x00650000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x000000A7
	.4byte 0x00A60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00550056
	.4byte 0x00570052
	.4byte 0x00590058
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x005A0054
	.4byte 0x00530000

.global cf_CCharEffectObj_typestr
cf_CCharEffectObj_typestr:
	.asciz "cf::CCharEffectObj"
	.balign 4
	.4byte 0


.global lbl_804FD7C8
lbl_804FD7C8:
	.4byte 0x007B0051
	.4byte 0x00650000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x020B020B
	.4byte 0x02150215
	.4byte 0x02290229
	.4byte 0x000000A7
	.4byte 0x00A60000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00550056
	.4byte 0x00570052
	.4byte 0x00590058
	.4byte 0
	.4byte 0x00000031
	.4byte 0
	.4byte 0x005A0054
	.4byte 0x00530000

.global cf_CCharEffectPc_typestr
cf_CCharEffectPc_typestr:
	.asciz "cf::CCharEffectPc"
	.balign 4
	.4byte 0

.section .data, "wa"  # 0x805281E0 - 0x80573C60



.global __vt__cf_CCharEffectEne
__vt__cf_CCharEffectEne:
	.4byte __RTTI__cf_CCharEffectEne
	.4byte 0
	.4byte func_80081C60
	.4byte func_8015BF04
	.4byte func_8015C9A0
	.4byte func_800CEE7C
	.4byte func_8015CD04
	.4byte func_8015C2B0

.global cf_CCharEffectEne_hierarchy
cf_CCharEffectEne_hierarchy:
	.4byte __RTTI__cf_CCharEffect
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__cf_CCharEffectNpc
__vt__cf_CCharEffectNpc:
	.4byte __RTTI__cf_CCharEffectNpc
	.4byte 0
	.4byte func_80081564
	.4byte func_8015BF04
	.4byte func_8015C9A0
	.4byte func_800CEE7C
	.4byte func_8015CD9C
	.4byte func_8015C2B0

.global cf_CCharEffectNpc_hierarchy
cf_CCharEffectNpc_hierarchy:
	.4byte __RTTI__cf_CCharEffect
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__cf_CCharEffectObj
__vt__cf_CCharEffectObj:
	.4byte __RTTI__cf_CCharEffectObj
	.4byte 0
	.4byte func_80081654
	.4byte func_8015BF04
	.4byte func_8015C9A0
	.4byte func_800CEE7C
	.4byte func_8015CE44
	.4byte func_8015C2B0

.global cf_CCharEffectObj_hierarchy
cf_CCharEffectObj_hierarchy:
	.4byte __RTTI__cf_CCharEffect
	.4byte 0
	.4byte 0
	.4byte 0


.global __vt__cf_CCharEffectPc
__vt__cf_CCharEffectPc:
	.4byte __RTTI__cf_CCharEffectPc
	.4byte 0
	.4byte func_800805C0
	.4byte func_8015BF04
	.4byte func_8015C9A0
	.4byte func_800CEE7C
	.4byte func_8015CED0
	.4byte func_8015CF90

.global cf_CCharEffectPc_hierarchy
cf_CCharEffectPc_hierarchy:
	.4byte __RTTI__cf_CCharEffect
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600




.global __RTTI__cf_CCharEffectEne
__RTTI__cf_CCharEffectEne:
	.4byte cf_CCharEffectEne_typestr
	.4byte cf_CCharEffectEne_hierarchy

.global __RTTI__cf_CCharEffectNpc
__RTTI__cf_CCharEffectNpc:
	.4byte cf_CCharEffectNpc_typestr
	.4byte cf_CCharEffectNpc_hierarchy

.global __RTTI__cf_CCharEffectObj
__RTTI__cf_CCharEffectObj:
	.4byte cf_CCharEffectObj_typestr
	.4byte cf_CCharEffectObj_hierarchy

.global __RTTI__cf_CCharEffectPc
__RTTI__cf_CCharEffectPc:
	.4byte cf_CCharEffectPc_typestr
	.4byte cf_CCharEffectPc_hierarchy

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8000D67C", local
.hidden "@etb_8000D67C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000D67C"

.obj "@etb_8000D684", local
.hidden "@etb_8000D684"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000D684"

.obj "@etb_8000D68C", local
.hidden "@etb_8000D68C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000D68C"

.obj "@etb_8000D694", local
.hidden "@etb_8000D694"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000D694"

.obj "@etb_8000D69C", local
.hidden "@etb_8000D69C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000D69C"

.obj "@etb_8000D6A4", local
.hidden "@etb_8000D6A4"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8000D6A4"

.obj "@etb_8000D6AC", local
.hidden "@etb_8000D6AC"
	.4byte 0x10080000
	.4byte 0x00000034
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x0000006C
	.4byte __dt__IWorkEvent
.endobj "@etb_8000D6AC"

.obj "@etb_8000D6C8", local
.hidden "@etb_8000D6C8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000D6C8"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80028988", local
.hidden "@eti_80028988"
	.4byte func_8015CCBC
	.4byte 0x00000048
	.4byte "@etb_8000D67C"
.endobj "@eti_80028988"

.obj "@eti_80028994", local
.hidden "@eti_80028994"
	.4byte func_8015CD04
	.4byte 0x00000098
	.4byte "@etb_8000D684"
.endobj "@eti_80028994"

.obj "@eti_800289A0", local
.hidden "@eti_800289A0"
	.4byte func_8015CD9C
	.4byte 0x000000A8
	.4byte "@etb_8000D68C"
.endobj "@eti_800289A0"

.obj "@eti_800289AC", local
.hidden "@eti_800289AC"
	.4byte func_8015CE44
	.4byte 0x0000008C
	.4byte "@etb_8000D694"
.endobj "@eti_800289AC"

.obj "@eti_800289B8", local
.hidden "@eti_800289B8"
	.4byte func_8015CED0
	.4byte 0x000000C0
	.4byte "@etb_8000D69C"
.endobj "@eti_800289B8"

.obj "@eti_800289C4", local
.hidden "@eti_800289C4"
	.4byte func_8015CF90
	.4byte 0x00000128
	.4byte "@etb_8000D6A4"
.endobj "@eti_800289C4"

.obj "@eti_800289D0", local
.hidden "@eti_800289D0"
	.4byte func_8015D0D4
	.4byte 0x00000060
	.4byte "@etb_8000D6AC"
.endobj "@eti_800289D0"

.obj "@eti_800289DC", local
.hidden "@eti_800289DC"
	.4byte func_8015D144
	.4byte 0x000000C4
	.4byte "@etb_8000D6C8"
.endobj "@eti_800289DC"
