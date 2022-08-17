.include "macros.inc"

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global lbl_806643D0
lbl_806643D0:
	.4byte lbl_804F6BE8
	.4byte lbl_8052A6FC

.global lbl_806643D8
lbl_806643D8:
	.4byte lbl_804F6BF8
	.4byte lbl_8052A74C

.global lbl_806643E0
lbl_806643E0:
	.4byte lbl_804F6C10
	.4byte lbl_8052A7F0


.global lbl_806643E8
lbl_806643E8:
	# ROM: 0x56FFC8
	.float 1.0


.global lbl_806643EC
lbl_806643EC:
	# ROM: 0x56FFCC
	.2byte 0x0001


.global lbl_806643EE
lbl_806643EE:
	# ROM: 0x56FFCE
	.2byte 0x0001


.global lbl_806643F0
lbl_806643F0:
	# ROM: 0x56FFD0
	.4byte 0x00010000
	.4byte 0


.global lbl_806643F8
lbl_806643F8:
	# ROM: 0x56FFD8
	.4byte lbl_804F6C80
	.4byte lbl_8052A890

.global lbl_80664400
lbl_80664400:
	.4byte lbl_804F6C90
	.4byte lbl_8052A8C0

.global lbl_80664408
lbl_80664408:
	.4byte lbl_804F6CA4
	.4byte lbl_8052A8F0

.global lbl_80664410
lbl_80664410:
	.4byte lbl_804F6CB8
	.4byte lbl_8052A918

.global lbl_80664418
lbl_80664418:
	.4byte lbl_804F6CD0
	.4byte 0


.global lbl_80664420
lbl_80664420:
	# ROM: 0x570000
	.4byte lbl_804F6CE0
	.4byte lbl_8052A924


.global lbl_80664428
lbl_80664428:
	# ROM: 0x570008
	.4byte lbl_804F6CF0
	.4byte 0


.global lbl_80664430
lbl_80664430:
	# ROM: 0x570010
	.4byte 0x3FA00000


.global lbl_80664434
lbl_80664434:
	# ROM: 0x570014
	.4byte 0x3D8F5C29


.global lbl_80664438
lbl_80664438:
	# ROM: 0x570018
	.4byte 0x3E99999A


.global lbl_8066443C
lbl_8066443C:
	# ROM: 0x57001C
	.4byte 0x3E99999A


.global lbl_80664440
lbl_80664440:
	# ROM: 0x570020
	.4byte 0x3F266666


.global lbl_80664444
lbl_80664444:
	# ROM: 0x570024
	.4byte 0x40F00000


.global lbl_80664448
lbl_80664448:
	# ROM: 0x570028
	.4byte 0x42200000


.global lbl_8066444C
lbl_8066444C:
	# ROM: 0x57002C
	.float 0.5


.global lbl_80664450
lbl_80664450:
	# ROM: 0x570030
	.float 0.5


.global lbl_80664454
lbl_80664454:
	# ROM: 0x570034
	.float 1.0


.global lbl_80664458
lbl_80664458:
	# ROM: 0x570038
	.float 8.0


.global lbl_8066445C
lbl_8066445C:
	# ROM: 0x57003C
	.4byte 0x40000000


.global lbl_80664460
lbl_80664460:
	# ROM: 0x570040
	.4byte 0x41A00000


.global lbl_80664464
lbl_80664464:
	# ROM: 0x570044
	.4byte 0x41A00000


.global lbl_80664468
lbl_80664468:
	# ROM: 0x570048
	.float 0.25


.global lbl_8066446C
lbl_8066446C:
	# ROM: 0x57004C
	.4byte 0x3D8F5C29


.global lbl_80664470
lbl_80664470:
	# ROM: 0x570050
	.4byte 0x41C00000


.global lbl_80664474
lbl_80664474:
	# ROM: 0x570054
	.4byte 0x00000004


.global lbl_80664478
lbl_80664478:
	# ROM: 0x570058
	.4byte 0x3E99999A


.global lbl_8066447C
lbl_8066447C:
	# ROM: 0x57005C
	.float 0.25


.global lbl_80664480
lbl_80664480:
	# ROM: 0x570060
	.float 0.5


.global lbl_80664484
lbl_80664484:
	# ROM: 0x570064
	.4byte 0x41400000


.global lbl_80664488
lbl_80664488:
	# ROM: 0x570068
	.4byte 0x41900000


.global lbl_8066448C
lbl_8066448C:
	# ROM: 0x57006C
	.4byte 0x41F00000


.global lbl_80664490
lbl_80664490:
	# ROM: 0x570070
	.4byte 0x41A00000


.global lbl_80664494
lbl_80664494:
	# ROM: 0x570074
	.4byte 0x41F00000


.global lbl_80664498
lbl_80664498:
	# ROM: 0x570078
	.4byte 0x42340000


.global lbl_8066449C
lbl_8066449C:
	# ROM: 0x57007C
	.4byte 0x00000001


.global lbl_806644A0
lbl_806644A0:
	# ROM: 0x570080
	.4byte 0x3E051EB8


.global lbl_806644A4
lbl_806644A4:
	# ROM: 0x570084
	.4byte 0x41F00000


.global lbl_806644A8
lbl_806644A8:
	# ROM: 0x570088
	.4byte 0x01000000


.global lbl_806644AC
lbl_806644AC:
	# ROM: 0x57008C
	.4byte 0x3ECCCCCD


.global lbl_806644B0
lbl_806644B0:
	.asciz "rate1"
	.balign 4


.global lbl_806644B8
lbl_806644B8:
	# ROM: 0x570098
	.4byte 0


.global lbl_806644BC
lbl_806644BC:
	# ROM: 0x57009C
	.4byte 0xFFFFFFFF


.global lbl_806644C0
lbl_806644C0:
	# ROM: 0x5700A0
	.4byte 0xFFFFFFFF


.global lbl_806644C4
lbl_806644C4:
	# ROM: 0x5700A4
	.4byte 0xFFFF0000


.global lbl_806644C8
lbl_806644C8:
	# ROM: 0x5700A8
	.4byte 0x00010003
	.4byte 0x000C0000


.global lbl_806644D0
lbl_806644D0:
	# ROM: 0x5700B0
	.4byte 0x000A000B
	.4byte 0x000C0000

.global lbl_806644D8
lbl_806644D8:
	.4byte lbl_804F7060
	.4byte 0


.global lbl_806644E0
lbl_806644E0:
	# ROM: 0x5700C0
	.4byte lbl_804F7070
	.4byte lbl_8052AEF8

.global lbl_806644E8
lbl_806644E8:
	.4byte lbl_804F7084
	.4byte 0

.global lbl_806644F0
lbl_806644F0:
	.4byte lbl_804F71C8
	.4byte lbl_8052AF98

.global lbl_806644F8
lbl_806644F8:
	.4byte lbl_804F71D8
	.4byte lbl_8052AFB4


.global lbl_80664500
lbl_80664500:
	# ROM: 0x5700E0
	.4byte lbl_804F71E4
	.4byte lbl_8052AFC8


.global lbl_80664508
lbl_80664508:
	# ROM: 0x5700E8
	.4byte lbl_804F71F4
	.4byte 0

.global lbl_80664510
lbl_80664510:
	.4byte lbl_804F7200
	.4byte 0

.global lbl_80664518
lbl_80664518:
	.4byte lbl_804F7214
	.4byte lbl_8052AFF0

.global lbl_80664520
lbl_80664520:
	.4byte lbl_804F7228
	.4byte 0


.global lbl_80664528
lbl_80664528:
	# ROM: 0x570108
	.4byte 0x3BA3D70A
	.4byte 0

.global lbl_80664530
lbl_80664530:
	.4byte lbl_804F7248
	.4byte lbl_8052B1D8

.global lbl_80664538
lbl_80664538:
	.4byte lbl_804F7370
	.4byte lbl_8052B368

.global lbl_80664540
lbl_80664540:
	.4byte lbl_804F7438
	.4byte lbl_8052B510

.global lbl_80664548
lbl_80664548:
	.4byte lbl_804F7444
	.4byte lbl_8052B53C

.global lbl_80664550
lbl_80664550:
	.4byte lbl_804F7454
	.4byte lbl_8052B560


.global lbl_80664558
lbl_80664558:
	# ROM: 0x570138
	.4byte lbl_804F7460
	.4byte lbl_8052B624

.global lbl_80664560
lbl_80664560:
	.4byte lbl_804F7474
	.4byte lbl_8052B648


.global lbl_80664568
lbl_80664568:
	# ROM: 0x570148
	.4byte 0x0000FFFF
	.4byte 0xFFFF0000

.global lbl_80664570
lbl_80664570:
	.4byte lbl_804F78B0
	.4byte lbl_8052BF48

.global lbl_80664578
lbl_80664578:
	.4byte lbl_804F78C4
	.4byte lbl_8052BF80

.global lbl_80664580
lbl_80664580:
	.4byte lbl_804F78DC
	.4byte lbl_8052BFA0

.global lbl_80664588
lbl_80664588:
	.4byte lbl_804F78F4
	.4byte lbl_8052BFC0

.global lbl_80664590
lbl_80664590:
	.4byte lbl_804F7908
	.4byte lbl_8052BFE0

.global lbl_80664598
lbl_80664598:
	.4byte lbl_804F7920
	.4byte lbl_8052C000

.global lbl_806645A0
lbl_806645A0:
	.4byte lbl_804F7938
	.4byte 0


.global lbl_806645A8
lbl_806645A8:
	# ROM: 0x570188
	.4byte lbl_804F7948
	.4byte lbl_8052C00C


.global lbl_806645B0
lbl_806645B0:
	# ROM: 0x570190
	.4byte lbl_8066923C


.global lbl_806645B4
lbl_806645B4:
	# ROM: 0x570194
	.4byte lbl_804F7970

.global lbl_806645B8
lbl_806645B8:
	.4byte lbl_804F7980
	.4byte lbl_8052C7CC


.global lbl_806645C0
lbl_806645C0:
	# ROM: 0x5701A0
	.4byte 0x42B40000


.global lbl_806645C4
lbl_806645C4:
	# ROM: 0x5701A4
	.4byte 0x42480000


.global lbl_806645C8
lbl_806645C8:
	# ROM: 0x5701A8
	.4byte 0x41F00000


.global lbl_806645CC
lbl_806645CC:
	# ROM: 0x5701AC
	.float 10.0


.global lbl_806645D0
lbl_806645D0:
	# ROM: 0x5701B0
	.4byte 0xFFFFFFFC


.global lbl_806645D4
lbl_806645D4:
	# ROM: 0x5701B4
	.4byte 0xFFFFFFFC

.global lbl_806645D8
lbl_806645D8:
	.4byte lbl_804F7C70
	.4byte lbl_8052C87C

