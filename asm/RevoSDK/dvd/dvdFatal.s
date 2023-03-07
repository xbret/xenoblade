.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn __DVDShowFatalMessage, global
/* 80310200 002D97C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80310204 002D97C4  7C 08 02 A6 */	mflr r0
/* 80310208 002D97C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031020C 002D97CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80310210 002D97D0  3B E0 00 00 */	li r31, 0
/* 80310214 002D97D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80310218 002D97D8  83 C2 BC 08 */	lwz r30, lbl_8066BF88@sda21(r2)
/* 8031021C 002D97DC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80310220 002D97E0  48 05 0D F1 */	bl SCGetLanguage
/* 80310224 002D97E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80310228 002D97E8  40 82 00 10 */	bne .L_80310238
/* 8031022C 002D97EC  38 60 00 01 */	li r3, 1
/* 80310230 002D97F0  48 04 77 E1 */	bl OSSetFontEncode
/* 80310234 002D97F4  48 00 00 0C */	b .L_80310240
.L_80310238:
/* 80310238 002D97F8  38 60 00 00 */	li r3, 0
/* 8031023C 002D97FC  48 04 77 D5 */	bl OSSetFontEncode
.L_80310240:
/* 80310240 002D9800  48 05 13 91 */	bl SCGetProductGameRegion
/* 80310244 002D9804  7C 63 07 74 */	extsb r3, r3
/* 80310248 002D9808  38 03 FF FC */	addi r0, r3, -4
/* 8031024C 002D980C  28 00 00 01 */	cmplwi r0, 1
/* 80310250 002D9810  40 81 00 24 */	ble .L_80310274
/* 80310254 002D9814  2C 03 00 02 */	cmpwi r3, 2
/* 80310258 002D9818  41 82 00 10 */	beq .L_80310268
/* 8031025C 002D981C  3F A0 80 51 */	lis r29, __DVDErrorMessageDefault@ha
/* 80310260 002D9820  3B BD E3 A8 */	addi r29, r29, __DVDErrorMessageDefault@l
/* 80310264 002D9824  48 00 00 14 */	b .L_80310278
.L_80310268:
/* 80310268 002D9828  3F A0 80 51 */	lis r29, __DVDErrorMessageEurope@ha
/* 8031026C 002D982C  3B BD E3 C4 */	addi r29, r29, __DVDErrorMessageEurope@l
/* 80310270 002D9830  48 00 00 08 */	b .L_80310278
.L_80310274:
/* 80310274 002D9834  3B AD 98 18 */	addi r29, r13, __DVDErrorMessageChinaKorea@sda21
.L_80310278:
/* 80310278 002D9838  48 05 0D 99 */	bl SCGetLanguage
/* 8031027C 002D983C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80310280 002D9840  28 00 00 06 */	cmplwi r0, 6
/* 80310284 002D9844  40 81 00 0C */	ble .L_80310290
/* 80310288 002D9848  80 BD 00 04 */	lwz r5, 4(r29)
/* 8031028C 002D984C  48 00 00 10 */	b .L_8031029C
.L_80310290:
/* 80310290 002D9850  48 05 0D 81 */	bl SCGetLanguage
/* 80310294 002D9854  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 80310298 002D9858  7C BD 00 2E */	lwzx r5, r29, r0
.L_8031029C:
/* 8031029C 002D985C  93 E1 00 08 */	stw r31, 8(r1)
/* 803102A0 002D9860  38 61 00 0C */	addi r3, r1, 0xc
/* 803102A4 002D9864  38 81 00 08 */	addi r4, r1, 8
/* 803102A8 002D9868  93 C1 00 0C */	stw r30, 0xc(r1)
/* 803102AC 002D986C  48 04 6C 95 */	bl OSFatal
/* 803102B0 002D9870  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803102B4 002D9874  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803102B8 002D9878  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803102BC 002D987C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803102C0 002D9880  7C 08 03 A6 */	mtlr r0
/* 803102C4 002D9884  38 21 00 20 */	addi r1, r1, 0x20
/* 803102C8 002D9888  4E 80 00 20 */	blr 
.endfn __DVDShowFatalMessage

