.include "macros.inc"
.file "monolithlib/CRootProc.o"

# 0x8001C380 - 0x8001C3C0
.section extab, "a"
.balign 4

.obj "@etb_8001C380", local
.hidden "@etb_8001C380"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C380"

.obj "@etb_8001C388", local
.hidden "@etb_8001C388"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001C388"

.obj "@etb_8001C390", local
.hidden "@etb_8001C390"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001C390"

.obj "@etb_8001C398", local
.hidden "@etb_8001C398"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001C398"

.obj "@etb_8001C3A0", local
.hidden "@etb_8001C3A0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C3A0"

.obj "@etb_8001C3A8", local
.hidden "@etb_8001C3A8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C3A8"

.obj "@etb_8001C3B0", local
.hidden "@etb_8001C3B0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C3B0"

.obj "@etb_8001C3B8", local
.hidden "@etb_8001C3B8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001C3B8"

# 0x80034004 - 0x80034064
.section extabindex, "a"
.balign 4

.obj "@eti_80034004", local
.hidden "@eti_80034004"
	.4byte fn_8043BC84
	.4byte 0x0000023C
	.4byte "@etb_8001C380"
.endobj "@eti_80034004"

.obj "@eti_80034010", local
.hidden "@eti_80034010"
	.4byte fn_8043BEC0
	.4byte 0x00000058
	.4byte "@etb_8001C388"
.endobj "@eti_80034010"

.obj "@eti_8003401C", local
.hidden "@eti_8003401C"
	.4byte fn_8043BF18
	.4byte 0x00000034
	.4byte "@etb_8001C390"
.endobj "@eti_8003401C"

.obj "@eti_80034028", local
.hidden "@eti_80034028"
	.4byte fn_8043BF4C
	.4byte 0x00000024
	.4byte "@etb_8001C398"
.endobj "@eti_80034028"

.obj "@eti_80034034", local
.hidden "@eti_80034034"
	.4byte fn_8043BF74
	.4byte 0x0000023C
	.4byte "@etb_8001C3A0"
.endobj "@eti_80034034"

.obj "@eti_80034040", local
.hidden "@eti_80034040"
	.4byte fn_8043C1D8
	.4byte 0x00000048
	.4byte "@etb_8001C3A8"
.endobj "@eti_80034040"

.obj "@eti_8003404C", local
.hidden "@eti_8003404C"
	.4byte fn_8043C220
	.4byte 0x00000048
	.4byte "@etb_8001C3B0"
.endobj "@eti_8003404C"

.obj "@eti_80034058", local
.hidden "@eti_80034058"
	.4byte fn_8043C268
	.4byte 0x0000005C
	.4byte "@etb_8001C3B8"
.endobj "@eti_80034058"

# 0x8043BC84 - 0x8043C2C4
.text
.balign 4