.global lbl_806645E0
lbl_806645E0:
	.4byte lbl_804F7C90
	.4byte 0

.global lbl_806645E8
lbl_806645E8:
	.4byte lbl_804F7CB4
	.4byte lbl_8052C8A0

.global lbl_806645F0
lbl_806645F0:
	.4byte lbl_804F7CCC
	.4byte 0

.global lbl_806645F8
lbl_806645F8:
	.4byte lbl_804F7CE8
	.4byte lbl_8052C8C4

.global lbl_80664600
lbl_80664600:
	.4byte lbl_804F7D50
	.4byte lbl_8052CAC0

.global lbl_80664608
lbl_80664608:
	.4byte lbl_804F7D98
	.4byte lbl_8052D2B8


.global lbl_80664610
lbl_80664610:
	# ROM: 0x5701F0
	.4byte lbl_804F7DD8
	.4byte lbl_8052D2E8


.global lbl_80664618
lbl_80664618:
	# ROM: 0x5701F8
	.4byte lbl_804F7DF0
	.4byte lbl_8052D540

.global lbl_80664620
lbl_80664620:
	.4byte lbl_804F7E9C
	.4byte lbl_8052DE30

.global lbl_80664628
lbl_80664628:
	.4byte lbl_804F7FB8
	.4byte lbl_8052E1A8

.global lbl_80664630
lbl_80664630:
	.4byte lbl_804F7FF8
	.4byte lbl_8052E2E8


.global lbl_80664638
lbl_80664638:
	# ROM: 0x570218
	.4byte lbl_80669520
	.4byte 0


.global lbl_80664640
lbl_80664640:
	# ROM: 0x570220
	.4byte lbl_806695A0
	.4byte 0

.global lbl_80664648
lbl_80664648:
	.4byte lbl_804F8018
	.4byte lbl_8052E698

.global lbl_80664650
lbl_80664650:
	.4byte lbl_804F8390
	.4byte lbl_8052F4F0

.global lbl_80664658
lbl_80664658:
	.4byte lbl_804F83A4
	.4byte lbl_8052F508

.global lbl_80664660
lbl_80664660:
	.4byte lbl_804F83C0
	.4byte 0

.global lbl_80664668
lbl_80664668:
	.4byte lbl_804F83E4
	.4byte lbl_8052F52C

.global lbl_80664670
lbl_80664670:
	.4byte lbl_804F8404
	.4byte 0

.global lbl_80664678
lbl_80664678:
	.4byte lbl_804F8428
	.4byte 0

.global lbl_80664680
lbl_80664680:
	.4byte lbl_804F8484
	.4byte 0

.global lbl_80664688
lbl_80664688:
	.4byte lbl_804F84B8
	.4byte lbl_8052F55C

.global lbl_80664690
lbl_80664690:
	.4byte lbl_804F84CC
	.4byte lbl_8052F590

.global lbl_80664698
lbl_80664698:
	.4byte lbl_804F84E8
	.4byte 0

.global lbl_806646A0
lbl_806646A0:
	.4byte lbl_804F8514
	.4byte 0


.global lbl_806646A8
lbl_806646A8:
	# ROM: 0x570288
	.4byte 0x402CCCCD
	.4byte 0

.global lbl_806646B0
lbl_806646B0:
	.4byte lbl_804F8550
	.4byte 0


.global lbl_806646B8
lbl_806646B8:
	# ROM: 0x570298
	.4byte lbl_804F8568
	.4byte 0

.global lbl_806646C0
lbl_806646C0:
	.4byte lbl_804F86A8
	.4byte lbl_8052F6B8

.global lbl_806646C8
lbl_806646C8:
	.4byte lbl_804F86B4
	.4byte lbl_8052F710

.global lbl_806646D0
lbl_806646D0:
	.4byte lbl_804F86C0
	.4byte 0

.global lbl_806646D8
lbl_806646D8:
	.4byte lbl_806697E8
	.4byte lbl_8052F71C

.global lbl_806646E0
lbl_806646E0:
	.4byte lbl_804F86CC
	.4byte lbl_8052F764

.global lbl_806646E8
lbl_806646E8:
	.4byte lbl_804F8978
	.4byte lbl_8052F928

.global lbl_806646F0
lbl_806646F0:
	.4byte lbl_804F89A8
	.4byte lbl_8052F96C

.global lbl_806646F8
lbl_806646F8:
	.4byte lbl_804F89B4
	.4byte lbl_8052F9B4


.global lbl_80664700
lbl_80664700:
	# ROM: 0x5702E0
	.4byte 0
	.4byte 0

.global lbl_80664708
lbl_80664708:
	.4byte lbl_804F8D30
	.4byte lbl_8052FAC0

.global lbl_80664710
lbl_80664710:
	.4byte lbl_804F8F3C
	.4byte lbl_8052FBC0

.global lbl_80664718
lbl_80664718:
	.4byte lbl_804F8F54
	.4byte 0

.global lbl_80664720
lbl_80664720:
	.4byte lbl_804F9420
	.4byte lbl_8052FCC8

.global lbl_80664728
lbl_80664728:
	.4byte lbl_804F9430
	.4byte 0

.global lbl_80664730
lbl_80664730:
	.4byte lbl_804F96E0
	.4byte lbl_8052FDD0

.global lbl_80664738
lbl_80664738:
	.4byte lbl_804F9720
	.4byte lbl_8052FED0


.global lbl_80664740
lbl_80664740:
	# ROM: 0x570320
	.float 0.2
	.4byte 0

.global lbl_80664748
lbl_80664748:
	.4byte lbl_804F9A1C
	.4byte lbl_805300E8

.global lbl_80664750
lbl_80664750:
	.4byte lbl_804F9A2C
	.4byte lbl_805301B0

.global lbl_80664758
lbl_80664758:
	.4byte lbl_8066998C
	.4byte lbl_80530248

.global lbl_80664760
lbl_80664760:
	.4byte lbl_804F9A38
	.4byte lbl_805302E0

.global lbl_80664768
lbl_80664768:
	.4byte lbl_804F9D48
	.4byte lbl_80530440

.global lbl_80664770
lbl_80664770:
	.4byte lbl_804F9F30
	.4byte lbl_80530558

.global lbl_80664778
lbl_80664778:
	.4byte lbl_804F9F3C
	.4byte lbl_805305A8

.global lbl_80664780
lbl_80664780:
	.4byte lbl_804F9F50
	.4byte lbl_80530688


.global lbl_80664788
lbl_80664788:
	.asciz "ARROW"
	.balign 4


.global lbl_80664790
lbl_80664790:
	.asciz "ResTex"
	.balign 4


.global lbl_80664798
lbl_80664798:
	# ROM: 0x570378
	.4byte 0x72656600
	.4byte 0


.global lbl_806647A0
lbl_806647A0:
	.asciz "ResPltt"


.global lbl_806647A8
lbl_806647A8:
	# ROM: 0x570388
	.4byte 0x72656600


.global lbl_806647AC
lbl_806647AC:
	# ROM: 0x57038C
	.4byte 0x72656600


.global lbl_806647B0
lbl_806647B0:
	# ROM: 0x570390
	.4byte lbl_804FA048
	.4byte 0

.global lbl_806647B8
lbl_806647B8:
	.4byte lbl_804FA494
	.4byte lbl_80530984


.global lbl_806647C0
lbl_806647C0:
	# ROM: 0x5703A0
	.4byte lbl_804FA4A4
	.4byte lbl_805309E4

.global lbl_806647C8
lbl_806647C8:
	.4byte lbl_804FA4B0
	.4byte lbl_80530A2C

.global lbl_806647D0
lbl_806647D0:
	.4byte lbl_804FA7D8
	.4byte lbl_80530B08

.global lbl_806647D8
lbl_806647D8:
	.4byte lbl_804FA7E8
	.4byte lbl_80530C08

.global lbl_806647E0
lbl_806647E0:
	.4byte lbl_804FAFF8
	.4byte lbl_80530E00

.global lbl_806647E8
lbl_806647E8:
	.4byte lbl_804FB02C
	.4byte lbl_80530E28

.global lbl_806647F0
lbl_806647F0:
	.4byte lbl_804FB058
	.4byte lbl_80530E50

.global lbl_806647F8
lbl_806647F8:
	.4byte lbl_804FB088
	.4byte lbl_80530E78

.global lbl_80664800
lbl_80664800:
	.4byte lbl_804FB0B8
	.4byte lbl_80530EA0

.global lbl_80664808
lbl_80664808:
	.4byte lbl_804FB0E8
	.4byte lbl_80530EC8

.global lbl_80664810
lbl_80664810:
	.4byte lbl_804FB118
	.4byte lbl_80530EF0

.global lbl_80664818
lbl_80664818:
	.4byte lbl_804FB148
	.4byte lbl_80530F18

.global lbl_80664820
lbl_80664820:
	.4byte lbl_804FB174
	.4byte lbl_80530F40

.global lbl_80664828
lbl_80664828:
	.4byte lbl_804FB1A0
	.4byte lbl_80530F68

.global lbl_80664830
lbl_80664830:
	.4byte lbl_804FB1CC
	.4byte lbl_80530F90

.global lbl_80664838
lbl_80664838:
	.4byte lbl_804FB1FC
	.4byte lbl_80530FB8

.global lbl_80664840
lbl_80664840:
	.4byte lbl_804FB228
	.4byte lbl_80530FE0

.global lbl_80664848
lbl_80664848:
	.4byte lbl_804FB254
	.4byte lbl_80531008

.global lbl_80664850
lbl_80664850:
	.4byte lbl_804FB280
	.4byte lbl_80531030

.global lbl_80664858
lbl_80664858:
	.4byte lbl_804FB2AC
	.4byte lbl_80531058

.global lbl_80664860
lbl_80664860:
	.4byte lbl_804FB2D8
	.4byte lbl_80531080

.global lbl_80664868
lbl_80664868:
	.4byte lbl_804FB304
	.4byte lbl_80531100

.global lbl_80664870
lbl_80664870:
	.4byte lbl_804FB330
	.4byte lbl_80531128

.global lbl_80664878
lbl_80664878:
	.4byte lbl_804FB35C
	.4byte lbl_80531150

.global lbl_80664880
lbl_80664880:
	.4byte lbl_804FB388
	.4byte lbl_80531178

.global lbl_80664888
lbl_80664888:
	.4byte lbl_804FB3B8
	.4byte lbl_805311A0

.global lbl_80664890
lbl_80664890:
	.4byte lbl_804FB3E0
	.4byte lbl_805311C8

.global lbl_80664898
lbl_80664898:
	.4byte lbl_804FB408
	.4byte 0

.global lbl_806648A0
lbl_806648A0:
	.4byte lbl_804FB430
	.4byte lbl_805311F0

