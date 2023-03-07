.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn bta_sys_rm_register, global
/* 802DE708 002A7CC8  3C 80 80 5C */	lis r4, bta_sys_cb@ha
/* 802DE70C 002A7CCC  38 84 F5 58 */	addi r4, r4, bta_sys_cb@l
/* 802DE710 002A7CD0  90 64 00 80 */	stw r3, 0x80(r4)
/* 802DE714 002A7CD4  4E 80 00 20 */	blr 
.endfn bta_sys_rm_register

.fn bta_sys_compress_register, global
/* 802DE718 002A7CD8  3C 80 80 5C */	lis r4, bta_sys_cb@ha
/* 802DE71C 002A7CDC  38 84 F5 58 */	addi r4, r4, bta_sys_cb@l
/* 802DE720 002A7CE0  90 64 00 88 */	stw r3, 0x88(r4)
/* 802DE724 002A7CE4  4E 80 00 20 */	blr 
.endfn bta_sys_compress_register

.fn bta_sys_pm_register, global
/* 802DE728 002A7CE8  3C 80 80 5C */	lis r4, bta_sys_cb@ha
/* 802DE72C 002A7CEC  38 84 F5 58 */	addi r4, r4, bta_sys_cb@l
/* 802DE730 002A7CF0  90 64 00 84 */	stw r3, 0x84(r4)
/* 802DE734 002A7CF4  4E 80 00 20 */	blr 
.endfn bta_sys_pm_register

.fn bta_sys_conn_open, global
/* 802DE738 002A7CF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE73C 002A7CFC  7C 08 02 A6 */	mflr r0
/* 802DE740 002A7D00  3C C0 80 5C */	lis r6, bta_sys_cb@ha
/* 802DE744 002A7D04  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE748 002A7D08  38 C6 F5 58 */	addi r6, r6, bta_sys_cb@l
/* 802DE74C 002A7D0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DE750 002A7D10  7C BF 2B 78 */	mr r31, r5
/* 802DE754 002A7D14  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DE758 002A7D18  7C 9E 23 78 */	mr r30, r4
/* 802DE75C 002A7D1C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DE760 002A7D20  7C 7D 1B 78 */	mr r29, r3
/* 802DE764 002A7D24  81 86 00 80 */	lwz r12, 0x80(r6)
/* 802DE768 002A7D28  2C 0C 00 00 */	cmpwi r12, 0
/* 802DE76C 002A7D2C  41 82 00 1C */	beq .L_802DE788
/* 802DE770 002A7D30  7F A4 EB 78 */	mr r4, r29
/* 802DE774 002A7D34  7F C5 F3 78 */	mr r5, r30
/* 802DE778 002A7D38  7F E6 FB 78 */	mr r6, r31
/* 802DE77C 002A7D3C  38 60 00 00 */	li r3, 0
/* 802DE780 002A7D40  7D 89 03 A6 */	mtctr r12
/* 802DE784 002A7D44  4E 80 04 21 */	bctrl 
.L_802DE788:
/* 802DE788 002A7D48  3C 60 80 5C */	lis r3, bta_sys_cb@ha
/* 802DE78C 002A7D4C  38 63 F5 58 */	addi r3, r3, bta_sys_cb@l
/* 802DE790 002A7D50  81 83 00 84 */	lwz r12, 0x84(r3)
/* 802DE794 002A7D54  2C 0C 00 00 */	cmpwi r12, 0
/* 802DE798 002A7D58  41 82 00 1C */	beq .L_802DE7B4
/* 802DE79C 002A7D5C  7F A4 EB 78 */	mr r4, r29
/* 802DE7A0 002A7D60  7F C5 F3 78 */	mr r5, r30
/* 802DE7A4 002A7D64  7F E6 FB 78 */	mr r6, r31
/* 802DE7A8 002A7D68  38 60 00 00 */	li r3, 0
/* 802DE7AC 002A7D6C  7D 89 03 A6 */	mtctr r12
/* 802DE7B0 002A7D70  4E 80 04 21 */	bctrl 
.L_802DE7B4:
/* 802DE7B4 002A7D74  3C 60 80 5C */	lis r3, bta_sys_cb@ha
/* 802DE7B8 002A7D78  38 63 F5 58 */	addi r3, r3, bta_sys_cb@l
/* 802DE7BC 002A7D7C  81 83 00 88 */	lwz r12, 0x88(r3)
/* 802DE7C0 002A7D80  2C 0C 00 00 */	cmpwi r12, 0
/* 802DE7C4 002A7D84  41 82 00 1C */	beq .L_802DE7E0
/* 802DE7C8 002A7D88  7F A4 EB 78 */	mr r4, r29
/* 802DE7CC 002A7D8C  7F C5 F3 78 */	mr r5, r30
/* 802DE7D0 002A7D90  7F E6 FB 78 */	mr r6, r31
/* 802DE7D4 002A7D94  38 60 00 00 */	li r3, 0
/* 802DE7D8 002A7D98  7D 89 03 A6 */	mtctr r12
/* 802DE7DC 002A7D9C  4E 80 04 21 */	bctrl 
.L_802DE7E0:
/* 802DE7E0 002A7DA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE7E4 002A7DA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DE7E8 002A7DA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DE7EC 002A7DAC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DE7F0 002A7DB0  7C 08 03 A6 */	mtlr r0
/* 802DE7F4 002A7DB4  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE7F8 002A7DB8  4E 80 00 20 */	blr 
.endfn bta_sys_conn_open