.fn fn_8043BC84, global
/* 8043BC84 00405244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043BC88 00405248  7C 08 02 A6 */	mflr r0
/* 8043BC8C 0040524C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043BC90 00405250  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043BC94 00405254  48 00 91 61 */	bl fn_80444DF4
/* 8043BC98 00405258  48 00 92 25 */	bl fn_80444EBC
/* 8043BC9C 0040525C  4B FF B9 19 */	bl fn_804375B4
/* 8043BCA0 00405260  7C 64 1B 78 */	mr r4, r3
/* 8043BCA4 00405264  38 60 00 54 */	li r3, 0x54
/* 8043BCA8 00405268  4B FF 8D B5 */	bl mm_malloc
/* 8043BCAC 0040526C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8043BCB0 00405270  7C 7F 1B 78 */	mr r31, r3
/* 8043BCB4 00405274  41 82 00 58 */	beq .L_8043BD0C
/* 8043BCB8 00405278  48 00 8D 61 */	bl __ct__8CProcessFv
/* 8043BCBC 0040527C  3C 60 80 57 */	lis r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043BCC0 00405280  3C A0 80 51 */	lis r5, lbl_8050CE10@ha
/* 8043BCC4 00405284  38 63 ED F8 */	addi r3, r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@l
/* 8043BCC8 00405288  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8043BCCC 0040528C  38 A5 CE 10 */	addi r5, r5, lbl_8050CE10@l
/* 8043BCD0 00405290  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043BCD4 00405294  3C 60 80 57 */	lis r3, __vt___unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043BCD8 00405298  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043BCDC 0040529C  38 63 ED B0 */	addi r3, r3, __vt___unnamed_CTaskManager_cpp_CRootProc@l
/* 8043BCE0 004052A0  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 8043BCE4 004052A4  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8043BCE8 004052A8  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043BCEC 004052AC  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8043BCF0 004052B0  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043BCF4 004052B4  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043BCF8 004052B8  90 9F 00 48 */	stw r4, 0x48(r31)
/* 8043BCFC 004052BC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8043BD00 004052C0  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043BD04 004052C4  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8043BD08 004052C8  90 7F 00 10 */	stw r3, 0x10(r31)
.L_8043BD0C:
/* 8043BD0C 004052CC  93 ED BD 1C */	stw r31, lbl_80667E9C@sda21(r13)
/* 8043BD10 004052D0  7F E3 FB 78 */	mr r3, r31
/* 8043BD14 004052D4  38 80 00 00 */	li r4, 0x0
/* 8043BD18 004052D8  38 A0 00 00 */	li r5, 0x0
/* 8043BD1C 004052DC  48 00 8F 59 */	bl fn_80444C74
/* 8043BD20 004052E0  4B FF B8 95 */	bl fn_804375B4
/* 8043BD24 004052E4  7C 64 1B 78 */	mr r4, r3
/* 8043BD28 004052E8  38 60 00 54 */	li r3, 0x54
/* 8043BD2C 004052EC  4B FF 8D 31 */	bl mm_malloc
/* 8043BD30 004052F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8043BD34 004052F4  7C 7F 1B 78 */	mr r31, r3
/* 8043BD38 004052F8  41 82 00 58 */	beq .L_8043BD90
/* 8043BD3C 004052FC  48 00 8C DD */	bl __ct__8CProcessFv
/* 8043BD40 00405300  3C 60 80 57 */	lis r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043BD44 00405304  3C A0 80 51 */	lis r5, lbl_8050CE10@ha
/* 8043BD48 00405308  38 63 ED F8 */	addi r3, r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@l
/* 8043BD4C 0040530C  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8043BD50 00405310  38 A5 CE 10 */	addi r5, r5, lbl_8050CE10@l
/* 8043BD54 00405314  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043BD58 00405318  3C 60 80 57 */	lis r3, __vt___unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043BD5C 0040531C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043BD60 00405320  38 63 ED B0 */	addi r3, r3, __vt___unnamed_CTaskManager_cpp_CRootProc@l
/* 8043BD64 00405324  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 8043BD68 00405328  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8043BD6C 0040532C  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043BD70 00405330  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8043BD74 00405334  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043BD78 00405338  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043BD7C 0040533C  90 9F 00 48 */	stw r4, 0x48(r31)
/* 8043BD80 00405340  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8043BD84 00405344  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043BD88 00405348  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8043BD8C 0040534C  90 7F 00 10 */	stw r3, 0x10(r31)
.L_8043BD90:
/* 8043BD90 00405350  93 ED BD 18 */	stw r31, lbl_80667E98@sda21(r13)
/* 8043BD94 00405354  7F E3 FB 78 */	mr r3, r31
/* 8043BD98 00405358  38 80 00 00 */	li r4, 0x0
/* 8043BD9C 0040535C  38 A0 00 00 */	li r5, 0x0
/* 8043BDA0 00405360  48 00 8E D5 */	bl fn_80444C74
/* 8043BDA4 00405364  4B FF B8 11 */	bl fn_804375B4
/* 8043BDA8 00405368  7C 64 1B 78 */	mr r4, r3
/* 8043BDAC 0040536C  38 60 00 54 */	li r3, 0x54
/* 8043BDB0 00405370  4B FF 8C AD */	bl mm_malloc
/* 8043BDB4 00405374  2C 03 00 00 */	cmpwi r3, 0x0
/* 8043BDB8 00405378  7C 7F 1B 78 */	mr r31, r3
/* 8043BDBC 0040537C  41 82 00 58 */	beq .L_8043BE14
/* 8043BDC0 00405380  48 00 8C 59 */	bl __ct__8CProcessFv
/* 8043BDC4 00405384  3C 60 80 57 */	lis r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043BDC8 00405388  3C A0 80 51 */	lis r5, lbl_8050CE10@ha
/* 8043BDCC 0040538C  38 63 ED F8 */	addi r3, r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@l
/* 8043BDD0 00405390  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8043BDD4 00405394  38 A5 CE 10 */	addi r5, r5, lbl_8050CE10@l
/* 8043BDD8 00405398  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043BDDC 0040539C  3C 60 80 57 */	lis r3, __vt___unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043BDE0 004053A0  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043BDE4 004053A4  38 63 ED B0 */	addi r3, r3, __vt___unnamed_CTaskManager_cpp_CRootProc@l
/* 8043BDE8 004053A8  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 8043BDEC 004053AC  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8043BDF0 004053B0  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043BDF4 004053B4  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8043BDF8 004053B8  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043BDFC 004053BC  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043BE00 004053C0  90 9F 00 48 */	stw r4, 0x48(r31)
/* 8043BE04 004053C4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8043BE08 004053C8  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043BE0C 004053CC  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8043BE10 004053D0  90 7F 00 10 */	stw r3, 0x10(r31)
.L_8043BE14:
/* 8043BE14 004053D4  93 ED BD 20 */	stw r31, lbl_80667EA0@sda21(r13)
/* 8043BE18 004053D8  7F E3 FB 78 */	mr r3, r31
/* 8043BE1C 004053DC  38 80 00 00 */	li r4, 0x0
/* 8043BE20 004053E0  38 A0 00 00 */	li r5, 0x0
/* 8043BE24 004053E4  48 00 8E 51 */	bl fn_80444C74
/* 8043BE28 004053E8  4B FF B7 8D */	bl fn_804375B4
/* 8043BE2C 004053EC  7C 64 1B 78 */	mr r4, r3
/* 8043BE30 004053F0  38 60 00 54 */	li r3, 0x54
/* 8043BE34 004053F4  4B FF 8C 29 */	bl mm_malloc
/* 8043BE38 004053F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8043BE3C 004053FC  7C 7F 1B 78 */	mr r31, r3
/* 8043BE40 00405400  41 82 00 58 */	beq .L_8043BE98
/* 8043BE44 00405404  48 00 8B D5 */	bl __ct__8CProcessFv
/* 8043BE48 00405408  3C 60 80 57 */	lis r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043BE4C 0040540C  3C A0 80 51 */	lis r5, lbl_8050CE10@ha
/* 8043BE50 00405410  38 63 ED F8 */	addi r3, r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@l
/* 8043BE54 00405414  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8043BE58 00405418  38 A5 CE 10 */	addi r5, r5, lbl_8050CE10@l
/* 8043BE5C 0040541C  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043BE60 00405420  3C 60 80 57 */	lis r3, __vt___unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043BE64 00405424  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043BE68 00405428  38 63 ED B0 */	addi r3, r3, __vt___unnamed_CTaskManager_cpp_CRootProc@l
/* 8043BE6C 0040542C  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 8043BE70 00405430  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8043BE74 00405434  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043BE78 00405438  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8043BE7C 0040543C  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043BE80 00405440  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043BE84 00405444  90 9F 00 48 */	stw r4, 0x48(r31)
/* 8043BE88 00405448  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8043BE8C 0040544C  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043BE90 00405450  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8043BE94 00405454  90 7F 00 10 */	stw r3, 0x10(r31)
.L_8043BE98:
/* 8043BE98 00405458  93 ED BD 24 */	stw r31, lbl_80667EA4@sda21(r13)
/* 8043BE9C 0040545C  7F E3 FB 78 */	mr r3, r31
/* 8043BEA0 00405460  38 80 00 00 */	li r4, 0x0
/* 8043BEA4 00405464  38 A0 00 00 */	li r5, 0x0
/* 8043BEA8 00405468  48 00 8D CD */	bl fn_80444C74
/* 8043BEAC 0040546C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043BEB0 00405470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043BEB4 00405474  7C 08 03 A6 */	mtlr r0
/* 8043BEB8 00405478  38 21 00 10 */	addi r1, r1, 0x10
/* 8043BEBC 0040547C  4E 80 00 20 */	blr
.endfn fn_8043BC84