.global lbl_806648A8
lbl_806648A8:
	.4byte lbl_804FB440
	.4byte lbl_80531220

.global lbl_806648B0
lbl_806648B0:
	.4byte lbl_804FB450
	.4byte lbl_80531250

.global lbl_806648B8
lbl_806648B8:
	.4byte lbl_804FB464
	.4byte 0


.global lbl_806648C0
lbl_806648C0:
	# ROM: 0x5704A0
	.4byte 0x004F0055
	.4byte 0x00540000
	.4byte 0x004F0055
	.4byte 0x00540049
	.4byte 0x004E0000
	.4byte 0x0049004E
	.4byte 0x00002500
	.4byte 0x25000000
	.4byte 0x25000000
	.4byte 0x004F004E
	.4byte 0x0000004F
	.4byte 0x00460046
	.4byte 0x00000054
	.4byte 0x004C0045
	.4byte 0x00460054
	.4byte 0x00000054
	.4byte 0x00430045
	.4byte 0x004E0054
	.4byte 0x00450052
	.4byte 0x00000054
	.4byte 0x00520049
	.4byte 0x00470048
	.4byte 0x00540000
	.4byte 0x0043004C
	.4byte 0x00450046
	.4byte 0x00540000
	.4byte 0x00430043
	.4byte 0x0045004E
	.4byte 0x00540045
	.4byte 0x00520000
	.4byte 0x00430052
	.4byte 0x00490047
	.4byte 0x00480054
	.4byte 0x00000042
	.4byte 0x004C0045
	.4byte 0x00460054
	.4byte 0x00000042
	.4byte 0x00430045
	.4byte 0x004E0054
	.4byte 0x00450052
	.4byte 0x00000042
	.4byte 0x00520049
	.4byte 0x00470048
	.4byte 0x00540000
	.4byte 0x00440045
	.4byte 0x00460000
	.4byte 0x0041004E
	.4byte 0x00470045
	.4byte 0x00520000
	.4byte 0x00530041
	.4byte 0x00440000
	.4byte 0x00540048
	.4byte 0x0049004E
	.4byte 0x004B0000
	.4byte 0x00500000
	.4byte 0x00460000
	.4byte 0x00410000
	.4byte 0x00420000
	.4byte 0x00430000
	.4byte 0x00440000
	.4byte 0x00450000
	.4byte 0x00470000
	.4byte 0x00480000
	.4byte 0x00490000
	.4byte 0x004A0000
	.4byte 0x004B0000
	.4byte 0x004C0000
	.4byte 0x004D0000
	.4byte 0x004E0000
	.4byte 0x004F0000
	.4byte 0x00510000
	.4byte 0x00520000
	.4byte 0x00530000
	.4byte 0x00540000
	.4byte 0x00550000
	.4byte 0x00560000
	.4byte 0x00570000
	.4byte 0x00580000
	.4byte 0x00590000
	.4byte 0x005A0000
	.4byte 0x00440045
	.4byte 0x00460032
	.4byte 0x00000044
	.4byte 0x00320000
	.4byte 0x00440045
	.4byte 0x00460033
	.4byte 0x00000044
	.4byte 0x00330000
	.4byte 0x00520045
	.4byte 0x00440000
	.4byte 0x00490054
	.4byte 0x0045004D
	.4byte 0x00000053
	.4byte 0x00310000
	.4byte 0x00530032
	.4byte 0x00000041
	.4byte 0x004C004C
	.4byte 0x00000054
	.4byte 0x00480049
	.4byte 0x00530000
	.4byte 0x004B0045
	.4byte 0x00590000
	.4byte 0x0056004F
	.4byte 0x00490043
	.4byte 0x00450000
	.4byte 0


.global lbl_80664A68
lbl_80664A68:
	# ROM: 0x570648
	.4byte lbl_804FB4D8
	.4byte lbl_80531838

.global lbl_80664A70
lbl_80664A70:
	.4byte lbl_804FB6D0
	.4byte lbl_80531940

.global lbl_80664A78
lbl_80664A78:
	.4byte lbl_804FB6E4
	.4byte lbl_80531978

.global lbl_80664A80
lbl_80664A80:
	.4byte lbl_804FB6FC
	.4byte 0

.global lbl_80664A88
lbl_80664A88:
	.4byte lbl_804FB718
	.4byte lbl_805319B4

.global lbl_80664A90
lbl_80664A90:
	.4byte lbl_804FB730
	.4byte lbl_805319FC

.global lbl_80664A98
lbl_80664A98:
	.4byte lbl_804FB750
	.4byte lbl_80531A3C


.global lbl_80664AA0
lbl_80664AA0:
	# ROM: 0x570680
	.4byte lbl_804FB800
	.4byte 0

.global lbl_80664AA8
lbl_80664AA8:
	.4byte lbl_804FB84C
	.4byte lbl_80531B34

.global lbl_80664AB0
lbl_80664AB0:
	.4byte lbl_804FB85C
	.4byte lbl_80531B74

.global lbl_80664AB8
lbl_80664AB8:
	.4byte lbl_804FB870
	.4byte 0

.global lbl_80664AC0
lbl_80664AC0:
	.4byte lbl_804FB888
	.4byte lbl_80531BB0

.global lbl_80664AC8
lbl_80664AC8:
	.4byte lbl_804FB89C
	.4byte lbl_80531BF8

.global lbl_80664AD0
lbl_80664AD0:
	.4byte lbl_804FB8B8
	.4byte lbl_80531C38

.global lbl_80664AD8
lbl_80664AD8:
	.4byte lbl_804FB8D0
	.4byte 0


.global lbl_80664AE0
lbl_80664AE0:
	# ROM: 0x5706C0
	.4byte 0x25730000


.global lbl_80664AE4
lbl_80664AE4:
	# ROM: 0x5706C4
	.4byte 0x25730000


.global lbl_80664AE8
lbl_80664AE8:
	# ROM: 0x5706C8
	.4byte 0x01000000
	.4byte 0

.global lbl_80664AF0
lbl_80664AF0:
	.4byte lbl_804FC110
	.4byte lbl_80531DA8

.global lbl_80664AF8
lbl_80664AF8:
	.4byte lbl_804FC124
	.4byte lbl_80531DE0

.global lbl_80664B00
lbl_80664B00:
	.4byte lbl_804FC13C
	.4byte 0

.global lbl_80664B08
lbl_80664B08:
	.4byte lbl_804FC158
	.4byte lbl_80531E1C

.global lbl_80664B10
lbl_80664B10:
	.4byte lbl_804FC170
	.4byte lbl_80531E64

.global lbl_80664B18
lbl_80664B18:
	.4byte lbl_804FC190
	.4byte lbl_80531EA4


.global lbl_80664B20
lbl_80664B20:
	# ROM: 0x570700
	.4byte 0x70633100
	.4byte 0

.global lbl_80664B28
lbl_80664B28:
	.4byte lbl_804FC7C8
	.4byte lbl_80531F70

.global lbl_80664B30
lbl_80664B30:
	.4byte lbl_804FCBE8
	.4byte lbl_80532040

.global lbl_80664B38
lbl_80664B38:
	.4byte lbl_804FCF40
	.4byte lbl_80532140


.global lbl_80664B40
lbl_80664B40:
	# ROM: 0x570720
	.4byte 0
	.4byte 0

.global lbl_80664B48
lbl_80664B48:
	.4byte lbl_804FD0F0
	.4byte lbl_805322D0

.global lbl_80664B50
lbl_80664B50:
	.4byte lbl_804FD268
	.4byte lbl_80532D84

.global lbl_80664B58
lbl_80664B58:
	.4byte lbl_804FD278
	.4byte 0

.global lbl_80664B60
lbl_80664B60:
	.4byte lbl_804FD288
	.4byte lbl_80532D9C

.global lbl_80664B68
lbl_80664B68:
	.4byte lbl_804FD298
	.4byte 0

.global lbl_80664B70
lbl_80664B70:
	.4byte lbl_804FD2A8
	.4byte lbl_80532DD0

.global lbl_80664B78
lbl_80664B78:
	.4byte lbl_804FD2B8
	.4byte 0


.global lbl_80664B80
lbl_80664B80:
	# ROM: 0x570760
	.4byte lbl_80669D60


.global lbl_80664B84
lbl_80664B84:
	# ROM: 0x570764
	.4byte lbl_804FD2D0


.global lbl_80664B88
lbl_80664B88:
	# ROM: 0x570768
	.4byte 0x141E2028
	.4byte 0x505A5C63


.global lbl_80664B90
lbl_80664B90:
	# ROM: 0x570770
	.4byte lbl_804FD324


.global lbl_80664B94
lbl_80664B94:
	# ROM: 0x570774
	.4byte 0xFFFFFFFC


.global lbl_80664B98
lbl_80664B98:
	# ROM: 0x570778
	.4byte 0xFFFFFFFC


.global lbl_80664B9C
lbl_80664B9C:
	# ROM: 0x57077C
	.4byte lbl_804FD330


.global lbl_80664BA0
lbl_80664BA0:
	# ROM: 0x570780
	.4byte lbl_804FD33C


.global lbl_80664BA4
lbl_80664BA4:
	# ROM: 0x570784
	.4byte lbl_80669DD0


.global lbl_80664BA8
lbl_80664BA8:
	# ROM: 0x570788
	.4byte lbl_80669DD8


.global lbl_80664BAC
lbl_80664BAC:
	# ROM: 0x57078C
	.4byte lbl_804FD348


.global lbl_80664BB0
lbl_80664BB0:
	# ROM: 0x570790
	.4byte lbl_804FD354


.global lbl_80664BB4
lbl_80664BB4:
	# ROM: 0x570794
	.4byte lbl_804FD360


.global lbl_80664BB8
lbl_80664BB8:
	# ROM: 0x570798
	.4byte lbl_80669DE0


.global lbl_80664BBC
lbl_80664BBC:
	# ROM: 0x57079C
	.4byte lbl_804FD36C


.global lbl_80664BC0
lbl_80664BC0:
	# ROM: 0x5707A0
	.4byte lbl_804FD378


.global lbl_80664BC4
lbl_80664BC4:
	# ROM: 0x5707A4
	.4byte lbl_804FD384


.global lbl_80664BC8
lbl_80664BC8:
	# ROM: 0x5707A8
	.4byte lbl_804FD390


.global lbl_80664BCC
lbl_80664BCC:
	# ROM: 0x5707AC
	.4byte lbl_80669DE8


.global lbl_80664BD0
lbl_80664BD0:
	# ROM: 0x5707B0
	.4byte lbl_804FD3A0


.global lbl_80664BD4
lbl_80664BD4:
	# ROM: 0x5707B4
	.4byte lbl_804FD3AC


