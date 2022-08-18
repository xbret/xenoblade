.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global __MIXRmtUpdateSettings
__MIXRmtUpdateSettings:
/* 8034CD40 00316300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034CD44 00316304  7C 08 02 A6 */	mflr r0
/* 8034CD48 00316308  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034CD4C 0031630C  1C 03 00 44 */	mulli r0, r3, 0x44
/* 8034CD50 00316310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034CD54 00316314  93 C1 00 08 */	stw r30, 8(r1)
/* 8034CD58 00316318  7C 9E 23 78 */	mr r30, r4
/* 8034CD5C 0031631C  80 6D B8 68 */	lwz r3, lbl_806679E8@sda21(r13)
/* 8034CD60 00316320  7F E3 02 14 */	add r31, r3, r0
/* 8034CD64 00316324  7C 63 00 2E */	lwzx r3, r3, r0
/* 8034CD68 00316328  54 60 00 03 */	rlwinm. r0, r3, 0, 0, 1
/* 8034CD6C 0031632C  41 82 03 F8 */	beq lbl_8034D164
/* 8034CD70 00316330  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 8034CD74 00316334  41 82 00 50 */	beq lbl_8034CDC4
/* 8034CD78 00316338  A0 1F 00 26 */	lhz r0, 0x26(r31)
/* 8034CD7C 0031633C  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 8034CD80 00316340  A0 1F 00 2A */	lhz r0, 0x2a(r31)
/* 8034CD84 00316344  B0 1F 00 28 */	sth r0, 0x28(r31)
/* 8034CD88 00316348  A0 1F 00 2E */	lhz r0, 0x2e(r31)
/* 8034CD8C 0031634C  B0 1F 00 2C */	sth r0, 0x2c(r31)
/* 8034CD90 00316350  A0 1F 00 32 */	lhz r0, 0x32(r31)
/* 8034CD94 00316354  B0 1F 00 30 */	sth r0, 0x30(r31)
/* 8034CD98 00316358  A0 1F 00 36 */	lhz r0, 0x36(r31)
/* 8034CD9C 0031635C  B0 1F 00 34 */	sth r0, 0x34(r31)
/* 8034CDA0 00316360  A0 1F 00 3A */	lhz r0, 0x3a(r31)
/* 8034CDA4 00316364  B0 1F 00 38 */	sth r0, 0x38(r31)
/* 8034CDA8 00316368  A0 1F 00 3E */	lhz r0, 0x3e(r31)
/* 8034CDAC 0031636C  B0 1F 00 3C */	sth r0, 0x3c(r31)
/* 8034CDB0 00316370  A0 1F 00 42 */	lhz r0, 0x42(r31)
/* 8034CDB4 00316374  B0 1F 00 40 */	sth r0, 0x40(r31)
/* 8034CDB8 00316378  80 1F 00 00 */	lwz r0, 0(r31)
/* 8034CDBC 0031637C  54 00 00 7E */	clrlwi r0, r0, 1
/* 8034CDC0 00316380  90 1F 00 00 */	stw r0, 0(r31)
lbl_8034CDC4:
/* 8034CDC4 00316384  80 1F 00 00 */	lwz r0, 0(r31)
/* 8034CDC8 00316388  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 8034CDCC 0031638C  41 82 01 04 */	beq lbl_8034CED0
/* 8034CDD0 00316390  80 7F 00 04 */	lwz r3, 4(r31)
/* 8034CDD4 00316394  4B FF CE DD */	bl __MIXGetVolume
/* 8034CDD8 00316398  B0 7F 00 26 */	sth r3, 0x26(r31)
/* 8034CDDC 0031639C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8034CDE0 003163A0  4B FF CE D1 */	bl __MIXGetVolume
/* 8034CDE4 003163A4  B0 7F 00 2E */	sth r3, 0x2e(r31)
/* 8034CDE8 003163A8  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8034CDEC 003163AC  4B FF CE C5 */	bl __MIXGetVolume
/* 8034CDF0 003163B0  B0 7F 00 36 */	sth r3, 0x36(r31)
/* 8034CDF4 003163B4  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8034CDF8 003163B8  4B FF CE B9 */	bl __MIXGetVolume
/* 8034CDFC 003163BC  B0 7F 00 3E */	sth r3, 0x3e(r31)
/* 8034CE00 003163C0  80 1F 00 00 */	lwz r0, 0(r31)
/* 8034CE04 003163C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8034CE08 003163C8  41 82 00 14 */	beq lbl_8034CE1C
/* 8034CE0C 003163CC  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8034CE10 003163D0  4B FF CE A1 */	bl __MIXGetVolume
/* 8034CE14 003163D4  B0 7F 00 2A */	sth r3, 0x2a(r31)
/* 8034CE18 003163D8  48 00 00 18 */	b lbl_8034CE30
lbl_8034CE1C:
/* 8034CE1C 003163DC  80 7F 00 04 */	lwz r3, 4(r31)
/* 8034CE20 003163E0  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8034CE24 003163E4  7C 63 02 14 */	add r3, r3, r0
/* 8034CE28 003163E8  4B FF CE 89 */	bl __MIXGetVolume
/* 8034CE2C 003163EC  B0 7F 00 2A */	sth r3, 0x2a(r31)
lbl_8034CE30:
/* 8034CE30 003163F0  80 1F 00 00 */	lwz r0, 0(r31)
/* 8034CE34 003163F4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8034CE38 003163F8  41 82 00 14 */	beq lbl_8034CE4C
/* 8034CE3C 003163FC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8034CE40 00316400  4B FF CE 71 */	bl __MIXGetVolume
/* 8034CE44 00316404  B0 7F 00 32 */	sth r3, 0x32(r31)
/* 8034CE48 00316408  48 00 00 18 */	b lbl_8034CE60
lbl_8034CE4C:
/* 8034CE4C 0031640C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8034CE50 00316410  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8034CE54 00316414  7C 63 02 14 */	add r3, r3, r0
/* 8034CE58 00316418  4B FF CE 59 */	bl __MIXGetVolume
/* 8034CE5C 0031641C  B0 7F 00 32 */	sth r3, 0x32(r31)
lbl_8034CE60:
/* 8034CE60 00316420  80 1F 00 00 */	lwz r0, 0(r31)
/* 8034CE64 00316424  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8034CE68 00316428  41 82 00 14 */	beq lbl_8034CE7C
/* 8034CE6C 0031642C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8034CE70 00316430  4B FF CE 41 */	bl __MIXGetVolume
/* 8034CE74 00316434  B0 7F 00 3A */	sth r3, 0x3a(r31)
/* 8034CE78 00316438  48 00 00 18 */	b lbl_8034CE90
lbl_8034CE7C:
/* 8034CE7C 0031643C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8034CE80 00316440  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8034CE84 00316444  7C 63 02 14 */	add r3, r3, r0
/* 8034CE88 00316448  4B FF CE 29 */	bl __MIXGetVolume
/* 8034CE8C 0031644C  B0 7F 00 3A */	sth r3, 0x3a(r31)
lbl_8034CE90:
/* 8034CE90 00316450  80 1F 00 00 */	lwz r0, 0(r31)
/* 8034CE94 00316454  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8034CE98 00316458  41 82 00 14 */	beq lbl_8034CEAC
/* 8034CE9C 0031645C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 8034CEA0 00316460  4B FF CE 11 */	bl __MIXGetVolume
/* 8034CEA4 00316464  B0 7F 00 42 */	sth r3, 0x42(r31)
/* 8034CEA8 00316468  48 00 00 18 */	b lbl_8034CEC0
lbl_8034CEAC:
/* 8034CEAC 0031646C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8034CEB0 00316470  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 8034CEB4 00316474  7C 63 02 14 */	add r3, r3, r0
/* 8034CEB8 00316478  4B FF CD F9 */	bl __MIXGetVolume
/* 8034CEBC 0031647C  B0 7F 00 42 */	sth r3, 0x42(r31)
lbl_8034CEC0:
/* 8034CEC0 00316480  80 1F 00 00 */	lwz r0, 0(r31)
/* 8034CEC4 00316484  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 8034CEC8 00316488  64 00 80 00 */	oris r0, r0, 0x8000
/* 8034CECC 0031648C  90 1F 00 00 */	stw r0, 0(r31)
lbl_8034CED0:
/* 8034CED0 00316490  A0 9F 00 24 */	lhz r4, 0x24(r31)
/* 8034CED4 00316494  38 7E 01 04 */	addi r3, r30, 0x104
/* 8034CED8 00316498  B0 9E 01 02 */	sth r4, 0x102(r30)
/* 8034CEDC 0031649C  38 00 00 00 */	li r0, 0
/* 8034CEE0 003164A0  2C 04 00 00 */	cmpwi r4, 0
/* 8034CEE4 003164A4  41 82 00 08 */	beq lbl_8034CEEC
/* 8034CEE8 003164A8  60 00 00 01 */	ori r0, r0, 1
lbl_8034CEEC:
/* 8034CEEC 003164AC  A0 DF 00 24 */	lhz r6, 0x24(r31)
/* 8034CEF0 003164B0  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8034CEF4 003164B4  A0 BF 00 26 */	lhz r5, 0x26(r31)
/* 8034CEF8 003164B8  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8034CEFC 003164BC  7C 86 28 50 */	subf r4, r6, r5
/* 8034CF00 003164C0  7C 87 20 96 */	mulhw r4, r7, r4
/* 8034CF04 003164C4  7C 84 16 70 */	srawi r4, r4, 2
/* 8034CF08 003164C8  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8034CF0C 003164CC  7C 84 2A 14 */	add r4, r4, r5
/* 8034CF10 003164D0  B0 83 00 00 */	sth r4, 0(r3)
/* 8034CF14 003164D4  54 84 04 3F */	clrlwi. r4, r4, 0x10
/* 8034CF18 003164D8  41 82 00 0C */	beq lbl_8034CF24
/* 8034CF1C 003164DC  60 00 00 02 */	ori r0, r0, 2
/* 8034CF20 003164E0  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034CF24:
/* 8034CF24 003164E4  A0 9F 00 28 */	lhz r4, 0x28(r31)
/* 8034CF28 003164E8  B0 83 00 02 */	sth r4, 2(r3)
/* 8034CF2C 003164EC  2C 04 00 00 */	cmpwi r4, 0
/* 8034CF30 003164F0  41 82 00 0C */	beq lbl_8034CF3C
/* 8034CF34 003164F4  60 00 00 04 */	ori r0, r0, 4
/* 8034CF38 003164F8  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034CF3C:
/* 8034CF3C 003164FC  A0 DF 00 28 */	lhz r6, 0x28(r31)
/* 8034CF40 00316500  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8034CF44 00316504  A0 BF 00 2A */	lhz r5, 0x2a(r31)
/* 8034CF48 00316508  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8034CF4C 0031650C  7C 86 28 50 */	subf r4, r6, r5
/* 8034CF50 00316510  7C 87 20 96 */	mulhw r4, r7, r4
/* 8034CF54 00316514  7C 84 16 70 */	srawi r4, r4, 2
/* 8034CF58 00316518  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8034CF5C 0031651C  7C 84 2A 14 */	add r4, r4, r5
/* 8034CF60 00316520  B0 83 00 04 */	sth r4, 4(r3)
/* 8034CF64 00316524  54 84 04 3F */	clrlwi. r4, r4, 0x10
/* 8034CF68 00316528  41 82 00 0C */	beq lbl_8034CF74
/* 8034CF6C 0031652C  60 00 00 08 */	ori r0, r0, 8
/* 8034CF70 00316530  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034CF74:
/* 8034CF74 00316534  A0 9F 00 2C */	lhz r4, 0x2c(r31)
/* 8034CF78 00316538  B0 83 00 06 */	sth r4, 6(r3)
/* 8034CF7C 0031653C  2C 04 00 00 */	cmpwi r4, 0
/* 8034CF80 00316540  41 82 00 0C */	beq lbl_8034CF8C
/* 8034CF84 00316544  60 00 00 10 */	ori r0, r0, 0x10
/* 8034CF88 00316548  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034CF8C:
/* 8034CF8C 0031654C  A0 DF 00 2C */	lhz r6, 0x2c(r31)
/* 8034CF90 00316550  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8034CF94 00316554  A0 BF 00 2E */	lhz r5, 0x2e(r31)
/* 8034CF98 00316558  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8034CF9C 0031655C  7C 86 28 50 */	subf r4, r6, r5
/* 8034CFA0 00316560  7C 87 20 96 */	mulhw r4, r7, r4
/* 8034CFA4 00316564  7C 84 16 70 */	srawi r4, r4, 2
/* 8034CFA8 00316568  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8034CFAC 0031656C  7C 84 2A 14 */	add r4, r4, r5
/* 8034CFB0 00316570  B0 83 00 08 */	sth r4, 8(r3)
/* 8034CFB4 00316574  54 84 04 3F */	clrlwi. r4, r4, 0x10
/* 8034CFB8 00316578  41 82 00 0C */	beq lbl_8034CFC4
/* 8034CFBC 0031657C  60 00 00 20 */	ori r0, r0, 0x20
/* 8034CFC0 00316580  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034CFC4:
/* 8034CFC4 00316584  A0 9F 00 30 */	lhz r4, 0x30(r31)
/* 8034CFC8 00316588  B0 83 00 0A */	sth r4, 0xa(r3)
/* 8034CFCC 0031658C  2C 04 00 00 */	cmpwi r4, 0
/* 8034CFD0 00316590  41 82 00 0C */	beq lbl_8034CFDC
/* 8034CFD4 00316594  60 00 00 40 */	ori r0, r0, 0x40
/* 8034CFD8 00316598  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034CFDC:
/* 8034CFDC 0031659C  A0 DF 00 30 */	lhz r6, 0x30(r31)
/* 8034CFE0 003165A0  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8034CFE4 003165A4  A0 BF 00 32 */	lhz r5, 0x32(r31)
/* 8034CFE8 003165A8  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8034CFEC 003165AC  7C 86 28 50 */	subf r4, r6, r5
/* 8034CFF0 003165B0  7C 87 20 96 */	mulhw r4, r7, r4
/* 8034CFF4 003165B4  7C 84 16 70 */	srawi r4, r4, 2
/* 8034CFF8 003165B8  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8034CFFC 003165BC  7C 84 2A 14 */	add r4, r4, r5
/* 8034D000 003165C0  B0 83 00 0C */	sth r4, 0xc(r3)
/* 8034D004 003165C4  54 84 04 3F */	clrlwi. r4, r4, 0x10
/* 8034D008 003165C8  41 82 00 0C */	beq lbl_8034D014
/* 8034D00C 003165CC  60 00 00 80 */	ori r0, r0, 0x80
/* 8034D010 003165D0  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034D014:
/* 8034D014 003165D4  A0 9F 00 34 */	lhz r4, 0x34(r31)
/* 8034D018 003165D8  B0 83 00 0E */	sth r4, 0xe(r3)
/* 8034D01C 003165DC  2C 04 00 00 */	cmpwi r4, 0
/* 8034D020 003165E0  41 82 00 0C */	beq lbl_8034D02C
/* 8034D024 003165E4  60 00 01 00 */	ori r0, r0, 0x100
/* 8034D028 003165E8  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034D02C:
/* 8034D02C 003165EC  A0 DF 00 34 */	lhz r6, 0x34(r31)
/* 8034D030 003165F0  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8034D034 003165F4  A0 BF 00 36 */	lhz r5, 0x36(r31)
/* 8034D038 003165F8  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8034D03C 003165FC  7C 86 28 50 */	subf r4, r6, r5
/* 8034D040 00316600  7C 87 20 96 */	mulhw r4, r7, r4
/* 8034D044 00316604  7C 84 16 70 */	srawi r4, r4, 2
/* 8034D048 00316608  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8034D04C 0031660C  7C 84 2A 14 */	add r4, r4, r5
/* 8034D050 00316610  B0 83 00 10 */	sth r4, 0x10(r3)
/* 8034D054 00316614  54 84 04 3F */	clrlwi. r4, r4, 0x10
/* 8034D058 00316618  41 82 00 0C */	beq lbl_8034D064
/* 8034D05C 0031661C  60 00 02 00 */	ori r0, r0, 0x200
/* 8034D060 00316620  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034D064:
/* 8034D064 00316624  A0 9F 00 38 */	lhz r4, 0x38(r31)
/* 8034D068 00316628  B0 83 00 12 */	sth r4, 0x12(r3)
/* 8034D06C 0031662C  2C 04 00 00 */	cmpwi r4, 0
/* 8034D070 00316630  41 82 00 0C */	beq lbl_8034D07C
/* 8034D074 00316634  60 00 04 00 */	ori r0, r0, 0x400
/* 8034D078 00316638  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034D07C:
/* 8034D07C 0031663C  A0 DF 00 38 */	lhz r6, 0x38(r31)
/* 8034D080 00316640  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8034D084 00316644  A0 BF 00 3A */	lhz r5, 0x3a(r31)
/* 8034D088 00316648  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8034D08C 0031664C  7C 86 28 50 */	subf r4, r6, r5
/* 8034D090 00316650  7C 87 20 96 */	mulhw r4, r7, r4
/* 8034D094 00316654  7C 84 16 70 */	srawi r4, r4, 2
/* 8034D098 00316658  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8034D09C 0031665C  7C 84 2A 14 */	add r4, r4, r5
/* 8034D0A0 00316660  B0 83 00 14 */	sth r4, 0x14(r3)
/* 8034D0A4 00316664  54 84 04 3F */	clrlwi. r4, r4, 0x10
/* 8034D0A8 00316668  41 82 00 0C */	beq lbl_8034D0B4
/* 8034D0AC 0031666C  60 00 08 00 */	ori r0, r0, 0x800
/* 8034D0B0 00316670  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034D0B4:
/* 8034D0B4 00316674  A0 9F 00 3C */	lhz r4, 0x3c(r31)
/* 8034D0B8 00316678  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8034D0BC 0031667C  2C 04 00 00 */	cmpwi r4, 0
/* 8034D0C0 00316680  41 82 00 0C */	beq lbl_8034D0CC
/* 8034D0C4 00316684  60 00 10 00 */	ori r0, r0, 0x1000
/* 8034D0C8 00316688  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034D0CC:
/* 8034D0CC 0031668C  A0 DF 00 3C */	lhz r6, 0x3c(r31)
/* 8034D0D0 00316690  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8034D0D4 00316694  A0 BF 00 3E */	lhz r5, 0x3e(r31)
/* 8034D0D8 00316698  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8034D0DC 0031669C  7C 86 28 50 */	subf r4, r6, r5
/* 8034D0E0 003166A0  7C 87 20 96 */	mulhw r4, r7, r4
/* 8034D0E4 003166A4  7C 84 16 70 */	srawi r4, r4, 2
/* 8034D0E8 003166A8  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8034D0EC 003166AC  7C 84 2A 14 */	add r4, r4, r5
/* 8034D0F0 003166B0  B0 83 00 18 */	sth r4, 0x18(r3)
/* 8034D0F4 003166B4  54 84 04 3F */	clrlwi. r4, r4, 0x10
/* 8034D0F8 003166B8  41 82 00 0C */	beq lbl_8034D104
/* 8034D0FC 003166BC  60 00 20 00 */	ori r0, r0, 0x2000
/* 8034D100 003166C0  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034D104:
/* 8034D104 003166C4  A0 9F 00 40 */	lhz r4, 0x40(r31)
/* 8034D108 003166C8  B0 83 00 1A */	sth r4, 0x1a(r3)
/* 8034D10C 003166CC  2C 04 00 00 */	cmpwi r4, 0
/* 8034D110 003166D0  41 82 00 0C */	beq lbl_8034D11C
/* 8034D114 003166D4  60 00 40 00 */	ori r0, r0, 0x4000
/* 8034D118 003166D8  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034D11C:
/* 8034D11C 003166DC  A0 DF 00 40 */	lhz r6, 0x40(r31)
/* 8034D120 003166E0  3C 80 38 E4 */	lis r4, 0x38E38E39@ha
/* 8034D124 003166E4  A0 BF 00 42 */	lhz r5, 0x42(r31)
/* 8034D128 003166E8  38 E4 8E 39 */	addi r7, r4, 0x38E38E39@l
/* 8034D12C 003166EC  7C 86 28 50 */	subf r4, r6, r5
/* 8034D130 003166F0  7C 87 20 96 */	mulhw r4, r7, r4
/* 8034D134 003166F4  7C 84 16 70 */	srawi r4, r4, 2
/* 8034D138 003166F8  54 85 0F FE */	srwi r5, r4, 0x1f
/* 8034D13C 003166FC  7C 84 2A 14 */	add r4, r4, r5
/* 8034D140 00316700  B0 83 00 1C */	sth r4, 0x1c(r3)
/* 8034D144 00316704  54 83 04 3F */	clrlwi. r3, r4, 0x10
/* 8034D148 00316708  41 82 00 0C */	beq lbl_8034D154
/* 8034D14C 0031670C  60 00 80 00 */	ori r0, r0, 0x8000
/* 8034D150 00316710  54 00 04 3E */	clrlwi r0, r0, 0x10
lbl_8034D154:
/* 8034D154 00316714  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8034D158 00316718  B0 1E 01 00 */	sth r0, 0x100(r30)
/* 8034D15C 0031671C  64 60 03 00 */	oris r0, r3, 0x300
/* 8034D160 00316720  90 1E 00 1C */	stw r0, 0x1c(r30)
lbl_8034D164:
/* 8034D164 00316724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034D168 00316728  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034D16C 0031672C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8034D170 00316730  7C 08 03 A6 */	mtlr r0
/* 8034D174 00316734  38 21 00 10 */	addi r1, r1, 0x10
/* 8034D178 00316738  4E 80 00 20 */	blr 