.fn fn_8043BEC0, global
/* 8043BEC0 00405480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043BEC4 00405484  7C 08 02 A6 */	mflr r0
/* 8043BEC8 00405488  2C 03 00 00 */	cmpwi r3, 0x0
/* 8043BECC 0040548C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043BED0 00405490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043BED4 00405494  7C 9F 23 78 */	mr r31, r4
/* 8043BED8 00405498  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8043BEDC 0040549C  7C 7E 1B 78 */	mr r30, r3
/* 8043BEE0 004054A0  41 82 00 1C */	beq .L_8043BEFC
/* 8043BEE4 004054A4  38 80 00 00 */	li r4, 0x0
/* 8043BEE8 004054A8  48 00 8C 51 */	bl fn_80444B38
/* 8043BEEC 004054AC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8043BEF0 004054B0  40 81 00 0C */	ble .L_8043BEFC
/* 8043BEF4 004054B4  7F C3 F3 78 */	mr r3, r30
/* 8043BEF8 004054B8  4B FF 8D 35 */	bl __dl__FPv
.L_8043BEFC:
/* 8043BEFC 004054BC  7F C3 F3 78 */	mr r3, r30
/* 8043BF00 004054C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043BF04 004054C4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8043BF08 004054C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043BF0C 004054CC  7C 08 03 A6 */	mtlr r0
/* 8043BF10 004054D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8043BF14 004054D4  4E 80 00 20 */	blr
.endfn fn_8043BEC0