.global lbl_80664BD8
lbl_80664BD8:
	# ROM: 0x5707B8
	.4byte lbl_804FD3B8
	.4byte 0

.global lbl_80664BE0
lbl_80664BE0:
	.4byte lbl_804FD3C4
	.4byte lbl_80532FE0

.global lbl_80664BE8
lbl_80664BE8:
	.4byte lbl_804FD3E0
	.4byte lbl_80533098

.global lbl_80664BF0
lbl_80664BF0:
	.4byte lbl_804FD3F4
	.4byte lbl_80533148

.global lbl_80664BF8
lbl_80664BF8:
	.4byte lbl_804FD410
	.4byte lbl_80533200

.global lbl_80664C00
lbl_80664C00:
	.4byte lbl_804FD428
	.4byte lbl_805332B8

.global lbl_80664C08
lbl_80664C08:
	.4byte lbl_804FD43C
	.4byte lbl_80533368

.global lbl_80664C10
lbl_80664C10:
	.4byte lbl_804FD450
	.4byte lbl_80533418

.global lbl_80664C18
lbl_80664C18:
	.4byte lbl_804FD464
	.4byte lbl_805334C8

.global lbl_80664C20
lbl_80664C20:
	.4byte lbl_804FD478
	.4byte 0

.global lbl_80664C28
lbl_80664C28:
	.4byte lbl_804FD658
	.4byte 0

.global lbl_80664C30
lbl_80664C30:
	.4byte lbl_804FD6D0
	.4byte lbl_805335C8

.global lbl_80664C38
lbl_80664C38:
	.4byte lbl_804FD740
	.4byte lbl_805335F8

.global lbl_80664C40
lbl_80664C40:
	.4byte lbl_804FD7B0
	.4byte lbl_80533628

.global lbl_80664C48
lbl_80664C48:
	.4byte lbl_804FD820
	.4byte lbl_80533658


.global lbl_80664C50
lbl_80664C50:
	# ROM: 0x570830
	.4byte lbl_804FD838


.global lbl_80664C54
lbl_80664C54:
	# ROM: 0x570834
	.4byte 0xFFFFFFFF

.global lbl_80664C58
lbl_80664C58:
	.4byte lbl_804FD84C
	.4byte lbl_805337B8

.global lbl_80664C60
lbl_80664C60:
	.4byte lbl_804FD858
	.4byte lbl_805338B0

.global lbl_80664C68
lbl_80664C68:
	.4byte lbl_804FD864
	.4byte lbl_805339B0

.global lbl_80664C70
lbl_80664C70:
	.4byte lbl_804FD870
	.4byte lbl_80533A98


.global lbl_80664C78
lbl_80664C78:
	# ROM: 0x570858
	.4byte lbl_804FE800


.global lbl_80664C7C
lbl_80664C7C:
	# ROM: 0x57085C
	.4byte 0x00000064

.global lbl_80664C80
lbl_80664C80:
	.4byte lbl_804FE810
	.4byte lbl_80534054

.global lbl_80664C88
lbl_80664C88:
	.4byte lbl_804FE820
	.4byte lbl_8053409C

.global lbl_80664C90
lbl_80664C90:
	.4byte lbl_804FE850
	.4byte 0

.global lbl_80664C98
lbl_80664C98:
	.4byte lbl_804FE860
	.4byte lbl_805341C8

.global lbl_80664CA0
lbl_80664CA0:
	.4byte lbl_804FE880
	.4byte 0

.global lbl_80664CA8
lbl_80664CA8:
	.4byte lbl_804FE890
	.4byte lbl_805343A0

.global lbl_80664CB0
lbl_80664CB0:
	.4byte lbl_804FE8A8
	.4byte lbl_805343E8


.global lbl_80664CB8
lbl_80664CB8:
	# ROM: 0x570898
	.4byte 0x2E000000


.global lbl_80664CBC
lbl_80664CBC:
	# ROM: 0x57089C
	.4byte 0x72656600


.global lbl_80664CC0
lbl_80664CC0:
	# ROM: 0x5708A0
	.4byte 0x72656600


.global lbl_80664CC4
lbl_80664CC4:
	# ROM: 0x5708A4
	.4byte 0x72656600

.global lbl_80664CC8
lbl_80664CC8:
	.4byte lbl_804FE930
	.4byte lbl_80534780

.global lbl_80664CD0
lbl_80664CD0:
	.4byte lbl_804FE944
	.4byte 0

.global lbl_80664CD8
lbl_80664CD8:
	.4byte lbl_804FE958
	.4byte lbl_80534828


.global lbl_80664CE0
lbl_80664CE0:
	# ROM: 0x5708C0
	.float 10.0


.global lbl_80664CE4
lbl_80664CE4:
	# ROM: 0x5708C4
	.4byte lbl_80669FC8

.global lbl_80664CE8
lbl_80664CE8:
	.4byte lbl_804FEA60
	.4byte 0


.global lbl_80664CF0
lbl_80664CF0:
	# ROM: 0x5708D0
	.4byte lbl_804FEB30
	.4byte lbl_80534E40


.global lbl_80664CF8
lbl_80664CF8:
	# ROM: 0x5708D8
	.4byte lbl_804FEB44
	.4byte 0

.global lbl_80664D00
lbl_80664D00:
	.4byte lbl_804FEB54
	.4byte lbl_80534E90

.global lbl_80664D08
lbl_80664D08:
	.4byte lbl_804FEB64
	.4byte 0


.global lbl_80664D10
lbl_80664D10:
	# ROM: 0x5708F0
	.4byte 0x72656600


.global lbl_80664D14
lbl_80664D14:
	# ROM: 0x5708F4
	.4byte 0x72656600


.global lbl_80664D18
lbl_80664D18:
	.asciz "itm?ID"
	.balign 4


.global lbl_80664D20
lbl_80664D20:
	.asciz "itm?Per"

.global lbl_80664D28
lbl_80664D28:
	.4byte lbl_804FEBC0
	.4byte lbl_80534EB8

.global lbl_80664D30
lbl_80664D30:
	.4byte lbl_804FEBD8
	.4byte 0

.global lbl_80664D38
lbl_80664D38:
	.4byte lbl_804FEC78
	.4byte lbl_80535478


.global lbl_80664D40
lbl_80664D40:
	# ROM: 0x570920
	.4byte lbl_8066A158


.global lbl_80664D44
lbl_80664D44:
	# ROM: 0x570924
	.4byte lbl_8066A160

.global lbl_80664D48
lbl_80664D48:
	.4byte lbl_804FEEF8
	.4byte lbl_805354E0

.global lbl_80664D50
lbl_80664D50:
	.4byte lbl_804FEF48
	.4byte lbl_80535620

.global lbl_80664D58
lbl_80664D58:
	.4byte lbl_804FEF78
	.4byte lbl_80535854

.global lbl_80664D60
lbl_80664D60:
	.4byte lbl_804FF000
	.4byte lbl_80535A90


.global lbl_80664D68
lbl_80664D68:
	# ROM: 0x570948
	.4byte lbl_8066A1E8


.global lbl_80664D6C
lbl_80664D6C:
	# ROM: 0x57094C
	.4byte lbl_8066A1F0


.global lbl_80664D70
lbl_80664D70:
	# ROM: 0x570950
	.4byte lbl_8066A1F8
	.4byte 0

.global lbl_80664D78
lbl_80664D78:
	.4byte lbl_804FF018
	.4byte lbl_80535AE4

.global lbl_80664D80
lbl_80664D80:
	.4byte lbl_804FF1E0
	.4byte lbl_80535CE0


.global lbl_80664D88
lbl_80664D88:
	# ROM: 0x570968
	.float 1.0


.global lbl_80664D8C
lbl_80664D8C:
	# ROM: 0x57096C
	.float 1.0


.global lbl_80664D90
lbl_80664D90:
	# ROM: 0x570970
	.float 1.0


.global lbl_80664D94
lbl_80664D94:
	# ROM: 0x570974
	.float 1.0


.global lbl_80664D98
lbl_80664D98:
	# ROM: 0x570978
	.float 0.2
	.4byte 0

.global lbl_80664DA0
lbl_80664DA0:
	.4byte lbl_804FF2F8
	.4byte lbl_80535DE0

.global lbl_80664DA8
lbl_80664DA8:
	.4byte lbl_804FF318
	.4byte lbl_80535E58

.global lbl_80664DB0
lbl_80664DB0:
	.4byte lbl_804FF338
	.4byte lbl_80535EC8


.global lbl_80664DB8
lbl_80664DB8:
	# ROM: 0x570998
	.4byte lbl_804FF3A8
	.4byte lbl_80535F30

.global lbl_80664DC0
lbl_80664DC0:
	.4byte lbl_804FF3C0
	.4byte lbl_80535FB0


.global lbl_80664DC8
lbl_80664DC8:
	# ROM: 0x5709A8
	.4byte lbl_804FF3D0
	.4byte lbl_80535FBC


.global lbl_80664DD0
lbl_80664DD0:
	# ROM: 0x5709B0
	.4byte lbl_804FF3E0
	.4byte 0

.global lbl_80664DD8
lbl_80664DD8:
	.4byte lbl_804FF400
	.4byte lbl_80536228


.global lbl_80664DE0
lbl_80664DE0:
	# ROM: 0x5709C0
	.4byte lbl_8066A370
	.4byte 0

.global lbl_80664DE8
lbl_80664DE8:
	.4byte lbl_804FF410
	.4byte 0


.global lbl_80664DF0
lbl_80664DF0:
	# ROM: 0x5709D0
	.4byte lbl_8066A398


.global lbl_80664DF4
lbl_80664DF4:
	# ROM: 0x5709D4
	.4byte lbl_8066A3A0


.global lbl_80664DF8
lbl_80664DF8:
	.asciz "ene?ID"
	.balign 4


.global lbl_80664E00
lbl_80664E00:
	.asciz "ene?Per"


.global lbl_80664E08
lbl_80664E08:
	.asciz "ene?num"


.global lbl_80664E10
lbl_80664E10:
	# ROM: 0x5709F0
	.4byte 0xFFFFFFFC


.global lbl_80664E14
lbl_80664E14:
	# ROM: 0x5709F4
	.4byte 0xFFFFFFFC


.global lbl_80664E18
lbl_80664E18:
	.asciz "ene?ID"
	.balign 4


.global lbl_80664E20
lbl_80664E20:
	# ROM: 0x570A00
	.4byte 0x000001CC
	.4byte 0x01CD01CE

.global lbl_80664E28
lbl_80664E28:
	.4byte lbl_804FF430
	.4byte lbl_80536290

.global lbl_80664E30
lbl_80664E30:
	.4byte lbl_804FF44C
	.4byte 0

