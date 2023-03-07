.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn TRKSuppAccessFile, global
/* 802CCAA0 00296060  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 802CCAA4 00296064  7C 08 02 A6 */	mflr r0
/* 802CCAA8 00296068  2C 04 00 00 */	cmpwi r4, 0
/* 802CCAAC 0029606C  90 01 00 94 */	stw r0, 0x94(r1)
/* 802CCAB0 00296070  BE 61 00 5C */	stmw r19, 0x5c(r1)
/* 802CCAB4 00296074  7C 78 1B 78 */	mr r24, r3
/* 802CCAB8 00296078  7C 99 23 78 */	mr r25, r4
/* 802CCABC 0029607C  7C BA 2B 78 */	mr r26, r5
/* 802CCAC0 00296080  7C DB 33 78 */	mr r27, r6
/* 802CCAC4 00296084  7C FC 3B 78 */	mr r28, r7
/* 802CCAC8 00296088  7D 1D 43 78 */	mr r29, r8
/* 802CCACC 0029608C  41 82 00 10 */	beq .L_802CCADC
/* 802CCAD0 00296090  80 05 00 00 */	lwz r0, 0(r5)
/* 802CCAD4 00296094  2C 00 00 00 */	cmpwi r0, 0
/* 802CCAD8 00296098  40 82 00 0C */	bne .L_802CCAE4
.L_802CCADC:
/* 802CCADC 0029609C  38 60 00 02 */	li r3, 2
/* 802CCAE0 002960A0  48 00 01 A0 */	b .L_802CCC80
.L_802CCAE4:
/* 802CCAE4 002960A4  3B C0 00 00 */	li r30, 0
/* 802CCAE8 002960A8  93 C6 00 00 */	stw r30, 0(r6)
/* 802CCAEC 002960AC  3B E0 00 00 */	li r31, 0
/* 802CCAF0 002960B0  3A E0 00 00 */	li r23, 0
/* 802CCAF4 002960B4  48 00 01 5C */	b .L_802CCC50
.L_802CCAF8:
/* 802CCAF8 002960B8  38 61 00 18 */	addi r3, r1, 0x18
/* 802CCAFC 002960BC  38 80 00 00 */	li r4, 0
/* 802CCB00 002960C0  38 A0 00 40 */	li r5, 0x40
/* 802CCB04 002960C4  4B FF F1 B5 */	bl TRK_memset
/* 802CCB08 002960C8  80 1A 00 00 */	lwz r0, 0(r26)
/* 802CCB0C 002960CC  3A A0 08 00 */	li r21, 0x800
/* 802CCB10 002960D0  7C 1F 00 50 */	subf r0, r31, r0
/* 802CCB14 002960D4  28 00 08 00 */	cmplwi r0, 0x800
/* 802CCB18 002960D8  41 81 00 08 */	bgt .L_802CCB20
/* 802CCB1C 002960DC  7C 15 03 78 */	mr r21, r0
.L_802CCB20:
/* 802CCB20 002960E0  2C 1D 00 00 */	cmpwi r29, 0
/* 802CCB24 002960E4  38 00 00 D0 */	li r0, 0xd0
/* 802CCB28 002960E8  41 82 00 08 */	beq .L_802CCB30
/* 802CCB2C 002960EC  38 00 00 D1 */	li r0, 0xd1
.L_802CCB30:
/* 802CCB30 002960F0  2C 1D 00 00 */	cmpwi r29, 0
/* 802CCB34 002960F4  98 01 00 1C */	stb r0, 0x1c(r1)
/* 802CCB38 002960F8  38 00 00 40 */	li r0, 0x40
/* 802CCB3C 002960FC  40 82 00 08 */	bne .L_802CCB44
/* 802CCB40 00296100  38 15 00 40 */	addi r0, r21, 0x40
.L_802CCB44:
/* 802CCB44 00296104  90 01 00 18 */	stw r0, 0x18(r1)
/* 802CCB48 00296108  38 61 00 0C */	addi r3, r1, 0xc
/* 802CCB4C 0029610C  38 81 00 08 */	addi r4, r1, 8
/* 802CCB50 00296110  93 01 00 20 */	stw r24, 0x20(r1)
/* 802CCB54 00296114  B2 A1 00 24 */	sth r21, 0x24(r1)
/* 802CCB58 00296118  48 00 09 4D */	bl TRKGetFreeBuffer
/* 802CCB5C 0029611C  80 61 00 08 */	lwz r3, 8(r1)
/* 802CCB60 00296120  38 81 00 18 */	addi r4, r1, 0x18
/* 802CCB64 00296124  38 A0 00 40 */	li r5, 0x40
/* 802CCB68 00296128  48 00 0D 75 */	bl TRKAppendBuffer_ui8
/* 802CCB6C 0029612C  2C 1D 00 00 */	cmpwi r29, 0
/* 802CCB70 00296130  7C 77 1B 78 */	mr r23, r3
/* 802CCB74 00296134  40 82 00 20 */	bne .L_802CCB94
/* 802CCB78 00296138  2C 03 00 00 */	cmpwi r3, 0
/* 802CCB7C 0029613C  40 82 00 18 */	bne .L_802CCB94
/* 802CCB80 00296140  80 61 00 08 */	lwz r3, 8(r1)
/* 802CCB84 00296144  7E A5 AB 78 */	mr r5, r21
/* 802CCB88 00296148  7C 99 FA 14 */	add r4, r25, r31
/* 802CCB8C 0029614C  48 00 0D 51 */	bl TRKAppendBuffer_ui8
/* 802CCB90 00296150  7C 77 1B 78 */	mr r23, r3
.L_802CCB94:
/* 802CCB94 00296154  2C 17 00 00 */	cmpwi r23, 0
/* 802CCB98 00296158  40 82 00 AC */	bne .L_802CCC44
/* 802CCB9C 0029615C  2C 1C 00 00 */	cmpwi r28, 0
/* 802CCBA0 00296160  41 82 00 98 */	beq .L_802CCC38
/* 802CCBA4 00296164  80 61 00 08 */	lwz r3, 8(r1)
/* 802CCBA8 00296168  38 81 00 10 */	addi r4, r1, 0x10
/* 802CCBAC 0029616C  48 00 00 E9 */	bl TRKRequestSend
/* 802CCBB0 00296170  2C 03 00 00 */	cmpwi r3, 0
/* 802CCBB4 00296174  7C 77 1B 78 */	mr r23, r3
/* 802CCBB8 00296178  40 82 00 10 */	bne .L_802CCBC8
/* 802CCBBC 0029617C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CCBC0 00296180  48 00 09 81 */	bl TRKGetBuffer
/* 802CCBC4 00296184  7C 76 1B 78 */	mr r22, r3
.L_802CCBC8:
/* 802CCBC8 00296188  80 16 00 1C */	lwz r0, 0x1c(r22)
/* 802CCBCC 0029618C  2C 1D 00 00 */	cmpwi r29, 0
/* 802CCBD0 00296190  A2 76 00 20 */	lhz r19, 0x20(r22)
/* 802CCBD4 00296194  54 14 06 3E */	clrlwi r20, r0, 0x18
/* 802CCBD8 00296198  41 82 00 40 */	beq .L_802CCC18
/* 802CCBDC 0029619C  2C 17 00 00 */	cmpwi r23, 0
/* 802CCBE0 002961A0  40 82 00 38 */	bne .L_802CCC18
/* 802CCBE4 002961A4  7C 13 A8 40 */	cmplw r19, r21
/* 802CCBE8 002961A8  41 81 00 30 */	bgt .L_802CCC18
/* 802CCBEC 002961AC  7E C3 B3 78 */	mr r3, r22
/* 802CCBF0 002961B0  38 80 00 40 */	li r4, 0x40
/* 802CCBF4 002961B4  48 00 09 C1 */	bl TRKSetBufferPosition
/* 802CCBF8 002961B8  7E C3 B3 78 */	mr r3, r22
/* 802CCBFC 002961BC  7E 65 9B 78 */	mr r5, r19
/* 802CCC00 002961C0  7C 99 FA 14 */	add r4, r25, r31
/* 802CCC04 002961C4  48 00 0F 0D */	bl TRKReadBuffer_ui8
/* 802CCC08 002961C8  2C 03 03 02 */	cmpwi r3, 0x302
/* 802CCC0C 002961CC  7C 77 1B 78 */	mr r23, r3
/* 802CCC10 002961D0  40 82 00 08 */	bne .L_802CCC18
/* 802CCC14 002961D4  3A E0 00 00 */	li r23, 0
.L_802CCC18:
/* 802CCC18 002961D8  7C 13 A8 40 */	cmplw r19, r21
/* 802CCC1C 002961DC  41 82 00 0C */	beq .L_802CCC28
/* 802CCC20 002961E0  7E 75 9B 78 */	mr r21, r19
/* 802CCC24 002961E4  3B C0 00 01 */	li r30, 1
.L_802CCC28:
/* 802CCC28 002961E8  92 9B 00 00 */	stw r20, 0(r27)
/* 802CCC2C 002961EC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CCC30 002961F0  48 00 09 35 */	bl TRKReleaseBuffer
/* 802CCC34 002961F4  48 00 00 10 */	b .L_802CCC44
.L_802CCC38:
/* 802CCC38 002961F8  80 61 00 08 */	lwz r3, 8(r1)
/* 802CCC3C 002961FC  48 00 07 E5 */	bl TRKMessageSend
/* 802CCC40 00296200  7C 77 1B 78 */	mr r23, r3
.L_802CCC44:
/* 802CCC44 00296204  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802CCC48 00296208  48 00 09 1D */	bl TRKReleaseBuffer
/* 802CCC4C 0029620C  7F FF AA 14 */	add r31, r31, r21
.L_802CCC50:
/* 802CCC50 00296210  2C 1E 00 00 */	cmpwi r30, 0
/* 802CCC54 00296214  40 82 00 24 */	bne .L_802CCC78
/* 802CCC58 00296218  80 1A 00 00 */	lwz r0, 0(r26)
/* 802CCC5C 0029621C  7C 1F 00 40 */	cmplw r31, r0
/* 802CCC60 00296220  40 80 00 18 */	bge .L_802CCC78
/* 802CCC64 00296224  2C 17 00 00 */	cmpwi r23, 0
/* 802CCC68 00296228  40 82 00 10 */	bne .L_802CCC78
/* 802CCC6C 0029622C  80 1B 00 00 */	lwz r0, 0(r27)
/* 802CCC70 00296230  2C 00 00 00 */	cmpwi r0, 0
/* 802CCC74 00296234  41 82 FE 84 */	beq .L_802CCAF8
.L_802CCC78:
/* 802CCC78 00296238  93 FA 00 00 */	stw r31, 0(r26)
/* 802CCC7C 0029623C  7E E3 BB 78 */	mr r3, r23
.L_802CCC80:
/* 802CCC80 00296240  BA 61 00 5C */	lmw r19, 0x5c(r1)
/* 802CCC84 00296244  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802CCC88 00296248  7C 08 03 A6 */	mtlr r0
/* 802CCC8C 0029624C  38 21 00 90 */	addi r1, r1, 0x90
/* 802CCC90 00296250  4E 80 00 20 */	blr 
.endfn TRKSuppAccessFile