.fn fn_8043BF18, global
/* 8043BF18 004054D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043BF1C 004054DC  7C 08 02 A6 */	mflr r0
/* 8043BF20 004054E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043BF24 004054E4  48 00 8E E9 */	bl fn_80444E0C
/* 8043BF28 004054E8  38 00 00 00 */	li r0, 0x0
/* 8043BF2C 004054EC  90 0D BD 18 */	stw r0, lbl_80667E98@sda21(r13)
/* 8043BF30 004054F0  90 0D BD 1C */	stw r0, lbl_80667E9C@sda21(r13)
/* 8043BF34 004054F4  90 0D BD 20 */	stw r0, lbl_80667EA0@sda21(r13)
/* 8043BF38 004054F8  90 0D BD 24 */	stw r0, lbl_80667EA4@sda21(r13)
/* 8043BF3C 004054FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043BF40 00405500  7C 08 03 A6 */	mtlr r0
/* 8043BF44 00405504  38 21 00 10 */	addi r1, r1, 0x10
/* 8043BF48 00405508  4E 80 00 20 */	blr
.endfn fn_8043BF18

.fn fn_8043BF4C, global
/* 8043BF4C 0040550C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043BF50 00405510  7C 08 02 A6 */	mflr r0
/* 8043BF54 00405514  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043BF58 00405518  48 00 90 01 */	bl fn_80444F58
/* 8043BF5C 0040551C  48 00 9E 05 */	bl fn_80445D60
/* 8043BF60 00405520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043BF64 00405524  7C 08 03 A6 */	mtlr r0
/* 8043BF68 00405528  38 21 00 10 */	addi r1, r1, 0x10
/* 8043BF6C 0040552C  4E 80 00 20 */	blr
.endfn fn_8043BF4C

.fn fn_8043BF70, global
/* 8043BF70 00405530  48 00 95 68 */	b fn_804454D8
.endfn fn_8043BF70