.global lbl_80664E38
lbl_80664E38:
	.4byte lbl_804FF538
	.4byte lbl_8053651C

.global lbl_80664E40
lbl_80664E40:
	.4byte lbl_804FF548
	.4byte lbl_80536578

.global lbl_80664E48
lbl_80664E48:
	.4byte lbl_804FF598
	.4byte lbl_80536648

.global lbl_80664E50
lbl_80664E50:
	.4byte lbl_804FF610
	.4byte 0

.global lbl_80664E58
lbl_80664E58:
	.4byte lbl_804FF628
	.4byte lbl_80536758

.global lbl_80664E60
lbl_80664E60:
	.4byte lbl_804FF750
	.4byte lbl_8053687C

.global lbl_80664E68
lbl_80664E68:
	.4byte lbl_804FF764
	.4byte lbl_805368C4

.global lbl_80664E70
lbl_80664E70:
	.4byte lbl_804FF7BC
	.4byte lbl_80536AC0


.global lbl_80664E78
lbl_80664E78:
	# ROM: 0x570A58
	.4byte 0x3C738AFF


.global lbl_80664E7C
lbl_80664E7C:
	# ROM: 0x570A5C
	.4byte 0xF0F0FAFF


.global lbl_80664E80
lbl_80664E80:
	# ROM: 0x570A60
	.4byte 0xF0F0FAFF


.global lbl_80664E84
lbl_80664E84:
	# ROM: 0x570A64
	.4byte 0x4014D2FF


.global lbl_80664E88
lbl_80664E88:
	# ROM: 0x570A68
	.4byte 0xD42D1DFF


.global lbl_80664E8C
lbl_80664E8C:
	# ROM: 0x570A6C
	.4byte 0x0F0F0FFF


.global lbl_80664E90
lbl_80664E90:
	# ROM: 0x570A70
	.4byte 0xFFFFFFFF


.global lbl_80664E94
lbl_80664E94:
	# ROM: 0x570A74
	.4byte 0xFFFFFFFF


.global lbl_80664E98
lbl_80664E98:
	# ROM: 0x570A78
	.4byte 0xFFFFFFFF


.global lbl_80664E9C
lbl_80664E9C:
	# ROM: 0x570A7C
	.4byte 0xFFFFFFFF


.global lbl_80664EA0
lbl_80664EA0:
	# ROM: 0x570A80
	.4byte 0x785AFFFF


.global lbl_80664EA4
lbl_80664EA4:
	# ROM: 0x570A84
	.4byte 0xFFAC98FF


.global lbl_80664EA8
lbl_80664EA8:
	# ROM: 0x570A88
	.4byte 0x79E56DFF


.global lbl_80664EAC
lbl_80664EAC:
	# ROM: 0x570A8C
	.4byte 0x808080FF

.global lbl_80664EB0
lbl_80664EB0:
	.4byte lbl_804FFA80
	.4byte lbl_80536DB0

.global lbl_80664EB8
lbl_80664EB8:
	.4byte lbl_80500010
	.4byte lbl_80536EB0

.global lbl_80664EC0
lbl_80664EC0:
	.4byte lbl_80500228
	.4byte lbl_80536F30

.global lbl_80664EC8
lbl_80664EC8:
	.4byte lbl_80500238
	.4byte 0

.global lbl_80664ED0
lbl_80664ED0:
	.4byte lbl_80500248
	.4byte lbl_80537138


.global lbl_80664ED8
lbl_80664ED8:
	# ROM: 0x570AB8
	.4byte 0x00000032


.global lbl_80664EDC
lbl_80664EDC:
	# ROM: 0x570ABC
	.4byte 0x00000004


.global lbl_80664EE0
lbl_80664EE0:
	# ROM: 0x570AC0
	.4byte 0x0F0A050A
	.4byte 0x0F000000


.global lbl_80664EE8
lbl_80664EE8:
	# ROM: 0x570AC8
	.4byte 0x0003050A
	.4byte 0


.global lbl_80664EF0
lbl_80664EF0:
	# ROM: 0x570AD0
	.4byte 0x140F050A
	.4byte 0


.global lbl_80664EF8
lbl_80664EF8:
	# ROM: 0x570AD8
	.4byte 0x000A0F32
	.4byte 0


.global lbl_80664F00
lbl_80664F00:
	# ROM: 0x570AE0
	.4byte 0x03EB03EC
	.4byte 0x03EE0000

.global lbl_80664F08
lbl_80664F08:
	.4byte lbl_80500904
	.4byte lbl_80537188

.global lbl_80664F10
lbl_80664F10:
	.4byte lbl_80500928
	.4byte lbl_80537314

.global lbl_80664F18
lbl_80664F18:
	.4byte lbl_80500B28
	.4byte lbl_805373B0


.global lbl_80664F20
lbl_80664F20:
	# ROM: 0x570B00
	.float 1.0
	.4byte 0


.global lbl_80664F28
lbl_80664F28:
	# ROM: 0x570B08
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_80664F30
lbl_80664F30:
	.4byte lbl_80500B50
	.4byte lbl_8053749C

.global lbl_80664F38
lbl_80664F38:
	.4byte lbl_80500B60
	.4byte lbl_805374E4

.global lbl_80664F40
lbl_80664F40:
	.4byte lbl_80500B78
	.4byte lbl_80537570

.global lbl_80664F48
lbl_80664F48:
	.4byte lbl_8066A7D8
	.4byte lbl_80537608

.global lbl_80664F50
lbl_80664F50:
	.4byte lbl_80500CB8
	.4byte lbl_80537D40

.global lbl_80664F58
lbl_80664F58:
	.4byte lbl_80500E3C
	.4byte lbl_80537F80

.global lbl_80664F60
lbl_80664F60:
	.4byte lbl_80500E4C
	.4byte lbl_80537FA0

.global lbl_80664F68
lbl_80664F68:
	.4byte lbl_80500E5C
	.4byte lbl_80537FC0

.global lbl_80664F70
lbl_80664F70:
	.4byte lbl_80500E68
	.4byte 0

.global lbl_80664F78
lbl_80664F78:
	.4byte lbl_8066A868
	.4byte lbl_80538008

.global lbl_80664F80
lbl_80664F80:
	.4byte lbl_8066A870
	.4byte lbl_80538030

.global lbl_80664F88
lbl_80664F88:
	.4byte lbl_8066A878
	.4byte lbl_80538058

.global lbl_80664F90
lbl_80664F90:
	.4byte lbl_8066A880
	.4byte lbl_80538080

.global lbl_80664F98
lbl_80664F98:
	.4byte lbl_8066A888
	.4byte lbl_805380A8

.global lbl_80664FA0
lbl_80664FA0:
	.4byte lbl_8066A890
	.4byte lbl_805380D0

.global lbl_80664FA8
lbl_80664FA8:
	.4byte lbl_8066A898
	.4byte lbl_805380F8

.global lbl_80664FB0
lbl_80664FB0:
	.4byte lbl_8066A8A0
	.4byte lbl_80538120

.global lbl_80664FB8
lbl_80664FB8:
	.4byte lbl_8066A8A8
	.4byte lbl_80538148

.global lbl_80664FC0
lbl_80664FC0:
	.4byte lbl_80501A10
	.4byte lbl_80538210

.global lbl_80664FC8
lbl_80664FC8:
	.4byte lbl_80501B6C
	.4byte lbl_805382D0

.global lbl_80664FD0
lbl_80664FD0:
	.4byte lbl_80501B7C
	.4byte lbl_80538368

.global lbl_80664FD8
lbl_80664FD8:
	.4byte lbl_805023A0
	.4byte lbl_80538400

.global lbl_80664FE0
lbl_80664FE0:
	.4byte lbl_80502910
	.4byte lbl_80538528

.global lbl_80664FE8
lbl_80664FE8:
	.4byte lbl_80502920
	.4byte lbl_80538550

.global lbl_80664FF0
lbl_80664FF0:
	.4byte lbl_80503198
	.4byte lbl_80538618

.global lbl_80664FF8
lbl_80664FF8:
	.4byte lbl_80503294
	.4byte lbl_8053874C

.global lbl_80665000
lbl_80665000:
	.4byte lbl_805032A8
	.4byte lbl_80538760

.global lbl_80665008
lbl_80665008:
	.4byte lbl_805033B8
	.4byte lbl_80538A28

.global lbl_80665010
lbl_80665010:
	.4byte lbl_805033DC
	.4byte lbl_80538B30

.global lbl_80665018
lbl_80665018:
	.4byte lbl_80503440
	.4byte lbl_80538B74


.global lbl_80665020
lbl_80665020:
	# ROM: 0x570C00
	.4byte lbl_80503460
	.4byte 0

.global lbl_80665028
lbl_80665028:
	.4byte lbl_8050348C
	.4byte lbl_80538C08


.global lbl_80665030
lbl_80665030:
	# ROM: 0x570C10
	.4byte 0x00000007
	.4byte 0x00000012

.global lbl_80665038
lbl_80665038:
	.4byte lbl_80503740
	.4byte lbl_80538D5C

.global lbl_80665040
lbl_80665040:
	.4byte lbl_805038A8
	.4byte lbl_80538EC8


.global lbl_80665048
lbl_80665048:
	# ROM: 0x570C28
	.4byte 0x282D343C
	.4byte 0x505A5C63


.global lbl_80665050
lbl_80665050:
	.asciz "skill1"
	.balign 4


.global lbl_80665058
lbl_80665058:
	# ROM: 0x570C38
	.4byte 0x0000000A
	.4byte 0x0000000A

.global lbl_80665060
lbl_80665060:
	.4byte lbl_80503AE8
	.4byte lbl_80538EF0

.global lbl_80665068
lbl_80665068:
	.4byte lbl_80503B14
	.4byte 0

.global lbl_80665070
lbl_80665070:
	.4byte lbl_80503BC8
	.4byte lbl_80538F90


.global lbl_80665078
lbl_80665078:
	# ROM: 0x570C58
	.float 1.0


.global lbl_8066507C
lbl_8066507C:
	# ROM: 0x570C5C
	.float 1.0


.global lbl_80665080
lbl_80665080:
	# ROM: 0x570C60
	.4byte lbl_80503D48
	.4byte 0

.global lbl_80665088
lbl_80665088:
	.4byte lbl_80503D88
	.4byte lbl_805390A4


.global lbl_80665090
lbl_80665090:
	# ROM: 0x570C70
	.4byte lbl_8066AC68
	.4byte 0

.global lbl_80665098
lbl_80665098:
	.4byte lbl_80503DF8
	.4byte lbl_805390DC

.global lbl_806650A0
lbl_806650A0:
	.4byte lbl_80503E18
	.4byte lbl_8053918C

.global lbl_806650A8
lbl_806650A8:
	.4byte lbl_80503E48
	.4byte lbl_805391F4


