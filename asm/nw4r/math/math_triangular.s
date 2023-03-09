.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn SinFIdx__Q24nw4r4mathFf, global
/* 8040AD2C 003D42EC  FC 60 0A 10 */	fabs f3, f1
/* 8040AD30 003D42F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040AD34 003D42F4  C0 02 C2 A0 */	lfs f0, float_8066C620@sda21(r2)
/* 8040AD38 003D42F8  48 00 00 08 */	b .L_8040AD40
.L_8040AD3C:
/* 8040AD3C 003D42FC  EC 63 00 28 */	fsubs f3, f3, f0
.L_8040AD40:
/* 8040AD40 003D4300  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8040AD44 003D4304  41 81 FF F8 */	bgt .L_8040AD3C
/* 8040AD48 003D4308  F0 61 B0 0C */	psq_st f3, 12(r1), 1, qr3
/* 8040AD4C 003D430C  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8040AD50 003D4310  B0 01 00 08 */	sth r0, 8(r1)
/* 8040AD54 003D4314  E0 41 B0 08 */	psq_l f2, 8(r1), 1, qr3
/* 8040AD58 003D4318  3C 80 80 52 */	lis r4, gSinCosTbl__Q34nw4r4math6detail@ha
/* 8040AD5C 003D431C  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 8040AD60 003D4320  C0 02 C2 A4 */	lfs f0, float_8066C624@sda21(r2)
/* 8040AD64 003D4324  38 84 11 10 */	addi r4, r4, gSinCosTbl__Q34nw4r4math6detail@l
/* 8040AD68 003D4328  EC 83 10 28 */	fsubs f4, f3, f2
/* 8040AD6C 003D432C  7C 64 02 14 */	add r3, r4, r0
/* 8040AD70 003D4330  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8040AD74 003D4334  C0 63 00 08 */	lfs f3, 8(r3)
/* 8040AD78 003D4338  7C 44 04 2E */	lfsx f2, r4, r0
/* 8040AD7C 003D433C  EC 04 00 F2 */	fmuls f0, f4, f3
/* 8040AD80 003D4340  EC 22 00 2A */	fadds f1, f2, f0
/* 8040AD84 003D4344  40 80 00 08 */	bge .L_8040AD8C
/* 8040AD88 003D4348  FC 20 08 50 */	fneg f1, f1
.L_8040AD8C:
/* 8040AD8C 003D434C  38 21 00 10 */	addi r1, r1, 0x10
/* 8040AD90 003D4350  4E 80 00 20 */	blr 
.endfn SinFIdx__Q24nw4r4mathFf

.fn CosFIdx__Q24nw4r4mathFf, global
/* 8040AD94 003D4354  FC 20 0A 10 */	fabs f1, f1
/* 8040AD98 003D4358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040AD9C 003D435C  C0 02 C2 A0 */	lfs f0, float_8066C620@sda21(r2)
/* 8040ADA0 003D4360  48 00 00 08 */	b .L_8040ADA8
.L_8040ADA4:
/* 8040ADA4 003D4364  EC 21 00 28 */	fsubs f1, f1, f0
.L_8040ADA8:
/* 8040ADA8 003D4368  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8040ADAC 003D436C  41 81 FF F8 */	bgt .L_8040ADA4
/* 8040ADB0 003D4370  F0 21 B0 0C */	psq_st f1, 12(r1), 1, qr3
/* 8040ADB4 003D4374  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8040ADB8 003D4378  B0 01 00 08 */	sth r0, 8(r1)
/* 8040ADBC 003D437C  E0 01 B0 08 */	psq_l f0, 8(r1), 1, qr3
/* 8040ADC0 003D4380  3C 60 80 52 */	lis r3, gSinCosTbl__Q34nw4r4math6detail@ha
/* 8040ADC4 003D4384  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 8040ADC8 003D4388  38 63 11 10 */	addi r3, r3, gSinCosTbl__Q34nw4r4math6detail@l
/* 8040ADCC 003D438C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8040ADD0 003D4390  7C 63 02 14 */	add r3, r3, r0
/* 8040ADD4 003D4394  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8040ADD8 003D4398  C0 03 00 04 */	lfs f0, 4(r3)
/* 8040ADDC 003D439C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8040ADE0 003D43A0  EC 20 08 2A */	fadds f1, f0, f1
/* 8040ADE4 003D43A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8040ADE8 003D43A8  4E 80 00 20 */	blr 
.endfn CosFIdx__Q24nw4r4mathFf