.fn fn_8043BF74, global
/* 8043BF74 00405534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043BF78 00405538  7C 08 02 A6 */	mflr r0
/* 8043BF7C 0040553C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043BF80 00405540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043BF84 00405544  48 00 CA C1 */	bl fn_80448A44
/* 8043BF88 00405548  48 00 8F 35 */	bl fn_80444EBC
/* 8043BF8C 0040554C  4B FF B6 29 */	bl fn_804375B4
/* 8043BF90 00405550  7C 64 1B 78 */	mr r4, r3
/* 8043BF94 00405554  38 60 00 54 */	li r3, 0x54
/* 8043BF98 00405558  4B FF 8A C5 */	bl mm_malloc
/* 8043BF9C 0040555C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8043BFA0 00405560  7C 7F 1B 78 */	mr r31, r3
/* 8043BFA4 00405564  41 82 00 58 */	beq .L_8043BFFC
/* 8043BFA8 00405568  48 00 8A 71 */	bl __ct__8CProcessFv
/* 8043BFAC 0040556C  3C 60 80 57 */	lis r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043BFB0 00405570  3C A0 80 51 */	lis r5, lbl_8050CE10@ha
/* 8043BFB4 00405574  38 63 ED F8 */	addi r3, r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@l
/* 8043BFB8 00405578  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8043BFBC 0040557C  38 A5 CE 10 */	addi r5, r5, lbl_8050CE10@l
/* 8043BFC0 00405580  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043BFC4 00405584  3C 60 80 57 */	lis r3, __vt___unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043BFC8 00405588  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043BFCC 0040558C  38 63 ED B0 */	addi r3, r3, __vt___unnamed_CTaskManager_cpp_CRootProc@l
/* 8043BFD0 00405590  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 8043BFD4 00405594  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8043BFD8 00405598  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043BFDC 0040559C  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8043BFE0 004055A0  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043BFE4 004055A4  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043BFE8 004055A8  90 9F 00 48 */	stw r4, 0x48(r31)
/* 8043BFEC 004055AC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8043BFF0 004055B0  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043BFF4 004055B4  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8043BFF8 004055B8  90 7F 00 10 */	stw r3, 0x10(r31)
.L_8043BFFC:
/* 8043BFFC 004055BC  93 ED BD 1C */	stw r31, lbl_80667E9C@sda21(r13)
/* 8043C000 004055C0  7F E3 FB 78 */	mr r3, r31
/* 8043C004 004055C4  38 80 00 00 */	li r4, 0x0
/* 8043C008 004055C8  38 A0 00 00 */	li r5, 0x0
/* 8043C00C 004055CC  48 00 8C 69 */	bl fn_80444C74
/* 8043C010 004055D0  4B FF B5 A5 */	bl fn_804375B4
/* 8043C014 004055D4  7C 64 1B 78 */	mr r4, r3
/* 8043C018 004055D8  38 60 00 54 */	li r3, 0x54
/* 8043C01C 004055DC  4B FF 8A 41 */	bl mm_malloc
/* 8043C020 004055E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8043C024 004055E4  7C 7F 1B 78 */	mr r31, r3
/* 8043C028 004055E8  41 82 00 58 */	beq .L_8043C080
/* 8043C02C 004055EC  48 00 89 ED */	bl __ct__8CProcessFv
/* 8043C030 004055F0  3C 60 80 57 */	lis r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043C034 004055F4  3C A0 80 51 */	lis r5, lbl_8050CE10@ha
/* 8043C038 004055F8  38 63 ED F8 */	addi r3, r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@l
/* 8043C03C 004055FC  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8043C040 00405600  38 A5 CE 10 */	addi r5, r5, lbl_8050CE10@l
/* 8043C044 00405604  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043C048 00405608  3C 60 80 57 */	lis r3, __vt___unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043C04C 0040560C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043C050 00405610  38 63 ED B0 */	addi r3, r3, __vt___unnamed_CTaskManager_cpp_CRootProc@l
/* 8043C054 00405614  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 8043C058 00405618  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8043C05C 0040561C  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043C060 00405620  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8043C064 00405624  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043C068 00405628  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043C06C 0040562C  90 9F 00 48 */	stw r4, 0x48(r31)
/* 8043C070 00405630  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8043C074 00405634  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043C078 00405638  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8043C07C 0040563C  90 7F 00 10 */	stw r3, 0x10(r31)
.L_8043C080:
/* 8043C080 00405640  93 ED BD 18 */	stw r31, lbl_80667E98@sda21(r13)
/* 8043C084 00405644  7F E3 FB 78 */	mr r3, r31
/* 8043C088 00405648  38 80 00 00 */	li r4, 0x0
/* 8043C08C 0040564C  38 A0 00 00 */	li r5, 0x0
/* 8043C090 00405650  48 00 8B E5 */	bl fn_80444C74
/* 8043C094 00405654  4B FF B5 21 */	bl fn_804375B4
/* 8043C098 00405658  7C 64 1B 78 */	mr r4, r3
/* 8043C09C 0040565C  38 60 00 54 */	li r3, 0x54
/* 8043C0A0 00405660  4B FF 89 BD */	bl mm_malloc
/* 8043C0A4 00405664  2C 03 00 00 */	cmpwi r3, 0x0
/* 8043C0A8 00405668  7C 7F 1B 78 */	mr r31, r3
/* 8043C0AC 0040566C  41 82 00 58 */	beq .L_8043C104
/* 8043C0B0 00405670  48 00 89 69 */	bl __ct__8CProcessFv
/* 8043C0B4 00405674  3C 60 80 57 */	lis r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043C0B8 00405678  3C A0 80 51 */	lis r5, lbl_8050CE10@ha
/* 8043C0BC 0040567C  38 63 ED F8 */	addi r3, r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@l
/* 8043C0C0 00405680  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8043C0C4 00405684  38 A5 CE 10 */	addi r5, r5, lbl_8050CE10@l
/* 8043C0C8 00405688  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043C0CC 0040568C  3C 60 80 57 */	lis r3, __vt___unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043C0D0 00405690  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043C0D4 00405694  38 63 ED B0 */	addi r3, r3, __vt___unnamed_CTaskManager_cpp_CRootProc@l
/* 8043C0D8 00405698  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 8043C0DC 0040569C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8043C0E0 004056A0  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043C0E4 004056A4  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8043C0E8 004056A8  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043C0EC 004056AC  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043C0F0 004056B0  90 9F 00 48 */	stw r4, 0x48(r31)
/* 8043C0F4 004056B4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8043C0F8 004056B8  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043C0FC 004056BC  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8043C100 004056C0  90 7F 00 10 */	stw r3, 0x10(r31)
.L_8043C104:
/* 8043C104 004056C4  93 ED BD 20 */	stw r31, lbl_80667EA0@sda21(r13)
/* 8043C108 004056C8  7F E3 FB 78 */	mr r3, r31
/* 8043C10C 004056CC  38 80 00 00 */	li r4, 0x0
/* 8043C110 004056D0  38 A0 00 00 */	li r5, 0x0
/* 8043C114 004056D4  48 00 8B 61 */	bl fn_80444C74
/* 8043C118 004056D8  4B FF B4 9D */	bl fn_804375B4
/* 8043C11C 004056DC  7C 64 1B 78 */	mr r4, r3
/* 8043C120 004056E0  38 60 00 54 */	li r3, 0x54
/* 8043C124 004056E4  4B FF 89 39 */	bl mm_malloc
/* 8043C128 004056E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8043C12C 004056EC  7C 7F 1B 78 */	mr r31, r3
/* 8043C130 004056F0  41 82 00 58 */	beq .L_8043C188
/* 8043C134 004056F4  48 00 88 E5 */	bl __ct__8CProcessFv
/* 8043C138 004056F8  3C 60 80 57 */	lis r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043C13C 004056FC  3C A0 80 51 */	lis r5, lbl_8050CE10@ha
/* 8043C140 00405700  38 63 ED F8 */	addi r3, r3, __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc@l
/* 8043C144 00405704  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8043C148 00405708  38 A5 CE 10 */	addi r5, r5, lbl_8050CE10@l
/* 8043C14C 0040570C  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043C150 00405710  3C 60 80 57 */	lis r3, __vt___unnamed_CTaskManager_cpp_CRootProc@ha
/* 8043C154 00405714  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043C158 00405718  38 63 ED B0 */	addi r3, r3, __vt___unnamed_CTaskManager_cpp_CRootProc@l
/* 8043C15C 0040571C  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 8043C160 00405720  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8043C164 00405724  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043C168 00405728  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8043C16C 0040572C  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8043C170 00405730  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8043C174 00405734  90 9F 00 48 */	stw r4, 0x48(r31)
/* 8043C178 00405738  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8043C17C 0040573C  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8043C180 00405740  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8043C184 00405744  90 7F 00 10 */	stw r3, 0x10(r31)
.L_8043C188:
/* 8043C188 00405748  93 ED BD 24 */	stw r31, lbl_80667EA4@sda21(r13)
/* 8043C18C 0040574C  7F E3 FB 78 */	mr r3, r31
/* 8043C190 00405750  38 80 00 00 */	li r4, 0x0
/* 8043C194 00405754  38 A0 00 00 */	li r5, 0x0
/* 8043C198 00405758  48 00 8A DD */	bl fn_80444C74
/* 8043C19C 0040575C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043C1A0 00405760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043C1A4 00405764  7C 08 03 A6 */	mtlr r0
/* 8043C1A8 00405768  38 21 00 10 */	addi r1, r1, 0x10
/* 8043C1AC 0040576C  4E 80 00 20 */	blr
.endfn fn_8043BF74