.global lbl_806650B0
lbl_806650B0:
	# ROM: 0x570C90
	.4byte lbl_8066ACF8
	.4byte lbl_8066AD00

.global lbl_806650B8
lbl_806650B8:
	.4byte lbl_80503EB8
	.4byte lbl_80539274

.global lbl_806650C0
lbl_806650C0:
	.4byte lbl_80503F30
	.4byte lbl_805392C0

.global lbl_806650C8
lbl_806650C8:
	.4byte lbl_80503F48
	.4byte lbl_805393C4

.global lbl_806650D0
lbl_806650D0:
	.4byte lbl_80503F9C
	.4byte lbl_805394A0

.global lbl_806650D8
lbl_806650D8:
	.4byte lbl_80504500
	.4byte lbl_80539538

.global lbl_806650E0
lbl_806650E0:
	.4byte lbl_805047FC
	.4byte lbl_805396F0

.global lbl_806650E8
lbl_806650E8:
	.4byte lbl_80504920
	.4byte 0

.global lbl_806650F0
lbl_806650F0:
	.4byte lbl_805049C0
	.4byte lbl_805397C0

.global lbl_806650F8
lbl_806650F8:
	.4byte lbl_80504C58
	.4byte 0

.global lbl_80665100
lbl_80665100:
	.4byte lbl_80504C68
	.4byte lbl_805397F4

.global lbl_80665108
lbl_80665108:
	.4byte lbl_80504C78
	.4byte lbl_80539814

.global lbl_80665110
lbl_80665110:
	.4byte lbl_80504C88
	.4byte 0

.global lbl_80665118
lbl_80665118:
	.4byte lbl_80504C98
	.4byte lbl_80539844

.global lbl_80665120
lbl_80665120:
	.4byte lbl_80504CA8
	.4byte 0

.global lbl_80665128
lbl_80665128:
	.4byte lbl_80504CB8
	.4byte 0

.global lbl_80665130
lbl_80665130:
	.4byte lbl_80504CC4
	.4byte lbl_80539880

.global lbl_80665138
lbl_80665138:
	.4byte lbl_80504CD4
	.4byte lbl_805398A0

.global lbl_80665140
lbl_80665140:
	.4byte lbl_80504CE4
	.4byte lbl_805398C0

.global lbl_80665148
lbl_80665148:
	.4byte lbl_80504CF0
	.4byte 0

.global lbl_80665150
lbl_80665150:
	.4byte lbl_80505110
	.4byte lbl_805399A0


.global lbl_80665158
lbl_80665158:
	# ROM: 0x570D38
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_80665160
lbl_80665160:
	.4byte lbl_805051B8
	.4byte lbl_80539AC8

.global lbl_80665168
lbl_80665168:
	.4byte lbl_805057B8
	.4byte lbl_80539CB8

.global lbl_80665170
lbl_80665170:
	.4byte lbl_8066AEB8
	.4byte lbl_80539D54

.global lbl_80665178
lbl_80665178:
	.4byte lbl_80505D20
	.4byte lbl_80539DE8

.global lbl_80665180
lbl_80665180:
	.4byte lbl_80505E30
	.4byte lbl_80539E80

.global lbl_80665188
lbl_80665188:
	.4byte lbl_80505F40
	.4byte lbl_80539F18

.global lbl_80665190
lbl_80665190:
	.4byte lbl_80506128
	.4byte lbl_80539FB0

.global lbl_80665198
lbl_80665198:
	.4byte lbl_80506188
	.4byte lbl_80539FF8


.global lbl_806651A0
lbl_806651A0:
	# ROM: 0x570D80
	.4byte 0x01000000
	.4byte 0

.global lbl_806651A8
lbl_806651A8:
	.4byte lbl_80506360
	.4byte lbl_8053A148
	
.global lbl_806651B0
lbl_806651B0:
	.4byte lbl_80506700
	.4byte lbl_8053A2C8


.global lbl_806651B8
lbl_806651B8:
	# ROM: 0x570D98
	.4byte lbl_8066AF90
	.4byte 0

.global lbl_806651C0
lbl_806651C0:
	.4byte lbl_80506B40
	.4byte lbl_8053A438

.global lbl_806651C8
lbl_806651C8:
	.4byte lbl_80506B54
	.4byte lbl_8053A490

.global lbl_806651D0
lbl_806651D0:
	.4byte lbl_80506B88
	.4byte lbl_8053A518

.global lbl_806651D8
lbl_806651D8:
	.4byte lbl_8066B000
	.4byte lbl_8053A650

.global lbl_806651E0
lbl_806651E0:
	.4byte lbl_8066B00C
	.4byte lbl_8053A6E8

.global lbl_806651E8
lbl_806651E8:
	.4byte lbl_80507500
	.4byte lbl_8053A868

.global lbl_806651F0
lbl_806651F0:
	.4byte lbl_8050750C
	.4byte lbl_8053A880

.global lbl_806651F8
lbl_806651F8:
	.4byte lbl_80507518
	.4byte lbl_8053A898

.global lbl_80665200
lbl_80665200:
	.4byte lbl_80507524
	.4byte lbl_8053A8B0

.global lbl_80665208
lbl_80665208:
	.4byte lbl_80507534
	.4byte 0

.global lbl_80665210
lbl_80665210:
	.4byte lbl_80507C20
	.4byte lbl_8053A920

.global lbl_80665218
lbl_80665218:
	.4byte lbl_80507C48
	.4byte lbl_8053AA18

.global lbl_80665220
lbl_80665220:
	.4byte lbl_80507D08
	.4byte lbl_8053AA90

.global lbl_80665228
lbl_80665228:
	.4byte lbl_80507D6C
	.4byte lbl_8053AC20

.global lbl_80665230
lbl_80665230:
	.4byte lbl_8066B0D0
	.4byte 0

.global lbl_80665238
lbl_80665238:
	.4byte lbl_80508130
	.4byte lbl_8053ACA0

.global lbl_80665240
lbl_80665240:
	.4byte lbl_80508168
	.4byte lbl_8053AD90

.global lbl_80665248
lbl_80665248:
	.4byte lbl_80508174
	.4byte 0

.global lbl_80665250
lbl_80665250:
	.4byte lbl_80508180
	.4byte 0

.global lbl_80665258
lbl_80665258:
	.4byte lbl_8050818C
	.4byte 0

.global lbl_80665260
lbl_80665260:
	.4byte lbl_80508198
	.4byte 0

.global lbl_80665268
lbl_80665268:
	.4byte lbl_80508EE0
	.4byte lbl_8053AE58

.global lbl_80665270
lbl_80665270:
	.4byte lbl_80508EF0
	.4byte 0


.global lbl_80665278
lbl_80665278:
	# ROM: 0x570E58
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_80665280
lbl_80665280:
	.4byte lbl_805091D0
	.4byte lbl_8053B0A0

.global lbl_80665288
lbl_80665288:
	.4byte lbl_8050925C
	.4byte lbl_8053B1A8

.global lbl_80665290
lbl_80665290:
	.4byte lbl_80509270
	.4byte 0

.global lbl_80665298
lbl_80665298:
	.4byte lbl_80509288
	.4byte 0

.global lbl_806652A0
lbl_806652A0:
	.4byte lbl_805092A0
	.4byte 0


.global lbl_806652A8
lbl_806652A8:
	# ROM: 0x570E88
	.4byte lbl_8066B20C
	.4byte 0

.global lbl_806652B0
lbl_806652B0:
	.4byte lbl_80509D20
	.4byte lbl_8053B254

.global lbl_806652B8
lbl_806652B8:
	.4byte lbl_80509D78
	.4byte lbl_8053B328

.global lbl_806652C0
lbl_806652C0:
	.4byte lbl_80509E20
	.4byte lbl_8053B3A0

.global lbl_806652C8
lbl_806652C8:
	.4byte lbl_80509E40
	.4byte lbl_8053B460

.global lbl_806652D0
lbl_806652D0:
	.4byte lbl_80509FE0
	.4byte lbl_8053B4A8

.global lbl_806652D8
lbl_806652D8:
	.4byte lbl_8050A008
	.4byte lbl_8053B568

.global lbl_806652E0
lbl_806652E0:
	.4byte lbl_8050A238
	.4byte lbl_8053B63C

.global lbl_806652E8
lbl_806652E8:
	.4byte lbl_8050A270
	.4byte lbl_8053B6B8

.global lbl_806652F0
lbl_806652F0:
	.4byte lbl_8050A288
	.4byte lbl_8053B6F8

.global lbl_806652F8
lbl_806652F8:
	.4byte lbl_8050A29C
	.4byte lbl_8053B740

.global lbl_80665300
lbl_80665300:
	.4byte lbl_8050A2B8
	.4byte 0

.global lbl_80665308
lbl_80665308:
	.4byte lbl_8050A2C8
	.4byte lbl_8053B858

.global lbl_80665310
lbl_80665310:
	.4byte lbl_8050A2E0
	.4byte lbl_8053B940


.global lbl_80665318
lbl_80665318:
	# ROM: 0x570EF8
	.4byte 0xFFFFFFFF


.global lbl_8066531C
lbl_8066531C:
	# ROM: 0x570EFC
	.4byte 0x000007DB


.global lbl_80665320
lbl_80665320:
	# ROM: 0x570F00
	.4byte 0x000007DB
	.4byte 0x000007DC


.global lbl_80665328
lbl_80665328:
	# ROM: 0x570F08
	.4byte 0x000007DD
	.4byte 0


.global lbl_80665330
lbl_80665330:
	# ROM: 0x570F10
	.4byte 0x000007DD
	.4byte 0x000007E0

.global lbl_80665338
lbl_80665338:
	.4byte lbl_8050A398
	.4byte 0

.global lbl_80665340
lbl_80665340:
	.4byte lbl_8050A3B0
	.4byte 0

.global lbl_80665348
lbl_80665348:
	.4byte lbl_8050A3C0
	.4byte 0

.global lbl_80665350
lbl_80665350:
	.4byte lbl_8050A3D8
	.4byte 0

.global lbl_80665358
lbl_80665358:
	.4byte lbl_8050A3E8
	.4byte 0

.global lbl_80665360
lbl_80665360:
	.4byte lbl_8050A3FC
	.4byte lbl_8053BAD8

.global lbl_80665368
lbl_80665368:
	.4byte lbl_8050A418
	.4byte 0

.global lbl_80665370
lbl_80665370:
	.4byte lbl_8050A43C
	.4byte 0


.global lbl_80665378
lbl_80665378:
	# ROM: 0x570F58
	.4byte 0x00000001
	.4byte 0

.global lbl_80665380
lbl_80665380:
	.4byte lbl_8050A470
	.4byte 0

