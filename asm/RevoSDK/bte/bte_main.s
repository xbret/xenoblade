.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global BTUInterruptHandler
BTUInterruptHandler:
/* 802DE080 002A7640  3C 80 80 5C */	lis r4, lbl_805BE4A0@ha
/* 802DE084 002A7644  3C 60 80 2E */	lis r3, btu_task_msg_handler@ha
/* 802DE088 002A7648  38 84 E4 A0 */	addi r4, r4, lbl_805BE4A0@l
/* 802DE08C 002A764C  38 63 E2 30 */	addi r3, r3, btu_task_msg_handler@l
/* 802DE090 002A7650  38 84 10 00 */	addi r4, r4, 0x1000
/* 802DE094 002A7654  48 07 69 CC */	b OSSwitchFiber

.balign 16, 0
.global BTA_Init
BTA_Init:
/* 802DE0A0 002A7660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE0A4 002A7664  7C 08 02 A6 */	mflr r0
/* 802DE0A8 002A7668  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE0AC 002A766C  38 00 00 00 */	li r0, 0
/* 802DE0B0 002A7670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DE0B4 002A7674  90 0D B5 EC */	stw r0, lbl_8066776C@sda21(r13)
/* 802DE0B8 002A7678  4B FF E6 D9 */	bl GKI_init
/* 802DE0BC 002A767C  4B FF E9 15 */	bl GKI_enable
/* 802DE0C0 002A7680  48 01 1B 19 */	bl BTE_Init
/* 802DE0C4 002A7684  3C 60 80 51 */	lis r3, lbl_8050DF30@ha
/* 802DE0C8 002A7688  38 0D 97 90 */	addi r0, r13, lbl_80665910@sda21
/* 802DE0CC 002A768C  38 63 DF 30 */	addi r3, r3, lbl_8050DF30@l
/* 802DE0D0 002A7690  90 6D B5 E0 */	stw r3, lbl_80667760@sda21(r13)
/* 802DE0D4 002A7694  38 60 00 00 */	li r3, 0
/* 802DE0D8 002A7698  90 0D B5 E4 */	stw r0, lbl_80667764@sda21(r13)
/* 802DE0DC 002A769C  4B FF FD 25 */	bl bte_hcisu_task
/* 802DE0E0 002A76A0  48 00 00 0C */	b .L_802DE0EC
.L_802DE0E4:
/* 802DE0E4 002A76A4  38 60 00 64 */	li r3, 0x64
/* 802DE0E8 002A76A8  4B FF E8 19 */	bl GKI_delay
.L_802DE0EC:
/* 802DE0EC 002A76AC  80 0D 97 48 */	lwz r0, lbl_806658C8@sda21(r13)
/* 802DE0F0 002A76B0  2C 00 00 00 */	cmpwi r0, 0
/* 802DE0F4 002A76B4  40 82 FF F0 */	bne .L_802DE0E4
/* 802DE0F8 002A76B8  48 00 00 F9 */	bl btu_task_init
/* 802DE0FC 002A76BC  3F E0 80 5C */	lis r31, lbl_805BF4A0@ha
/* 802DE100 002A76C0  38 7F F4 A0 */	addi r3, r31, lbl_805BF4A0@l
/* 802DE104 002A76C4  48 07 4D 1D */	bl OSCreateAlarm
/* 802DE108 002A76C8  48 07 E8 59 */	bl OSGetTime
/* 802DE10C 002A76CC  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 802DE110 002A76D0  3D 20 80 2E */	lis r9, BTUInterruptHandler@ha
/* 802DE114 002A76D4  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 802DE118 002A76D8  3C C0 10 62 */	lis r6, 0x10624DD3@ha
/* 802DE11C 002A76DC  7C 65 1B 78 */	mr r5, r3
/* 802DE120 002A76E0  39 29 E0 80 */	addi r9, r9, BTUInterruptHandler@l
/* 802DE124 002A76E4  38 66 4D D3 */	addi r3, r6, 0x10624DD3@l
/* 802DE128 002A76E8  54 00 F0 BE */	srwi r0, r0, 2
/* 802DE12C 002A76EC  7C 03 00 16 */	mulhwu r0, r3, r0
/* 802DE130 002A76F0  7C 86 23 78 */	mr r6, r4
/* 802DE134 002A76F4  38 7F F4 A0 */	addi r3, r31, lbl_805BF4A0@l
/* 802DE138 002A76F8  38 E0 00 00 */	li r7, 0
/* 802DE13C 002A76FC  54 08 D9 7C */	rlwinm r8, r0, 0x1b, 5, 0x1e
/* 802DE140 002A7700  48 07 4F B1 */	bl OSSetPeriodicAlarm
/* 802DE144 002A7704  38 60 00 00 */	li r3, 0
/* 802DE148 002A7708  4B FF E7 89 */	bl GKI_run
/* 802DE14C 002A770C  48 00 00 0C */	b .L_802DE158
.L_802DE150:
/* 802DE150 002A7710  38 60 07 D0 */	li r3, 0x7d0
/* 802DE154 002A7714  4B FF E7 AD */	bl GKI_delay
.L_802DE158:
/* 802DE158 002A7718  48 00 30 69 */	bl BTA_DmIsDeviceUp
/* 802DE15C 002A771C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802DE160 002A7720  41 82 FF F0 */	beq .L_802DE150
/* 802DE164 002A7724  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DE168 002A7728  38 60 00 00 */	li r3, 0
/* 802DE16C 002A772C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE170 002A7730  7C 08 03 A6 */	mtlr r0
/* 802DE174 002A7734  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE178 002A7738  4E 80 00 20 */	blr 