.fn fn_8043C1B0, global
/* 8043C1B0 00405770  80 6D BD 18 */	lwz r3, lbl_80667E98@sda21(r13)
/* 8043C1B4 00405774  4E 80 00 20 */	blr
.endfn fn_8043C1B0

.fn fn_8043C1B8, global
/* 8043C1B8 00405778  80 6D BD 1C */	lwz r3, lbl_80667E9C@sda21(r13)
/* 8043C1BC 0040577C  4E 80 00 20 */	blr
.endfn fn_8043C1B8

.fn fn_8043C1C0, global
/* 8043C1C0 00405780  80 6D BD 20 */	lwz r3, lbl_80667EA0@sda21(r13)
/* 8043C1C4 00405784  4E 80 00 20 */	blr
.endfn fn_8043C1C0

.fn fn_8043C1C8, global
/* 8043C1C8 00405788  4E 80 00 20 */	blr
.endfn fn_8043C1C8

.fn fn_8043C1CC, global
/* 8043C1CC 0040578C  4E 80 00 20 */	blr
.endfn fn_8043C1CC

.fn fn_8043C1D0, global
/* 8043C1D0 00405790  4E 80 00 20 */	blr
.endfn fn_8043C1D0

.fn fn_8043C1D4, global
/* 8043C1D4 00405794  4E 80 00 20 */	blr
.endfn fn_8043C1D4