.fn TRKRequestSend, global
/* 802CCC94 00296254  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CCC98 00296258  7C 08 02 A6 */	mflr r0
/* 802CCC9C 0029625C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CCCA0 00296260  BF 41 00 08 */	stmw r26, 8(r1)
/* 802CCCA4 00296264  7C 9A 23 78 */	mr r26, r4
/* 802CCCA8 00296268  48 00 07 79 */	bl TRKMessageSend
/* 802CCCAC 0029626C  2C 03 00 00 */	cmpwi r3, 0
/* 802CCCB0 00296270  7C 7E 1B 78 */	mr r30, r3
/* 802CCCB4 00296274  40 82 00 CC */	bne .L_802CCD80
/* 802CCCB8 00296278  3B 60 00 00 */	li r27, 0
/* 802CCCBC 0029627C  3B E0 FF FF */	li r31, -1
.L_802CCCC0:
/* 802CCCC0 00296280  4B FF FC 7D */	bl TRKTestForPacket
/* 802CCCC4 00296284  2C 03 FF FF */	cmpwi r3, -1
/* 802CCCC8 00296288  90 7A 00 00 */	stw r3, 0(r26)
/* 802CCCCC 0029628C  41 82 FF F4 */	beq .L_802CCCC0
/* 802CCCD0 00296290  48 00 08 71 */	bl TRKGetBuffer
/* 802CCCD4 00296294  7C 7D 1B 78 */	mr r29, r3
/* 802CCCD8 00296298  38 80 00 00 */	li r4, 0
/* 802CCCDC 0029629C  48 00 08 D9 */	bl TRKSetBufferPosition
/* 802CCCE0 002962A0  8B 9D 00 10 */	lbz r28, 0x10(r29)
/* 802CCCE4 002962A4  28 1C 00 80 */	cmplwi r28, 0x80
/* 802CCCE8 002962A8  40 80 00 14 */	bge .L_802CCCFC
/* 802CCCEC 002962AC  80 7A 00 00 */	lwz r3, 0(r26)
/* 802CCCF0 002962B0  4B FF FD 45 */	bl TRKProcessInput
/* 802CCCF4 002962B4  93 FA 00 00 */	stw r31, 0(r26)
/* 802CCCF8 002962B8  4B FF FF C8 */	b .L_802CCCC0
.L_802CCCFC:
/* 802CCCFC 002962BC  80 1A 00 00 */	lwz r0, 0(r26)
/* 802CCD00 002962C0  2C 00 FF FF */	cmpwi r0, -1
/* 802CCD04 002962C4  41 82 00 7C */	beq .L_802CCD80
/* 802CCD08 002962C8  80 9D 00 04 */	lwz r4, 4(r29)
/* 802CCD0C 002962CC  28 04 00 40 */	cmplwi r4, 0x40
/* 802CCD10 002962D0  40 80 00 18 */	bge .L_802CCD28
/* 802CCD14 002962D4  3C 60 80 54 */	lis r3, lbl_8053FEA8@ha
/* 802CCD18 002962D8  38 63 FE A8 */	addi r3, r3, lbl_8053FEA8@l
/* 802CCD1C 002962DC  4C C6 31 82 */	crclr 6
/* 802CCD20 002962E0  48 08 81 D1 */	bl OSReport
/* 802CCD24 002962E4  3B 60 00 01 */	li r27, 1
.L_802CCD28:
/* 802CCD28 002962E8  2C 1E 00 00 */	cmpwi r30, 0
/* 802CCD2C 002962EC  40 82 00 10 */	bne .L_802CCD3C
/* 802CCD30 002962F0  2C 1B 00 00 */	cmpwi r27, 0
/* 802CCD34 002962F4  40 82 00 08 */	bne .L_802CCD3C
/* 802CCD38 002962F8  8B FD 00 14 */	lbz r31, 0x14(r29)
.L_802CCD3C:
/* 802CCD3C 002962FC  2C 1E 00 00 */	cmpwi r30, 0
/* 802CCD40 00296300  40 82 00 20 */	bne .L_802CCD60
/* 802CCD44 00296304  2C 1B 00 00 */	cmpwi r27, 0
/* 802CCD48 00296308  40 82 00 18 */	bne .L_802CCD60
/* 802CCD4C 0029630C  2C 1C 00 80 */	cmpwi r28, 0x80
/* 802CCD50 00296310  40 82 00 0C */	bne .L_802CCD5C
/* 802CCD54 00296314  2C 1F 00 00 */	cmpwi r31, 0
/* 802CCD58 00296318  41 82 00 08 */	beq .L_802CCD60
.L_802CCD5C:
/* 802CCD5C 0029631C  3B 60 00 01 */	li r27, 1
.L_802CCD60:
/* 802CCD60 00296320  2C 1E 00 00 */	cmpwi r30, 0
/* 802CCD64 00296324  40 82 00 0C */	bne .L_802CCD70
/* 802CCD68 00296328  2C 1B 00 00 */	cmpwi r27, 0
/* 802CCD6C 0029632C  41 82 00 14 */	beq .L_802CCD80
.L_802CCD70:
/* 802CCD70 00296330  80 7A 00 00 */	lwz r3, 0(r26)
/* 802CCD74 00296334  48 00 07 F1 */	bl TRKReleaseBuffer
/* 802CCD78 00296338  38 00 FF FF */	li r0, -1
/* 802CCD7C 0029633C  90 1A 00 00 */	stw r0, 0(r26)
.L_802CCD80:
/* 802CCD80 00296340  80 1A 00 00 */	lwz r0, 0(r26)
/* 802CCD84 00296344  2C 00 FF FF */	cmpwi r0, -1
/* 802CCD88 00296348  40 82 00 1C */	bne .L_802CCDA4
/* 802CCD8C 0029634C  3C 60 80 54 */	lis r3, lbl_8053FEA8@ha
/* 802CCD90 00296350  38 63 FE A8 */	addi r3, r3, lbl_8053FEA8@l
/* 802CCD94 00296354  38 63 00 1F */	addi r3, r3, 0x1f
/* 802CCD98 00296358  4C C6 31 82 */	crclr 6
/* 802CCD9C 0029635C  48 08 81 55 */	bl OSReport
/* 802CCDA0 00296360  3B C0 08 00 */	li r30, 0x800
.L_802CCDA4:
/* 802CCDA4 00296364  7F C3 F3 78 */	mr r3, r30
/* 802CCDA8 00296368  BB 41 00 08 */	lmw r26, 8(r1)
/* 802CCDAC 0029636C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CCDB0 00296370  7C 08 03 A6 */	mtlr r0
/* 802CCDB4 00296374  38 21 00 20 */	addi r1, r1, 0x20
/* 802CCDB8 00296378  4E 80 00 20 */	blr 
.endfn TRKRequestSend