.balign 16, 0
.global BTA_CleanUp
BTA_CleanUp:
/* 802DE180 002A7740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE184 002A7744  7C 08 02 A6 */	mflr r0
/* 802DE188 002A7748  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE18C 002A774C  90 6D B5 EC */	stw r3, lbl_8066776C@sda21(r13)
/* 802DE190 002A7750  3C 60 80 5C */	lis r3, lbl_805BF4A0@ha
/* 802DE194 002A7754  38 63 F4 A0 */	addi r3, r3, lbl_805BF4A0@l
/* 802DE198 002A7758  48 07 4F E9 */	bl OSCancelAlarm
/* 802DE19C 002A775C  4B FF FC D5 */	bl bte_hcisu_close
/* 802DE1A0 002A7760  4B FF E6 81 */	bl GKI_shutdown
/* 802DE1A4 002A7764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE1A8 002A7768  7C 08 03 A6 */	mtlr r0
/* 802DE1AC 002A776C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE1B0 002A7770  4E 80 00 20 */	blr 

.balign 16, 0
.global bta_usb_close_evt
bta_usb_close_evt:
/* 802DE1C0 002A7780  81 8D B5 EC */	lwz r12, lbl_8066776C@sda21(r13)
/* 802DE1C4 002A7784  2C 0C 00 00 */	cmpwi r12, 0
/* 802DE1C8 002A7788  4D 82 00 20 */	beqlr 
/* 802DE1CC 002A778C  7C 60 07 75 */	extsb. r0, r3
/* 802DE1D0 002A7790  41 80 00 10 */	blt .L_802DE1E0
/* 802DE1D4 002A7794  38 60 00 00 */	li r3, 0
/* 802DE1D8 002A7798  7D 89 03 A6 */	mtctr r12
/* 802DE1DC 002A779C  4E 80 04 20 */	bctr 
.L_802DE1E0:
/* 802DE1E0 002A77A0  38 60 00 01 */	li r3, 1
/* 802DE1E4 002A77A4  7D 89 03 A6 */	mtctr r12
/* 802DE1E8 002A77A8  4E 80 04 20 */	bctr 
/* 802DE1EC 002A77AC  4E 80 00 20 */	blr

#not sure where the stuff in rodata/sdata should be

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0
.global lbl_8050DF30
lbl_8050DF30:
	# ROM: 0x50A030
	.4byte hcisu_h2_init
	.4byte hcisu_h2_open
	.4byte hcisu_h2_close
	.4byte hcisu_h2_send
	.4byte hcisu_h2_handle_event
	.4byte 0

.global lbl_8050DF48
lbl_8050DF48:
	# ROM: 0x50A048
	.4byte 0x40020400
	.4byte 0x000F2000
	.4byte 0x13880000

.global lbl_8050DF54
lbl_8050DF54:
	.4byte 0x0002010E
	.4byte 0x01020E02
	.4byte 0x0212FF01

.global lbl_8050DF60
lbl_8050DF60:
	.4byte 0x0005000A
	.4byte 0xFF0108FF
	.4byte 0x0106FF01
	.4byte 0x07FF0112
	.4byte 0xFF020000

.global lbl_8050DF74
lbl_8050DF74:
	.4byte 0x03000200
	.4byte 0x13880000
	.4byte 0x00001000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000200
	.4byte 0x13880000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000800
	.4byte 0x13880000
	.4byte 0

.global lbl_8050DFC0
lbl_8050DFC0:
	.4byte 0x019000C8
	.4byte 0x00040004
	.4byte 0x02000320
	.4byte 0x01900000
	.4byte 0x00000300
	.4byte 0

.global lbl_8050DFD8
lbl_8050DFD8:
	.4byte 0x04000000
	.4byte lbl_806658F0
	.4byte 0x04000000
	.4byte 0


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global lbl_806658D8
lbl_806658D8:
	# ROM: 0x5714B8
	.4byte lbl_8050DF54


.global lbl_806658DC
lbl_806658DC:
	# ROM: 0x5714BC
	.4byte lbl_8050DF60

.global lbl_806658E0
lbl_806658E0:
	# ROM: 0x5714C0
	.4byte lbl_8066DCE0


.global lbl_806658E4
lbl_806658E4:
	# ROM: 0x5714C4
	.4byte lbl_8050DF74


.global lbl_806658E8
lbl_806658E8:
	# ROM: 0x5714C8
	.4byte lbl_8050DFC0
	.4byte 0

.global lbl_806658F0
lbl_806658F0:
	.4byte 0x20011002
	.4byte 0x01033102


.global lbl_806658F8
lbl_806658F8:
	# ROM: 0x5714D8
	.4byte lbl_8050DFD8
	.4byte 0

.global lbl_80665900
lbl_80665900:
	# ROM: 0x5714E0
	.4byte lbl_8066BF40
	.4byte 0

.global lbl_80665908
lbl_80665908:
	.asciz "%s\n"
	.4byte 0

.global lbl_80665910
lbl_80665910:
	# ROM: 0x5714F0
	.4byte 0x0A5C2101
	.4byte 0

.global lbl_80665918
lbl_80665918:
	# ROM: 0x5714F8
	.4byte 0x01000000


.global lbl_8066591C
lbl_8066591C:
	# ROM: 0x5714FC
	.4byte 0x00000001


.section .bss, "wa"  # 0x80573C80 - 0x8066417B
.global lbl_805BE4A0
lbl_805BE4A0:
	.skip 0x1000
.global lbl_805BF4A0
lbl_805BF4A0:
	.skip 0x30

.section .sbss, "wa"  # 0x80666600 - 0x8066836F
.global lbl_8066776C
lbl_8066776C:
	.skip 0x4