.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 4

.fn __ptmf_test, global
/* 802B9CF0 002832B0  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 802B9CF4 002832B4  80 C3 00 04 */	lwz r6, 0x4(r3)
/* 802B9CF8 002832B8  80 E3 00 08 */	lwz r7, 0x8(r3)
/* 802B9CFC 002832BC  38 60 00 01 */	li r3, 0x1
/* 802B9D00 002832C0  2C 05 00 00 */	cmpwi r5, 0x0
/* 802B9D04 002832C4  2F 06 00 00 */	cmpwi cr6, r6, 0x0
/* 802B9D08 002832C8  2F 87 00 00 */	cmpwi cr7, r7, 0x0
/* 802B9D0C 002832CC  4C 82 00 20 */	bnelr
/* 802B9D10 002832D0  4C 9A 00 20 */	bnelr cr6
/* 802B9D14 002832D4  4C 9E 00 20 */	bnelr cr7
/* 802B9D18 002832D8  38 60 00 00 */	li r3, 0x0
/* 802B9D1C 002832DC  4E 80 00 20 */	blr
.endfn __ptmf_test

.fn __ptmf_cmpr, global
/* 802B9D20 002832E0  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 802B9D24 002832E4  80 C4 00 00 */	lwz r6, 0x0(r4)
/* 802B9D28 002832E8  80 E3 00 04 */	lwz r7, 0x4(r3)
/* 802B9D2C 002832EC  81 04 00 04 */	lwz r8, 0x4(r4)
/* 802B9D30 002832F0  81 23 00 08 */	lwz r9, 0x8(r3)
/* 802B9D34 002832F4  81 44 00 08 */	lwz r10, 0x8(r4)
/* 802B9D38 002832F8  38 60 00 01 */	li r3, 0x1
/* 802B9D3C 002832FC  7C 05 30 00 */	cmpw r5, r6
/* 802B9D40 00283300  7F 07 40 00 */	cmpw cr6, r7, r8
/* 802B9D44 00283304  7F 89 50 00 */	cmpw cr7, r9, r10
/* 802B9D48 00283308  4C 82 00 20 */	bnelr
/* 802B9D4C 0028330C  4C 9A 00 20 */	bnelr cr6
/* 802B9D50 00283310  4C 9E 00 20 */	bnelr cr7
/* 802B9D54 00283314  38 60 00 00 */	li r3, 0x0
/* 802B9D58 00283318  4E 80 00 20 */	blr
.endfn __ptmf_cmpr

.fn __ptmf_scall, global
/* 802B9D5C 0028331C  80 0C 00 00 */	lwz r0, 0x0(r12)
/* 802B9D60 00283320  81 6C 00 04 */	lwz r11, 0x4(r12)
/* 802B9D64 00283324  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802B9D68 00283328  7C 63 02 14 */	add r3, r3, r0
/* 802B9D6C 0028332C  2C 0B 00 00 */	cmpwi r11, 0x0
/* 802B9D70 00283330  41 80 00 0C */	blt .L_802B9D7C
/* 802B9D74 00283334  7D 83 60 2E */	lwzx r12, r3, r12
/* 802B9D78 00283338  7D 8C 58 2E */	lwzx r12, r12, r11
.L_802B9D7C:
/* 802B9D7C 0028333C  7D 89 03 A6 */	mtctr r12
/* 802B9D80 00283340  4E 80 04 20 */	bctr
.endfn __ptmf_scall
