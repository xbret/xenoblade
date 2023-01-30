.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __va_arg, global
/* 802B95D4 00282B94  88 E3 00 00 */	lbz r7, 0(r3)
/* 802B95D8 00282B98  2C 04 00 03 */	cmpwi r4, 3
/* 802B95DC 00282B9C  7C 66 1B 78 */	mr r6, r3
/* 802B95E0 00282BA0  38 00 00 08 */	li r0, 8
/* 802B95E4 00282BA4  7C E7 07 74 */	extsb r7, r7
/* 802B95E8 00282BA8  39 00 00 04 */	li r8, 4
/* 802B95EC 00282BAC  39 20 00 01 */	li r9, 1
/* 802B95F0 00282BB0  38 A0 00 00 */	li r5, 0
/* 802B95F4 00282BB4  39 40 00 00 */	li r10, 0
/* 802B95F8 00282BB8  39 60 00 04 */	li r11, 4
/* 802B95FC 00282BBC  40 82 00 1C */	bne .L_802B9618
/* 802B9600 00282BC0  88 E3 00 01 */	lbz r7, 1(r3)
/* 802B9604 00282BC4  38 C3 00 01 */	addi r6, r3, 1
/* 802B9608 00282BC8  39 00 00 08 */	li r8, 8
/* 802B960C 00282BCC  39 40 00 20 */	li r10, 0x20
/* 802B9610 00282BD0  7C E7 07 74 */	extsb r7, r7
/* 802B9614 00282BD4  39 60 00 08 */	li r11, 8
.L_802B9618:
/* 802B9618 00282BD8  2C 04 00 02 */	cmpwi r4, 2
/* 802B961C 00282BDC  40 82 00 1C */	bne .L_802B9638
/* 802B9620 00282BE0  54 E0 07 FF */	clrlwi. r0, r7, 0x1f
/* 802B9624 00282BE4  39 00 00 08 */	li r8, 8
/* 802B9628 00282BE8  38 00 00 07 */	li r0, 7
/* 802B962C 00282BEC  41 82 00 08 */	beq .L_802B9634
/* 802B9630 00282BF0  38 A0 00 01 */	li r5, 1
.L_802B9634:
/* 802B9634 00282BF4  39 20 00 02 */	li r9, 2
.L_802B9638:
/* 802B9638 00282BF8  7C 07 00 00 */	cmpw r7, r0
/* 802B963C 00282BFC  40 80 00 24 */	bge .L_802B9660
/* 802B9640 00282C00  7C E7 2A 14 */	add r7, r7, r5
/* 802B9644 00282C04  80 03 00 08 */	lwz r0, 8(r3)
/* 802B9648 00282C08  7C A7 59 D6 */	mullw r5, r7, r11
/* 802B964C 00282C0C  7C 60 52 14 */	add r3, r0, r10
/* 802B9650 00282C10  7C 07 4A 14 */	add r0, r7, r9
/* 802B9654 00282C14  98 06 00 00 */	stb r0, 0(r6)
/* 802B9658 00282C18  7C A5 1A 14 */	add r5, r5, r3
/* 802B965C 00282C1C  48 00 00 2C */	b .L_802B9688
.L_802B9660:
/* 802B9660 00282C20  38 00 00 08 */	li r0, 8
/* 802B9664 00282C24  98 06 00 00 */	stb r0, 0(r6)
/* 802B9668 00282C28  38 08 FF FF */	addi r0, r8, -1
/* 802B966C 00282C2C  80 A3 00 04 */	lwz r5, 4(r3)
/* 802B9670 00282C30  7C 06 00 F8 */	nor r6, r0, r0
/* 802B9674 00282C34  7C A8 2A 14 */	add r5, r8, r5
/* 802B9678 00282C38  38 05 FF FF */	addi r0, r5, -1
/* 802B967C 00282C3C  7C C5 00 38 */	and r5, r6, r0
/* 802B9680 00282C40  7C 05 42 14 */	add r0, r5, r8
/* 802B9684 00282C44  90 03 00 04 */	stw r0, 4(r3)
.L_802B9688:
/* 802B9688 00282C48  2C 04 00 00 */	cmpwi r4, 0
/* 802B968C 00282C4C  40 82 00 08 */	bne .L_802B9694
/* 802B9690 00282C50  80 A5 00 00 */	lwz r5, 0(r5)
.L_802B9694:
/* 802B9694 00282C54  7C A3 2B 78 */	mr r3, r5
/* 802B9698 00282C58  4E 80 00 20 */	blr 
.endfn __va_arg