.balign 16, 0
.fn DVDSetAutoFatalMessaging, global
/* 803102D0 002D9890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803102D4 002D9894  7C 08 02 A6 */	mflr r0
/* 803102D8 002D9898  90 01 00 14 */	stw r0, 0x14(r1)
/* 803102DC 002D989C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803102E0 002D98A0  7C 7F 1B 78 */	mr r31, r3
/* 803102E4 002D98A4  48 04 86 CD */	bl OSDisableInterrupts
/* 803102E8 002D98A8  80 AD B7 08 */	lwz r5, FatalFunc@sda21(r13)
/* 803102EC 002D98AC  2C 1F 00 00 */	cmpwi r31, 0
/* 803102F0 002D98B0  38 80 00 00 */	li r4, 0
/* 803102F4 002D98B4  7C 05 00 D0 */	neg r0, r5
/* 803102F8 002D98B8  7C 00 2B 78 */	or r0, r0, r5
/* 803102FC 002D98BC  54 1F 0F FE */	srwi r31, r0, 0x1f
/* 80310300 002D98C0  41 82 00 0C */	beq .L_8031030C
/* 80310304 002D98C4  3C 80 80 31 */	lis r4, __DVDShowFatalMessage@ha
/* 80310308 002D98C8  38 84 02 00 */	addi r4, r4, __DVDShowFatalMessage@l
.L_8031030C:
/* 8031030C 002D98CC  90 8D B7 08 */	stw r4, FatalFunc@sda21(r13)
/* 80310310 002D98D0  48 04 86 E1 */	bl OSRestoreInterrupts
/* 80310314 002D98D4  7F E3 FB 78 */	mr r3, r31
/* 80310318 002D98D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031031C 002D98DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80310320 002D98E0  7C 08 03 A6 */	mtlr r0
/* 80310324 002D98E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80310328 002D98E8  4E 80 00 20 */	blr 
.endfn DVDSetAutoFatalMessaging

.balign 16, 0
.fn __DVDGetAutoFatalMessaging, global
/* 80310330 002D98F0  80 6D B7 08 */	lwz r3, FatalFunc@sda21(r13)
/* 80310334 002D98F4  7C 03 00 D0 */	neg r0, r3
/* 80310338 002D98F8  7C 00 1B 78 */	or r0, r0, r3
/* 8031033C 002D98FC  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80310340 002D9900  4E 80 00 20 */	blr 
.endfn __DVDGetAutoFatalMessaging

.balign 16, 0
.fn __DVDPrintFatalMessage, global
/* 80310350 002D9910  81 8D B7 08 */	lwz r12, FatalFunc@sda21(r13)
/* 80310354 002D9914  2C 0C 00 00 */	cmpwi r12, 0
/* 80310358 002D9918  4D 82 00 20 */	beqlr 
/* 8031035C 002D991C  7D 89 03 A6 */	mtctr r12
/* 80310360 002D9920  4E 80 04 20 */	bctr 
/* 80310364 002D9924  4E 80 00 20 */	blr
.endfn __DVDPrintFatalMessage

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj __DVDErrorMessageDefault, local
	.4byte lbl_80549D60
	.4byte lbl_80549DF0
	.4byte lbl_80549EA0
	.4byte lbl_80549F58
	.4byte lbl_8054A008
	.4byte lbl_8054A0A8
	.4byte lbl_8054A154
.endobj __DVDErrorMessageDefault

.obj __DVDErrorMessageEurope, local
	.4byte lbl_80549D60
	.4byte lbl_8054A1E8
	.4byte lbl_80549EA0
	.4byte lbl_8054A28C
	.4byte lbl_8054A330
	.4byte lbl_8054A0A8
	.4byte lbl_8054A154
.endobj __DVDErrorMessageEurope

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

