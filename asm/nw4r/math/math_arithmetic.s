.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn FExp__Q34nw4r4math6detailFf, global
/* 8040ABF0 003D41B0  C0 02 C2 80 */	lfs f0, float_8066C600@sda21(r2)
/* 8040ABF4 003D41B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040ABF8 003D41B8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8040ABFC 003D41BC  F0 01 D0 18 */	psq_st f0, 24(r1), 1, qr5
/* 8040AC00 003D41C0  A8 01 00 18 */	lha r0, 0x18(r1)
/* 8040AC04 003D41C4  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8040AC08 003D41C8  E0 41 D0 0A */	psq_l f2, 10(r1), 1, qr5
/* 8040AC0C 003D41CC  C0 62 C2 84 */	lfs f3, float_8066C604@sda21(r2)
/* 8040AC10 003D41D0  C0 02 C2 88 */	lfs f0, float_8066C608@sda21(r2)
/* 8040AC14 003D41D4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8040AC18 003D41D8  EC 21 10 28 */	fsubs f1, f1, f2
/* 8040AC1C 003D41DC  EC 23 08 2A */	fadds f1, f3, f1
/* 8040AC20 003D41E0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8040AC24 003D41E4  F0 21 B0 14 */	psq_st f1, 20(r1), 1, qr3
/* 8040AC28 003D41E8  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 8040AC2C 003D41EC  B0 61 00 08 */	sth r3, 8(r1)
/* 8040AC30 003D41F0  E0 01 B0 08 */	psq_l f0, 8(r1), 1, qr3
/* 8040AC34 003D41F4  3C A0 80 57 */	lis r5, "sExpTbl__Q34nw4r4math29@unnamed@math_arithmetic_cpp@"@ha
/* 8040AC38 003D41F8  54 66 18 38 */	slwi r6, r3, 3
/* 8040AC3C 003D41FC  54 03 B8 10 */	slwi r3, r0, 0x17
/* 8040AC40 003D4200  38 A5 D5 B0 */	addi r5, r5, "sExpTbl__Q34nw4r4math29@unnamed@math_arithmetic_cpp@"@l
/* 8040AC44 003D4204  EC 41 00 28 */	fsubs f2, f1, f0
/* 8040AC48 003D4208  7C 85 32 14 */	add r4, r5, r6
/* 8040AC4C 003D420C  7C 05 34 2E */	lfsx f0, r5, r6
/* 8040AC50 003D4210  C0 24 00 04 */	lfs f1, 4(r4)
/* 8040AC54 003D4214  EC 22 00 72 */	fmuls f1, f2, f1
/* 8040AC58 003D4218  EC 00 08 2A */	fadds f0, f0, f1
/* 8040AC5C 003D421C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8040AC60 003D4220  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8040AC64 003D4224  7C 03 02 14 */	add r0, r3, r0
/* 8040AC68 003D4228  54 00 00 7E */	clrlwi r0, r0, 1
/* 8040AC6C 003D422C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8040AC70 003D4230  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8040AC74 003D4234  38 21 00 20 */	addi r1, r1, 0x20
/* 8040AC78 003D4238  4E 80 00 20 */	blr 
.endfn FExp__Q34nw4r4math6detailFf