.global lbl_80665388
lbl_80665388:
	.4byte lbl_8050A490
	.4byte lbl_8053BBD4

.global lbl_80665390
lbl_80665390:
	.4byte lbl_8050A598
	.4byte lbl_8053BC88

.global lbl_80665398
lbl_80665398:
	.4byte lbl_8050A5B0
	.4byte lbl_8053BD10

.global lbl_806653A0
lbl_806653A0:
	.4byte lbl_8050A638
	.4byte lbl_8053BE98

.global lbl_806653A8
lbl_806653A8:
	.4byte lbl_8050A648
	.4byte lbl_8053BEB0

.global lbl_806653B0
lbl_806653B0:
	.4byte lbl_8066B408
	.4byte 0

.global lbl_806653B8
lbl_806653B8:
	.4byte lbl_8050AE18
	.4byte lbl_8053BF00


.global lbl_806653C0
lbl_806653C0:
	# ROM: 0x570FA0
	.4byte 0x00000003


.global lbl_806653C4
lbl_806653C4:
	# ROM: 0x570FA4
	.4byte 0xFFFFFFFF


.global lbl_806653C8
lbl_806653C8:
	# ROM: 0x570FA8
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_806653D0
lbl_806653D0:
	.4byte lbl_8050AE38
	.4byte lbl_8053BFF8

.global lbl_806653D8
lbl_806653D8:
	.4byte lbl_8066B420
	.4byte 0

.global lbl_806653E0
lbl_806653E0:
	.4byte lbl_8050B208
	.4byte lbl_8053C030

.global lbl_806653E8
lbl_806653E8:
	.4byte lbl_8050B214
	.4byte 0


.global lbl_806653F0
lbl_806653F0:
	# ROM: 0x570FD0
	.4byte lbl_8050B228
	.4byte 0

.global lbl_806653F8
lbl_806653F8:
	.4byte lbl_8050B244
	.4byte lbl_8053C104

.global lbl_80665400
lbl_80665400:
	.4byte lbl_8050B388
	.4byte 0

.global lbl_80665408
lbl_80665408:
	.4byte lbl_8050B398
	.4byte lbl_8053C218

.global lbl_80665410
lbl_80665410:
	.4byte lbl_8050B3C0
	.4byte lbl_8053C280

.global lbl_80665418
lbl_80665418:
	.4byte lbl_8050B3E8
	.4byte lbl_8053C354

.global lbl_80665420
lbl_80665420:
	.4byte lbl_8050B3F8
	.4byte lbl_8053C39C

.global lbl_80665428
lbl_80665428:
	.4byte lbl_8050B410
	.4byte lbl_8053C47C

.global lbl_80665430
lbl_80665430:
	.4byte lbl_8050B420
	.4byte lbl_8053C4C4

.global lbl_80665438
lbl_80665438:
	.4byte lbl_8057A538
	.4byte 0

.global lbl_80665440
lbl_80665440:
	.4byte lbl_8057A628
	.4byte 0

.global lbl_80665448
lbl_80665448:
	.4byte lbl_8057A63C
	.4byte 0

.global lbl_80665450
lbl_80665450:
	.4byte lbl_8057A650
	.4byte 0

.global lbl_80665458
lbl_80665458:
	.4byte lbl_8057A660
	.4byte 0

.global lbl_80665460
lbl_80665460:
	.4byte lbl_8057A690
	.4byte 0

.global lbl_80665468
lbl_80665468:
	.4byte lbl_8057A6A8
	.4byte 0

.global lbl_80665470
lbl_80665470:
	.4byte lbl_8057A6B8
	.4byte 0

.global lbl_80665478
lbl_80665478:
	.4byte lbl_8057A6C8
	.4byte 0

.global lbl_80665480
lbl_80665480:
	.4byte lbl_8057A728
	.4byte 0

.global lbl_80665488
lbl_80665488:
	.4byte lbl_8057A768
	.4byte 0

.global lbl_80665490
lbl_80665490:
	.4byte lbl_8057A77C
	.4byte 0

.global lbl_80665498
lbl_80665498:
	.4byte lbl_8057A788
	.4byte 0

.global lbl_806654A0
lbl_806654A0:
	.4byte lbl_8057A7A0
	.4byte 0

.global lbl_806654A8
lbl_806654A8:
	.4byte lbl_8057A7B0
	.4byte 0

.global lbl_806654B0
lbl_806654B0:
	.4byte lbl_8057A7E0
	.4byte 0

.global lbl_806654B8
lbl_806654B8:
	.4byte lbl_8057A7F4
	.4byte 0

.global lbl_806654C0
lbl_806654C0:
	.4byte lbl_8057A808
	.4byte 0

.global lbl_806654C8
lbl_806654C8:
	.4byte lbl_8057A818
	.4byte 0

.global lbl_806654D0
lbl_806654D0:
	.4byte lbl_8050B438
	.4byte lbl_8053C76C

.global lbl_806654D8
lbl_806654D8:
	.4byte lbl_8050B450
	.4byte lbl_8053C780

.global lbl_806654E0
lbl_806654E0:
	.4byte lbl_8050B464
	.4byte lbl_8053C7B0

.global lbl_806654E8
lbl_806654E8:
	.4byte lbl_8050B478
	.4byte lbl_8053C7CC

.global lbl_806654F0
lbl_806654F0:
	.4byte lbl_8050B488
	.4byte lbl_8053C7FC

.global lbl_806654F8
lbl_806654F8:
	.4byte lbl_8050B4A0
	.4byte lbl_8053C810

.global lbl_80665500
lbl_80665500:
	.4byte lbl_8050B4B4
	.4byte lbl_8053C840

.global lbl_80665508
lbl_80665508:
	.4byte lbl_8050B4CC
	.4byte lbl_8053C85C

.global lbl_80665510
lbl_80665510:
	.4byte lbl_8050B4E0
	.4byte lbl_8053C88C

.global lbl_80665518
lbl_80665518:
	.4byte lbl_8050B4F8
	.4byte lbl_8053C8BC

.global lbl_80665520
lbl_80665520:
	.4byte lbl_8050B510
	.4byte lbl_8053C8C8

.global lbl_80665528
lbl_80665528:
	.4byte lbl_8050B520
	.4byte 0

.global lbl_80665530
lbl_80665530:
	.4byte lbl_8050B52C
	.4byte 0

.global lbl_80665538
lbl_80665538:
	.4byte lbl_8050B5B4
	.4byte lbl_8053C968

.global lbl_80665540
lbl_80665540:
	.4byte lbl_8050B848
	.4byte lbl_8053C9B0

.global lbl_80665548
lbl_80665548:
	.4byte lbl_8050B878
	.4byte lbl_8053CA70

.global lbl_80665550
lbl_80665550:
	.4byte lbl_8050B9A8
	.4byte lbl_8053CAB8

.global lbl_80665558
lbl_80665558:
	.4byte lbl_8066B4C8
	.4byte lbl_8053CE50

.global lbl_80665560
lbl_80665560:
	.4byte lbl_8066B4D0
	.4byte lbl_8053CE78

.global lbl_80665568
lbl_80665568:
	.4byte lbl_8050BB20
	.4byte lbl_8053CF48


.global lbl_80665570
lbl_80665570:
	# ROM: 0x571150
	.float 0.2
	.4byte 0

.global lbl_80665578
lbl_80665578:
	.4byte lbl_8050BB40
	.4byte lbl_8053D008

.global lbl_80665580
lbl_80665580:
	.4byte lbl_8050BB4C
	.4byte 0

.global lbl_80665588
lbl_80665588:
	.4byte lbl_8050BCA8
	.4byte lbl_8053D030


.global lbl_80665590
lbl_80665590:
	# ROM: 0x571170
	.4byte lbl_8050BCC0
	.4byte 0

.global lbl_80665598
lbl_80665598:
	.4byte lbl_8050BCDC
	.4byte 0

.global lbl_806655A0
lbl_806655A0:
	.4byte lbl_8050BCF0
	.4byte lbl_8053D078


.global lbl_806655A8
lbl_806655A8:
	# ROM: 0x571188
	.float 1.0


.global lbl_806655AC
lbl_806655AC:
	# ROM: 0x57118C
	.4byte 0x41F00000


.global lbl_806655B0
lbl_806655B0:
	# ROM: 0x571190
	.4byte 0x447A0000
	.4byte 0

.global lbl_806655B8
lbl_806655B8:
	.4byte lbl_8050BD08
	.4byte 0


.global lbl_806655C0
lbl_806655C0:
	# ROM: 0x5711A0
	.4byte 0x00000B57
	.4byte 0x00000B58


.global lbl_806655C8
lbl_806655C8:
	# ROM: 0x5711A8
	.4byte 0x00000B5D
	.4byte 0x00000B5E

.global lbl_806655D0
lbl_806655D0:
	.4byte lbl_8050BD18
	.4byte lbl_8053D164

.global lbl_806655D8
lbl_806655D8:
	.4byte lbl_8050BD38
	.4byte lbl_8053D1B0

.global lbl_806655E0
lbl_806655E0:
	.4byte lbl_8050BD50
	.4byte lbl_8053D1E8

.global lbl_806655E8
lbl_806655E8:
	.4byte lbl_8050BD68
	.4byte lbl_8053D238

.global lbl_806655F0
lbl_806655F0:
	.4byte lbl_8050BD80
	.4byte lbl_8053D2D8

.global lbl_806655F8
lbl_806655F8:
	.4byte lbl_8050BD98
	.4byte lbl_8053D328

.global lbl_80665600
lbl_80665600:
	.4byte lbl_8050BDB0
	.4byte lbl_8053D378

.global lbl_80665608
lbl_80665608:
	.4byte lbl_8050BDC8
	.4byte lbl_8053D3C8


.global lbl_80665610
lbl_80665610:
	# ROM: 0x5711F0
	.4byte 0x00000659
	.4byte 0x0000065A

.global lbl_80665618
lbl_80665618:
	.4byte lbl_8050BDE0
	.4byte lbl_8053D418

.global lbl_80665620
lbl_80665620:
	.4byte lbl_8050BE00
	.4byte lbl_8053D468

.global lbl_80665628
lbl_80665628:
	.4byte lbl_8050BE18
	.4byte lbl_8053D4A0

.global lbl_80665630
lbl_80665630:
	.4byte lbl_8050BE30
	.4byte lbl_8053D4F0


.global lbl_80665638
lbl_80665638:
	# ROM: 0x571218
	.4byte 0x01920195
	.4byte 0x01960000


.global lbl_80665640
lbl_80665640:
	# ROM: 0x571220
	.4byte 0x01910193
	.4byte 0x01940000

.global lbl_80665648
lbl_80665648:
	.4byte lbl_8050BE50
	.4byte lbl_8053D534