#"\n\n\nエラーが発生しました。\n\nイジェクトボタンを押してディスクを取り出してか\nら、本体の電源をOFFにして、本体の取扱説明書の\n指示に従ってください。"
.obj lbl_80549D60, global
	.4byte 0x0A0A0A83
	.4byte 0x47838981
	.4byte 0x5B82AA94
	.4byte 0xAD90B682
	.4byte 0xB582DC82
	.4byte 0xB582BD81
	.4byte 0x420A0A83
	.4byte 0x43835783
	.4byte 0x46834E83
	.4byte 0x67837B83
	.4byte 0x5E839382
	.4byte 0xF0899F82
	.4byte 0xB582C483
	.4byte 0x66834283
	.4byte 0x58834E82
	.4byte 0xF08EE682
	.4byte 0xE88F6F82
	.4byte 0xB582C482
	.4byte 0xA90A82E7
	.4byte 0x8141967B
	.4byte 0x91CC82CC
	.4byte 0x93648CB9
	.4byte 0x82F04F46
	.4byte 0x4682C982
	.4byte 0xB582C481
	.4byte 0x41967B91
	.4byte 0xCC82CC8E
	.4byte 0xE688B590
	.4byte 0xE096BE8F
	.4byte 0x9182CC0A
	.4byte 0x8E778EA6
	.4byte 0x82C98F5D
	.4byte 0x82C182C4
	.4byte 0x82AD82BE
	.4byte 0x82B382A2
	.4byte 0x81420000
.endobj lbl_80549D60

.obj lbl_80549DF0, global
	.asciz "\n\n\nAn error has occurred.\nPress the Eject Button, remove the\nGame Disc, and turn off the power to the\nconsole. Please read the Wii Operations\nManual for further instructions."
	.balign 4
.endobj lbl_80549DF0


	#"\n\n\nEin Fehler ist aufgetreten.\nDrücke den Ausgabeknopf, entnimm die\nDisc und schalte die Wii-Konsole aus.\nBitte lies die Wii-Bedienungsanleitung,\num weitere Informationen zu erhalten."
.obj lbl_80549EA0, global
	.4byte 0x0A0A0A45
	.4byte 0x696E2046
	.4byte 0x65686C65
	.4byte 0x72206973
	.4byte 0x74206175
	.4byte 0x66676574
	.4byte 0x72657465
	.4byte 0x6E2E0A44
	.4byte 0x72FC636B
	.asciz "e den Ausgabeknopf, entnimm die\nDisc und schalte die Wii-Konsole aus.\nBitte lies die Wii-Bedienungsanleitung,\num weitere Informationen zu erhalten."
.endobj lbl_80549EA0


	#.asciz "\n\n\nUne erreur est survenue.\nAppuyez sur le bouton EJECT, retirez\nle disque et éteignez la console.\nVeuillez vous référer au Mode d'emploi\nde la Wii pour plus de détails."
.obj lbl_80549F58, global
	.4byte 0x0A0A0A55
	.4byte 0x6E652065
	.4byte 0x72726575
	.4byte 0x72206573
	.4byte 0x74207375
	.4byte 0x7276656E
	.4byte 0x75652E0A
	.4byte 0x41707075
	.4byte 0x79657A20
	.4byte 0x73757220
	.4byte 0x6C652062
	.4byte 0x6F75746F
	.4byte 0x6E20454A
	.4byte 0x4543542C
	.4byte 0x20726574
	.4byte 0x6972657A
	.4byte 0x0A6C6520
	.4byte 0x64697371
	.4byte 0x75652065
	.4byte 0x7420E974
	.4byte 0x6569676E
	.4byte 0x657A206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x652E0A56
	.4byte 0x6575696C
	.4byte 0x6C657A20
	.4byte 0x766F7573
	.4byte 0x2072E966
	.4byte 0xE9726572
	.4byte 0x20617520
	.4byte 0x4D6F6465
	.4byte 0x20642765
	.4byte 0x6D706C6F
	.4byte 0x690A6465
	.4byte 0x206C6120
	.4byte 0x57696920
	.4byte 0x706F7572
	.4byte 0x20706C75
	.4byte 0x73206465
	.4byte 0x2064E974
	.asciz "ails."
	.balign 4
	.4byte 0
.endobj lbl_80549F58


	#"\n\n\nOcurrió un Error.\nOprime el Botón EJECT, saca el disco\ny apaga la consola. Consulta el manual\nde operaciones de la consola Wii para\nobtener más información."