.fn bta_sys_conn_close, global
/* 802DE7FC 002A7DBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DE800 002A7DC0  7C 08 02 A6 */	mflr r0
/* 802DE804 002A7DC4  3C C0 80 5C */	lis r6, bta_sys_cb@ha
/* 802DE808 002A7DC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DE80C 002A7DCC  38 C6 F5 58 */	addi r6, r6, bta_sys_cb@l
/* 802DE810 002A7DD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DE814 002A7DD4  7C BF 2B 78 */	mr r31, r5
/* 802DE818 002A7DD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DE81C 002A7DDC  7C 9E 23 78 */	mr r30, r4
/* 802DE820 002A7DE0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802DE824 002A7DE4  7C 7D 1B 78 */	mr r29, r3
/* 802DE828 002A7DE8  81 86 00 80 */	lwz r12, 0x80(r6)
/* 802DE82C 002A7DEC  2C 0C 00 00 */	cmpwi r12, 0
/* 802DE830 002A7DF0  41 82 00 1C */	beq .L_802DE84C
/* 802DE834 002A7DF4  7F A4 EB 78 */	mr r4, r29
/* 802DE838 002A7DF8  7F C5 F3 78 */	mr r5, r30
/* 802DE83C 002A7DFC  7F E6 FB 78 */	mr r6, r31
/* 802DE840 002A7E00  38 60 00 01 */	li r3, 1
/* 802DE844 002A7E04  7D 89 03 A6 */	mtctr r12
/* 802DE848 002A7E08  4E 80 04 21 */	bctrl 
.L_802DE84C:
/* 802DE84C 002A7E0C  3C 60 80 5C */	lis r3, bta_sys_cb@ha
/* 802DE850 002A7E10  38 63 F5 58 */	addi r3, r3, bta_sys_cb@l
/* 802DE854 002A7E14  81 83 00 84 */	lwz r12, 0x84(r3)
/* 802DE858 002A7E18  2C 0C 00 00 */	cmpwi r12, 0
/* 802DE85C 002A7E1C  41 82 00 1C */	beq .L_802DE878
/* 802DE860 002A7E20  7F A4 EB 78 */	mr r4, r29
/* 802DE864 002A7E24  7F C5 F3 78 */	mr r5, r30
/* 802DE868 002A7E28  7F E6 FB 78 */	mr r6, r31
/* 802DE86C 002A7E2C  38 60 00 01 */	li r3, 1
/* 802DE870 002A7E30  7D 89 03 A6 */	mtctr r12
/* 802DE874 002A7E34  4E 80 04 21 */	bctrl 
.L_802DE878:
/* 802DE878 002A7E38  3C 60 80 5C */	lis r3, bta_sys_cb@ha
/* 802DE87C 002A7E3C  38 63 F5 58 */	addi r3, r3, bta_sys_cb@l
/* 802DE880 002A7E40  81 83 00 88 */	lwz r12, 0x88(r3)
/* 802DE884 002A7E44  2C 0C 00 00 */	cmpwi r12, 0
/* 802DE888 002A7E48  41 82 00 1C */	beq .L_802DE8A4
/* 802DE88C 002A7E4C  7F A4 EB 78 */	mr r4, r29
/* 802DE890 002A7E50  7F C5 F3 78 */	mr r5, r30
/* 802DE894 002A7E54  7F E6 FB 78 */	mr r6, r31
/* 802DE898 002A7E58  38 60 00 01 */	li r3, 1
/* 802DE89C 002A7E5C  7D 89 03 A6 */	mtctr r12
/* 802DE8A0 002A7E60  4E 80 04 21 */	bctrl 
.L_802DE8A4:
/* 802DE8A4 002A7E64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DE8A8 002A7E68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802DE8AC 002A7E6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802DE8B0 002A7E70  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802DE8B4 002A7E74  7C 08 03 A6 */	mtlr r0
/* 802DE8B8 002A7E78  38 21 00 20 */	addi r1, r1, 0x20
/* 802DE8BC 002A7E7C  4E 80 00 20 */	blr 
.endfn bta_sys_conn_close