.global lbl_80665650
lbl_80665650:
	# ROM: 0x571230
	.4byte 0x012E0131
	.4byte 0x01320133


.global lbl_80665658
lbl_80665658:
	# ROM: 0x571238
	.4byte 0x01310132
	.4byte 0x01330000

.global lbl_80665660
lbl_80665660:
	.4byte lbl_8050BE70
	.4byte lbl_8053D580


.global lbl_80665668
lbl_80665668:
	# ROM: 0x571248
	.4byte 0xF06969FF


.global lbl_8066566C
lbl_8066566C:
	# ROM: 0x57124C
	.4byte 0x8A64FEFF


.global lbl_80665670
lbl_80665670:
	# ROM: 0x571250
	.4byte 0x48BA2AFF


.global lbl_80665674
lbl_80665674:
	# ROM: 0x571254
	.4byte 0xF0DC40FF


.global lbl_80665678
lbl_80665678:
	# ROM: 0x571258
	.4byte 0xEA7F2DFF


.global lbl_8066567C
lbl_8066567C:
	# ROM: 0x57125C
	.4byte 0x4D97F2FF


.global lbl_80665680
lbl_80665680:
	# ROM: 0x571260
	.4byte 0xE672DEFF


.global lbl_80665684
lbl_80665684:
	# ROM: 0x571264
	.4byte 0xA0A0A0FF


.global lbl_80665688
lbl_80665688:
	# ROM: 0x571268
	.4byte 0xF0F0F0FF


.global lbl_8066568C
lbl_8066568C:
	# ROM: 0x57126C
	.4byte 0xF06969FF


.global lbl_80665690
lbl_80665690:
	# ROM: 0x571270
	.4byte 0xF0F0F0FF


.global lbl_80665694
lbl_80665694:
	# ROM: 0x571274
	.4byte 0x8A64FEFF


.global lbl_80665698
lbl_80665698:
	# ROM: 0x571278
	.4byte 0xF0F0F0FF


.global lbl_8066569C
lbl_8066569C:
	# ROM: 0x57127C
	.4byte 0x48BA2AFF


.global lbl_806656A0
lbl_806656A0:
	# ROM: 0x571280
	.4byte 0xF0F0F0FF


.global lbl_806656A4
lbl_806656A4:
	# ROM: 0x571284
	.4byte 0xF0DC40FF


.global lbl_806656A8
lbl_806656A8:
	# ROM: 0x571288
	.4byte 0xF0F0F0FF


.global lbl_806656AC
lbl_806656AC:
	# ROM: 0x57128C
	.4byte 0xEA7F2DFF


.global lbl_806656B0
lbl_806656B0:
	# ROM: 0x571290
	.4byte 0xF0F0F0FF


.global lbl_806656B4
lbl_806656B4:
	# ROM: 0x571294
	.4byte 0x4D97F2FF


.global lbl_806656B8
lbl_806656B8:
	# ROM: 0x571298
	.4byte 0xF0F0F0FF


.global lbl_806656BC
lbl_806656BC:
	# ROM: 0x57129C
	.4byte 0xE672DEFF


.global lbl_806656C0
lbl_806656C0:
	# ROM: 0x5712A0
	.4byte 0xF0F0F0FF


.global lbl_806656C4
lbl_806656C4:
	# ROM: 0x5712A4
	.4byte 0xA0A0A0FF

.global lbl_806656C8
lbl_806656C8:
	.4byte lbl_8050BE90
	.4byte lbl_8053D698

.global lbl_806656D0
lbl_806656D0:
	.4byte lbl_8050C108
	.4byte lbl_8053D964

.global lbl_806656D8
lbl_806656D8:
	.4byte lbl_8050C128
	.4byte lbl_8053D994

.global lbl_806656E0
lbl_806656E0:
	.4byte lbl_8050C148
	.4byte lbl_8053DA00

.global lbl_806656E8
lbl_806656E8:
	.4byte lbl_8050C180
	.4byte lbl_8053DAC0

.global lbl_806656F0
lbl_806656F0:
	.4byte lbl_8066B6A0
	.4byte lbl_8053DB58


.global lbl_806656F8
lbl_806656F8:
	# ROM: 0x5712D8
	.4byte lbl_8050C370


.global lbl_806656FC
lbl_806656FC:
	# ROM: 0x5712DC
	.4byte lbl_8050C380


.global lbl_80665700
lbl_80665700:
	# ROM: 0x5712E0
	.4byte lbl_8050C3A4
	.4byte 0


.global lbl_80665708
lbl_80665708:
	# ROM: 0x5712E8
	.4byte lbl_8050C458


.global lbl_8066570C
lbl_8066570C:
	# ROM: 0x5712EC
	.4byte lbl_8050C488


.global lbl_80665710
lbl_80665710:
	# ROM: 0x5712F0
	.4byte lbl_8050C4D8


.global lbl_80665714
lbl_80665714:
	# ROM: 0x5712F4
	.4byte lbl_8050C4F4


.global lbl_80665718
lbl_80665718:
	# ROM: 0x5712F8
	.4byte lbl_8050C518


.global lbl_8066571C
lbl_8066571C:
	# ROM: 0x5712FC
	.4byte lbl_8050C5F4


.global lbl_80665720
lbl_80665720:
	# ROM: 0x571300
	.4byte lbl_8050C6C4


.global lbl_80665724
lbl_80665724:
	# ROM: 0x571304
	.4byte lbl_8050C738


.global lbl_80665728
lbl_80665728:
	# ROM: 0x571308
	.4byte lbl_8050C790


.global lbl_8066572C
lbl_8066572C:
	# ROM: 0x57130C
	.4byte lbl_8050C808

.global lbl_80665730
lbl_80665730:
	.4byte lbl_8050C8B0
	.4byte lbl_8053E1B0

.global lbl_80665738
lbl_80665738:
	.4byte lbl_8050C8D0
	.4byte lbl_8053E3F0

.global lbl_80665740
lbl_80665740:
	.4byte lbl_8050C8EC
	.4byte lbl_8053E410

.global lbl_80665748
lbl_80665748:
	.4byte lbl_8050C900
	.4byte 0

.global lbl_80665750
lbl_80665750:
	.4byte lbl_8050C918
	.4byte lbl_8053E458

.global lbl_80665758
lbl_80665758:
	.4byte lbl_8050C938
	.4byte lbl_8053E570

.global lbl_80665760
lbl_80665760:
	.4byte lbl_8050C990
	.4byte lbl_8053E5B8

.global lbl_80665768
lbl_80665768:
	.4byte lbl_8050C9E0
	.4byte lbl_8053E6E0

.global lbl_80665770
lbl_80665770:
	.4byte lbl_8050C9F0
	.4byte lbl_8053E738

.global lbl_80665778
lbl_80665778:
	.4byte lbl_8050CA18
	.4byte lbl_8053E890

.global lbl_80665780
lbl_80665780:
	.4byte lbl_8050CA24
	.4byte lbl_8053E8E8

.global lbl_80665788
lbl_80665788:
	.4byte lbl_8066B7F4
	.4byte lbl_8053EA68

.global lbl_80665790
lbl_80665790:
	.4byte lbl_8050CA38
	.4byte 0

.global lbl_80665798
lbl_80665798:
	.4byte lbl_8050CA44
	.4byte 0

.global lbl_806657A0
lbl_806657A0:
	.4byte lbl_8050CBA0
	.4byte lbl_8053EAAC

.global lbl_806657A8
lbl_806657A8:
	.4byte lbl_8050CBB8
	.4byte lbl_8053EAFC

.global lbl_806657B0
lbl_806657B0:
	.4byte lbl_8050CBD0
	.4byte lbl_8053EB2C

.global lbl_806657B8
lbl_806657B8:
	.4byte lbl_8050CBE8
	.4byte lbl_8053EB5C

.global lbl_806657C0
lbl_806657C0:
	.4byte lbl_8050CC00
	.4byte lbl_8053EB94

.global lbl_806657C8
lbl_806657C8:
	.4byte lbl_8050CC18
	.4byte lbl_8053EBCC

.global lbl_806657D0
lbl_806657D0:
	.4byte lbl_8050CC30
	.4byte lbl_8053EC24

.global lbl_806657D8
lbl_806657D8:
	.4byte lbl_8050CC48
	.4byte lbl_8053EC4C

.global lbl_806657E0
lbl_806657E0:
	.4byte lbl_8050CC60
	.4byte lbl_8053EC94

.global lbl_806657E8
lbl_806657E8:
	.4byte lbl_8050CC78
	.4byte lbl_8053ECBC

.global lbl_806657F0
lbl_806657F0:
	.4byte lbl_8050CC90
	.4byte lbl_8053ECE4

.global lbl_806657F8
lbl_806657F8:
	.4byte lbl_8050CCA8
	.4byte lbl_8053ED44

.global lbl_80665800
lbl_80665800:
	.4byte lbl_8050CCC0
	.4byte lbl_8053ED6C

.global lbl_80665808
lbl_80665808:
	.4byte lbl_8050CCE0
	.4byte lbl_8053ED9C

.global lbl_80665810
lbl_80665810:
	.4byte lbl_8050CD00
	.4byte lbl_8053EDCC

.global lbl_80665818
lbl_80665818:
	.4byte lbl_8050CD18
	.4byte lbl_8053EDF4

.global lbl_80665820
lbl_80665820:
	.4byte lbl_8050CD28
	.4byte lbl_8053EE24

.global lbl_80665828
lbl_80665828:
	.4byte lbl_8050CD48
	.4byte lbl_8053EE54

.global lbl_80665830
lbl_80665830:
	.4byte lbl_8050CD5C
	.4byte lbl_8053EE7C

.global lbl_80665838
lbl_80665838:
	.4byte lbl_8050CD70
	.4byte lbl_8053EEA4

.global lbl_80665840
lbl_80665840:
	.4byte lbl_8050CD80
	.4byte lbl_8053EEF4

.global lbl_80665848
lbl_80665848:
	.4byte lbl_8050CD98
	.4byte lbl_8053EF4C

.global lbl_80665850
lbl_80665850:
	.4byte lbl_8050CDB8
	.4byte lbl_8053F030

.global lbl_80665858
lbl_80665858:
	.4byte lbl_8050CE00
	.4byte 0


.global lbl_80665860
lbl_80665860:
	# ROM: 0x571440
	.4byte std$7dthandler
	.4byte 0

.global lbl_80665868
lbl_80665868:
	.4byte lbl_8050CE20
	.4byte lbl_8053F050


.global lbl_80665870
lbl_80665870:
	# ROM: 0x571450
	.4byte 0xFFFFFFFE
	.4byte 0


.global lbl_80665878
lbl_80665878:
	# ROM: 0x571458
	.4byte 0
	.4byte 0