.fn SinCosFIdx__Q24nw4r4mathFPfPff, global
/* 8040ADEC 003D43AC  FC 00 0A 10 */	fabs f0, f1
/* 8040ADF0 003D43B0  3C A0 80 52 */	lis r5, gSinCosTbl__Q34nw4r4math6detail@ha
/* 8040ADF4 003D43B4  C0 42 C2 A0 */	lfs f2, float_8066C620@sda21(r2)
/* 8040ADF8 003D43B8  38 A5 11 10 */	addi r5, r5, gSinCosTbl__Q34nw4r4math6detail@l
/* 8040ADFC 003D43BC  F0 03 B0 00 */	psq_st f0, 0(r3), 1, qr3
/* 8040AE00 003D43C0  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8040AE04 003D43C4  40 81 00 14 */	ble .L_8040AE18
.L_8040AE08:
/* 8040AE08 003D43C8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8040AE0C 003D43CC  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8040AE10 003D43D0  41 81 FF F8 */	bgt .L_8040AE08
/* 8040AE14 003D43D4  F0 03 B0 00 */	psq_st f0, 0(r3), 1, qr3
.L_8040AE18:
/* 8040AE18 003D43D8  A0 03 00 00 */	lhz r0, 0(r3)
/* 8040AE1C 003D43DC  EC 82 10 28 */	fsubs f4, f2, f2
/* 8040AE20 003D43E0  54 00 25 36 */	rlwinm r0, r0, 4, 0x14, 0x1b
/* 8040AE24 003D43E4  7C A5 02 14 */	add r5, r5, r0
/* 8040AE28 003D43E8  E0 43 B0 00 */	psq_l f2, 0(r3), 1, qr3
/* 8040AE2C 003D43EC  E0 65 00 00 */	psq_l f3, 0(r5), 0, qr0
/* 8040AE30 003D43F0  FC 01 20 00 */	fcmpu cr0, f1, f4
/* 8040AE34 003D43F4  EC 40 10 28 */	fsubs f2, f0, f2
/* 8040AE38 003D43F8  E0 05 00 08 */	psq_l f0, 8(r5), 0, qr0
/* 8040AE3C 003D43FC  10 00 18 9C */	ps_madds0 f0, f0, f2, f3
/* 8040AE40 003D4400  10 40 04 A0 */	ps_merge10 f2, f0, f0
/* 8040AE44 003D4404  F0 44 80 00 */	psq_st f2, 0(r4), 1, qr0
/* 8040AE48 003D4408  40 80 00 08 */	bge .L_8040AE50
/* 8040AE4C 003D440C  10 00 00 50 */	ps_neg f0, f0
.L_8040AE50:
/* 8040AE50 003D4410  F0 03 80 00 */	psq_st f0, 0(r3), 1, qr0
/* 8040AE54 003D4414  4E 80 00 20 */	blr 
.endfn SinCosFIdx__Q24nw4r4mathFPfPff