.obj lbl_8054A008, global
	.4byte 0x0A0A0A4F
	.4byte 0x63757272
	.4byte 0x69F32075
	.4byte 0x6E204572
	.4byte 0x726F722E
	.4byte 0x0A4F7072
	.4byte 0x696D6520
	.4byte 0x656C2042
	.4byte 0x6F74F36E
	.4byte 0x20454A45
	.4byte 0x43542C20
	.4byte 0x73616361
	.4byte 0x20656C20
	.4byte 0x64697363
	.4byte 0x6F0A7920
	.4byte 0x61706167
	.4byte 0x61206C61
	.4byte 0x20636F6E
	.4byte 0x736F6C61
	.4byte 0x2E20436F
	.4byte 0x6E73756C
	.4byte 0x74612065
	.4byte 0x6C206D61
	.4byte 0x6E75616C
	.4byte 0x0A646520
	.4byte 0x6F706572
	.4byte 0x6163696F
	.4byte 0x6E657320
	.4byte 0x6465206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x61205769
	.4byte 0x69207061
	.4byte 0x72610A6F
	.4byte 0x6274656E
	.4byte 0x6572206D
	.4byte 0xE1732069
	.4byte 0x6E666F72
	.4byte 0x6D616369
	.4byte 0xF36E2E00
.endobj lbl_8054A008


	#"\n\n\nSi è verificato un errore.\nPremi il pulsante EJECT, estrai il disco\ne spegni la console. Per maggiori\ninformazioni, consulta il manuale di\nistruzioni della console Wii."
.obj lbl_8054A0A8, global
	.4byte 0x0A0A0A53
	.4byte 0x6920E820
	.asciz "verificato un errore.\nPremi il pulsante EJECT, estrai il disco\ne spegni la console. Per maggiori\ninformazioni, consulta il manuale di\nistruzioni della console Wii."
.endobj lbl_8054A0A8

.obj lbl_8054A154, global
	.asciz "\n\n\nEr is een fout opgetreden.\nDruk op de EJECT-knop, verwijder de\ndisk en zet het Wii-systeem uit. Lees\nde Wii-handleiding voor meer informatie."
	.balign 4
.endobj lbl_8054A154

.obj lbl_8054A1E8, global
	.asciz "\n\n\nAn error has occurred.\nPress the EJECT Button, remove the Disc,\nand turn off the power to the console.\nPlease refer to the Wii Operations Manual\nfor details."
	.balign 4
.endobj lbl_8054A1E8


	#"\n\n\nUne erreur est survenue.\nAppuyez sur le bouton EJECT, retirez\nle disque et éteignez la console.\nVeuillez vous référer au mode d'emploi\nWii pour plus de détails."
.obj lbl_8054A28C, global
	.4byte 0x0A0A0A55
	.4byte 0x6E652065
	.4byte 0x72726575
	.4byte 0x72206573
	.4byte 0x74207375
	.4byte 0x7276656E
	.4byte 0x75652E0A
	.4byte 0x41707075
	.4byte 0x79657A20
	.4byte 0x73757220
	.4byte 0x6C652062
	.4byte 0x6F75746F
	.4byte 0x6E20454A
	.4byte 0x4543542C
	.4byte 0x20726574
	.4byte 0x6972657A
	.4byte 0x0A6C6520
	.4byte 0x64697371
	.4byte 0x75652065
	.4byte 0x7420E974
	.4byte 0x6569676E
	.4byte 0x657A206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x652E0A56
	.4byte 0x6575696C
	.4byte 0x6C657A20
	.4byte 0x766F7573
	.4byte 0x2072E966
	.4byte 0xE9726572
	.4byte 0x20617520
	.4byte 0x6D6F6465
	.4byte 0x20642765
	.4byte 0x6D706C6F
	.4byte 0x690A5769
	.4byte 0x6920706F
	.4byte 0x75722070
	.4byte 0x6C757320
	.4byte 0x64652064
	.4byte 0xE9746169
	.4byte 0x6C732E00