.fn FLog__Q34nw4r4math6detailFf, global
/* 8040AC7C 003D423C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040AC80 003D4240  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8040AC84 003D4244  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8040AC88 003D4248  80 61 00 18 */	lwz r3, 0x18(r1)
/* 8040AC8C 003D424C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8040AC90 003D4250  54 63 4E 3E */	rlwinm r3, r3, 9, 0x18, 0x1f
/* 8040AC94 003D4254  54 00 02 40 */	rlwinm r0, r0, 0, 9, 0
/* 8040AC98 003D4258  38 63 FF 81 */	addi r3, r3, -127
/* 8040AC9C 003D425C  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8040ACA0 003D4260  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8040ACA4 003D4264  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040ACA8 003D4268  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8040ACAC 003D426C  E0 61 D0 0A */	psq_l f3, 10(r1), 1, qr5
/* 8040ACB0 003D4270  C0 22 C2 90 */	lfs f1, float_8066C610@sda21(r2)
/* 8040ACB4 003D4274  C0 02 C2 8C */	lfs f0, float_8066C60C@sda21(r2)
/* 8040ACB8 003D4278  EC 22 08 28 */	fsubs f1, f2, f1
/* 8040ACBC 003D427C  EC 40 00 72 */	fmuls f2, f0, f1
/* 8040ACC0 003D4280  F0 41 B0 0C */	psq_st f2, 12(r1), 1, qr3
/* 8040ACC4 003D4284  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 8040ACC8 003D4288  B0 01 00 08 */	sth r0, 8(r1)
/* 8040ACCC 003D428C  E0 21 B0 08 */	psq_l f1, 8(r1), 1, qr3
/* 8040ACD0 003D4290  3C 80 80 57 */	lis r4, "sLogTbl__Q34nw4r4math29@unnamed@math_arithmetic_cpp@"@ha
/* 8040ACD4 003D4294  C0 02 C2 84 */	lfs f0, float_8066C604@sda21(r2)
/* 8040ACD8 003D4298  54 00 18 38 */	slwi r0, r0, 3
/* 8040ACDC 003D429C  38 84 D6 B8 */	addi r4, r4, "sLogTbl__Q34nw4r4math29@unnamed@math_arithmetic_cpp@"@l
/* 8040ACE0 003D42A0  EC 82 08 28 */	fsubs f4, f2, f1
/* 8040ACE4 003D42A4  7C 64 02 14 */	add r3, r4, r0
/* 8040ACE8 003D42A8  7C 24 04 2E */	lfsx f1, r4, r0
/* 8040ACEC 003D42AC  C0 43 00 04 */	lfs f2, 4(r3)
/* 8040ACF0 003D42B0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8040ACF4 003D42B4  EC 44 00 B2 */	fmuls f2, f4, f2
/* 8040ACF8 003D42B8  EC 21 10 2A */	fadds f1, f1, f2
/* 8040ACFC 003D42BC  EC 21 00 2A */	fadds f1, f1, f0
/* 8040AD00 003D42C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8040AD04 003D42C4  4E 80 00 20 */	blr 
.endfn FLog__Q34nw4r4math6detailFf

.fn FrSqrt__Q24nw4r4mathFf, global
/* 8040AD08 003D42C8  FC 00 08 34 */	frsqrte f0, f1
/* 8040AD0C 003D42CC  C0 42 C2 94 */	lfs f2, float_8066C614@sda21(r2)
/* 8040AD10 003D42D0  C0 62 C2 98 */	lfs f3, float_8066C618@sda21(r2)
/* 8040AD14 003D42D4  EC 80 00 32 */	fmuls f4, f0, f0
/* 8040AD18 003D42D8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8040AD1C 003D42DC  EC 84 18 7C */	fnmsubs f4, f4, f1, f3
/* 8040AD20 003D42E0  EC 04 00 32 */	fmuls f0, f4, f0
/* 8040AD24 003D42E4  FC 20 00 90 */	fmr f1, f0
/* 8040AD28 003D42E8  4E 80 00 20 */	blr 
.endfn FrSqrt__Q24nw4r4mathFf

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8