.fn Atan2FIdx__Q24nw4r4mathFff, global
/* 8040AE58 003D4418  C0 02 C2 A4 */	lfs f0, float_8066C624@sda21(r2)
/* 8040AE5C 003D441C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040AE60 003D4420  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 8040AE64 003D4424  40 82 00 14 */	bne .L_8040AE78
/* 8040AE68 003D4428  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8040AE6C 003D442C  40 82 00 0C */	bne .L_8040AE78
/* 8040AE70 003D4430  FC 20 00 90 */	fmr f1, f0
/* 8040AE74 003D4434  48 00 01 84 */	b .L_8040AFF8
.L_8040AE78:
/* 8040AE78 003D4438  C0 82 C2 A4 */	lfs f4, float_8066C624@sda21(r2)
/* 8040AE7C 003D443C  FC 02 20 40 */	fcmpo cr0, f2, f4
/* 8040AE80 003D4440  4C 41 13 82 */	cror 2, 1, 2
/* 8040AE84 003D4444  40 82 00 6C */	bne .L_8040AEF0
/* 8040AE88 003D4448  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 8040AE8C 003D444C  4C 41 13 82 */	cror 2, 1, 2
/* 8040AE90 003D4450  40 82 00 30 */	bne .L_8040AEC0
/* 8040AE94 003D4454  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8040AE98 003D4458  4C 41 13 82 */	cror 2, 1, 2
/* 8040AE9C 003D445C  40 82 00 10 */	bne .L_8040AEAC
/* 8040AEA0 003D4460  FC 60 10 90 */	fmr f3, f2
/* 8040AEA4 003D4464  38 00 00 00 */	li r0, 0
/* 8040AEA8 003D4468  48 00 00 BC */	b .L_8040AF64
.L_8040AEAC:
/* 8040AEAC 003D446C  FC 60 08 90 */	fmr f3, f1
/* 8040AEB0 003D4470  C0 82 C2 AC */	lfs f4, float_8066C62C@sda21(r2)
/* 8040AEB4 003D4474  FC 20 10 90 */	fmr f1, f2
/* 8040AEB8 003D4478  38 00 00 01 */	li r0, 1
/* 8040AEBC 003D447C  48 00 00 A8 */	b .L_8040AF64
.L_8040AEC0:
/* 8040AEC0 003D4480  FC 20 08 50 */	fneg f1, f1
/* 8040AEC4 003D4484  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8040AEC8 003D4488  4C 41 13 82 */	cror 2, 1, 2
/* 8040AECC 003D448C  40 82 00 10 */	bne .L_8040AEDC
/* 8040AED0 003D4490  FC 60 10 90 */	fmr f3, f2
/* 8040AED4 003D4494  38 00 00 01 */	li r0, 1
/* 8040AED8 003D4498  48 00 00 8C */	b .L_8040AF64
.L_8040AEDC:
/* 8040AEDC 003D449C  FC 60 08 90 */	fmr f3, f1
/* 8040AEE0 003D44A0  C0 82 C2 B0 */	lfs f4, float_8066C630@sda21(r2)
/* 8040AEE4 003D44A4  FC 20 10 90 */	fmr f1, f2
/* 8040AEE8 003D44A8  38 00 00 00 */	li r0, 0
/* 8040AEEC 003D44AC  48 00 00 78 */	b .L_8040AF64
.L_8040AEF0:
/* 8040AEF0 003D44B0  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 8040AEF4 003D44B4  4C 41 13 82 */	cror 2, 1, 2
/* 8040AEF8 003D44B8  40 82 00 38 */	bne .L_8040AF30
/* 8040AEFC 003D44BC  FC 00 10 50 */	fneg f0, f2
/* 8040AF00 003D44C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8040AF04 003D44C4  4C 41 13 82 */	cror 2, 1, 2
/* 8040AF08 003D44C8  40 82 00 14 */	bne .L_8040AF1C
/* 8040AF0C 003D44CC  FC 60 00 90 */	fmr f3, f0
/* 8040AF10 003D44D0  C0 82 C2 B4 */	lfs f4, float_8066C634@sda21(r2)
/* 8040AF14 003D44D4  38 00 00 01 */	li r0, 1
/* 8040AF18 003D44D8  48 00 00 4C */	b .L_8040AF64
.L_8040AF1C:
/* 8040AF1C 003D44DC  FC 60 08 90 */	fmr f3, f1
/* 8040AF20 003D44E0  C0 82 C2 AC */	lfs f4, float_8066C62C@sda21(r2)
/* 8040AF24 003D44E4  FC 20 00 90 */	fmr f1, f0
/* 8040AF28 003D44E8  38 00 00 00 */	li r0, 0
/* 8040AF2C 003D44EC  48 00 00 38 */	b .L_8040AF64
.L_8040AF30:
/* 8040AF30 003D44F0  FC 00 10 50 */	fneg f0, f2
/* 8040AF34 003D44F4  FC 20 08 50 */	fneg f1, f1
/* 8040AF38 003D44F8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8040AF3C 003D44FC  4C 41 13 82 */	cror 2, 1, 2
/* 8040AF40 003D4500  40 82 00 14 */	bne .L_8040AF54
/* 8040AF44 003D4504  FC 60 00 90 */	fmr f3, f0
/* 8040AF48 003D4508  C0 82 C2 B8 */	lfs f4, float_8066C638@sda21(r2)
/* 8040AF4C 003D450C  38 00 00 00 */	li r0, 0
/* 8040AF50 003D4510  48 00 00 14 */	b .L_8040AF64
.L_8040AF54:
/* 8040AF54 003D4514  FC 60 08 90 */	fmr f3, f1
/* 8040AF58 003D4518  C0 82 C2 B0 */	lfs f4, float_8066C630@sda21(r2)
/* 8040AF5C 003D451C  FC 20 00 90 */	fmr f1, f0
/* 8040AF60 003D4520  38 00 00 01 */	li r0, 1
.L_8040AF64:
/* 8040AF64 003D4524  2C 00 00 00 */	cmpwi r0, 0
/* 8040AF68 003D4528  41 82 00 4C */	beq .L_8040AFB4
/* 8040AF6C 003D452C  EC 21 18 24 */	fdivs f1, f1, f3
/* 8040AF70 003D4530  C0 02 C2 A8 */	lfs f0, float_8066C628@sda21(r2)
/* 8040AF74 003D4534  EC 21 00 32 */	fmuls f1, f1, f0
/* 8040AF78 003D4538  F0 21 B0 10 */	psq_st f1, 16(r1), 1, qr3
/* 8040AF7C 003D453C  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 8040AF80 003D4540  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8040AF84 003D4544  E0 01 B0 0A */	psq_l f0, 10(r1), 1, qr3
/* 8040AF88 003D4548  3C 80 80 57 */	lis r4, "sArcTanTbl__Q34nw4r4math29@unnamed@math_triangular_cpp@"@ha
/* 8040AF8C 003D454C  54 00 18 38 */	slwi r0, r0, 3
/* 8040AF90 003D4550  38 84 DE C0 */	addi r4, r4, "sArcTanTbl__Q34nw4r4math29@unnamed@math_triangular_cpp@"@l
/* 8040AF94 003D4554  EC 41 00 28 */	fsubs f2, f1, f0
/* 8040AF98 003D4558  7C 64 02 14 */	add r3, r4, r0
/* 8040AF9C 003D455C  7C 04 04 2E */	lfsx f0, r4, r0
/* 8040AFA0 003D4560  C0 23 00 04 */	lfs f1, 4(r3)
/* 8040AFA4 003D4564  EC 22 00 72 */	fmuls f1, f2, f1
/* 8040AFA8 003D4568  EC 00 08 2A */	fadds f0, f0, f1
/* 8040AFAC 003D456C  EC 24 00 28 */	fsubs f1, f4, f0
/* 8040AFB0 003D4570  48 00 00 48 */	b .L_8040AFF8
.L_8040AFB4:
/* 8040AFB4 003D4574  EC 21 18 24 */	fdivs f1, f1, f3
/* 8040AFB8 003D4578  C0 02 C2 A8 */	lfs f0, float_8066C628@sda21(r2)
/* 8040AFBC 003D457C  EC 21 00 32 */	fmuls f1, f1, f0
/* 8040AFC0 003D4580  F0 21 B0 0C */	psq_st f1, 12(r1), 1, qr3
/* 8040AFC4 003D4584  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8040AFC8 003D4588  B0 01 00 08 */	sth r0, 8(r1)
/* 8040AFCC 003D458C  E0 01 B0 08 */	psq_l f0, 8(r1), 1, qr3
/* 8040AFD0 003D4590  3C 80 80 57 */	lis r4, "sArcTanTbl__Q34nw4r4math29@unnamed@math_triangular_cpp@"@ha
/* 8040AFD4 003D4594  54 00 18 38 */	slwi r0, r0, 3
/* 8040AFD8 003D4598  38 84 DE C0 */	addi r4, r4, "sArcTanTbl__Q34nw4r4math29@unnamed@math_triangular_cpp@"@l
/* 8040AFDC 003D459C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8040AFE0 003D45A0  7C 64 02 14 */	add r3, r4, r0
/* 8040AFE4 003D45A4  7C 04 04 2E */	lfsx f0, r4, r0
/* 8040AFE8 003D45A8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8040AFEC 003D45AC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8040AFF0 003D45B0  EC 00 08 2A */	fadds f0, f0, f1
/* 8040AFF4 003D45B4  EC 24 00 2A */	fadds f1, f4, f0
.L_8040AFF8:
/* 8040AFF8 003D45B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8040AFFC 003D45BC  4E 80 00 20 */	blr 
.endfn Atan2FIdx__Q24nw4r4mathFff

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8