.fn HandleOpenFileSupportRequest, global
/* 802CCDBC 0029637C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802CCDC0 00296380  7C 08 02 A6 */	mflr r0
/* 802CCDC4 00296384  90 01 00 74 */	stw r0, 0x74(r1)
/* 802CCDC8 00296388  BF 61 00 5C */	stmw r27, 0x5c(r1)
/* 802CCDCC 0029638C  7C 7B 1B 78 */	mr r27, r3
/* 802CCDD0 00296390  7C 9E 23 78 */	mr r30, r4
/* 802CCDD4 00296394  7C BC 2B 78 */	mr r28, r5
/* 802CCDD8 00296398  7C DD 33 78 */	mr r29, r6
/* 802CCDDC 0029639C  38 61 00 18 */	addi r3, r1, 0x18
/* 802CCDE0 002963A0  38 80 00 00 */	li r4, 0
/* 802CCDE4 002963A4  38 A0 00 40 */	li r5, 0x40
/* 802CCDE8 002963A8  4B FF EE D1 */	bl TRK_memset
/* 802CCDEC 002963AC  38 00 00 00 */	li r0, 0
/* 802CCDF0 002963B0  90 1C 00 00 */	stw r0, 0(r28)
/* 802CCDF4 002963B4  38 00 00 D2 */	li r0, 0xd2
/* 802CCDF8 002963B8  7F 63 DB 78 */	mr r3, r27
/* 802CCDFC 002963BC  98 01 00 1C */	stb r0, 0x1c(r1)
/* 802CCE00 002963C0  4B FF FC 85 */	bl TRK_strlen
/* 802CCE04 002963C4  38 03 00 41 */	addi r0, r3, 0x41
/* 802CCE08 002963C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 802CCE0C 002963CC  7F 63 DB 78 */	mr r3, r27
/* 802CCE10 002963D0  9B C1 00 20 */	stb r30, 0x20(r1)
/* 802CCE14 002963D4  4B FF FC 71 */	bl TRK_strlen
/* 802CCE18 002963D8  38 03 00 01 */	addi r0, r3, 1
/* 802CCE1C 002963DC  B0 01 00 24 */	sth r0, 0x24(r1)
/* 802CCE20 002963E0  38 61 00 0C */	addi r3, r1, 0xc
/* 802CCE24 002963E4  38 81 00 08 */	addi r4, r1, 8
/* 802CCE28 002963E8  48 00 06 7D */	bl TRKGetFreeBuffer
/* 802CCE2C 002963EC  80 61 00 08 */	lwz r3, 8(r1)
/* 802CCE30 002963F0  38 81 00 18 */	addi r4, r1, 0x18
/* 802CCE34 002963F4  38 A0 00 40 */	li r5, 0x40
/* 802CCE38 002963F8  48 00 0A A5 */	bl TRKAppendBuffer_ui8
/* 802CCE3C 002963FC  2C 03 00 00 */	cmpwi r3, 0
/* 802CCE40 00296400  7C 7F 1B 78 */	mr r31, r3
/* 802CCE44 00296404  40 82 00 24 */	bne .L_802CCE68
/* 802CCE48 00296408  7F 63 DB 78 */	mr r3, r27
/* 802CCE4C 0029640C  4B FF FC 39 */	bl TRK_strlen
/* 802CCE50 00296410  7C 65 1B 78 */	mr r5, r3
/* 802CCE54 00296414  80 61 00 08 */	lwz r3, 8(r1)
/* 802CCE58 00296418  7F 64 DB 78 */	mr r4, r27
/* 802CCE5C 0029641C  38 A5 00 01 */	addi r5, r5, 1
/* 802CCE60 00296420  48 00 0A 7D */	bl TRKAppendBuffer_ui8
/* 802CCE64 00296424  7C 7F 1B 78 */	mr r31, r3
.L_802CCE68:
/* 802CCE68 00296428  2C 1F 00 00 */	cmpwi r31, 0
/* 802CCE6C 0029642C  40 82 00 48 */	bne .L_802CCEB4
/* 802CCE70 00296430  38 00 00 00 */	li r0, 0
/* 802CCE74 00296434  90 1D 00 00 */	stw r0, 0(r29)
/* 802CCE78 00296438  38 81 00 10 */	addi r4, r1, 0x10
/* 802CCE7C 0029643C  80 61 00 08 */	lwz r3, 8(r1)
/* 802CCE80 00296440  4B FF FE 15 */	bl TRKRequestSend
/* 802CCE84 00296444  2C 03 00 00 */	cmpwi r3, 0
/* 802CCE88 00296448  7C 7F 1B 78 */	mr r31, r3
/* 802CCE8C 0029644C  40 82 00 10 */	bne .L_802CCE9C
/* 802CCE90 00296450  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CCE94 00296454  48 00 06 AD */	bl TRKGetBuffer
/* 802CCE98 00296458  7C 7E 1B 78 */	mr r30, r3
.L_802CCE9C:
/* 802CCE9C 0029645C  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802CCEA0 00296460  90 1D 00 00 */	stw r0, 0(r29)
/* 802CCEA4 00296464  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802CCEA8 00296468  90 1C 00 00 */	stw r0, 0(r28)
/* 802CCEAC 0029646C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CCEB0 00296470  48 00 06 B5 */	bl TRKReleaseBuffer
.L_802CCEB4:
/* 802CCEB4 00296474  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802CCEB8 00296478  48 00 06 AD */	bl TRKReleaseBuffer
/* 802CCEBC 0029647C  7F E3 FB 78 */	mr r3, r31
/* 802CCEC0 00296480  BB 61 00 5C */	lmw r27, 0x5c(r1)
/* 802CCEC4 00296484  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802CCEC8 00296488  7C 08 03 A6 */	mtlr r0
/* 802CCECC 0029648C  38 21 00 70 */	addi r1, r1, 0x70
/* 802CCED0 00296490  4E 80 00 20 */	blr 
.endfn HandleOpenFileSupportRequest