.obj "sExpTbl__Q34nw4r4math29@unnamed@math_arithmetic_cpp@", local
    .float 0.5
    .float 0.022136891
    .float 0.52213687
    .float 0.023116974
    .float 0.54525387
    .float 0.024140451
    .float 0.56939429
    .float 0.025209241
    .float 0.59460354
    .float 0.026325349
    .float 0.62092888
    .float 0.027490871
    .float 0.6484198
    .float 0.028707996
    .float 0.67712778
    .float 0.029979007
    .float 0.70710678
    .float 0.031306293
    .float 0.7384131
    .float 0.032692339
    .float 0.77110541
    .float 0.034139752
    .float 0.80524516
    .float 0.035651248
    .float 0.84089643
    .float 0.037229665
    .float 0.87812608
    .float 0.038877964
    .float 0.91700405
    .float 0.040599238
    .float 0.95760328
    .float 0.04239672
    .float 1.0
    .float 0.044273783
    .float 1.0442737
    .float 0.046233948
    .float 1.0905077
    .float 0.048280902
    .float 1.1387886
    .float 0.050418481
    .float 1.1892071
    .float 0.052650698
    .float 1.2418578
    .float 0.054981742
    .float 1.2968396
    .float 0.057415992
    .float 1.3542556
    .float 0.059958015
    .float 1.4142135
    .float 0.062612586
    .float 1.4768262
    .float 0.065384679
    .float 1.5422108
    .float 0.068279505
    .float 1.6104903
    .float 0.071302496
    .float 1.6817929
    .float 0.074459329
    .float 1.7562522
    .float 0.077755928
    .float 1.8340081
    .float 0.081198476
    .float 1.9152066
    .float 0.084793441
    .float 2
    .float 0.088547565
.endobj "sExpTbl__Q34nw4r4math29@unnamed@math_arithmetic_cpp@"