.fn bta_sys_sco_close, global
/* 802DE8C0 002A7E80  3C C0 80 5C */	lis r6, bta_sys_cb@ha
/* 802DE8C4 002A7E84  7C 80 23 78 */	mr r0, r4
/* 802DE8C8 002A7E88  38 C6 F5 58 */	addi r6, r6, bta_sys_cb@l
/* 802DE8CC 002A7E8C  81 86 00 84 */	lwz r12, 0x84(r6)
/* 802DE8D0 002A7E90  7C A6 2B 78 */	mr r6, r5
/* 802DE8D4 002A7E94  2C 0C 00 00 */	cmpwi r12, 0
/* 802DE8D8 002A7E98  4D 82 00 20 */	beqlr 
/* 802DE8DC 002A7E9C  7C 64 1B 78 */	mr r4, r3
/* 802DE8E0 002A7EA0  7C 05 03 78 */	mr r5, r0
/* 802DE8E4 002A7EA4  38 60 00 05 */	li r3, 5
/* 802DE8E8 002A7EA8  7D 89 03 A6 */	mtctr r12
/* 802DE8EC 002A7EAC  4E 80 04 20 */	bctr 
/* 802DE8F0 002A7EB0  4E 80 00 20 */	blr 
.endfn bta_sys_sco_close

.fn bta_sys_idle, global
/* 802DE8F4 002A7EB4  3C C0 80 5C */	lis r6, bta_sys_cb@ha
/* 802DE8F8 002A7EB8  7C 80 23 78 */	mr r0, r4
/* 802DE8FC 002A7EBC  38 C6 F5 58 */	addi r6, r6, bta_sys_cb@l
/* 802DE900 002A7EC0  81 86 00 84 */	lwz r12, 0x84(r6)
/* 802DE904 002A7EC4  7C A6 2B 78 */	mr r6, r5
/* 802DE908 002A7EC8  2C 0C 00 00 */	cmpwi r12, 0
/* 802DE90C 002A7ECC  4D 82 00 20 */	beqlr 
/* 802DE910 002A7ED0  7C 64 1B 78 */	mr r4, r3
/* 802DE914 002A7ED4  7C 05 03 78 */	mr r5, r0
/* 802DE918 002A7ED8  38 60 00 06 */	li r3, 6
/* 802DE91C 002A7EDC  7D 89 03 A6 */	mtctr r12
/* 802DE920 002A7EE0  4E 80 04 20 */	bctr 
/* 802DE924 002A7EE4  4E 80 00 20 */	blr 
.endfn bta_sys_idle

.fn bta_sys_busy, global
/* 802DE928 002A7EE8  3C C0 80 5C */	lis r6, bta_sys_cb@ha
/* 802DE92C 002A7EEC  7C 80 23 78 */	mr r0, r4
/* 802DE930 002A7EF0  38 C6 F5 58 */	addi r6, r6, bta_sys_cb@l
/* 802DE934 002A7EF4  81 86 00 84 */	lwz r12, 0x84(r6)
/* 802DE938 002A7EF8  7C A6 2B 78 */	mr r6, r5
/* 802DE93C 002A7EFC  2C 0C 00 00 */	cmpwi r12, 0
/* 802DE940 002A7F00  4D 82 00 20 */	beqlr 
/* 802DE944 002A7F04  7C 64 1B 78 */	mr r4, r3
/* 802DE948 002A7F08  7C 05 03 78 */	mr r5, r0
/* 802DE94C 002A7F0C  38 60 00 07 */	li r3, 7
/* 802DE950 002A7F10  7D 89 03 A6 */	mtctr r12
/* 802DE954 002A7F14  4E 80 04 20 */	bctr 
/* 802DE958 002A7F18  4E 80 00 20 */	blr
.endfn bta_sys_busy