.fn HandleCloseFileSupportRequest, global
/* 802CCED4 00296494  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802CCED8 00296498  7C 08 02 A6 */	mflr r0
/* 802CCEDC 0029649C  38 A0 00 40 */	li r5, 0x40
/* 802CCEE0 002964A0  90 01 00 74 */	stw r0, 0x74(r1)
/* 802CCEE4 002964A4  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 802CCEE8 002964A8  93 C1 00 68 */	stw r30, 0x68(r1)
/* 802CCEEC 002964AC  7C 7E 1B 78 */	mr r30, r3
/* 802CCEF0 002964B0  38 61 00 18 */	addi r3, r1, 0x18
/* 802CCEF4 002964B4  93 A1 00 64 */	stw r29, 0x64(r1)
/* 802CCEF8 002964B8  7C 9D 23 78 */	mr r29, r4
/* 802CCEFC 002964BC  38 80 00 00 */	li r4, 0
/* 802CCF00 002964C0  4B FF ED B9 */	bl TRK_memset
/* 802CCF04 002964C4  38 60 00 D3 */	li r3, 0xd3
/* 802CCF08 002964C8  38 00 00 40 */	li r0, 0x40
/* 802CCF0C 002964CC  98 61 00 1C */	stb r3, 0x1c(r1)
/* 802CCF10 002964D0  38 61 00 0C */	addi r3, r1, 0xc
/* 802CCF14 002964D4  38 81 00 08 */	addi r4, r1, 8
/* 802CCF18 002964D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 802CCF1C 002964DC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 802CCF20 002964E0  48 00 05 85 */	bl TRKGetFreeBuffer
/* 802CCF24 002964E4  2C 03 00 00 */	cmpwi r3, 0
/* 802CCF28 002964E8  7C 7F 1B 78 */	mr r31, r3
/* 802CCF2C 002964EC  40 82 00 18 */	bne .L_802CCF44
/* 802CCF30 002964F0  80 61 00 08 */	lwz r3, 8(r1)
/* 802CCF34 002964F4  38 81 00 18 */	addi r4, r1, 0x18
/* 802CCF38 002964F8  38 A0 00 40 */	li r5, 0x40
/* 802CCF3C 002964FC  48 00 09 A1 */	bl TRKAppendBuffer_ui8
/* 802CCF40 00296500  7C 7F 1B 78 */	mr r31, r3
.L_802CCF44:
/* 802CCF44 00296504  2C 1F 00 00 */	cmpwi r31, 0
/* 802CCF48 00296508  40 82 00 48 */	bne .L_802CCF90
/* 802CCF4C 0029650C  38 00 00 00 */	li r0, 0
/* 802CCF50 00296510  90 1D 00 00 */	stw r0, 0(r29)
/* 802CCF54 00296514  38 81 00 10 */	addi r4, r1, 0x10
/* 802CCF58 00296518  80 61 00 08 */	lwz r3, 8(r1)
/* 802CCF5C 0029651C  4B FF FD 39 */	bl TRKRequestSend
/* 802CCF60 00296520  2C 03 00 00 */	cmpwi r3, 0
/* 802CCF64 00296524  7C 7F 1B 78 */	mr r31, r3
/* 802CCF68 00296528  40 82 00 10 */	bne .L_802CCF78
/* 802CCF6C 0029652C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CCF70 00296530  48 00 05 D1 */	bl TRKGetBuffer
/* 802CCF74 00296534  7C 7E 1B 78 */	mr r30, r3
.L_802CCF78:
/* 802CCF78 00296538  2C 1F 00 00 */	cmpwi r31, 0
/* 802CCF7C 0029653C  40 82 00 0C */	bne .L_802CCF88
/* 802CCF80 00296540  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802CCF84 00296544  90 1D 00 00 */	stw r0, 0(r29)
.L_802CCF88:
/* 802CCF88 00296548  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CCF8C 0029654C  48 00 05 D9 */	bl TRKReleaseBuffer
.L_802CCF90:
/* 802CCF90 00296550  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802CCF94 00296554  48 00 05 D1 */	bl TRKReleaseBuffer
/* 802CCF98 00296558  7F E3 FB 78 */	mr r3, r31
/* 802CCF9C 0029655C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 802CCFA0 00296560  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 802CCFA4 00296564  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 802CCFA8 00296568  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802CCFAC 0029656C  7C 08 03 A6 */	mtlr r0
/* 802CCFB0 00296570  38 21 00 70 */	addi r1, r1, 0x70
/* 802CCFB4 00296574  4E 80 00 20 */	blr 
.endfn HandleCloseFileSupportRequest