.fn fn_8043C1D8, global
/* 8043C1D8 00405798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043C1DC 0040579C  7C 08 02 A6 */	mflr r0
/* 8043C1E0 004057A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043C1E4 004057A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043C1E8 004057A8  7C 7F 1B 78 */	mr r31, r3
/* 8043C1EC 004057AC  38 63 00 3C */	addi r3, r3, 0x3c
/* 8043C1F0 004057B0  4B E7 DB 01 */	bl __ptmf_test
/* 8043C1F4 004057B4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8043C1F8 004057B8  41 82 00 14 */	beq .L_8043C20C
/* 8043C1FC 004057BC  7F E3 FB 78 */	mr r3, r31
/* 8043C200 004057C0  39 9F 00 3C */	addi r12, r31, 0x3c
/* 8043C204 004057C4  4B E7 DB 59 */	bl __ptmf_scall
/* 8043C208 004057C8  60 00 00 00 */	nop
.L_8043C20C:
/* 8043C20C 004057CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043C210 004057D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043C214 004057D4  7C 08 03 A6 */	mtlr r0
/* 8043C218 004057D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8043C21C 004057DC  4E 80 00 20 */	blr
.endfn fn_8043C1D8

.fn fn_8043C220, global
/* 8043C220 004057E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043C224 004057E4  7C 08 02 A6 */	mflr r0
/* 8043C228 004057E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043C22C 004057EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043C230 004057F0  7C 7F 1B 78 */	mr r31, r3
/* 8043C234 004057F4  38 63 00 48 */	addi r3, r3, 0x48
/* 8043C238 004057F8  4B E7 DA B9 */	bl __ptmf_test
/* 8043C23C 004057FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8043C240 00405800  41 82 00 14 */	beq .L_8043C254
/* 8043C244 00405804  7F E3 FB 78 */	mr r3, r31
/* 8043C248 00405808  39 9F 00 48 */	addi r12, r31, 0x48
/* 8043C24C 0040580C  4B E7 DB 11 */	bl __ptmf_scall
/* 8043C250 00405810  60 00 00 00 */	nop
.L_8043C254:
/* 8043C254 00405814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043C258 00405818  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043C25C 0040581C  7C 08 03 A6 */	mtlr r0
/* 8043C260 00405820  38 21 00 10 */	addi r1, r1, 0x10
/* 8043C264 00405824  4E 80 00 20 */	blr
.endfn fn_8043C220

.fn fn_8043C268, global
/* 8043C268 00405828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043C26C 0040582C  7C 08 02 A6 */	mflr r0
/* 8043C270 00405830  2C 03 00 00 */	cmpwi r3, 0x0
/* 8043C274 00405834  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043C278 00405838  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043C27C 0040583C  7C 9F 23 78 */	mr r31, r4
/* 8043C280 00405840  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8043C284 00405844  7C 7E 1B 78 */	mr r30, r3
/* 8043C288 00405848  41 82 00 20 */	beq .L_8043C2A8
/* 8043C28C 0040584C  41 82 00 0C */	beq .L_8043C298
/* 8043C290 00405850  38 80 00 00 */	li r4, 0x0
/* 8043C294 00405854  48 00 88 A5 */	bl fn_80444B38
.L_8043C298:
/* 8043C298 00405858  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8043C29C 0040585C  40 81 00 0C */	ble .L_8043C2A8
/* 8043C2A0 00405860  7F C3 F3 78 */	mr r3, r30
/* 8043C2A4 00405864  4B FF 89 89 */	bl __dl__FPv
.L_8043C2A8:
/* 8043C2A8 00405868  7F C3 F3 78 */	mr r3, r30
/* 8043C2AC 0040586C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043C2B0 00405870  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8043C2B4 00405874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043C2B8 00405878  7C 08 03 A6 */	mtlr r0
/* 8043C2BC 0040587C  38 21 00 10 */	addi r1, r1, 0x10
/* 8043C2C0 00405880  4E 80 00 20 */	blr
.endfn fn_8043C268