.balign 16, 0
.global __MIXRmtResetChannel
__MIXRmtResetChannel:
/* 8034D180 00316740  1C 83 00 44 */	mulli r4, r3, 0x44
/* 8034D184 00316744  80 AD B8 68 */	lwz r5, lbl_806679E8@sda21(r13)
/* 8034D188 00316748  38 60 00 00 */	li r3, 0
/* 8034D18C 0031674C  7C 64 29 6E */	stwux r3, r4, r5
/* 8034D190 00316750  38 00 FC 40 */	li r0, -960
/* 8034D194 00316754  90 64 00 04 */	stw r3, 4(r4)
/* 8034D198 00316758  90 64 00 08 */	stw r3, 8(r4)
/* 8034D19C 0031675C  90 64 00 0C */	stw r3, 0xc(r4)
/* 8034D1A0 00316760  90 64 00 10 */	stw r3, 0x10(r4)
/* 8034D1A4 00316764  90 04 00 14 */	stw r0, 0x14(r4)
/* 8034D1A8 00316768  90 04 00 18 */	stw r0, 0x18(r4)
/* 8034D1AC 0031676C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8034D1B0 00316770  90 04 00 20 */	stw r0, 0x20(r4)
/* 8034D1B4 00316774  B0 64 00 40 */	sth r3, 0x40(r4)
/* 8034D1B8 00316778  B0 64 00 3C */	sth r3, 0x3c(r4)
/* 8034D1BC 0031677C  B0 64 00 38 */	sth r3, 0x38(r4)
/* 8034D1C0 00316780  B0 64 00 34 */	sth r3, 0x34(r4)
/* 8034D1C4 00316784  B0 64 00 30 */	sth r3, 0x30(r4)
/* 8034D1C8 00316788  B0 64 00 2C */	sth r3, 0x2c(r4)
/* 8034D1CC 0031678C  B0 64 00 28 */	sth r3, 0x28(r4)
/* 8034D1D0 00316790  B0 64 00 24 */	sth r3, 0x24(r4)
/* 8034D1D4 00316794  4E 80 00 20 */	blr 