.fn HandlePositionFileSupportRequest, global
/* 802CCFB8 00296578  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802CCFBC 0029657C  7C 08 02 A6 */	mflr r0
/* 802CCFC0 00296580  90 01 00 74 */	stw r0, 0x74(r1)
/* 802CCFC4 00296584  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 802CCFC8 00296588  7C BF 2B 78 */	mr r31, r5
/* 802CCFCC 0029658C  38 A0 00 40 */	li r5, 0x40
/* 802CCFD0 00296590  93 C1 00 68 */	stw r30, 0x68(r1)
/* 802CCFD4 00296594  7C DE 33 78 */	mr r30, r6
/* 802CCFD8 00296598  93 A1 00 64 */	stw r29, 0x64(r1)
/* 802CCFDC 0029659C  7C 9D 23 78 */	mr r29, r4
/* 802CCFE0 002965A0  38 80 00 00 */	li r4, 0
/* 802CCFE4 002965A4  93 81 00 60 */	stw r28, 0x60(r1)
/* 802CCFE8 002965A8  7C 7C 1B 78 */	mr r28, r3
/* 802CCFEC 002965AC  38 61 00 18 */	addi r3, r1, 0x18
/* 802CCFF0 002965B0  4B FF EC C9 */	bl TRK_memset
/* 802CCFF4 002965B4  38 60 00 D4 */	li r3, 0xd4
/* 802CCFF8 002965B8  38 00 00 40 */	li r0, 0x40
/* 802CCFFC 002965BC  98 61 00 1C */	stb r3, 0x1c(r1)
/* 802CD000 002965C0  38 61 00 0C */	addi r3, r1, 0xc
/* 802CD004 002965C4  38 81 00 08 */	addi r4, r1, 8
/* 802CD008 002965C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 802CD00C 002965CC  93 81 00 20 */	stw r28, 0x20(r1)
/* 802CD010 002965D0  80 1D 00 00 */	lwz r0, 0(r29)
/* 802CD014 002965D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CD018 002965D8  9B E1 00 28 */	stb r31, 0x28(r1)
/* 802CD01C 002965DC  48 00 04 89 */	bl TRKGetFreeBuffer
/* 802CD020 002965E0  2C 03 00 00 */	cmpwi r3, 0
/* 802CD024 002965E4  7C 7F 1B 78 */	mr r31, r3
/* 802CD028 002965E8  40 82 00 18 */	bne .L_802CD040
/* 802CD02C 002965EC  80 61 00 08 */	lwz r3, 8(r1)
/* 802CD030 002965F0  38 81 00 18 */	addi r4, r1, 0x18
/* 802CD034 002965F4  38 A0 00 40 */	li r5, 0x40
/* 802CD038 002965F8  48 00 08 A5 */	bl TRKAppendBuffer_ui8
/* 802CD03C 002965FC  7C 7F 1B 78 */	mr r31, r3
.L_802CD040:
/* 802CD040 00296600  2C 1F 00 00 */	cmpwi r31, 0
/* 802CD044 00296604  40 82 00 54 */	bne .L_802CD098
/* 802CD048 00296608  38 00 00 00 */	li r0, 0
/* 802CD04C 0029660C  90 1E 00 00 */	stw r0, 0(r30)
/* 802CD050 00296610  38 00 FF FF */	li r0, -1
/* 802CD054 00296614  38 81 00 10 */	addi r4, r1, 0x10
/* 802CD058 00296618  90 1D 00 00 */	stw r0, 0(r29)
/* 802CD05C 0029661C  80 61 00 08 */	lwz r3, 8(r1)
/* 802CD060 00296620  4B FF FC 35 */	bl TRKRequestSend
/* 802CD064 00296624  2C 03 00 00 */	cmpwi r3, 0
/* 802CD068 00296628  7C 7F 1B 78 */	mr r31, r3
/* 802CD06C 0029662C  40 82 00 24 */	bne .L_802CD090
/* 802CD070 00296630  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CD074 00296634  48 00 04 CD */	bl TRKGetBuffer
/* 802CD078 00296638  2C 03 00 00 */	cmpwi r3, 0
/* 802CD07C 0029663C  41 82 00 14 */	beq .L_802CD090
/* 802CD080 00296640  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802CD084 00296644  90 1E 00 00 */	stw r0, 0(r30)
/* 802CD088 00296648  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802CD08C 0029664C  90 1D 00 00 */	stw r0, 0(r29)
.L_802CD090:
/* 802CD090 00296650  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802CD094 00296654  48 00 04 D1 */	bl TRKReleaseBuffer
.L_802CD098:
/* 802CD098 00296658  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802CD09C 0029665C  48 00 04 C9 */	bl TRKReleaseBuffer
/* 802CD0A0 00296660  7F E3 FB 78 */	mr r3, r31
/* 802CD0A4 00296664  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 802CD0A8 00296668  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 802CD0AC 0029666C  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 802CD0B0 00296670  83 81 00 60 */	lwz r28, 0x60(r1)
/* 802CD0B4 00296674  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802CD0B8 00296678  7C 08 03 A6 */	mtlr r0
/* 802CD0BC 0029667C  38 21 00 70 */	addi r1, r1, 0x70
/* 802CD0C0 00296680  4E 80 00 20 */	blr 
.endfn HandlePositionFileSupportRequest

.section .data, "wa"  # 0x805281E0 - 0x80573C60

#.balign 8

.obj lbl_8053FEA8, global
	.asciz "MetroTRK - bad reply size %ld\n"
	.asciz "MetroTRK - failed in RequestSend\n"
	.balign 4
	.4byte 0
.endobj lbl_8053FEA8
