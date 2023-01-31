.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn sinit_80436138, local
/* 80436138 003FF6F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043613C 003FF6FC  C0 42 C6 B0 */	lfs f2, float_8066CA30@sda21(r2)
/* 80436140 003FF700  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80436144 003FF704  C0 02 C6 B8 */	lfs f0, float_8066CA38@sda21(r2)
/* 80436148 003FF708  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8043614C 003FF70C  C0 22 C6 B4 */	lfs f1, float_8066CA34@sda21(r2)
/* 80436150 003FF710  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80436154 003FF714  3F A0 80 66 */	lis r29, lbl_80659EC8@ha
/* 80436158 003FF718  3B BD 9E C8 */	addi r29, r29, lbl_80659EC8@l
/* 8043615C 003FF71C  3B DD 00 00 */	addi r30, r29, 0
/* 80436160 003FF720  D0 5D 00 00 */	stfs f2, 0(r29)
/* 80436164 003FF724  3B FD 00 10 */	addi r31, r29, 0x10
/* 80436168 003FF728  39 9D 00 20 */	addi r12, r29, 0x20
/* 8043616C 003FF72C  39 7D 00 30 */	addi r11, r29, 0x30
/* 80436170 003FF730  39 5D 00 40 */	addi r10, r29, 0x40
/* 80436174 003FF734  39 3D 00 50 */	addi r9, r29, 0x50
/* 80436178 003FF738  39 1D 00 60 */	addi r8, r29, 0x60
/* 8043617C 003FF73C  38 FD 00 70 */	addi r7, r29, 0x70
/* 80436180 003FF740  38 DD 00 80 */	addi r6, r29, 0x80
/* 80436184 003FF744  38 BD 00 90 */	addi r5, r29, 0x90
/* 80436188 003FF748  38 9D 00 A0 */	addi r4, r29, 0xa0
/* 8043618C 003FF74C  38 7D 00 B0 */	addi r3, r29, 0xb0
/* 80436190 003FF750  D0 5E 00 04 */	stfs f2, 4(r30)
/* 80436194 003FF754  D0 5E 00 08 */	stfs f2, 8(r30)
/* 80436198 003FF758  D0 5E 00 0C */	stfs f2, 0xc(r30)
/* 8043619C 003FF75C  D0 3D 00 10 */	stfs f1, 0x10(r29)
/* 804361A0 003FF760  D0 3F 00 04 */	stfs f1, 4(r31)
/* 804361A4 003FF764  D0 3F 00 08 */	stfs f1, 8(r31)
/* 804361A8 003FF768  D0 5F 00 0C */	stfs f2, 0xc(r31)
/* 804361AC 003FF76C  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 804361B0 003FF770  D0 0C 00 04 */	stfs f0, 4(r12)
/* 804361B4 003FF774  D0 0C 00 08 */	stfs f0, 8(r12)
/* 804361B8 003FF778  D0 4C 00 0C */	stfs f2, 0xc(r12)
/* 804361BC 003FF77C  D0 5D 00 30 */	stfs f2, 0x30(r29)
/* 804361C0 003FF780  D0 0B 00 04 */	stfs f0, 4(r11)
/* 804361C4 003FF784  D0 0B 00 08 */	stfs f0, 8(r11)
/* 804361C8 003FF788  D0 4B 00 0C */	stfs f2, 0xc(r11)
/* 804361CC 003FF78C  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 804361D0 003FF790  D0 4A 00 04 */	stfs f2, 4(r10)
/* 804361D4 003FF794  D0 0A 00 08 */	stfs f0, 8(r10)
/* 804361D8 003FF798  D0 4A 00 0C */	stfs f2, 0xc(r10)
/* 804361DC 003FF79C  D0 1D 00 50 */	stfs f0, 0x50(r29)
/* 804361E0 003FF7A0  D0 09 00 04 */	stfs f0, 4(r9)
/* 804361E4 003FF7A4  D0 49 00 08 */	stfs f2, 8(r9)
/* 804361E8 003FF7A8  D0 49 00 0C */	stfs f2, 0xc(r9)
/* 804361EC 003FF7AC  D0 5D 00 60 */	stfs f2, 0x60(r29)
/* 804361F0 003FF7B0  D0 48 00 04 */	stfs f2, 4(r8)
/* 804361F4 003FF7B4  D0 08 00 08 */	stfs f0, 8(r8)
/* 804361F8 003FF7B8  D0 48 00 0C */	stfs f2, 0xc(r8)
/* 804361FC 003FF7BC  D0 1D 00 70 */	stfs f0, 0x70(r29)
/* 80436200 003FF7C0  D0 47 00 04 */	stfs f2, 4(r7)
/* 80436204 003FF7C4  D0 47 00 08 */	stfs f2, 8(r7)
/* 80436208 003FF7C8  D0 47 00 0C */	stfs f2, 0xc(r7)
/* 8043620C 003FF7CC  D0 5D 00 80 */	stfs f2, 0x80(r29)
/* 80436210 003FF7D0  D0 06 00 04 */	stfs f0, 4(r6)
/* 80436214 003FF7D4  D0 46 00 08 */	stfs f2, 8(r6)
/* 80436218 003FF7D8  D0 46 00 0C */	stfs f2, 0xc(r6)
/* 8043621C 003FF7DC  D0 5D 00 90 */	stfs f2, 0x90(r29)
/* 80436220 003FF7E0  D0 25 00 04 */	stfs f1, 4(r5)
/* 80436224 003FF7E4  D0 25 00 08 */	stfs f1, 8(r5)
/* 80436228 003FF7E8  D0 45 00 0C */	stfs f2, 0xc(r5)
/* 8043622C 003FF7EC  D0 5D 00 A0 */	stfs f2, 0xa0(r29)
/* 80436230 003FF7F0  D0 24 00 04 */	stfs f1, 4(r4)
/* 80436234 003FF7F4  D0 04 00 08 */	stfs f0, 8(r4)
/* 80436238 003FF7F8  D0 44 00 0C */	stfs f2, 0xc(r4)
/* 8043623C 003FF7FC  D0 1D 00 B0 */	stfs f0, 0xb0(r29)
/* 80436240 003FF800  D0 03 00 04 */	stfs f0, 4(r3)
/* 80436244 003FF804  D0 03 00 08 */	stfs f0, 8(r3)
/* 80436248 003FF808  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8043624C 003FF80C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80436250 003FF810  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80436254 003FF814  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80436258 003FF818  38 21 00 20 */	addi r1, r1, 0x20
/* 8043625C 003FF81C  4E 80 00 20 */	blr 
.endfn sinit_80436138

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.obj lbl_ctor, local
.hidden lbl_ctor
.4byte sinit_80436138
.endobj lbl_ctor

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0


.global float_8066CA30
float_8066CA30:
	.float 1.0


.global float_8066CA34
float_8066CA34:
	.float 0.5


.global float_8066CA38
float_8066CA38:
	.float 0
	.4byte 0

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global lbl_80659EC8
lbl_80659EC8:
	.skip 0x20
.global lbl_80659EE8
lbl_80659EE8:
	.skip 0x10
.global lbl_80659EF8
lbl_80659EF8:
	.skip 0x90

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C0A8", local
.hidden "@etb_8001C0A8"
	.4byte 0x180A0000
	.4byte 0x00000000
.endobj "@etb_8001C0A8"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033CC8", local
.hidden "@eti_80033CC8"
	.4byte sinit_80436138
	.4byte 0x00000128
	.4byte "@etb_8001C0A8"
.endobj "@eti_80033CC8"