.obj "sLogTbl__Q34nw4r4math29@unnamed@math_arithmetic_cpp@", local
    .4byte 0
    .float 0.0038986399
    .float 0.0038986399
    .float 0.0038834999
    .float 0.0077821398
    .float 0.003868477
    .float 0.011650617
    .float 0.003853569
    .float 0.015504187
    .float 0.0038387759
    .float 0.019342963
    .float 0.0038240959
    .float 0.023167059
    .float 0.003809528
    .float 0.026976587
    .float 0.003795071
    .float 0.03077166
    .float 0.0037807231
    .float 0.03455238
    .float 0.0037664829
    .float 0.038318865
    .float 0.0037523501
    .float 0.042071216
    .float 0.0037383221
    .float 0.045809537
    .float 0.003724399
    .float 0.049533933
    .float 0.0037105789
    .float 0.053244516
    .float 0.0036968619
    .float 0.056941375
    .float 0.003683245
    .float 0.060624622
    .float 0.003669729
    .float 0.064294353
    .float 0.003656311
    .float 0.067950659
    .float 0.003642991
    .float 0.07159365
    .float 0.003629768
    .float 0.075223424
    .float 0.0036166401
    .float 0.078840062
    .float 0.0036036081
    .float 0.082443669
    .float 0.0035906681
    .float 0.086034335
    .float 0.003577821
    .float 0.089612156
    .float 0.003565066
    .float 0.093177222
    .float 0.0035524019
    .float 0.096729629
    .float 0.003539827
    .float 0.10026945
    .float 0.0035273409
    .float 0.103796795
    .float 0.003514942
    .float 0.10731173
    .float 0.0035026311
    .float 0.11081436
    .float 0.0034904049
    .float 0.11430477
    .float 0.003478264
    .float 0.11778303
    .float 0.003466208
    .float 0.12124924
    .float 0.0034542349
    .float 0.12470348
    .float 0.003442344
    .float 0.12814583
    .float 0.0034305351
    .float 0.13157636
    .float 0.0034188069
    .float 0.13499516
    .float 0.003407158
    .float 0.13840233
    .float 0.0033955891
    .float 0.14179792
    .float 0.0033840979
    .float 0.14518201
    .float 0.0033726839
    .float 0.1485547
    .float 0.0033613481
    .float 0.15191604
    .float 0.003350087
    .float 0.15526614
    .float 0.0033389011
    .float 0.15860502
    .float 0.0033277899
    .float 0.16193283
    .float 0.0033167531
    .float 0.16524957
    .float 0.0033057879
    .float 0.16855536
    .float 0.0032948961
    .float 0.17185026
    .float 0.0032840751
    .float 0.17513433
    .float 0.003273325
    .float 0.17840765
    .float 0.003262646
    .float 0.18167031
    .float 0.003252035
    .float 0.18492234
    .float 0.0032414941
    .float 0.18816383
    .float 0.0032310211
    .float 0.19139485
    .float 0.003220615
    .float 0.19461547
    .float 0.0032102759
    .float 0.19782574
    .float 0.0032000029
    .float 0.20102574
    .float 0.003189795
    .float 0.20421554
    .float 0.0031796531
    .float 0.2073952
    .float 0.003169575
    .float 0.21056476
    .float 0.00315956
    .float 0.21372433
    .float 0.0031496091
    .float 0.21687394
    .float 0.0031397201
    .float 0.22001366
    .float 0.003129893
    .float 0.22314355
    .float 0.0031201269
    .float 0.22626367
    .float 0.0031104221
    .float 0.2293741
    .float 0.003100778
    .float 0.23247488
    .float 0.003091193
    .float 0.23556606
    .float 0.003081667
    .float 0.23864774
    .float 0.0030721989
    .float 0.24171993
    .float 0.00306279
    .float 0.24478273
    .float 0.003053437
    .float 0.24783616
    .float 0.0030441419
    .float 0.2508803
    .float 0.0030349039
    .float 0.25391522
    .float 0.0030257211
    .float 0.25694093
    .float 0.0030165941
    .float 0.25995752
    .float 0.0030075209
    .float 0.26296505
    .float 0.0029985029
    .float 0.26596355
    .float 0.0029895389
    .float 0.26895308
    .float 0.0029806281
    .float 0.2719337
    .float 0.00297177
    .float 0.27490547
    .float 0.0029629651
    .float 0.27786845
    .float 0.002954212
    .float 0.28082266
    .float 0.00294551
    .float 0.28376818
    .float 0.0029368601
    .float 0.28670505
    .float 0.00292826
    .float 0.2896333
    .float 0.00291971
    .float 0.29255301
    .float 0.0029112101
    .float 0.29546422
    .float 0.0029027599
    .float 0.29836696
    .float 0.002894358
    .float 0.30126134
    .float 0.002886005
    .float 0.30414733
    .float 0.0028776999
    .float 0.30702505
    .float 0.0028694421
    .float 0.30989447
    .float 0.002861232
    .float 0.3127557
    .float 0.002853069
    .float 0.31560877
    .float 0.002844952
    .float 0.31845373
    .float 0.002836881
    .float 0.32129061
    .float 0.002828856
    .float 0.32411948
    .float 0.002820876
    .float 0.32694036
    .float 0.0028129411
    .float 0.32975328
    .float 0.0028050509
    .float 0.33255833
    .float 0.002797205
    .float 0.33535555
    .float 0.0027894019
    .float 0.33814496
    .float 0.0027816431
    .float 0.34092659
    .float 0.0027739271
    .float 0.34370053
    .float 0.002766253
    .float 0.34646678
    .float 0.0027586219
    .float 0.3492254
    .float 0.0027510331
    .float 0.35197642
    .float 0.0027434861
    .float 0.35471991
    .float 0.0027359801
    .float 0.35745588
    .float 0.0027285151
    .float 0.3601844
    .float 0.0027210901
    .float 0.3629055
    .float 0.0027137061
    .float 0.36561921
    .float 0.0027063619
    .float 0.36832556
    .float 0.0026990571
    .float 0.37102461
    .float 0.0026917921
    .float 0.37371641
    .float 0.002684565
    .float 0.37640098
    .float 0.002677378
    .float 0.37907836
    .float 0.0026702289
    .float 0.38174859
    .float 0.0026631169
    .float 0.38441169
    .float 0.002656044
    .float 0.38706774
    .float 0.0026490081
    .float 0.38971674
    .float 0.0026420089
    .float 0.39235875
    .float 0.002635048
    .float 0.39499381
    .float 0.002628122
    .float 0.39762193
    .float 0.002621233
    .float 0.40024316
    .float 0.002614381
    .float 0.40285754
    .float 0.002607563
    .float 0.4054651
    .float 0.0026007821
    .float 0.40806589
    .float 0.0025940349
    .float 0.41065994
    .float 0.002587324
    .float 0.41324726
    .float 0.0025806469
    .float 0.4158279
    .float 0.002574004
    .float 0.4184019
    .float 0.002567396
    .float 0.42096931
    .float 0.0025608209
    .float 0.4235301
    .float 0.00255428
    .float 0.4260844
    .float 0.0025477719
    .float 0.42863217
    .float 0.0025412971
    .float 0.43117347
    .float 0.0025348561
    .float 0.43370831
    .float 0.002528446
    .float 0.43623677
    .float 0.002522069
    .float 0.43875885
    .float 0.0025157251
    .float 0.44127455
    .float 0.0025094119
    .float 0.44378397
    .float 0.0025031299
    .float 0.4462871
    .float 0.00249688
    .float 0.44878399
    .float 0.0024906611
    .float 0.45127463
    .float 0.0024844729
    .float 0.4537591
    .float 0.002478316
    .float 0.45623744
    .float 0.002472189
    .float 0.45870963
    .float 0.0024660919
    .float 0.46117571
    .float 0.0024600259
    .float 0.46363574
    .float 0.0024539889
    .float 0.46608973
    .float 0.0024479821
    .float 0.46853772
    .float 0.0024420039
    .float 0.47097972
    .float 0.0024360551
    .float 0.47341576
    .float 0.0024301349
    .float 0.4758459
    .float 0.0024242441
    .float 0.47827014
    .float 0.0024183809
    .float 0.48068854
    .float 0.002412546
    .float 0.48310107
    .float 0.0024067401
    .float 0.48550782
    .float 0.0024009619
    .float 0.48790878
    .float 0.002395211
    .float 0.49030399
    .float 0.0023894871
    .float 0.49269348
    .float 0.0023837909
    .float 0.49507725
    .float 0.0023781219
    .float 0.49745539
    .float 0.00237248
    .float 0.49982786
    .float 0.0023668651
    .float 0.50219476
    .float 0.002361276
    .float 0.504556
    .float 0.0023557141
    .float 0.5069117
    .float 0.0023501769
    .float 0.50926191
    .float 0.002344667
    .float 0.51160657
    .float 0.002339182
    .float 0.51394576
    .float 0.002333723
    .float 0.51627946
    .float 0.0023282899
    .float 0.51860774
    .float 0.002322881
    .float 0.52093065
    .float 0.002317498
    .float 0.52324814
    .float 0.0023121401
    .float 0.52556026
    .float 0.0023068059
    .float 0.52786708
    .float 0.0023014969
    .float 0.53016859
    .float 0.0022962119
    .float 0.5324648
    .float 0.002290952
    .float 0.53475577
    .float 0.002285715
    .float 0.53704149
    .float 0.002280503
    .float 0.53932196
    .float 0.0022753139
    .float 0.54159731
    .float 0.0022701491
    .float 0.54386741
    .float 0.002265007
    .float 0.54613245
    .float 0.002259888
    .float 0.54839236
    .float 0.002254792
    .float 0.55064714
    .float 0.00224972
    .float 0.55289686
    .float 0.0022446699
    .float 0.55514151
    .float 0.0022396429
    .float 0.55738115
    .float 0.002234638
    .float 0.55961579
    .float 0.0022296549
    .float 0.56184542
    .float 0.0022246949
    .float 0.56407017
    .float 0.0022197571
    .float 0.5662899
    .float 0.0022148399
    .float 0.56850475
    .float 0.002209946
    .float 0.57071465
    .float 0.0022050729
    .float 0.57291973
    .float 0.0022002209
    .float 0.57511997
    .float 0.0021953911
    .float 0.57731539
    .float 0.0021905811
    .float 0.57950592
    .float 0.0021857929
    .float 0.58169174
    .float 0.0021810259
    .float 0.5838728
    .float 0.002176279
    .float 0.58604902
    .float 0.0021715539
    .float 0.5882206
    .float 0.0021668479
    .float 0.59038746
    .float 0.0021621629
    .float 0.59254962
    .float 0.0021574979
    .float 0.59470713
    .float 0.0021528529
    .float 0.59685993
    .float 0.0021482289
    .float 0.5990082
    .float 0.002143624
    .float 0.60115182
    .float 0.0021390379
    .float 0.60329086
    .float 0.0021344731
    .float 0.6054253
    .float 0.0021299261
    .float 0.60755527
    .float 0.002125399
    .float 0.60968065
    .float 0.0021208921
    .float 0.61180156
    .float 0.0021164031
    .float 0.61391795
    .float 0.002111933
    .float 0.61602986
    .float 0.0021074819
    .float 0.61813736
    .float 0.00210305
    .float 0.62024039
    .float 0.0020986369
    .float 0.62233907
    .float 0.002094242
    .float 0.62443328
    .float 0.002089865
    .float 0.62652314
    .float 0.002085506
    .float 0.62860864
    .float 0.002081166
    .float 0.6306898
    .float 0.002076844
    .float 0.63276666
    .float 0.0020725401
    .float 0.63483924
    .float 0.002068253
    .float 0.63690746
    .float 0.0020639841
    .float 0.63897145
    .float 0.002059733
    .float 0.64103121
    .float 0.002055499
    .float 0.64308667
    .float 0.0020512829
    .float 0.64513797
    .float 0.002047084
    .float 0.64718503
    .float 0.0020429019
    .float 0.64922798
    .float 0.0020387371
    .float 0.65126669
    .float 0.0020345889
    .float 0.6533013
    .float 0.0020304581
    .float 0.65533173
    .float 0.002026343
    .float 0.65735805
    .float 0.002022245
    .float 0.65938032
    .float 0.0020181639
    .float 0.66139847
    .float 0.0020140989
    .float 0.66341257
    .float 0.0020100509
    .float 0.66542262
    .float 0.002006019
    .float 0.66742867
    .float 0.0020020029
    .float 0.66943067
    .float 0.0019980031
    .float 0.67142868
    .float 0.0019940189
    .float 0.67342269
    .float 0.0019900501
    .float 0.67541271
    .float 0.001986098
    .float 0.6773988
    .float 0.0019821611
    .float 0.67938101
    .float 0.00197824
    .float 0.68135923
    .float 0.001974334
    .float 0.68333358
    .float 0.0019704441
    .float 0.68530399
    .float 0.0019665691
    .float 0.68727058
    .float 0.001962709
    .float 0.6892333
    .float 0.001958864
    .float 0.69119215
    .float 0.0019550349
    .float 0.69314718
    .float 0.00195122
.endobj "sLogTbl__Q34nw4r4math29@unnamed@math_arithmetic_cpp@"

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066C600, global
	.float 1.44269502
.endobj float_8066C600


.obj float_8066C604, global
	.float 0.693147182
.endobj float_8066C604


.obj float_8066C608, global
	.float 23.0831203
.endobj float_8066C608


.obj float_8066C60C, global
	.float 256
.endobj float_8066C60C


.obj float_8066C610, global
	.float 1.0
.endobj float_8066C610


.obj float_8066C614, global
	.float 0.5
.endobj float_8066C614


.obj float_8066C618, global
	.float 3
	.4byte 0
.endobj float_8066C618