.obj gSinCosTbl__Q34nw4r4math6detail, global
    .float 0 #0
    .float 1.0
    .float 0.024541
    .float -0.00030099999
    .float 0.024541
    .float 0.999699
    .float 0.024526
    .float -0.00090300001
    .float 0.049068
    .float 0.99879497
    .float 0.024497001
    .float -0.001505
    .float 0.073564999
    .float 0.99729002
    .float 0.024452999
    .float -0.002106
    .float 0.098017
    .float 0.99518502
    .float 0.024394
    .float -0.002705
    .float 0.122411
    .float 0.99247998
    .float 0.024320001
    .float -0.003303
    .float 0.14673001
    .float 0.98917699
    .float 0.024231
    .float -0.0038989999
    .float 0.17096201
    .float 0.98527801
    .float 0.024127999
    .float -0.0044920002
    .float 0.19509
    .float 0.98078501
    .float 0.024010999
    .float -0.0050829998
    .float 0.219101
    .float 0.97570199
    .float 0.023879001
    .float -0.0056710001
    .float 0.24298
    .float 0.97003102
    .float 0.023732999
    .float -0.0062549999
    .float 0.26671299
    .float 0.96377599
    .float 0.023572
    .float -0.0068359999
    .float 0.29028499
    .float 0.95694
    .float 0.023397001
    .float -0.0074120001
    .float 0.31368199
    .float 0.94952798
    .float 0.023208
    .float -0.0079840003
    .float 0.33689001
    .float 0.941544
    .float 0.023004999
    .float -0.0085509997
    .float 0.35989499
    .float 0.93299299
    .float 0.022787999
    .float -0.0091129998
    .float 0.38268301
    .float 0.92387998
    .float 0.022558
    .float -0.0096699996
    .float 0.40524101
    .float 0.91421002
    .float 0.022314001
    .float -0.01022
    .float 0.42755499
    .float 0.90398902
    .float 0.022056
    .float -0.010765
    .float 0.44961101
    .float 0.893224
    .float 0.021785
    .float -0.011303
    .float 0.47139701
    .float 0.88192099
    .float 0.021500999
    .float -0.011834
    .float 0.49289799
    .float 0.87008703
    .float 0.021205001
    .float -0.012358
    .float 0.514103
    .float 0.85772902
    .float 0.020895001
    .float -0.012875
    .float 0.534998
    .float 0.844854
    .float 0.020572999
    .float -0.013384
    .float 0.55557001
    .float 0.83147001
    .float 0.020238001
    .float -0.013885
    .float 0.57580799
    .float 0.81758499
    .float 0.019890999
    .float -0.014377
    .float 0.59569901
    .float 0.80320799
    .float 0.019532001
    .float -0.014861
    .float 0.61523199
    .float 0.78834599
    .float 0.019161999
    .float -0.015336
    .float 0.63439298
    .float 0.77301002
    .float 0.018780001
    .float -0.015802
    .float 0.65317303
    .float 0.757209
    .float 0.018386001
    .float -0.016257999
    .float 0.67155898
    .float 0.740951
    .float 0.017982
    .float -0.016704001
    .float 0.68954098
    .float 0.72424698
    .float 0.017565999
    .float -0.017139999
    .float 0.70710701
    .float 0.70710701
    .float 0.017139999
    .float -0.017565999
    .float 0.72424698
    .float 0.68954098
    .float 0.016704001
    .float -0.017982
    .float 0.740951
    .float 0.67155898
    .float 0.016257999
    .float -0.018386001
    .float 0.757209
    .float 0.65317303
    .float 0.015802
    .float -0.018780001
    .float 0.77301002
    .float 0.63439298
    .float 0.015336
    .float -0.019161999
    .float 0.78834599
    .float 0.61523199
    .float 0.014861
    .float -0.019532001
    .float 0.80320799
    .float 0.59569901
    .float 0.014377
    .float -0.019890999
    .float 0.81758499
    .float 0.57580799
    .float 0.013885
    .float -0.020238001
    .float 0.83147001
    .float 0.55557001
    .float 0.013384
    .float -0.020572999
    .float 0.844854
    .float 0.534998
    .float 0.012875
    .float -0.020895001
    .float 0.85772902
    .float 0.514103
    .float 0.012358
    .float -0.021205001
    .float 0.87008703
    .float 0.49289799
    .float 0.011834
    .float -0.021500999
    .float 0.88192099
    .float 0.47139701
    .float 0.011303
    .float -0.021785
    .float 0.893224
    .float 0.44961101
    .float 0.010765
    .float -0.022056
    .float 0.90398902
    .float 0.42755499
    .float 0.01022
    .float -0.022314001
    .float 0.91421002
    .float 0.40524101
    .float 0.0096699996
    .float -0.022558
    .float 0.92387998
    .float 0.38268301
    .float 0.0091129998
    .float -0.022787999
    .float 0.93299299
    .float 0.35989499
    .float 0.0085509997
    .float -0.023004999
    .float 0.941544
    .float 0.33689001
    .float 0.0079840003
    .float -0.023208
    .float 0.94952798
    .float 0.31368199
    .float 0.0074120001
    .float -0.023397001
    .float 0.95694
    .float 0.29028499
    .float 0.0068359999
    .float -0.023572
    .float 0.96377599
    .float 0.26671299
    .float 0.0062549999
    .float -0.023732999
    .float 0.97003102
    .float 0.24298
    .float 0.0056710001
    .float -0.023879001
    .float 0.97570199
    .float 0.219101
    .float 0.0050829998
    .float -0.024010999
    .float 0.98078501
    .float 0.19509
    .float 0.0044920002
    .float -0.024127999
    .float 0.98527801
    .float 0.17096201
    .float 0.0038989999
    .float -0.024231
    .float 0.98917699
    .float 0.14673001
    .float 0.003303
    .float -0.024320001
    .float 0.99247998
    .float 0.122411
    .float 0.002705
    .float -0.024394
    .float 0.99518502
    .float 0.098017
    .float 0.002106
    .float -0.024452999
    .float 0.99729002
    .float 0.073564999
    .float 0.001505
    .float -0.024497001
    .float 0.99879497
    .float 0.049068
    .float 0.00090300001
    .float -0.024526
    .float 0.999699
    .float 0.024541
    .float 0.00030099999
    .float -0.024541
    .float 1.0
    .float 0 #0
    .float -0.00030099999
    .float -0.024541
    .float 0.999699
    .float -0.024541
    .float -0.00090300001
    .float -0.024526
    .float 0.99879497
    .float -0.049068
    .float -0.001505
    .float -0.024497001
    .float 0.99729002
    .float -0.073564999
    .float -0.002106
    .float -0.024452999
    .float 0.99518502
    .float -0.098017
    .float -0.002705
    .float -0.024394
    .float 0.99247998
    .float -0.122411
    .float -0.003303
    .float -0.024320001
    .float 0.98917699
    .float -0.14673001
    .float -0.0038989999
    .float -0.024231
    .float 0.98527801
    .float -0.17096201
    .float -0.0044920002
    .float -0.024127999
    .float 0.98078501
    .float -0.19509
    .float -0.0050829998
    .float -0.024010999
    .float 0.97570199
    .float -0.219101
    .float -0.0056710001
    .float -0.023879001
    .float 0.97003102
    .float -0.24298
    .float -0.0062549999
    .float -0.023732999
    .float 0.96377599
    .float -0.26671299
    .float -0.0068359999
    .float -0.023572
    .float 0.95694
    .float -0.29028499
    .float -0.0074120001
    .float -0.023397001
    .float 0.94952798
    .float -0.31368199
    .float -0.0079840003
    .float -0.023208
    .float 0.941544
    .float -0.33689001
    .float -0.0085509997
    .float -0.023004999
    .float 0.93299299
    .float -0.35989499
    .float -0.0091129998
    .float -0.022787999
    .float 0.92387998
    .float -0.38268301
    .float -0.0096699996
    .float -0.022558
    .float 0.91421002
    .float -0.40524101
    .float -0.01022
    .float -0.022314001
    .float 0.90398902
    .float -0.42755499
    .float -0.010765
    .float -0.022056
    .float 0.893224
    .float -0.44961101
    .float -0.011303
    .float -0.021785
    .float 0.88192099
    .float -0.47139701
    .float -0.011834
    .float -0.021500999
    .float 0.87008703
    .float -0.49289799
    .float -0.012358
    .float -0.021205001
    .float 0.85772902
    .float -0.514103
    .float -0.012875
    .float -0.020895001
    .float 0.844854
    .float -0.534998
    .float -0.013384
    .float -0.020572999
    .float 0.83147001
    .float -0.55557001
    .float -0.013885
    .float -0.020238001
    .float 0.81758499
    .float -0.57580799
    .float -0.014377
    .float -0.019890999
    .float 0.80320799
    .float -0.59569901
    .float -0.014861
    .float -0.019532001
    .float 0.78834599
    .float -0.61523199
    .float -0.015336
    .float -0.019161999
    .float 0.77301002
    .float -0.63439298
    .float -0.015802
    .float -0.018780001
    .float 0.757209
    .float -0.65317303
    .float -0.016257999
    .float -0.018386001
    .float 0.740951
    .float -0.67155898
    .float -0.016704001
    .float -0.017982
    .float 0.72424698
    .float -0.68954098
    .float -0.017139999
    .float -0.017565999
    .float 0.70710701
    .float -0.70710701
    .float -0.017565999
    .float -0.017139999
    .float 0.68954098
    .float -0.72424698
    .float -0.017982
    .float -0.016704001
    .float 0.67155898
    .float -0.740951
    .float -0.018386001
    .float -0.016257999
    .float 0.65317303
    .float -0.757209
    .float -0.018780001
    .float -0.015802
    .float 0.63439298
    .float -0.77301002
    .float -0.019161999
    .float -0.015336
    .float 0.61523199
    .float -0.78834599
    .float -0.019532001
    .float -0.014861
    .float 0.59569901
    .float -0.80320799
    .float -0.019890999
    .float -0.014377
    .float 0.57580799
    .float -0.81758499
    .float -0.020238001
    .float -0.013885
    .float 0.55557001
    .float -0.83147001
    .float -0.020572999
    .float -0.013384
    .float 0.534998
    .float -0.844854
    .float -0.020895001
    .float -0.012875
    .float 0.514103
    .float -0.85772902
    .float -0.021205001
    .float -0.012358
    .float 0.49289799
    .float -0.87008703
    .float -0.021500999
    .float -0.011834
    .float 0.47139701
    .float -0.88192099
    .float -0.021785
    .float -0.011303
    .float 0.44961101
    .float -0.893224
    .float -0.022056
    .float -0.010765
    .float 0.42755499
    .float -0.90398902
    .float -0.022314001
    .float -0.01022
    .float 0.40524101
    .float -0.91421002
    .float -0.022558
    .float -0.0096699996
    .float 0.38268301
    .float -0.92387998
    .float -0.022787999
    .float -0.0091129998
    .float 0.35989499
    .float -0.93299299
    .float -0.023004999
    .float -0.0085509997
    .float 0.33689001
    .float -0.941544
    .float -0.023208
    .float -0.0079840003
    .float 0.31368199
    .float -0.94952798
    .float -0.023397001
    .float -0.0074120001
    .float 0.29028499
    .float -0.95694
    .float -0.023572
    .float -0.0068359999
    .float 0.26671299
    .float -0.96377599
    .float -0.023732999
    .float -0.0062549999
    .float 0.24298
    .float -0.97003102
    .float -0.023879001
    .float -0.0056710001
    .float 0.219101
    .float -0.97570199
    .float -0.024010999
    .float -0.0050829998
    .float 0.19509
    .float -0.98078501
    .float -0.024127999
    .float -0.0044920002
    .float 0.17096201
    .float -0.98527801
    .float -0.024231
    .float -0.0038989999
    .float 0.14673001
    .float -0.98917699
    .float -0.024320001
    .float -0.003303
    .float 0.122411
    .float -0.99247998
    .float -0.024394
    .float -0.002705
    .float 0.098017
    .float -0.99518502
    .float -0.024452999
    .float -0.002106
    .float 0.073564999
    .float -0.99729002
    .float -0.024497001
    .float -0.001505
    .float 0.049068
    .float -0.99879497
    .float -0.024526
    .float -0.00090300001
    .float 0.024541
    .float -0.999699
    .float -0.024541
    .float -0.00030099999
    .float 0 #0
    .float -1.0
    .float -0.024541
    .float 0.00030099999
    .float -0.024541
    .float -0.999699
    .float -0.024526
    .float 0.00090300001
    .float -0.049068
    .float -0.99879497
    .float -0.024497001
    .float 0.001505
    .float -0.073564999
    .float -0.99729002
    .float -0.024452999
    .float 0.002106
    .float -0.098017
    .float -0.99518502
    .float -0.024394
    .float 0.002705
    .float -0.122411
    .float -0.99247998
    .float -0.024320001
    .float 0.003303
    .float -0.14673001
    .float -0.98917699
    .float -0.024231
    .float 0.0038989999
    .float -0.17096201
    .float -0.98527801
    .float -0.024127999
    .float 0.0044920002
    .float -0.19509
    .float -0.98078501
    .float -0.024010999
    .float 0.0050829998
    .float -0.219101
    .float -0.97570199
    .float -0.023879001
    .float 0.0056710001
    .float -0.24298
    .float -0.97003102
    .float -0.023732999
    .float 0.0062549999
    .float -0.26671299
    .float -0.96377599
    .float -0.023572
    .float 0.0068359999
    .float -0.29028499
    .float -0.95694
    .float -0.023397001
    .float 0.0074120001
    .float -0.31368199
    .float -0.94952798
    .float -0.023208
    .float 0.0079840003
    .float -0.33689001
    .float -0.941544
    .float -0.023004999
    .float 0.0085509997
    .float -0.35989499
    .float -0.93299299
    .float -0.022787999
    .float 0.0091129998
    .float -0.38268301
    .float -0.92387998
    .float -0.022558
    .float 0.0096699996
    .float -0.40524101
    .float -0.91421002
    .float -0.022314001
    .float 0.01022
    .float -0.42755499
    .float -0.90398902
    .float -0.022056
    .float 0.010765
    .float -0.44961101
    .float -0.893224
    .float -0.021785
    .float 0.011303
    .float -0.47139701
    .float -0.88192099
    .float -0.021500999
    .float 0.011834
    .float -0.49289799
    .float -0.87008703
    .float -0.021205001
    .float 0.012358
    .float -0.514103
    .float -0.85772902
    .float -0.020895001
    .float 0.012875
    .float -0.534998
    .float -0.844854
    .float -0.020572999
    .float 0.013384
    .float -0.55557001
    .float -0.83147001
    .float -0.020238001
    .float 0.013885
    .float -0.57580799
    .float -0.81758499
    .float -0.019890999
    .float 0.014377
    .float -0.59569901
    .float -0.80320799
    .float -0.019532001
    .float 0.014861
    .float -0.61523199
    .float -0.78834599
    .float -0.019161999
    .float 0.015336
    .float -0.63439298
    .float -0.77301002
    .float -0.018780001
    .float 0.015802
    .float -0.65317303
    .float -0.757209
    .float -0.018386001
    .float 0.016257999
    .float -0.67155898
    .float -0.740951
    .float -0.017982
    .float 0.016704001
    .float -0.68954098
    .float -0.72424698
    .float -0.017565999
    .float 0.017139999
    .float -0.70710701
    .float -0.70710701
    .float -0.017139999
    .float 0.017565999
    .float -0.72424698
    .float -0.68954098
    .float -0.016704001
    .float 0.017982
    .float -0.740951
    .float -0.67155898
    .float -0.016257999
    .float 0.018386001
    .float -0.757209
    .float -0.65317303
    .float -0.015802
    .float 0.018780001
    .float -0.77301002
    .float -0.63439298
    .float -0.015336
    .float 0.019161999
    .float -0.78834599
    .float -0.61523199
    .float -0.014861
    .float 0.019532001
    .float -0.80320799
    .float -0.59569901
    .float -0.014377
    .float 0.019890999
    .float -0.81758499
    .float -0.57580799
    .float -0.013885
    .float 0.020238001
    .float -0.83147001
    .float -0.55557001
    .float -0.013384
    .float 0.020572999
    .float -0.844854
    .float -0.534998
    .float -0.012875
    .float 0.020895001
    .float -0.85772902
    .float -0.514103
    .float -0.012358
    .float 0.021205001
    .float -0.87008703
    .float -0.49289799
    .float -0.011834
    .float 0.021500999
    .float -0.88192099
    .float -0.47139701
    .float -0.011303
    .float 0.021785
    .float -0.893224
    .float -0.44961101
    .float -0.010765
    .float 0.022056
    .float -0.90398902
    .float -0.42755499
    .float -0.01022
    .float 0.022314001
    .float -0.91421002
    .float -0.40524101
    .float -0.0096699996
    .float 0.022558
    .float -0.92387998
    .float -0.38268301
    .float -0.0091129998
    .float 0.022787999
    .float -0.93299299
    .float -0.35989499
    .float -0.0085509997
    .float 0.023004999
    .float -0.941544
    .float -0.33689001
    .float -0.0079840003
    .float 0.023208
    .float -0.94952798
    .float -0.31368199
    .float -0.0074120001
    .float 0.023397001
    .float -0.95694
    .float -0.29028499
    .float -0.0068359999
    .float 0.023572
    .float -0.96377599
    .float -0.26671299
    .float -0.0062549999
    .float 0.023732999
    .float -0.97003102
    .float -0.24298
    .float -0.0056710001
    .float 0.023879001
    .float -0.97570199
    .float -0.219101
    .float -0.0050829998
    .float 0.024010999
    .float -0.98078501
    .float -0.19509
    .float -0.0044920002
    .float 0.024127999
    .float -0.98527801
    .float -0.17096201
    .float -0.0038989999
    .float 0.024231
    .float -0.98917699
    .float -0.14673001
    .float -0.003303
    .float 0.024320001
    .float -0.99247998
    .float -0.122411
    .float -0.002705
    .float 0.024394
    .float -0.99518502
    .float -0.098017
    .float -0.002106
    .float 0.024452999
    .float -0.99729002
    .float -0.073564999
    .float -0.001505
    .float 0.024497001
    .float -0.99879497
    .float -0.049068
    .float -0.00090300001
    .float 0.024526
    .float -0.999699
    .float -0.024541
    .float -0.00030099999
    .float 0.024541
    .float -1.0
    .float -0
    .float 0.00030099999
    .float 0.024541
    .float -0.999699
    .float 0.024541
    .float 0.00090300001
    .float 0.024526
    .float -0.99879497
    .float 0.049068
    .float 0.001505
    .float 0.024497001
    .float -0.99729002
    .float 0.073564999
    .float 0.002106
    .float 0.024452999
    .float -0.99518502
    .float 0.098017
    .float 0.002705
    .float 0.024394
    .float -0.99247998
    .float 0.122411
    .float 0.003303
    .float 0.024320001
    .float -0.98917699
    .float 0.14673001
    .float 0.0038989999
    .float 0.024231
    .float -0.98527801
    .float 0.17096201
    .float 0.0044920002
    .float 0.024127999
    .float -0.98078501
    .float 0.19509
    .float 0.0050829998
    .float 0.024010999
    .float -0.97570199
    .float 0.219101
    .float 0.0056710001
    .float 0.023879001
    .float -0.97003102
    .float 0.24298
    .float 0.0062549999
    .float 0.023732999
    .float -0.96377599
    .float 0.26671299
    .float 0.0068359999
    .float 0.023572
    .float -0.95694
    .float 0.29028499
    .float 0.0074120001
    .float 0.023397001
    .float -0.94952798
    .float 0.31368199
    .float 0.0079840003
    .float 0.023208
    .float -0.941544
    .float 0.33689001
    .float 0.0085509997
    .float 0.023004999
    .float -0.93299299
    .float 0.35989499
    .float 0.0091129998
    .float 0.022787999
    .float -0.92387998
    .float 0.38268301
    .float 0.0096699996
    .float 0.022558
    .float -0.91421002
    .float 0.40524101
    .float 0.01022
    .float 0.022314001
    .float -0.90398902
    .float 0.42755499
    .float 0.010765
    .float 0.022056
    .float -0.893224
    .float 0.44961101
    .float 0.011303
    .float 0.021785
    .float -0.88192099
    .float 0.47139701
    .float 0.011834
    .float 0.021500999
    .float -0.87008703
    .float 0.49289799
    .float 0.012358
    .float 0.021205001
    .float -0.85772902
    .float 0.514103
    .float 0.012875
    .float 0.020895001
    .float -0.844854
    .float 0.534998
    .float 0.013384
    .float 0.020572999
    .float -0.83147001
    .float 0.55557001
    .float 0.013885
    .float 0.020238001
    .float -0.81758499
    .float 0.57580799
    .float 0.014377
    .float 0.019890999
    .float -0.80320799
    .float 0.59569901
    .float 0.014861
    .float 0.019532001
    .float -0.78834599
    .float 0.61523199
    .float 0.015336
    .float 0.019161999
    .float -0.77301002
    .float 0.63439298
    .float 0.015802
    .float 0.018780001
    .float -0.757209
    .float 0.65317303
    .float 0.016257999
    .float 0.018386001
    .float -0.740951
    .float 0.67155898
    .float 0.016704001
    .float 0.017982
    .float -0.72424698
    .float 0.68954098
    .float 0.017139999
    .float 0.017565999
    .float -0.70710701
    .float 0.70710701
    .float 0.017565999
    .float 0.017139999
    .float -0.68954098
    .float 0.72424698
    .float 0.017982
    .float 0.016704001
    .float -0.67155898
    .float 0.740951
    .float 0.018386001
    .float 0.016257999
    .float -0.65317303
    .float 0.757209
    .float 0.018780001
    .float 0.015802
    .float -0.63439298
    .float 0.77301002
    .float 0.019161999
    .float 0.015336
    .float -0.61523199
    .float 0.78834599
    .float 0.019532001
    .float 0.014861
    .float -0.59569901
    .float 0.80320799
    .float 0.019890999
    .float 0.014377
    .float -0.57580799
    .float 0.81758499
    .float 0.020238001
    .float 0.013885
    .float -0.55557001
    .float 0.83147001
    .float 0.020572999
    .float 0.013384
    .float -0.534998
    .float 0.844854
    .float 0.020895001
    .float 0.012875
    .float -0.514103
    .float 0.85772902
    .float 0.021205001
    .float 0.012358
    .float -0.49289799
    .float 0.87008703
    .float 0.021500999
    .float 0.011834
    .float -0.47139701
    .float 0.88192099
    .float 0.021785
    .float 0.011303
    .float -0.44961101
    .float 0.893224
    .float 0.022056
    .float 0.010765
    .float -0.42755499
    .float 0.90398902
    .float 0.022314001
    .float 0.01022
    .float -0.40524101
    .float 0.91421002
    .float 0.022558
    .float 0.0096699996
    .float -0.38268301
    .float 0.92387998
    .float 0.022787999
    .float 0.0091129998
    .float -0.35989499
    .float 0.93299299
    .float 0.023004999
    .float 0.0085509997
    .float -0.33689001
    .float 0.941544
    .float 0.023208
    .float 0.0079840003
    .float -0.31368199
    .float 0.94952798
    .float 0.023397001
    .float 0.0074120001
    .float -0.29028499
    .float 0.95694
    .float 0.023572
    .float 0.0068359999
    .float -0.26671299
    .float 0.96377599
    .float 0.023732999
    .float 0.0062549999
    .float -0.24298
    .float 0.97003102
    .float 0.023879001
    .float 0.0056710001
    .float -0.219101
    .float 0.97570199
    .float 0.024010999
    .float 0.0050829998
    .float -0.19509
    .float 0.98078501
    .float 0.024127999
    .float 0.0044920002
    .float -0.17096201
    .float 0.98527801
    .float 0.024231
    .float 0.0038989999
    .float -0.14673001
    .float 0.98917699
    .float 0.024320001
    .float 0.003303
    .float -0.122411
    .float 0.99247998
    .float 0.024394
    .float 0.002705
    .float -0.098017
    .float 0.99518502
    .float 0.024452999
    .float 0.002106
    .float -0.073564999
    .float 0.99729002
    .float 0.024497001
    .float 0.001505
    .float -0.049068
    .float 0.99879497
    .float 0.024526
    .float 0.00090300001
    .float -0.024541
    .float 0.999699
    .float 0.024541
    .float 0.00030099999
    .float -0
    .float 1.0
    .float 0.024541
    .float -0.00030099999