# 0x80525EA0 - 0x80525EF8
.rodata
.balign 8

.obj _unnamed_CTaskManager_cpp_CRootProc_typestr, global
	.4byte 0x40756E6E
	.4byte 0x616D6564
	.4byte 0x40435461
	.4byte 0x736B4D61
	.4byte 0x6E616765
	.4byte 0x725F6370
	.4byte 0x70403A3A
	.4byte 0x43526F6F
	.4byte 0x7450726F
	.4byte 0x63000000

.obj CTTask_unnamed_CTaskManager_cpp_CRootProc_typestr, global
	.4byte 0x43545461
	.4byte 0x736B3C40
	.4byte 0x756E6E61
	.4byte 0x6D656440
	.4byte 0x43546173
	.4byte 0x6B4D616E
	.4byte 0x61676572
	.4byte 0x5F637070
	.4byte 0x403A3A43
	.4byte 0x526F6F74
	.4byte 0x50726F63
	.4byte 0x3E000000

# 0x8056EDB0 - 0x8056EE38
.data
.balign 8

.obj __vt___unnamed_CTaskManager_cpp_CRootProc, global
	.4byte __RTTI___unnamed_CTaskManager_cpp_CRootProc
	.4byte 0x00000000
	.4byte fn_8043C268
	.4byte CChildListNode_Reset
	.4byte fn_8043C1D4
	.4byte fn_8043C1D0
	.4byte fn_8043C1CC
	.4byte fn_8043C1C8
	.4byte fn_80043F20

.obj _unnamed_CTaskManager_cpp_CRootProc_hierarchy, global
	.4byte __RTTI__CDoubleListNode
	.4byte 0x00000000
	.4byte __RTTI__CChildListNode
	.4byte 0x00000000
	.4byte __RTTI__CProcess
	.4byte 0x00000000
	.4byte __RTTI__CTTask_unnamed_CTaskManager_cpp_CRootProc
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__CTTask_unnamed_CTaskManager_cpp_CRootProc, global
	.4byte __RTTI__CTTask_unnamed_CTaskManager_cpp_CRootProc
	.4byte 0x00000000
	.4byte fn_8043BEC0
	.4byte CChildListNode_Reset
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte fn_8043C1D8
	.4byte fn_8043C220
	.4byte fn_80043F20

.obj CTTask_unnamed_CTaskManager_cpp_CRootProc_hierarchy, global
	.4byte __RTTI__CDoubleListNode
	.4byte 0x00000000
	.4byte __RTTI__CChildListNode
	.4byte 0x00000000
	.4byte __RTTI__CProcess
	.4byte 0x00000000
	.4byte 0x00000000

# 0x80665E90 - 0x80665EA0
.section .sdata, "wa"
.balign 8

.obj __RTTI___unnamed_CTaskManager_cpp_CRootProc, global
	.4byte _unnamed_CTaskManager_cpp_CRootProc_typestr
	.4byte _unnamed_CTaskManager_cpp_CRootProc_hierarchy

.obj __RTTI__CTTask_unnamed_CTaskManager_cpp_CRootProc, global
	.4byte CTTask_unnamed_CTaskManager_cpp_CRootProc_typestr
	.4byte CTTask_unnamed_CTaskManager_cpp_CRootProc_hierarchy

# 0x80667E98 - 0x80667EA8
.section .sbss, "wa", @nobits
.balign 8
.sym lbl_80667E98, global
	.skip 0x4
.sym lbl_80667E9C, global
	.skip 0x4
.sym lbl_80667EA0, global
	.skip 0x4
.sym lbl_80667EA4, global
	.skip 0x4