.endobj lbl_8054A28C


	#"\n\n\nSe ha producido un error.\nPulsa el Botón EJECT, extrae el disco y\napaga la consola. Consulta el manual de\ninstrucciones de la consola Wii para\nobtener más información."
	#.byte 0
.obj lbl_8054A330, global
	.4byte 0x0A0A0A53
	.4byte 0x65206861
	.4byte 0x2070726F
	.4byte 0x64756369
	.4byte 0x646F2075
	.4byte 0x6E206572
	.4byte 0x726F722E
	.4byte 0x0A50756C
	.4byte 0x73612065
	.4byte 0x6C20426F
	.4byte 0x74F36E20
	.4byte 0x454A4543
	.4byte 0x542C2065
	.4byte 0x78747261
	.4byte 0x6520656C
	.4byte 0x20646973
	.4byte 0x636F2079
	.4byte 0x0A617061
	.4byte 0x6761206C
	.4byte 0x6120636F
	.4byte 0x6E736F6C
	.4byte 0x612E2043
	.4byte 0x6F6E7375
	.4byte 0x6C746120
	.4byte 0x656C206D
	.4byte 0x616E7561
	.4byte 0x6C206465
	.4byte 0x0A696E73
	.4byte 0x74727563
	.4byte 0x63696F6E
	.4byte 0x65732064
	.4byte 0x65206C61
	.4byte 0x20636F6E
	.4byte 0x736F6C61
	.4byte 0x20576969
	.4byte 0x20706172
	.4byte 0x610A6F62
	.4byte 0x74656E65
	.4byte 0x72206DE1
	.4byte 0x7320696E
	.4byte 0x666F726D
	.4byte 0x616369F3
	.4byte 0x6E2E0000
.endobj lbl_8054A330
	
#"\n\nエラーコード１０４。\nエラーが発生しました。\n\nイジェクトボタンを押してディスクを取り出してか\nら、本体の電源をOFFにして、本体の取扱説明書の\n指示に従ってください。"
.obj lbl_8054A3DC, global
	.4byte 0x0A0A8347
	.4byte 0x8389815B
	.4byte 0x8352815B
	.4byte 0x83688250
	.4byte 0x824F8253
	.4byte 0x81420A83
	.4byte 0x47838981
	.4byte 0x5B82AA94
	.4byte 0xAD90B682
	.4byte 0xB582DC82
	.4byte 0xB582BD81
	.4byte 0x420A0A83
	.4byte 0x43835783
	.4byte 0x46834E83
	.4byte 0x67837B83
	.4byte 0x5E839382
	.4byte 0xF0899F82
	.4byte 0xB582C483
	.4byte 0x66834283
	.4byte 0x58834E82
	.4byte 0xF08EE682
	.4byte 0xE88F6F82
	.4byte 0xB582C482
	.4byte 0xA90A82E7
	.4byte 0x8141967B
	.4byte 0x91CC82CC
	.4byte 0x93648CB9
	.4byte 0x82F04F46
	.4byte 0x4682C982
	.4byte 0xB582C481
	.4byte 0x41967B91
	.4byte 0xCC82CC8E
	.4byte 0xE688B590
	.4byte 0xE096BE8F
	.4byte 0x9182CC0A
	.4byte 0x8E778EA6
	.4byte 0x82C98F5D
	.4byte 0x82C182C4
	.4byte 0x82AD82BE
	.4byte 0x82B382A2
	.4byte 0x81420000
.endobj lbl_8054A3DC

.obj lbl_8054A480, global
	.asciz "\n\nError #104,\nAn error has occurred.\nPress the EJECT Button, remove the\nGame Disc, and turn the power off.\nPlease read the Wii Operations Manual\nfor more information."
	.balign 4
.endobj lbl_8054A480

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __DVDErrorMessageChinaKorea, local
	.4byte lbl_8054A3DC
	.4byte lbl_8054A480
.endobj __DVDErrorMessageChinaKorea

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_8066BF88, global
	.4byte 0xFFFFFF00
	.4byte 0
.endobj lbl_8066BF88

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj FatalFunc, local
	.skip 0x8
.endobj FatalFunc