.endobj gSinCosTbl__Q34nw4r4math6detail

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj "sArcTanTbl__Q34nw4r4math29@unnamed@math_triangular_cpp@", local
    .float 0 #0
    .float 1.2728254
    .float 1.2728254
    .float 1.2703458
    .float 2.5431712
    .float 1.2654155
    .float 3.8085866
    .float 1.2580916
    .float 5.0666785
    .float 1.2484571
    .float 6.3151355
    .float 1.2366195
    .float 7.551755
    .float 1.2227072
    .float 8.7744617
    .float 1.2068666
    .float 9.981329
    .float 1.1892582
    .float 11.170587
    .float 1.1700529
    .float 12.34064
    .float 1.149428
    .float 13.49006748
    .float 1.1275644
    .float 14.617632
    .float 1.1046423
    .float 15.722275
    .float 1.0808387
    .float 16.803114
    .float 1.0563251
    .float 17.859438
    .float 1.0312649
    .float 18.890703
    .float 1.005812
    .float 19.896515
    .float 0.98010963
    .float 20.876625
    .float 0.95428908
    .float 21.830914
    .float 0.92846978
    .float 22.759384
    .float 0.90275896
    .float 23.662142
    .float 0.87725157
    .float 24.539394
    .float 0.85203087
    .float 25.391424
    .float 0.82716888
    .float 26.218594
    .float 0.80272698
    .float 27.02132
    .float 0.77875656
    .float 27.800077
    .float 0.7553001
    .float 28.555378
    .float 0.73239148
    .float 29.287769
    .float 0.71005738
    .float 29.997826
    .float 0.68831748
    .float 30.686144
    .float 0.66718566
    .float 31.353329
    .float 0.64667052
    .float 32
    .float 0.62677616
.endobj "sArcTanTbl__Q34nw4r4math29@unnamed@math_triangular_cpp@"


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066C620, global
	.float 65536
.endobj float_8066C620


.obj float_8066C624, global
	.float 0
.endobj float_8066C624


.obj float_8066C628, global
	.float 32
.endobj float_8066C628


.obj float_8066C62C, global
	.float 64
.endobj float_8066C62C


.obj float_8066C630, global
	.float -64
.endobj float_8066C630


.obj float_8066C634, global
	.float 128
.endobj float_8066C634


.obj float_8066C638, global
	.4byte 0xC3000000
	.4byte 0
.endobj float_8066C638
