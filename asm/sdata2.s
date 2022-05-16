.include "macros.inc"

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8
.global lbl_806683A8
lbl_806683A8:
	.asciz "ahx.pkh"

.global lbl_806683B0
lbl_806683B0:
	.asciz "adx.pkh"

.global lbl_806683B8
lbl_806683B8:
	.asciz "chr.pkh"

.global lbl_806683C0
lbl_806683C0:
	.asciz "eff.pkh"

.global lbl_806683C8
lbl_806683C8:
	.asciz "map.pkh"

.global lbl_806683D0
lbl_806683D0:
	.asciz "obj.pkh"

.global lbl_806683D8
lbl_806683D8:
	.asciz "snd.pkh"

.global lbl_806683E0
lbl_806683E0:
	.asciz "SHA"
	.asciz "CAM"
	.asciz "EFF"
	.asciz "ARROW"
	.balign 4
	.asciz "43"
	.byte 0x00
	.asciz "BDAT"
	.balign 4
	.asciz "AIDAT"
	.balign 4
	.asciz "HIKARI"
	.balign 4
	.asciz "HBMSTOP"
	.asciz "put"
	.4byte 0
	.asciz "frame"
	.balign 4
	.asciz "builtin"
	.asciz "start"
	.balign 4
	.asciz "end"
	.4byte 0
	.asciz "isAlive"
	.asciz "join"
	.balign 4
	.asciz "sleep"
	.balign 4
	.asciz "wakeup"
	.balign 4
	.asciz "thread"
	.balign 4
	.asciz "atr"
	.asciz "no"
	.byte 0x00
	.asciz "send"
	.balign 4
	.asciz "receive"
	.asciz "init"
	.balign 4
	.asciz "isFull"
	.balign 4
	.asciz "isEmpty"
	.asciz "msgYuka"
	.asciz "id"
	.byte 0x00
	.asciz "talk"
	.balign 4
	.asciz "dir"
	.asciz "msgNpc"
	.balign 4
	.asciz "getVal"
	.balign 4
	.asciz "bdat"
	.balign 4


.global lbl_806684C8
lbl_806684C8:
	# ROM: 0x572328
	.float 4096.0 #.4byte 0x45800000
	.4byte 0


.global lbl_806684D0
lbl_806684D0:
	# ROM: 0x572330
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_806684D8
lbl_806684D8:
	# ROM: 0x572338
	.asciz "Dz"
	.byte 0x00
	.asciz "x"
	.2byte 0
	.asciz "y"
	.2byte 0
	.asciz "z"
	.2byte 0
	.asciz "dir"
	.asciz "name"
	.balign 4
	.asciz "bdid"
	.balign 4
	.asciz "ID"
	.byte 0x00
	.asciz "HP"
	.4byte 0
	.byte 0x00
	.asciz "isValid"
	.asciz "dispOn"
	.balign 4
	.asciz "dispOff"
	.asciz "walkR"
	.balign 4
	.asciz "moveTo"
	.balign 4
	.asciz "isTalk"
	.balign 4
	.asciz "winTalk"
	.asciz "onEvent"
	.asciz "setAct"
	.balign 4
	.asciz "lookAt"
	.balign 4
	.asciz "turn"
	.balign 4
	.asciz "isPC"
	.balign 4
	.asciz "isNPC"
	.balign 4
	.asciz "isENE"
	.balign 4
	.asciz "isPT"
	.balign 4
	.asciz "invin"
	.balign 4
	.asciz "setColi"
	.asciz "setEye"
	.balign 4
	.asciz "unit"
	.balign 4
	.asciz "setRot"
	.balign 4
	.asciz "gravity"
	.asciz "obj"
	.asciz "point"
	.balign 4
	.asciz "signal"
	.balign 4
	.asciz "setCas"
	.balign 4
	.asciz "setTgt"
	.balign 4
	.asciz "effect"
	.balign 4


.global lbl_806685DC
lbl_806685DC:
	# ROM: 0x57243C
	.4byte 0
	.asciz "setSize"
	.asciz "setBox"
	.balign 4
	.asciz "inside"
	.balign 4
	.asciz "attr"
	.balign 4
	.4byte 0x474D0000


.global lbl_80668604
lbl_80668604:
	# ROM: 0x572464
	.float 1.0


.global lbl_80668608
lbl_80668608:
	# ROM: 0x572468
	.float 10.0


.global lbl_8066860C
lbl_8066860C:
	# ROM: 0x57246C
	.4byte 0


.global lbl_80668610
lbl_80668610:
	# ROM: 0x572470
	.asciz "?fff"
	.balign 4


.global lbl_80668618
lbl_80668618:
	# ROM: 0x572478
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80668620
lbl_80668620:
	# ROM: 0x572480
	.4byte 0


.global lbl_80668624
lbl_80668624:
	# ROM: 0x572484
	.float 1.0


.global lbl_80668628
lbl_80668628:
	# ROM: 0x572488
	.4byte 0x3F800000


.global lbl_8066862C
lbl_8066862C:
	# ROM: 0x57248C
	.4byte 0
	.asciz "hour"
	.balign 4
	.asciz "min"
	.4byte 0
	.asciz "timeIdx"
	.4byte 0x63667000
	.4byte 0


.global lbl_80668650
lbl_80668650:
	# ROM: 0x5724B0
	.4byte 0xBF800000
	.4byte 0


.global lbl_80668658
lbl_80668658:
	# ROM: 0x5724B8
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "winTalk"
	.asciz "pcTalk"
	.balign 4
	.asciz "fadeIn"
	.balign 4
	.asciz "fadeOut"
	.asciz "winSys"
	.balign 4
	.asciz "save"
	.balign 4


.global lbl_80668690
lbl_80668690:
	# ROM: 0x5724F0
	.4byte 0


.global lbl_80668694
lbl_80668694:
	# ROM: 0x5724F4
	.4byte 0x3F800000
	.asciz "getFlag"
	.asciz "setFlag"
	.asciz "isEvent"
	.asciz "onTalk"
	.balign 4
	.asciz "fadeIn"
	.balign 4
	.asciz "fadeOut"


.global lbl_806686C8
lbl_806686C8:
	# ROM: 0x572528
	.4byte 0x45800000


.global lbl_806686CC
lbl_806686CC:
	# ROM: 0x57252C
	.4byte 0x43B40000


.global lbl_806686D0
lbl_806686D0:
	# ROM: 0x572530
	.4byte 0x3F000000


.global lbl_806686D4
lbl_806686D4:
	# ROM: 0x572534
	.4byte 0x40800000


.global lbl_806686D8
lbl_806686D8:
	# ROM: 0x572538
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_806686E0
lbl_806686E0:
	# ROM: 0x572540
	.4byte 0x3DCCCCCD


.global lbl_806686E4
lbl_806686E4:
	# ROM: 0x572544
	.4byte 0
	.asciz "mapJump"
	.asciz "delAttr"
	.asciz "setMono"
	.asciz "addItem"
	.asciz "delItem"
	.asciz "setFade"
	.asciz "waitPop"
	.asciz "random"
	.balign 4


.global lbl_80668728
lbl_80668728:
	# ROM: 0x572588
	.4byte 0x411CCCCD


.global lbl_8066872C
lbl_8066872C:
	# ROM: 0x57258C
	.4byte 0x3F800000


.global lbl_80668730
lbl_80668730:
	# ROM: 0x572590
	.4byte 0


.global lbl_80668734
lbl_80668734:
	# ROM: 0x572594
	.4byte 0x420C0000


.global lbl_80668738
lbl_80668738:
	# ROM: 0x572598
	.4byte 0x41600000


.global lbl_8066873C
lbl_8066873C:
	# ROM: 0x57259C
	.4byte 0x40D00000


.global lbl_80668740
lbl_80668740:
	# ROM: 0x5725A0
	.4byte 0x40800000


.global lbl_80668744
lbl_80668744:
	# ROM: 0x5725A4
	.4byte 0x40000000


.global lbl_80668748
lbl_80668748:
	# ROM: 0x5725A8
	.4byte 0x3F333333


.global lbl_8066874C
lbl_8066874C:
	# ROM: 0x5725AC
	.4byte 0x41880000


.global lbl_80668750
lbl_80668750:
	# ROM: 0x5725B0
	.4byte 0x41F00000


.global lbl_80668754
lbl_80668754:
	# ROM: 0x5725B4
	.4byte 0x41A00000


.global lbl_80668758
lbl_80668758:
	# ROM: 0x5725B8
	.4byte 0x447A0000


.global lbl_8066875C
lbl_8066875C:
	# ROM: 0x5725BC
	.4byte 0x45610000


.global lbl_80668760
lbl_80668760:
	# ROM: 0x5725C0
	.4byte 0x3DCCCCCD


.global lbl_80668764
lbl_80668764:
	# ROM: 0x5725C4
	.4byte 0x3CC90FDB


.global lbl_80668768
lbl_80668768:
	# ROM: 0x5725C8
	.4byte 0x43340000


.global lbl_8066876C
lbl_8066876C:
	# ROM: 0x5725CC
	.4byte 0x4222F983


.global lbl_80668770
lbl_80668770:
	# ROM: 0x5725D0
	.4byte 0x3EE66667


.global lbl_80668774
lbl_80668774:
	# ROM: 0x5725D4
	.4byte 0x40A00000


.global lbl_80668778
lbl_80668778:
	# ROM: 0x5725D8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80668780
lbl_80668780:
	# ROM: 0x5725E0
	.4byte 0x41200000


.global lbl_80668784
lbl_80668784:
	# ROM: 0x5725E4
	.4byte 0x3ECCCCCD


.global lbl_80668788
lbl_80668788:
	# ROM: 0x5725E8
	.4byte 0x3F99999A


.global lbl_8066878C
lbl_8066878C:
	# ROM: 0x5725EC
	.4byte 0xC0400000


.global lbl_80668790
lbl_80668790:
	# ROM: 0x5725F0
	.4byte 0x3F000000


.global lbl_80668794
lbl_80668794:
	# ROM: 0x5725F4
	.4byte 0x3B03126F


.global lbl_80668798
lbl_80668798:
	# ROM: 0x5725F8
	.4byte 0xBC23D70A


.global lbl_8066879C
lbl_8066879C:
	# ROM: 0x5725FC
	.4byte 0x3F8CCCCD


.global lbl_806687A0
lbl_806687A0:
	# ROM: 0x572600
	.4byte 0x42340000


.global lbl_806687A4
lbl_806687A4:
	# ROM: 0x572604
	.4byte 0x3E99999A


.global lbl_806687A8
lbl_806687A8:
	# ROM: 0x572608
	.4byte 0xBE800000


.global lbl_806687AC
lbl_806687AC:
	# ROM: 0x57260C
	.4byte 0x3E800000


.global lbl_806687B0
lbl_806687B0:
	# ROM: 0x572610
	.4byte 0x40400000


.global lbl_806687B4
lbl_806687B4:
	# ROM: 0x572614
	.4byte 0xC0800000


.global lbl_806687B8
lbl_806687B8:
	# ROM: 0x572618
	.4byte 0x3F666666


.global lbl_806687BC
lbl_806687BC:
	# ROM: 0x57261C
	.4byte 0xBF99999A


.global lbl_806687C0
lbl_806687C0:
	# ROM: 0x572620
	.4byte 0xBF800000


.global lbl_806687C4
lbl_806687C4:
	# ROM: 0x572624
	.4byte 0x41800000


.global lbl_806687C8
lbl_806687C8:
	# ROM: 0x572628
	.4byte 0xBDCCCCCD


.global lbl_806687CC
lbl_806687CC:
	# ROM: 0x57262C
	.4byte 0xC0000000


.global lbl_806687D0
lbl_806687D0:
	# ROM: 0x572630
	.4byte 0x3F733333


.global lbl_806687D4
lbl_806687D4:
	# ROM: 0x572634
	.4byte 0xC1800000


.global lbl_806687D8
lbl_806687D8:
	# ROM: 0x572638
	.4byte 0xC1A00000


.global lbl_806687DC
lbl_806687DC:
	# ROM: 0x57263C
	.4byte 0xC2B40000


.global lbl_806687E0
lbl_806687E0:
	# ROM: 0x572640
	.4byte 0x42B40000


.global lbl_806687E4
lbl_806687E4:
	# ROM: 0x572644
	.4byte 0x3E4CCCCD


.global lbl_806687E8
lbl_806687E8:
	# ROM: 0x572648
	.4byte 0xBF7FF972


.global lbl_806687EC
lbl_806687EC:
	# ROM: 0x57264C
	.4byte 0x42F00000


.global lbl_806687F0
lbl_806687F0:
	# ROM: 0x572650
	.4byte 0xC2F00000


.global lbl_806687F4
lbl_806687F4:
	# ROM: 0x572654
	.4byte 0x415E38E4


.global lbl_806687F8
lbl_806687F8:
	# ROM: 0x572658
	.4byte 0x3FB33333


.global lbl_806687FC
lbl_806687FC:
	# ROM: 0x57265C
	.4byte 0x3F350481


.global lbl_80668800
lbl_80668800:
	# ROM: 0x572660
	.4byte 0x3F8E38E4
	.4byte 0


.global lbl_80668808
lbl_80668808:
	# ROM: 0x572668
	.4byte 0x41000000


.global lbl_8066880C
lbl_8066880C:
	# ROM: 0x57266C
	.4byte 0xBF800000


.global lbl_80668810
lbl_80668810:
	# ROM: 0x572670
	.4byte 0


.global lbl_80668814
lbl_80668814:
	# ROM: 0x572674
	.4byte 0x41B00000


.global lbl_80668818
lbl_80668818:
	# ROM: 0x572678
	.4byte 0x3F800000
	.4byte 0


.global lbl_80668820
lbl_80668820:
	# ROM: 0x572680
	.4byte 0x43300000
	.4byte 0


.global lbl_80668828
lbl_80668828:
	# ROM: 0x572688
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80668830
lbl_80668830:
	# ROM: 0x572690
	.4byte 0


.global lbl_80668834
lbl_80668834:
	# ROM: 0x572694
	.4byte 0x41BB3333


.global lbl_80668838
lbl_80668838:
	# ROM: 0x572698
	.4byte 0x41F00000


.global lbl_8066883C
lbl_8066883C:
	# ROM: 0x57269C
	.4byte 0x3F800000


.global lbl_80668840
lbl_80668840:
	# ROM: 0x5726A0
	.4byte 0x42700000


.global lbl_80668844
lbl_80668844:
	# ROM: 0x5726A4
	.4byte 0x41C00000


.global lbl_80668848
lbl_80668848:
	# ROM: 0x5726A8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80668850
lbl_80668850:
	# ROM: 0x5726B0
	.4byte 0x3F000000


.global lbl_80668854
lbl_80668854:
	# ROM: 0x5726B4
	.4byte 0xC0400000


.global lbl_80668858
lbl_80668858:
	# ROM: 0x5726B8
	.4byte 0x40A00000


.global lbl_8066885C
lbl_8066885C:
	# ROM: 0x5726BC
	.4byte 0x40000000


.global lbl_80668860
lbl_80668860:
	# ROM: 0x5726C0
	.4byte 0x41400000


.global lbl_80668864
lbl_80668864:
	# ROM: 0x5726C4
	.4byte 0x43B40000


.global lbl_80668868
lbl_80668868:
	# ROM: 0x5726C8
	.4byte 0x42B40000


.global lbl_8066886C
lbl_8066886C:
	# ROM: 0x5726CC
	.4byte 0xBF800000


.global lbl_80668870
lbl_80668870:
	# ROM: 0x5726D0
	.4byte 0x3DCCCCCD


.global lbl_80668874
lbl_80668874:
	# ROM: 0x5726D4
	.4byte 0x469C4000


.global lbl_80668878
lbl_80668878:
	# ROM: 0x5726D8
	.4byte 0x461C4000


.global lbl_8066887C
lbl_8066887C:
	# ROM: 0x5726DC
	.4byte 0x4222F983


.global lbl_80668880
lbl_80668880:
	# ROM: 0x5726E0
	.4byte 0x43300000
	.4byte 0


.global lbl_80668888
lbl_80668888:
	# ROM: 0x5726E8
	.4byte 0x3F7EFEFF


.global lbl_8066888C
lbl_8066888C:
	# ROM: 0x5726EC
	.4byte 0x3F42C2C3


.global lbl_80668890
lbl_80668890:
	# ROM: 0x5726F0
	.4byte 0x3F129293


.global lbl_80668894
lbl_80668894:
	# ROM: 0x5726F4
	.4byte 0x3F4CCCCD


.global lbl_80668898
lbl_80668898:
	# ROM: 0x5726F8
	.4byte 0x3F2EAEAF


.global lbl_8066889C
lbl_8066889C:
	# ROM: 0x5726FC
	.4byte 0x3F169697


.global lbl_806688A0
lbl_806688A0:
	# ROM: 0x572700
	.4byte 0x3EB0B0B1


.global lbl_806688A4
lbl_806688A4:
	# ROM: 0x572704
	.4byte 0x3ED0D0D1


.global lbl_806688A8
lbl_806688A8:
	# ROM: 0x572708
	.4byte 0x3F189899


.global lbl_806688AC
lbl_806688AC:
	# ROM: 0x57270C
	.4byte 0x3F19999A


.global lbl_806688B0
lbl_806688B0:
	# ROM: 0x572710
	.4byte 0x3EB6B6B7


.global lbl_806688B4
lbl_806688B4:
	# ROM: 0x572714
	.4byte 0x3DC8C8C9


.global lbl_806688B8
lbl_806688B8:
	# ROM: 0x572718
	.4byte 0x3DD0D0D1


.global lbl_806688BC
lbl_806688BC:
	# ROM: 0x57271C
	.4byte 0x3E189899


.global lbl_806688C0
lbl_806688C0:
	# ROM: 0x572720
	.4byte 0x3F008081
	.4byte 0


.global lbl_806688C8
lbl_806688C8:
	# ROM: 0x572728
	.4byte 0x3F800000
	.4byte 0


.global lbl_806688D0
lbl_806688D0:
	# ROM: 0x572730
	.4byte 0


.global lbl_806688D4
lbl_806688D4:
	# ROM: 0x572734
	.4byte 0x3F800000


.global lbl_806688D8
lbl_806688D8:
	# ROM: 0x572738
	.4byte 0xBF800000


.global lbl_806688DC
lbl_806688DC:
	# ROM: 0x57273C
	.4byte 0xC61C4000


.global lbl_806688E0
lbl_806688E0:
	# ROM: 0x572740
	.4byte 0x40000000


.global lbl_806688E4
lbl_806688E4:
	# ROM: 0x572744
	.4byte 0xC1000000


.global lbl_806688E8
lbl_806688E8:
	# ROM: 0x572748
	.4byte 0x459C4000


.global lbl_806688EC
lbl_806688EC:
	# ROM: 0x57274C
	.4byte 0x3F4CCCCD


.global lbl_806688F0
lbl_806688F0:
	# ROM: 0x572750
	.4byte 0xC1F00000


.global lbl_806688F4
lbl_806688F4:
	# ROM: 0x572754
	.4byte 0x41500000


.global lbl_806688F8
lbl_806688F8:
	# ROM: 0x572758
	.4byte 0x3E99999A


.global lbl_806688FC
lbl_806688FC:
	# ROM: 0x57275C
	.4byte 0x3C23D70A


.global lbl_80668900
lbl_80668900:
	# ROM: 0x572760
	.4byte 0x447A0000


.global lbl_80668904
lbl_80668904:
	# ROM: 0x572764
	.4byte 0x461C4000


.global lbl_80668908
lbl_80668908:
	# ROM: 0x572768
	.4byte 0x3FA66666


.global lbl_8066890C
lbl_8066890C:
	# ROM: 0x57276C
	.4byte 0xBF733333


.global lbl_80668910
lbl_80668910:
	# ROM: 0x572770
	.4byte 0x3F000000


.global lbl_80668914
lbl_80668914:
	# ROM: 0x572774
	.4byte 0x3D23D70A


.global lbl_80668918
lbl_80668918:
	# ROM: 0x572778
	.4byte 0x45840800


.global lbl_8066891C
lbl_8066891C:
	# ROM: 0x57277C
	.4byte 0x42400000


.global lbl_80668920
lbl_80668920:
	# ROM: 0x572780
	.4byte 0x3F7AE148


.global lbl_80668924
lbl_80668924:
	# ROM: 0x572784
	.4byte 0xBF000000


.global lbl_80668928
lbl_80668928:
	# ROM: 0x572788
	.4byte 0x3FC00000


.global lbl_8066892C
lbl_8066892C:
	# ROM: 0x57278C
	.4byte 0x3F7D70A4


.global lbl_80668930
lbl_80668930:
	# ROM: 0x572790
	.4byte 0x42800000
	.4byte 0


.global lbl_80668938
lbl_80668938:
	# ROM: 0x572798
	.4byte 0x43300000
	.4byte 0


.global lbl_80668940
lbl_80668940:
	# ROM: 0x5727A0
	.4byte 0x3F400000


.global lbl_80668944
lbl_80668944:
	# ROM: 0x5727A4
	.4byte 0x3DC00000


.global lbl_80668948
lbl_80668948:
	# ROM: 0x5727A8
	.4byte 0x41700000


.global lbl_8066894C
lbl_8066894C:
	# ROM: 0x5727AC
	.4byte 0x40200000


.global lbl_80668950
lbl_80668950:
	# ROM: 0x5727B0
	.4byte 0x3ECCCCCD


.global lbl_80668954
lbl_80668954:
	# ROM: 0x5727B4
	.4byte 0x42700000


.global lbl_80668958
lbl_80668958:
	# ROM: 0x5727B8
	.4byte 0x3F666666


.global lbl_8066895C
lbl_8066895C:
	# ROM: 0x5727BC
	.4byte 0x40A00000


.global lbl_80668960
lbl_80668960:
	# ROM: 0x5727C0
	.4byte 0x4222F983


.global lbl_80668964
lbl_80668964:
	# ROM: 0x5727C4
	.4byte 0x3DCCCCCD


.global lbl_80668968
lbl_80668968:
	# ROM: 0x5727C8
	.4byte 0xBFC00000


.global lbl_8066896C
lbl_8066896C:
	# ROM: 0x5727CC
	.4byte 0x40400000


.global lbl_80668970
lbl_80668970:
	# ROM: 0x5727D0
	.4byte 0x3CC90FDB


.global lbl_80668974
lbl_80668974:
	# ROM: 0x5727D4
	.4byte 0x38D1B717


.global lbl_80668978
lbl_80668978:
	# ROM: 0x5727D8
	.4byte 0xC2700000


.global lbl_8066897C
lbl_8066897C:
	# ROM: 0x5727DC
	.4byte 0x45610000


.global lbl_80668980
lbl_80668980:
	# ROM: 0x5727E0
	.4byte 0x3A83126F


.global lbl_80668984
lbl_80668984:
	# ROM: 0x5727E4
	.4byte 0x3E800000


.global lbl_80668988
lbl_80668988:
	# ROM: 0x5727E8
	.4byte 0x3BD1B717


.global lbl_8066898C
lbl_8066898C:
	# ROM: 0x5727EC
	.4byte 0x3DA3D70A


.global lbl_80668990
lbl_80668990:
	# ROM: 0x5727F0
	.4byte 0x3E4CCCCD


.global lbl_80668994
lbl_80668994:
	# ROM: 0x5727F4
	.4byte 0x3FB33333


.global lbl_80668998
lbl_80668998:
	# ROM: 0x5727F8
	.4byte 0x3E000000


.global lbl_8066899C
lbl_8066899C:
	# ROM: 0x5727FC
	.4byte 0x3F333333


.global lbl_806689A0
lbl_806689A0:
	# ROM: 0x572800
	.4byte 0x3E400000


.global lbl_806689A4
lbl_806689A4:
	# ROM: 0x572804
	.4byte 0x3E333333


.global lbl_806689A8
lbl_806689A8:
	# ROM: 0x572808
	.4byte 0x3F555555


.global lbl_806689AC
lbl_806689AC:
	# ROM: 0x57280C
	.4byte 0x3C23D70B


.global lbl_806689B0
lbl_806689B0:
	# ROM: 0x572810
	.4byte 0xC0000000


.global lbl_806689B4
lbl_806689B4:
	# ROM: 0x572814
	.4byte 0xC1700000


.global lbl_806689B8
lbl_806689B8:
	# ROM: 0x572818
	.4byte 0x3F733333


.global lbl_806689BC
lbl_806689BC:
	# ROM: 0x57281C
	.4byte 0xC0A00000


.global lbl_806689C0
lbl_806689C0:
	# ROM: 0x572820
	.4byte 0xC9742400


.global lbl_806689C4
lbl_806689C4:
	# ROM: 0x572824
	.4byte 0x42C80000


.global lbl_806689C8
lbl_806689C8:
	# ROM: 0x572828
	.4byte 0xBDCCCCCD


.global lbl_806689CC
lbl_806689CC:
	# ROM: 0x57282C
	.4byte 0xBE19999A


.global lbl_806689D0
lbl_806689D0:
	# ROM: 0x572830
	.4byte 0xBE800000


.global lbl_806689D4
lbl_806689D4:
	# ROM: 0x572834
	.4byte 0x3CA3D70A


.global lbl_806689D8
lbl_806689D8:
	# ROM: 0x572838
	.4byte 0x3DD1B717


.global lbl_806689DC
lbl_806689DC:
	# ROM: 0x57283C
	.4byte 0xBE99999A


.global lbl_806689E0
lbl_806689E0:
	# ROM: 0x572840
	.4byte 0x41200000


.global lbl_806689E4
lbl_806689E4:
	# ROM: 0x572844
	.4byte 0x43480000


.global lbl_806689E8
lbl_806689E8:
	# ROM: 0x572848
	.4byte 0xC0400000


.global lbl_806689EC
lbl_806689EC:
	# ROM: 0x57284C
	.4byte 0x3D4CCCCD


.global lbl_806689F0
lbl_806689F0:
	# ROM: 0x572850
	.4byte 0x45800000
	.4byte 0


.global lbl_806689F8
lbl_806689F8:
	# ROM: 0x572858
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80668A00
lbl_80668A00:
	# ROM: 0x572860
	.4byte 0


.global lbl_80668A04
lbl_80668A04:
	# ROM: 0x572864
	.4byte 0x3F800000
	.asciz "select"
	.balign 4
	.asciz "restore"
	.asciz "setPos"
	.balign 4
	.asciz "setDir"
	.balign 4
	.asciz "setRotX"
	.asciz "setRotY"
	.asciz "setFov"
	.balign 4
	.asciz "getPos"
	.balign 4
	.asciz "getRot"
	.balign 4
	.asciz "keyEnd"
	.balign 4
	.asciz "keyAdd"
	.balign 4
	.asciz "shake"
	.balign 4
	.asciz "get"
	.asciz "enable"
	.balign 4
	.4byte 0
	.asciz "KYP"
	.asciz "DAP1"
	.balign 4
	.4byte 0


.global lbl_80668A88
lbl_80668A88:
	# ROM: 0x5728E8
	.4byte 0


.global lbl_80668A8C
lbl_80668A8C:
	# ROM: 0x5728EC
	.4byte 0x40400000


.global lbl_80668A90
lbl_80668A90:
	# ROM: 0x5728F0
	.4byte 0x42F00000


.global lbl_80668A94
lbl_80668A94:
	# ROM: 0x5728F4
	.4byte 0x3F800000


.global lbl_80668A98
lbl_80668A98:
	# ROM: 0x5728F8
	.4byte 0x41F00000


.global lbl_80668A9C
lbl_80668A9C:
	# ROM: 0x5728FC
	.4byte 0x3F99999A


.global lbl_80668AA0
lbl_80668AA0:
	# ROM: 0x572900
	.4byte 0x3F800000
	.4byte 0


.global lbl_80668AA8
lbl_80668AA8:
	# ROM: 0x572908
	.4byte 0x43300000
	.4byte 0


.global lbl_80668AB0
lbl_80668AB0:
	# ROM: 0x572910
	.4byte 0x4728C000
	.4byte 0


.global lbl_80668AB8
lbl_80668AB8:
	# ROM: 0x572918
	.4byte 0x40E51800
	.4byte 0


.global lbl_80668AC0
lbl_80668AC0:
	# ROM: 0x572920
	.4byte 0


.global lbl_80668AC4
lbl_80668AC4:
	# ROM: 0x572924
	.4byte 0x44E10000


.global lbl_80668AC8
lbl_80668AC8:
	# ROM: 0x572928
	.4byte 0x40380000
	.4byte 0


.global lbl_80668AD0
lbl_80668AD0:
	# ROM: 0x572930
	.4byte 0x41F00000
	.4byte 0


.global lbl_80668AD8
lbl_80668AD8:
	# ROM: 0x572938
	.4byte 0x404E0000
	.4byte 0


.global lbl_80668AE0
lbl_80668AE0:
	# ROM: 0x572940
	.4byte 0x40000000
	.4byte 0


.global lbl_80668AE8
lbl_80668AE8:
	# ROM: 0x572948
	.4byte 0x403E0000
	.4byte 0


.global lbl_80668AF0
lbl_80668AF0:
	# ROM: 0x572950
	.4byte 0


.global lbl_80668AF4
lbl_80668AF4:
	# ROM: 0x572954
	.4byte 0x40000000


.global lbl_80668AF8
lbl_80668AF8:
	# ROM: 0x572958
	.4byte 0x40400000


.global lbl_80668AFC
lbl_80668AFC:
	# ROM: 0x57295C
	.4byte 0x3DCCCCCD


.global lbl_80668B00
lbl_80668B00:
	# ROM: 0x572960
	.4byte 0x3F000000


.global lbl_80668B04
lbl_80668B04:
	# ROM: 0x572964
	.4byte 0xBF800000


.global lbl_80668B08
lbl_80668B08:
	# ROM: 0x572968
	.4byte 0x3F800000


.global lbl_80668B0C
lbl_80668B0C:
	# ROM: 0x57296C
	.4byte 0x40A00000
	.asciz "High"
	.balign 4
	.asciz "Normal"
	.balign 4
	.4byte 0x4C6F7700


.global lbl_80668B24
lbl_80668B24:
	# ROM: 0x572984
	.4byte 0x3C23D70A


.global lbl_80668B28
lbl_80668B28:
	# ROM: 0x572988
	.4byte 0x3DCCCCCD
	.4byte 0


.global lbl_80668B30
lbl_80668B30:
	# ROM: 0x572990
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80668B38
lbl_80668B38:
	# ROM: 0x572998
	.4byte 0x3D3851EC


.global lbl_80668B3C
lbl_80668B3C:
	# ROM: 0x57299C
	.4byte 0x3F266666


.global lbl_80668B40
lbl_80668B40:
	# ROM: 0x5729A0
	.4byte 0x41000000


.global lbl_80668B44
lbl_80668B44:
	# ROM: 0x5729A4
	.4byte 0x41A00000


.global lbl_80668B48
lbl_80668B48:
	# ROM: 0x5729A8
	.4byte 0x41F00000


.global lbl_80668B4C
lbl_80668B4C:
	# ROM: 0x5729AC
	.4byte 0x41400000


.global lbl_80668B50
lbl_80668B50:
	# ROM: 0x5729B0
	.4byte 0x41900000


.global lbl_80668B54
lbl_80668B54:
	# ROM: 0x5729B4
	.4byte 0x3FA00000


.global lbl_80668B58
lbl_80668B58:
	# ROM: 0x5729B8
	.4byte 0x3F800000


.global lbl_80668B5C
lbl_80668B5C:
	# ROM: 0x5729BC
	.4byte 0xC2200000


.global lbl_80668B60
lbl_80668B60:
	# ROM: 0x5729C0
	.4byte 0x3F400000


.global lbl_80668B64
lbl_80668B64:
	# ROM: 0x5729C4
	.4byte 0


.global lbl_80668B68
lbl_80668B68:
	# ROM: 0x5729C8
	.4byte 0x3E800000


.global lbl_80668B6C
lbl_80668B6C:
	# ROM: 0x5729CC
	.4byte 0x4222F983


.global lbl_80668B70
lbl_80668B70:
	# ROM: 0x5729D0
	.4byte 0x3F847AE1
	.4byte 0x40000000


.global lbl_80668B78
lbl_80668B78:
	# ROM: 0x5729D8
	.4byte 0x3ECCCCCD


.global lbl_80668B7C
lbl_80668B7C:
	# ROM: 0x5729DC
	.4byte 0x3D8F5C29


.global lbl_80668B80
lbl_80668B80:
	# ROM: 0x5729E0
	.4byte 0x3E99999A


.global lbl_80668B84
lbl_80668B84:
	# ROM: 0x5729E4
	.4byte 0x40F00000


.global lbl_80668B88
lbl_80668B88:
	# ROM: 0x5729E8
	.4byte 0x42200000


.global lbl_80668B8C
lbl_80668B8C:
	# ROM: 0x5729EC
	.4byte 0x3F000000


.global lbl_80668B90
lbl_80668B90:
	# ROM: 0x5729F0
	.4byte 0x40000000


.global lbl_80668B94
lbl_80668B94:
	# ROM: 0x5729F4
	.4byte 0x41C00000


.global lbl_80668B98
lbl_80668B98:
	# ROM: 0x5729F8
	.4byte 0x42340000


.global lbl_80668B9C
lbl_80668B9C:
	# ROM: 0x5729FC
	.4byte 0x3E051EB8


.global lbl_80668BA0
lbl_80668BA0:
	# ROM: 0x572A00
	.4byte 0x3F4CCCCD


.global lbl_80668BA4
lbl_80668BA4:
	# ROM: 0x572A04
	.4byte 0x3F051EB8


.global lbl_80668BA8
lbl_80668BA8:
	# ROM: 0x572A08
	.4byte 0x40C00000


.global lbl_80668BAC
lbl_80668BAC:
	# ROM: 0x572A0C
	.4byte 0x42B40000


.global lbl_80668BB0
lbl_80668BB0:
	# ROM: 0x572A10
	.4byte 0x40800000


.global lbl_80668BB4
lbl_80668BB4:
	# ROM: 0x572A14
	.4byte 0x3CC90FDB


.global lbl_80668BB8
lbl_80668BB8:
	# ROM: 0x572A18
	.4byte 0x41200000


.global lbl_80668BBC
lbl_80668BBC:
	# ROM: 0x572A1C
	.4byte 0x40A00000


.global lbl_80668BC0
lbl_80668BC0:
	# ROM: 0x572A20
	.4byte 0xBF19999A


.global lbl_80668BC4
lbl_80668BC4:
	# ROM: 0x572A24
	.4byte 0x38D1B717


.global lbl_80668BC8
lbl_80668BC8:
	# ROM: 0x572A28
	.4byte 0xBE2E147B


.global lbl_80668BCC
lbl_80668BCC:
	# ROM: 0x572A2C
	.4byte 0x3A83126F


.global lbl_80668BD0
lbl_80668BD0:
	# ROM: 0x572A30
	.4byte 0x3F733333


.global lbl_80668BD4
lbl_80668BD4:
	# ROM: 0x572A34
	.4byte 0x3E4CCCCD


.global lbl_80668BD8
lbl_80668BD8:
	# ROM: 0x572A38
	.4byte 0x3F19999A


.global lbl_80668BDC
lbl_80668BDC:
	# ROM: 0x572A3C
	.4byte 0x3F333333


.global lbl_80668BE0
lbl_80668BE0:
	# ROM: 0x572A40
	.4byte 0xBF800000


.global lbl_80668BE4
lbl_80668BE4:
	# ROM: 0x572A44
	.4byte 0x42820000


.global lbl_80668BE8
lbl_80668BE8:
	# ROM: 0x572A48
	.4byte 0x3FA66666


.global lbl_80668BEC
lbl_80668BEC:
	# ROM: 0x572A4C
	.4byte 0x3E19999A


.global lbl_80668BF0
lbl_80668BF0:
	# ROM: 0x572A50
	.4byte 0x3BE56042


.global lbl_80668BF4
lbl_80668BF4:
	# ROM: 0x572A54
	.4byte 0x3D4CCCCD


.global lbl_80668BF8
lbl_80668BF8:
	# ROM: 0x572A58
	.4byte 0x41100000


.global lbl_80668BFC
lbl_80668BFC:
	# ROM: 0x572A5C
	.4byte 0x3727C5AC


.global lbl_80668C00
lbl_80668C00:
	# ROM: 0x572A60
	.4byte 0x41800000
	.4byte 0


.global lbl_80668C08
lbl_80668C08:
	# ROM: 0x572A68
	.4byte 0
	.4byte 0


.global lbl_80668C10
lbl_80668C10:
	# ROM: 0x572A70
	.4byte 0x3D800000


.global lbl_80668C14
lbl_80668C14:
	# ROM: 0x572A74
	.4byte 0x3F666666


.global lbl_80668C18
lbl_80668C18:
	# ROM: 0x572A78
	.4byte 0x41700000


.global lbl_80668C1C
lbl_80668C1C:
	# ROM: 0x572A7C
	.4byte 0x3DB851EC


.global lbl_80668C20
lbl_80668C20:
	# ROM: 0x572A80
	.4byte 0x3D75C28F


.global lbl_80668C24
lbl_80668C24:
	# ROM: 0x572A84
	.4byte 0x3F8CCCCD


.global lbl_80668C28
lbl_80668C28:
	# ROM: 0x572A88
	.4byte 0xC0A00000


.global lbl_80668C2C
lbl_80668C2C:
	# ROM: 0x572A8C
	.4byte 0x3F75C28F


.global lbl_80668C30
lbl_80668C30:
	# ROM: 0x572A90
	.4byte 0x3FE66666


.global lbl_80668C34
lbl_80668C34:
	# ROM: 0x572A94
	.4byte 0x40E00000


.global lbl_80668C38
lbl_80668C38:
	# ROM: 0x572A98
	.4byte 0x40400000


.global lbl_80668C3C
lbl_80668C3C:
	# ROM: 0x572A9C
	.4byte 0x420C0000


.global lbl_80668C40
lbl_80668C40:
	# ROM: 0x572AA0
	.4byte 0xBE99999A


.global lbl_80668C44
lbl_80668C44:
	# ROM: 0x572AA4
	.4byte 0x3BA3D70A


.global lbl_80668C48
lbl_80668C48:
	# ROM: 0x572AA8
	.4byte 0x3F99999A


.global lbl_80668C4C
lbl_80668C4C:
	# ROM: 0x572AAC
	.4byte 0xC0000000


.global lbl_80668C50
lbl_80668C50:
	# ROM: 0x572AB0
	.4byte 0x3CA3D70A


.global lbl_80668C54
lbl_80668C54:
	# ROM: 0x572AB4
	.4byte 0xBF666666


.global lbl_80668C58
lbl_80668C58:
	# ROM: 0x572AB8
	.4byte 0xBF7FBE77


.global lbl_80668C5C
lbl_80668C5C:
	# ROM: 0x572ABC
	.4byte 0x3F7FBE77
	.4byte 0
	.asciz "JUhead"
	.balign 4
	.asciz "JUhd_L"
	.balign 4
	.asciz "JUhd_R"
	.balign 4
	.asciz "JLhip"
	.balign 4
	.asciz "JLft_L"
	.balign 4
	.asciz "JLft_R"
	.balign 4


.global lbl_80668C94
lbl_80668C94:
	# ROM: 0x572AF4
	.4byte 0xC0900000


.global lbl_80668C98
lbl_80668C98:
	# ROM: 0x572AF8
	.4byte 0x428C0000


.global lbl_80668C9C
lbl_80668C9C:
	# ROM: 0x572AFC
	.4byte 0xC2A00000


.global lbl_80668CA0
lbl_80668CA0:
	# ROM: 0x572B00
	.4byte 0x3F000000


.global lbl_80668CA4
lbl_80668CA4:
	# ROM: 0x572B04
	.4byte 0


.global lbl_80668CA8
lbl_80668CA8:
	# ROM: 0x572B08
	.4byte 0x43300000
	.4byte 0


.global lbl_80668CB0
lbl_80668CB0:
	# ROM: 0x572B10
	.4byte 0x3F800000


.global lbl_80668CB4
lbl_80668CB4:
	# ROM: 0x572B14
	.4byte 0x3A83126F


.global lbl_80668CB8
lbl_80668CB8:
	# ROM: 0x572B18
	.4byte 0x4222F983
	.4byte 0


.global lbl_80668CC0
lbl_80668CC0:
	# ROM: 0x572B20
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80668CC8
lbl_80668CC8:
	# ROM: 0x572B28
	.4byte 0x42200000


.global lbl_80668CCC
lbl_80668CCC:
	# ROM: 0x572B2C
	.4byte 0x3E800000


.global lbl_80668CD0
lbl_80668CD0:
	# ROM: 0x572B30
	.4byte 0x3FC00000


.global lbl_80668CD4
lbl_80668CD4:
	# ROM: 0x572B34
	.4byte 0x3F4CCCCD


.global lbl_80668CD8
lbl_80668CD8:
	# ROM: 0x572B38
	.4byte 0x3E99999A


.global lbl_80668CDC
lbl_80668CDC:
	# ROM: 0x572B3C
	.4byte 0x3CC90FDB


.global lbl_80668CE0
lbl_80668CE0:
	# ROM: 0x572B40
	.4byte 0x3C23D70A


.global lbl_80668CE4
lbl_80668CE4:
	# ROM: 0x572B44
	.4byte 0x40800000


.global lbl_80668CE8
lbl_80668CE8:
	# ROM: 0x572B48
	.4byte 0x41F00000


.global lbl_80668CEC
lbl_80668CEC:
	# ROM: 0x572B4C
	.4byte 0x3E4CCCCD


.global lbl_80668CF0
lbl_80668CF0:
	# ROM: 0x572B50
	.4byte 0xBF800000


.global lbl_80668CF4
lbl_80668CF4:
	# ROM: 0x572B54
	.4byte 0x40A00000


.global lbl_80668CF8
lbl_80668CF8:
	# ROM: 0x572B58
	.4byte 0x41200000


.global lbl_80668CFC
lbl_80668CFC:
	# ROM: 0x572B5C
	.4byte 0x3CA3D70A


.global lbl_80668D00
lbl_80668D00:
	# ROM: 0x572B60
	.4byte 0x3CF5C28F


.global lbl_80668D04
lbl_80668D04:
	# ROM: 0x572B64
	.4byte 0x3D4CCCCD


.global lbl_80668D08
lbl_80668D08:
	# ROM: 0x572B68
	.4byte 0x3DCCCCCD


.global lbl_80668D0C
lbl_80668D0C:
	# ROM: 0x572B6C
	.4byte 0x3DA3D70A


.global lbl_80668D10
lbl_80668D10:
	# ROM: 0x572B70
	.4byte 0x3E051EB8


.global lbl_80668D14
lbl_80668D14:
	# ROM: 0x572B74
	.4byte 0x3EE66666


.global lbl_80668D18
lbl_80668D18:
	# ROM: 0x572B78
	.4byte 0x3F19999A
	.4byte 0


.global lbl_80668D20
lbl_80668D20:
	# ROM: 0x572B80
	.4byte 0


.global lbl_80668D24
lbl_80668D24:
	# ROM: 0x572B84
	.4byte 0x3F800000


.global lbl_80668D28
lbl_80668D28:
	# ROM: 0x572B88
	.4byte 0x41F00000


.global lbl_80668D2C
lbl_80668D2C:
	# ROM: 0x572B8C
	.4byte 0x42700000
	.4byte 0x62303100
	.4byte 0x62303200
	.4byte 0x62303300
	.4byte 0x62303400
	.4byte 0x62303500
	.4byte 0x62303600
	.4byte 0x62303700
	.4byte 0x62303800
	.4byte 0x62303900
	.4byte 0x62313000
	.4byte 0x62313100
	.4byte 0x62313200
	.4byte 0x62313300
	.4byte 0x62313400
	.4byte 0x62313500
	.4byte 0x62313600
	.4byte 0x62313700
	.4byte 0x62313800
	.4byte 0x62313900
	.4byte 0x62323000


.global lbl_80668D80
lbl_80668D80:
	# ROM: 0x572BE0
	.4byte 0x42340000
	.4byte 0


.global lbl_80668D88
lbl_80668D88:
	# ROM: 0x572BE8
	.4byte 0
	.4byte 0


.global lbl_80668D90
lbl_80668D90:
	# ROM: 0x572BF0
	.4byte 0x40200000


.global lbl_80668D94
lbl_80668D94:
	# ROM: 0x572BF4
	.4byte 0x3F266666


.global lbl_80668D98
lbl_80668D98:
	# ROM: 0x572BF8
	.4byte 0x3F333333


.global lbl_80668D9C
lbl_80668D9C:
	# ROM: 0x572BFC
	.4byte 0x3FC00000


.global lbl_80668DA0
lbl_80668DA0:
	# ROM: 0x572C00
	.4byte 0x3FE00000
	.4byte 0


.global lbl_80668DA8
lbl_80668DA8:
	# ROM: 0x572C08
	.4byte 0xBFE00000
	.4byte 0


.global lbl_80668DB0
lbl_80668DB0:
	# ROM: 0x572C10
	.4byte 0x43300000
	.4byte 0


.global lbl_80668DB8
lbl_80668DB8:
	# ROM: 0x572C18
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80668DC0
lbl_80668DC0:
	# ROM: 0x572C20
	.4byte 0x41A00000


.global lbl_80668DC4
lbl_80668DC4:
	# ROM: 0x572C24
	.4byte 0x41200000


.global lbl_80668DC8
lbl_80668DC8:
	# ROM: 0x572C28
	.4byte 0x40400000


.global lbl_80668DCC
lbl_80668DCC:
	# ROM: 0x572C2C
	.4byte 0x3E800000


.global lbl_80668DD0
lbl_80668DD0:
	# ROM: 0x572C30
	.4byte 0x40000000


.global lbl_80668DD4
lbl_80668DD4:
	# ROM: 0x572C34
	.4byte 0x461C4000


.global lbl_80668DD8
lbl_80668DD8:
	# ROM: 0x572C38
	.4byte 0x3C23D70A


.global lbl_80668DDC
lbl_80668DDC:
	# ROM: 0x572C3C
	.4byte 0x447A0000


.global lbl_80668DE0
lbl_80668DE0:
	# ROM: 0x572C40
	.4byte 0x42A00000


.global lbl_80668DE4
lbl_80668DE4:
	# ROM: 0x572C44
	.4byte 0x42C80000


.global lbl_80668DE8
lbl_80668DE8:
	# ROM: 0x572C48
	.4byte 0x43B40000


.global lbl_80668DEC
lbl_80668DEC:
	# ROM: 0x572C4C
	.4byte 0x41100000


.global lbl_80668DF0
lbl_80668DF0:
	# ROM: 0x572C50
	.4byte 0x437F0000


.global lbl_80668DF4
lbl_80668DF4:
	# ROM: 0x572C54
	.4byte 0x40A00000


.global lbl_80668DF8
lbl_80668DF8:
	# ROM: 0x572C58
	.4byte 0


.global lbl_80668DFC
lbl_80668DFC:
	# ROM: 0x572C5C
	.4byte 0x41200000


.global lbl_80668E00
lbl_80668E00:
	# ROM: 0x572C60
	.4byte 0x40800000


.global lbl_80668E04
lbl_80668E04:
	# ROM: 0x572C64
	.4byte 0x3F800000


.global lbl_80668E08
lbl_80668E08:
	# ROM: 0x572C68
	.4byte 0x3E19999A


.global lbl_80668E0C
lbl_80668E0C:
	# ROM: 0x572C6C
	.4byte 0x42C80000


.global lbl_80668E10
lbl_80668E10:
	# ROM: 0x572C70
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80668E18
lbl_80668E18:
	# ROM: 0x572C78
	.4byte 0x41F00000
	.4byte 0


.global lbl_80668E20
lbl_80668E20:
	# ROM: 0x572C80
	.4byte 0x40800000


.global lbl_80668E24
lbl_80668E24:
	# ROM: 0x572C84
	.4byte 0x3DCCCCCD


.global lbl_80668E28
lbl_80668E28:
	# ROM: 0x572C88
	.4byte 0


.global lbl_80668E2C
lbl_80668E2C:
	# ROM: 0x572C8C
	.4byte 0x3F800000


.global lbl_80668E30
lbl_80668E30:
	# ROM: 0x572C90
	.4byte 0xC0000000


.global lbl_80668E34
lbl_80668E34:
	# ROM: 0x572C94
	.4byte 0x3CC90FDB


.global lbl_80668E38
lbl_80668E38:
	# ROM: 0x572C98
	.4byte 0x42200000


.global lbl_80668E3C
lbl_80668E3C:
	# ROM: 0x572C9C
	.4byte 0x4222F983


.global lbl_80668E40
lbl_80668E40:
	# ROM: 0x572CA0
	.4byte 0xC0800000


.global lbl_80668E44
lbl_80668E44:
	# ROM: 0x572CA4
	.4byte 0x3F350481


.global lbl_80668E48
lbl_80668E48:
	# ROM: 0x572CA8
	.4byte 0


.global lbl_80668E4C
lbl_80668E4C:
	# ROM: 0x572CAC
	.4byte 0x41200000


.global lbl_80668E50
lbl_80668E50:
	# ROM: 0x572CB0
	.4byte 0x3F333333


.global lbl_80668E54
lbl_80668E54:
	# ROM: 0x572CB4
	.4byte 0x4222F983


.global lbl_80668E58
lbl_80668E58:
	# ROM: 0x572CB8
	.4byte 0x3FC00000


.global lbl_80668E5C
lbl_80668E5C:
	# ROM: 0x572CBC
	.4byte 0x40400000


.global lbl_80668E60
lbl_80668E60:
	# ROM: 0x572CC0
	.4byte 0xC1400000


.global lbl_80668E64
lbl_80668E64:
	# ROM: 0x572CC4
	.4byte 0x3F350481


.global lbl_80668E68
lbl_80668E68:
	# ROM: 0x572CC8
	.4byte 0x41A00000


.global lbl_80668E6C
lbl_80668E6C:
	# ROM: 0x572CCC
	.4byte 0x3F800000


.global lbl_80668E70
lbl_80668E70:
	# ROM: 0x572CD0
	.4byte 0x42B40000


.global lbl_80668E74
lbl_80668E74:
	# ROM: 0x572CD4
	.4byte 0x43160000


.global lbl_80668E78
lbl_80668E78:
	# ROM: 0x572CD8
	.4byte 0x3DCCCCCD


.global lbl_80668E7C
lbl_80668E7C:
	# ROM: 0x572CDC
	.4byte 0x40800000


.global lbl_80668E80
lbl_80668E80:
	# ROM: 0x572CE0
	.4byte 0x42700000


.global lbl_80668E84
lbl_80668E84:
	# ROM: 0x572CE4
	.4byte 0x44610000


.global lbl_80668E88
lbl_80668E88:
	# ROM: 0x572CE8
	.4byte 0x44160000


.global lbl_80668E8C
lbl_80668E8C:
	# ROM: 0x572CEC
	.4byte 0x461C4000


.global lbl_80668E90
lbl_80668E90:
	# ROM: 0x572CF0
	.4byte 0x451C4000


.global lbl_80668E94
lbl_80668E94:
	# ROM: 0x572CF4
	.4byte 0x47610000


.global lbl_80668E98
lbl_80668E98:
	# ROM: 0x572CF8
	.4byte 0x3E99999A


.global lbl_80668E9C
lbl_80668E9C:
	# ROM: 0x572CFC
	.4byte 0xC1A00000


.global lbl_80668EA0
lbl_80668EA0:
	# ROM: 0x572D00
	.4byte 0x42C80000


.global lbl_80668EA4
lbl_80668EA4:
	# ROM: 0x572D04
	.4byte 0x3F000000


.global lbl_80668EA8
lbl_80668EA8:
	# ROM: 0x572D08
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80668EB0
lbl_80668EB0:
	# ROM: 0x572D10
	.4byte 0x40000000


.global lbl_80668EB4
lbl_80668EB4:
	# ROM: 0x572D14
	.4byte 0xC1000000


.global lbl_80668EB8
lbl_80668EB8:
	# ROM: 0x572D18
	.4byte 0x3F8CCCCD


.global lbl_80668EBC
lbl_80668EBC:
	# ROM: 0x572D1C
	.4byte 0x3F63D70A


.global lbl_80668EC0
lbl_80668EC0:
	# ROM: 0x572D20
	.4byte 0x3CC90FDB


.global lbl_80668EC4
lbl_80668EC4:
	# ROM: 0x572D24
	.4byte 0xBF800000


.global lbl_80668EC8
lbl_80668EC8:
	# ROM: 0x572D28
	.4byte 0x3E800000


.global lbl_80668ECC
lbl_80668ECC:
	# ROM: 0x572D2C
	.4byte 0x42200000


.global lbl_80668ED0
lbl_80668ED0:
	# ROM: 0x572D30
	.4byte 0x41F00000
	.4byte 0


.global lbl_80668ED8
lbl_80668ED8:
	# ROM: 0x572D38
	.4byte 0x43300000
	.4byte 0


.global lbl_80668EE0
lbl_80668EE0:
	# ROM: 0x572D40
	.4byte 0x3C23D70A


.global lbl_80668EE4
lbl_80668EE4:
	# ROM: 0x572D44
	.4byte 0x428C0000


.global lbl_80668EE8
lbl_80668EE8:
	# ROM: 0x572D48
	.4byte 0x42A00000


.global lbl_80668EEC
lbl_80668EEC:
	# ROM: 0x572D4C
	.4byte 0x40A00000


.global lbl_80668EF0
lbl_80668EF0:
	# ROM: 0x572D50
	.4byte 0x3CF5C28F


.global lbl_80668EF4
lbl_80668EF4:
	# ROM: 0x572D54
	.4byte 0x3D4CCCCD


.global lbl_80668EF8
lbl_80668EF8:
	# ROM: 0x572D58
	.4byte 0x41800000


.global lbl_80668EFC
lbl_80668EFC:
	# ROM: 0x572D5C
	.4byte 0x41100000


.global lbl_80668F00
lbl_80668F00:
	# ROM: 0x572D60
	.4byte 0x43610000


.global lbl_80668F04
lbl_80668F04:
	# ROM: 0x572D64
	.4byte 0x3F99999A


.global lbl_80668F08
lbl_80668F08:
	# ROM: 0x572D68
	.4byte 0x41B00000


.global lbl_80668F0C
lbl_80668F0C:
	# ROM: 0x572D6C
	.4byte 0x41400000


.global lbl_80668F10
lbl_80668F10:
	# ROM: 0x572D70
	.4byte 0x40100000


.global lbl_80668F14
lbl_80668F14:
	# ROM: 0x572D74
	.4byte 0x3CA3D70A


.global lbl_80668F18
lbl_80668F18:
	# ROM: 0x572D78
	.4byte 0x3FD9999A


.global lbl_80668F1C
lbl_80668F1C:
	# ROM: 0x572D7C
	.4byte 0x3F6C7E28


.global lbl_80668F20
lbl_80668F20:
	# ROM: 0x572D80
	.4byte 0


.global lbl_80668F24
lbl_80668F24:
	# ROM: 0x572D84
	.4byte 0x41200000


.global lbl_80668F28
lbl_80668F28:
	# ROM: 0x572D88
	.4byte 0x40800000


.global lbl_80668F2C
lbl_80668F2C:
	# ROM: 0x572D8C
	.4byte 0x3F800000


.global lbl_80668F30
lbl_80668F30:
	# ROM: 0x572D90
	.4byte 0x3DCCCCCD


.global lbl_80668F34
lbl_80668F34:
	# ROM: 0x572D94
	.4byte 0x3CC90FDB


.global lbl_80668F38
lbl_80668F38:
	# ROM: 0x572D98
	.4byte 0x40666666


.global lbl_80668F3C
lbl_80668F3C:
	# ROM: 0x572D9C
	.4byte 0x3F4CCCCD


.global lbl_80668F40
lbl_80668F40:
	# ROM: 0x572DA0
	.4byte 0x3C23D70A


.global lbl_80668F44
lbl_80668F44:
	# ROM: 0x572DA4
	.4byte 0x43340000


.global lbl_80668F48
lbl_80668F48:
	# ROM: 0x572DA8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80668F50
lbl_80668F50:
	# ROM: 0x572DB0
	.4byte 0x447A0000


.global lbl_80668F54
lbl_80668F54:
	# ROM: 0x572DB4
	.4byte 0x45610000


.global lbl_80668F58
lbl_80668F58:
	# ROM: 0x572DB8
	.4byte 0x42480000


.global lbl_80668F5C
lbl_80668F5C:
	# ROM: 0x572DBC
	.4byte 0x41100000


.global lbl_80668F60
lbl_80668F60:
	# ROM: 0x572DC0
	.4byte 0x40BCCCCD


.global lbl_80668F64
lbl_80668F64:
	# ROM: 0x572DC4
	.4byte 0xBE570A3D


.global lbl_80668F68
lbl_80668F68:
	# ROM: 0x572DC8
	.4byte 0x40000000


.global lbl_80668F6C
lbl_80668F6C:
	# ROM: 0x572DCC
	.4byte 0x42C80000


.global lbl_80668F70
lbl_80668F70:
	# ROM: 0x572DD0
	.4byte 0x43300000
	.4byte 0


.global lbl_80668F78
lbl_80668F78:
	# ROM: 0x572DD8
	.4byte 0x41000000


.global lbl_80668F7C
lbl_80668F7C:
	# ROM: 0x572DDC
	.4byte 0x3D800000


.global lbl_80668F80
lbl_80668F80:
	# ROM: 0x572DE0
	.4byte 0x3C463F14


.global lbl_80668F84
lbl_80668F84:
	# ROM: 0x572DE4
	.4byte 0x3E99999A


.global lbl_80668F88
lbl_80668F88:
	# ROM: 0x572DE8
	.4byte 0x40A00000


.global lbl_80668F8C
lbl_80668F8C:
	# ROM: 0x572DEC
	.4byte 0x3DB851EC


.global lbl_80668F90
lbl_80668F90:
	# ROM: 0x572DF0
	.4byte 0x3D23D70B


.global lbl_80668F94
lbl_80668F94:
	# ROM: 0x572DF4
	.4byte 0x3E4CCCCD


.global lbl_80668F98
lbl_80668F98:
	# ROM: 0x572DF8
	.4byte 0x3F000000


.global lbl_80668F9C
lbl_80668F9C:
	# ROM: 0x572DFC
	.4byte 0x43B40000


.global lbl_80668FA0
lbl_80668FA0:
	# ROM: 0x572E00
	.4byte 0x3CC90FDB
	.4byte 0


.global lbl_80668FA8
lbl_80668FA8:
	# ROM: 0x572E08
	.4byte 0


.global lbl_80668FAC
lbl_80668FAC:
	# ROM: 0x572E0C
	.4byte 0x41200000


.global lbl_80668FB0
lbl_80668FB0:
	# ROM: 0x572E10
	.4byte 0x41F00000
	.4byte 0


.global lbl_80668FB8
lbl_80668FB8:
	# ROM: 0x572E18
	.4byte 0


.global lbl_80668FBC
lbl_80668FBC:
	# ROM: 0x572E1C
	.4byte 0xC25C0000


.global lbl_80668FC0
lbl_80668FC0:
	# ROM: 0x572E20
	.4byte 0x425C0000
	.4byte 0


.global lbl_80668FC8
lbl_80668FC8:
	# ROM: 0x572E28
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80668FD0
lbl_80668FD0:
	# ROM: 0x572E30
	.4byte 0x42C80000


.global lbl_80668FD4
lbl_80668FD4:
	# ROM: 0x572E34
	.4byte 0x3CC90FDB


.global lbl_80668FD8
lbl_80668FD8:
	# ROM: 0x572E38
	.4byte 0x3ECCCCCD


.global lbl_80668FDC
lbl_80668FDC:
	# ROM: 0x572E3C
	.4byte 0x43610000


.global lbl_80668FE0
lbl_80668FE0:
	# ROM: 0x572E40
	.4byte 0x420C0000


.global lbl_80668FE4
lbl_80668FE4:
	# ROM: 0x572E44
	.4byte 0x430C0000


.global lbl_80668FE8
lbl_80668FE8:
	# ROM: 0x572E48
	.4byte 0xC20C0000


.global lbl_80668FEC
lbl_80668FEC:
	# ROM: 0x572E4C
	.4byte 0xC30C0000


.global lbl_80668FF0
lbl_80668FF0:
	# ROM: 0x572E50
	.4byte 0x3F800000


.global lbl_80668FF4
lbl_80668FF4:
	# ROM: 0x572E54
	.4byte 0x3F4F5C29


.global lbl_80668FF8
lbl_80668FF8:
	# ROM: 0x572E58
	.4byte 0x3C23D70A


.global lbl_80668FFC
lbl_80668FFC:
	# ROM: 0x572E5C
	.4byte 0x3DCCCCCD


.global lbl_80669000
lbl_80669000:
	# ROM: 0x572E60
	.4byte 0x43300000
	.4byte 0


.global lbl_80669008
lbl_80669008:
	# ROM: 0x572E68
	.4byte 0x3FB33333


.global lbl_8066900C
lbl_8066900C:
	# ROM: 0x572E6C
	.4byte 0x3FC00000


.global lbl_80669010
lbl_80669010:
	# ROM: 0x572E70
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669018
lbl_80669018:
	# ROM: 0x572E78
	.4byte 0x42C80000


.global lbl_8066901C
lbl_8066901C:
	# ROM: 0x572E7C
	.4byte 0x40800000


.global lbl_80669020
lbl_80669020:
	# ROM: 0x572E80
	.4byte 0x40000000


.global lbl_80669024
lbl_80669024:
	# ROM: 0x572E84
	.4byte 0x40400000


.global lbl_80669028
lbl_80669028:
	# ROM: 0x572E88
	.4byte 0


.global lbl_8066902C
lbl_8066902C:
	# ROM: 0x572E8C
	.4byte 0x41200000


.global lbl_80669030
lbl_80669030:
	# ROM: 0x572E90
	.4byte 0x61746B3F


.global lbl_80669034
lbl_80669034:
	# ROM: 0x572E94
	.4byte 0
	.asciz "hp_lv99"


.global lbl_80669040
lbl_80669040:
	# ROM: 0x572EA0
	.4byte 0x41C80000


.global lbl_80669044
lbl_80669044:
	# ROM: 0x572EA4
	.4byte 0x42F00000


.global lbl_80669048
lbl_80669048:
	# ROM: 0x572EA8
	.4byte 0x42480000
	.4byte 0


.global lbl_80669050
lbl_80669050:
	# ROM: 0x572EB0
	.4byte 0x61727473


.global lbl_80669054
lbl_80669054:
	# ROM: 0x572EB4
	.4byte 0x3F3F0000


.global lbl_80669058
lbl_80669058:
	# ROM: 0x572EB8
	.4byte 0x40400000


.global lbl_8066905C
lbl_8066905C:
	# ROM: 0x572EBC
	.4byte 0x4222F983


.global lbl_80669060
lbl_80669060:
	# ROM: 0x572EC0
	.4byte 0
	.4byte 0


.global lbl_80669068
lbl_80669068:
	# ROM: 0x572EC8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669070
lbl_80669070:
	# ROM: 0x572ED0
	.4byte 0x3F800000


.global lbl_80669074
lbl_80669074:
	# ROM: 0x572ED4
	.4byte 0x40000000


.global lbl_80669078
lbl_80669078:
	# ROM: 0x572ED8
	.4byte 0xC0000000


.global lbl_8066907C
lbl_8066907C:
	# ROM: 0x572EDC
	.4byte 0x3F000000


.global lbl_80669080
lbl_80669080:
	# ROM: 0x572EE0
	.4byte 0x358637BD


.global lbl_80669084
lbl_80669084:
	# ROM: 0x572EE4
	.4byte 0x3E800000


.global lbl_80669088
lbl_80669088:
	# ROM: 0x572EE8
	.4byte 0xBF800000


.global lbl_8066908C
lbl_8066908C:
	# ROM: 0x572EEC
	.4byte 0x3E99999A


.global lbl_80669090
lbl_80669090:
	# ROM: 0x572EF0
	.4byte 0x40000000
	.4byte 0


.global lbl_80669098
lbl_80669098:
	# ROM: 0x572EF8
	.4byte 0x3F451EB8


.global lbl_8066909C
lbl_8066909C:
	# ROM: 0x572EFC
	.4byte 0x47C35000


.global lbl_806690A0
lbl_806690A0:
	# ROM: 0x572F00
	.4byte 0xC7C35000


.global lbl_806690A4
lbl_806690A4:
	# ROM: 0x572F04
	.4byte 0x3FC00000


.global lbl_806690A8
lbl_806690A8:
	# ROM: 0x572F08
	.4byte 0x3E4CCCCD
	.4byte 0
	.4byte 0
	.4byte 0x6D610000
	.asciz "map/"
	.balign 4
	.asciz ".dap"
	.balign 4
	.asciz "pc"
	.4byte 0
	.byte 0x00
	.asciz "chr/pc/"
	.asciz ".chr"
	.balign 4
	.asciz "np"
	.4byte 0
	.byte 0x00
	.asciz "chr/np/"
	.asciz ".kp"
	.asciz "en"
	.byte 0x00
	.asciz "chr/en/"
	.asciz "wp"
	.4byte 0
	.byte 0x00
	.asciz "chr/wp/"
	.asciz "oj"
	.4byte 0
	.byte 0x00
	.asciz "chr/oj/"
	.asciz "mp"
	.byte 0x00
	.asciz ".mca"
	.balign 4
	.asciz "mn"
	.byte 0x00
	.asciz "me"
	.byte 0x00
	.asciz "mo"
	.byte 0x00
	.asciz "chr/mo/"
	.asciz "mw"
	.byte 0x00
	.asciz "em"
	.byte 0x00
	.asciz "eff/em/"
	.asciz ".rec"
	.balign 4
	.asciz "eg"
	.4byte 0
	.byte 0x00
	.asciz "eff/eg/"
	.4byte 0x65720000
	.4byte 0x65700000
	.4byte 0x65650000
	.4byte 0x656C0000
	.4byte 0x73730000
	.4byte 0
	.asciz "snd/se/"
	.4byte 0x2E736500
	.4byte 0x736D0000
	.4byte 0x73700000
	.4byte 0x73650000
	.4byte 0x736E0000
	.4byte 0x666C0000
	.asciz ".bgm"
	.balign 4
	.4byte 0x76650000
	.4byte 0x62740000
	.4byte 0x646E0000
	.4byte 0x74770000
	.4byte 0x76730000
	.4byte 0x2E740000
	.4byte 0x6D640000
	.4byte 0
	.asciz "map/md/"
	.4byte 0x63630000
	.4byte 0


.global lbl_806691D8
lbl_806691D8:
	# ROM: 0x573038
	.4byte 0


.global lbl_806691DC
lbl_806691DC:
	# ROM: 0x57303C
	.4byte 0x3F800000


.global lbl_806691E0
lbl_806691E0:
	# ROM: 0x573040
	.4byte 0x3E99999A
	.4byte 0


.global lbl_806691E8
lbl_806691E8:
	# ROM: 0x573048
	.4byte 0x43300000
	.4byte 0


.global lbl_806691F0
lbl_806691F0:
	# ROM: 0x573050
	.4byte 0x4222F983


.global lbl_806691F4
lbl_806691F4:
	# ROM: 0x573054
	.4byte 0x3DCCCCCD


.global lbl_806691F8
lbl_806691F8:
	# ROM: 0x573058
	.4byte 0x3F000000


.global lbl_806691FC
lbl_806691FC:
	# ROM: 0x57305C
	.4byte 0x3E19999A


.global lbl_80669200
lbl_80669200:
	# ROM: 0x573060
	.4byte 0x3F333333


.global lbl_80669204
lbl_80669204:
	# ROM: 0x573064
	.4byte 0x3E4CCCCD


.global lbl_80669208
lbl_80669208:
	# ROM: 0x573068
	.4byte 0x3C23D70A


.global lbl_8066920C
lbl_8066920C:
	# ROM: 0x57306C
	.4byte 0x3ECCCCCD


.global lbl_80669210
lbl_80669210:
	# ROM: 0x573070
	.4byte 0x3F400000


.global lbl_80669214
lbl_80669214:
	# ROM: 0x573074
	.4byte 0x41F00000


.global lbl_80669218
lbl_80669218:
	# ROM: 0x573078
	.4byte 0x40400000
	.4byte 0


.global lbl_80669220
lbl_80669220:
	# ROM: 0x573080
	.4byte 0


.global lbl_80669224
lbl_80669224:
	# ROM: 0x573084
	.4byte 0x3F800000


.global lbl_80669228
lbl_80669228:
	# ROM: 0x573088
	.4byte 0x3F000000


.global lbl_8066922C
lbl_8066922C:
	# ROM: 0x57308C
	.4byte 0x447A0000


.global lbl_80669230
lbl_80669230:
	# ROM: 0x573090
	.4byte 0


.global lbl_80669234
lbl_80669234:
	# ROM: 0x573094
	.4byte 0x3F19999A


.global lbl_80669238
lbl_80669238:
	# ROM: 0x573098
	.4byte 0x3FE66666
	.asciz "ene1Lv"
	.balign 4


.global lbl_80669244
lbl_80669244:
	# ROM: 0x5730A4
	.4byte 0x41200000


.global lbl_80669248
lbl_80669248:
	# ROM: 0x5730A8
	.4byte 0x3F800000


.global lbl_8066924C
lbl_8066924C:
	# ROM: 0x5730AC
	.4byte 0x40800000


.global lbl_80669250
lbl_80669250:
	# ROM: 0x5730B0
	.4byte 0x40000000


.global lbl_80669254
lbl_80669254:
	# ROM: 0x5730B4
	.4byte 0x40400000


.global lbl_80669258
lbl_80669258:
	# ROM: 0x5730B8
	.4byte 0x43340000


.global lbl_8066925C
lbl_8066925C:
	# ROM: 0x5730BC
	.4byte 0x42C80000


.global lbl_80669260
lbl_80669260:
	# ROM: 0x5730C0
	.4byte 0x3DCCCCCD
	.4byte 0


.global lbl_80669268
lbl_80669268:
	# ROM: 0x5730C8
	.4byte 0x43300000
	.4byte 0


.global lbl_80669270
lbl_80669270:
	# ROM: 0x5730D0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669278
lbl_80669278:
	# ROM: 0x5730D8
	.4byte 0x3C23D70A


.global lbl_8066927C
lbl_8066927C:
	# ROM: 0x5730DC
	.4byte 0x461C4000


.global lbl_80669280
lbl_80669280:
	# ROM: 0x5730E0
	.4byte 0x3FE00000
	.4byte 0


.global lbl_80669288
lbl_80669288:
	# ROM: 0x5730E8
	.4byte 0xBFE00000
	.4byte 0


.global lbl_80669290
lbl_80669290:
	# ROM: 0x5730F0
	.4byte 0x43340000
	.4byte 0


.global lbl_80669298
lbl_80669298:
	# ROM: 0x5730F8
	.4byte 0x43300000
	.4byte 0


.global lbl_806692A0
lbl_806692A0:
	# ROM: 0x573100
	.4byte 0


.global lbl_806692A4
lbl_806692A4:
	# ROM: 0x573104
	.4byte 0x3F800000


.global lbl_806692A8
lbl_806692A8:
	# ROM: 0x573108
	.4byte 0x43B40000


.global lbl_806692AC
lbl_806692AC:
	# ROM: 0x57310C
	.4byte 0x40400000


.global lbl_806692B0
lbl_806692B0:
	# ROM: 0x573110
	.4byte 0x3F400000


.global lbl_806692B4
lbl_806692B4:
	# ROM: 0x573114
	.4byte 0x3F000000


.global lbl_806692B8
lbl_806692B8:
	# ROM: 0x573118
	.4byte 0x3ECCCCCD


.global lbl_806692BC
lbl_806692BC:
	# ROM: 0x57311C
	.4byte 0x41200000


.global lbl_806692C0
lbl_806692C0:
	# ROM: 0x573120
	.4byte 0x41F00000


.global lbl_806692C4
lbl_806692C4:
	# ROM: 0x573124
	.4byte 0x3DCCCCCD


.global lbl_806692C8
lbl_806692C8:
	# ROM: 0x573128
	.4byte 0x40800000


.global lbl_806692CC
lbl_806692CC:
	# ROM: 0x57312C
	.4byte 0x3F19999A


.global lbl_806692D0
lbl_806692D0:
	# ROM: 0x573130
	.4byte 0x41A00000


.global lbl_806692D4
lbl_806692D4:
	# ROM: 0x573134
	.4byte 0x40000000


.global lbl_806692D8
lbl_806692D8:
	# ROM: 0x573138
	.4byte 0x3FC00000


.global lbl_806692DC
lbl_806692DC:
	# ROM: 0x57313C
	.4byte 0x4B189680


.global lbl_806692E0
lbl_806692E0:
	# ROM: 0x573140
	.4byte 0x42960000
	.4byte 0


.global lbl_806692E8
lbl_806692E8:
	# ROM: 0x573148
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_806692F0
lbl_806692F0:
	# ROM: 0x573150
	.4byte 0x43340000


.global lbl_806692F4
lbl_806692F4:
	# ROM: 0x573154
	.4byte 0x45B04014


.global lbl_806692F8
lbl_806692F8:
	# ROM: 0x573158
	.4byte 0x41700000
	.4byte 0


.global lbl_80669300
lbl_80669300:
	# ROM: 0x573160
	.4byte 0


.global lbl_80669304
lbl_80669304:
	# ROM: 0x573164
	.4byte 0x3F800000


.global lbl_80669308
lbl_80669308:
	# ROM: 0x573168
	.4byte 0x3F000000


.global lbl_8066930C
lbl_8066930C:
	# ROM: 0x57316C
	.4byte 0xBF800000


.global lbl_80669310
lbl_80669310:
	# ROM: 0x573170
	.4byte 0x3E19999A


.global lbl_80669314
lbl_80669314:
	# ROM: 0x573174
	.4byte 0x42380000


.global lbl_80669318
lbl_80669318:
	# ROM: 0x573178
	.4byte 0x3D4CCCCD


.global lbl_8066931C
lbl_8066931C:
	# ROM: 0x57317C
	.4byte 0x42700000


.global lbl_80669320
lbl_80669320:
	# ROM: 0x573180
	.4byte 0x3DAE147B


.global lbl_80669324
lbl_80669324:
	# ROM: 0x573184
	.4byte 0x3DE353F8


.global lbl_80669328
lbl_80669328:
	# ROM: 0x573188
	.4byte 0x3E428F5C


.global lbl_8066932C
lbl_8066932C:
	# ROM: 0x57318C
	.4byte 0x461C4000


.global lbl_80669330
lbl_80669330:
	# ROM: 0x573190
	.4byte 0


.global lbl_80669334
lbl_80669334:
	# ROM: 0x573194
	.4byte 0x3F800000


.global lbl_80669338
lbl_80669338:
	# ROM: 0x573198
	.4byte 0xBF000000


.global lbl_8066933C
lbl_8066933C:
	# ROM: 0x57319C
	.4byte 0x3F350481


.global lbl_80669340
lbl_80669340:
	# ROM: 0x5731A0
	.4byte 0x3E428F5C


.global lbl_80669344
lbl_80669344:
	# ROM: 0x5731A4
	.4byte 0xBFB1EB86


.global lbl_80669348
lbl_80669348:
	# ROM: 0x5731A8
	.4byte 0x3F000000


.global lbl_8066934C
lbl_8066934C:
	# ROM: 0x5731AC
	.4byte 0x447A0000


.global lbl_80669350
lbl_80669350:
	# ROM: 0x5731B0
	.4byte 0


.global lbl_80669354
lbl_80669354:
	# ROM: 0x5731B4
	.4byte 0x3F666666


.global lbl_80669358
lbl_80669358:
	# ROM: 0x5731B8
	.4byte 0x41F00000


.global lbl_8066935C
lbl_8066935C:
	# ROM: 0x5731BC
	.4byte 0x3F800000


.global lbl_80669360
lbl_80669360:
	# ROM: 0x5731C0
	.4byte 0x404F5C28


.global lbl_80669364
lbl_80669364:
	# ROM: 0x5731C4
	.4byte 0x3ECCCCCD


.global lbl_80669368
lbl_80669368:
	# ROM: 0x5731C8
	.4byte 0x3FB33333


.global lbl_8066936C
lbl_8066936C:
	# ROM: 0x5731CC
	.4byte 0x3DCCCCCD


.global lbl_80669370
lbl_80669370:
	# ROM: 0x5731D0
	.4byte 0x3F333333


.global lbl_80669374
lbl_80669374:
	# ROM: 0x5731D4
	.4byte 0x3CF5C28F


.global lbl_80669378
lbl_80669378:
	# ROM: 0x5731D8
	.4byte 0x3D75C28F


.global lbl_8066937C
lbl_8066937C:
	# ROM: 0x5731DC
	.4byte 0x3D4CCCCD


.global lbl_80669380
lbl_80669380:
	# ROM: 0x5731E0
	.4byte 0x3C17B426


.global lbl_80669384
lbl_80669384:
	# ROM: 0x5731E4
	.4byte 0x4222F983


.global lbl_80669388
lbl_80669388:
	# ROM: 0x5731E8
	.4byte 0xBDCCCCCD


.global lbl_8066938C
lbl_8066938C:
	# ROM: 0x5731EC
	.4byte 0x3E99999A


.global lbl_80669390
lbl_80669390:
	# ROM: 0x5731F0
	.4byte 0x41200000


.global lbl_80669394
lbl_80669394:
	# ROM: 0x5731F4
	.4byte 0x461C4000


.global lbl_80669398
lbl_80669398:
	# ROM: 0x5731F8
	.4byte 0x3F000000


.global lbl_8066939C
lbl_8066939C:
	# ROM: 0x5731FC
	.4byte 0x40800000


.global lbl_806693A0
lbl_806693A0:
	# ROM: 0x573200
	.4byte 0x4019999A
	.4byte 0


.global lbl_806693A8
lbl_806693A8:
	# ROM: 0x573208
	.4byte 0


.global lbl_806693AC
lbl_806693AC:
	# ROM: 0x57320C
	.4byte 0x3F19999A


.global lbl_806693B0
lbl_806693B0:
	# ROM: 0x573210
	.4byte 0x3FE66666


.global lbl_806693B4
lbl_806693B4:
	# ROM: 0x573214
	.4byte 0x3DCCCCCD


.global lbl_806693B8
lbl_806693B8:
	# ROM: 0x573218
	.4byte 0x41F00000


.global lbl_806693BC
lbl_806693BC:
	# ROM: 0x57321C
	.4byte 0x41C80000


.global lbl_806693C0
lbl_806693C0:
	# ROM: 0x573220
	.4byte 0x41480000


.global lbl_806693C4
lbl_806693C4:
	# ROM: 0x573224
	.4byte 0x42C80000


.global lbl_806693C8
lbl_806693C8:
	# ROM: 0x573228
	.4byte 0x43300000
	.4byte 0


.global lbl_806693D0
lbl_806693D0:
	# ROM: 0x573230
	.4byte 0x4200CCCD


.global lbl_806693D4
lbl_806693D4:
	# ROM: 0x573234
	.4byte 0x3F19999A


.global lbl_806693D8
lbl_806693D8:
	# ROM: 0x573238
	.4byte 0x3FE66666


.global lbl_806693DC
lbl_806693DC:
	# ROM: 0x57323C
	.4byte 0


.global lbl_806693E0
lbl_806693E0:
	# ROM: 0x573240
	.4byte 0x4200CCCD


.global lbl_806693E4
lbl_806693E4:
	# ROM: 0x573244
	.4byte 0x3E1F0197


.global lbl_806693E8
lbl_806693E8:
	# ROM: 0x573248
	.4byte 0x4180CCCD


.global lbl_806693EC
lbl_806693EC:
	# ROM: 0x57324C
	.4byte 0x3F800000


.global lbl_806693F0
lbl_806693F0:
	# ROM: 0x573250
	.4byte 0x42C80000
	.4byte 0


.global lbl_806693F8
lbl_806693F8:
	# ROM: 0x573258
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669400
lbl_80669400:
	# ROM: 0x573260
	.4byte 0x3C23D70A
	.4byte 0


.global lbl_80669408
lbl_80669408:
	# ROM: 0x573268
	.4byte 0x43300000
	.4byte 0


.global lbl_80669410
lbl_80669410:
	# ROM: 0x573270
	.4byte 0


.global lbl_80669414
lbl_80669414:
	# ROM: 0x573274
	.4byte 0xBF800000


.global lbl_80669418
lbl_80669418:
	# ROM: 0x573278
	.4byte 0x40A00000
	.4byte 0
	.4byte 0x63687200
	.4byte 0x616E6D00
	.4byte 0x6F626A00
	.asciz "effect"
	.balign 4
	.asciz "mapse"
	.balign 4
	.asciz "pack"
	.balign 4
	.4byte 0


.global lbl_80669448
lbl_80669448:
	# ROM: 0x5732A8
	.4byte 0x42A00000


.global lbl_8066944C
lbl_8066944C:
	# ROM: 0x5732AC
	.4byte 0


.global lbl_80669450
lbl_80669450:
	# ROM: 0x5732B0
	.4byte 0x3F000000


.global lbl_80669454
lbl_80669454:
	# ROM: 0x5732B4
	.4byte 0x3F800000


.global lbl_80669458
lbl_80669458:
	# ROM: 0x5732B8
	.4byte 0x40A00000
	.4byte 0


.global lbl_80669460
lbl_80669460:
	# ROM: 0x5732C0
	.4byte 0x43300000
	.4byte 0


.global lbl_80669468
lbl_80669468:
	# ROM: 0x5732C8
	.4byte 0x41700000


.global lbl_8066946C
lbl_8066946C:
	# ROM: 0x5732CC
	.4byte 0x41A00000


.global lbl_80669470
lbl_80669470:
	# ROM: 0x5732D0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669478
lbl_80669478:
	# ROM: 0x5732D8
	.4byte 0x3F4CCCCD


.global lbl_8066947C
lbl_8066947C:
	# ROM: 0x5732DC
	.4byte 0xC0C00000


.global lbl_80669480
lbl_80669480:
	# ROM: 0x5732E0
	.4byte 0x41F00000


.global lbl_80669484
lbl_80669484:
	# ROM: 0x5732E4
	.4byte 0x3F19999A


.global lbl_80669488
lbl_80669488:
	# ROM: 0x5732E8
	.4byte 0x3CA3D70A
	.4byte 0


.global lbl_80669490
lbl_80669490:
	# ROM: 0x5732F0
	.4byte 0x3F800000


.global lbl_80669494
lbl_80669494:
	# ROM: 0x5732F4
	.4byte 0


.global lbl_80669498
lbl_80669498:
	# ROM: 0x5732F8
	.4byte 0x3C23D70A
	.4byte 0


.global lbl_806694A0
lbl_806694A0:
	# ROM: 0x573300
	.4byte 0x43300000
	.4byte 0


.global lbl_806694A8
lbl_806694A8:
	# ROM: 0x573308
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_806694B0
lbl_806694B0:
	# ROM: 0x573310
	.4byte 0x42C80000


.global lbl_806694B4
lbl_806694B4:
	# ROM: 0x573314
	.4byte 0x3E19999A


.global lbl_806694B8
lbl_806694B8:
	# ROM: 0x573318
	.4byte 0xBF800000


.global lbl_806694BC
lbl_806694BC:
	# ROM: 0x57331C
	.4byte 0x41200000


.global lbl_806694C0
lbl_806694C0:
	# ROM: 0x573320
	.4byte 0x41F00000


.global lbl_806694C4
lbl_806694C4:
	# ROM: 0x573324
	.4byte 0x41700000


.global lbl_806694C8
lbl_806694C8:
	# ROM: 0x573328
	.4byte 0xC1200000
	.4byte 0
	.asciz "np02030"
	.asciz "np63010"
	.asciz "np66010"
	.asciz "np67010"
	.asciz "np71010"
	.asciz "np73010"
	.asciz "np76010"
	.asciz "np77010"
	.asciz "np81010"
	.asciz "np45080"
	.asciz "JUneck"
	.balign 4


.global lbl_80669528
lbl_80669528:
	# ROM: 0x573388
	.4byte 0


.global lbl_8066952C
lbl_8066952C:
	# ROM: 0x57338C
	.4byte 0x3F800000


.global lbl_80669530
lbl_80669530:
	# ROM: 0x573390
	.4byte 0x40800000


.global lbl_80669534
lbl_80669534:
	# ROM: 0x573394
	.4byte 0x3F19999A


.global lbl_80669538
lbl_80669538:
	# ROM: 0x573398
	.4byte 0x40000000


.global lbl_8066953C
lbl_8066953C:
	# ROM: 0x57339C
	.4byte 0x3C23D70A


.global lbl_80669540
lbl_80669540:
	# ROM: 0x5733A0
	.4byte 0x42C80000


.global lbl_80669544
lbl_80669544:
	# ROM: 0x5733A4
	.4byte 0xBC23D70A


.global lbl_80669548
lbl_80669548:
	# ROM: 0x5733A8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669550
lbl_80669550:
	# ROM: 0x5733B0
	.asciz "?fff"
	.balign 4


.global lbl_80669558
lbl_80669558:
	# ROM: 0x5733B8
	.4byte 0x43300000
	.4byte 0


.global lbl_80669560
lbl_80669560:
	# ROM: 0x5733C0
	.4byte 0x41F00000


.global lbl_80669564
lbl_80669564:
	# ROM: 0x5733C4
	.4byte 0x3DCCCCCD


.global lbl_80669568
lbl_80669568:
	# ROM: 0x5733C8
	.4byte 0xC0800000


.global lbl_8066956C
lbl_8066956C:
	# ROM: 0x5733CC
	.4byte 0x41600000


.global lbl_80669570
lbl_80669570:
	# ROM: 0x5733D0
	.4byte 0x3E99999A


.global lbl_80669574
lbl_80669574:
	# ROM: 0x5733D4
	.4byte 0xBF800000


.global lbl_80669578
lbl_80669578:
	# ROM: 0x5733D8
	.4byte 0xC0C00000


.global lbl_8066957C
lbl_8066957C:
	# ROM: 0x5733DC
	.4byte 0x3D4CCCCD


.global lbl_80669580
lbl_80669580:
	# ROM: 0x5733E0
	.4byte 0x3D23D70A


.global lbl_80669584
lbl_80669584:
	# ROM: 0x5733E4
	.4byte 0x3F000000


.global lbl_80669588
lbl_80669588:
	# ROM: 0x5733E8
	.4byte 0x4222F983


.global lbl_8066958C
lbl_8066958C:
	# ROM: 0x5733EC
	.4byte 0xBF7FF972


.global lbl_80669590
lbl_80669590:
	# ROM: 0x5733F0
	.4byte 0x3CC90FDB


.global lbl_80669594
lbl_80669594:
	# ROM: 0x5733F4
	.4byte 0xC0400000


.global lbl_80669598
lbl_80669598:
	# ROM: 0x5733F8
	.4byte 0x41400000


.global lbl_8066959C
lbl_8066959C:
	# ROM: 0x5733FC
	.4byte 0x41000000
	.asciz "en0153"
	.balign 4


.global lbl_806695A8
lbl_806695A8:
	# ROM: 0x573408
	.4byte 0x3CA3D70A


.global lbl_806695AC
lbl_806695AC:
	# ROM: 0x57340C
	.4byte 0


.global lbl_806695B0
lbl_806695B0:
	# ROM: 0x573410
	.4byte 0x41A00000


.global lbl_806695B4
lbl_806695B4:
	# ROM: 0x573414
	.4byte 0x3F800000


.global lbl_806695B8
lbl_806695B8:
	# ROM: 0x573418
	.4byte 0x3F051EB8


.global lbl_806695BC
lbl_806695BC:
	# ROM: 0x57341C
	.4byte 0x3CC90FDB


.global lbl_806695C0
lbl_806695C0:
	# ROM: 0x573420
	.4byte 0


.global lbl_806695C4
lbl_806695C4:
	# ROM: 0x573424
	.4byte 0x3F800000


.global lbl_806695C8
lbl_806695C8:
	# ROM: 0x573428
	.4byte 0x4479C000


.global lbl_806695CC
lbl_806695CC:
	# ROM: 0x57342C
	.4byte 0x40000000


.global lbl_806695D0
lbl_806695D0:
	# ROM: 0x573430
	.4byte 0x40600000


.global lbl_806695D4
lbl_806695D4:
	# ROM: 0x573434
	.4byte 0x3F000000


.global lbl_806695D8
lbl_806695D8:
	# ROM: 0x573438
	.4byte 0x3F333333


.global lbl_806695DC
lbl_806695DC:
	# ROM: 0x57343C
	.4byte 0x3F666666


.global lbl_806695E0
lbl_806695E0:
	# ROM: 0x573440
	.4byte 0x40400000


.global lbl_806695E4
lbl_806695E4:
	# ROM: 0x573444
	.4byte 0x461C3C00


.global lbl_806695E8
lbl_806695E8:
	# ROM: 0x573448
	.4byte 0x3DCCCCCD


.global lbl_806695EC
lbl_806695EC:
	# ROM: 0x57344C
	.4byte 0x3F4F5C29


.global lbl_806695F0
lbl_806695F0:
	# ROM: 0x573450
	.4byte 0x41400000


.global lbl_806695F4
lbl_806695F4:
	# ROM: 0x573454
	.4byte 0x41900000


.global lbl_806695F8
lbl_806695F8:
	# ROM: 0x573458
	.4byte 0x3FB99999
	.4byte 0x9999999A


.global lbl_80669600
lbl_80669600:
	# ROM: 0x573460
	.4byte 0x42080000


.global lbl_80669604
lbl_80669604:
	# ROM: 0x573464
	.4byte 0x41200000


.global lbl_80669608
lbl_80669608:
	# ROM: 0x573468
	.4byte 0x3CC90FDB


.global lbl_8066960C
lbl_8066960C:
	# ROM: 0x57346C
	.4byte 0x41F00000


.global lbl_80669610
lbl_80669610:
	# ROM: 0x573470
	.4byte 0x42700000


.global lbl_80669614
lbl_80669614:
	# ROM: 0x573474
	.4byte 0x42C80000


.global lbl_80669618
lbl_80669618:
	# ROM: 0x573478
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669620
lbl_80669620:
	# ROM: 0x573480
	.4byte 0x3D088889


.global lbl_80669624
lbl_80669624:
	# ROM: 0x573484
	.4byte 0x3C17B426


.global lbl_80669628
lbl_80669628:
	# ROM: 0x573488
	.4byte 0x41A00000


.global lbl_8066962C
lbl_8066962C:
	# ROM: 0x57348C
	.4byte 0x42480000


.global lbl_80669630
lbl_80669630:
	# ROM: 0x573490
	.4byte 0xBF800000


.global lbl_80669634
lbl_80669634:
	# ROM: 0x573494
	.4byte 0x3E800000


.global lbl_80669638
lbl_80669638:
	# ROM: 0x573498
	.4byte 0x3E8E38E4
	.4byte 0


.global lbl_80669640
lbl_80669640:
	# ROM: 0x5734A0
	.4byte 0x43300000
	.4byte 0


.global lbl_80669648
lbl_80669648:
	# ROM: 0x5734A8
	.4byte 0x4222F983


.global lbl_8066964C
lbl_8066964C:
	# ROM: 0x5734AC
	.4byte 0xC0400000


.global lbl_80669650
lbl_80669650:
	# ROM: 0x5734B0
	.4byte 0x42B40000


.global lbl_80669654
lbl_80669654:
	# ROM: 0x5734B4
	.4byte 0xC2B40000


.global lbl_80669658
lbl_80669658:
	# ROM: 0x5734B8
	.4byte 0x43340000


.global lbl_8066965C
lbl_8066965C:
	# ROM: 0x5734BC
	.4byte 0x420C0000


.global lbl_80669660
lbl_80669660:
	# ROM: 0x5734C0
	.4byte 0x430C0000


.global lbl_80669664
lbl_80669664:
	# ROM: 0x5734C4
	.4byte 0xC20C0000


.global lbl_80669668
lbl_80669668:
	# ROM: 0x5734C8
	.4byte 0xC30C0000


.global lbl_8066966C
lbl_8066966C:
	# ROM: 0x5734CC
	.4byte 0x40800000


.global lbl_80669670
lbl_80669670:
	# ROM: 0x5734D0
	.4byte 0xC9742400


.global lbl_80669674
lbl_80669674:
	# ROM: 0x5734D4
	.4byte 0x3F4CCCCD


.global lbl_80669678
lbl_80669678:
	# ROM: 0x5734D8
	.4byte 0xC1500000


.global lbl_8066967C
lbl_8066967C:
	# ROM: 0x5734DC
	.4byte 0x40100000


.global lbl_80669680
lbl_80669680:
	# ROM: 0x5734E0
	.4byte 0x40A00000


.global lbl_80669684
lbl_80669684:
	# ROM: 0x5734E4
	.4byte 0x3F99999A


.global lbl_80669688
lbl_80669688:
	# ROM: 0x5734E8
	.4byte 0x3FCCCCCD


.global lbl_8066968C
lbl_8066968C:
	# ROM: 0x5734EC
	.4byte 0x3FC00000


.global lbl_80669690
lbl_80669690:
	# ROM: 0x5734F0
	.4byte 0x432A0000


.global lbl_80669694
lbl_80669694:
	# ROM: 0x5734F4
	.4byte 0xC32A0000


.global lbl_80669698
lbl_80669698:
	# ROM: 0x5734F8
	.4byte 0x3F19999A


.global lbl_8066969C
lbl_8066969C:
	# ROM: 0x5734FC
	.4byte 0x3F800000


.global lbl_806696A0
lbl_806696A0:
	# ROM: 0x573500
	.4byte 0x3C23D70A


.global lbl_806696A4
lbl_806696A4:
	# ROM: 0x573504
	.4byte 0


.global lbl_806696A8
lbl_806696A8:
	# ROM: 0x573508
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_806696B0
lbl_806696B0:
	# ROM: 0x573510
	.4byte 0x3F000000


.global lbl_806696B4
lbl_806696B4:
	# ROM: 0x573514
	.4byte 0x3D088889


.global lbl_806696B8
lbl_806696B8:
	# ROM: 0x573518
	.4byte 0x41A00000


.global lbl_806696BC
lbl_806696BC:
	# ROM: 0x57351C
	.4byte 0x41700000


.global lbl_806696C0
lbl_806696C0:
	# ROM: 0x573520
	.4byte 0x41C80000


.global lbl_806696C4
lbl_806696C4:
	# ROM: 0x573524
	.4byte 0x40000000


.global lbl_806696C8
lbl_806696C8:
	# ROM: 0x573528
	.4byte 0x42C80000
	.4byte 0


.global lbl_806696D0
lbl_806696D0:
	# ROM: 0x573530
	.4byte 0x43300000
	.4byte 0


.global lbl_806696D8
lbl_806696D8:
	# ROM: 0x573538
	.4byte 0x3CC90FDB


.global lbl_806696DC
lbl_806696DC:
	# ROM: 0x57353C
	.4byte 0x42BE0000


.global lbl_806696E0
lbl_806696E0:
	# ROM: 0x573540
	.4byte 0x42480000


.global lbl_806696E4
lbl_806696E4:
	# ROM: 0x573544
	.4byte 0x3E800000


.global lbl_806696E8
lbl_806696E8:
	# ROM: 0x573548
	.4byte 0x43480000


.global lbl_806696EC
lbl_806696EC:
	# ROM: 0x57354C
	.4byte 0x3E19999A


.global lbl_806696F0
lbl_806696F0:
	# ROM: 0x573550
	.4byte 0x42B40000


.global lbl_806696F4
lbl_806696F4:
	# ROM: 0x573554
	.4byte 0xBF800000


.global lbl_806696F8
lbl_806696F8:
	# ROM: 0x573558
	.4byte 0x3F666666


.global lbl_806696FC
lbl_806696FC:
	# ROM: 0x57355C
	.4byte 0x41200000


.global lbl_80669700
lbl_80669700:
	# ROM: 0x573560
	.4byte 0x3F400000


.global lbl_80669704
lbl_80669704:
	# ROM: 0x573564
	.4byte 0x3FC00000


.global lbl_80669708
lbl_80669708:
	# ROM: 0x573568
	.4byte 0x3FA00000
	.4byte 0


.global lbl_80669710
lbl_80669710:
	# ROM: 0x573570
	.4byte 0x3FF00000
	.4byte 0


.global lbl_80669718
lbl_80669718:
	# ROM: 0x573578
	.4byte 0x43160000


.global lbl_8066971C
lbl_8066971C:
	# ROM: 0x57357C
	.4byte 0x42000000


.global lbl_80669720
lbl_80669720:
	# ROM: 0x573580
	.4byte 0x3FE00000
	.4byte 0


.global lbl_80669728
lbl_80669728:
	# ROM: 0x573588
	.4byte 0xBFE00000
	.4byte 0


.global lbl_80669730
lbl_80669730:
	# ROM: 0x573590
	.4byte 0x40400000


.global lbl_80669734
lbl_80669734:
	# ROM: 0x573594
	.4byte 0x40A00000


.global lbl_80669738
lbl_80669738:
	# ROM: 0x573598
	.4byte 0x3EB33333


.global lbl_8066973C
lbl_8066973C:
	# ROM: 0x57359C
	.4byte 0x3C23D70B


.global lbl_80669740
lbl_80669740:
	# ROM: 0x5735A0
	.4byte 0x41F00000


.global lbl_80669744
lbl_80669744:
	# ROM: 0x5735A4
	.4byte 0x42960000


.global lbl_80669748
lbl_80669748:
	# ROM: 0x5735A8
	.4byte 0x40200000


.global lbl_8066974C
lbl_8066974C:
	# ROM: 0x5735AC
	.4byte 0x3DCCCCCD


.global lbl_80669750
lbl_80669750:
	# ROM: 0x5735B0
	.4byte 0x42C60000
	.4byte 0


.global lbl_80669758
lbl_80669758:
	# ROM: 0x5735B8
	.4byte 0
	.4byte 0


.global lbl_80669760
lbl_80669760:
	# ROM: 0x5735C0
	.4byte 0x3FE00000
	.4byte 0


.global lbl_80669768
lbl_80669768:
	# ROM: 0x5735C8
	.4byte 0xBFE00000
	.4byte 0


.global lbl_80669770
lbl_80669770:
	# ROM: 0x5735D0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669778
lbl_80669778:
	# ROM: 0x5735D8
	.4byte 0x3F800000
	.4byte 0


.global lbl_80669780
lbl_80669780:
	# ROM: 0x5735E0
	.4byte 0


.global lbl_80669784
lbl_80669784:
	# ROM: 0x5735E4
	.4byte 0x3F800000


.global lbl_80669788
lbl_80669788:
	# ROM: 0x5735E8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669790
lbl_80669790:
	# ROM: 0x5735F0
	.4byte 0x3E4CCCCD


.global lbl_80669794
lbl_80669794:
	# ROM: 0x5735F4
	.4byte 0x3DCCCCCD


.global lbl_80669798
lbl_80669798:
	# ROM: 0x5735F8
	.4byte 0x3CC90FDB


.global lbl_8066979C
lbl_8066979C:
	# ROM: 0x5735FC
	.4byte 0x3F000000


.global lbl_806697A0
lbl_806697A0:
	# ROM: 0x573600
	.4byte 0x4222F983
	.4byte 0


.global lbl_806697A8
lbl_806697A8:
	# ROM: 0x573608
	.4byte 0
	.4byte 0


.global lbl_806697B0
lbl_806697B0:
	# ROM: 0x573610
	.4byte 0x3FF00000
	.4byte 0


.global lbl_806697B8
lbl_806697B8:
	# ROM: 0x573618
	.4byte 0xBF800000
	.4byte 0


.global lbl_806697C0
lbl_806697C0:
	# ROM: 0x573620
	.4byte 0


.global lbl_806697C4
lbl_806697C4:
	# ROM: 0x573624
	.4byte 0x3CC90FDB


.global lbl_806697C8
lbl_806697C8:
	# ROM: 0x573628
	.4byte 0x3F000000


.global lbl_806697CC
lbl_806697CC:
	# ROM: 0x57362C
	.4byte 0x3C23D70A


.global lbl_806697D0
lbl_806697D0:
	# ROM: 0x573630
	.4byte 0x41600000


.global lbl_806697D4
lbl_806697D4:
	# ROM: 0x573634
	.4byte 0x41900000


.global lbl_806697D8
lbl_806697D8:
	# ROM: 0x573638
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_806697E0
lbl_806697E0:
	# ROM: 0x573640
	.4byte 0x3F800000


.global lbl_806697E4
lbl_806697E4:
	# ROM: 0x573644
	.4byte 0
	.asciz "IUICf"
	.balign 4


.global lbl_806697F0
lbl_806697F0:
	# ROM: 0x573650
	.4byte 0


.global lbl_806697F4
lbl_806697F4:
	# ROM: 0x573654
	.4byte 0x3F800000


.global lbl_806697F8
lbl_806697F8:
	# ROM: 0x573658
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669800
lbl_80669800:
	# ROM: 0x573660
	.4byte 0x43300000
	.4byte 0


.global lbl_80669808
lbl_80669808:
	# ROM: 0x573668
	.4byte 0xC2A00000


.global lbl_8066980C
lbl_8066980C:
	# ROM: 0x57366C
	.4byte 0xBF800000


.global lbl_80669810
lbl_80669810:
	# ROM: 0x573670
	.4byte 0x00000106


.global lbl_80669814
lbl_80669814:
	# ROM: 0x573674
	.4byte 0x05000000


.global lbl_80669818
lbl_80669818:
	# ROM: 0x573678
	.4byte 0x42C80000


.global lbl_8066981C
lbl_8066981C:
	# ROM: 0x57367C
	.4byte 0x00000106


.global lbl_80669820
lbl_80669820:
	# ROM: 0x573680
	.4byte 0x05000000


.global lbl_80669824
lbl_80669824:
	# ROM: 0x573684
	.4byte 0x41200000


.global lbl_80669828
lbl_80669828:
	# ROM: 0x573688
	.4byte 0x44610000


.global lbl_8066982C
lbl_8066982C:
	# ROM: 0x57368C
	.4byte 0x441C4000


.global lbl_80669830
lbl_80669830:
	# ROM: 0x573690
	.4byte 0


.global lbl_80669834
lbl_80669834:
	# ROM: 0x573694
	.4byte 0x3F800000


.global lbl_80669838
lbl_80669838:
	# ROM: 0x573698
	.4byte 0x43A00000


.global lbl_8066983C
lbl_8066983C:
	# ROM: 0x57369C
	.4byte 0x43600000


.global lbl_80669840
lbl_80669840:
	# ROM: 0x5736A0
	.4byte 0xBF800000


.global lbl_80669844
lbl_80669844:
	# ROM: 0x5736A4
	.4byte 0x41C80000


.global lbl_80669848
lbl_80669848:
	# ROM: 0x5736A8
	.4byte 0x3F000000
	.4byte 0


.global lbl_80669850
lbl_80669850:
	# ROM: 0x5736B0
	.4byte 0x43300000
	.4byte 0


.global lbl_80669858
lbl_80669858:
	# ROM: 0x5736B8
	.4byte 0x3F800000


.global lbl_8066985C
lbl_8066985C:
	# ROM: 0x5736BC
	.4byte 0


.global lbl_80669860
lbl_80669860:
	# ROM: 0x5736C0
	.4byte 0x42DC0000


.global lbl_80669864
lbl_80669864:
	# ROM: 0x5736C4
	.4byte 0x42AC0000


.global lbl_80669868
lbl_80669868:
	# ROM: 0x5736C8
	.4byte 0xC3320000
	.4byte 0


.global lbl_80669870
lbl_80669870:
	# ROM: 0x5736D0
	.4byte 0x43300000
	.4byte 0


.global lbl_80669878
lbl_80669878:
	# ROM: 0x5736D8
	.4byte 0xBF800000
	.4byte 0


.global lbl_80669880
lbl_80669880:
	# ROM: 0x5736E0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669888
lbl_80669888:
	# ROM: 0x5736E8
	.4byte 0x42C80000


.global lbl_8066988C
lbl_8066988C:
	# ROM: 0x5736EC
	.4byte 0x43B40000


.global lbl_80669890
lbl_80669890:
	# ROM: 0x5736F0
	.4byte 0x42A40000


.global lbl_80669894
lbl_80669894:
	# ROM: 0x5736F4
	.4byte 0x3F000000


.global lbl_80669898
lbl_80669898:
	# ROM: 0x5736F8
	.4byte 0x41200000


.global lbl_8066989C
lbl_8066989C:
	# ROM: 0x5736FC
	.4byte 0x41600000


.global lbl_806698A0
lbl_806698A0:
	# ROM: 0x573700
	.4byte 0x3E4CCCCD


.global lbl_806698A4
lbl_806698A4:
	# ROM: 0x573704
	.4byte 0x42700000


.global lbl_806698A8
lbl_806698A8:
	# ROM: 0x573708
	.4byte 0x42480000


.global lbl_806698AC
lbl_806698AC:
	# ROM: 0x57370C
	.4byte 0x41700000


.global lbl_806698B0
lbl_806698B0:
	# ROM: 0x573710
	.4byte 0x3F800000


.global lbl_806698B4
lbl_806698B4:
	# ROM: 0x573714
	.4byte 0


.global lbl_806698B8
lbl_806698B8:
	# ROM: 0x573718
	.4byte 0x43A00000


.global lbl_806698BC
lbl_806698BC:
	# ROM: 0x57371C
	.4byte 0x43600000


.global lbl_806698C0
lbl_806698C0:
	# ROM: 0x573720
	.4byte 0xBF800000


.global lbl_806698C4
lbl_806698C4:
	# ROM: 0x573724
	.4byte 0x43200000


.global lbl_806698C8
lbl_806698C8:
	# ROM: 0x573728
	.4byte 0x41800000


.global lbl_806698CC
lbl_806698CC:
	# ROM: 0x57372C
	.4byte 0x3F000000


.global lbl_806698D0
lbl_806698D0:
	# ROM: 0x573730
	.4byte 0x42340000


.global lbl_806698D4
lbl_806698D4:
	# ROM: 0x573734
	.4byte 0x3D4CCCCD


.global lbl_806698D8
lbl_806698D8:
	# ROM: 0x573738
	.4byte 0x4222F983


.global lbl_806698DC
lbl_806698DC:
	# ROM: 0x57373C
	.4byte 0x461C4000


.global lbl_806698E0
lbl_806698E0:
	# ROM: 0x573740
	.4byte 0x3FAAAAAB


.global lbl_806698E4
lbl_806698E4:
	# ROM: 0x573744
	.4byte 0x43340000


.global lbl_806698E8
lbl_806698E8:
	# ROM: 0x573748
	.4byte 0x42EC0000


.global lbl_806698EC
lbl_806698EC:
	# ROM: 0x57374C
	.4byte 0x42400000


.global lbl_806698F0
lbl_806698F0:
	# ROM: 0x573750
	.4byte 0x42100000


.global lbl_806698F4
lbl_806698F4:
	# ROM: 0x573754
	.4byte 0x40000000


.global lbl_806698F8
lbl_806698F8:
	# ROM: 0x573758
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669900
lbl_80669900:
	# ROM: 0x573760
	.4byte 0x42700000


.global lbl_80669904
lbl_80669904:
	# ROM: 0x573764
	.4byte 0x0F091012


.global lbl_80669908
lbl_80669908:
	# ROM: 0x573768
	.4byte 0x42BC0000


.global lbl_8066990C
lbl_8066990C:
	# ROM: 0x57376C
	.4byte 0x42C00000


.global lbl_80669910
lbl_80669910:
	# ROM: 0x573770
	.4byte 0x3F333333


.global lbl_80669914
lbl_80669914:
	# ROM: 0x573774
	.4byte 0x42380000


.global lbl_80669918
lbl_80669918:
	# ROM: 0x573778
	.4byte 0x42140000


.global lbl_8066991C
lbl_8066991C:
	# ROM: 0x57377C
	.4byte 0x41F80000


.global lbl_80669920
lbl_80669920:
	# ROM: 0x573780
	.4byte 0


.global lbl_80669924
lbl_80669924:
	# ROM: 0x573784
	.4byte 0x3F800000


.global lbl_80669928
lbl_80669928:
	# ROM: 0x573788
	.4byte 0x41C80000
	.4byte 0


.global lbl_80669930
lbl_80669930:
	# ROM: 0x573790
	.4byte 0x43300000
	.4byte 0


.global lbl_80669938
lbl_80669938:
	# ROM: 0x573798
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669940
lbl_80669940:
	# ROM: 0x5737A0
	.4byte 0
	.4byte 0


.global lbl_80669948
lbl_80669948:
	# ROM: 0x5737A8
	.4byte 0x43300000
	.4byte 0
	.asciz "txt_obj"


.global lbl_80669958
lbl_80669958:
	# ROM: 0x5737B8
	.4byte 0


.global lbl_8066995C
lbl_8066995C:
	# ROM: 0x5737BC
	.4byte 0x42340000


.global lbl_80669960
lbl_80669960:
	# ROM: 0x5737C0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669968
lbl_80669968:
	# ROM: 0x5737C8
	.4byte 0x42700000


.global lbl_8066996C
lbl_8066996C:
	# ROM: 0x5737CC
	.4byte 0x3F800000


.global lbl_80669970
lbl_80669970:
	# ROM: 0x5737D0
	.4byte 0x43300000
	.4byte 0


.global lbl_80669978
lbl_80669978:
	# ROM: 0x5737D8
	.4byte 0x3DCCCCCD


.global lbl_8066997C
lbl_8066997C:
	# ROM: 0x5737DC
	.4byte 0x3F000000


.global lbl_80669980
lbl_80669980:
	# ROM: 0x5737E0
	.4byte 0x42100000


.global lbl_80669984
lbl_80669984:
	# ROM: 0x5737E4
	.4byte 0x43340000


.global lbl_80669988
lbl_80669988:
	# ROM: 0x5737E8
	.4byte 0xBF800000
	.asciz "CMMTex"
	.balign 4


.global lbl_80669994
lbl_80669994:
	# ROM: 0x5737F4
	.4byte 0x41300000


.global lbl_80669998
lbl_80669998:
	# ROM: 0x5737F8
	.4byte 0x000000FF


.global lbl_8066999C
lbl_8066999C:
	# ROM: 0x5737FC
	.4byte 0


.global lbl_806699A0
lbl_806699A0:
	# ROM: 0x573800
	.4byte 0x41200000


.global lbl_806699A4
lbl_806699A4:
	# ROM: 0x573804
	.4byte 0x41A00000


.global lbl_806699A8
lbl_806699A8:
	# ROM: 0x573808
	.4byte 0x41F00000


.global lbl_806699AC
lbl_806699AC:
	# ROM: 0x57380C
	.4byte 0x42700000


.global lbl_806699B0
lbl_806699B0:
	# ROM: 0x573810
	.4byte 0x3F800000


.global lbl_806699B4
lbl_806699B4:
	# ROM: 0x573814
	.4byte 0x44610000


.global lbl_806699B8
lbl_806699B8:
	# ROM: 0x573818
	.4byte 0x3FA66666


.global lbl_806699BC
lbl_806699BC:
	# ROM: 0x57381C
	.4byte 0x3FAAAAAB


.global lbl_806699C0
lbl_806699C0:
	# ROM: 0x573820
	.4byte 0x43340000


.global lbl_806699C4
lbl_806699C4:
	# ROM: 0x573824
	.4byte 0x43A00000


.global lbl_806699C8
lbl_806699C8:
	# ROM: 0x573828
	.4byte 0x43600000


.global lbl_806699CC
lbl_806699CC:
	# ROM: 0x57382C
	.4byte 0xBF800000


.global lbl_806699D0
lbl_806699D0:
	# ROM: 0x573830
	.4byte 0x42000000


.global lbl_806699D4
lbl_806699D4:
	# ROM: 0x573834
	.4byte 0xC3600000


.global lbl_806699D8
lbl_806699D8:
	# ROM: 0x573838
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_806699E0
lbl_806699E0:
	# ROM: 0x573840
	.4byte 0x3CC90FDB


.global lbl_806699E4
lbl_806699E4:
	# ROM: 0x573844
	.4byte 0x4222F983


.global lbl_806699E8
lbl_806699E8:
	# ROM: 0x573848
	.4byte 0x3DCCCCCD


.global lbl_806699EC
lbl_806699EC:
	# ROM: 0x57384C
	.4byte 0x447A0000


.global lbl_806699F0
lbl_806699F0:
	# ROM: 0x573850
	.4byte 0x437F0000


.global lbl_806699F4
lbl_806699F4:
	# ROM: 0x573854
	.4byte 0xC3C80000


.global lbl_806699F8
lbl_806699F8:
	# ROM: 0x573858
	.4byte 0xBF000000
	.4byte 0


.global lbl_80669A00
lbl_80669A00:
	# ROM: 0x573860
	.4byte 0x40000000


.global lbl_80669A04
lbl_80669A04:
	# ROM: 0x573864
	.4byte 0


.global lbl_80669A08
lbl_80669A08:
	# ROM: 0x573868
	.4byte 0x3F800000


.global lbl_80669A0C
lbl_80669A0C:
	# ROM: 0x57386C
	.4byte 0x0306090C


.global lbl_80669A10
lbl_80669A10:
	# ROM: 0x573870
	.4byte 0x0F000000


.global lbl_80669A14
lbl_80669A14:
	# ROM: 0x573874
	.4byte 0x3C23D70A


.global lbl_80669A18
lbl_80669A18:
	# ROM: 0x573878
	.4byte 0x3FE00000
	.4byte 0


.global lbl_80669A20
lbl_80669A20:
	# ROM: 0x573880
	.4byte 0xBFE00000
	.4byte 0


.global lbl_80669A28
lbl_80669A28:
	# ROM: 0x573888
	.4byte 0x43300000
	.4byte 0
	.asciz "nul_yes"
	.asciz "nul_no"
	.balign 4


.global lbl_80669A40
lbl_80669A40:
	# ROM: 0x5738A0
	.4byte 0x80669A30


.global lbl_80669A44
lbl_80669A44:
	# ROM: 0x5738A4
	.4byte 0x80669A38
	.4byte 0x00440045
	.4byte 0x00460000


.global lbl_80669A50
lbl_80669A50:
	# ROM: 0x5738B0
	.4byte 0x00FF00FF


.global lbl_80669A54
lbl_80669A54:
	# ROM: 0x5738B4
	.4byte 0x00FF0000
	.4byte 0x004E0000
	.4byte 0x00500000
	.4byte 0x00440045
	.4byte 0x004C0000
	.4byte 0x0043004F
	.4byte 0x004C0000
	.4byte 0x00430000
	.4byte 0
	.4byte 0x0050004F
	.4byte 0x00530000
	.4byte 0x004A0041
	.4byte 0x00570000
	.4byte 0x00530045
	.4byte 0x004C0000
	.4byte 0x00410043
	.4byte 0x00540000
	.4byte 0x00510053
	.4byte 0x00540000
	.4byte 0x0049004E
	.4byte 0x00560000
	.4byte 0x00450058
	.4byte 0
	.4byte 0x00530048
	.4byte 0x00500000


.global lbl_80669AB8
lbl_80669AB8:
	# ROM: 0x573918
	.4byte 0


.global lbl_80669ABC
lbl_80669ABC:
	# ROM: 0x57391C
	.4byte 0x3F800000


.global lbl_80669AC0
lbl_80669AC0:
	# ROM: 0x573920
	.4byte 0x40000000
	.4byte 0


.global lbl_80669AC8
lbl_80669AC8:
	# ROM: 0x573928
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669AD0
lbl_80669AD0:
	# ROM: 0x573930
	.4byte 0x40400000


.global lbl_80669AD4
lbl_80669AD4:
	# ROM: 0x573934
	.4byte 0x41800000


.global lbl_80669AD8
lbl_80669AD8:
	# ROM: 0x573938
	.4byte 0x42E00000


.global lbl_80669ADC
lbl_80669ADC:
	# ROM: 0x57393C
	.4byte 0x42300000


.global lbl_80669AE0
lbl_80669AE0:
	# ROM: 0x573940
	.4byte 0x43200000


.global lbl_80669AE4
lbl_80669AE4:
	# ROM: 0x573944
	.4byte 0x43DC0000


.global lbl_80669AE8
lbl_80669AE8:
	# ROM: 0x573948
	.4byte 0x43D80000


.global lbl_80669AEC
lbl_80669AEC:
	# ROM: 0x57394C
	.4byte 0x40C00000


.global lbl_80669AF0
lbl_80669AF0:
	# ROM: 0x573950
	.4byte 0x3F000000


.global lbl_80669AF4
lbl_80669AF4:
	# ROM: 0x573954
	.4byte 0x42380000


.global lbl_80669AF8
lbl_80669AF8:
	# ROM: 0x573958
	.4byte 0x428C0000


.global lbl_80669AFC
lbl_80669AFC:
	# ROM: 0x57395C
	.4byte 0x41A00000


.global lbl_80669B00
lbl_80669B00:
	# ROM: 0x573960
	.4byte 0x42800000


.global lbl_80669B04
lbl_80669B04:
	# ROM: 0x573964
	.4byte 0x432A0000


.global lbl_80669B08
lbl_80669B08:
	# ROM: 0x573968
	.4byte 0x43160000


.global lbl_80669B0C
lbl_80669B0C:
	# ROM: 0x57396C
	.4byte 0x43020000


.global lbl_80669B10
lbl_80669B10:
	# ROM: 0x573970
	.4byte 0x42DC0000


.global lbl_80669B14
lbl_80669B14:
	# ROM: 0x573974
	.4byte 0x42B40000


.global lbl_80669B18
lbl_80669B18:
	# ROM: 0x573978
	.4byte 0x41200000


.global lbl_80669B1C
lbl_80669B1C:
	# ROM: 0x57397C
	.4byte 0x41700000


.global lbl_80669B20
lbl_80669B20:
	# ROM: 0x573980
	.4byte 0xC3410000


.global lbl_80669B24
lbl_80669B24:
	# ROM: 0x573984
	.4byte 0xBF800000


.global lbl_80669B28
lbl_80669B28:
	# ROM: 0x573988
	.4byte 0x7F7FFFFF


.global lbl_80669B2C
lbl_80669B2C:
	# ROM: 0x57398C
	.4byte 0x3F19999A
	.asciz "win_n"
	.balign 4
	.asciz "win_a"
	.balign 4


.global lbl_80669B40
lbl_80669B40:
	# ROM: 0x5739A0
	.4byte 0x42180000


.global lbl_80669B44
lbl_80669B44:
	# ROM: 0x5739A4
	.4byte 0xBF800000


.global lbl_80669B48
lbl_80669B48:
	# ROM: 0x5739A8
	.4byte 0


.global lbl_80669B4C
lbl_80669B4C:
	# ROM: 0x5739AC
	.4byte 0x3F800000


.global lbl_80669B50
lbl_80669B50:
	# ROM: 0x5739B0
	.4byte 0x43A00000


.global lbl_80669B54
lbl_80669B54:
	# ROM: 0x5739B4
	.4byte 0x43600000


.global lbl_80669B58
lbl_80669B58:
	# ROM: 0x5739B8
	.4byte 0x3F000000


.global lbl_80669B5C
lbl_80669B5C:
	# ROM: 0x5739BC
	.4byte 0x41A00000


.global lbl_80669B60
lbl_80669B60:
	# ROM: 0x5739C0
	.4byte 0xC3A00000


.global lbl_80669B64
lbl_80669B64:
	# ROM: 0x5739C4
	.4byte 0xC3600000


.global lbl_80669B68
lbl_80669B68:
	# ROM: 0x5739C8
	.4byte 0x42480000


.global lbl_80669B6C
lbl_80669B6C:
	# ROM: 0x5739CC
	.4byte 0xC3480000


.global lbl_80669B70
lbl_80669B70:
	# ROM: 0x5739D0
	.4byte 0x43480000


.global lbl_80669B74
lbl_80669B74:
	# ROM: 0x5739D4
	.4byte 0x3F4CCCCD


.global lbl_80669B78
lbl_80669B78:
	# ROM: 0x5739D8
	.4byte 0x40400000


.global lbl_80669B7C
lbl_80669B7C:
	# ROM: 0x5739DC
	.4byte 0x421C0000


.global lbl_80669B80
lbl_80669B80:
	# ROM: 0x5739E0
	.4byte 0x41900000


.global lbl_80669B84
lbl_80669B84:
	# ROM: 0x5739E4
	.4byte 0x42100000


.global lbl_80669B88
lbl_80669B88:
	# ROM: 0x5739E8
	.4byte 0x43700000


.global lbl_80669B8C
lbl_80669B8C:
	# ROM: 0x5739EC
	.4byte 0xC3700000


.global lbl_80669B90
lbl_80669B90:
	# ROM: 0x5739F0
	.4byte 0x3F800000


.global lbl_80669B94
lbl_80669B94:
	# ROM: 0x5739F4
	.4byte 0x42C80000


.global lbl_80669B98
lbl_80669B98:
	# ROM: 0x5739F8
	.4byte 0
	.4byte 0


.global lbl_80669BA0
lbl_80669BA0:
	# ROM: 0x573A00
	.4byte 0x42180000


.global lbl_80669BA4
lbl_80669BA4:
	# ROM: 0x573A04
	.4byte 0xC47A0000


.global lbl_80669BA8
lbl_80669BA8:
	# ROM: 0x573A08
	.4byte 0x447A0000


.global lbl_80669BAC
lbl_80669BAC:
	# ROM: 0x573A0C
	.4byte 0x3F400000


.global lbl_80669BB0
lbl_80669BB0:
	# ROM: 0x573A10
	.4byte 0x3F800000


.global lbl_80669BB4
lbl_80669BB4:
	# ROM: 0x573A14
	.4byte 0


.global lbl_80669BB8
lbl_80669BB8:
	# ROM: 0x573A18
	.4byte 0x43300000
	.4byte 0


.global lbl_80669BC0
lbl_80669BC0:
	# ROM: 0x573A20
	.4byte 0x3F19999A


.global lbl_80669BC4
lbl_80669BC4:
	# ROM: 0x573A24
	.4byte 0x3F000000


.global lbl_80669BC8
lbl_80669BC8:
	# ROM: 0x573A28
	.4byte 0xBF800000


.global lbl_80669BCC
lbl_80669BCC:
	# ROM: 0x573A2C
	.4byte 0x42700000


.global lbl_80669BD0
lbl_80669BD0:
	# ROM: 0x573A30
	.4byte 0x804FBA78


.global lbl_80669BD4
lbl_80669BD4:
	# ROM: 0x573A34
	.4byte 0x804FBA84


.global lbl_80669BD8
lbl_80669BD8:
	# ROM: 0x573A38
	.4byte 0x804FBA90


.global lbl_80669BDC
lbl_80669BDC:
	# ROM: 0x573A3C
	.4byte 0x804FBA9C


.global lbl_80669BE0
lbl_80669BE0:
	# ROM: 0x573A40
	.4byte 0x804FBA78


.global lbl_80669BE4
lbl_80669BE4:
	# ROM: 0x573A44
	.4byte 0x804FBA84


.global lbl_80669BE8
lbl_80669BE8:
	# ROM: 0x573A48
	.4byte 0x804FBA90


.global lbl_80669BEC
lbl_80669BEC:
	# ROM: 0x573A4C
	.4byte 0x804FBA9C


.global lbl_80669BF0
lbl_80669BF0:
	# ROM: 0x573A50
	.4byte 0x804FBA78


.global lbl_80669BF4
lbl_80669BF4:
	# ROM: 0x573A54
	.4byte 0x804FBA84


.global lbl_80669BF8
lbl_80669BF8:
	# ROM: 0x573A58
	.4byte 0x804FBA90


.global lbl_80669BFC
lbl_80669BFC:
	# ROM: 0x573A5C
	.4byte 0x804FBA9C


.global lbl_80669C00
lbl_80669C00:
	# ROM: 0x573A60
	.4byte 0x3DCCCCCD


.global lbl_80669C04
lbl_80669C04:
	# ROM: 0x573A64
	.4byte 0x3FC00000


.global lbl_80669C08
lbl_80669C08:
	# ROM: 0x573A68
	.4byte 0x42800000
	.4byte 0


.global lbl_80669C10
lbl_80669C10:
	# ROM: 0x573A70
	.4byte 0x40000000
	.4byte 0


.global lbl_80669C18
lbl_80669C18:
	# ROM: 0x573A78
	.4byte 0x3FE00000
	.4byte 0


.global lbl_80669C20
lbl_80669C20:
	# ROM: 0x573A80
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669C28
lbl_80669C28:
	# ROM: 0x573A88
	.4byte 0
	.4byte 0
	.asciz "EXwp_L"
	.balign 4
	.asciz "EXwp_R"
	.balign 4
	.asciz "EXwp_S"
	.balign 4
	.asciz "EXwp_H"
	.balign 4
	.asciz "EXwp_HL"
	.asciz "EXwp_HR"


.global lbl_80669C60
lbl_80669C60:
	# ROM: 0x573AC0
	.4byte 0
	.4byte 0


.global lbl_80669C68
lbl_80669C68:
	# ROM: 0x573AC8
	.4byte 0x804FCBB8


.global lbl_80669C6C
lbl_80669C6C:
	# ROM: 0x573ACC
	.4byte 0x804FCBC4


.global lbl_80669C70
lbl_80669C70:
	# ROM: 0x573AD0
	.4byte 0x804FCBD0


.global lbl_80669C74
lbl_80669C74:
	# ROM: 0x573AD4
	.4byte 0x804FCBDC


.global lbl_80669C78
lbl_80669C78:
	# ROM: 0x573AD8
	.4byte 0x43300000
	.4byte 0


.global lbl_80669C80
lbl_80669C80:
	# ROM: 0x573AE0
	.4byte 0x40800000


.global lbl_80669C84
lbl_80669C84:
	# ROM: 0x573AE4
	.4byte 0x3F800000


.global lbl_80669C88
lbl_80669C88:
	# ROM: 0x573AE8
	.4byte 0


.global lbl_80669C8C
lbl_80669C8C:
	# ROM: 0x573AEC
	.4byte 0x3F800000


.global lbl_80669C90
lbl_80669C90:
	# ROM: 0x573AF0
	.4byte 0x40400000
	.4byte 0


.global lbl_80669C98
lbl_80669C98:
	# ROM: 0x573AF8
	.4byte 0x3FE00000
	.4byte 0


.global lbl_80669CA0
lbl_80669CA0:
	# ROM: 0x573B00
	.4byte 0xBFE00000
	.4byte 0


.global lbl_80669CA8
lbl_80669CA8:
	# ROM: 0x573B08
	.4byte 0x3C23D70A


.global lbl_80669CAC
lbl_80669CAC:
	# ROM: 0x573B0C
	.4byte 0x3F000000


.global lbl_80669CB0
lbl_80669CB0:
	# ROM: 0x573B10
	.4byte 0x42B40000
	.4byte 0


.global lbl_80669CB8
lbl_80669CB8:
	# ROM: 0x573B18
	.4byte 0x43300000
	.4byte 0


.global lbl_80669CC0
lbl_80669CC0:
	# ROM: 0x573B20
	.4byte 0x3F800000


.global lbl_80669CC4
lbl_80669CC4:
	# ROM: 0x573B24
	.4byte 0x3F000000


.global lbl_80669CC8
lbl_80669CC8:
	# ROM: 0x573B28
	.4byte 0x3FF80000
	.4byte 0


.global lbl_80669CD0
lbl_80669CD0:
	# ROM: 0x573B30
	.4byte 0


.global lbl_80669CD4
lbl_80669CD4:
	# ROM: 0x573B34
	.4byte 0x3F666666


.global lbl_80669CD8
lbl_80669CD8:
	# ROM: 0x573B38
	.4byte 0


.global lbl_80669CDC
lbl_80669CDC:
	# ROM: 0x573B3C
	.4byte 0x3F800000


.global lbl_80669CE0
lbl_80669CE0:
	# ROM: 0x573B40
	.4byte 0x42B40000
	.4byte 0


.global lbl_80669CE8
lbl_80669CE8:
	# ROM: 0x573B48
	.4byte 0


.global lbl_80669CEC
lbl_80669CEC:
	# ROM: 0x573B4C
	.4byte 0xC1700000


.global lbl_80669CF0
lbl_80669CF0:
	# ROM: 0x573B50
	.4byte 0xC0400000


.global lbl_80669CF4
lbl_80669CF4:
	# ROM: 0x573B54
	.4byte 0x41200000


.global lbl_80669CF8
lbl_80669CF8:
	# ROM: 0x573B58
	.4byte 0x43300000
	.4byte 0


.global lbl_80669D00
lbl_80669D00:
	# ROM: 0x573B60
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669D08
lbl_80669D08:
	# ROM: 0x573B68
	.4byte 0xC1200000


.global lbl_80669D0C
lbl_80669D0C:
	# ROM: 0x573B6C
	.4byte 0x3CC90FDB


.global lbl_80669D10
lbl_80669D10:
	# ROM: 0x573B70
	.4byte 0x3F000000


.global lbl_80669D14
lbl_80669D14:
	# ROM: 0x573B74
	.4byte 0x3F800000


.global lbl_80669D18
lbl_80669D18:
	# ROM: 0x573B78
	.4byte 0xBF800000


.global lbl_80669D1C
lbl_80669D1C:
	# ROM: 0x573B7C
	.4byte 0x3E4CCCCD


.global lbl_80669D20
lbl_80669D20:
	# ROM: 0x573B80
	.4byte 0


.global lbl_80669D24
lbl_80669D24:
	# ROM: 0x573B84
	.4byte 0x411CCCCD


.global lbl_80669D28
lbl_80669D28:
	# ROM: 0x573B88
	.4byte 0x42000000


.global lbl_80669D2C
lbl_80669D2C:
	# ROM: 0x573B8C
	.4byte 0x3F000000


.global lbl_80669D30
lbl_80669D30:
	# ROM: 0x573B90
	.4byte 0x41700000


.global lbl_80669D34
lbl_80669D34:
	# ROM: 0x573B94
	.4byte 0x41C80000


.global lbl_80669D38
lbl_80669D38:
	# ROM: 0x573B98
	.4byte 0x40000000


.global lbl_80669D3C
lbl_80669D3C:
	# ROM: 0x573B9C
	.4byte 0x42C80000


.global lbl_80669D40
lbl_80669D40:
	# ROM: 0x573BA0
	.4byte 0x3F800000


.global lbl_80669D44
lbl_80669D44:
	# ROM: 0x573BA4
	.4byte 0x3CC90FDB


.global lbl_80669D48
lbl_80669D48:
	# ROM: 0x573BA8
	.4byte 0x41200000


.global lbl_80669D4C
lbl_80669D4C:
	# ROM: 0x573BAC
	.4byte 0x3E4CCCCD


.global lbl_80669D50
lbl_80669D50:
	# ROM: 0x573BB0
	.4byte 0x43300000
	.4byte 0


.global lbl_80669D58
lbl_80669D58:
	# ROM: 0x573BB8
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "name"
	.balign 4
	.4byte 0
	.4byte 0
	.asciz "lower_E"
	.asciz "lower_D"
	.asciz "lower_C"
	.asciz "lower_B"
	.asciz "lower_A"
	.asciz "lower_S"
	.asciz "upper_E"
	.asciz "upper_D"
	.asciz "upper_C"
	.asciz "upper_B"
	.asciz "upper_A"
	.asciz "upper_S"
	.asciz "wpn1"
	.balign 4
	.asciz "wpn1Per"
	.asciz "equip1"
	.balign 4
	.asciz "arts1"
	.balign 4


.global lbl_80669DF0
lbl_80669DF0:
	# ROM: 0x573C50
	.4byte 0x3E800000


.global lbl_80669DF4
lbl_80669DF4:
	# ROM: 0x573C54
	.4byte 0x3F800000


.global lbl_80669DF8
lbl_80669DF8:
	# ROM: 0x573C58
	.4byte 0x43300000
	.4byte 0


.global lbl_80669E00
lbl_80669E00:
	# ROM: 0x573C60
	.4byte 0x0F23374B


.global lbl_80669E04
lbl_80669E04:
	# ROM: 0x573C64
	.4byte 0x5F000000


.global lbl_80669E08
lbl_80669E08:
	# ROM: 0x573C68
	.4byte 0x0F23374B


.global lbl_80669E0C
lbl_80669E0C:
	# ROM: 0x573C6C
	.4byte 0x5F000000


.global lbl_80669E10
lbl_80669E10:
	# ROM: 0x573C70
	.4byte 0xFDFAF7F4


.global lbl_80669E14
lbl_80669E14:
	# ROM: 0x573C74
	.4byte 0xF1000000


.global lbl_80669E18
lbl_80669E18:
	# ROM: 0x573C78
	.4byte 0x3F800000


.global lbl_80669E1C
lbl_80669E1C:
	# ROM: 0x573C7C
	.4byte 0xC2EC0000


.global lbl_80669E20
lbl_80669E20:
	# ROM: 0x573C80
	.4byte 0x42D80000


.global lbl_80669E24
lbl_80669E24:
	# ROM: 0x573C84
	.4byte 0


.global lbl_80669E28
lbl_80669E28:
	# ROM: 0x573C88
	.4byte 0x090F151B


.global lbl_80669E2C
lbl_80669E2C:
	# ROM: 0x573C8C
	.2byte 0x2127


.global lbl_80669E2E
lbl_80669E2E:
	# ROM: 0x573C8E
	.2byte 0x2D00


.global lbl_80669E30
lbl_80669E30:
	# ROM: 0x573C90
	.4byte 0x010A1016


.global lbl_80669E34
lbl_80669E34:
	# ROM: 0x573C94
	.2byte 0x1C22


.global lbl_80669E36
lbl_80669E36:
	# ROM: 0x573C96
	.2byte 0x2800


.global lbl_80669E38
lbl_80669E38:
	# ROM: 0x573C98
	.4byte 0xBF800000
	.4byte 0


.global lbl_80669E40
lbl_80669E40:
	# ROM: 0x573CA0
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "title0"
	.balign 4
	.asciz "ma0101"
	.balign 4
	.asciz "ma0201"
	.balign 4
	.asciz "ma0301"
	.balign 4
	.asciz "ma0401"
	.balign 4
	.asciz "ma0402"
	.balign 4
	.asciz "ma0501"
	.balign 4
	.asciz "ma0601"
	.balign 4
	.asciz "ma0701"
	.balign 4
	.asciz "ma1001"
	.balign 4
	.asciz "ma1101"
	.balign 4
	.asciz "ma1201"
	.balign 4
	.asciz "ma1301"
	.balign 4
	.asciz "ma1401"
	.balign 4
	.asciz "ma1501"
	.balign 4
	.asciz "ma1601"
	.balign 4
	.asciz "ma1701"
	.balign 4
	.asciz "ma1901"
	.balign 4
	.asciz "ma2001"
	.balign 4
	.asciz "demo01"
	.balign 4


.global lbl_80669EE8
lbl_80669EE8:
	# ROM: 0x573D48
	.4byte 0


.global lbl_80669EEC
lbl_80669EEC:
	# ROM: 0x573D4C
	.4byte 0x3C23D70A


.global lbl_80669EF0
lbl_80669EF0:
	# ROM: 0x573D50
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669EF8
lbl_80669EF8:
	# ROM: 0x573D58
	.4byte 0x3D75C28F


.global lbl_80669EFC
lbl_80669EFC:
	# ROM: 0x573D5C
	.4byte 0x42700000


.global lbl_80669F00
lbl_80669F00:
	# ROM: 0x573D60
	.4byte 0x3F7D70A4


.global lbl_80669F04
lbl_80669F04:
	# ROM: 0x573D64
	.4byte 0x3DCCCCCD


.global lbl_80669F08
lbl_80669F08:
	# ROM: 0x573D68
	.4byte 0x47A60400
	.4byte 0


.global lbl_80669F10
lbl_80669F10:
	# ROM: 0x573D70
	.4byte 0
	.4byte 0


.global lbl_80669F18
lbl_80669F18:
	# ROM: 0x573D78
	.4byte 0


.global lbl_80669F1C
lbl_80669F1C:
	# ROM: 0x573D7C
	.4byte 0x3E2AAAAB


.global lbl_80669F20
lbl_80669F20:
	# ROM: 0x573D80
	.4byte 0x3F333333


.global lbl_80669F24
lbl_80669F24:
	# ROM: 0x573D84
	.4byte 0x41A00000


.global lbl_80669F28
lbl_80669F28:
	# ROM: 0x573D88
	.4byte 0x3727C5AC


.global lbl_80669F2C
lbl_80669F2C:
	# ROM: 0x573D8C
	.4byte 0x3F800000


.global lbl_80669F30
lbl_80669F30:
	# ROM: 0x573D90
	.4byte 0x40A00000


.global lbl_80669F34
lbl_80669F34:
	# ROM: 0x573D94
	.4byte 0x41F00000


.global lbl_80669F38
lbl_80669F38:
	# ROM: 0x573D98
	.4byte 0x3DCCCCCD


.global lbl_80669F3C
lbl_80669F3C:
	# ROM: 0x573D9C
	.4byte 0x47A60400


.global lbl_80669F40
lbl_80669F40:
	# ROM: 0x573DA0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669F48
lbl_80669F48:
	# ROM: 0x573DA8
	.4byte 0x3C23D70A
	.4byte 0


.global lbl_80669F50
lbl_80669F50:
	# ROM: 0x573DB0
	.4byte 0
	.4byte 0


.global lbl_80669F58
lbl_80669F58:
	# ROM: 0x573DB8
	.4byte 0


.global lbl_80669F5C
lbl_80669F5C:
	# ROM: 0x573DBC
	.4byte 0x3F800000


.global lbl_80669F60
lbl_80669F60:
	# ROM: 0x573DC0
	.4byte 0x40000000


.global lbl_80669F64
lbl_80669F64:
	# ROM: 0x573DC4
	.4byte 0x3F7FBE77


.global lbl_80669F68
lbl_80669F68:
	# ROM: 0x573DC8
	.4byte 0x41A00000
	.4byte 0


.global lbl_80669F70
lbl_80669F70:
	# ROM: 0x573DD0
	.4byte 0x42F00000


.global lbl_80669F74
lbl_80669F74:
	# ROM: 0x573DD4
	.4byte 0x3F800000


.global lbl_80669F78
lbl_80669F78:
	# ROM: 0x573DD8
	.4byte 0x3F333333


.global lbl_80669F7C
lbl_80669F7C:
	# ROM: 0x573DDC
	.4byte 0x40000000


.global lbl_80669F80
lbl_80669F80:
	# ROM: 0x573DE0
	.4byte 0x43300000
	.4byte 0


.global lbl_80669F88
lbl_80669F88:
	# ROM: 0x573DE8
	.4byte 0


.global lbl_80669F8C
lbl_80669F8C:
	# ROM: 0x573DEC
	.4byte 0x41200000


.global lbl_80669F90
lbl_80669F90:
	# ROM: 0x573DF0
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0
	.asciz "wind_M"
	.balign 4
	.asciz "wind_D"
	.balign 4
	.asciz "wind_E"
	.balign 4
	.asciz "wind_N"
	.balign 4
	.4byte 0


.global lbl_80669FC0
lbl_80669FC0:
	# ROM: 0x573E20
	.4byte 0x41200000
	.4byte 0
	.asciz "signal1"


.global lbl_80669FD0
lbl_80669FD0:
	# ROM: 0x573E30
	.4byte 0x3F800000


.global lbl_80669FD4
lbl_80669FD4:
	# ROM: 0x573E34
	.4byte 0x38D1B717


.global lbl_80669FD8
lbl_80669FD8:
	# ROM: 0x573E38
	.4byte 0x3C23D70A
	.4byte 0


.global lbl_80669FE0
lbl_80669FE0:
	# ROM: 0x573E40
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80669FE8
lbl_80669FE8:
	# ROM: 0x573E48
	.4byte 0x43300000
	.4byte 0


.global lbl_80669FF0
lbl_80669FF0:
	# ROM: 0x573E50
	.4byte 0
	.4byte 0


.global lbl_80669FF8
lbl_80669FF8:
	# ROM: 0x573E58
	.4byte 0


.global lbl_80669FFC
lbl_80669FFC:
	# ROM: 0x573E5C
	.4byte 0x3F000000


.global lbl_8066A000
lbl_8066A000:
	# ROM: 0x573E60
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066A008
lbl_8066A008:
	# ROM: 0x573E68
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A010
lbl_8066A010:
	# ROM: 0x573E70
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066A018
lbl_8066A018:
	# ROM: 0x573E78
	.4byte 0xBFE00000
	.4byte 0


.global lbl_8066A020
lbl_8066A020:
	# ROM: 0x573E80
	.4byte 0x42C80000


.global lbl_8066A024
lbl_8066A024:
	# ROM: 0x573E84
	.4byte 0x3C23D70A


.global lbl_8066A028
lbl_8066A028:
	# ROM: 0x573E88
	.4byte 0x42480000


.global lbl_8066A02C
lbl_8066A02C:
	# ROM: 0x573E8C
	.4byte 0xBF800000


.global lbl_8066A030
lbl_8066A030:
	# ROM: 0x573E90
	.4byte 0


.global lbl_8066A034
lbl_8066A034:
	# ROM: 0x573E94
	.4byte 0x3F666666


.global lbl_8066A038
lbl_8066A038:
	# ROM: 0x573E98
	.4byte 0x3EB33333


.global lbl_8066A03C
lbl_8066A03C:
	# ROM: 0x573E9C
	.4byte 0x437F0000


.global lbl_8066A040
lbl_8066A040:
	# ROM: 0x573EA0
	.4byte 0


.global lbl_8066A044
lbl_8066A044:
	# ROM: 0x573EA4
	.4byte 0x3C23D70A


.global lbl_8066A048
lbl_8066A048:
	# ROM: 0x573EA8
	.4byte 0x42340000


.global lbl_8066A04C
lbl_8066A04C:
	# ROM: 0x573EAC
	.4byte 0x4222F983


.global lbl_8066A050
lbl_8066A050:
	# ROM: 0x573EB0
	.4byte 0x3F800000


.global lbl_8066A054
lbl_8066A054:
	# ROM: 0x573EB4
	.4byte 0x41F00000


.global lbl_8066A058
lbl_8066A058:
	# ROM: 0x573EB8
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066A060
lbl_8066A060:
	# ROM: 0x573EC0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A068
lbl_8066A068:
	# ROM: 0x573EC8
	.4byte 0x42700000
	.4byte 0


.global lbl_8066A070
lbl_8066A070:
	# ROM: 0x573ED0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066A078
lbl_8066A078:
	# ROM: 0x573ED8
	.4byte 0x45610000


.global lbl_8066A07C
lbl_8066A07C:
	# ROM: 0x573EDC
	.4byte 0x42C80000


.global lbl_8066A080
lbl_8066A080:
	# ROM: 0x573EE0
	.4byte 0x471C4000


.global lbl_8066A084
lbl_8066A084:
	# ROM: 0x573EE4
	.4byte 0x42480000


.global lbl_8066A088
lbl_8066A088:
	# ROM: 0x573EE8
	.4byte 0x46AFC800


.global lbl_8066A08C
lbl_8066A08C:
	# ROM: 0x573EEC
	.4byte 0x3FC00000


.global lbl_8066A090
lbl_8066A090:
	# ROM: 0x573EF0
	.4byte 0x40100000


.global lbl_8066A094
lbl_8066A094:
	# ROM: 0x573EF4
	.4byte 0x3F19999A


.global lbl_8066A098
lbl_8066A098:
	# ROM: 0x573EF8
	.4byte 0x40C00000
	.4byte 0


.global lbl_8066A0A0
lbl_8066A0A0:
	# ROM: 0x573F00
	.4byte 0x3F800000


.global lbl_8066A0A4
lbl_8066A0A4:
	# ROM: 0x573F04
	.4byte 0


.global lbl_8066A0A8
lbl_8066A0A8:
	# ROM: 0x573F08
	.4byte 0x3F800000


.global lbl_8066A0AC
lbl_8066A0AC:
	# ROM: 0x573F0C
	.4byte 0x41F00000


.global lbl_8066A0B0
lbl_8066A0B0:
	# ROM: 0x573F10
	.4byte 0x43300000
	.4byte 0


.global lbl_8066A0B8
lbl_8066A0B8:
	# ROM: 0x573F18
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A0C0
lbl_8066A0C0:
	# ROM: 0x573F20
	.4byte 0x40000000


.global lbl_8066A0C4
lbl_8066A0C4:
	# ROM: 0x573F24
	.4byte 0x40400000


.global lbl_8066A0C8
lbl_8066A0C8:
	# ROM: 0x573F28
	.4byte 0x42200000


.global lbl_8066A0CC
lbl_8066A0CC:
	# ROM: 0x573F2C
	.4byte 0x41200000


.global lbl_8066A0D0
lbl_8066A0D0:
	# ROM: 0x573F30
	.4byte 0x41900000


.global lbl_8066A0D4
lbl_8066A0D4:
	# ROM: 0x573F34
	.4byte 0x3D4CCCCD


.global lbl_8066A0D8
lbl_8066A0D8:
	# ROM: 0x573F38
	.4byte 0x42C80000
	.4byte 0


.global lbl_8066A0E0
lbl_8066A0E0:
	# ROM: 0x573F40
	.4byte 0x3FC33333
	.4byte 0x33333333


.global lbl_8066A0E8
lbl_8066A0E8:
	# ROM: 0x573F48
	.4byte 0xBF800000


.global lbl_8066A0EC
lbl_8066A0EC:
	# ROM: 0x573F4C
	.4byte 0x3F000000


.global lbl_8066A0F0
lbl_8066A0F0:
	# ROM: 0x573F50
	.4byte 0x3C23D70A


.global lbl_8066A0F4
lbl_8066A0F4:
	# ROM: 0x573F54
	.4byte 0x3F666666


.global lbl_8066A0F8
lbl_8066A0F8:
	# ROM: 0x573F58
	.4byte 0x3DCCCCCD


.global lbl_8066A0FC
lbl_8066A0FC:
	# ROM: 0x573F5C
	.4byte 0x40A00000


.global lbl_8066A100
lbl_8066A100:
	# ROM: 0x573F60
	.4byte 0x40200000


.global lbl_8066A104
lbl_8066A104:
	# ROM: 0x573F64
	.4byte 0x40800000


.global lbl_8066A108
lbl_8066A108:
	# ROM: 0x573F68
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066A110
lbl_8066A110:
	# ROM: 0x573F70
	.4byte 0xBFE00000
	.4byte 0


.global lbl_8066A118
lbl_8066A118:
	# ROM: 0x573F78
	.4byte 0x3F333333


.global lbl_8066A11C
lbl_8066A11C:
	# ROM: 0x573F7C
	.4byte 0x3A83126F


.global lbl_8066A120
lbl_8066A120:
	# ROM: 0x573F80
	.4byte 0x461C3C00


.global lbl_8066A124
lbl_8066A124:
	# ROM: 0x573F84
	.4byte 0x46EA6000


.global lbl_8066A128
lbl_8066A128:
	# ROM: 0x573F88
	.4byte 0x3FC00000


.global lbl_8066A12C
lbl_8066A12C:
	# ROM: 0x573F8C
	.4byte 0x3E99999A


.global lbl_8066A130
lbl_8066A130:
	# ROM: 0x573F90
	.4byte 0x42C80000


.global lbl_8066A134
lbl_8066A134:
	# ROM: 0x573F94
	.4byte 0


.global lbl_8066A138
lbl_8066A138:
	# ROM: 0x573F98
	.4byte 0x40A00000


.global lbl_8066A13C
lbl_8066A13C:
	# ROM: 0x573F9C
	.4byte 0x42480000


.global lbl_8066A140
lbl_8066A140:
	# ROM: 0x573FA0
	.4byte 0x42340000


.global lbl_8066A144
lbl_8066A144:
	# ROM: 0x573FA4
	.4byte 0x3F800000


.global lbl_8066A148
lbl_8066A148:
	# ROM: 0x573FA8
	.4byte 0x40C00000


.global lbl_8066A14C
lbl_8066A14C:
	# ROM: 0x573FAC
	.4byte 0x3FC00000


.global lbl_8066A150
lbl_8066A150:
	# ROM: 0x573FB0
	.4byte 0x42080000
	.4byte 0
	.asciz "camAtr"
	.balign 4
	.4byte 0x63616D00


.global lbl_8066A164
lbl_8066A164:
	# ROM: 0x573FC4
	.4byte 0x41F00000


.global lbl_8066A168
lbl_8066A168:
	# ROM: 0x573FC8
	.4byte 0x3DCCCCCD


.global lbl_8066A16C
lbl_8066A16C:
	# ROM: 0x573FCC
	.4byte 0x47A60400


.global lbl_8066A170
lbl_8066A170:
	# ROM: 0x573FD0
	.4byte 0
	.4byte 0


.global lbl_8066A178
lbl_8066A178:
	# ROM: 0x573FD8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A180
lbl_8066A180:
	# ROM: 0x573FE0
	.4byte 0
	.4byte 0


.global lbl_8066A188
lbl_8066A188:
	# ROM: 0x573FE8
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0x656E0000
	.4byte 0x6E700000
	.4byte 0x6F6A0000
	.asciz "wp42"
	.balign 4
	.asciz "wp82"
	.balign 4
	.asciz "wp83"
	.balign 4
	.asciz "wp84"
	.balign 4
	.asciz "np62"
	.balign 4


.global lbl_8066A1C4
lbl_8066A1C4:
	# ROM: 0x574024
	.4byte 0x42200000


.global lbl_8066A1C8
lbl_8066A1C8:
	# ROM: 0x574028
	.4byte 0x3F800000


.global lbl_8066A1CC
lbl_8066A1CC:
	# ROM: 0x57402C
	.4byte 0


.global lbl_8066A1D0
lbl_8066A1D0:
	# ROM: 0x574030
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A1D8
lbl_8066A1D8:
	# ROM: 0x574038
	.4byte 0
	.4byte 0


.global lbl_8066A1E0
lbl_8066A1E0:
	# ROM: 0x574040
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "effTgt"
	.balign 4
	.asciz "effAtr"
	.balign 4
	.4byte 0x65666600


.global lbl_8066A1FC
lbl_8066A1FC:
	# ROM: 0x57405C
	.4byte 0


.global lbl_8066A200
lbl_8066A200:
	# ROM: 0x574060
	.4byte 0x3F800000


.global lbl_8066A204
lbl_8066A204:
	# ROM: 0x574064
	.4byte 0x3F666666


.global lbl_8066A208
lbl_8066A208:
	# ROM: 0x574068
	.4byte 0x3F733333


.global lbl_8066A20C
lbl_8066A20C:
	# ROM: 0x57406C
	.4byte 0x3A83126F


.global lbl_8066A210
lbl_8066A210:
	# ROM: 0x574070
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A218
lbl_8066A218:
	# ROM: 0x574078
	.4byte 0x3F000000


.global lbl_8066A21C
lbl_8066A21C:
	# ROM: 0x57407C
	.4byte 0x43340000


.global lbl_8066A220
lbl_8066A220:
	# ROM: 0x574080
	.4byte 0x3DCCCCCD
	.4byte 0
	.asciz "range"
	.balign 4
	.asciz "hour"
	.balign 4


.global lbl_8066A238
lbl_8066A238:
	# ROM: 0x574098
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "isEnd"
	.balign 4
	.asciz "end"
	.asciz "attack"
	.balign 4
	.asciz "vision"
	.balign 4
	.asciz "setTP"
	.balign 4
	.asciz "setPTG"
	.balign 4
	.asciz "getPTG"
	.balign 4
	.asciz "test"
	.balign 4
	.4byte 0


.global lbl_8066A280
lbl_8066A280:
	# ROM: 0x5740E0
	.4byte 0x38D1B717


.global lbl_8066A284
lbl_8066A284:
	# ROM: 0x5740E4
	.4byte 0x3C23D70A


.global lbl_8066A288
lbl_8066A288:
	# ROM: 0x5740E8
	.4byte 0x3DCCCCCD


.global lbl_8066A28C
lbl_8066A28C:
	# ROM: 0x5740EC
	.4byte 0x447A0000


.global lbl_8066A290
lbl_8066A290:
	# ROM: 0x5740F0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A298
lbl_8066A298:
	# ROM: 0x5740F8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066A2A0
lbl_8066A2A0:
	# ROM: 0x574100
	.4byte 0


.global lbl_8066A2A4
lbl_8066A2A4:
	# ROM: 0x574104
	.4byte 0x43960000


.global lbl_8066A2A8
lbl_8066A2A8:
	# ROM: 0x574108
	.4byte 0x43000000


.global lbl_8066A2AC
lbl_8066A2AC:
	# ROM: 0x57410C
	.4byte 0x3F800000


.global lbl_8066A2B0
lbl_8066A2B0:
	# ROM: 0x574110
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A2B8
lbl_8066A2B8:
	# ROM: 0x574118
	.4byte 0x41F00000


.global lbl_8066A2BC
lbl_8066A2BC:
	# ROM: 0x57411C
	.4byte 0x42C80000


.global lbl_8066A2C0
lbl_8066A2C0:
	# ROM: 0x574120
	.4byte 0x43480000
	.4byte 0


.global lbl_8066A2C8
lbl_8066A2C8:
	# ROM: 0x574128
	.4byte 0


.global lbl_8066A2CC
lbl_8066A2CC:
	# ROM: 0x57412C
	.4byte 0x3F800000


.global lbl_8066A2D0
lbl_8066A2D0:
	# ROM: 0x574130
	.4byte 0x3E99999A


.global lbl_8066A2D4
lbl_8066A2D4:
	# ROM: 0x574134
	.4byte 0xBE99999A


.global lbl_8066A2D8
lbl_8066A2D8:
	# ROM: 0x574138
	.4byte 0x3D8F5C29
	.4byte 0


.global lbl_8066A2E0
lbl_8066A2E0:
	# ROM: 0x574140
	.4byte 0


.global lbl_8066A2E4
lbl_8066A2E4:
	# ROM: 0x574144
	.4byte 0x3F800000


.global lbl_8066A2E8
lbl_8066A2E8:
	# ROM: 0x574148
	.4byte 0x41200000
	.4byte 0


.global lbl_8066A2F0
lbl_8066A2F0:
	# ROM: 0x574150
	.4byte 0


.global lbl_8066A2F4
lbl_8066A2F4:
	# ROM: 0x574154
	.4byte 0x3F800000


.global lbl_8066A2F8
lbl_8066A2F8:
	# ROM: 0x574158
	.4byte 0x3F19999A
	.4byte 0


.global lbl_8066A300
lbl_8066A300:
	# ROM: 0x574160
	.4byte 0


.global lbl_8066A304
lbl_8066A304:
	# ROM: 0x574164
	.4byte 0x40000000


.global lbl_8066A308
lbl_8066A308:
	# ROM: 0x574168
	.4byte 0xC1000000


.global lbl_8066A30C
lbl_8066A30C:
	# ROM: 0x57416C
	.4byte 0x3F333333


.global lbl_8066A310
lbl_8066A310:
	# ROM: 0x574170
	.4byte 0x3FB33333


.global lbl_8066A314
lbl_8066A314:
	# ROM: 0x574174
	.4byte 0xBDCCCCCD


.global lbl_8066A318
lbl_8066A318:
	# ROM: 0x574178
	.4byte 0x3E99999A


.global lbl_8066A31C
lbl_8066A31C:
	# ROM: 0x57417C
	.4byte 0x40400000


.global lbl_8066A320
lbl_8066A320:
	# ROM: 0x574180
	.4byte 0x3F800000


.global lbl_8066A324
lbl_8066A324:
	# ROM: 0x574184
	.4byte 0x41A00000


.global lbl_8066A328
lbl_8066A328:
	# ROM: 0x574188
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066A330
lbl_8066A330:
	# ROM: 0x574190
	.4byte 0


.global lbl_8066A334
lbl_8066A334:
	# ROM: 0x574194
	.4byte 0x3C23D70A


.global lbl_8066A338
lbl_8066A338:
	# ROM: 0x574198
	.4byte 0x3B808081
	.4byte 0


.global lbl_8066A340
lbl_8066A340:
	# ROM: 0x5741A0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066A348
lbl_8066A348:
	# ROM: 0x5741A8
	.4byte 0x41200000


.global lbl_8066A34C
lbl_8066A34C:
	# ROM: 0x5741AC
	.4byte 0x3F800000


.global lbl_8066A350
lbl_8066A350:
	# ROM: 0x5741B0
	.4byte 0x40200000


.global lbl_8066A354
lbl_8066A354:
	# ROM: 0x5741B4
	.4byte 0x42C80000


.global lbl_8066A358
lbl_8066A358:
	# ROM: 0x5741B8
	.4byte 0


.global lbl_8066A35C
lbl_8066A35C:
	# ROM: 0x5741BC
	.4byte 0x3F800000


.global lbl_8066A360
lbl_8066A360:
	# ROM: 0x5741C0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A368
lbl_8066A368:
	# ROM: 0x5741C8
	.4byte 0x3D088889
	.4byte 0
	.asciz "_ppp"
	.balign 4


.global lbl_8066A378
lbl_8066A378:
	# ROM: 0x5741D8
	.4byte 0x42700000


.global lbl_8066A37C
lbl_8066A37C:
	# ROM: 0x5741DC
	.4byte 0x41F00000


.global lbl_8066A380
lbl_8066A380:
	# ROM: 0x5741E0
	.4byte 0x44E10000
	.4byte 0


.global lbl_8066A388
lbl_8066A388:
	# ROM: 0x5741E8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066A390
lbl_8066A390:
	# ROM: 0x5741F0
	.4byte 0x3F800000


.global lbl_8066A394
lbl_8066A394:
	# ROM: 0x5741F4
	.4byte 0
	.asciz "ene?ID"
	.balign 4
	.asciz "ene?num"


.global lbl_8066A3A8
lbl_8066A3A8:
	# ROM: 0x574208
	.4byte 0x3DCCCCCD


.global lbl_8066A3AC
lbl_8066A3AC:
	# ROM: 0x57420C
	.4byte 0x3C23D70A


.global lbl_8066A3B0
lbl_8066A3B0:
	# ROM: 0x574210
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A3B8
lbl_8066A3B8:
	# ROM: 0x574218
	.4byte 0x4222F983


.global lbl_8066A3BC
lbl_8066A3BC:
	# ROM: 0x57421C
	.4byte 0x42340000


.global lbl_8066A3C0
lbl_8066A3C0:
	# ROM: 0x574220
	.4byte 0x42200000


.global lbl_8066A3C4
lbl_8066A3C4:
	# ROM: 0x574224
	.4byte 0x40000000


.global lbl_8066A3C8
lbl_8066A3C8:
	# ROM: 0x574228
	.4byte 0x41200000


.global lbl_8066A3CC
lbl_8066A3CC:
	# ROM: 0x57422C
	.4byte 0x3F400000


.global lbl_8066A3D0
lbl_8066A3D0:
	# ROM: 0x574230
	.4byte 0x447A0000


.global lbl_8066A3D4
lbl_8066A3D4:
	# ROM: 0x574234
	.4byte 0x40A00000


.global lbl_8066A3D8
lbl_8066A3D8:
	# ROM: 0x574238
	.4byte 0x3EAAAAAB


.global lbl_8066A3DC
lbl_8066A3DC:
	# ROM: 0x57423C
	.4byte 0x42480000


.global lbl_8066A3E0
lbl_8066A3E0:
	# ROM: 0x574240
	.4byte 0x3F000000


.global lbl_8066A3E4
lbl_8066A3E4:
	# ROM: 0x574244
	.4byte 0x3FC00000


.global lbl_8066A3E8
lbl_8066A3E8:
	# ROM: 0x574248
	.4byte 0


.global lbl_8066A3EC
lbl_8066A3EC:
	# ROM: 0x57424C
	.4byte 0x40800000


.global lbl_8066A3F0
lbl_8066A3F0:
	# ROM: 0x574250
	.4byte 0xC1000000


.global lbl_8066A3F4
lbl_8066A3F4:
	# ROM: 0x574254
	.4byte 0x3F350481


.global lbl_8066A3F8
lbl_8066A3F8:
	# ROM: 0x574258
	.4byte 0x461C4000


.global lbl_8066A3FC
lbl_8066A3FC:
	# ROM: 0x57425C
	.4byte 0x42C80000


.global lbl_8066A400
lbl_8066A400:
	# ROM: 0x574260
	.4byte 0x40000000


.global lbl_8066A404
lbl_8066A404:
	# ROM: 0x574264
	.4byte 0x3DCCCCCD


.global lbl_8066A408
lbl_8066A408:
	# ROM: 0x574268
	.4byte 0x3C23D70B


.global lbl_8066A40C
lbl_8066A40C:
	# ROM: 0x57426C
	.4byte 0x3C23D70A


.global lbl_8066A410
lbl_8066A410:
	# ROM: 0x574270
	.4byte 0x4222F983
	.4byte 0


.global lbl_8066A418
lbl_8066A418:
	# ROM: 0x574278
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A420
lbl_8066A420:
	# ROM: 0x574280
	.4byte 0


.global lbl_8066A424
lbl_8066A424:
	# ROM: 0x574284
	.4byte 0x42000000


.global lbl_8066A428
lbl_8066A428:
	# ROM: 0x574288
	.4byte 0x3F800000


.global lbl_8066A42C
lbl_8066A42C:
	# ROM: 0x57428C
	.4byte 0x3DCCCCCD


.global lbl_8066A430
lbl_8066A430:
	# ROM: 0x574290
	.4byte 0x40000000


.global lbl_8066A434
lbl_8066A434:
	# ROM: 0x574294
	.4byte 0x3E800000


.global lbl_8066A438
lbl_8066A438:
	# ROM: 0x574298
	.4byte 0x41C80000


.global lbl_8066A43C
lbl_8066A43C:
	# ROM: 0x57429C
	.4byte 0x3F19999A


.global lbl_8066A440
lbl_8066A440:
	# ROM: 0x5742A0
	.4byte 0x42C80000


.global lbl_8066A444
lbl_8066A444:
	# ROM: 0x5742A4
	.4byte 0x41200000


.global lbl_8066A448
lbl_8066A448:
	# ROM: 0x5742A8
	.4byte 0x41800000


.global lbl_8066A44C
lbl_8066A44C:
	# ROM: 0x5742AC
	.4byte 0x42200000


.global lbl_8066A450
lbl_8066A450:
	# ROM: 0x5742B0
	.4byte 0x41A00000


.global lbl_8066A454
lbl_8066A454:
	# ROM: 0x5742B4
	.4byte 0x41700000


.global lbl_8066A458
lbl_8066A458:
	# ROM: 0x5742B8
	.4byte 0x43610000


.global lbl_8066A45C
lbl_8066A45C:
	# ROM: 0x5742BC
	.4byte 0x4222F983


.global lbl_8066A460
lbl_8066A460:
	# ROM: 0x5742C0
	.4byte 0x3F333333


.global lbl_8066A464
lbl_8066A464:
	# ROM: 0x5742C4
	.4byte 0xBF333333


.global lbl_8066A468
lbl_8066A468:
	# ROM: 0x5742C8
	.4byte 0x40800000


.global lbl_8066A46C
lbl_8066A46C:
	# ROM: 0x5742CC
	.4byte 0x43C80000


.global lbl_8066A470
lbl_8066A470:
	# ROM: 0x5742D0
	.4byte 0x41000000


.global lbl_8066A474
lbl_8066A474:
	# ROM: 0x5742D4
	.4byte 0x451C4000


.global lbl_8066A478
lbl_8066A478:
	# ROM: 0x5742D8
	.4byte 0x461C4000


.global lbl_8066A47C
lbl_8066A47C:
	# ROM: 0x5742DC
	.4byte 0xC0000000


.global lbl_8066A480
lbl_8066A480:
	# ROM: 0x5742E0
	.4byte 0x3E4CCCCD


.global lbl_8066A484
lbl_8066A484:
	# ROM: 0x5742E4
	.4byte 0x3F4CCCCD


.global lbl_8066A488
lbl_8066A488:
	# ROM: 0x5742E8
	.4byte 0x3F000000


.global lbl_8066A48C
lbl_8066A48C:
	# ROM: 0x5742EC
	.4byte 0x40100000


.global lbl_8066A490
lbl_8066A490:
	# ROM: 0x5742F0
	.4byte 0xBF800000


.global lbl_8066A494
lbl_8066A494:
	# ROM: 0x5742F4
	.4byte 0x40A00000


.global lbl_8066A498
lbl_8066A498:
	# ROM: 0x5742F8
	.4byte 0x3CC90FDB


.global lbl_8066A49C
lbl_8066A49C:
	# ROM: 0x5742FC
	.4byte 0x40400000


.global lbl_8066A4A0
lbl_8066A4A0:
	# ROM: 0x574300
	.4byte 0x3E19999A


.global lbl_8066A4A4
lbl_8066A4A4:
	# ROM: 0x574304
	.4byte 0xC0800000


.global lbl_8066A4A8
lbl_8066A4A8:
	# ROM: 0x574308
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A4B0
lbl_8066A4B0:
	# ROM: 0x574310
	.4byte 0x3ECCCCCD


.global lbl_8066A4B4
lbl_8066A4B4:
	# ROM: 0x574314
	.4byte 0x40600000


.global lbl_8066A4B8
lbl_8066A4B8:
	# ROM: 0x574318
	.4byte 0x41440000


.global lbl_8066A4BC
lbl_8066A4BC:
	# ROM: 0x57431C
	.4byte 0x40E66667


.global lbl_8066A4C0
lbl_8066A4C0:
	# ROM: 0x574320
	.4byte 0x40C00000


.global lbl_8066A4C4
lbl_8066A4C4:
	# ROM: 0x574324
	.4byte 0x41100000


.global lbl_8066A4C8
lbl_8066A4C8:
	# ROM: 0x574328
	.4byte 0x3E99999A


.global lbl_8066A4CC
lbl_8066A4CC:
	# ROM: 0x57432C
	.4byte 0x42800000


.global lbl_8066A4D0
lbl_8066A4D0:
	# ROM: 0x574330
	.4byte 0x3FC00000


.global lbl_8066A4D4
lbl_8066A4D4:
	# ROM: 0x574334
	.4byte 0x3EAA7EFA


.global lbl_8066A4D8
lbl_8066A4D8:
	# ROM: 0x574338
	.4byte 0x3F99999A


.global lbl_8066A4DC
lbl_8066A4DC:
	# ROM: 0x57433C
	.4byte 0x412E3D70


.global lbl_8066A4E0
lbl_8066A4E0:
	# ROM: 0x574340
	.4byte 0x40A947AE


.global lbl_8066A4E4
lbl_8066A4E4:
	# ROM: 0x574344
	.4byte 0x400CCCCD


.global lbl_8066A4E8
lbl_8066A4E8:
	# ROM: 0x574348
	.4byte 0x3FE66666


.global lbl_8066A4EC
lbl_8066A4EC:
	# ROM: 0x57434C
	.4byte 0x4019999A


.global lbl_8066A4F0
lbl_8066A4F0:
	# ROM: 0x574350
	.4byte 0x3EFAE147


.global lbl_8066A4F4
lbl_8066A4F4:
	# ROM: 0x574354
	.4byte 0xC0400000


.global lbl_8066A4F8
lbl_8066A4F8:
	# ROM: 0x574358
	.4byte 0x41400000


.global lbl_8066A4FC
lbl_8066A4FC:
	# ROM: 0x57435C
	.4byte 0x41300000


.global lbl_8066A500
lbl_8066A500:
	# ROM: 0x574360
	.4byte 0x42100000


.global lbl_8066A504
lbl_8066A504:
	# ROM: 0x574364
	.4byte 0x3EB851EC


.global lbl_8066A508
lbl_8066A508:
	# ROM: 0x574368
	.4byte 0xC1200000


.global lbl_8066A50C
lbl_8066A50C:
	# ROM: 0x57436C
	.4byte 0x3F350481


.global lbl_8066A510
lbl_8066A510:
	# ROM: 0x574370
	.4byte 0x41980000
	.4byte 0


.global lbl_8066A518
lbl_8066A518:
	# ROM: 0x574378
	.4byte 0x3DCCCCCD


.global lbl_8066A51C
lbl_8066A51C:
	# ROM: 0x57437C
	.4byte 0


.global lbl_8066A520
lbl_8066A520:
	# ROM: 0x574380
	.4byte 0x3E4CCCCD


.global lbl_8066A524
lbl_8066A524:
	# ROM: 0x574384
	.4byte 0x40666666


.global lbl_8066A528
lbl_8066A528:
	# ROM: 0x574388
	.4byte 0x3F800000


.global lbl_8066A52C
lbl_8066A52C:
	# ROM: 0x57438C
	.4byte 0x3D23D70B


.global lbl_8066A530
lbl_8066A530:
	# ROM: 0x574390
	.4byte 0x40800000


.global lbl_8066A534
lbl_8066A534:
	# ROM: 0x574394
	.4byte 0x3F000000


.global lbl_8066A538
lbl_8066A538:
	# ROM: 0x574398
	.4byte 0x43B40000
	.4byte 0


.global lbl_8066A540
lbl_8066A540:
	# ROM: 0x5743A0
	.4byte 0


.global lbl_8066A544
lbl_8066A544:
	# ROM: 0x5743A4
	.4byte 0x3F800000


.global lbl_8066A548
lbl_8066A548:
	# ROM: 0x5743A8
	.4byte 0x3F800000


.global lbl_8066A54C
lbl_8066A54C:
	# ROM: 0x5743AC
	.4byte 0


.global lbl_8066A550
lbl_8066A550:
	# ROM: 0x5743B0
	.4byte 0x4222F983


.global lbl_8066A554
lbl_8066A554:
	# ROM: 0x5743B4
	.4byte 0xBF000000


.global lbl_8066A558
lbl_8066A558:
	# ROM: 0x5743B8
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066A560
lbl_8066A560:
	# ROM: 0x5743C0
	.4byte 0x42180000


.global lbl_8066A564
lbl_8066A564:
	# ROM: 0x5743C4
	.4byte 0xBF800000


.global lbl_8066A568
lbl_8066A568:
	# ROM: 0x5743C8
	.4byte 0


.global lbl_8066A56C
lbl_8066A56C:
	# ROM: 0x5743CC
	.4byte 0x43410000


.global lbl_8066A570
lbl_8066A570:
	# ROM: 0x5743D0
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066A578
lbl_8066A578:
	# ROM: 0x5743D8
	.4byte 0x40A00000


.global lbl_8066A57C
lbl_8066A57C:
	# ROM: 0x5743DC
	.4byte 0x41F00000


.global lbl_8066A580
lbl_8066A580:
	# ROM: 0x5743E0
	.4byte 0x42480000


.global lbl_8066A584
lbl_8066A584:
	# ROM: 0x5743E4
	.4byte 0


.global lbl_8066A588
lbl_8066A588:
	# ROM: 0x5743E8
	.4byte 0x3F800000


.global lbl_8066A58C
lbl_8066A58C:
	# ROM: 0x5743EC
	.4byte 0x3E4CCCCD


.global lbl_8066A590
lbl_8066A590:
	# ROM: 0x5743F0
	.4byte 0xC0000000


.global lbl_8066A594
lbl_8066A594:
	# ROM: 0x5743F4
	.4byte 0


.global lbl_8066A598
lbl_8066A598:
	# ROM: 0x5743F8
	.4byte 0xBF800000


.global lbl_8066A59C
lbl_8066A59C:
	# ROM: 0x5743FC
	.4byte 0x3D088889


.global lbl_8066A5A0
lbl_8066A5A0:
	# ROM: 0x574400
	.4byte 0x3F19999A


.global lbl_8066A5A4
lbl_8066A5A4:
	# ROM: 0x574404
	.4byte 0x3F000000


.global lbl_8066A5A8
lbl_8066A5A8:
	# ROM: 0x574408
	.4byte 0x3F555556


.global lbl_8066A5AC
lbl_8066A5AC:
	# ROM: 0x57440C
	.4byte 0x3C23D70A


.global lbl_8066A5B0
lbl_8066A5B0:
	# ROM: 0x574410
	.4byte 0x3F800000


.global lbl_8066A5B4
lbl_8066A5B4:
	# ROM: 0x574414
	.4byte 0x40000000


.global lbl_8066A5B8
lbl_8066A5B8:
	# ROM: 0x574418
	.4byte 0x3F666666


.global lbl_8066A5BC
lbl_8066A5BC:
	# ROM: 0x57441C
	.4byte 0x40400000


.global lbl_8066A5C0
lbl_8066A5C0:
	# ROM: 0x574420
	.4byte 0x40800000


.global lbl_8066A5C4
lbl_8066A5C4:
	# ROM: 0x574424
	.4byte 0x3EAAAAAB


.global lbl_8066A5C8
lbl_8066A5C8:
	# ROM: 0x574428
	.4byte 0x3E2AAAAB


.global lbl_8066A5CC
lbl_8066A5CC:
	# ROM: 0x57442C
	.4byte 0x3FAAAAAB


.global lbl_8066A5D0
lbl_8066A5D0:
	# ROM: 0x574430
	.4byte 0x41200000
	.4byte 0


.global lbl_8066A5D8
lbl_8066A5D8:
	# ROM: 0x574438
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066A5E0
lbl_8066A5E0:
	# ROM: 0x574440
	.4byte 0xBFE00000
	.4byte 0


.global lbl_8066A5E8
lbl_8066A5E8:
	# ROM: 0x574448
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A5F0
lbl_8066A5F0:
	# ROM: 0x574450
	.4byte 0x3E800000


.global lbl_8066A5F4
lbl_8066A5F4:
	# ROM: 0x574454
	.4byte 0x3ED47AE1


.global lbl_8066A5F8
lbl_8066A5F8:
	# ROM: 0x574458
	.4byte 0x41000000


.global lbl_8066A5FC
lbl_8066A5FC:
	# ROM: 0x57445C
	.4byte 0x41400000


.global lbl_8066A600
lbl_8066A600:
	# ROM: 0x574460
	.4byte 0x43960000


.global lbl_8066A604
lbl_8066A604:
	# ROM: 0x574464
	.4byte 0x3F2AAAAB


.global lbl_8066A608
lbl_8066A608:
	# ROM: 0x574468
	.4byte 0x40200000


.global lbl_8066A60C
lbl_8066A60C:
	# ROM: 0x57446C
	.4byte 0x3E19999A


.global lbl_8066A610
lbl_8066A610:
	# ROM: 0x574470
	.4byte 0x451C4000


.global lbl_8066A614
lbl_8066A614:
	# ROM: 0x574474
	.4byte 0x3DCCCCCD


.global lbl_8066A618
lbl_8066A618:
	# ROM: 0x574478
	.4byte 0x43300000
	.4byte 0


.global lbl_8066A620
lbl_8066A620:
	# ROM: 0x574480
	.4byte 0x3F800000


.global lbl_8066A624
lbl_8066A624:
	# ROM: 0x574484
	.4byte 0


.global lbl_8066A628
lbl_8066A628:
	# ROM: 0x574488
	.4byte 0x3F000000


.global lbl_8066A62C
lbl_8066A62C:
	# ROM: 0x57448C
	.4byte 0x3CC90FDB


.global lbl_8066A630
lbl_8066A630:
	# ROM: 0x574490
	.4byte 0x4222F983


.global lbl_8066A634
lbl_8066A634:
	# ROM: 0x574494
	.4byte 0x4B189680


.global lbl_8066A638
lbl_8066A638:
	# ROM: 0x574498
	.4byte 0x3C23D70A
	.4byte 0


.global lbl_8066A640
lbl_8066A640:
	# ROM: 0x5744A0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A648
lbl_8066A648:
	# ROM: 0x5744A8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066A650
lbl_8066A650:
	# ROM: 0x5744B0
	.4byte 0x45800000


.global lbl_8066A654
lbl_8066A654:
	# ROM: 0x5744B4
	.4byte 0x3F800000


.global lbl_8066A658
lbl_8066A658:
	# ROM: 0x5744B8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A660
lbl_8066A660:
	# ROM: 0x5744C0
	.4byte 0
	.4byte 0
	.asciz "playBgm"
	.asciz "stopBgm"
	.4byte 0x636D6400
	.4byte 0


.global lbl_8066A680
lbl_8066A680:
	# ROM: 0x5744E0
	.4byte 0


.global lbl_8066A684
lbl_8066A684:
	# ROM: 0x5744E4
	.4byte 0x3F800000


.global lbl_8066A688
lbl_8066A688:
	# ROM: 0x5744E8
	.4byte 0x43950000


.global lbl_8066A68C
lbl_8066A68C:
	# ROM: 0x5744EC
	.4byte 0x41000000


.global lbl_8066A690
lbl_8066A690:
	# ROM: 0x5744F0
	.4byte 0x0F091012


.global lbl_8066A694
lbl_8066A694:
	# ROM: 0x5744F4
	.4byte 0x3F2147AE


.global lbl_8066A698
lbl_8066A698:
	# ROM: 0x5744F8
	.4byte 0xBF800000


.global lbl_8066A69C
lbl_8066A69C:
	# ROM: 0x5744FC
	.4byte 0x40400000


.global lbl_8066A6A0
lbl_8066A6A0:
	# ROM: 0x574500
	.4byte 0


.global lbl_8066A6A4
lbl_8066A6A4:
	# ROM: 0x574504
	.4byte 0x3F800000


.global lbl_8066A6A8
lbl_8066A6A8:
	# ROM: 0x574508
	.4byte 0


.global lbl_8066A6AC
lbl_8066A6AC:
	# ROM: 0x57450C
	.4byte 0x42500000


.global lbl_8066A6B0
lbl_8066A6B0:
	# ROM: 0x574510
	.4byte 0x40000000


.global lbl_8066A6B4
lbl_8066A6B4:
	# ROM: 0x574514
	.4byte 0x3F800000


.global lbl_8066A6B8
lbl_8066A6B8:
	# ROM: 0x574518
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A6C0
lbl_8066A6C0:
	# ROM: 0x574520
	.4byte 0
	.4byte 0


.global lbl_8066A6C8
lbl_8066A6C8:
	# ROM: 0x574528
	.4byte 0x43300000
	.4byte 0


.global lbl_8066A6D0
lbl_8066A6D0:
	# ROM: 0x574530
	.4byte 0x3F800000


.global lbl_8066A6D4
lbl_8066A6D4:
	# ROM: 0x574534
	.4byte 0x42000000


.global lbl_8066A6D8
lbl_8066A6D8:
	# ROM: 0x574538
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A6E0
lbl_8066A6E0:
	# ROM: 0x574540
	.4byte 0x41200000


.global lbl_8066A6E4
lbl_8066A6E4:
	# ROM: 0x574544
	.4byte 0x3FB33333


.global lbl_8066A6E8
lbl_8066A6E8:
	# ROM: 0x574548
	.4byte 0x3FC00000


.global lbl_8066A6EC
lbl_8066A6EC:
	# ROM: 0x57454C
	.4byte 0x3E800000


.global lbl_8066A6F0
lbl_8066A6F0:
	# ROM: 0x574550
	.4byte 0x43E10000


.global lbl_8066A6F4
lbl_8066A6F4:
	# ROM: 0x574554
	.4byte 0x3C23D70A


.global lbl_8066A6F8
lbl_8066A6F8:
	# ROM: 0x574558
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066A700
lbl_8066A700:
	# ROM: 0x574560
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A708
lbl_8066A708:
	# ROM: 0x574568
	.4byte 0


.global lbl_8066A70C
lbl_8066A70C:
	# ROM: 0x57456C
	.4byte 0x42700000


.global lbl_8066A710
lbl_8066A710:
	# ROM: 0x574570
	.4byte 0x43960000


.global lbl_8066A714
lbl_8066A714:
	# ROM: 0x574574
	.4byte 0x3E4CCCCD


.global lbl_8066A718
lbl_8066A718:
	# ROM: 0x574578
	.4byte 0x40A00000


.global lbl_8066A71C
lbl_8066A71C:
	# ROM: 0x57457C
	.4byte 0x41F00000


.global lbl_8066A720
lbl_8066A720:
	# ROM: 0x574580
	.4byte 0x3F99999A


.global lbl_8066A724
lbl_8066A724:
	# ROM: 0x574584
	.4byte 0x42B40000


.global lbl_8066A728
lbl_8066A728:
	# ROM: 0x574588
	.4byte 0x3F800000


.global lbl_8066A72C
lbl_8066A72C:
	# ROM: 0x57458C
	.4byte 0


.global lbl_8066A730
lbl_8066A730:
	# ROM: 0x574590
	.4byte 0x43300000
	.4byte 0


.global lbl_8066A738
lbl_8066A738:
	# ROM: 0x574598
	.4byte 0


.global lbl_8066A73C
lbl_8066A73C:
	# ROM: 0x57459C
	.4byte 0x3F800000


.global lbl_8066A740
lbl_8066A740:
	# ROM: 0x5745A0
	.4byte 0x41200000
	.4byte 0


.global lbl_8066A748
lbl_8066A748:
	# ROM: 0x5745A8
	.4byte 0x3F800000


.global lbl_8066A74C
lbl_8066A74C:
	# ROM: 0x5745AC
	.4byte 0x447A0000


.global lbl_8066A750
lbl_8066A750:
	# ROM: 0x5745B0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A758
lbl_8066A758:
	# ROM: 0x5745B8
	.4byte 0x41F00000


.global lbl_8066A75C
lbl_8066A75C:
	# ROM: 0x5745BC
	.4byte 0x3F800000


.global lbl_8066A760
lbl_8066A760:
	# ROM: 0x5745C0
	.4byte 0


.global lbl_8066A764
lbl_8066A764:
	# ROM: 0x5745C4
	.4byte 0x40A00000


.global lbl_8066A768
lbl_8066A768:
	# ROM: 0x5745C8
	.4byte 0


.global lbl_8066A76C
lbl_8066A76C:
	# ROM: 0x5745CC
	.4byte 0x3E99999A


.global lbl_8066A770
lbl_8066A770:
	# ROM: 0x5745D0
	.4byte 0x3F000000


.global lbl_8066A774
lbl_8066A774:
	# ROM: 0x5745D4
	.4byte 0x3F800000


.global lbl_8066A778
lbl_8066A778:
	# ROM: 0x5745D8
	.asciz "?333"
	.balign 4


.global lbl_8066A780
lbl_8066A780:
	# ROM: 0x5745E0
	.4byte 0x3CA3D70A


.global lbl_8066A784
lbl_8066A784:
	# ROM: 0x5745E4
	.4byte 0x40400000


.global lbl_8066A788
lbl_8066A788:
	# ROM: 0x5745E8
	.4byte 0x3F19999A


.global lbl_8066A78C
lbl_8066A78C:
	# ROM: 0x5745EC
	.4byte 0x3ECCCCCD


.global lbl_8066A790
lbl_8066A790:
	# ROM: 0x5745F0
	.4byte 0x3F800000


.global lbl_8066A794
lbl_8066A794:
	# ROM: 0x5745F4
	.4byte 0


.global lbl_8066A798
lbl_8066A798:
	# ROM: 0x5745F8
	.4byte 0x41200000


.global lbl_8066A79C
lbl_8066A79C:
	# ROM: 0x5745FC
	.4byte 0x3F000000


.global lbl_8066A7A0
lbl_8066A7A0:
	# ROM: 0x574600
	.4byte 0x43200000


.global lbl_8066A7A4
lbl_8066A7A4:
	# ROM: 0x574604
	.4byte 0x3D75C28F


.global lbl_8066A7A8
lbl_8066A7A8:
	# ROM: 0x574608
	.4byte 0x40800000


.global lbl_8066A7AC
lbl_8066A7AC:
	# ROM: 0x57460C
	.4byte 0x3E4CCCCD


.global lbl_8066A7B0
lbl_8066A7B0:
	# ROM: 0x574610
	.4byte 0x3F4CCCCD


.global lbl_8066A7B4
lbl_8066A7B4:
	# ROM: 0x574614
	.4byte 0x3F666666


.global lbl_8066A7B8
lbl_8066A7B8:
	# ROM: 0x574618
	.4byte 0x41C80000


.global lbl_8066A7BC
lbl_8066A7BC:
	# ROM: 0x57461C
	.4byte 0x437A0000


.global lbl_8066A7C0
lbl_8066A7C0:
	# ROM: 0x574620
	.4byte 0x43480000


.global lbl_8066A7C4
lbl_8066A7C4:
	# ROM: 0x574624
	.4byte 0x3F333333


.global lbl_8066A7C8
lbl_8066A7C8:
	# ROM: 0x574628
	.4byte 0x3CC90FDB


.global lbl_8066A7CC
lbl_8066A7CC:
	# ROM: 0x57462C
	.4byte 0x42700000


.global lbl_8066A7D0
lbl_8066A7D0:
	# ROM: 0x574630
	.4byte 0x40000000
	.4byte 0
	.asciz "CBgTex"
	.balign 4


.global lbl_8066A7E0
lbl_8066A7E0:
	# ROM: 0x574640
	.4byte 0x43300000
	.4byte 0


.global lbl_8066A7E8
lbl_8066A7E8:
	# ROM: 0x574648
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066A7F0
lbl_8066A7F0:
	# ROM: 0x574650
	.4byte 0x41F00000


.global lbl_8066A7F4
lbl_8066A7F4:
	# ROM: 0x574654
	.4byte 0


.global lbl_8066A7F8
lbl_8066A7F8:
	# ROM: 0x574658
	.4byte 0x3DCCCCCD
	.4byte 0


.global lbl_8066A800
lbl_8066A800:
	# ROM: 0x574660
	.4byte 0x43300000
	.4byte 0


.global lbl_8066A808
lbl_8066A808:
	# ROM: 0x574668
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A810
lbl_8066A810:
	# ROM: 0x574670
	.4byte 0x43480000


.global lbl_8066A814
lbl_8066A814:
	# ROM: 0x574674
	.4byte 0x3F000000


.global lbl_8066A818
lbl_8066A818:
	# ROM: 0x574678
	.4byte 0x3C23D70A
	.4byte 0


.global lbl_8066A820
lbl_8066A820:
	# ROM: 0x574680
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066A828
lbl_8066A828:
	# ROM: 0x574688
	.4byte 0xBFE00000
	.4byte 0
	.4byte 0


.global lbl_8066A834
lbl_8066A834:
	# ROM: 0x574694
	.4byte 0x3E800000


.global lbl_8066A838
lbl_8066A838:
	# ROM: 0x574698
	.4byte 0x3F800000


.global lbl_8066A83C
lbl_8066A83C:
	# ROM: 0x57469C
	.4byte 0x3E4CCCCD


.global lbl_8066A840
lbl_8066A840:
	# ROM: 0x5746A0
	.4byte 0x3FC00000


.global lbl_8066A844
lbl_8066A844:
	# ROM: 0x5746A4
	.4byte 0x41800000


.global lbl_8066A848
lbl_8066A848:
	# ROM: 0x5746A8
	.4byte 0x02040506


.global lbl_8066A84C
lbl_8066A84C:
	# ROM: 0x5746AC
	.4byte 0x07080000


.global lbl_8066A850
lbl_8066A850:
	# ROM: 0x5746B0
	.4byte 0xC2600000


.global lbl_8066A854
lbl_8066A854:
	# ROM: 0x5746B4
	.4byte 0xC2880000


.global lbl_8066A858
lbl_8066A858:
	# ROM: 0x5746B8
	.4byte 0x43B80000
	.4byte 0


.global lbl_8066A860
lbl_8066A860:
	# ROM: 0x5746C0
	.4byte 0x3F800000


.global lbl_8066A864
lbl_8066A864:
	# ROM: 0x5746C4
	.4byte 0
	.asciz "CSubCur"
	.asciz "CCur22"
	.balign 4
	.asciz "CCur18"
	.balign 4
	.asciz "CCur16"
	.balign 4
	.asciz "CCur15"
	.balign 4
	.asciz "CCur14"
	.balign 4
	.asciz "CCur11"
	.balign 4
	.asciz "CCur09"
	.balign 4
	.asciz "CCur07"
	.balign 4


.global lbl_8066A8B0
lbl_8066A8B0:
	# ROM: 0x574710
	.4byte 0x41ACCCCD
	.4byte 0


.global lbl_8066A8B8
lbl_8066A8B8:
	# ROM: 0x574718
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A8C0
lbl_8066A8C0:
	# ROM: 0x574720
	.4byte 0x3F800000
	.4byte 0
	.4byte 0


.global lbl_8066A8CC
lbl_8066A8CC:
	# ROM: 0x57472C
	.4byte 0


.global lbl_8066A8D0
lbl_8066A8D0:
	# ROM: 0x574730
	.4byte 0x3F800000


.global lbl_8066A8D4
lbl_8066A8D4:
	# ROM: 0x574734
	.4byte 0x41200000


.global lbl_8066A8D8
lbl_8066A8D8:
	# ROM: 0x574738
	.4byte 0x3FB33333


.global lbl_8066A8DC
lbl_8066A8DC:
	# ROM: 0x57473C
	.4byte 0x3FC00000


.global lbl_8066A8E0
lbl_8066A8E0:
	# ROM: 0x574740
	.4byte 0x43300000
	.4byte 0


.global lbl_8066A8E8
lbl_8066A8E8:
	# ROM: 0x574748
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A8F0
lbl_8066A8F0:
	# ROM: 0x574750
	.4byte 0x02040506


.global lbl_8066A8F4
lbl_8066A8F4:
	# ROM: 0x574754
	.4byte 0x07080000


.global lbl_8066A8F8
lbl_8066A8F8:
	# ROM: 0x574758
	.4byte 0x04050607


.global lbl_8066A8FC
lbl_8066A8FC:
	# ROM: 0x57475C
	.4byte 0x08000000


.global lbl_8066A900
lbl_8066A900:
	# ROM: 0x574760
	.4byte 0x3C23D70A


.global lbl_8066A904
lbl_8066A904:
	# ROM: 0x574764
	.4byte 0x42C80000


.global lbl_8066A908
lbl_8066A908:
	# ROM: 0x574768
	.4byte 0x3F000000


.global lbl_8066A90C
lbl_8066A90C:
	# ROM: 0x57476C
	.4byte 0x02040506


.global lbl_8066A910
lbl_8066A910:
	# ROM: 0x574770
	.4byte 0x07080000


.global lbl_8066A914
lbl_8066A914:
	# ROM: 0x574774
	.4byte 0x02040506


.global lbl_8066A918
lbl_8066A918:
	# ROM: 0x574778
	.4byte 0x07080000


.global lbl_8066A91C
lbl_8066A91C:
	# ROM: 0x57477C
	.4byte 0x02040506


.global lbl_8066A920
lbl_8066A920:
	# ROM: 0x574780
	.4byte 0x07080000


.global lbl_8066A924
lbl_8066A924:
	# ROM: 0x574784
	.4byte 0x02040506


.global lbl_8066A928
lbl_8066A928:
	# ROM: 0x574788
	.4byte 0x07080000


.global lbl_8066A92C
lbl_8066A92C:
	# ROM: 0x57478C
	.4byte 0x04050607


.global lbl_8066A930
lbl_8066A930:
	# ROM: 0x574790
	.4byte 0x08000000


.global lbl_8066A934
lbl_8066A934:
	# ROM: 0x574794
	.4byte 0x02040506


.global lbl_8066A938
lbl_8066A938:
	# ROM: 0x574798
	.4byte 0x07080000


.global lbl_8066A93C
lbl_8066A93C:
	# ROM: 0x57479C
	.4byte 0x02040506


.global lbl_8066A940
lbl_8066A940:
	# ROM: 0x5747A0
	.4byte 0x07080000
	.4byte 0


.global lbl_8066A948
lbl_8066A948:
	# ROM: 0x5747A8
	.4byte 0x3F800000


.global lbl_8066A94C
lbl_8066A94C:
	# ROM: 0x5747AC
	.4byte 0


.global lbl_8066A950
lbl_8066A950:
	# ROM: 0x5747B0
	.4byte 0x43300000
	.4byte 0
	.asciz "wpn"
	.asciz "head"
	.balign 4
	.asciz "body"
	.balign 4
	.asciz "arm"
	.asciz "waist"
	.balign 4
	.asciz "legg"
	.balign 4
	.asciz "arts"
	.balign 4
	.asciz "wpn1"
	.balign 4
	.asciz "head1"
	.balign 4
	.asciz "body1"
	.balign 4
	.asciz "arm1"
	.balign 4
	.asciz "waist1"
	.balign 4
	.asciz "legg1"
	.balign 4


.global lbl_8066A9B8
lbl_8066A9B8:
	# ROM: 0x574818
	.4byte 0
	.4byte 0


.global lbl_8066A9C0
lbl_8066A9C0:
	# ROM: 0x574820
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066A9C8
lbl_8066A9C8:
	# ROM: 0x574828
	.4byte 0x43300000
	.4byte 0
	.4byte 0


.global lbl_8066A9D4
lbl_8066A9D4:
	# ROM: 0x574834
	.4byte 0x3F800000


.global lbl_8066A9D8
lbl_8066A9D8:
	# ROM: 0x574838
	.4byte 0x3E4CCCCD


.global lbl_8066A9DC
lbl_8066A9DC:
	# ROM: 0x57483C
	.4byte 0x438A0000


.global lbl_8066A9E0
lbl_8066A9E0:
	# ROM: 0x574840
	.4byte 0x42540000


.global lbl_8066A9E4
lbl_8066A9E4:
	# ROM: 0x574844
	.4byte 0x3E800000


.global lbl_8066A9E8
lbl_8066A9E8:
	# ROM: 0x574848
	.4byte 0x41200000


.global lbl_8066A9EC
lbl_8066A9EC:
	# ROM: 0x57484C
	.4byte 0x3FB33333


.global lbl_8066A9F0
lbl_8066A9F0:
	# ROM: 0x574850
	.4byte 0x3FC00000
	.4byte 0


.global lbl_8066A9F8
lbl_8066A9F8:
	# ROM: 0x574858
	.4byte 0


.global lbl_8066A9FC
lbl_8066A9FC:
	# ROM: 0x57485C
	.4byte 0x40800000


.global lbl_8066AA00
lbl_8066AA00:
	# ROM: 0x574860
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AA08
lbl_8066AA08:
	# ROM: 0x574868
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066AA10
lbl_8066AA10:
	# ROM: 0x574870
	.4byte 0x3F800000


.global lbl_8066AA14
lbl_8066AA14:
	# ROM: 0x574874
	.4byte 0x40A00000


.global lbl_8066AA18
lbl_8066AA18:
	# ROM: 0x574878
	.4byte 0


.global lbl_8066AA1C
lbl_8066AA1C:
	# ROM: 0x57487C
	.4byte 0x41200000


.global lbl_8066AA20
lbl_8066AA20:
	# ROM: 0x574880
	.4byte 0x3F800000


.global lbl_8066AA24
lbl_8066AA24:
	# ROM: 0x574884
	.4byte 0x40600000
	.asciz "r1_item"
	.asciz "s1camID"
	.asciz "s1ACT"
	.balign 4
	.asciz "s1EF"
	.balign 4
	.asciz "s1EFATR"
	.asciz "s1SE"
	.balign 4
	.asciz "s1SEATR"


.global lbl_8066AA60
lbl_8066AA60:
	# ROM: 0x5748C0
	.4byte 0


.global lbl_8066AA64
lbl_8066AA64:
	# ROM: 0x5748C4
	.4byte 0x3F800000


.global lbl_8066AA68
lbl_8066AA68:
	# ROM: 0x5748C8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066AA70
lbl_8066AA70:
	# ROM: 0x5748D0
	.4byte 0x41A00000


.global lbl_8066AA74
lbl_8066AA74:
	# ROM: 0x5748D4
	.4byte 0x42F00000


.global lbl_8066AA78
lbl_8066AA78:
	# ROM: 0x5748D8
	.4byte 0x41F00000


.global lbl_8066AA7C
lbl_8066AA7C:
	# ROM: 0x5748DC
	.4byte 0x43700000


.global lbl_8066AA80
lbl_8066AA80:
	# ROM: 0x5748E0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AA88
lbl_8066AA88:
	# ROM: 0x5748E8
	.4byte 0x40A00000
	.4byte 0


.global lbl_8066AA90
lbl_8066AA90:
	# ROM: 0x5748F0
	.4byte 0x3F800000


.global lbl_8066AA94
lbl_8066AA94:
	# ROM: 0x5748F4
	.4byte 0x41A00000


.global lbl_8066AA98
lbl_8066AA98:
	# ROM: 0x5748F8
	.4byte 0


.global lbl_8066AA9C
lbl_8066AA9C:
	# ROM: 0x5748FC
	.4byte 0x3F800000


.global lbl_8066AAA0
lbl_8066AAA0:
	# ROM: 0x574900
	.4byte 0x41200000


.global lbl_8066AAA4
lbl_8066AAA4:
	# ROM: 0x574904
	.4byte 0x10121113


.global lbl_8066AAA8
lbl_8066AAA8:
	# ROM: 0x574908
	.4byte 0x3F800000


.global lbl_8066AAAC
lbl_8066AAAC:
	# ROM: 0x57490C
	.4byte 0


.global lbl_8066AAB0
lbl_8066AAB0:
	# ROM: 0x574910
	.4byte 0x3FC00000


.global lbl_8066AAB4
lbl_8066AAB4:
	# ROM: 0x574914
	.4byte 0x40A00000


.global lbl_8066AAB8
lbl_8066AAB8:
	# ROM: 0x574918
	.4byte 0x3E4CCCCD


.global lbl_8066AABC
lbl_8066AABC:
	# ROM: 0x57491C
	.4byte 0xBF333333


.global lbl_8066AAC0
lbl_8066AAC0:
	# ROM: 0x574920
	.4byte 0xC0000000


.global lbl_8066AAC4
lbl_8066AAC4:
	# ROM: 0x574924
	.4byte 0xBF800000


.global lbl_8066AAC8
lbl_8066AAC8:
	# ROM: 0x574928
	.4byte 0x3E99999A


.global lbl_8066AACC
lbl_8066AACC:
	# ROM: 0x57492C
	.4byte 0x3E800000


.global lbl_8066AAD0
lbl_8066AAD0:
	# ROM: 0x574930
	.4byte 0x3DCCCCCD
	.4byte 0


.global lbl_8066AAD8
lbl_8066AAD8:
	# ROM: 0x574938
	.4byte 0x3F800000


.global lbl_8066AADC
lbl_8066AADC:
	# ROM: 0x57493C
	.2byte 0x0102


.global lbl_8066AADE
lbl_8066AADE:
	# ROM: 0x57493E
	.2byte 0x0300


.global lbl_8066AAE0
lbl_8066AAE0:
	# ROM: 0x574940
	.4byte 0x04050607
	.4byte 0


.global lbl_8066AAE8
lbl_8066AAE8:
	# ROM: 0x574948
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066AAF0
lbl_8066AAF0:
	# ROM: 0x574950
	.4byte 0


.global lbl_8066AAF4
lbl_8066AAF4:
	# ROM: 0x574954
	.4byte 0x42A40000


.global lbl_8066AAF8
lbl_8066AAF8:
	# ROM: 0x574958
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AB00
lbl_8066AB00:
	# ROM: 0x574960
	.4byte 0x3F000000


.global lbl_8066AB04
lbl_8066AB04:
	# ROM: 0x574964
	.4byte 0x41200000


.global lbl_8066AB08
lbl_8066AB08:
	# ROM: 0x574968
	.4byte 0x41600000
	.4byte 0


.global lbl_8066AB10
lbl_8066AB10:
	# ROM: 0x574970
	.4byte 0x42C80000
	.4byte 0


.global lbl_8066AB18
lbl_8066AB18:
	# ROM: 0x574978
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "getPcHp"
	.asciz "synchro"


.global lbl_8066AB30
lbl_8066AB30:
	# ROM: 0x574990
	.4byte 0x3F800000


.global lbl_8066AB34
lbl_8066AB34:
	# ROM: 0x574994
	.4byte 0


.global lbl_8066AB38
lbl_8066AB38:
	# ROM: 0x574998
	.4byte 0x40A00000


.global lbl_8066AB3C
lbl_8066AB3C:
	# ROM: 0x57499C
	.4byte 0x3E4CCCCD


.global lbl_8066AB40
lbl_8066AB40:
	# ROM: 0x5749A0
	.4byte 0x3DCCCCCD


.global lbl_8066AB44
lbl_8066AB44:
	# ROM: 0x5749A4
	.4byte 0x40800000


.global lbl_8066AB48
lbl_8066AB48:
	# ROM: 0x5749A8
	.4byte 0x40600000


.global lbl_8066AB4C
lbl_8066AB4C:
	# ROM: 0x5749AC
	.4byte 0xBF800000


.global lbl_8066AB50
lbl_8066AB50:
	# ROM: 0x5749B0
	.4byte 0xBFC00000


.global lbl_8066AB54
lbl_8066AB54:
	# ROM: 0x5749B4
	.4byte 0x40000000


.global lbl_8066AB58
lbl_8066AB58:
	# ROM: 0x5749B8
	.4byte 0x41000000


.global lbl_8066AB5C
lbl_8066AB5C:
	# ROM: 0x5749BC
	.4byte 0x3FC00000


.global lbl_8066AB60
lbl_8066AB60:
	# ROM: 0x5749C0
	.4byte 0x04050607


.global lbl_8066AB64
lbl_8066AB64:
	# ROM: 0x5749C4
	.4byte 0x08000000


.global lbl_8066AB68
lbl_8066AB68:
	# ROM: 0x5749C8
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066AB70
lbl_8066AB70:
	# ROM: 0x5749D0
	.4byte 0


.global lbl_8066AB74
lbl_8066AB74:
	# ROM: 0x5749D4
	.4byte 0x38D1B717


.global lbl_8066AB78
lbl_8066AB78:
	# ROM: 0x5749D8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066AB80
lbl_8066AB80:
	# ROM: 0x5749E0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AB88
lbl_8066AB88:
	# ROM: 0x5749E8
	.4byte 0x42480000


.global lbl_8066AB8C
lbl_8066AB8C:
	# ROM: 0x5749EC
	.4byte 0x471C4000


.global lbl_8066AB90
lbl_8066AB90:
	# ROM: 0x5749F0
	.4byte 0x40200000


.global lbl_8066AB94
lbl_8066AB94:
	# ROM: 0x5749F4
	.4byte 0x40C80000


.global lbl_8066AB98
lbl_8066AB98:
	# ROM: 0x5749F8
	.4byte 0
	.4byte 0


.global lbl_8066ABA0
lbl_8066ABA0:
	# ROM: 0x574A00
	.4byte 0x41C80000


.global lbl_8066ABA4
lbl_8066ABA4:
	# ROM: 0x574A04
	.4byte 0x3F19999A


.global lbl_8066ABA8
lbl_8066ABA8:
	# ROM: 0x574A08
	.4byte 0x3F800000


.global lbl_8066ABAC
lbl_8066ABAC:
	# ROM: 0x574A0C
	.4byte 0x42700000


.global lbl_8066ABB0
lbl_8066ABB0:
	# ROM: 0x574A10
	.4byte 0x41F00000


.global lbl_8066ABB4
lbl_8066ABB4:
	# ROM: 0x574A14
	.4byte 0x41B00000


.global lbl_8066ABB8
lbl_8066ABB8:
	# ROM: 0x574A18
	.4byte 0x43300000
	.4byte 0


.global lbl_8066ABC0
lbl_8066ABC0:
	# ROM: 0x574A20
	.4byte 0x42A00000


.global lbl_8066ABC4
lbl_8066ABC4:
	# ROM: 0x574A24
	.4byte 0


.global lbl_8066ABC8
lbl_8066ABC8:
	# ROM: 0x574A28
	.4byte 0x40400000


.global lbl_8066ABCC
lbl_8066ABCC:
	# ROM: 0x574A2C
	.4byte 0x42C80000


.global lbl_8066ABD0
lbl_8066ABD0:
	# ROM: 0x574A30
	.4byte 0xC1880000


.global lbl_8066ABD4
lbl_8066ABD4:
	# ROM: 0x574A34
	.4byte 0x42F00000


.global lbl_8066ABD8
lbl_8066ABD8:
	# ROM: 0x574A38
	.4byte 0xC2140000


.global lbl_8066ABDC
lbl_8066ABDC:
	# ROM: 0x574A3C
	.4byte 0x3F800000
	.asciz "A_posX"
	.balign 4
	.asciz "A_posY"
	.balign 4
	.asciz "A_posZ"
	.balign 4
	.asciz "gimID"
	.balign 4
	.asciz "MSGID"
	.balign 4
	.asciz "name1"
	.balign 4


.global lbl_8066AC10
lbl_8066AC10:
	# ROM: 0x574A70
	.4byte 0


.global lbl_8066AC14
lbl_8066AC14:
	# ROM: 0x574A74
	.4byte 0x4222F983


.global lbl_8066AC18
lbl_8066AC18:
	# ROM: 0x574A78
	.4byte 0x3F800000


.global lbl_8066AC1C
lbl_8066AC1C:
	# ROM: 0x574A7C
	.4byte 0x41F00000


.global lbl_8066AC20
lbl_8066AC20:
	# ROM: 0x574A80
	.4byte 0x46EA6000


.global lbl_8066AC24
lbl_8066AC24:
	# ROM: 0x574A84
	.4byte 0x3C23D70A


.global lbl_8066AC28
lbl_8066AC28:
	# ROM: 0x574A88
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066AC30
lbl_8066AC30:
	# ROM: 0x574A90
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AC38
lbl_8066AC38:
	# ROM: 0x574A98
	.4byte 0x3FC00000
	.4byte 0


.global lbl_8066AC40
lbl_8066AC40:
	# ROM: 0x574AA0
	.4byte 0


.global lbl_8066AC44
lbl_8066AC44:
	# ROM: 0x574AA4
	.4byte 0x3F800000


.global lbl_8066AC48
lbl_8066AC48:
	# ROM: 0x574AA8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AC50
lbl_8066AC50:
	# ROM: 0x574AB0
	.4byte 0x40A00000


.global lbl_8066AC54
lbl_8066AC54:
	# ROM: 0x574AB4
	.4byte 0x41F00000


.global lbl_8066AC58
lbl_8066AC58:
	# ROM: 0x574AB8
	.4byte 0x40800000


.global lbl_8066AC5C
lbl_8066AC5C:
	# ROM: 0x574ABC
	.4byte 0x43480000


.global lbl_8066AC60
lbl_8066AC60:
	# ROM: 0x574AC0
	.asciz "Da"
	.4byte 0
	.byte 0x00
	.asciz "popID1"
	.balign 4


.global lbl_8066AC70
lbl_8066AC70:
	# ROM: 0x574AD0
	.4byte 0x40000000


.global lbl_8066AC74
lbl_8066AC74:
	# ROM: 0x574AD4
	.4byte 0x3C23D70A


.global lbl_8066AC78
lbl_8066AC78:
	# ROM: 0x574AD8
	.4byte 0x3F000000


.global lbl_8066AC7C
lbl_8066AC7C:
	# ROM: 0x574ADC
	.4byte 0x3D4CCCCD


.global lbl_8066AC80
lbl_8066AC80:
	# ROM: 0x574AE0
	.4byte 0x3F800000


.global lbl_8066AC84
lbl_8066AC84:
	# ROM: 0x574AE4
	.4byte 0x41F00000


.global lbl_8066AC88
lbl_8066AC88:
	# ROM: 0x574AE8
	.4byte 0


.global lbl_8066AC8C
lbl_8066AC8C:
	# ROM: 0x574AEC
	.4byte 0x40A00000


.global lbl_8066AC90
lbl_8066AC90:
	# ROM: 0x574AF0
	.4byte 0x41200000


.global lbl_8066AC94
lbl_8066AC94:
	# ROM: 0x574AF4
	.4byte 0x41F00000


.global lbl_8066AC98
lbl_8066AC98:
	# ROM: 0x574AF8
	.4byte 0x42F00000


.global lbl_8066AC9C
lbl_8066AC9C:
	# ROM: 0x574AFC
	.4byte 0x40000000


.global lbl_8066ACA0
lbl_8066ACA0:
	# ROM: 0x574B00
	.4byte 0xC0800000


.global lbl_8066ACA4
lbl_8066ACA4:
	# ROM: 0x574B04
	.4byte 0x41A00000


.global lbl_8066ACA8
lbl_8066ACA8:
	# ROM: 0x574B08
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066ACB0
lbl_8066ACB0:
	# ROM: 0x574B10
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066ACB8
lbl_8066ACB8:
	# ROM: 0x574B18
	.4byte 0x420C0000
	.4byte 0


.global lbl_8066ACC0
lbl_8066ACC0:
	# ROM: 0x574B20
	.4byte 0x3C23D70A


.global lbl_8066ACC4
lbl_8066ACC4:
	# ROM: 0x574B24
	.4byte 0


.global lbl_8066ACC8
lbl_8066ACC8:
	# ROM: 0x574B28
	.4byte 0x41F00000


.global lbl_8066ACCC
lbl_8066ACCC:
	# ROM: 0x574B2C
	.4byte 0x3F800000


.global lbl_8066ACD0
lbl_8066ACD0:
	# ROM: 0x574B30
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066ACD8
lbl_8066ACD8:
	# ROM: 0x574B38
	.4byte 0x43300000
	.4byte 0


.global lbl_8066ACE0
lbl_8066ACE0:
	# ROM: 0x574B40
	.4byte 0x40A00000


.global lbl_8066ACE4
lbl_8066ACE4:
	# ROM: 0x574B44
	.4byte 0x3E99999A


.global lbl_8066ACE8
lbl_8066ACE8:
	# ROM: 0x574B48
	.4byte 0x3DCCCCCD


.global lbl_8066ACEC
lbl_8066ACEC:
	# ROM: 0x574B4C
	.4byte 0xBDCCCCCD


.global lbl_8066ACF0
lbl_8066ACF0:
	# ROM: 0x574B50
	.4byte 0x43160000
	.4byte 0
	.asciz "A_Item"
	.balign 4
	.asciz "A_Lost"
	.balign 4


.global lbl_8066AD08
lbl_8066AD08:
	# ROM: 0x574B68
	.4byte 0


.global lbl_8066AD0C
lbl_8066AD0C:
	# ROM: 0x574B6C
	.4byte 0x40A00000


.global lbl_8066AD10
lbl_8066AD10:
	# ROM: 0x574B70
	.4byte 0


.global lbl_8066AD14
lbl_8066AD14:
	# ROM: 0x574B74
	.4byte 0x41A00000


.global lbl_8066AD18
lbl_8066AD18:
	# ROM: 0x574B78
	.4byte 0x41F00000


.global lbl_8066AD1C
lbl_8066AD1C:
	# ROM: 0x574B7C
	.4byte 0


.global lbl_8066AD20
lbl_8066AD20:
	# ROM: 0x574B80
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AD28
lbl_8066AD28:
	# ROM: 0x574B88
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066AD30
lbl_8066AD30:
	# ROM: 0x574B90
	.4byte 0x3F800000


.global lbl_8066AD34
lbl_8066AD34:
	# ROM: 0x574B94
	.4byte 0xC28E0000


.global lbl_8066AD38
lbl_8066AD38:
	# ROM: 0x574B98
	.4byte 0x42300000


.global lbl_8066AD3C
lbl_8066AD3C:
	# ROM: 0x574B9C
	.4byte 0x41800000


.global lbl_8066AD40
lbl_8066AD40:
	# ROM: 0x574BA0
	.4byte 0x42C80000


.global lbl_8066AD44
lbl_8066AD44:
	# ROM: 0x574BA4
	.4byte 0x3D23D70A


.global lbl_8066AD48
lbl_8066AD48:
	# ROM: 0x574BA8
	.4byte 0xC2680000


.global lbl_8066AD4C
lbl_8066AD4C:
	# ROM: 0x574BAC
	.4byte 0xC2640000


.global lbl_8066AD50
lbl_8066AD50:
	# ROM: 0x574BB0
	.4byte 0x43B90000
	.4byte 0


.global lbl_8066AD58
lbl_8066AD58:
	# ROM: 0x574BB8
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066AD60
lbl_8066AD60:
	# ROM: 0x574BC0
	.4byte 0x3F800000


.global lbl_8066AD64
lbl_8066AD64:
	# ROM: 0x574BC4
	.4byte 0


.global lbl_8066AD68
lbl_8066AD68:
	# ROM: 0x574BC8
	.4byte 0x3D810625


.global lbl_8066AD6C
lbl_8066AD6C:
	# ROM: 0x574BCC
	.4byte 0xBE19999A


.global lbl_8066AD70
lbl_8066AD70:
	# ROM: 0x574BD0
	.4byte 0xBFD45A1D


.global lbl_8066AD74
lbl_8066AD74:
	# ROM: 0x574BD4
	.4byte 0x40025E35


.global lbl_8066AD78
lbl_8066AD78:
	# ROM: 0x574BD8
	.4byte 0xBF70E560


.global lbl_8066AD7C
lbl_8066AD7C:
	# ROM: 0x574BDC
	.4byte 0x428C0000


.global lbl_8066AD80
lbl_8066AD80:
	# ROM: 0x574BE0
	.4byte 0xC2DC0000


.global lbl_8066AD84
lbl_8066AD84:
	# ROM: 0x574BE4
	.4byte 0xC2AC0000


.global lbl_8066AD88
lbl_8066AD88:
	# ROM: 0x574BE8
	.4byte 0x42900000


.global lbl_8066AD8C
lbl_8066AD8C:
	# ROM: 0x574BEC
	.4byte 0x40A00000


.global lbl_8066AD90
lbl_8066AD90:
	# ROM: 0x574BF0
	.4byte 0x3E4CCCCD


.global lbl_8066AD94
lbl_8066AD94:
	# ROM: 0x574BF4
	.4byte 0x42480000


.global lbl_8066AD98
lbl_8066AD98:
	# ROM: 0x574BF8
	.4byte 0x41F00000


.global lbl_8066AD9C
lbl_8066AD9C:
	# ROM: 0x574BFC
	.4byte 0x41A00000


.global lbl_8066ADA0
lbl_8066ADA0:
	# ROM: 0x574C00
	.2byte 0xFFFF


.global lbl_8066ADA2
lbl_8066ADA2:
	# ROM: 0x574C02
	.2byte 0xFF00


.global lbl_8066ADA4
lbl_8066ADA4:
	# ROM: 0x574C04
	.4byte 0xFFFFFFFF


.global lbl_8066ADA8
lbl_8066ADA8:
	# ROM: 0x574C08
	.4byte 0xFFFF0000


.global lbl_8066ADAC
lbl_8066ADAC:
	# ROM: 0x574C0C
	.4byte 0x3C23D70A


.global lbl_8066ADB0
lbl_8066ADB0:
	# ROM: 0x574C10
	.4byte 0x43300000
	.4byte 0


.global lbl_8066ADB8
lbl_8066ADB8:
	# ROM: 0x574C18
	.4byte 0x42C80000


.global lbl_8066ADBC
lbl_8066ADBC:
	# ROM: 0x574C1C
	.4byte 0x3D23D70A


.global lbl_8066ADC0
lbl_8066ADC0:
	# ROM: 0x574C20
	.4byte 0x41C80000


.global lbl_8066ADC4
lbl_8066ADC4:
	# ROM: 0x574C24
	.4byte 0x3FC00000


.global lbl_8066ADC8
lbl_8066ADC8:
	# ROM: 0x574C28
	.4byte 0x3F866666


.global lbl_8066ADCC
lbl_8066ADCC:
	# ROM: 0x574C2C
	.4byte 0xBFA66666


.global lbl_8066ADD0
lbl_8066ADD0:
	# ROM: 0x574C30
	.4byte 0xC1A00000
	.4byte 0


.global lbl_8066ADD8
lbl_8066ADD8:
	# ROM: 0x574C38
	.4byte 0
	.4byte 0


.global lbl_8066ADE0
lbl_8066ADE0:
	# ROM: 0x574C40
	.4byte 0x43300000
	.4byte 0


.global lbl_8066ADE8
lbl_8066ADE8:
	# ROM: 0x574C48
	.4byte 0x41F00000


.global lbl_8066ADEC
lbl_8066ADEC:
	# ROM: 0x574C4C
	.4byte 0x3C23D70A


.global lbl_8066ADF0
lbl_8066ADF0:
	# ROM: 0x574C50
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066ADF8
lbl_8066ADF8:
	# ROM: 0x574C58
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066AE00
lbl_8066AE00:
	# ROM: 0x574C60
	.4byte 0


.global lbl_8066AE04
lbl_8066AE04:
	# ROM: 0x574C64
	.4byte 0x3F800000


.global lbl_8066AE08
lbl_8066AE08:
	# ROM: 0x574C68
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AE10
lbl_8066AE10:
	# ROM: 0x574C70
	.4byte 0


.global lbl_8066AE14
lbl_8066AE14:
	# ROM: 0x574C74
	.4byte 0x3F800000


.global lbl_8066AE18
lbl_8066AE18:
	# ROM: 0x574C78
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066AE20
lbl_8066AE20:
	# ROM: 0x574C80
	.4byte 0x40A00000
	.4byte 0


.global lbl_8066AE28
lbl_8066AE28:
	# ROM: 0x574C88
	.4byte 0


.global lbl_8066AE2C
lbl_8066AE2C:
	# ROM: 0x574C8C
	.4byte 0x3F800000


.global lbl_8066AE30
lbl_8066AE30:
	# ROM: 0x574C90
	.4byte 0x42B40000
	.4byte 0


.global lbl_8066AE38
lbl_8066AE38:
	# ROM: 0x574C98
	.4byte 0x43560000


.global lbl_8066AE3C
lbl_8066AE3C:
	# ROM: 0x574C9C
	.4byte 0x42EC0000


.global lbl_8066AE40
lbl_8066AE40:
	# ROM: 0x574CA0
	.4byte 0


.global lbl_8066AE44
lbl_8066AE44:
	# ROM: 0x574CA4
	.4byte 0x3F800000


.global lbl_8066AE48
lbl_8066AE48:
	# ROM: 0x574CA8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AE50
lbl_8066AE50:
	# ROM: 0x574CB0
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066AE58
lbl_8066AE58:
	# ROM: 0x574CB8
	.4byte 0x432A0000


.global lbl_8066AE5C
lbl_8066AE5C:
	# ROM: 0x574CBC
	.4byte 0


.global lbl_8066AE60
lbl_8066AE60:
	# ROM: 0x574CC0
	.4byte 0xC1B80000


.global lbl_8066AE64
lbl_8066AE64:
	# ROM: 0x574CC4
	.4byte 0x43160000


.global lbl_8066AE68
lbl_8066AE68:
	# ROM: 0x574CC8
	.4byte 0xC1600000


.global lbl_8066AE6C
lbl_8066AE6C:
	# ROM: 0x574CCC
	.4byte 0x43020000


.global lbl_8066AE70
lbl_8066AE70:
	# ROM: 0x574CD0
	.4byte 0xC0A00000


.global lbl_8066AE74
lbl_8066AE74:
	# ROM: 0x574CD4
	.4byte 0x42DC0000


.global lbl_8066AE78
lbl_8066AE78:
	# ROM: 0x574CD8
	.4byte 0x40800000


.global lbl_8066AE7C
lbl_8066AE7C:
	# ROM: 0x574CDC
	.4byte 0x42B40000


.global lbl_8066AE80
lbl_8066AE80:
	# ROM: 0x574CE0
	.4byte 0x41500000


.global lbl_8066AE84
lbl_8066AE84:
	# ROM: 0x574CE4
	.4byte 0x41B00000


.global lbl_8066AE88
lbl_8066AE88:
	# ROM: 0x574CE8
	.4byte 0xC2A40000


.global lbl_8066AE8C
lbl_8066AE8C:
	# ROM: 0x574CEC
	.4byte 0xC28C0000


.global lbl_8066AE90
lbl_8066AE90:
	# ROM: 0x574CF0
	.4byte 0xC2680000


.global lbl_8066AE94
lbl_8066AE94:
	# ROM: 0x574CF4
	.4byte 0xC2380000


.global lbl_8066AE98
lbl_8066AE98:
	# ROM: 0x574CF8
	.4byte 0x428C0000


.global lbl_8066AE9C
lbl_8066AE9C:
	# ROM: 0x574CFC
	.4byte 0x2B2C2D30


.global lbl_8066AEA0
lbl_8066AEA0:
	# ROM: 0x574D00
	.4byte 0x31000000
	.4byte 0


.global lbl_8066AEA8
lbl_8066AEA8:
	# ROM: 0x574D08
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AEB0
lbl_8066AEB0:
	# ROM: 0x574D10
	.4byte 0x3F800000
	.4byte 0
	.asciz "CSysWin"


.global lbl_8066AEC0
lbl_8066AEC0:
	# ROM: 0x574D20
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066AEC8
lbl_8066AEC8:
	# ROM: 0x574D28
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AED0
lbl_8066AED0:
	# ROM: 0x574D30
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066AED8
lbl_8066AED8:
	# ROM: 0x574D38
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AEE0
lbl_8066AEE0:
	# ROM: 0x574D40
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AEE8
lbl_8066AEE8:
	# ROM: 0x574D48
	.4byte 0


.global lbl_8066AEEC
lbl_8066AEEC:
	# ROM: 0x574D4C
	.4byte 0x3F800000


.global lbl_8066AEF0
lbl_8066AEF0:
	# ROM: 0x574D50
	.4byte 0


.global lbl_8066AEF4
lbl_8066AEF4:
	# ROM: 0x574D54
	.4byte 0x3F800000


.global lbl_8066AEF8
lbl_8066AEF8:
	# ROM: 0x574D58
	.4byte 0


.global lbl_8066AEFC
lbl_8066AEFC:
	# ROM: 0x574D5C
	.4byte 0x3F800000


.global lbl_8066AF00
lbl_8066AF00:
	# ROM: 0x574D60
	.4byte 0x41200000
	.4byte 0


.global lbl_8066AF08
lbl_8066AF08:
	# ROM: 0x574D68
	.4byte 0x3F800000


.global lbl_8066AF0C
lbl_8066AF0C:
	# ROM: 0x574D6C
	.4byte 0


.global lbl_8066AF10
lbl_8066AF10:
	# ROM: 0x574D70
	.4byte 0x3F333333


.global lbl_8066AF14
lbl_8066AF14:
	# ROM: 0x574D74
	.4byte 0x3F4CCCCD


.global lbl_8066AF18
lbl_8066AF18:
	# ROM: 0x574D78
	.4byte 0x3F19999A


.global lbl_8066AF1C
lbl_8066AF1C:
	# ROM: 0x574D7C
	.4byte 0x41900000


.global lbl_8066AF20
lbl_8066AF20:
	# ROM: 0x574D80
	.4byte 0x42900000


.global lbl_8066AF24
lbl_8066AF24:
	# ROM: 0x574D84
	.4byte 0x42FC0000


.global lbl_8066AF28
lbl_8066AF28:
	# ROM: 0x574D88
	.4byte 0x43340000
	.4byte 0


.global lbl_8066AF30
lbl_8066AF30:
	# ROM: 0x574D90
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066AF38
lbl_8066AF38:
	# ROM: 0x574D98
	.4byte 0x438A0000


.global lbl_8066AF3C
lbl_8066AF3C:
	# ROM: 0x574D9C
	.4byte 0x41C80000


.global lbl_8066AF40
lbl_8066AF40:
	# ROM: 0x574DA0
	.4byte 0


.global lbl_8066AF44
lbl_8066AF44:
	# ROM: 0x574DA4
	.4byte 0x3F800000


.global lbl_8066AF48
lbl_8066AF48:
	# ROM: 0x574DA8
	.4byte 0x3FB33333


.global lbl_8066AF4C
lbl_8066AF4C:
	# ROM: 0x574DAC
	.4byte 0x3C23D70A


.global lbl_8066AF50
lbl_8066AF50:
	# ROM: 0x574DB0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066AF58
lbl_8066AF58:
	# ROM: 0x574DB8
	.4byte 0x3FC00000


.global lbl_8066AF5C
lbl_8066AF5C:
	# ROM: 0x574DBC
	.4byte 0x3DCCCCCD


.global lbl_8066AF60
lbl_8066AF60:
	# ROM: 0x574DC0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AF68
lbl_8066AF68:
	# ROM: 0x574DC8
	.4byte 0x41A00000


.global lbl_8066AF6C
lbl_8066AF6C:
	# ROM: 0x574DCC
	.4byte 0x41200000


.global lbl_8066AF70
lbl_8066AF70:
	# ROM: 0x574DD0
	.4byte 0x41F00000


.global lbl_8066AF74
lbl_8066AF74:
	# ROM: 0x574DD4
	.4byte 0x3F000000


.global lbl_8066AF78
lbl_8066AF78:
	# ROM: 0x574DD8
	.4byte 0x40140000
	.4byte 0


.global lbl_8066AF80
lbl_8066AF80:
	# ROM: 0x574DE0
	.4byte 0x3FF40000
	.4byte 0


.global lbl_8066AF88
lbl_8066AF88:
	# ROM: 0x574DE8
	.4byte 0x43EE0000
	.4byte 0
	.asciz "monado"
	.balign 4


.global lbl_8066AF98
lbl_8066AF98:
	# ROM: 0x574DF8
	.4byte 0
	.4byte 0


.global lbl_8066AFA0
lbl_8066AFA0:
	# ROM: 0x574E00
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066AFA8
lbl_8066AFA8:
	# ROM: 0x574E08
	.4byte 0xBFE00000
	.4byte 0


.global lbl_8066AFB0
lbl_8066AFB0:
	# ROM: 0x574E10
	.4byte 0x43300000
	.4byte 0


.global lbl_8066AFB8
lbl_8066AFB8:
	# ROM: 0x574E18
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066AFC0
lbl_8066AFC0:
	# ROM: 0x574E20
	.4byte 0


.global lbl_8066AFC4
lbl_8066AFC4:
	# ROM: 0x574E24
	.4byte 0x41F00000


.global lbl_8066AFC8
lbl_8066AFC8:
	# ROM: 0x574E28
	.4byte 0x3F000000


.global lbl_8066AFCC
lbl_8066AFCC:
	# ROM: 0x574E2C
	.4byte 0x3E800000


.global lbl_8066AFD0
lbl_8066AFD0:
	# ROM: 0x574E30
	.4byte 0x3F800000


.global lbl_8066AFD4
lbl_8066AFD4:
	# ROM: 0x574E34
	.4byte 0xBF800000


.global lbl_8066AFD8
lbl_8066AFD8:
	# ROM: 0x574E38
	.4byte 0x40000000


.global lbl_8066AFDC
lbl_8066AFDC:
	# ROM: 0x574E3C
	.4byte 0x4222F983


.global lbl_8066AFE0
lbl_8066AFE0:
	# ROM: 0x574E40
	.4byte 0


.global lbl_8066AFE4
lbl_8066AFE4:
	# ROM: 0x574E44
	.4byte 0x3F800000


.global lbl_8066AFE8
lbl_8066AFE8:
	# ROM: 0x574E48
	.4byte 0x41200000
	.4byte 0


.global lbl_8066AFF0
lbl_8066AFF0:
	# ROM: 0x574E50
	.4byte 0


.global lbl_8066AFF4
lbl_8066AFF4:
	# ROM: 0x574E54
	.4byte 0x3F800000


.global lbl_8066AFF8
lbl_8066AFF8:
	# ROM: 0x574E58
	.4byte 0xC2600000


.global lbl_8066AFFC
lbl_8066AFFC:
	# ROM: 0x574E5C
	.4byte 0x42F60000
	.asciz "CMapSel"


.global lbl_8066B008
lbl_8066B008:
	# ROM: 0x574E68
	.4byte 0x3F800000
	.asciz "CFade"
	.balign 4
	.4byte 0


.global lbl_8066B018
lbl_8066B018:
	# ROM: 0x574E78
	.4byte 0x3F800000


.global lbl_8066B01C
lbl_8066B01C:
	# ROM: 0x574E7C
	.4byte 0


.global lbl_8066B020
lbl_8066B020:
	# ROM: 0x574E80
	.4byte 0xC2F00000


.global lbl_8066B024
lbl_8066B024:
	# ROM: 0x574E84
	.4byte 0xC2480000


.global lbl_8066B028
lbl_8066B028:
	# ROM: 0x574E88
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B030
lbl_8066B030:
	# ROM: 0x574E90
	.4byte 0x3DCCCCCD


.global lbl_8066B034
lbl_8066B034:
	# ROM: 0x574E94
	.4byte 0x3FC00000


.global lbl_8066B038
lbl_8066B038:
	# ROM: 0x574E98
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B040
lbl_8066B040:
	# ROM: 0x574EA0
	.4byte 0x41400000


.global lbl_8066B044
lbl_8066B044:
	# ROM: 0x574EA4
	.4byte 0x3F4CCCCD


.global lbl_8066B048
lbl_8066B048:
	# ROM: 0x574EA8
	.4byte 0x3F000000


.global lbl_8066B04C
lbl_8066B04C:
	# ROM: 0x574EAC
	.4byte 0x43340000


.global lbl_8066B050
lbl_8066B050:
	# ROM: 0x574EB0
	.4byte 0x41200000


.global lbl_8066B054
lbl_8066B054:
	# ROM: 0x574EB4
	.4byte 0xC4440000


.global lbl_8066B058
lbl_8066B058:
	# ROM: 0x574EB8
	.4byte 0x40E66666


.global lbl_8066B05C
lbl_8066B05C:
	# ROM: 0x574EBC
	.4byte 0x44440000


.global lbl_8066B060
lbl_8066B060:
	# ROM: 0x574EC0
	.4byte 0x45000000


.global lbl_8066B064
lbl_8066B064:
	# ROM: 0x574EC4
	.4byte 0x44200000


.global lbl_8066B068
lbl_8066B068:
	# ROM: 0x574EC8
	.4byte 0xBF800000


.global lbl_8066B06C
lbl_8066B06C:
	# ROM: 0x574ECC
	.4byte 0x40000000


.global lbl_8066B070
lbl_8066B070:
	# ROM: 0x574ED0
	.4byte 0


.global lbl_8066B074
lbl_8066B074:
	# ROM: 0x574ED4
	.4byte 0x3F800000


.global lbl_8066B078
lbl_8066B078:
	# ROM: 0x574ED8
	.4byte 0x41200000
	.4byte 0


.global lbl_8066B080
lbl_8066B080:
	# ROM: 0x574EE0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B088
lbl_8066B088:
	# ROM: 0x574EE8
	.4byte 0x3F800000


.global lbl_8066B08C
lbl_8066B08C:
	# ROM: 0x574EEC
	.4byte 0x3F19999A


.global lbl_8066B090
lbl_8066B090:
	# ROM: 0x574EF0
	.4byte 0


.global lbl_8066B094
lbl_8066B094:
	# ROM: 0x574EF4
	.4byte 0x3F800000


.global lbl_8066B098
lbl_8066B098:
	# ROM: 0x574EF8
	.4byte 0x41200000
	.4byte 0


.global lbl_8066B0A0
lbl_8066B0A0:
	# ROM: 0x574F00
	.4byte 0x43A70000


.global lbl_8066B0A4
lbl_8066B0A4:
	# ROM: 0x574F04
	.4byte 0x40800000


.global lbl_8066B0A8
lbl_8066B0A8:
	# ROM: 0x574F08
	.4byte 0


.global lbl_8066B0AC
lbl_8066B0AC:
	# ROM: 0x574F0C
	.4byte 0xC3A20000


.global lbl_8066B0B0
lbl_8066B0B0:
	# ROM: 0x574F10
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066B0B8
lbl_8066B0B8:
	# ROM: 0x574F18
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B0C0
lbl_8066B0C0:
	# ROM: 0x574F20
	.4byte 0x41800000


.global lbl_8066B0C4
lbl_8066B0C4:
	# ROM: 0x574F24
	.4byte 0x42C80000


.global lbl_8066B0C8
lbl_8066B0C8:
	# ROM: 0x574F28
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "CCLPCur"


.global lbl_8066B0D8
lbl_8066B0D8:
	# ROM: 0x574F38
	.4byte 0


.global lbl_8066B0DC
lbl_8066B0DC:
	# ROM: 0x574F3C
	.4byte 0x40000000


.global lbl_8066B0E0
lbl_8066B0E0:
	# ROM: 0x574F40
	.4byte 0xBF800000


.global lbl_8066B0E4
lbl_8066B0E4:
	# ROM: 0x574F44
	.4byte 0x3F800000


.global lbl_8066B0E8
lbl_8066B0E8:
	# ROM: 0x574F48
	.4byte 0x80508150


.global lbl_8066B0EC
lbl_8066B0EC:
	# ROM: 0x574F4C
	.4byte 0x8050815C


.global lbl_8066B0F0
lbl_8066B0F0:
	# ROM: 0x574F50
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B0F8
lbl_8066B0F8:
	# ROM: 0x574F58
	.4byte 0x40A00000


.global lbl_8066B0FC
lbl_8066B0FC:
	# ROM: 0x574F5C
	.4byte 0x3F000000


.global lbl_8066B100
lbl_8066B100:
	# ROM: 0x574F60
	.4byte 0x41E00000


.global lbl_8066B104
lbl_8066B104:
	# ROM: 0x574F64
	.4byte 0x40800000


.global lbl_8066B108
lbl_8066B108:
	# ROM: 0x574F68
	.4byte 0x42C00000


.global lbl_8066B10C
lbl_8066B10C:
	# ROM: 0x574F6C
	.4byte 0x437F0000


.global lbl_8066B110
lbl_8066B110:
	# ROM: 0x574F70
	.4byte 0x41880000


.global lbl_8066B114
lbl_8066B114:
	# ROM: 0x574F74
	.4byte 0x41100000


.global lbl_8066B118
lbl_8066B118:
	# ROM: 0x574F78
	.4byte 0xC1A00000


.global lbl_8066B11C
lbl_8066B11C:
	# ROM: 0x574F7C
	.4byte 0x41A00000


.global lbl_8066B120
lbl_8066B120:
	# ROM: 0x574F80
	.4byte 0x40400000
	.4byte 0


.global lbl_8066B128
lbl_8066B128:
	# ROM: 0x574F88
	.4byte 0x3F47AE14


.global lbl_8066B12C
lbl_8066B12C:
	# ROM: 0x574F8C
	.4byte 0x3F800000


.global lbl_8066B130
lbl_8066B130:
	# ROM: 0x574F90
	.4byte 0
	.4byte 0


.global lbl_8066B138
lbl_8066B138:
	# ROM: 0x574F98
	.4byte 0x00010706


.global lbl_8066B13C
lbl_8066B13C:
	# ROM: 0x574F9C
	.4byte 0x03040205


.global lbl_8066B140
lbl_8066B140:
	# ROM: 0x574FA0
	.4byte 0x41880000


.global lbl_8066B144
lbl_8066B144:
	# ROM: 0x574FA4
	.4byte 0x41100000


.global lbl_8066B148
lbl_8066B148:
	# ROM: 0x574FA8
	.4byte 0x00010403


.global lbl_8066B14C
lbl_8066B14C:
	# ROM: 0x574FAC
	.4byte 0x06070205


.global lbl_8066B150
lbl_8066B150:
	# ROM: 0x574FB0
	.4byte 0x00010706


.global lbl_8066B154
lbl_8066B154:
	# ROM: 0x574FB4
	.4byte 0x03040205


.global lbl_8066B158
lbl_8066B158:
	# ROM: 0x574FB8
	.4byte 0x76616C3F


.global lbl_8066B15C
lbl_8066B15C:
	# ROM: 0x574FBC
	.4byte 0


.global lbl_8066B160
lbl_8066B160:
	# ROM: 0x574FC0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B168
lbl_8066B168:
	# ROM: 0x574FC8
	.4byte 0
	.4byte 0


.global lbl_8066B170
lbl_8066B170:
	# ROM: 0x574FD0
	.4byte 0x42180000
	.4byte 0


.global lbl_8066B178
lbl_8066B178:
	# ROM: 0x574FD8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B180
lbl_8066B180:
	# ROM: 0x574FE0
	.4byte 0


.global lbl_8066B184
lbl_8066B184:
	# ROM: 0x574FE4
	.4byte 0xCB800000


.global lbl_8066B188
lbl_8066B188:
	# ROM: 0x574FE8
	.4byte 0x3F800000


.global lbl_8066B18C
lbl_8066B18C:
	# ROM: 0x574FEC
	.4byte 0x3FA2067B


.global lbl_8066B190
lbl_8066B190:
	# ROM: 0x574FF0
	.4byte 0x40400000


.global lbl_8066B194
lbl_8066B194:
	# ROM: 0x574FF4
	.4byte 0xBF800000


.global lbl_8066B198
lbl_8066B198:
	# ROM: 0x574FF8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B1A0
lbl_8066B1A0:
	# ROM: 0x575000
	.4byte 0


.global lbl_8066B1A4
lbl_8066B1A4:
	# ROM: 0x575004
	.4byte 0x3F800000


.global lbl_8066B1A8
lbl_8066B1A8:
	# ROM: 0x575008
	.4byte 0x41200000
	.4byte 0


.global lbl_8066B1B0
lbl_8066B1B0:
	# ROM: 0x575010
	.4byte 0x3F800000


.global lbl_8066B1B4
lbl_8066B1B4:
	# ROM: 0x575014
	.4byte 0


.global lbl_8066B1B8
lbl_8066B1B8:
	# ROM: 0x575018
	.4byte 0x80509238


.global lbl_8066B1BC
lbl_8066B1BC:
	# ROM: 0x57501C
	.4byte 0x80509244


.global lbl_8066B1C0
lbl_8066B1C0:
	# ROM: 0x575020
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B1C8
lbl_8066B1C8:
	# ROM: 0x575028
	.4byte 0x40800000
	.4byte 0


.global lbl_8066B1D0
lbl_8066B1D0:
	# ROM: 0x575030
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B1D8
lbl_8066B1D8:
	# ROM: 0x575038
	.4byte 0x422C0000


.global lbl_8066B1DC
lbl_8066B1DC:
	# ROM: 0x57503C
	.4byte 0x04050607


.global lbl_8066B1E0
lbl_8066B1E0:
	# ROM: 0x575040
	.4byte 0x08000000


.global lbl_8066B1E4
lbl_8066B1E4:
	# ROM: 0x575044
	.4byte 0x437F0000


.global lbl_8066B1E8
lbl_8066B1E8:
	# ROM: 0x575048
	.4byte 0x43200000
	.4byte 0
	.asciz "aLOD1"
	.balign 4
	.asciz "aType"
	.balign 4
	.asciz "aSpd"
	.balign 4
	.4byte 0x61434C00
	.4byte 0x636C3100


.global lbl_8066B210
lbl_8066B210:
	# ROM: 0x575070
	.4byte 0x3F800000


.global lbl_8066B214
lbl_8066B214:
	# ROM: 0x575074
	.4byte 0


.global lbl_8066B218
lbl_8066B218:
	# ROM: 0x575078
	.4byte 0xFFFFFFFF


.global lbl_8066B21C
lbl_8066B21C:
	# ROM: 0x57507C
	.4byte 0xC2C80000


.global lbl_8066B220
lbl_8066B220:
	# ROM: 0x575080
	.4byte 0x42C80000


.global lbl_8066B224
lbl_8066B224:
	# ROM: 0x575084
	.4byte 0x3C23D70A


.global lbl_8066B228
lbl_8066B228:
	# ROM: 0x575088
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B230
lbl_8066B230:
	# ROM: 0x575090
	.4byte 0x437F0000


.global lbl_8066B234
lbl_8066B234:
	# ROM: 0x575094
	.4byte 0x3DCCCCCD


.global lbl_8066B238
lbl_8066B238:
	# ROM: 0x575098
	.4byte 0x3F800000


.global lbl_8066B23C
lbl_8066B23C:
	# ROM: 0x57509C
	.4byte 0


.global lbl_8066B240
lbl_8066B240:
	# ROM: 0x5750A0
	.4byte 0


.global lbl_8066B244
lbl_8066B244:
	# ROM: 0x5750A4
	.4byte 0x3F800000


.global lbl_8066B248
lbl_8066B248:
	# ROM: 0x5750A8
	.4byte 0x41200000
	.4byte 0


.global lbl_8066B250
lbl_8066B250:
	# ROM: 0x5750B0
	.4byte 0


.global lbl_8066B254
lbl_8066B254:
	# ROM: 0x5750B4
	.4byte 0x42C80000


.global lbl_8066B258
lbl_8066B258:
	# ROM: 0x5750B8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B260
lbl_8066B260:
	# ROM: 0x5750C0
	.4byte 0x437C0000


.global lbl_8066B264
lbl_8066B264:
	# ROM: 0x5750C4
	.4byte 0x42B00000


.global lbl_8066B268
lbl_8066B268:
	# ROM: 0x5750C8
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066B270
lbl_8066B270:
	# ROM: 0x5750D0
	.4byte 0x436E0000


.global lbl_8066B274
lbl_8066B274:
	# ROM: 0x5750D4
	.4byte 0x42EC0000


.global lbl_8066B278
lbl_8066B278:
	# ROM: 0x5750D8
	.4byte 0


.global lbl_8066B27C
lbl_8066B27C:
	# ROM: 0x5750DC
	.4byte 0x3F800000


.global lbl_8066B280
lbl_8066B280:
	# ROM: 0x5750E0
	.4byte 0xC0800000


.global lbl_8066B284
lbl_8066B284:
	# ROM: 0x5750E4
	.4byte 0x3F666666


.global lbl_8066B288
lbl_8066B288:
	# ROM: 0x5750E8
	.4byte 0


.global lbl_8066B28C
lbl_8066B28C:
	# ROM: 0x5750EC
	.4byte 0x3C23D70A


.global lbl_8066B290
lbl_8066B290:
	# ROM: 0x5750F0
	.4byte 0x3F800000


.global lbl_8066B294
lbl_8066B294:
	# ROM: 0x5750F4
	.4byte 0x41F00000


.global lbl_8066B298
lbl_8066B298:
	# ROM: 0x5750F8
	.4byte 0x3A83126F


.global lbl_8066B29C
lbl_8066B29C:
	# ROM: 0x5750FC
	.4byte 0x3DCCCCCD


.global lbl_8066B2A0
lbl_8066B2A0:
	# ROM: 0x575100
	.4byte 0x3ECCCCCD
	.4byte 0


.global lbl_8066B2A8
lbl_8066B2A8:
	# ROM: 0x575108
	.4byte 0


.global lbl_8066B2AC
lbl_8066B2AC:
	# ROM: 0x57510C
	.4byte 0x3F800000


.global lbl_8066B2B0
lbl_8066B2B0:
	# ROM: 0x575110
	.4byte 0x43A00000


.global lbl_8066B2B4
lbl_8066B2B4:
	# ROM: 0x575114
	.4byte 0x43600000


.global lbl_8066B2B8
lbl_8066B2B8:
	# ROM: 0x575118
	.4byte 0xBF800000
	.4byte 0


.global lbl_8066B2C0
lbl_8066B2C0:
	# ROM: 0x575120
	.4byte 0x3F800000


.global lbl_8066B2C4
lbl_8066B2C4:
	# ROM: 0x575124
	.4byte 0


.global lbl_8066B2C8
lbl_8066B2C8:
	# ROM: 0x575128
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066B2D0
lbl_8066B2D0:
	# ROM: 0x575130
	.4byte 0xBFE00000
	.4byte 0


.global lbl_8066B2D8
lbl_8066B2D8:
	# ROM: 0x575138
	.4byte 0x3C23D70A
	.4byte 0


.global lbl_8066B2E0
lbl_8066B2E0:
	# ROM: 0x575140
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B2E8
lbl_8066B2E8:
	# ROM: 0x575148
	.4byte 0x3F19999A


.global lbl_8066B2EC
lbl_8066B2EC:
	# ROM: 0x57514C
	.4byte 0x3FA00000


.global lbl_8066B2F0
lbl_8066B2F0:
	# ROM: 0x575150
	.4byte 0x3E99999A
	.4byte 0


.global lbl_8066B2F8
lbl_8066B2F8:
	# ROM: 0x575158
	.4byte 0x44992000


.global lbl_8066B2FC
lbl_8066B2FC:
	# ROM: 0x57515C
	.4byte 0x44C80000


.global lbl_8066B300
lbl_8066B300:
	# ROM: 0x575160
	.4byte 0x3CC90FDB


.global lbl_8066B304
lbl_8066B304:
	# ROM: 0x575164
	.4byte 0x420C0000


.global lbl_8066B308
lbl_8066B308:
	# ROM: 0x575168
	.4byte 0
	.4byte 0


.global lbl_8066B310
lbl_8066B310:
	# ROM: 0x575170
	.4byte 0x41F00000


.global lbl_8066B314
lbl_8066B314:
	# ROM: 0x575174
	.4byte 0x459C4000


.global lbl_8066B318
lbl_8066B318:
	# ROM: 0x575178
	.4byte 0x41A00000
	.4byte 0


.global lbl_8066B320
lbl_8066B320:
	# ROM: 0x575180
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B328
lbl_8066B328:
	# ROM: 0x575188
	.4byte 0
	.4byte 0


.global lbl_8066B330
lbl_8066B330:
	# ROM: 0x575190
	.4byte 0x3F800000


.global lbl_8066B334
lbl_8066B334:
	# ROM: 0x575194
	.4byte 0


.global lbl_8066B338
lbl_8066B338:
	# ROM: 0x575198
	.4byte 0x4048F5C3


.global lbl_8066B33C
lbl_8066B33C:
	# ROM: 0x57519C
	.4byte 0x420C0000


.global lbl_8066B340
lbl_8066B340:
	# ROM: 0x5751A0
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066B348
lbl_8066B348:
	# ROM: 0x5751A8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B350
lbl_8066B350:
	# ROM: 0x5751B0
	.4byte 0
	.4byte 0


.global lbl_8066B358
lbl_8066B358:
	# ROM: 0x5751B8
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066B360
lbl_8066B360:
	# ROM: 0x5751C0
	.4byte 0xBFE00000
	.4byte 0


.global lbl_8066B368
lbl_8066B368:
	# ROM: 0x5751C8
	.4byte 0x3C23D70A


.global lbl_8066B36C
lbl_8066B36C:
	# ROM: 0x5751CC
	.4byte 0x47C34F80


.global lbl_8066B370
lbl_8066B370:
	# ROM: 0x5751D0
	.4byte 0x451C4000
	.4byte 0


.global lbl_8066B378
lbl_8066B378:
	# ROM: 0x5751D8
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066B380
lbl_8066B380:
	# ROM: 0x5751E0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B388
lbl_8066B388:
	# ROM: 0x5751E8
	.4byte 0


.global lbl_8066B38C
lbl_8066B38C:
	# ROM: 0x5751EC
	.4byte 0x3E19999A


.global lbl_8066B390
lbl_8066B390:
	# ROM: 0x5751F0
	.4byte 0x3F800000


.global lbl_8066B394
lbl_8066B394:
	# ROM: 0x5751F4
	.4byte 0


.global lbl_8066B398
lbl_8066B398:
	# ROM: 0x5751F8
	.4byte 0x3C23D70A
	.4byte 0


.global lbl_8066B3A0
lbl_8066B3A0:
	# ROM: 0x575200
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B3A8
lbl_8066B3A8:
	# ROM: 0x575208
	.4byte 0x41F00000


.global lbl_8066B3AC
lbl_8066B3AC:
	# ROM: 0x57520C
	.4byte 0


.global lbl_8066B3B0
lbl_8066B3B0:
	# ROM: 0x575210
	.4byte 0x3E4CCCCD
	.4byte 0


.global lbl_8066B3B8
lbl_8066B3B8:
	# ROM: 0x575218
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B3C0
lbl_8066B3C0:
	# ROM: 0x575220
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B3C8
lbl_8066B3C8:
	# ROM: 0x575228
	.4byte 0x43480000


.global lbl_8066B3CC
lbl_8066B3CC:
	# ROM: 0x57522C
	.4byte 0x3E800000


.global lbl_8066B3D0
lbl_8066B3D0:
	# ROM: 0x575230
	.4byte 0x3F800000


.global lbl_8066B3D4
lbl_8066B3D4:
	# ROM: 0x575234
	.4byte 0x3FC00000


.global lbl_8066B3D8
lbl_8066B3D8:
	# ROM: 0x575238
	.4byte 0x43B80000


.global lbl_8066B3DC
lbl_8066B3DC:
	# ROM: 0x57523C
	.4byte 0xC1880000


.global lbl_8066B3E0
lbl_8066B3E0:
	# ROM: 0x575240
	.4byte 0x43010000


.global lbl_8066B3E4
lbl_8066B3E4:
	# ROM: 0x575244
	.4byte 0x02040506


.global lbl_8066B3E8
lbl_8066B3E8:
	# ROM: 0x575248
	.4byte 0x07080000


.global lbl_8066B3EC
lbl_8066B3EC:
	# ROM: 0x57524C
	.4byte 0x41300000


.global lbl_8066B3F0
lbl_8066B3F0:
	# ROM: 0x575250
	.4byte 0x41200000


.global lbl_8066B3F4
lbl_8066B3F4:
	# ROM: 0x575254
	.4byte 0x3FB33333


.global lbl_8066B3F8
lbl_8066B3F8:
	# ROM: 0x575258
	.4byte 0x02040506


.global lbl_8066B3FC
lbl_8066B3FC:
	# ROM: 0x57525C
	.4byte 0x07080000


.global lbl_8066B400
lbl_8066B400:
	# ROM: 0x575260
	.4byte 0x02040506


.global lbl_8066B404
lbl_8066B404:
	# ROM: 0x575264
	.4byte 0x07080000
	.asciz "CEIBCur"


.global lbl_8066B410
lbl_8066B410:
	# ROM: 0x575270
	.4byte 0x3F800000


.global lbl_8066B414
lbl_8066B414:
	# ROM: 0x575274
	.4byte 0


.global lbl_8066B418
lbl_8066B418:
	# ROM: 0x575278
	.4byte 0x43520000


.global lbl_8066B41C
lbl_8066B41C:
	# ROM: 0x57527C
	.4byte 0x42EC0000
	.asciz "CSLCur"
	.balign 4


.global lbl_8066B428
lbl_8066B428:
	# ROM: 0x575288
	.4byte 0x40800000


.global lbl_8066B42C
lbl_8066B42C:
	# ROM: 0x57528C
	.4byte 0


.global lbl_8066B430
lbl_8066B430:
	# ROM: 0x575290
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B438
lbl_8066B438:
	# ROM: 0x575298
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066B440
lbl_8066B440:
	# ROM: 0x5752A0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B448
lbl_8066B448:
	# ROM: 0x5752A8
	.4byte 0


.global lbl_8066B44C
lbl_8066B44C:
	# ROM: 0x5752AC
	.4byte 0x3F800000


.global lbl_8066B450
lbl_8066B450:
	# ROM: 0x5752B0
	.4byte 0x40000000
	.4byte 0


.global lbl_8066B458
lbl_8066B458:
	# ROM: 0x5752B8
	.4byte 0


.global lbl_8066B45C
lbl_8066B45C:
	# ROM: 0x5752BC
	.4byte 0x3B800000


.global lbl_8066B460
lbl_8066B460:
	# ROM: 0x5752C0
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066B468
lbl_8066B468:
	# ROM: 0x5752C8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B470
lbl_8066B470:
	# ROM: 0x5752D0
	.4byte 0x3F800000


.global lbl_8066B474
lbl_8066B474:
	# ROM: 0x5752D4
	.4byte 0x43960000


.global lbl_8066B478
lbl_8066B478:
	# ROM: 0x5752D8
	.4byte 0x41F00000


.global lbl_8066B47C
lbl_8066B47C:
	# ROM: 0x5752DC
	.4byte 0


.global lbl_8066B480
lbl_8066B480:
	# ROM: 0x5752E0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B488
lbl_8066B488:
	# ROM: 0x5752E8
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0


.global lbl_8066B494
lbl_8066B494:
	# ROM: 0x5752F4
	.4byte 0x3E800000


.global lbl_8066B498
lbl_8066B498:
	# ROM: 0x5752F8
	.4byte 0x3F800000


.global lbl_8066B49C
lbl_8066B49C:
	# ROM: 0x5752FC
	.4byte 0x41800000


.global lbl_8066B4A0
lbl_8066B4A0:
	# ROM: 0x575300
	.4byte 0xC2680000


.global lbl_8066B4A4
lbl_8066B4A4:
	# ROM: 0x575304
	.4byte 0xC24C0000


.global lbl_8066B4A8
lbl_8066B4A8:
	# ROM: 0x575308
	.4byte 0x43B98000
	.4byte 0


.global lbl_8066B4B0
lbl_8066B4B0:
	# ROM: 0x575310
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066B4B8
lbl_8066B4B8:
	# ROM: 0x575318
	.4byte 0x3F800000


.global lbl_8066B4BC
lbl_8066B4BC:
	# ROM: 0x57531C
	.4byte 0x43300000


.global lbl_8066B4C0
lbl_8066B4C0:
	# ROM: 0x575320
	.4byte 0x43160000


.global lbl_8066B4C4
lbl_8066B4C4:
	# ROM: 0x575324
	.4byte 0
	.asciz "COption"
	.asciz "CCur19"
	.balign 4


.global lbl_8066B4D8
lbl_8066B4D8:
	# ROM: 0x575338
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066B4E0
lbl_8066B4E0:
	# ROM: 0x575340
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B4E8
lbl_8066B4E8:
	# ROM: 0x575348
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B4F0
lbl_8066B4F0:
	# ROM: 0x575350
	.4byte 0x41300000


.global lbl_8066B4F4
lbl_8066B4F4:
	# ROM: 0x575354
	.4byte 0x42700000


.global lbl_8066B4F8
lbl_8066B4F8:
	# ROM: 0x575358
	.4byte 0x3F19999A
	.4byte 0


.global lbl_8066B500
lbl_8066B500:
	# ROM: 0x575360
	.4byte 0x41200000


.global lbl_8066B504
lbl_8066B504:
	# ROM: 0x575364
	.4byte 0x42200000


.global lbl_8066B508
lbl_8066B508:
	# ROM: 0x575368
	.4byte 0x3F000000


.global lbl_8066B50C
lbl_8066B50C:
	# ROM: 0x57536C
	.4byte 0


.global lbl_8066B510
lbl_8066B510:
	# ROM: 0x575370
	.4byte 0


.global lbl_8066B514
lbl_8066B514:
	# ROM: 0x575374
	.4byte 0x43160000


.global lbl_8066B518
lbl_8066B518:
	# ROM: 0x575378
	.4byte 0x3F000000


.global lbl_8066B51C
lbl_8066B51C:
	# ROM: 0x57537C
	.4byte 0x44E10000


.global lbl_8066B520
lbl_8066B520:
	# ROM: 0x575380
	.4byte 0x40400000


.global lbl_8066B524
lbl_8066B524:
	# ROM: 0x575384
	.4byte 0x3F800000


.global lbl_8066B528
lbl_8066B528:
	# ROM: 0x575388
	.4byte 0x41F00000
	.4byte 0


.global lbl_8066B530
lbl_8066B530:
	# ROM: 0x575390
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066B538
lbl_8066B538:
	# ROM: 0x575398
	.4byte 0


.global lbl_8066B53C
lbl_8066B53C:
	# ROM: 0x57539C
	.4byte 0x3E99999A


.global lbl_8066B540
lbl_8066B540:
	# ROM: 0x5753A0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B548
lbl_8066B548:
	# ROM: 0x5753A8
	.4byte 0x3DCCCCCD


.global lbl_8066B54C
lbl_8066B54C:
	# ROM: 0x5753AC
	.4byte 0x3F000000


.global lbl_8066B550
lbl_8066B550:
	# ROM: 0x5753B0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B558
lbl_8066B558:
	# ROM: 0x5753B8
	.4byte 0


.global lbl_8066B55C
lbl_8066B55C:
	# ROM: 0x5753BC
	.4byte 0x3F800000
	.4byte 0x02010200
	.4byte 0x01010201
	.4byte 0
	.4byte 0x01020202
	.4byte 0x01030000
	.4byte 0x02010300
	.4byte 0x01060301
	.4byte 0
	.4byte 0x03010203
	.4byte 0x02050302
	.4byte 0x01070000
	.4byte 0x03010204
	.4byte 0x03010205
	.4byte 0x03010206
	.4byte 0x03010207
	.4byte 0x03010304
	.4byte 0x03010305
	.4byte 0x03010306
	.4byte 0x03010307
	.4byte 0x03010405
	.4byte 0x03010406
	.4byte 0x04040606
	.4byte 0x01170000
	.4byte 0x03010407
	.4byte 0x03010506
	.4byte 0x03010507
	.4byte 0x0706011A
	.4byte 0x05060000
	.4byte 0x03010607
	.4byte 0x06090707
	.4byte 0x011B0000
	.4byte 0x02030500
	.4byte 0x020D0507
	.4byte 0
	.4byte 0x03020304
	.4byte 0x03020305
	.4byte 0x02100508
	.4byte 0x030D0000
	.4byte 0x03020306
	.4byte 0x03020307
	.4byte 0x03020405
	.4byte 0x03020406
	.4byte 0x0217060C
	.4byte 0x04080000
	.4byte 0x03020407
	.4byte 0x02180709
	.4byte 0x04090000
	.4byte 0x03020506
	.4byte 0x03020507
	.4byte 0x03020607
	.4byte 0x03030405
	.4byte 0x040A0311
	.4byte 0x050D0000
	.4byte 0x03030406
	.4byte 0x03030407
	.4byte 0x070C040C
	.4byte 0x03130000
	.4byte 0x03030607
	.4byte 0x070D0612
	.4byte 0x03140000
	.4byte 0x03040506
	.4byte 0x03040507


.global lbl_8066B658
lbl_8066B658:
	# ROM: 0x5754B8
	.4byte 0x050F040E
	.4byte 0x070E0000
	.4byte 0x03040607
	.4byte 0x040F070F
	.4byte 0x06150000
	.4byte 0x03050607


.global lbl_8066B670
lbl_8066B670:
	# ROM: 0x5754D0
	.4byte 0


.global lbl_8066B674
lbl_8066B674:
	# ROM: 0x5754D4
	.4byte 0x3F800000


.global lbl_8066B678
lbl_8066B678:
	# ROM: 0x5754D8
	.4byte 0x41200000
	.4byte 0


.global lbl_8066B680
lbl_8066B680:
	# ROM: 0x5754E0
	.4byte 0x43100000


.global lbl_8066B684
lbl_8066B684:
	# ROM: 0x5754E4
	.4byte 0x42D80000


.global lbl_8066B688
lbl_8066B688:
	# ROM: 0x5754E8
	.4byte 0


.global lbl_8066B68C
lbl_8066B68C:
	# ROM: 0x5754EC
	.4byte 0x3F800000


.global lbl_8066B690
lbl_8066B690:
	# ROM: 0x5754F0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B698
lbl_8066B698:
	# ROM: 0x5754F8
	.4byte 0x3F800000


.global lbl_8066B69C
lbl_8066B69C:
	# ROM: 0x5754FC
	.4byte 0
	.asciz "CLoad"
	.balign 4


.global lbl_8066B6A8
lbl_8066B6A8:
	# ROM: 0x575508
	.4byte 0x3E4CCCCD


.global lbl_8066B6AC
lbl_8066B6AC:
	# ROM: 0x57550C
	.4byte 0x3F000000


.global lbl_8066B6B0
lbl_8066B6B0:
	# ROM: 0x575510
	.4byte 0x3F4CCCCD


.global lbl_8066B6B4
lbl_8066B6B4:
	# ROM: 0x575514
	.4byte 0x3F666666


.global lbl_8066B6B8
lbl_8066B6B8:
	# ROM: 0x575518
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B6C0
lbl_8066B6C0:
	# ROM: 0x575520
	.asciz "%&'("
	.balign 4


.global lbl_8066B6C8
lbl_8066B6C8:
	# ROM: 0x575528
	.4byte 0


.global lbl_8066B6CC
lbl_8066B6CC:
	# ROM: 0x57552C
	.4byte 0xFFFFFFFF


.global lbl_8066B6D0
lbl_8066B6D0:
	# ROM: 0x575530
	.4byte 0x3F800000


.global lbl_8066B6D4
lbl_8066B6D4:
	# ROM: 0x575534
	.4byte 0x3ECCCCCD


.global lbl_8066B6D8
lbl_8066B6D8:
	# ROM: 0x575538
	.4byte 0xBECCCCCD


.global lbl_8066B6DC
lbl_8066B6DC:
	# ROM: 0x57553C
	.4byte 0x3F000000


.global lbl_8066B6E0
lbl_8066B6E0:
	# ROM: 0x575540
	.4byte 0xBF000000


.global lbl_8066B6E4
lbl_8066B6E4:
	# ROM: 0x575544
	.4byte 0x3E000000


.global lbl_8066B6E8
lbl_8066B6E8:
	# ROM: 0x575548
	.4byte 0xBE000000


.global lbl_8066B6EC
lbl_8066B6EC:
	# ROM: 0x57554C
	.4byte 0x3C23D70A


.global lbl_8066B6F0
lbl_8066B6F0:
	# ROM: 0x575550
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B6F8
lbl_8066B6F8:
	# ROM: 0x575558
	.4byte 0


.global lbl_8066B6FC
lbl_8066B6FC:
	# ROM: 0x57555C
	.4byte 0x3DCCCCCD


.global lbl_8066B700
lbl_8066B700:
	# ROM: 0x575560
	.4byte 0x3FC00000


.global lbl_8066B704
lbl_8066B704:
	# ROM: 0x575564
	.4byte 0x41200000


.global lbl_8066B708
lbl_8066B708:
	# ROM: 0x575568
	.4byte 0x41700000


.global lbl_8066B70C
lbl_8066B70C:
	# ROM: 0x57556C
	.4byte 0x40000000


.global lbl_8066B710
lbl_8066B710:
	# ROM: 0x575570
	.4byte 0x451C4000


.global lbl_8066B714
lbl_8066B714:
	# ROM: 0x575574
	.4byte 0x45840800


.global lbl_8066B718
lbl_8066B718:
	# ROM: 0x575578
	.4byte 0x3F400000


.global lbl_8066B71C
lbl_8066B71C:
	# ROM: 0x57557C
	.4byte 0x3BA3D70A


.global lbl_8066B720
lbl_8066B720:
	# ROM: 0x575580
	.4byte 0x41A00000
	.4byte 0


.global lbl_8066B728
lbl_8066B728:
	# ROM: 0x575588
	.4byte 0x40340000
	.4byte 0


.global lbl_8066B730
lbl_8066B730:
	# ROM: 0x575590
	.4byte 0x43610000


.global lbl_8066B734
lbl_8066B734:
	# ROM: 0x575594
	.4byte 0x3E4CCCCD


.global lbl_8066B738
lbl_8066B738:
	# ROM: 0x575598
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B740
lbl_8066B740:
	# ROM: 0x5755A0
	.4byte 0x3CCCCCCD


.global lbl_8066B744
lbl_8066B744:
	# ROM: 0x5755A4
	.4byte 0x3F000000


.global lbl_8066B748
lbl_8066B748:
	# ROM: 0x5755A8
	.4byte 0x3F666666


.global lbl_8066B74C
lbl_8066B74C:
	# ROM: 0x5755AC
	.4byte 0x3F333333


.global lbl_8066B750
lbl_8066B750:
	# ROM: 0x5755B0
	.4byte 0xBE99999A


.global lbl_8066B754
lbl_8066B754:
	# ROM: 0x5755B4
	.4byte 0x3F800000


.global lbl_8066B758
lbl_8066B758:
	# ROM: 0x5755B8
	.4byte 0x3A83126F


.global lbl_8066B75C
lbl_8066B75C:
	# ROM: 0x5755BC
	.4byte 0x3B03126F


.global lbl_8066B760
lbl_8066B760:
	# ROM: 0x5755C0
	.4byte 0x42200000


.global lbl_8066B764
lbl_8066B764:
	# ROM: 0x5755C4
	.4byte 0x3D4CCCCD


.global lbl_8066B768
lbl_8066B768:
	# ROM: 0x5755C8
	.4byte 0x3ECCCCCD


.global lbl_8066B76C
lbl_8066B76C:
	# ROM: 0x5755CC
	.4byte 0x3EE66666


.global lbl_8066B770
lbl_8066B770:
	# ROM: 0x5755D0
	.4byte 0x437F0000


.global lbl_8066B774
lbl_8066B774:
	# ROM: 0x5755D4
	.4byte 0x42CC0000


.global lbl_8066B778
lbl_8066B778:
	# ROM: 0x5755D8
	.4byte 0x42E40000


.global lbl_8066B77C
lbl_8066B77C:
	# ROM: 0x5755DC
	.4byte 0x431B0000


.global lbl_8066B780
lbl_8066B780:
	# ROM: 0x5755E0
	.4byte 0x43150000


.global lbl_8066B784
lbl_8066B784:
	# ROM: 0x5755E4
	.4byte 0x431D0000


.global lbl_8066B788
lbl_8066B788:
	# ROM: 0x5755E8
	.4byte 0x42000000


.global lbl_8066B78C
lbl_8066B78C:
	# ROM: 0x5755EC
	.4byte 0x432A0000


.global lbl_8066B790
lbl_8066B790:
	# ROM: 0x5755F0
	.4byte 0x42C80000


.global lbl_8066B794
lbl_8066B794:
	# ROM: 0x5755F4
	.4byte 0x42800000


.global lbl_8066B798
lbl_8066B798:
	# ROM: 0x5755F8
	.4byte 0x43480000


.global lbl_8066B79C
lbl_8066B79C:
	# ROM: 0x5755FC
	.4byte 0x43440000


.global lbl_8066B7A0
lbl_8066B7A0:
	# ROM: 0x575600
	.4byte 0x43570000


.global lbl_8066B7A4
lbl_8066B7A4:
	# ROM: 0x575604
	.4byte 0x435A0000


.global lbl_8066B7A8
lbl_8066B7A8:
	# ROM: 0x575608
	.4byte 0x43160000


.global lbl_8066B7AC
lbl_8066B7AC:
	# ROM: 0x57560C
	.4byte 0x437A0000


.global lbl_8066B7B0
lbl_8066B7B0:
	# ROM: 0x575610
	.4byte 0x42C00000


.global lbl_8066B7B4
lbl_8066B7B4:
	# ROM: 0x575614
	.4byte 0x433E0000


.global lbl_8066B7B8
lbl_8066B7B8:
	# ROM: 0x575618
	.4byte 0x3FE00000


.global lbl_8066B7BC
lbl_8066B7BC:
	# ROM: 0x57561C
	.4byte 0x3F400000


.global lbl_8066B7C0
lbl_8066B7C0:
	# ROM: 0x575620
	.4byte 0x3DCCCCCD


.global lbl_8066B7C4
lbl_8066B7C4:
	# ROM: 0x575624
	.4byte 0x3F800000


.global lbl_8066B7C8
lbl_8066B7C8:
	# ROM: 0x575628
	.4byte 0
	.4byte 0


.global lbl_8066B7D0
lbl_8066B7D0:
	# ROM: 0x575630
	.4byte 0x41200000


.global lbl_8066B7D4
lbl_8066B7D4:
	# ROM: 0x575634
	.4byte 0


.global lbl_8066B7D8
lbl_8066B7D8:
	# ROM: 0x575638
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066B7E0
lbl_8066B7E0:
	# ROM: 0x575640
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066B7E8
lbl_8066B7E8:
	# ROM: 0x575648
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B7F0
lbl_8066B7F0:
	# ROM: 0x575650
	.4byte 0
	.asciz "CTitle"
	.balign 4
	.4byte 0


.global lbl_8066B800
lbl_8066B800:
	# ROM: 0x575660
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066B808
lbl_8066B808:
	# ROM: 0x575668
	.4byte 0x3F800000


.global lbl_8066B80C
lbl_8066B80C:
	# ROM: 0x57566C
	.4byte 0x41F00000
	.asciz "play"
	.balign 4


.global lbl_8066B818
lbl_8066B818:
	# ROM: 0x575678
	.4byte 0x3F800000


.global lbl_8066B81C
lbl_8066B81C:
	# ROM: 0x57567C
	.4byte 0x3F000000


.global lbl_8066B820
lbl_8066B820:
	# ROM: 0x575680
	.4byte 0
	.4byte 0


.global lbl_8066B828
lbl_8066B828:
	# ROM: 0x575688
	.4byte 0x3FF00000
	.4byte 0


.global lbl_8066B830
lbl_8066B830:
	# ROM: 0x575690
	.4byte 0xBFF00000
	.4byte 0


.global lbl_8066B838
lbl_8066B838:
	# ROM: 0x575698
	.4byte 0x40140000
	.4byte 0


.global lbl_8066B840
lbl_8066B840:
	# ROM: 0x5756A0
	.4byte 0x7FEFFFFF
	.4byte 0xFFFFFFFF


.global lbl_8066B848
lbl_8066B848:
	# ROM: 0x5756A8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066B850
lbl_8066B850:
	# ROM: 0x5756B0
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0x2E000000
	.4byte 0
	.asciz "AM|PM"
	.balign 4
	.4byte 0x25540000
	.4byte 0


.global lbl_8066B870
lbl_8066B870:
	# ROM: 0x5756D0
	.4byte 0
	.4byte 0


.global lbl_8066B878
lbl_8066B878:
	# ROM: 0x5756D8
	.4byte 0x4E414E28


.global lbl_8066B87C
lbl_8066B87C:
	# ROM: 0x5756DC
	.4byte 0


.global lbl_8066B880
lbl_8066B880:
	# ROM: 0x5756E0
	.4byte 0
	.4byte 0


.global lbl_8066B888
lbl_8066B888:
	# ROM: 0x5756E8
	.4byte 0x00100000
	.4byte 0


.global lbl_8066B890
lbl_8066B890:
	# ROM: 0x5756F0
	.4byte 0x7FEFFFFF
	.4byte 0xFFFFFFFF


.global lbl_8066B898
lbl_8066B898:
	# ROM: 0x5756F8
	.4byte 0
	.4byte 0


.global lbl_8066B8A0
lbl_8066B8A0:
	# ROM: 0x575700
	.4byte 0
	.4byte 0


.global lbl_8066B8A8
lbl_8066B8A8:
	# ROM: 0x575708
	.4byte 0x400921FB
	.4byte 0x54442D18


.global lbl_8066B8B0
lbl_8066B8B0:
	# ROM: 0x575710
	.4byte 0x3FF921FB
	.4byte 0x54442D18


.global lbl_8066B8B8
lbl_8066B8B8:
	# ROM: 0x575718
	.4byte 0x3FC55555
	.4byte 0x55555555


.global lbl_8066B8C0
lbl_8066B8C0:
	# ROM: 0x575720
	.4byte 0xBFD4D612
	.4byte 0x03EB6F7D


.global lbl_8066B8C8
lbl_8066B8C8:
	# ROM: 0x575728
	.4byte 0x3FC9C155
	.4byte 0x0E884455


.global lbl_8066B8D0
lbl_8066B8D0:
	# ROM: 0x575730
	.4byte 0xBFA48228
	.4byte 0xB5688F3B


.global lbl_8066B8D8
lbl_8066B8D8:
	# ROM: 0x575738
	.4byte 0x3F49EFE0
	.4byte 0x7501B288


.global lbl_8066B8E0
lbl_8066B8E0:
	# ROM: 0x575740
	.4byte 0x3F023DE1
	.4byte 0x0DFDF709


.global lbl_8066B8E8
lbl_8066B8E8:
	# ROM: 0x575748
	.4byte 0x3FF00000
	.4byte 0


.global lbl_8066B8F0
lbl_8066B8F0:
	# ROM: 0x575750
	.4byte 0xC0033A27
	.4byte 0x1C8A2D4B


.global lbl_8066B8F8
lbl_8066B8F8:
	# ROM: 0x575758
	.4byte 0x40002AE5
	.4byte 0x9C598AC8


.global lbl_8066B900
lbl_8066B900:
	# ROM: 0x575760
	.4byte 0xBFE6066C
	.4byte 0x1B8D0159


.global lbl_8066B908
lbl_8066B908:
	# ROM: 0x575768
	.4byte 0x3FB3B8C5
	.4byte 0xB12E9282


.global lbl_8066B910
lbl_8066B910:
	# ROM: 0x575770
	.4byte 0x3C91A626
	.4byte 0x33145C07


.global lbl_8066B918
lbl_8066B918:
	# ROM: 0x575778
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066B920
lbl_8066B920:
	# ROM: 0x575780
	.4byte 0x40000000
	.4byte 0


.global lbl_8066B928
lbl_8066B928:
	# ROM: 0x575788
	.4byte 0x3FF921FB
	.4byte 0x54442D18


.global lbl_8066B930
lbl_8066B930:
	# ROM: 0x575790
	.4byte 0x3C91A626
	.4byte 0x33145C07


.global lbl_8066B938
lbl_8066B938:
	# ROM: 0x575798
	.4byte 0x7E37E43C
	.4byte 0x8800759C


.global lbl_8066B940
lbl_8066B940:
	# ROM: 0x5757A0
	.4byte 0x3FF00000
	.4byte 0


.global lbl_8066B948
lbl_8066B948:
	# ROM: 0x5757A8
	.4byte 0x3FC55555
	.4byte 0x55555555


.global lbl_8066B950
lbl_8066B950:
	# ROM: 0x5757B0
	.4byte 0xBFD4D612
	.4byte 0x03EB6F7D


.global lbl_8066B958
lbl_8066B958:
	# ROM: 0x5757B8
	.4byte 0x3FC9C155
	.4byte 0x0E884455


.global lbl_8066B960
lbl_8066B960:
	# ROM: 0x5757C0
	.4byte 0xBFA48228
	.4byte 0xB5688F3B


.global lbl_8066B968
lbl_8066B968:
	# ROM: 0x5757C8
	.4byte 0x3F49EFE0
	.4byte 0x7501B288


.global lbl_8066B970
lbl_8066B970:
	# ROM: 0x5757D0
	.4byte 0x3F023DE1
	.4byte 0x0DFDF709


.global lbl_8066B978
lbl_8066B978:
	# ROM: 0x5757D8
	.4byte 0xC0033A27
	.4byte 0x1C8A2D4B


.global lbl_8066B980
lbl_8066B980:
	# ROM: 0x5757E0
	.4byte 0x40002AE5
	.4byte 0x9C598AC8


.global lbl_8066B988
lbl_8066B988:
	# ROM: 0x5757E8
	.4byte 0xBFE6066C
	.4byte 0x1B8D0159


.global lbl_8066B990
lbl_8066B990:
	# ROM: 0x5757F0
	.4byte 0x3FB3B8C5
	.4byte 0xB12E9282


.global lbl_8066B998
lbl_8066B998:
	# ROM: 0x5757F8
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066B9A0
lbl_8066B9A0:
	# ROM: 0x575800
	.4byte 0x40000000
	.4byte 0


.global lbl_8066B9A8
lbl_8066B9A8:
	# ROM: 0x575808
	.4byte 0x3FE921FB
	.4byte 0x54442D18


.global lbl_8066B9B0
lbl_8066B9B0:
	# ROM: 0x575810
	.4byte 0x400921FB
	.4byte 0x54442D18


.global lbl_8066B9B8
lbl_8066B9B8:
	# ROM: 0x575818
	.4byte 0xC00921FB
	.4byte 0x54442D18


.global lbl_8066B9C0
lbl_8066B9C0:
	# ROM: 0x575820
	.4byte 0xBFF921FB
	.4byte 0x54442D18


.global lbl_8066B9C8
lbl_8066B9C8:
	# ROM: 0x575828
	.4byte 0x3FF921FB
	.4byte 0x54442D18


.global lbl_8066B9D0
lbl_8066B9D0:
	# ROM: 0x575830
	.4byte 0x3FE921FB
	.4byte 0x54442D18


.global lbl_8066B9D8
lbl_8066B9D8:
	# ROM: 0x575838
	.4byte 0xBFE921FB
	.4byte 0x54442D18


.global lbl_8066B9E0
lbl_8066B9E0:
	# ROM: 0x575840
	.4byte 0x4002D97C
	.4byte 0x7F3321D2


.global lbl_8066B9E8
lbl_8066B9E8:
	# ROM: 0x575848
	.4byte 0xC002D97C
	.4byte 0x7F3321D2


.global lbl_8066B9F0
lbl_8066B9F0:
	# ROM: 0x575850
	.4byte 0
	.4byte 0


.global lbl_8066B9F8
lbl_8066B9F8:
	# ROM: 0x575858
	.4byte 0x80000000
	.4byte 0


.global lbl_8066BA00
lbl_8066BA00:
	# ROM: 0x575860
	.4byte 0x3CA1A626
	.4byte 0x33145C07


.global lbl_8066BA08
lbl_8066BA08:
	# ROM: 0x575868
	.4byte 0xC3500000
	.4byte 0


.global lbl_8066BA10
lbl_8066BA10:
	# ROM: 0x575870
	.4byte 0x43500000
	.4byte 0


.global lbl_8066BA18
lbl_8066BA18:
	# ROM: 0x575878
	.4byte 0x3FF00000
	.4byte 0


.global lbl_8066BA20
lbl_8066BA20:
	# ROM: 0x575880
	.4byte 0x3FE62E42
	.4byte 0xFEE00000


.global lbl_8066BA28
lbl_8066BA28:
	# ROM: 0x575888
	.4byte 0x3DEA39EF
	.4byte 0x35793C76


.global lbl_8066BA30
lbl_8066BA30:
	# ROM: 0x575890
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066BA38
lbl_8066BA38:
	# ROM: 0x575898
	.4byte 0x3FD55555
	.4byte 0x55555555


.global lbl_8066BA40
lbl_8066BA40:
	# ROM: 0x5758A0
	.4byte 0x40000000
	.4byte 0


.global lbl_8066BA48
lbl_8066BA48:
	# ROM: 0x5758A8
	.4byte 0x3FD99999
	.4byte 0x9997FA04


.global lbl_8066BA50
lbl_8066BA50:
	# ROM: 0x5758B0
	.4byte 0x3FCC71C5
	.4byte 0x1D8E78AF


.global lbl_8066BA58
lbl_8066BA58:
	# ROM: 0x5758B8
	.4byte 0x3FC39A09
	.4byte 0xD078C69F


.global lbl_8066BA60
lbl_8066BA60:
	# ROM: 0x5758C0
	.4byte 0x3FE55555
	.4byte 0x55555593


.global lbl_8066BA68
lbl_8066BA68:
	# ROM: 0x5758C8
	.4byte 0x3FD24924
	.4byte 0x94229359


.global lbl_8066BA70
lbl_8066BA70:
	# ROM: 0x5758D0
	.4byte 0x3FC74664
	.4byte 0x96CB03DE


.global lbl_8066BA78
lbl_8066BA78:
	# ROM: 0x5758D8
	.4byte 0x3FC2F112
	.4byte 0xDF3E5244


.global lbl_8066BA80
lbl_8066BA80:
	# ROM: 0x5758E0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066BA88
lbl_8066BA88:
	# ROM: 0x5758E8
	.4byte 0xC3500000
	.4byte 0


.global lbl_8066BA90
lbl_8066BA90:
	# ROM: 0x5758F0
	.4byte 0x43500000
	.4byte 0


.global lbl_8066BA98
lbl_8066BA98:
	# ROM: 0x5758F8
	.4byte 0x3D59FEF3
	.4byte 0x11F12B36


.global lbl_8066BAA0
lbl_8066BAA0:
	# ROM: 0x575900
	.4byte 0x3FDBCB7B
	.4byte 0x1526E50E


.global lbl_8066BAA8
lbl_8066BAA8:
	# ROM: 0x575908
	.4byte 0x3FD34413
	.4byte 0x509F6000


.global lbl_8066BAB0
lbl_8066BAB0:
	# ROM: 0x575910
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066BAB8
lbl_8066BAB8:
	# ROM: 0x575918
	.4byte 0x3FF00000
	.4byte 0


.global lbl_8066BAC0
lbl_8066BAC0:
	# ROM: 0x575920
	.4byte 0
	.4byte 0


.global lbl_8066BAC8
lbl_8066BAC8:
	# ROM: 0x575928
	.4byte 0x7FF00000
	.4byte 0


.global lbl_8066BAD0
lbl_8066BAD0:
	# ROM: 0x575930
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066BAD8
lbl_8066BAD8:
	# ROM: 0x575938
	.4byte 0x3FD55555
	.4byte 0x55555555


.global lbl_8066BAE0
lbl_8066BAE0:
	# ROM: 0x575940
	.4byte 0x3FD00000
	.4byte 0


.global lbl_8066BAE8
lbl_8066BAE8:
	# ROM: 0x575948
	.4byte 0x3FF71547
	.4byte 0x60000000


.global lbl_8066BAF0
lbl_8066BAF0:
	# ROM: 0x575950
	.4byte 0x3E54AE0B
	.4byte 0xF85DDF44


.global lbl_8066BAF8
lbl_8066BAF8:
	# ROM: 0x575958
	.4byte 0x3FF71547
	.4byte 0x652B82FE


.global lbl_8066BB00
lbl_8066BB00:
	# ROM: 0x575960
	.4byte 0x43400000
	.4byte 0


.global lbl_8066BB08
lbl_8066BB08:
	# ROM: 0x575968
	.4byte 0x3FE33333
	.4byte 0x33333303


.global lbl_8066BB10
lbl_8066BB10:
	# ROM: 0x575970
	.4byte 0x3FDB6DB6
	.4byte 0xDB6FABFF


.global lbl_8066BB18
lbl_8066BB18:
	# ROM: 0x575978
	.4byte 0x3FD55555
	.4byte 0x518F264D


.global lbl_8066BB20
lbl_8066BB20:
	# ROM: 0x575980
	.4byte 0x3FD17460
	.4byte 0xA91D4101


.global lbl_8066BB28
lbl_8066BB28:
	# ROM: 0x575988
	.4byte 0x3FCD864A
	.4byte 0x93C9DB65


.global lbl_8066BB30
lbl_8066BB30:
	# ROM: 0x575990
	.4byte 0x3FCA7E28
	.4byte 0x4A454EEF


.global lbl_8066BB38
lbl_8066BB38:
	# ROM: 0x575998
	.4byte 0x40080000
	.4byte 0


.global lbl_8066BB40
lbl_8066BB40:
	# ROM: 0x5759A0
	.4byte 0x3FEEC709
	.4byte 0xE0000000


.global lbl_8066BB48
lbl_8066BB48:
	# ROM: 0x5759A8
	.4byte 0xBE3E2FE0
	.4byte 0x145B01F5


.global lbl_8066BB50
lbl_8066BB50:
	# ROM: 0x5759B0
	.4byte 0x3FEEC709
	.4byte 0xDC3A03FD


.global lbl_8066BB58
lbl_8066BB58:
	# ROM: 0x5759B8
	.4byte 0xBFF00000
	.4byte 0


.global lbl_8066BB60
lbl_8066BB60:
	# ROM: 0x5759C0
	.4byte 0x7E37E43C
	.4byte 0x8800759C


.global lbl_8066BB68
lbl_8066BB68:
	# ROM: 0x5759C8
	.4byte 0x3C971547
	.4byte 0x652B82FE


.global lbl_8066BB70
lbl_8066BB70:
	# ROM: 0x5759D0
	.4byte 0x01A56E1F
	.4byte 0xC2F8F359


.global lbl_8066BB78
lbl_8066BB78:
	# ROM: 0x5759D8
	.4byte 0x3FE62E43
	.4byte 0


.global lbl_8066BB80
lbl_8066BB80:
	# ROM: 0x5759E0
	.4byte 0x3FE62E42
	.4byte 0xFEFA39EF


.global lbl_8066BB88
lbl_8066BB88:
	# ROM: 0x5759E8
	.4byte 0xBE205C61
	.4byte 0x0CA86C39


.global lbl_8066BB90
lbl_8066BB90:
	# ROM: 0x5759F0
	.4byte 0x3FC55555
	.4byte 0x5555553E


.global lbl_8066BB98
lbl_8066BB98:
	# ROM: 0x5759F8
	.4byte 0xBF66C16C
	.4byte 0x16BEBD93


.global lbl_8066BBA0
lbl_8066BBA0:
	# ROM: 0x575A00
	.4byte 0x3F11566A
	.4byte 0xAF25DE2C


.global lbl_8066BBA8
lbl_8066BBA8:
	# ROM: 0x575A08
	.4byte 0xBEBBBD41
	.4byte 0xC5D26BF1


.global lbl_8066BBB0
lbl_8066BBB0:
	# ROM: 0x575A10
	.4byte 0x3E663769
	.4byte 0x72BEA4D0


.global lbl_8066BBB8
lbl_8066BBB8:
	# ROM: 0x575A18
	.4byte 0x40000000
	.4byte 0


.global lbl_8066BBC0
lbl_8066BBC0:
	# ROM: 0x575A20
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066BBC8
lbl_8066BBC8:
	# ROM: 0x575A28
	.4byte 0
	.4byte 0


.global lbl_8066BBD0
lbl_8066BBD0:
	# ROM: 0x575A30
	.4byte 0x3FF921FB
	.4byte 0x54400000


.global lbl_8066BBD8
lbl_8066BBD8:
	# ROM: 0x575A38
	.4byte 0x3DD0B461
	.4byte 0x1A626331


.global lbl_8066BBE0
lbl_8066BBE0:
	# ROM: 0x575A40
	.4byte 0x3DD0B461
	.4byte 0x1A600000


.global lbl_8066BBE8
lbl_8066BBE8:
	# ROM: 0x575A48
	.4byte 0x3BA3198A
	.4byte 0x2E037073


.global lbl_8066BBF0
lbl_8066BBF0:
	# ROM: 0x575A50
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066BBF8
lbl_8066BBF8:
	# ROM: 0x575A58
	.4byte 0x3FE45F30
	.4byte 0x6DC9C883


.global lbl_8066BC00
lbl_8066BC00:
	# ROM: 0x575A60
	.4byte 0x3BA3198A
	.4byte 0x2E000000


.global lbl_8066BC08
lbl_8066BC08:
	# ROM: 0x575A68
	.4byte 0x397B839A
	.4byte 0x252049C1


.global lbl_8066BC10
lbl_8066BC10:
	# ROM: 0x575A70
	.4byte 0x41700000
	.4byte 0


.global lbl_8066BC18
lbl_8066BC18:
	# ROM: 0x575A78
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066BC20
lbl_8066BC20:
	# ROM: 0x575A80
	.4byte 0x3FF00000
	.4byte 0


.global lbl_8066BC28
lbl_8066BC28:
	# ROM: 0x575A88
	.4byte 0x3FA55555
	.4byte 0x5555554C


.global lbl_8066BC30
lbl_8066BC30:
	# ROM: 0x575A90
	.4byte 0xBF56C16C
	.4byte 0x16C15177


.global lbl_8066BC38
lbl_8066BC38:
	# ROM: 0x575A98
	.4byte 0x3EFA01A0
	.4byte 0x19CB1590


.global lbl_8066BC40
lbl_8066BC40:
	# ROM: 0x575AA0
	.4byte 0xBE927E4F
	.4byte 0x809C52AD


.global lbl_8066BC48
lbl_8066BC48:
	# ROM: 0x575AA8
	.4byte 0x3E21EE9E
	.4byte 0xBDB4B1C4


.global lbl_8066BC50
lbl_8066BC50:
	# ROM: 0x575AB0
	.4byte 0xBDA8FAE9
	.4byte 0xBE8838D4


.global lbl_8066BC58
lbl_8066BC58:
	# ROM: 0x575AB8
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066BC60
lbl_8066BC60:
	# ROM: 0x575AC0
	.4byte 0x3FD20000
	.4byte 0


.global lbl_8066BC68
lbl_8066BC68:
	# ROM: 0x575AC8
	.4byte 0
	.4byte 0


.global lbl_8066BC70
lbl_8066BC70:
	# ROM: 0x575AD0
	.4byte 0x3E700000
	.4byte 0


.global lbl_8066BC78
lbl_8066BC78:
	# ROM: 0x575AD8
	.4byte 0x41700000
	.4byte 0


.global lbl_8066BC80
lbl_8066BC80:
	# ROM: 0x575AE0
	.4byte 0x40200000
	.4byte 0


.global lbl_8066BC88
lbl_8066BC88:
	# ROM: 0x575AE8
	.4byte 0x3FC00000
	.4byte 0


.global lbl_8066BC90
lbl_8066BC90:
	# ROM: 0x575AF0
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066BC98
lbl_8066BC98:
	# ROM: 0x575AF8
	.4byte 0x3FF00000
	.4byte 0


.global lbl_8066BCA0
lbl_8066BCA0:
	# ROM: 0x575B00
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066BCA8
lbl_8066BCA8:
	# ROM: 0x575B08
	.4byte 0x3F811111
	.4byte 0x1110F8A6


.global lbl_8066BCB0
lbl_8066BCB0:
	# ROM: 0x575B10
	.4byte 0xBF2A01A0
	.4byte 0x19C161D5


.global lbl_8066BCB8
lbl_8066BCB8:
	# ROM: 0x575B18
	.4byte 0x3EC71DE3
	.4byte 0x57B1FE7D


.global lbl_8066BCC0
lbl_8066BCC0:
	# ROM: 0x575B20
	.4byte 0xBE5AE5E6
	.4byte 0x8A2B9CEB


.global lbl_8066BCC8
lbl_8066BCC8:
	# ROM: 0x575B28
	.4byte 0x3DE5D93A
	.4byte 0x5ACFD57C


.global lbl_8066BCD0
lbl_8066BCD0:
	# ROM: 0x575B30
	.4byte 0xBFC55555
	.4byte 0x55555549


.global lbl_8066BCD8
lbl_8066BCD8:
	# ROM: 0x575B38
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066BCE0
lbl_8066BCE0:
	# ROM: 0x575B40
	.4byte 0x3FF00000
	.4byte 0


.global lbl_8066BCE8
lbl_8066BCE8:
	# ROM: 0x575B48
	.4byte 0xBFF00000
	.4byte 0


.global lbl_8066BCF0
lbl_8066BCF0:
	# ROM: 0x575B50
	.4byte 0x3FE921FB
	.4byte 0x54442D18


.global lbl_8066BCF8
lbl_8066BCF8:
	# ROM: 0x575B58
	.4byte 0x3C81A626
	.4byte 0x33145C07


.global lbl_8066BD00
lbl_8066BD00:
	# ROM: 0x575B60
	.4byte 0
	.4byte 0


.global lbl_8066BD08
lbl_8066BD08:
	# ROM: 0x575B68
	.4byte 0x40000000
	.4byte 0


.global lbl_8066BD10
lbl_8066BD10:
	# ROM: 0x575B70
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066BD18
lbl_8066BD18:
	# ROM: 0x575B78
	.4byte 0x7E37E43C
	.4byte 0x8800759C


.global lbl_8066BD20
lbl_8066BD20:
	# ROM: 0x575B80
	.4byte 0x3FF00000
	.4byte 0


.global lbl_8066BD28
lbl_8066BD28:
	# ROM: 0x575B88
	.4byte 0x40000000
	.4byte 0


.global lbl_8066BD30
lbl_8066BD30:
	# ROM: 0x575B90
	.4byte 0x3FF80000
	.4byte 0


.global lbl_8066BD38
lbl_8066BD38:
	# ROM: 0x575B98
	.4byte 0xBFF00000
	.4byte 0


.global lbl_8066BD40
lbl_8066BD40:
	# ROM: 0x575BA0
	.4byte 0x7E37E43C
	.4byte 0x8800759C


.global lbl_8066BD48
lbl_8066BD48:
	# ROM: 0x575BA8
	.4byte 0
	.4byte 0


.global lbl_8066BD50
lbl_8066BD50:
	# ROM: 0x575BB0
	.4byte 0
	.4byte 0


.global lbl_8066BD58
lbl_8066BD58:
	# ROM: 0x575BB8
	.4byte 0x7E37E43C
	.4byte 0x8800759C


.global lbl_8066BD60
lbl_8066BD60:
	# ROM: 0x575BC0
	.4byte 0
	.4byte 0


.global lbl_8066BD68
lbl_8066BD68:
	# ROM: 0x575BC8
	.4byte 0x43500000
	.4byte 0


.global lbl_8066BD70
lbl_8066BD70:
	# ROM: 0x575BD0
	.4byte 0
	.4byte 0


.global lbl_8066BD78
lbl_8066BD78:
	# ROM: 0x575BD8
	.4byte 0x43500000
	.4byte 0


.global lbl_8066BD80
lbl_8066BD80:
	# ROM: 0x575BE0
	.4byte 0x01A56E1F
	.4byte 0xC2F8F359


.global lbl_8066BD88
lbl_8066BD88:
	# ROM: 0x575BE8
	.4byte 0x7E37E43C
	.4byte 0x8800759C


.global lbl_8066BD90
lbl_8066BD90:
	# ROM: 0x575BF0
	.4byte 0x3C900000
	.4byte 0


.global lbl_8066BD98
lbl_8066BD98:
	# ROM: 0x575BF8
	.4byte 0
	.4byte 0


.global lbl_8066BDA0
lbl_8066BDA0:
	# ROM: 0x575C00
	.4byte 0
	.4byte 0


.global lbl_8066BDA8
lbl_8066BDA8:
	# ROM: 0x575C08
	.4byte 0x3FF00000
	.4byte 0


.global lbl_8066BDB0
lbl_8066BDB0:
	# ROM: 0x575C10
	.4byte 0x00454E44
	.4byte 0


.global lbl_8066BDB8
lbl_8066BDB8:
	# ROM: 0x575C18
	.4byte 0x40000000


.global lbl_8066BDBC
lbl_8066BDBC:
	# ROM: 0x575C1C
	.4byte 0x40C90FDB


.global lbl_8066BDC0
lbl_8066BDC0:
	# ROM: 0x575C20
	.4byte 0x46FA0000


.global lbl_8066BDC4
lbl_8066BDC4:
	# ROM: 0x575C24
	.4byte 0x3F800000


.global lbl_8066BDC8
lbl_8066BDC8:
	# ROM: 0x575C28
	.4byte 0x47000000
	.4byte 0


.global lbl_8066BDD0
lbl_8066BDD0:
	# ROM: 0x575C30
	.4byte 0x43300000
	.4byte 0


.global lbl_8066BDD8
lbl_8066BDD8:
	# ROM: 0x575C38
	.4byte 0


.global lbl_8066BDDC
lbl_8066BDDC:
	# ROM: 0x575C3C
	.4byte 0x3F800000


.global lbl_8066BDE0
lbl_8066BDE0:
	# ROM: 0x575C40
	.4byte 0x46FA0000


.global lbl_8066BDE4
lbl_8066BDE4:
	# ROM: 0x575C44
	.4byte 0


.global lbl_8066BDE8
lbl_8066BDE8:
	# ROM: 0x575C48
	.4byte 0x3F800000


.global lbl_8066BDEC
lbl_8066BDEC:
	# ROM: 0x575C4C
	.4byte 0x3F19999A


.global lbl_8066BDF0
lbl_8066BDF0:
	# ROM: 0x575C50
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066BDF8
lbl_8066BDF8:
	# ROM: 0x575C58
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066BE00
lbl_8066BE00:
	# ROM: 0x575C60
	.4byte 0xC0400000
	.4byte 0


.global lbl_8066BE08
lbl_8066BE08:
	# ROM: 0x575C68
	.4byte 0x40240000
	.4byte 0


.global lbl_8066BE10
lbl_8066BE10:
	# ROM: 0x575C70
	.asciz "?s33"
	.balign 4


.global lbl_8066BE18
lbl_8066BE18:
	# ROM: 0x575C78
	.4byte 0x43300000
	.4byte 0


.global lbl_8066BE20
lbl_8066BE20:
	# ROM: 0x575C80
	.4byte 0x42000000


.global lbl_8066BE24
lbl_8066BE24:
	# ROM: 0x575C84
	.4byte 0


.global lbl_8066BE28
lbl_8066BE28:
	# ROM: 0x575C88
	.4byte 0x3F800000


.global lbl_8066BE2C
lbl_8066BE2C:
	# ROM: 0x575C8C
	.4byte 0x43000000


.global lbl_8066BE30
lbl_8066BE30:
	# ROM: 0x575C90
	.asciz "?s33"
	.balign 4


.global lbl_8066BE38
lbl_8066BE38:
	# ROM: 0x575C98
	.4byte 0x42000000


.global lbl_8066BE3C
lbl_8066BE3C:
	# ROM: 0x575C9C
	.4byte 0


.global lbl_8066BE40
lbl_8066BE40:
	# ROM: 0x575CA0
	.4byte 0x3F800000


.global lbl_8066BE44
lbl_8066BE44:
	# ROM: 0x575CA4
	.4byte 0x43000000


.global lbl_8066BE48
lbl_8066BE48:
	# ROM: 0x575CA8
	.asciz "?s33"
	.balign 4


.global lbl_8066BE50
lbl_8066BE50:
	# ROM: 0x575CB0
	.4byte 0x46FA0000


.global lbl_8066BE54
lbl_8066BE54:
	# ROM: 0x575CB4
	.4byte 0


.global lbl_8066BE58
lbl_8066BE58:
	# ROM: 0x575CB8
	.4byte 0x3F800000


.global lbl_8066BE5C
lbl_8066BE5C:
	# ROM: 0x575CBC
	.4byte 0x3F19999A


.global lbl_8066BE60
lbl_8066BE60:
	# ROM: 0x575CC0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066BE68
lbl_8066BE68:
	# ROM: 0x575CC8
	.4byte 0xBEA8F5C3


.global lbl_8066BE6C
lbl_8066BE6C:
	# ROM: 0x575CCC
	.4byte 0x3EA8F5C3


.global lbl_8066BE70
lbl_8066BE70:
	# ROM: 0x575CD0
	.4byte 0xC0400000
	.4byte 0


.global lbl_8066BE78
lbl_8066BE78:
	# ROM: 0x575CD8
	.4byte 0x40240000
	.4byte 0


.global lbl_8066BE80
lbl_8066BE80:
	# ROM: 0x575CE0
	.asciz "?s33"
	.balign 4


.global lbl_8066BE88
lbl_8066BE88:
	# ROM: 0x575CE8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066BE90
lbl_8066BE90:
	# ROM: 0x575CF0
	.4byte 0x46FA0000


.global lbl_8066BE94
lbl_8066BE94:
	# ROM: 0x575CF4
	.4byte 0


.global lbl_8066BE98
lbl_8066BE98:
	# ROM: 0x575CF8
	.4byte 0x3F800000


.global lbl_8066BE9C
lbl_8066BE9C:
	# ROM: 0x575CFC
	.4byte 0x3F19999A


.global lbl_8066BEA0
lbl_8066BEA0:
	# ROM: 0x575D00
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066BEA8
lbl_8066BEA8:
	# ROM: 0x575D08
	.4byte 0xBEA8F5C3


.global lbl_8066BEAC
lbl_8066BEAC:
	# ROM: 0x575D0C
	.4byte 0x3EA8F5C3


.global lbl_8066BEB0
lbl_8066BEB0:
	# ROM: 0x575D10
	.4byte 0xC0400000
	.4byte 0


.global lbl_8066BEB8
lbl_8066BEB8:
	# ROM: 0x575D18
	.4byte 0x40240000
	.4byte 0


.global lbl_8066BEC0
lbl_8066BEC0:
	# ROM: 0x575D20
	.asciz "?s33"
	.balign 4


.global lbl_8066BEC8
lbl_8066BEC8:
	# ROM: 0x575D28
	.4byte 0x43300000
	.4byte 0


.global lbl_8066BED0
lbl_8066BED0:
	# ROM: 0x575D30
	.4byte 0x42000000


.global lbl_8066BED4
lbl_8066BED4:
	# ROM: 0x575D34
	.4byte 0


.global lbl_8066BED8
lbl_8066BED8:
	# ROM: 0x575D38
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066BEE0
lbl_8066BEE0:
	# ROM: 0x575D40
	.4byte 0x3DCCCCCD


.global lbl_8066BEE4
lbl_8066BEE4:
	# ROM: 0x575D44
	.4byte 0x42480000


.global lbl_8066BEE8
lbl_8066BEE8:
	# ROM: 0x575D48
	.4byte 0x3F800000


.global lbl_8066BEEC
lbl_8066BEEC:
	# ROM: 0x575D4C
	.4byte 0x40000000


.global lbl_8066BEF0
lbl_8066BEF0:
	# ROM: 0x575D50
	.4byte 0x47800000


.global lbl_8066BEF4
lbl_8066BEF4:
	# ROM: 0x575D54
	.4byte 0x43800000


.global lbl_8066BEF8
lbl_8066BEF8:
	# ROM: 0x575D58
	.4byte 0x46FA0000


.global lbl_8066BEFC
lbl_8066BEFC:
	# ROM: 0x575D5C
	.4byte 0x3B800000


.global lbl_8066BF00
lbl_8066BF00:
	# ROM: 0x575D60
	.4byte 0x42000000


.global lbl_8066BF04
lbl_8066BF04:
	# ROM: 0x575D64
	.4byte 0


.global lbl_8066BF08
lbl_8066BF08:
	# ROM: 0x575D68
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066BF10
lbl_8066BF10:
	# ROM: 0x575D70
	.4byte 0x3DCCCCCD


.global lbl_8066BF14
lbl_8066BF14:
	# ROM: 0x575D74
	.4byte 0x42480000


.global lbl_8066BF18
lbl_8066BF18:
	# ROM: 0x575D78
	.4byte 0x3F800000


.global lbl_8066BF1C
lbl_8066BF1C:
	# ROM: 0x575D7C
	.4byte 0x40000000


.global lbl_8066BF20
lbl_8066BF20:
	# ROM: 0x575D80
	.4byte 0x47800000


.global lbl_8066BF24
lbl_8066BF24:
	# ROM: 0x575D84
	.4byte 0x43800000


.global lbl_8066BF28
lbl_8066BF28:
	# ROM: 0x575D88
	.4byte 0x46FA0000


.global lbl_8066BF2C
lbl_8066BF2C:
	# ROM: 0x575D8C
	.4byte 0x3B800000


.global lbl_8066BF30
lbl_8066BF30:
	# ROM: 0x575D90
	.4byte 0x03040302
	.4byte 0


.global lbl_8066BF38
lbl_8066BF38:
	# ROM: 0x575D98
	.4byte 0x13001100
	.4byte 0x12001000
	.4byte 0x00040201
	.4byte 0


.global lbl_8066BF48
lbl_8066BF48:
	# ROM: 0x575DA8
	.2byte 0x0001


.global lbl_8066BF4A
lbl_8066BF4A:
	# ROM: 0x575DAA
	.byte 0x80, 0x01
	.4byte 0


.global lbl_8066BF50
lbl_8066BF50:
	# ROM: 0x575DB0
	.4byte 0x802E156C  ;# ptr
	.4byte 0


.global lbl_8066BF58
lbl_8066BF58:
	# ROM: 0x575DB8
	.4byte 0x802E1604  ;# ptr
	.4byte 0


.global lbl_8066BF60
lbl_8066BF60:
	# ROM: 0x575DC0
	.4byte 0x802E3F54  ;# ptr
	.4byte 0x802E38B8  ;# ptr


.global lbl_8066BF68
lbl_8066BF68:
	# ROM: 0x575DC8
	.4byte 0x9E8B3300


.global lbl_8066BF6C
lbl_8066BF6C:
	# ROM: 0x575DCC
	.4byte 0x9E8B0000


.global lbl_8066BF70
lbl_8066BF70:
	# ROM: 0x575DD0
	.4byte 0x00000100


.global lbl_8066BF74
lbl_8066BF74:
	# ROM: 0x575DD4
	.4byte 0x40800100


.global lbl_8066BF78
lbl_8066BF78:
	# ROM: 0x575DD8
	.byte 0xFF


.global lbl_8066BF79
lbl_8066BF79:
	# ROM: 0x575DD9
	.byte 0xFF


.global lbl_8066BF7A
lbl_8066BF7A:
	# ROM: 0x575DDA
	.byte 0xFF


.global lbl_8066BF7B
lbl_8066BF7B:
	# ROM: 0x575DDB
	.byte 0xFF


.global lbl_8066BF7C
lbl_8066BF7C:
	# ROM: 0x575DDC
	.byte 0xFF


.global lbl_8066BF7D
lbl_8066BF7D:	.byte 0xFF
	.byte 0x00
	.byte 0x00

.global lbl_8066BF80
lbl_8066BF80:
	# ROM: 0x575DE0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFF0000


.global lbl_8066BF88
lbl_8066BF88:
	# ROM: 0x575DE8
	.4byte 0xFFFFFF00
	.4byte 0


.global lbl_8066BF90
lbl_8066BF90:
	# ROM: 0x575DF0
	.4byte 0xFFFFFF00
	.4byte 0


.global lbl_8066BF98
lbl_8066BF98:
	# ROM: 0x575DF8
	.4byte 0x00000004
	.4byte 0


.global lbl_8066BFA0
lbl_8066BFA0:
	# ROM: 0x575E00
	.4byte 0x805CCF60


.global lbl_8066BFA4
lbl_8066BFA4:
	# ROM: 0x575E04
	.4byte 0x4B800000


.global lbl_8066BFA8
lbl_8066BFA8:
	# ROM: 0x575E08
	.4byte 0


.global lbl_8066BFAC
lbl_8066BFAC:
	# ROM: 0x575E0C
	.4byte 0x404040FF


.global lbl_8066BFB0
lbl_8066BFB0:
	# ROM: 0x575E10
	.4byte 0xFFFFFFFF


.global lbl_8066BFB4
lbl_8066BFB4:
	# ROM: 0x575E14
	.4byte 0x3F800000


.global lbl_8066BFB8
lbl_8066BFB8:
	# ROM: 0x575E18
	.4byte 0x3DCCCCCD
	.4byte 0


.global lbl_8066BFC0
lbl_8066BFC0:
	# ROM: 0x575E20
	.4byte 0x43300000
	.4byte 0


.global lbl_8066BFC8
lbl_8066BFC8:
	# ROM: 0x575E28
	.4byte 0x43800000
	.4byte 0


.global lbl_8066BFD0
lbl_8066BFD0:
	# ROM: 0x575E30
	.4byte 0x43300000
	.4byte 0


.global lbl_8066BFD8
lbl_8066BFD8:
	# ROM: 0x575E38
	.4byte 0


.global lbl_8066BFDC
lbl_8066BFDC:
	# ROM: 0x575E3C
	.4byte 0x42B40000


.global lbl_8066BFE0
lbl_8066BFE0:
	# ROM: 0x575E40
	.4byte 0x40490FDB


.global lbl_8066BFE4
lbl_8066BFE4:
	# ROM: 0x575E44
	.4byte 0x43340000


.global lbl_8066BFE8
lbl_8066BFE8:
	# ROM: 0x575E48
	.4byte 0xC47A0000


.global lbl_8066BFEC
lbl_8066BFEC:
	# ROM: 0x575E4C
	.4byte 0x447A0000


.global lbl_8066BFF0
lbl_8066BFF0:
	# ROM: 0x575E50
	.4byte 0x3F800000


.global lbl_8066BFF4
lbl_8066BFF4:
	# ROM: 0x575E54
	.4byte 0x40000000


.global lbl_8066BFF8
lbl_8066BFF8:
	# ROM: 0x575E58
	.4byte 0xC0800000


.global lbl_8066BFFC
lbl_8066BFFC:
	# ROM: 0x575E5C
	.4byte 0x40800000


.global lbl_8066C000
lbl_8066C000:
	# ROM: 0x575E60
	.4byte 0xC0000000


.global lbl_8066C004
lbl_8066C004:
	# ROM: 0x575E64
	.4byte 0x3F000000


.global lbl_8066C008
lbl_8066C008:
	# ROM: 0x575E68
	.4byte 0xDD5E0B6B
	.4byte 0


.global lbl_8066C010
lbl_8066C010:
	# ROM: 0x575E70
	.4byte 0x41800000
	.4byte 0


.global lbl_8066C018
lbl_8066C018:
	# ROM: 0x575E78
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C020
lbl_8066C020:
	# ROM: 0x575E80
	.4byte 0xC0800000


.global lbl_8066C024
lbl_8066C024:
	# ROM: 0x575E84
	.4byte 0x407F5C29


.global lbl_8066C028
lbl_8066C028:
	# ROM: 0x575E88
	.4byte 0x40800000


.global lbl_8066C02C
lbl_8066C02C:
	# ROM: 0x575E8C
	.4byte 0x42000000


.global lbl_8066C030
lbl_8066C030:
	# ROM: 0x575E90
	.4byte 0


.global lbl_8066C034
lbl_8066C034:
	# ROM: 0x575E94
	.4byte 0x41200000


.global lbl_8066C038
lbl_8066C038:
	# ROM: 0x575E98
	.4byte 0x3D800000


.global lbl_8066C03C
lbl_8066C03C:
	# ROM: 0x575E9C
	.4byte 0x3D000000


.global lbl_8066C040
lbl_8066C040:
	# ROM: 0x575EA0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C048
lbl_8066C048:
	# ROM: 0x575EA8
	.4byte 0x44800000
	.4byte 0


.global lbl_8066C050
lbl_8066C050:
	# ROM: 0x575EB0
	.4byte 0


.global lbl_8066C054
lbl_8066C054:
	# ROM: 0x575EB4
	.4byte 0x3F800000


.global lbl_8066C058
lbl_8066C058:
	# ROM: 0x575EB8
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066C060
lbl_8066C060:
	# ROM: 0x575EC0
	.4byte 0x3FF00000
	.4byte 0


.global lbl_8066C068
lbl_8066C068:
	# ROM: 0x575EC8
	.4byte 0x40000000
	.4byte 0


.global lbl_8066C070
lbl_8066C070:
	# ROM: 0x575ED0
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066C078
lbl_8066C078:
	# ROM: 0x575ED8
	.4byte 0x4B00001E
	.4byte 0


.global lbl_8066C080
lbl_8066C080:
	# ROM: 0x575EE0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C088
lbl_8066C088:
	# ROM: 0x575EE8
	.4byte 0
	.4byte 0


.global lbl_8066C090
lbl_8066C090:
	# ROM: 0x575EF0
	.4byte 0x3FDDB3D0


.global lbl_8066C094
lbl_8066C094:
	# ROM: 0x575EF4
	.4byte 0x43800000


.global lbl_8066C098
lbl_8066C098:
	# ROM: 0x575EF8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C0A0
lbl_8066C0A0:
	# ROM: 0x575F00
	.4byte 0


.global lbl_8066C0A4
lbl_8066C0A4:
	# ROM: 0x575F04
	.4byte 0x3F000000


.global lbl_8066C0A8
lbl_8066C0A8:
	# ROM: 0x575F08
	.4byte 0x43AB0000
	.4byte 0


.global lbl_8066C0B0
lbl_8066C0B0:
	# ROM: 0x575F10
	.4byte 0


.global lbl_8066C0B4
lbl_8066C0B4:
	# ROM: 0x575F14
	.4byte 0x3F000000


.global lbl_8066C0B8
lbl_8066C0B8:
	# ROM: 0x575F18
	.4byte 0xBF800000


.global lbl_8066C0BC
lbl_8066C0BC:
	# ROM: 0x575F1C
	.4byte 0x3F800000


.global lbl_8066C0C0
lbl_8066C0C0:
	# ROM: 0x575F20
	.4byte 0xBF400000


.global lbl_8066C0C4
lbl_8066C0C4:
	# ROM: 0x575F24
	.4byte 0x3F400000


.global lbl_8066C0C8
lbl_8066C0C8:
	# ROM: 0x575F28
	.4byte 0x40000000
	.4byte 0


.global lbl_8066C0D0
lbl_8066C0D0:
	# ROM: 0x575F30
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C0D8
lbl_8066C0D8:
	# ROM: 0x575F38
	.4byte 0x3B000000


.global lbl_8066C0DC
lbl_8066C0DC:
	# ROM: 0x575F3C
	.4byte 0x3F7FC000


.global lbl_8066C0E0
lbl_8066C0E0:
	# ROM: 0x575F40
	.4byte 0x3F3FC000
	.4byte 0


.global lbl_8066C0E8
lbl_8066C0E8:
	# ROM: 0x575F48
	.4byte 0
	.4byte 0


.global lbl_8066C0F0
lbl_8066C0F0:
	# ROM: 0x575F50
	.4byte 0xBFE00000
	.4byte 0


.global lbl_8066C0F8
lbl_8066C0F8:
	# ROM: 0x575F58
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C100
lbl_8066C100:
	# ROM: 0x575F60
	.4byte 0x3EC489D2


.global lbl_8066C104
lbl_8066C104:
	# ROM: 0x575F64
	.4byte 0x3C8EFA35


.global lbl_8066C108
lbl_8066C108:
	# ROM: 0x575F68
	.4byte 0x00010001


.global lbl_8066C10C
lbl_8066C10C:
	# ROM: 0x575F6C
	.4byte 0x00010000


.global lbl_8066C110
lbl_8066C110:
	# ROM: 0x575F70
	.4byte 0x3C23D70A


.global lbl_8066C114
lbl_8066C114:
	# ROM: 0x575F74
	.4byte 0x3BA3D70A


.global lbl_8066C118
lbl_8066C118:
	# ROM: 0x575F78
	.4byte 0x3E4CCCCD


.global lbl_8066C11C
lbl_8066C11C:
	# ROM: 0x575F7C
	.4byte 0xBE4CCCCD


.global lbl_8066C120
lbl_8066C120:
	# ROM: 0x575F80
	.4byte 0x80349A70
	.4byte 0x80349A80


.global lbl_8066C128
lbl_8066C128:
	# ROM: 0x575F88
	.4byte 0x3F800000


.global lbl_8066C12C
lbl_8066C12C:
	# ROM: 0x575F8C
	.4byte 0


.global lbl_8066C130
lbl_8066C130:
	# ROM: 0x575F90
	.4byte 0x3F000000


.global lbl_8066C134
lbl_8066C134:
	# ROM: 0x575F94
	.4byte 0x40400000


.global lbl_8066C138
lbl_8066C138:
	# ROM: 0x575F98
	.4byte 0x40000000


.global lbl_8066C13C
lbl_8066C13C:
	# ROM: 0x575F9C
	.4byte 0xBF800000


.global lbl_8066C140
lbl_8066C140:
	# ROM: 0x575FA0
	.4byte 0x3C8EFA35
	.4byte 0


.global lbl_8066C148
lbl_8066C148:
	# ROM: 0x575FA8
	.4byte 0x3F800000


.global lbl_8066C14C
lbl_8066C14C:
	# ROM: 0x575FAC
	.4byte 0x40000000


.global lbl_8066C150
lbl_8066C150:
	# ROM: 0x575FB0
	.4byte 0


.global lbl_8066C154
lbl_8066C154:
	# ROM: 0x575FB4
	.4byte 0xBF800000


.global lbl_8066C158
lbl_8066C158:
	# ROM: 0x575FB8
	.4byte 0x3F000000


.global lbl_8066C15C
lbl_8066C15C:
	# ROM: 0x575FBC
	.4byte 0x3C8EFA35


.global lbl_8066C160
lbl_8066C160:
	# ROM: 0x575FC0
	.4byte 0x3F000000


.global lbl_8066C164
lbl_8066C164:
	# ROM: 0x575FC4
	.4byte 0x40400000


.global lbl_8066C168
lbl_8066C168:
	# ROM: 0x575FC8
	.4byte 0
	.4byte 0


.global lbl_8066C170
lbl_8066C170:
	# ROM: 0x575FD0
	.4byte 0x3727C5AC


.global lbl_8066C174
lbl_8066C174:
	# ROM: 0x575FD4
	.4byte 0x3F800000


.global lbl_8066C178
lbl_8066C178:
	# ROM: 0x575FD8
	.4byte 0


.global lbl_8066C17C
lbl_8066C17C:
	# ROM: 0x575FDC
	.4byte 0x3F000000


.global lbl_8066C180
lbl_8066C180:
	# ROM: 0x575FE0
	.4byte 0x40400000


.global lbl_8066C184
lbl_8066C184:
	# ROM: 0x575FE4
	.4byte 0x3F7FFF58


.global lbl_8066C188
lbl_8066C188:
	# ROM: 0x575FE8
	.4byte 0x0000FF00


.global lbl_8066C18C
lbl_8066C18C:
	# ROM: 0x575FEC
	.4byte 0xFFFFFF00


.global lbl_8066C190
lbl_8066C190:
	# ROM: 0x575FF0
	.4byte 0x3F000000


.global lbl_8066C194
lbl_8066C194:
	# ROM: 0x575FF4
	.4byte 0x41800000


.global lbl_8066C198
lbl_8066C198:
	# ROM: 0x575FF8
	.4byte 0x3DC8B439


.global lbl_8066C19C
lbl_8066C19C:
	# ROM: 0x575FFC
	.4byte 0x3E839581


.global lbl_8066C1A0
lbl_8066C1A0:
	# ROM: 0x576000
	.4byte 0x3F010625


.global lbl_8066C1A4
lbl_8066C1A4:
	# ROM: 0x576004
	.4byte 0x43000000


.global lbl_8066C1A8
lbl_8066C1A8:
	# ROM: 0x576008
	.4byte 0x3EE0C49C


.global lbl_8066C1AC
lbl_8066C1AC:
	# ROM: 0x57600C
	.4byte 0xBE178D50


.global lbl_8066C1B0
lbl_8066C1B0:
	# ROM: 0x576010
	.4byte 0x3E94FDF4


.global lbl_8066C1B4
lbl_8066C1B4:
	# ROM: 0x576014
	.4byte 0x3EBC6A7F


.global lbl_8066C1B8
lbl_8066C1B8:
	# ROM: 0x576018
	.4byte 0x3D916873


.global lbl_8066C1BC
lbl_8066C1BC:
	# ROM: 0x57601C
	.4byte 0x436B0000


.global lbl_8066C1C0
lbl_8066C1C0:
	# ROM: 0x576020
	.4byte 0x43700000
	.4byte 0


.global lbl_8066C1C8
lbl_8066C1C8:
	# ROM: 0x576028
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C1D0
lbl_8066C1D0:
	# ROM: 0x576030
	.4byte 0x2ABE003D


.global lbl_8066C1D4
lbl_8066C1D4:
	# ROM: 0x576034
	.4byte 0x003D003D


.global lbl_8066C1D8
lbl_8066C1D8:
	# ROM: 0x576038
	.4byte 0x3F7EB852
	.4byte 0


.global lbl_8066C1E0
lbl_8066C1E0:
	# ROM: 0x576040
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C1E8
lbl_8066C1E8:
	# ROM: 0x576048
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C1F0
lbl_8066C1F0:
	# ROM: 0x576050
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C1F8
lbl_8066C1F8:
	# ROM: 0x576058
	.4byte 0x0000D007


.global lbl_8066C1FC
lbl_8066C1FC:
	# ROM: 0x57605C
	.2byte 0x400C


.global lbl_8066C1FE
lbl_8066C1FE:
	# ROM: 0x57605E
	.2byte 0x0E00


.global lbl_8066C200
lbl_8066C200:
	# ROM: 0x576060
	.4byte 0x007F0380


.global lbl_8066C204
lbl_8066C204:
	# ROM: 0x576064
	.4byte 0x0380007F


.global lbl_8066C208
lbl_8066C208:
	# ROM: 0x576068
	.4byte 0x005D005D


.global lbl_8066C20C
lbl_8066C20C:
	# ROM: 0x57606C
	.4byte 0x02A202A2


.global lbl_8066C210
lbl_8066C210:
	# ROM: 0x576070
	.4byte 0


.global lbl_8066C214
lbl_8066C214:
	# ROM: 0x576074
	.4byte 0x3E800000


.global lbl_8066C218
lbl_8066C218:
	# ROM: 0x576078
	.4byte 0x42FD0000


.global lbl_8066C21C
lbl_8066C21C:
	# ROM: 0x57607C
	.4byte 0x44A69000


.global lbl_8066C220
lbl_8066C220:
	# ROM: 0x576080
	.4byte 0x3FB84D9D
	.4byte 0xE0000000


.global lbl_8066C228
lbl_8066C228:
	# ROM: 0x576088
	.4byte 0x42BA0000


.global lbl_8066C22C
lbl_8066C22C:
	# ROM: 0x57608C
	.4byte 0x44A72CCD


.global lbl_8066C230
lbl_8066C230:
	# ROM: 0x576090
	.4byte 0x3FB1CD3C
	.4byte 0x80000000


.global lbl_8066C238
lbl_8066C238:
	# ROM: 0x576098
	.4byte 0xBF800000


.global lbl_8066C23C
lbl_8066C23C:
	# ROM: 0x57609C
	.4byte 0x43BFC000


.global lbl_8066C240
lbl_8066C240:
	# ROM: 0x5760A0
	.4byte 0x43FFC000
	.4byte 0


.global lbl_8066C248
lbl_8066C248:
	# ROM: 0x5760A8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C250
lbl_8066C250:
	# ROM: 0x5760B0
	.4byte 0x40490FD8
	.4byte 0


.global lbl_8066C258
lbl_8066C258:
	# ROM: 0x5760B8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C260
lbl_8066C260:
	# ROM: 0x5760C0
	.4byte 0x57696900


.global lbl_8066C264
lbl_8066C264:
	# ROM: 0x5760C4
	.2byte 0x0004


.global lbl_8066C266
lbl_8066C266:
	# ROM: 0x5760C6
	.2byte 0x4800


.global lbl_8066C268
lbl_8066C268:
	# ROM: 0x5760C8
	.4byte 0


.global lbl_8066C26C
lbl_8066C26C:
	# ROM: 0x5760CC
	.4byte 0x3F800000


.global lbl_8066C270
lbl_8066C270:
	# ROM: 0x5760D0
	.4byte 0x3FE33333
	.4byte 0x40000000


.global lbl_8066C278
lbl_8066C278:
	# ROM: 0x5760D8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C280
lbl_8066C280:
	# ROM: 0x5760E0
	.4byte 0x40000000


.global lbl_8066C284
lbl_8066C284:
	# ROM: 0x5760E4
	.4byte 0x3F000000


.global lbl_8066C288
lbl_8066C288:
	# ROM: 0x5760E8
	.4byte 0x3A800000
	.4byte 0


.global lbl_8066C290
lbl_8066C290:
	# ROM: 0x5760F0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C298
lbl_8066C298:
	# ROM: 0x5760F8
	.4byte 0x44800000
	.4byte 0


.global lbl_8066C2A0
lbl_8066C2A0:
	# ROM: 0x576100
	.4byte 0x3F800000


.global lbl_8066C2A4
lbl_8066C2A4:
	# ROM: 0x576104
	.4byte 0x3F360B61


.global lbl_8066C2A8
lbl_8066C2A8:
	# ROM: 0x576108
	.4byte 0
	.4byte 0


.global lbl_8066C2B0
lbl_8066C2B0:
	# ROM: 0x576110
	.4byte 0x3F800000


.global lbl_8066C2B4
lbl_8066C2B4:
	# ROM: 0x576114
	.4byte 0x40000000


.global lbl_8066C2B8
lbl_8066C2B8:
	# ROM: 0x576118
	.4byte 0x40400000


.global lbl_8066C2BC
lbl_8066C2BC:
	# ROM: 0x57611C
	.4byte 0


.global lbl_8066C2C0
lbl_8066C2C0:
	# ROM: 0x576120
	.4byte 0x47000000
	.4byte 0


.global lbl_8066C2C8
lbl_8066C2C8:
	# ROM: 0x576128
	.4byte 0
	.4byte 0


.global lbl_8066C2D0
lbl_8066C2D0:
	# ROM: 0x576130
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C2D8
lbl_8066C2D8:
	# ROM: 0x576138
	.4byte 0x3F800000


.global lbl_8066C2DC
lbl_8066C2DC:
	# ROM: 0x57613C
	.4byte 0


.global lbl_8066C2E0
lbl_8066C2E0:
	# ROM: 0x576140
	.4byte 0


.global lbl_8066C2E4
lbl_8066C2E4:
	# ROM: 0x576144
	.4byte 0x3F800000


.global lbl_8066C2E8
lbl_8066C2E8:
	# ROM: 0x576148
	.4byte 0x40000000


.global lbl_8066C2EC
lbl_8066C2EC:
	# ROM: 0x57614C
	.4byte 0x40400000


.global lbl_8066C2F0
lbl_8066C2F0:
	# ROM: 0x576150
	.4byte 0x3F360B61
	.4byte 0


.global lbl_8066C2F8
lbl_8066C2F8:
	# ROM: 0x576158
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C300
lbl_8066C300:
	# ROM: 0x576160
	.4byte 0x3FB40000


.global lbl_8066C304
lbl_8066C304:
	# ROM: 0x576164
	.4byte 0x42B40000


.global lbl_8066C308
lbl_8066C308:
	# ROM: 0x576168
	.4byte 0xC2B40000
	.4byte 0


.global lbl_8066C310
lbl_8066C310:
	# ROM: 0x576170
	.4byte 0
	.4byte 0


.global lbl_8066C318
lbl_8066C318:
	# ROM: 0x576178
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C320
lbl_8066C320:
	# ROM: 0x576180
	.4byte 0
	.4byte 0


.global lbl_8066C328
lbl_8066C328:
	# ROM: 0x576188
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C330
lbl_8066C330:
	# ROM: 0x576190
	.4byte 0
	.4byte 0


.global lbl_8066C338
lbl_8066C338:
	# ROM: 0x576198
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C340
lbl_8066C340:
	# ROM: 0x5761A0
	.4byte 0x03AA2425
	.4byte 0


.global lbl_8066C348
lbl_8066C348:
	# ROM: 0x5761A8
	.4byte 0


.global lbl_8066C34C
lbl_8066C34C:
	# ROM: 0x5761AC
	.4byte 0x3F800000


.global lbl_8066C350
lbl_8066C350:
	# ROM: 0x5761B0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C358
lbl_8066C358:
	# ROM: 0x5761B8
	.4byte 0


.global lbl_8066C35C
lbl_8066C35C:
	# ROM: 0x5761BC
	.4byte 0x3F800000


.global lbl_8066C360
lbl_8066C360:
	# ROM: 0x5761C0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C368
lbl_8066C368:
	# ROM: 0x5761C8
	.4byte 0


.global lbl_8066C36C
lbl_8066C36C:
	# ROM: 0x5761CC
	.4byte 0x3F800000


.global lbl_8066C370
lbl_8066C370:
	# ROM: 0x5761D0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C378
lbl_8066C378:
	# ROM: 0x5761D8
	.4byte 0x219392EF
	.4byte 0


.global lbl_8066C380
lbl_8066C380:
	# ROM: 0x5761E0
	.4byte 0x3FF00000
	.4byte 0


.global lbl_8066C388
lbl_8066C388:
	# ROM: 0x5761E8
	.4byte 0


.global lbl_8066C38C
lbl_8066C38C:
	# ROM: 0x5761EC
	.4byte 0x3F800000


.global lbl_8066C390
lbl_8066C390:
	# ROM: 0x5761F0
	.4byte 0x7FC00000
	.4byte 0


.global lbl_8066C398
lbl_8066C398:
	# ROM: 0x5761F8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C3A0
lbl_8066C3A0:
	# ROM: 0x576200
	.4byte 0


.global lbl_8066C3A4
lbl_8066C3A4:
	# ROM: 0x576204
	.4byte 0xD01502F9


.global lbl_8066C3A8
lbl_8066C3A8:
	# ROM: 0x576208
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066C3B0
lbl_8066C3B0:
	# ROM: 0x576210
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C3B8
lbl_8066C3B8:
	# ROM: 0x576218
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066C3C0
lbl_8066C3C0:
	# ROM: 0x576220
	.4byte 0
	.4byte 0


.global lbl_8066C3C8
lbl_8066C3C8:
	# ROM: 0x576228
	.4byte 0x00020103


.global lbl_8066C3CC
lbl_8066C3CC:
	# ROM: 0x57622C
	.4byte 0x3F800000


.global lbl_8066C3D0
lbl_8066C3D0:
	# ROM: 0x576230
	.4byte 0x3F000000


.global lbl_8066C3D4
lbl_8066C3D4:
	# ROM: 0x576234
	.4byte 0x40000000


.global lbl_8066C3D8
lbl_8066C3D8:
	# ROM: 0x576238
	.4byte 0x44800000


.global lbl_8066C3DC
lbl_8066C3DC:
	# ROM: 0x57623C
	.4byte 0


.global lbl_8066C3E0
lbl_8066C3E0:
	# ROM: 0x576240
	.4byte 0
	.4byte 0


.global lbl_8066C3E8
lbl_8066C3E8:
	# ROM: 0x576248
	.4byte 0x00020103


.global lbl_8066C3EC
lbl_8066C3EC:
	# ROM: 0x57624C
	.4byte 0


.global lbl_8066C3F0
lbl_8066C3F0:
	# ROM: 0x576250
	.4byte 0xBF800000


.global lbl_8066C3F4
lbl_8066C3F4:
	# ROM: 0x576254
	.4byte 0x358637BD


.global lbl_8066C3F8
lbl_8066C3F8:
	# ROM: 0x576258
	.4byte 0x3F800000


.global lbl_8066C3FC
lbl_8066C3FC:
	# ROM: 0x57625C
	.4byte 0x3F000000


.global lbl_8066C400
lbl_8066C400:
	# ROM: 0x576260
	.4byte 0x3B808081
	.4byte 0


.global lbl_8066C408
lbl_8066C408:
	# ROM: 0x576268
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C410
lbl_8066C410:
	# ROM: 0x576270
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066C418
lbl_8066C418:
	# ROM: 0x576278
	.4byte 0x40100000
	.4byte 0


.global lbl_8066C420
lbl_8066C420:
	# ROM: 0x576280
	.4byte 0x437F0000
	.4byte 0


.global lbl_8066C428
lbl_8066C428:
	# ROM: 0x576288
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C430
lbl_8066C430:
	# ROM: 0x576290
	.4byte 0


.global lbl_8066C434
lbl_8066C434:
	# ROM: 0x576294
	.4byte 0x219392EF


.global lbl_8066C438
lbl_8066C438:
	# ROM: 0x576298
	.4byte 0x219392EF
	.4byte 0


.global lbl_8066C440
lbl_8066C440:
	# ROM: 0x5762A0
	.4byte 0x3F800000


.global lbl_8066C444
lbl_8066C444:
	# ROM: 0x5762A4
	.4byte 0


.global lbl_8066C448
lbl_8066C448:
	# ROM: 0x5762A8
	.4byte 0


.global lbl_8066C44C
lbl_8066C44C:
	# ROM: 0x5762AC
	.4byte 0xC0000000


.global lbl_8066C450
lbl_8066C450:
	# ROM: 0x5762B0
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066C458
lbl_8066C458:
	# ROM: 0x5762B8
	.4byte 0


.global lbl_8066C45C
lbl_8066C45C:
	# ROM: 0x5762BC
	.4byte 0x41700000


.global lbl_8066C460
lbl_8066C460:
	# ROM: 0x5762C0
	.4byte 0x3F800000


.global lbl_8066C464
lbl_8066C464:
	# ROM: 0x5762C4
	.4byte 0x42700000


.global lbl_8066C468
lbl_8066C468:
	# ROM: 0x5762C8
	.4byte 0x3FAAAAAB


.global lbl_8066C46C
lbl_8066C46C:
	# ROM: 0x5762CC
	.4byte 0x3DCCCCCD


.global lbl_8066C470
lbl_8066C470:
	# ROM: 0x5762D0
	.4byte 0x447A0000


.global lbl_8066C474
lbl_8066C474:
	# ROM: 0x5762D4
	.4byte 0x3F000000


.global lbl_8066C478
lbl_8066C478:
	# ROM: 0x5762D8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C480
lbl_8066C480:
	# ROM: 0x5762E0
	.4byte 0xBF800000


.global lbl_8066C484
lbl_8066C484:
	# ROM: 0x5762E4
	.4byte 0x3F360B61


.global lbl_8066C488
lbl_8066C488:
	# ROM: 0x5762E8
	.4byte 0x3F360B61


.global lbl_8066C48C
lbl_8066C48C:
	# ROM: 0x5762EC
	.4byte 0


.global lbl_8066C490
lbl_8066C490:
	# ROM: 0x5762F0
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066C498
lbl_8066C498:
	# ROM: 0x5762F8
	.4byte 0


.global lbl_8066C49C
lbl_8066C49C:
	# ROM: 0x5762FC
	.4byte 0x3F800000


.global lbl_8066C4A0
lbl_8066C4A0:
	# ROM: 0x576300
	.4byte 0x3F360B61


.global lbl_8066C4A4
lbl_8066C4A4:
	# ROM: 0x576304
	.4byte 0x3F000000


.global lbl_8066C4A8
lbl_8066C4A8:
	# ROM: 0x576308
	.4byte 0xBF000000
	.4byte 0


.global lbl_8066C4B0
lbl_8066C4B0:
	# ROM: 0x576310
	.4byte 0


.global lbl_8066C4B4
lbl_8066C4B4:
	# ROM: 0x576314
	.4byte 0x3F800000


.global lbl_8066C4B8
lbl_8066C4B8:
	# ROM: 0x576318
	.4byte 0x3F360B61
	.4byte 0


.global lbl_8066C4C0
lbl_8066C4C0:
	# ROM: 0x576320
	.4byte 0


.global lbl_8066C4C4
lbl_8066C4C4:
	# ROM: 0x576324
	.4byte 0x3F000000


.global lbl_8066C4C8
lbl_8066C4C8:
	# ROM: 0x576328
	.4byte 0x3F800000


.global lbl_8066C4CC
lbl_8066C4CC:
	# ROM: 0x57632C
	.4byte 0x3F360B61


.global lbl_8066C4D0
lbl_8066C4D0:
	# ROM: 0x576330
	.4byte 0xBF000000
	.4byte 0


.global lbl_8066C4D8
lbl_8066C4D8:
	# ROM: 0x576338
	.4byte 0


.global lbl_8066C4DC
lbl_8066C4DC:
	# ROM: 0x57633C
	.4byte 0x3F800000


.global lbl_8066C4E0
lbl_8066C4E0:
	# ROM: 0x576340
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066C4E8
lbl_8066C4E8:
	# ROM: 0x576348
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066C4F0
lbl_8066C4F0:
	# ROM: 0x576350
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066C4F8
lbl_8066C4F8:
	# ROM: 0x576358
	.4byte 0
	.4byte 0


.global lbl_8066C500
lbl_8066C500:
	# ROM: 0x576360
	.4byte 0


.global lbl_8066C504
lbl_8066C504:
	# ROM: 0x576364
	.4byte 0x3F800000


.global lbl_8066C508
lbl_8066C508:
	# ROM: 0x576368
	.4byte 0x3F000000


.global lbl_8066C50C
lbl_8066C50C:
	# ROM: 0x57636C
	.byte 0xFF


.global lbl_8066C50D
lbl_8066C50D:
	# ROM: 0x57636D
	.byte 0xFF


.global lbl_8066C50E
lbl_8066C50E:
	# ROM: 0x57636E
	.byte 0xFF


.global lbl_8066C50F
lbl_8066C50F:
	# ROM: 0x57636F
	.byte 0xFF


.global lbl_8066C510
lbl_8066C510:
	# ROM: 0x576370
	.byte 0xFF


.global lbl_8066C511
lbl_8066C511:
	# ROM: 0x576371
	.byte 0xFF


.global lbl_8066C512
lbl_8066C512:
	# ROM: 0x576372
	.byte 0xFF


.global lbl_8066C513
lbl_8066C513:
	# ROM: 0x576373
	.byte 0xFF


.global lbl_8066C514
lbl_8066C514:
	# ROM: 0x576374
	.4byte 0x4A742400


.global lbl_8066C518
lbl_8066C518:
	# ROM: 0x576378
	.4byte 0xBF800000


.global lbl_8066C51C
lbl_8066C51C:
	# ROM: 0x57637C
	.4byte 0x42B40000


.global lbl_8066C520
lbl_8066C520:
	# ROM: 0x576380
	.4byte 0x41200000


.global lbl_8066C524
lbl_8066C524:
	# ROM: 0x576384
	.4byte 0x41000000


.global lbl_8066C528
lbl_8066C528:
	# ROM: 0x576388
	.4byte 0xC0E00000
	.4byte 0


.global lbl_8066C530
lbl_8066C530:
	# ROM: 0x576390
	.4byte 0
	.4byte 0


.global lbl_8066C538
lbl_8066C538:
	# ROM: 0x576398
	.4byte 0


.global lbl_8066C53C
lbl_8066C53C:
	# ROM: 0x57639C
	.4byte 0x3F800000


.global lbl_8066C540
lbl_8066C540:
	# ROM: 0x5763A0
	.4byte 0x3C8EFA35


.global lbl_8066C544
lbl_8066C544:
	# ROM: 0x5763A4
	.4byte 0x3B808081


.global lbl_8066C548
lbl_8066C548:
	# ROM: 0x5763A8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C550
lbl_8066C550:
	# ROM: 0x5763B0
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066C558
lbl_8066C558:
	# ROM: 0x5763B8
	.4byte 0


.global lbl_8066C55C
lbl_8066C55C:
	# ROM: 0x5763BC
	.4byte 0x3F000000


.global lbl_8066C560
lbl_8066C560:
	# ROM: 0x5763C0
	.4byte 0
	.4byte 0


.global lbl_8066C568
lbl_8066C568:
	# ROM: 0x5763C8
	.4byte 0
	.4byte 0


.global lbl_8066C570
lbl_8066C570:
	# ROM: 0x5763D0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C578
lbl_8066C578:
	# ROM: 0x5763D8
	.4byte 0x3F000000


.global lbl_8066C57C
lbl_8066C57C:
	# ROM: 0x5763DC
	.4byte 0x3F800000


.global lbl_8066C580
lbl_8066C580:
	# ROM: 0x5763E0
	.4byte 0
	.4byte 0


.global lbl_8066C588
lbl_8066C588:
	# ROM: 0x5763E8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C590
lbl_8066C590:
	# ROM: 0x5763F0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C598
lbl_8066C598:
	# ROM: 0x5763F8
	.4byte 0x3F000000


.global lbl_8066C59C
lbl_8066C59C:
	# ROM: 0x5763FC
	.4byte 0x3F360B61


.global lbl_8066C5A0
lbl_8066C5A0:
	# ROM: 0x576400
	.4byte 0


.global lbl_8066C5A4
lbl_8066C5A4:
	# ROM: 0x576404
	.4byte 0x3F800000


.global lbl_8066C5A8
lbl_8066C5A8:
	# ROM: 0x576408
	.4byte 0x40000000
	.4byte 0


.global lbl_8066C5B0
lbl_8066C5B0:
	# ROM: 0x576410
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C5B8
lbl_8066C5B8:
	# ROM: 0x576418
	.4byte 0x3B800000
	.4byte 0


.global lbl_8066C5C0
lbl_8066C5C0:
	# ROM: 0x576420
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C5C8
lbl_8066C5C8:
	# ROM: 0x576428
	.4byte 0x43800000
	.4byte 0


.global lbl_8066C5D0
lbl_8066C5D0:
	# ROM: 0x576430
	.4byte 0


.global lbl_8066C5D4
lbl_8066C5D4:
	# ROM: 0x576434
	.4byte 0x3F800000


.global lbl_8066C5D8
lbl_8066C5D8:
	# ROM: 0x576438
	.4byte 0xBA83126F


.global lbl_8066C5DC
lbl_8066C5DC:
	# ROM: 0x57643C
	.4byte 0x3A83126F


.global lbl_8066C5E0
lbl_8066C5E0:
	# ROM: 0x576440
	.4byte 0x3F800000


.global lbl_8066C5E4
lbl_8066C5E4:
	# ROM: 0x576444
	.4byte 0x40000000


.global lbl_8066C5E8
lbl_8066C5E8:
	# ROM: 0x576448
	.4byte 0x40400000


.global lbl_8066C5EC
lbl_8066C5EC:
	# ROM: 0x57644C
	.4byte 0xC0000000


.global lbl_8066C5F0
lbl_8066C5F0:
	# ROM: 0x576450
	.4byte 0


.global lbl_8066C5F4
lbl_8066C5F4:
	# ROM: 0x576454
	.4byte 0x3F000000


.global lbl_8066C5F8
lbl_8066C5F8:
	# ROM: 0x576458
	.4byte 0


.global lbl_8066C5FC
lbl_8066C5FC:
	# ROM: 0x57645C
	.4byte 0x3F800000


.global lbl_8066C600
lbl_8066C600:
	# ROM: 0x576460
	.4byte 0x3FB8AA3B


.global lbl_8066C604
lbl_8066C604:
	# ROM: 0x576464
	.4byte 0x3F317218


.global lbl_8066C608
lbl_8066C608:
	# ROM: 0x576468
	.4byte 0x41B8AA3B


.global lbl_8066C60C
lbl_8066C60C:
	# ROM: 0x57646C
	.4byte 0x43800000


.global lbl_8066C610
lbl_8066C610:
	# ROM: 0x576470
	.4byte 0x3F800000


.global lbl_8066C614
lbl_8066C614:
	# ROM: 0x576474
	.4byte 0x3F000000


.global lbl_8066C618
lbl_8066C618:
	# ROM: 0x576478
	.4byte 0x40400000
	.4byte 0


.global lbl_8066C620
lbl_8066C620:
	# ROM: 0x576480
	.4byte 0x47800000


.global lbl_8066C624
lbl_8066C624:
	# ROM: 0x576484
	.4byte 0


.global lbl_8066C628
lbl_8066C628:
	# ROM: 0x576488
	.4byte 0x42000000


.global lbl_8066C62C
lbl_8066C62C:
	# ROM: 0x57648C
	.4byte 0x42800000


.global lbl_8066C630
lbl_8066C630:
	# ROM: 0x576490
	.4byte 0xC2800000


.global lbl_8066C634
lbl_8066C634:
	# ROM: 0x576494
	.4byte 0x43000000


.global lbl_8066C638
lbl_8066C638:
	# ROM: 0x576498
	.4byte 0xC3000000
	.4byte 0


.global lbl_8066C640
lbl_8066C640:
	# ROM: 0x5764A0
	.4byte 0


.global lbl_8066C644
lbl_8066C644:
	# ROM: 0x5764A4
	.4byte 0x3F800000


.global lbl_8066C648
lbl_8066C648:
	# ROM: 0x5764A8
	.4byte 0x3CC90FDB
	.4byte 0


.global lbl_8066C650
lbl_8066C650:
	# ROM: 0x5764B0
	.4byte 0x47800000
	.4byte 0x47800000


.global lbl_8066C658
lbl_8066C658:
	# ROM: 0x5764B8
	.4byte 0x3F000000


.global lbl_8066C65C
lbl_8066C65C:
	# ROM: 0x5764BC
	.4byte 0


.global lbl_8066C660
lbl_8066C660:
	# ROM: 0x5764C0
	.4byte 0x3CC90FDB


.global lbl_8066C664
lbl_8066C664:
	# ROM: 0x5764C4
	.4byte 0x3F360B61


.global lbl_8066C668
lbl_8066C668:
	# ROM: 0x5764C8
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066C670
lbl_8066C670:
	# ROM: 0x5764D0
	.4byte 0
	.4byte 0


.global lbl_8066C678
lbl_8066C678:
	# ROM: 0x5764D8
	.4byte 0


.global lbl_8066C67C
lbl_8066C67C:
	# ROM: 0x5764DC
	.4byte 0x3F800000


.global lbl_8066C680
lbl_8066C680:
	# ROM: 0x5764E0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C688
lbl_8066C688:
	# ROM: 0x5764E8
	.4byte 0x47000000


.global lbl_8066C68C
lbl_8066C68C:
	# ROM: 0x5764EC
	.4byte 0x46FA0000


.global lbl_8066C690
lbl_8066C690:
	# ROM: 0x5764F0
	.4byte 0x46FA0000


.global lbl_8066C694
lbl_8066C694:
	# ROM: 0x5764F4
	.4byte 0x3FAAAAAB


.global lbl_8066C698
lbl_8066C698:
	# ROM: 0x5764F8
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066C6A0
lbl_8066C6A0:
	# ROM: 0x576500
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C6A8
lbl_8066C6A8:
	# ROM: 0x576508
	.4byte 0x477FFF00


.global lbl_8066C6AC
lbl_8066C6AC:
	# ROM: 0x57650C
	.4byte 0


.global lbl_8066C6B0
lbl_8066C6B0:
	# ROM: 0x576510
	.4byte 0x47800000


.global lbl_8066C6B4
lbl_8066C6B4:
	# ROM: 0x576514
	.4byte 0x46FFFE00


.global lbl_8066C6B8
lbl_8066C6B8:
	# ROM: 0x576518
	.4byte 0x42FE0000


.global lbl_8066C6BC
lbl_8066C6BC:
	# ROM: 0x57651C
	.4byte 0x427C0000


.global lbl_8066C6C0
lbl_8066C6C0:
	# ROM: 0x576520
	.4byte 0
	.4byte 0


.global lbl_8066C6C8
lbl_8066C6C8:
	# ROM: 0x576528
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C6D0
lbl_8066C6D0:
	# ROM: 0x576530
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C6D8
lbl_8066C6D8:
	# ROM: 0x576538
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066C6E0
lbl_8066C6E0:
	# ROM: 0x576540
	.4byte 0x3F800000


.global lbl_8066C6E4
lbl_8066C6E4:
	# ROM: 0x576544
	.4byte 0


.global lbl_8066C6E8
lbl_8066C6E8:
	# ROM: 0x576548
	.4byte 0x3F800000


.global lbl_8066C6EC
lbl_8066C6EC:
	# ROM: 0x57654C
	.4byte 0


.global lbl_8066C6F0
lbl_8066C6F0:
	# ROM: 0x576550
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C6F8
lbl_8066C6F8:
	# ROM: 0x576558
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C700
lbl_8066C700:
	# ROM: 0x576560
	.4byte 0x40000000
	.4byte 0


.global lbl_8066C708
lbl_8066C708:
	# ROM: 0x576568
	.4byte 0


.global lbl_8066C70C
lbl_8066C70C:
	# ROM: 0x57656C
	.4byte 0x3F800000


.global lbl_8066C710
lbl_8066C710:
	# ROM: 0x576570
	.4byte 0x437F0000


.global lbl_8066C714
lbl_8066C714:
	# ROM: 0x576574
	.4byte 0x40C00000


.global lbl_8066C718
lbl_8066C718:
	# ROM: 0x576578
	.4byte 0x43800000
	.4byte 0


.global lbl_8066C720
lbl_8066C720:
	# ROM: 0x576580
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C728
lbl_8066C728:
	# ROM: 0x576588
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C730
lbl_8066C730:
	# ROM: 0x576590
	.4byte 0xC2B4CCCD


.global lbl_8066C734
lbl_8066C734:
	# ROM: 0x576594
	.4byte 0x477FFF00


.global lbl_8066C738
lbl_8066C738:
	# ROM: 0x576598
	.4byte 0x41200000


.global lbl_8066C73C
lbl_8066C73C:
	# ROM: 0x57659C
	.4byte 0


.global lbl_8066C740
lbl_8066C740:
	# ROM: 0x5765A0
	.4byte 0xBD000000
	.4byte 0


.global lbl_8066C748
lbl_8066C748:
	# ROM: 0x5765A8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C750
lbl_8066C750:
	# ROM: 0x5765B0
	.4byte 0x41C00000


.global lbl_8066C754
lbl_8066C754:
	# ROM: 0x5765B4
	.4byte 0x3C000000


.global lbl_8066C758
lbl_8066C758:
	# ROM: 0x5765B8
	.4byte 0x40A00000


.global lbl_8066C75C
lbl_8066C75C:
	# ROM: 0x5765BC
	.4byte 0x42700000


.global lbl_8066C760
lbl_8066C760:
	# ROM: 0x5765C0
	.4byte 0x41200000


.global lbl_8066C764
lbl_8066C764:
	# ROM: 0x5765C4
	.4byte 0x3F000000


.global lbl_8066C768
lbl_8066C768:
	# ROM: 0x5765C8
	.4byte 0x3F800000


.global lbl_8066C76C
lbl_8066C76C:
	# ROM: 0x5765CC
	.4byte 0


.global lbl_8066C770
lbl_8066C770:
	# ROM: 0x5765D0
	.4byte 0x42480000


.global lbl_8066C774
lbl_8066C774:
	# ROM: 0x5765D4
	.4byte 0x3DCCCCCD


.global lbl_8066C778
lbl_8066C778:
	# ROM: 0x5765D8
	.4byte 0x40000000


.global lbl_8066C77C
lbl_8066C77C:
	# ROM: 0x5765DC
	.4byte 0x3F7D70A4


.global lbl_8066C780
lbl_8066C780:
	# ROM: 0x5765E0
	.4byte 0x43200000


.global lbl_8066C784
lbl_8066C784:
	# ROM: 0x5765E4
	.4byte 0x3ECCCCCD


.global lbl_8066C788
lbl_8066C788:
	# ROM: 0x5765E8
	.4byte 0x3F800000


.global lbl_8066C78C
lbl_8066C78C:
	# ROM: 0x5765EC
	.4byte 0x3D23D70A


.global lbl_8066C790
lbl_8066C790:
	# ROM: 0x5765F0
	.4byte 0x3F7D70A4


.global lbl_8066C794
lbl_8066C794:
	# ROM: 0x5765F4
	.4byte 0


.global lbl_8066C798
lbl_8066C798:
	# ROM: 0x5765F8
	.4byte 0x3CA3D70A


.global lbl_8066C79C
lbl_8066C79C:
	# ROM: 0x5765FC
	.4byte 0x40400000


.global lbl_8066C7A0
lbl_8066C7A0:
	# ROM: 0x576600
	.4byte 0x3F19999A


.global lbl_8066C7A4
lbl_8066C7A4:
	# ROM: 0x576604
	.4byte 0x3ECCCCCD


.global lbl_8066C7A8
lbl_8066C7A8:
	# ROM: 0x576608
	.4byte 0x3F800000


.global lbl_8066C7AC
lbl_8066C7AC:
	# ROM: 0x57660C
	.4byte 0


.global lbl_8066C7B0
lbl_8066C7B0:
	# ROM: 0x576610
	.4byte 0


.global lbl_8066C7B4
lbl_8066C7B4:
	# ROM: 0x576614
	.4byte 0x40C80000


.global lbl_8066C7B8
lbl_8066C7B8:
	# ROM: 0x576618
	.4byte 0x447A0000
	.4byte 0


.global lbl_8066C7C0
lbl_8066C7C0:
	# ROM: 0x576620
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C7C8
lbl_8066C7C8:
	# ROM: 0x576628
	.4byte 0x40800000


.global lbl_8066C7CC
lbl_8066C7CC:
	# ROM: 0x57662C
	.4byte 0x42000000


.global lbl_8066C7D0
lbl_8066C7D0:
	# ROM: 0x576630
	.4byte 0x42FE0000
	.4byte 0


.global lbl_8066C7D8
lbl_8066C7D8:
	# ROM: 0x576638
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C7E0
lbl_8066C7E0:
	# ROM: 0x576640
	.4byte 0x3C000000


.global lbl_8066C7E4
lbl_8066C7E4:
	# ROM: 0x576644
	.4byte 0x3EC80000


.global lbl_8066C7E8
lbl_8066C7E8:
	# ROM: 0x576648
	.4byte 0x3C800000


.global lbl_8066C7EC
lbl_8066C7EC:
	# ROM: 0x57664C
	.4byte 0x42FE0000


.global lbl_8066C7F0
lbl_8066C7F0:
	# ROM: 0x576650
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C7F8
lbl_8066C7F8:
	# ROM: 0x576658
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C800
lbl_8066C800:
	# ROM: 0x576660
	.4byte 0x3F800000


.global lbl_8066C804
lbl_8066C804:
	# ROM: 0x576664
	.4byte 0


.global lbl_8066C808
lbl_8066C808:
	# ROM: 0x576668
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C810
lbl_8066C810:
	# ROM: 0x576670
	.4byte 0x476A6000
	.4byte 0


.global lbl_8066C818
lbl_8066C818:
	# ROM: 0x576678
	.4byte 0x3F800000


.global lbl_8066C81C
lbl_8066C81C:
	# ROM: 0x57667C
	.4byte 0


.global lbl_8066C820
lbl_8066C820:
	# ROM: 0x576680
	.4byte 0x42FE0000


.global lbl_8066C824
lbl_8066C824:
	# ROM: 0x576684
	.4byte 0x3C000000


.global lbl_8066C828
lbl_8066C828:
	# ROM: 0x576688
	.4byte 0x427C0000


.global lbl_8066C82C
lbl_8066C82C:
	# ROM: 0x57668C
	.4byte 0xBF800000


.global lbl_8066C830
lbl_8066C830:
	# ROM: 0x576690
	.4byte 0x40000000
	.4byte 0


.global lbl_8066C838
lbl_8066C838:
	# ROM: 0x576698
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C840
lbl_8066C840:
	# ROM: 0x5766A0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C848
lbl_8066C848:
	# ROM: 0x5766A8
	.4byte 0x42FE0000
	.4byte 0


.global lbl_8066C850
lbl_8066C850:
	# ROM: 0x5766B0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C858
lbl_8066C858:
	# ROM: 0x5766B8
	.4byte 0x3F800000


.global lbl_8066C85C
lbl_8066C85C:
	# ROM: 0x5766BC
	.4byte 0


.global lbl_8066C860
lbl_8066C860:
	# ROM: 0x5766C0
	.4byte 0
	.4byte 0


.global lbl_8066C868
lbl_8066C868:
	# ROM: 0x5766C8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C870
lbl_8066C870:
	# ROM: 0x5766D0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C878
lbl_8066C878:
	# ROM: 0x5766D8
	.4byte 0x3F800000


.global lbl_8066C87C
lbl_8066C87C:
	# ROM: 0x5766DC
	.4byte 0x42FE0000


.global lbl_8066C880
lbl_8066C880:
	# ROM: 0x5766E0
	.4byte 0x427C0000
	.4byte 0


.global lbl_8066C888
lbl_8066C888:
	# ROM: 0x5766E8
	.4byte 0


.global lbl_8066C88C
lbl_8066C88C:
	# ROM: 0x5766EC
	.4byte 0x3F800000


.global lbl_8066C890
lbl_8066C890:
	# ROM: 0x5766F0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C898
lbl_8066C898:
	# ROM: 0x5766F8
	.4byte 0x3F800000


.global lbl_8066C89C
lbl_8066C89C:
	# ROM: 0x5766FC
	.4byte 0


.global lbl_8066C8A0
lbl_8066C8A0:
	# ROM: 0x576700
	.4byte 0xBDF5C28F


.global lbl_8066C8A4
lbl_8066C8A4:
	# ROM: 0x576704
	.4byte 0x3F6147AE


.global lbl_8066C8A8
lbl_8066C8A8:
	# ROM: 0x576708
	.4byte 0x3F000000


.global lbl_8066C8AC
lbl_8066C8AC:
	# ROM: 0x57670C
	.4byte 0x3F8F5C29


.global lbl_8066C8B0
lbl_8066C8B0:
	# ROM: 0x576710
	.4byte 0x3F59999A


.global lbl_8066C8B4
lbl_8066C8B4:
	# ROM: 0x576714
	.4byte 0x3E199998


.global lbl_8066C8B8
lbl_8066C8B8:
	# ROM: 0x576718
	.4byte 0x40000000


.global lbl_8066C8BC
lbl_8066C8BC:
	# ROM: 0x57671C
	.4byte 0x3EB33334


.global lbl_8066C8C0
lbl_8066C8C0:
	# ROM: 0x576720
	.4byte 0xBF800000


.global lbl_8066C8C4
lbl_8066C8C4:
	# ROM: 0x576724
	.4byte 0xC0400000


.global lbl_8066C8C8
lbl_8066C8C8:
	# ROM: 0x576728
	.4byte 0x47000000
	.4byte 0


.global lbl_8066C8D0
lbl_8066C8D0:
	# ROM: 0x576730
	.4byte 0x3F800000


.global lbl_8066C8D4
lbl_8066C8D4:
	# ROM: 0x576734
	.4byte 0x40000000


.global lbl_8066C8D8
lbl_8066C8D8:
	# ROM: 0x576738
	.4byte 0x3F000000


.global lbl_8066C8DC
lbl_8066C8DC:
	# ROM: 0x57673C
	.4byte 0x40C00000


.global lbl_8066C8E0
lbl_8066C8E0:
	# ROM: 0x576740
	.4byte 0xC2B4CCCD


.global lbl_8066C8E4
lbl_8066C8E4:
	# ROM: 0x576744
	.4byte 0x41200000


.global lbl_8066C8E8
lbl_8066C8E8:
	# ROM: 0x576748
	.4byte 0xBF800000


.global lbl_8066C8EC
lbl_8066C8EC:
	# ROM: 0x57674C
	.4byte 0x43800000


.global lbl_8066C8F0
lbl_8066C8F0:
	# ROM: 0x576750
	.4byte 0


.global lbl_8066C8F4
lbl_8066C8F4:
	# ROM: 0x576754
	.4byte 0x3E0ADE7F


.global lbl_8066C8F8
lbl_8066C8F8:
	# ROM: 0x576758
	.4byte 0x3F666666


.global lbl_8066C8FC
lbl_8066C8FC:
	# ROM: 0x57675C
	.4byte 0x3D088889


.global lbl_8066C900
lbl_8066C900:
	# ROM: 0x576760
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066C908
lbl_8066C908:
	# ROM: 0x576768
	.4byte 0x3F800000


.global lbl_8066C90C
lbl_8066C90C:
	# ROM: 0x57676C
	.4byte 0


.global lbl_8066C910
lbl_8066C910:
	# ROM: 0x576770
	.4byte 0x427C0000


.global lbl_8066C914
lbl_8066C914:
	# ROM: 0x576774
	.4byte 0x3C800000


.global lbl_8066C918
lbl_8066C918:
	# ROM: 0x576778
	.4byte 0x42FE0000
	.4byte 0


.global lbl_8066C920
lbl_8066C920:
	# ROM: 0x576780
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C928
lbl_8066C928:
	# ROM: 0x576788
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C930
lbl_8066C930:
	# ROM: 0x576790
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C938
lbl_8066C938:
	# ROM: 0x576798
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C940
lbl_8066C940:
	# ROM: 0x5767A0
	.4byte 0


.global lbl_8066C944
lbl_8066C944:
	# ROM: 0x5767A4
	.4byte 0x3F800000


.global lbl_8066C948
lbl_8066C948:
	# ROM: 0x5767A8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C950
lbl_8066C950:
	# ROM: 0x5767B0
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066C958
lbl_8066C958:
	# ROM: 0x5767B8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C960
lbl_8066C960:
	# ROM: 0x5767C0
	.4byte 0x7F7FFFFF


.global lbl_8066C964
lbl_8066C964:
	# ROM: 0x5767C4
	.4byte 0


.global lbl_8066C968
lbl_8066C968:
	# ROM: 0x5767C8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066C970
lbl_8066C970:
	# ROM: 0x5767D0
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066C978
lbl_8066C978:
	# ROM: 0x5767D8
	.4byte 0x3F000000


.global lbl_8066C97C
lbl_8066C97C:
	# ROM: 0x5767DC
	.4byte 0x4222F983


.global lbl_8066C980
lbl_8066C980:
	# ROM: 0x5767E0
	.4byte 0x3F800000


.global lbl_8066C984
lbl_8066C984:
	# ROM: 0x5767E4
	.4byte 0xBF800000


.global lbl_8066C988
lbl_8066C988:
	# ROM: 0x5767E8
	.4byte 0x3CC90FDB


.global lbl_8066C98C
lbl_8066C98C:
	# ROM: 0x5767EC
	.4byte 0


.global lbl_8066C990
lbl_8066C990:
	# ROM: 0x5767F0
	.4byte 0x4222F983


.global lbl_8066C994
lbl_8066C994:
	# ROM: 0x5767F4
	.4byte 0xBF800000


.global lbl_8066C998
lbl_8066C998:
	# ROM: 0x5767F8
	.4byte 0x3F800000


.global lbl_8066C99C
lbl_8066C99C:
	# ROM: 0x5767FC
	.4byte 0x3CC90FDB


.global lbl_8066C9A0
lbl_8066C9A0:
	# ROM: 0x576800
	.4byte 0
	.4byte 0
	.asciz "Mem1"
	.balign 4
	.asciz "Mem2"
	.balign 4


.global lbl_8066C9B8
lbl_8066C9B8:
	# ROM: 0x576818
	.4byte 0x3FF00000
	.4byte 0


.global lbl_8066C9C0
lbl_8066C9C0:
	# ROM: 0x576820
	.4byte 0


.global lbl_8066C9C4
lbl_8066C9C4:
	# ROM: 0x576824
	.4byte 0x42C80000


.global lbl_8066C9C8
lbl_8066C9C8:
	# ROM: 0x576828
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C9D0
lbl_8066C9D0:
	# ROM: 0x576830
	.4byte 0x2F800000
	.4byte 0


.global lbl_8066C9D8
lbl_8066C9D8:
	# ROM: 0x576838
	.4byte 0x43300000
	.4byte 0


.global lbl_8066C9E0
lbl_8066C9E0:
	# ROM: 0x576840
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066C9E8
lbl_8066C9E8:
	# ROM: 0x576848
	.4byte 0


.global lbl_8066C9EC
lbl_8066C9EC:
	# ROM: 0x57684C
	.4byte 0x3F800000


.global lbl_8066C9F0
lbl_8066C9F0:
	# ROM: 0x576850
	.4byte 0


.global lbl_8066C9F4
lbl_8066C9F4:
	# ROM: 0x576854
	.4byte 0x3F800000


.global lbl_8066C9F8
lbl_8066C9F8:
	# ROM: 0x576858
	.4byte 0x40490FDB


.global lbl_8066C9FC
lbl_8066C9FC:
	# ROM: 0x57685C
	.4byte 0x40C90FDB


.global lbl_8066CA00
lbl_8066CA00:
	# ROM: 0x576860
	.4byte 0x3FC90FDB


.global lbl_8066CA04
lbl_8066CA04:
	# ROM: 0x576864
	.4byte 0x3F490FDB


.global lbl_8066CA08
lbl_8066CA08:
	# ROM: 0x576868
	.4byte 0x358637BD


.global lbl_8066CA0C
lbl_8066CA0C:
	# ROM: 0x57686C
	.4byte 0x42652EE0


.global lbl_8066CA10
lbl_8066CA10:
	# ROM: 0x576870
	.4byte 0x3C8EFA35


.global lbl_8066CA14
lbl_8066CA14:
	# ROM: 0x576874
	.4byte 0x56B5E621


.global lbl_8066CA18
lbl_8066CA18:
	# ROM: 0x576878
	.4byte 0xD6B5E621
	.4byte 0


.global lbl_8066CA20
lbl_8066CA20:
	# ROM: 0x576880
	.4byte 0x3F800000


.global lbl_8066CA24
lbl_8066CA24:
	# ROM: 0x576884
	.4byte 0x3F000000


.global lbl_8066CA28
lbl_8066CA28:
	# ROM: 0x576888
	.4byte 0
	.4byte 0


.global lbl_8066CA30
lbl_8066CA30:
	# ROM: 0x576890
	.4byte 0x3F800000


.global lbl_8066CA34
lbl_8066CA34:
	# ROM: 0x576894
	.4byte 0x3F000000


.global lbl_8066CA38
lbl_8066CA38:
	# ROM: 0x576898
	.4byte 0
	.4byte 0


.global lbl_8066CA40
lbl_8066CA40:
	# ROM: 0x5768A0
	.4byte 0


.global lbl_8066CA44
lbl_8066CA44:
	# ROM: 0x5768A4
	.4byte 0x3F000000


.global lbl_8066CA48
lbl_8066CA48:
	# ROM: 0x5768A8
	.4byte 0x3F800000


.global lbl_8066CA4C
lbl_8066CA4C:
	# ROM: 0x5768AC
	.4byte 0xBF800000


.global lbl_8066CA50
lbl_8066CA50:
	# ROM: 0x5768B0
	.4byte 0x3CC90FDB
	.4byte 0


.global lbl_8066CA58
lbl_8066CA58:
	# ROM: 0x5768B8
	.4byte 0


.global lbl_8066CA5C
lbl_8066CA5C:
	# ROM: 0x5768BC
	.4byte 0x3F800000


.global lbl_8066CA60
lbl_8066CA60:
	# ROM: 0x5768C0
	.4byte 0
	.4byte 0


.global lbl_8066CA68
lbl_8066CA68:
	# ROM: 0x5768C8
	.4byte 0x4222F983


.global lbl_8066CA6C
lbl_8066CA6C:
	# ROM: 0x5768CC
	.4byte 0


.global lbl_8066CA70
lbl_8066CA70:
	# ROM: 0x5768D0
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066CA78
lbl_8066CA78:
	# ROM: 0x5768D8
	.4byte 0x3F19999A
	.4byte 0


.global lbl_8066CA80
lbl_8066CA80:
	# ROM: 0x5768E0
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "????"
	.balign 4
	.4byte 0x25660000
	.4byte 0x25640000
	.4byte 0x25780000
	.4byte 0x25763300
	.4byte 0x25766100
	.4byte 0x25763400
	.4byte 0x25693300
	.4byte 0x25693400
	.asciz "%rect"
	.balign 4
	.4byte 0x25730000
	.4byte 0


.global lbl_8066CAC0
lbl_8066CAC0:
	# ROM: 0x576920
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "CToken"
	.balign 4


.global lbl_8066CAD0
lbl_8066CAD0:
	# ROM: 0x576930
	.4byte 0x3F800000


.global lbl_8066CAD4
lbl_8066CAD4:
	# ROM: 0x576934
	.4byte 0x3F19999A
	.asciz "CView"
	.balign 4


.global lbl_8066CAE0
lbl_8066CAE0:
	# ROM: 0x576940
	.4byte 0x3ECCCCCD


.global lbl_8066CAE4
lbl_8066CAE4:
	# ROM: 0x576944
	.4byte 0x3F000000


.global lbl_8066CAE8
lbl_8066CAE8:
	# ROM: 0x576948
	.4byte 0


.global lbl_8066CAEC
lbl_8066CAEC:
	# ROM: 0x57694C
	.4byte 0x3F000000


.global lbl_8066CAF0
lbl_8066CAF0:
	# ROM: 0x576950
	.4byte 0x3F800000


.global lbl_8066CAF4
lbl_8066CAF4:
	# ROM: 0x576954
	.4byte 0x3F4CCCCD


.global lbl_8066CAF8
lbl_8066CAF8:
	# ROM: 0x576958
	.4byte 0x3ECCCCCD


.global lbl_8066CAFC
lbl_8066CAFC:
	# ROM: 0x57695C
	.4byte 0x3F19999A


.global lbl_8066CB00
lbl_8066CB00:
	# ROM: 0x576960
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066CB08
lbl_8066CB08:
	# ROM: 0x576968
	.4byte 0x3DEA72EB


.global lbl_8066CB0C
lbl_8066CB0C:
	# ROM: 0x57696C
	.4byte 0x3E990AFE


.global lbl_8066CB10
lbl_8066CB10:
	# ROM: 0x576970
	.4byte 0x3F162C23


.global lbl_8066CB14
lbl_8066CB14:
	# ROM: 0x576974
	.4byte 0x3F333333


.global lbl_8066CB18
lbl_8066CB18:
	# ROM: 0x576978
	.4byte 0x3F99999A
	.4byte 0


.global lbl_8066CB20
lbl_8066CB20:
	# ROM: 0x576980
	.4byte 0x3E19999A


.global lbl_8066CB24
lbl_8066CB24:
	# ROM: 0x576984
	.4byte 0


.global lbl_8066CB28
lbl_8066CB28:
	# ROM: 0x576988
	.4byte 0x42600000


.global lbl_8066CB2C
lbl_8066CB2C:
	# ROM: 0x57698C
	.4byte 0x43160000


.global lbl_8066CB30
lbl_8066CB30:
	# ROM: 0x576990
	.4byte 0x43A00000


.global lbl_8066CB34
lbl_8066CB34:
	# ROM: 0x576994
	.4byte 0x43520000


.global lbl_8066CB38
lbl_8066CB38:
	# ROM: 0x576998
	.4byte 0x43300000
	.4byte 0


.global lbl_8066CB40
lbl_8066CB40:
	# ROM: 0x5769A0
	.4byte 0x3FA11111
	.4byte 0x11111111


.global lbl_8066CB48
lbl_8066CB48:
	# ROM: 0x5769A8
	.4byte 0x46823555
	.4byte 0


.global lbl_8066CB50
lbl_8066CB50:
	# ROM: 0x5769B0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066CB58
lbl_8066CB58:
	# ROM: 0x5769B8
	.4byte 0
	.4byte 0


.global lbl_8066CB60
lbl_8066CB60:
	# ROM: 0x5769C0
	.4byte 0x3D088889


.global lbl_8066CB64
lbl_8066CB64:
	# ROM: 0x5769C4
	.4byte 0x3FAAAAAB


.global lbl_8066CB68
lbl_8066CB68:
	# ROM: 0x5769C8
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066CB70
lbl_8066CB70:
	# ROM: 0x5769D0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066CB78
lbl_8066CB78:
	# ROM: 0x5769D8
	.4byte 0


.global lbl_8066CB7C
lbl_8066CB7C:
	# ROM: 0x5769DC
	.4byte 0x437F0000


.global lbl_8066CB80
lbl_8066CB80:
	# ROM: 0x5769E0
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066CB88
lbl_8066CB88:
	# ROM: 0x5769E8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066CB90
lbl_8066CB90:
	# ROM: 0x5769F0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066CB98
lbl_8066CB98:
	# ROM: 0x5769F8
	.4byte 0x3F726E98


.global lbl_8066CB9C
lbl_8066CB9C:
	# ROM: 0x5769FC
	.4byte 0x40000000


.global lbl_8066CBA0
lbl_8066CBA0:
	# ROM: 0x576A00
	.4byte 0x3DCCCCCD


.global lbl_8066CBA4
lbl_8066CBA4:
	# ROM: 0x576A04
	.asciz "Dz"
	.byte 0x00
	.asciz "CDevice"

.global lbl_8066CBB0
lbl_8066CBB0:
	.4byte 0
	.4byte 0


.global lbl_8066CBB8
lbl_8066CBB8:
	# ROM: 0x576A18
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066CBC0
lbl_8066CBC0:
	# ROM: 0x576A20
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066CBC8
lbl_8066CBC8:
	# ROM: 0x576A28
	.4byte 0x3F800000


.global lbl_8066CBCC
lbl_8066CBCC:
	# ROM: 0x576A2C
	.4byte 0


.global lbl_8066CBD0
lbl_8066CBD0:
	# ROM: 0x576A30
	.4byte 0xBF800000
	.4byte 0


.global lbl_8066CBD8
lbl_8066CBD8:
	# ROM: 0x576A38
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066CBE0
lbl_8066CBE0:
	# ROM: 0x576A40
	.4byte 0x43300000
	.4byte 0
	.asciz "GPCost"
	.balign 4


.global lbl_8066CBF0
lbl_8066CBF0:
	# ROM: 0x576A50
	.4byte 0


.global lbl_8066CBF4
lbl_8066CBF4:
	# ROM: 0x576A54
	.4byte 0x3F800000


.global lbl_8066CBF8
lbl_8066CBF8:
	# ROM: 0x576A58
	.4byte 0x40000000
	.4byte 0


.global lbl_8066CC00
lbl_8066CC00:
	# ROM: 0x576A60
	.4byte 0x43300000
	.4byte 0


.global lbl_8066CC08
lbl_8066CC08:
	# ROM: 0x576A68
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "Desktop"


.global lbl_8066CC18
lbl_8066CC18:
	# ROM: 0x576A78
	.4byte 0x3F000000


.global lbl_8066CC1C
lbl_8066CC1C:
	# ROM: 0x576A7C
	.4byte 0x3F800000


.global lbl_8066CC20
lbl_8066CC20:
	# ROM: 0x576A80
	.4byte 0
	.4byte 0


.global lbl_8066CC28
lbl_8066CC28:
	# ROM: 0x576A88
	.4byte 0x3F800000


.global lbl_8066CC2C
lbl_8066CC2C:
	# ROM: 0x576A8C
	.4byte 0


.global lbl_8066CC30
lbl_8066CC30:
	# ROM: 0x576A90
	.4byte 0x437F0000


.global lbl_8066CC34
lbl_8066CC34:
	# ROM: 0x576A94
	.4byte 0x4222F983


.global lbl_8066CC38
lbl_8066CC38:
	# ROM: 0x576A98
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066CC40
lbl_8066CC40:
	# ROM: 0x576AA0
	.4byte 0


.global lbl_8066CC44
lbl_8066CC44:
	# ROM: 0x576AA4
	.4byte 0x3F4CCCCD


.global lbl_8066CC48
lbl_8066CC48:
	# ROM: 0x576AA8
	.4byte 0x3F800000


.global lbl_8066CC4C
lbl_8066CC4C:
	# ROM: 0x576AAC
	.4byte 0x3F000000


.global lbl_8066CC50
lbl_8066CC50:
	# ROM: 0x576AB0
	.4byte 0x3FA2067B


.global lbl_8066CC54
lbl_8066CC54:
	# ROM: 0x576AB4
	.4byte 0x40000000


.global lbl_8066CC58
lbl_8066CC58:
	# ROM: 0x576AB8
	.4byte 0xCB800000


.global lbl_8066CC5C
lbl_8066CC5C:
	# ROM: 0x576ABC
	.4byte 0x3F819EC9


.global lbl_8066CC60
lbl_8066CC60:
	# ROM: 0x576AC0
	.4byte 0xBF800000


.global lbl_8066CC64
lbl_8066CC64:
	# ROM: 0x576AC4
	.4byte 0x437F0000


.global lbl_8066CC68
lbl_8066CC68:
	# ROM: 0x576AC8
	.4byte 0x41E00000
	.4byte 0


.global lbl_8066CC70
lbl_8066CC70:
	# ROM: 0x576AD0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066CC78
lbl_8066CC78:
	# ROM: 0x576AD8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066CC80
lbl_8066CC80:
	# ROM: 0x576AE0
	.4byte 0x3D23D70A
	.4byte 0
	.asciz "CLib"
	.balign 4
	.asciz "CLibCri"


.global lbl_8066CC98
lbl_8066CC98:
	# ROM: 0x576AF8
	.4byte 0xFF910000


.global lbl_8066CC9C
lbl_8066CC9C:
	# ROM: 0x576AFC
	.4byte 0xFF760044


.global lbl_8066CCA0
lbl_8066CCA0:
	# ROM: 0x576B00
	.4byte 0x6600FF32


.global lbl_8066CCA4
lbl_8066CCA4:
	# ROM: 0x576B04
	.4byte 0x94009494


.global lbl_8066CCA8
lbl_8066CCA8:
	# ROM: 0x576B08
	.4byte 0xCB0005CF


.global lbl_8066CCAC
lbl_8066CCAC:
	# ROM: 0x576B0C
	.4byte 0x00FF0000


.global lbl_8066CCB0
lbl_8066CCB0:
	# ROM: 0x576B10
	.4byte 0


.global lbl_8066CCB4
lbl_8066CCB4:
	# ROM: 0x576B14
	.4byte 0x3F800000


.global lbl_8066CCB8
lbl_8066CCB8:
	# ROM: 0x576B18
	.4byte 0x426FC28F
	.4byte 0
	.asciz ".ahx"
	.balign 4


.global lbl_8066CCC8
lbl_8066CCC8:
	# ROM: 0x576B28
	.4byte 0x3F800000


.global lbl_8066CCCC
lbl_8066CCCC:
	# ROM: 0x576B2C
	.4byte 0


.global lbl_8066CCD0
lbl_8066CCD0:
	# ROM: 0x576B30
	.4byte 0x42C80000
	.4byte 0


.global lbl_8066CCD8
lbl_8066CCD8:
	# ROM: 0x576B38
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066CCE0
lbl_8066CCE0:
	# ROM: 0x576B40
	.asciz "Ap"
	.4byte 0
	.byte 0x00
	.asciz "CLibG3d"


.global lbl_8066CCF0
lbl_8066CCF0:
	# ROM: 0x576B50
	.4byte 0


.global lbl_8066CCF4
lbl_8066CCF4:
	# ROM: 0x576B54
	.4byte 0x3FAF286C


.global lbl_8066CCF8
lbl_8066CCF8:
	# ROM: 0x576B58
	.4byte 0x3F800000


.global lbl_8066CCFC
lbl_8066CCFC:
	# ROM: 0x576B5C
	.4byte 0x3F99999A


.global lbl_8066CD00
lbl_8066CD00:
	# ROM: 0x576B60
	.4byte 0x43300000
	.4byte 0


.global lbl_8066CD08
lbl_8066CD08:
	# ROM: 0x576B68
	.4byte 0x3E800000


.global lbl_8066CD0C
lbl_8066CD0C:
	# ROM: 0x576B6C
	.4byte 0x3FA00000


.global lbl_8066CD10
lbl_8066CD10:
	# ROM: 0x576B70
	.4byte 0x40800000


.global lbl_8066CD14
lbl_8066CD14:
	# ROM: 0x576B74
	.4byte 0x442B8000


.global lbl_8066CD18
lbl_8066CD18:
	# ROM: 0x576B78
	.4byte 0x44200000
	.4byte 0


.global lbl_8066CD20
lbl_8066CD20:
	# ROM: 0x576B80
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "CLibHbm"


.global lbl_8066CD30
lbl_8066CD30:
	# ROM: 0x576B90
	.4byte 0x3D100000


.global lbl_8066CD34
lbl_8066CD34:
	# ROM: 0x576B94
	.4byte 0x3F350481


.global lbl_8066CD38
lbl_8066CD38:
	# ROM: 0x576B98
	.4byte 0


.global lbl_8066CD3C
lbl_8066CD3C:
	# ROM: 0x576B9C
	.4byte 0x3F800000


.global lbl_8066CD40
lbl_8066CD40:
	# ROM: 0x576BA0
	.4byte 0xBF800000


.global lbl_8066CD44
lbl_8066CD44:
	# ROM: 0x576BA4
	.4byte 0x3D800000


.global lbl_8066CD48
lbl_8066CD48:
	# ROM: 0x576BA8
	.4byte 0x3F19999A


.global lbl_8066CD4C
lbl_8066CD4C:
	# ROM: 0x576BAC
	.4byte 0x44278000


.global lbl_8066CD50
lbl_8066CD50:
	# ROM: 0x576BB0
	.4byte 0x43E40000


.global lbl_8066CD54
lbl_8066CD54:
	# ROM: 0x576BB4
	.4byte 0x43640000


.global lbl_8066CD58
lbl_8066CD58:
	# ROM: 0x576BB8
	.4byte 0x43980000


.global lbl_8066CD5C
lbl_8066CD5C:
	# ROM: 0x576BBC
	.4byte 0x43FA0000


.global lbl_8066CD60
lbl_8066CD60:
	# ROM: 0x576BC0
	.4byte 0x442B8000


.global lbl_8066CD64
lbl_8066CD64:
	# ROM: 0x576BC4
	.4byte 0x43D00000


.global lbl_8066CD68
lbl_8066CD68:
	# ROM: 0x576BC8
	.4byte 0x43300000
	.4byte 0
	.asciz "CLibVM"
	.balign 4


.global lbl_8066CD78
lbl_8066CD78:
	# ROM: 0x576BD8
	.4byte 0x3F800000


.global lbl_8066CD7C
lbl_8066CD7C:
	# ROM: 0x576BDC
	.4byte 0


.global lbl_8066CD80
lbl_8066CD80:
	# ROM: 0x576BE0
	.4byte 0x3F800000


.global lbl_8066CD84
lbl_8066CD84:
	# ROM: 0x576BE4
	.4byte 0


.global lbl_8066CD88
lbl_8066CD88:
	# ROM: 0x576BE8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066CD90
lbl_8066CD90:
	# ROM: 0x576BF0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066CD98
lbl_8066CD98:
	# ROM: 0x576BF8
	.4byte 0x40000000


.global lbl_8066CD9C
lbl_8066CD9C:
	# ROM: 0x576BFC
	.4byte 0x40400000


.global lbl_8066CDA0
lbl_8066CDA0:
	# ROM: 0x576C00
	.4byte 0xC0000000


.global lbl_8066CDA4
lbl_8066CDA4:
	# ROM: 0x576C04
	.4byte 0x3F000000


.global lbl_8066CDA8
lbl_8066CDA8:
	# ROM: 0x576C08
	.4byte 0x4222F983
	.4byte 0


.global lbl_8066CDB0
lbl_8066CDB0:
	# ROM: 0x576C10
	.4byte 0x000000FE


.global lbl_8066CDB4
lbl_8066CDB4:
	# ROM: 0x576C14
	.4byte 0


.global lbl_8066CDB8
lbl_8066CDB8:
	# ROM: 0x576C18
	.4byte 0x3F800000


.global lbl_8066CDBC
lbl_8066CDBC:
	# ROM: 0x576C1C
	.4byte 0x49742400


.global lbl_8066CDC0
lbl_8066CDC0:
	# ROM: 0x576C20
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066CDC8
lbl_8066CDC8:
	# ROM: 0x576C28
	.4byte 0
	.4byte 0


.global lbl_8066CDD0
lbl_8066CDD0:
	# ROM: 0x576C30
	.4byte 0
	.4byte 0


.global lbl_8066CDD8
lbl_8066CDD8:
	# ROM: 0x576C38
	.4byte 0xBF800000


.global lbl_8066CDDC
lbl_8066CDDC:
	# ROM: 0x576C3C
	.4byte 0x461C4000


.global lbl_8066CDE0
lbl_8066CDE0:
	# ROM: 0x576C40
	.4byte 0


.global lbl_8066CDE4
lbl_8066CDE4:
	# ROM: 0x576C44
	.4byte 0x3F800000


.global lbl_8066CDE8
lbl_8066CDE8:
	# ROM: 0x576C48
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066CDF0
lbl_8066CDF0:
	# ROM: 0x576C50
	.4byte 0x3B808081
	.4byte 0


.global lbl_8066CDF8
lbl_8066CDF8:
	# ROM: 0x576C58
	.4byte 0x43300000
	.4byte 0


.global lbl_8066CE00
lbl_8066CE00:
	# ROM: 0x576C60
	.4byte 0x3F000000


.global lbl_8066CE04
lbl_8066CE04:
	# ROM: 0x576C64
	.4byte 0xBF000000


.global lbl_8066CE08
lbl_8066CE08:
	# ROM: 0x576C68
	.4byte 0x3F800000


.global lbl_8066CE0C
lbl_8066CE0C:
	# ROM: 0x576C6C
	.4byte 0


.global lbl_8066CE10
lbl_8066CE10:
	# ROM: 0x576C70
	.4byte 0x3EAAAAAB
	.4byte 0


.global lbl_8066CE18
lbl_8066CE18:
	# ROM: 0x576C78
	.4byte 0


.global lbl_8066CE1C
lbl_8066CE1C:
	# ROM: 0x576C7C
	.4byte 0x3F800000


.global lbl_8066CE20
lbl_8066CE20:
	# ROM: 0x576C80
	.4byte 0x3C23D70A


.global lbl_8066CE24
lbl_8066CE24:
	# ROM: 0x576C84
	.4byte 0x3F000000


.global lbl_8066CE28
lbl_8066CE28:
	# ROM: 0x576C88
	.4byte 0x3E99999A


.global lbl_8066CE2C
lbl_8066CE2C:
	# ROM: 0x576C8C
	.4byte 0x3DCCCCCD


.global lbl_8066CE30
lbl_8066CE30:
	# ROM: 0x576C90
	.4byte 0x3F19999A


.global lbl_8066CE34
lbl_8066CE34:
	# ROM: 0x576C94
	.4byte 0x41200000


.global lbl_8066CE38
lbl_8066CE38:
	# ROM: 0x576C98
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066CE40
lbl_8066CE40:
	# ROM: 0x576CA0
	.4byte 0x3FC00000


.global lbl_8066CE44
lbl_8066CE44:
	# ROM: 0x576CA4
	.4byte 0x447A0000


.global lbl_8066CE48
lbl_8066CE48:
	# ROM: 0x576CA8
	.4byte 0x41A00000


.global lbl_8066CE4C
lbl_8066CE4C:
	# ROM: 0x576CAC
	.4byte 0x3ECCCCCD


.global lbl_8066CE50
lbl_8066CE50:
	# ROM: 0x576CB0
	.4byte 0x3DE147AE


.global lbl_8066CE54
lbl_8066CE54:
	# ROM: 0x576CB4
	.4byte 0x3B03126F


.global lbl_8066CE58
lbl_8066CE58:
	# ROM: 0x576CB8
	.4byte 0x3D088889


.global lbl_8066CE5C
lbl_8066CE5C:
	# ROM: 0x576CBC
	.4byte 0x38D1B717


.global lbl_8066CE60
lbl_8066CE60:
	# ROM: 0x576CC0
	.4byte 0x3CA3D70A


.global lbl_8066CE64
lbl_8066CE64:
	# ROM: 0x576CC4
	.4byte 0x3CF5C28F


.global lbl_8066CE68
lbl_8066CE68:
	# ROM: 0x576CC8
	.4byte 0x461C4000


.global lbl_8066CE6C
lbl_8066CE6C:
	# ROM: 0x576CCC
	.4byte 0x3E051EB8


.global lbl_8066CE70
lbl_8066CE70:
	# ROM: 0x576CD0
	.4byte 0xBE99999A


.global lbl_8066CE74
lbl_8066CE74:
	# ROM: 0x576CD4
	.4byte 0xBF7FF972


.global lbl_8066CE78
lbl_8066CE78:
	# ROM: 0x576CD8
	.4byte 0x40000000


.global lbl_8066CE7C
lbl_8066CE7C:
	# ROM: 0x576CDC
	.4byte 0xBF800000


.global lbl_8066CE80
lbl_8066CE80:
	# ROM: 0x576CE0
	.4byte 0


.global lbl_8066CE84
lbl_8066CE84:
	# ROM: 0x576CE4
	.4byte 0x3A83126F


.global lbl_8066CE88
lbl_8066CE88:
	# ROM: 0x576CE8
	.4byte 0x3FF33333
	.4byte 0x40000000


.global lbl_8066CE90
lbl_8066CE90:
	# ROM: 0x576CF0
	.4byte 0x3F70624D
	.4byte 0xD2F1A9FC


.global lbl_8066CE98
lbl_8066CE98:
	# ROM: 0x576CF8
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066CEA0
lbl_8066CEA0:
	# ROM: 0x576D00
	.4byte 0x43300000
	.4byte 0


.global lbl_8066CEA8
lbl_8066CEA8:
	# ROM: 0x576D08
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066CEB0
lbl_8066CEB0:
	# ROM: 0x576D10
	.4byte 0xBF800000


.global lbl_8066CEB4
lbl_8066CEB4:
	# ROM: 0x576D14
	.4byte 0x3F000000


.global lbl_8066CEB8
lbl_8066CEB8:
	# ROM: 0x576D18
	.4byte 0x4222F983


.global lbl_8066CEBC
lbl_8066CEBC:
	# ROM: 0x576D1C
	.4byte 0x40000000


.global lbl_8066CEC0
lbl_8066CEC0:
	# ROM: 0x576D20
	.4byte 0x42B40000


.global lbl_8066CEC4
lbl_8066CEC4:
	# ROM: 0x576D24
	.4byte 0x3CC90FDB


.global lbl_8066CEC8
lbl_8066CEC8:
	# ROM: 0x576D28
	.4byte 0x42C80000


.global lbl_8066CECC
lbl_8066CECC:
	# ROM: 0x576D2C
	.4byte 0x437F0000


.global lbl_8066CED0
lbl_8066CED0:
	# ROM: 0x576D30
	.4byte 0x3DCCCCCD


.global lbl_8066CED4
lbl_8066CED4:
	# ROM: 0x576D34
	.4byte 0x43B40000


.global lbl_8066CED8
lbl_8066CED8:
	# ROM: 0x576D38
	.4byte 0x3F800000


.global lbl_8066CEDC
lbl_8066CEDC:
	# ROM: 0x576D3C
	.4byte 0x000000FF


.global lbl_8066CEE0
lbl_8066CEE0:
	# ROM: 0x576D40
	.4byte 0x437F0000
	.4byte 0


.global lbl_8066CEE8
lbl_8066CEE8:
	# ROM: 0x576D48
	.4byte 0x00000020


.global lbl_8066CEEC
lbl_8066CEEC:
	# ROM: 0x576D4C
	.4byte 0x0000001F


.global lbl_8066CEF0
lbl_8066CEF0:
	# ROM: 0x576D50
	.4byte 0x3D000000


.global lbl_8066CEF4
lbl_8066CEF4:
	# ROM: 0x576D54
	.4byte 0x41000000


.global lbl_8066CEF8
lbl_8066CEF8:
	# ROM: 0x576D58
	.4byte 0x3E800000


.global lbl_8066CEFC
lbl_8066CEFC:
	# ROM: 0x576D5C
	.4byte 0x40000000


.global lbl_8066CF00
lbl_8066CF00:
	# ROM: 0x576D60
	.4byte 0x437F0000


.global lbl_8066CF04
lbl_8066CF04:
	# ROM: 0x576D64
	.4byte 0


.global lbl_8066CF08
lbl_8066CF08:
	# ROM: 0x576D68
	.4byte 0x3C23D70A


.global lbl_8066CF0C
lbl_8066CF0C:
	# ROM: 0x576D6C
	.4byte 0x3F000000


.global lbl_8066CF10
lbl_8066CF10:
	# ROM: 0x576D70
	.4byte 0x3F800000


.global lbl_8066CF14
lbl_8066CF14:
	# ROM: 0x576D74
	.4byte 0xC7C35000


.global lbl_8066CF18
lbl_8066CF18:
	# ROM: 0x576D78
	.4byte 0x3E99999A


.global lbl_8066CF1C
lbl_8066CF1C:
	# ROM: 0x576D7C
	.4byte 0x3DCCCCCD


.global lbl_8066CF20
lbl_8066CF20:
	# ROM: 0x576D80
	.4byte 0x3F19999A


.global lbl_8066CF24
lbl_8066CF24:
	# ROM: 0x576D84
	.4byte 0x41200000


.global lbl_8066CF28
lbl_8066CF28:
	# ROM: 0x576D88
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066CF30
lbl_8066CF30:
	# ROM: 0x576D90
	.4byte 0x3FC00000


.global lbl_8066CF34
lbl_8066CF34:
	# ROM: 0x576D94
	.4byte 0x38D1B717


.global lbl_8066CF38
lbl_8066CF38:
	# ROM: 0x576D98
	.4byte 0x3ECCCCCD


.global lbl_8066CF3C
lbl_8066CF3C:
	# ROM: 0x576D9C
	.4byte 0x461C4000


.global lbl_8066CF40
lbl_8066CF40:
	# ROM: 0x576DA0
	.4byte 0x3E051EB8


.global lbl_8066CF44
lbl_8066CF44:
	# ROM: 0x576DA4
	.4byte 0x3D088889


.global lbl_8066CF48
lbl_8066CF48:
	# ROM: 0x576DA8
	.4byte 0x3CA3D70A


.global lbl_8066CF4C
lbl_8066CF4C:
	# ROM: 0x576DAC
	.4byte 0xBE99999A


.global lbl_8066CF50
lbl_8066CF50:
	# ROM: 0x576DB0
	.4byte 0xBF7FF972


.global lbl_8066CF54
lbl_8066CF54:
	# ROM: 0x576DB4
	.4byte 0x447A0000


.global lbl_8066CF58
lbl_8066CF58:
	# ROM: 0x576DB8
	.4byte 0x41A00000
	.4byte 0


.global lbl_8066CF60
lbl_8066CF60:
	# ROM: 0x576DC0
	.4byte 0xFFFFFFFF


.global lbl_8066CF64
lbl_8066CF64:
	# ROM: 0x576DC4
	.4byte 0


.global lbl_8066CF68
lbl_8066CF68:
	# ROM: 0x576DC8
	.4byte 0x000000FF


.global lbl_8066CF6C
lbl_8066CF6C:
	# ROM: 0x576DCC
	.4byte 0xBF800000


.global lbl_8066CF70
lbl_8066CF70:
	# ROM: 0x576DD0
	.4byte 0x3F800000


.global lbl_8066CF74
lbl_8066CF74:
	# ROM: 0x576DD4
	.4byte 0x3F000000


.global lbl_8066CF78
lbl_8066CF78:
	# ROM: 0x576DD8
	.4byte 0x3CC90FDB


.global lbl_8066CF7C
lbl_8066CF7C:
	# ROM: 0x576DDC
	.4byte 0x4222F983


.global lbl_8066CF80
lbl_8066CF80:
	# ROM: 0x576DE0
	.4byte 0x40000000
	.4byte 0


.global lbl_8066CF88
lbl_8066CF88:
	# ROM: 0x576DE8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066CF90
lbl_8066CF90:
	# ROM: 0x576DF0
	.4byte 0x000000FF


.global lbl_8066CF94
lbl_8066CF94:
	# ROM: 0x576DF4
	.4byte 0x000000FF


.global lbl_8066CF98
lbl_8066CF98:
	# ROM: 0x576DF8
	.4byte 0x437F0000
	.4byte 0


.global lbl_8066CFA0
lbl_8066CFA0:
	# ROM: 0x576E00
	.4byte 0x47C35000


.global lbl_8066CFA4
lbl_8066CFA4:
	# ROM: 0x576E04
	.4byte 0xC7C35000


.global lbl_8066CFA8
lbl_8066CFA8:
	# ROM: 0x576E08
	.4byte 0


.global lbl_8066CFAC
lbl_8066CFAC:
	# ROM: 0x576E0C
	.4byte 0xBA83126F


.global lbl_8066CFB0
lbl_8066CFB0:
	# ROM: 0x576E10
	.4byte 0x3F800000


.global lbl_8066CFB4
lbl_8066CFB4:
	# ROM: 0x576E14
	.4byte 0x3A83126F


.global lbl_8066CFB8
lbl_8066CFB8:
	# ROM: 0x576E18
	.4byte 0x43300000
	.4byte 0


.global lbl_8066CFC0
lbl_8066CFC0:
	# ROM: 0x576E20
	.4byte 0x3E4CCCCD


.global lbl_8066CFC4
lbl_8066CFC4:
	# ROM: 0x576E24
	.4byte 0x3F4CCCCD


.global lbl_8066CFC8
lbl_8066CFC8:
	# ROM: 0x576E28
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066CFD0
lbl_8066CFD0:
	# ROM: 0x576E30
	.4byte 0x40000000


.global lbl_8066CFD4
lbl_8066CFD4:
	# ROM: 0x576E34
	.4byte 0x3F000000


.global lbl_8066CFD8
lbl_8066CFD8:
	# ROM: 0x576E38
	.4byte 0xC61C4000


.global lbl_8066CFDC
lbl_8066CFDC:
	# ROM: 0x576E3C
	.4byte 0x3E800000


.global lbl_8066CFE0
lbl_8066CFE0:
	# ROM: 0x576E40
	.4byte 0x3C23D70A


.global lbl_8066CFE4
lbl_8066CFE4:
	# ROM: 0x576E44
	.4byte 0x41200000


.global lbl_8066CFE8
lbl_8066CFE8:
	# ROM: 0x576E48
	.4byte 0x43480000


.global lbl_8066CFEC
lbl_8066CFEC:
	# ROM: 0x576E4C
	.4byte 0x41F00000


.global lbl_8066CFF0
lbl_8066CFF0:
	# ROM: 0x576E50
	.4byte 0x428C0000


.global lbl_8066CFF4
lbl_8066CFF4:
	# ROM: 0x576E54
	.4byte 0x42C80000


.global lbl_8066CFF8
lbl_8066CFF8:
	# ROM: 0x576E58
	.4byte 0x42200000


.global lbl_8066CFFC
lbl_8066CFFC:
	# ROM: 0x576E5C
	.4byte 0x3DCCCCCD


.global lbl_8066D000
lbl_8066D000:
	# ROM: 0x576E60
	.4byte 0x41A00000


.global lbl_8066D004
lbl_8066D004:
	# ROM: 0x576E64
	.4byte 0x437F0000


.global lbl_8066D008
lbl_8066D008:
	# ROM: 0x576E68
	.4byte 0


.global lbl_8066D00C
lbl_8066D00C:
	# ROM: 0x576E6C
	.4byte 0x3F800000


.global lbl_8066D010
lbl_8066D010:
	# ROM: 0x576E70
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066D018
lbl_8066D018:
	# ROM: 0x576E78
	.4byte 0x40800000
	.4byte 0


.global lbl_8066D020
lbl_8066D020:
	# ROM: 0x576E80
	.4byte 0x3F800000


.global lbl_8066D024
lbl_8066D024:
	# ROM: 0x576E84
	.4byte 0


.global lbl_8066D028
lbl_8066D028:
	# ROM: 0x576E88
	.4byte 0x40400000
	.4byte 0


.global lbl_8066D030
lbl_8066D030:
	# ROM: 0x576E90
	.4byte 0


.global lbl_8066D034
lbl_8066D034:
	# ROM: 0x576E94
	.4byte 0x3F800000


.global lbl_8066D038
lbl_8066D038:
	# ROM: 0x576E98
	.4byte 0x3F000000


.global lbl_8066D03C
lbl_8066D03C:
	# ROM: 0x576E9C
	.4byte 0x3F800000


.global lbl_8066D040
lbl_8066D040:
	# ROM: 0x576EA0
	.4byte 0


.global lbl_8066D044
lbl_8066D044:
	# ROM: 0x576EA4
	.4byte 0x3C23D70A


.global lbl_8066D048
lbl_8066D048:
	# ROM: 0x576EA8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066D050
lbl_8066D050:
	# ROM: 0x576EB0
	.4byte 0x3F800000


.global lbl_8066D054
lbl_8066D054:
	# ROM: 0x576EB4
	.4byte 0x47C35000


.global lbl_8066D058
lbl_8066D058:
	# ROM: 0x576EB8
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066D060
lbl_8066D060:
	# ROM: 0x576EC0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D068
lbl_8066D068:
	# ROM: 0x576EC8
	.4byte 0x3E800000


.global lbl_8066D06C
lbl_8066D06C:
	# ROM: 0x576ECC
	.4byte 0


.global lbl_8066D070
lbl_8066D070:
	# ROM: 0x576ED0
	.4byte 0x40000000


.global lbl_8066D074
lbl_8066D074:
	# ROM: 0x576ED4
	.4byte 0xBF800000


.global lbl_8066D078
lbl_8066D078:
	# ROM: 0x576ED8
	.4byte 0xC7C35000


.global lbl_8066D07C
lbl_8066D07C:
	# ROM: 0x576EDC
	.4byte 0x3EE66666


.global lbl_8066D080
lbl_8066D080:
	# ROM: 0x576EE0
	.4byte 0


.global lbl_8066D084
lbl_8066D084:
	# ROM: 0x576EE4
	.4byte 0x3F800000


.global lbl_8066D088
lbl_8066D088:
	# ROM: 0x576EE8
	.4byte 0xBF800000
	.4byte 0
	.asciz "bloom"
	.balign 4
	.asciz "move"
	.balign 4


.global lbl_8066D0A0
lbl_8066D0A0:
	# ROM: 0x576F00
	.4byte 0


.global lbl_8066D0A4
lbl_8066D0A4:
	# ROM: 0x576F04
	.4byte 0x437F0000


.global lbl_8066D0A8
lbl_8066D0A8:
	# ROM: 0x576F08
	.4byte 0x41F00000
	.4byte 0


.global lbl_8066D0B0
lbl_8066D0B0:
	# ROM: 0x576F10
	.4byte 0x43300000
	.4byte 0


.global lbl_8066D0B8
lbl_8066D0B8:
	# ROM: 0x576F18
	.4byte 0x42C80000


.global lbl_8066D0BC
lbl_8066D0BC:
	# ROM: 0x576F1C
	.4byte 0x3F800000


.global lbl_8066D0C0
lbl_8066D0C0:
	# ROM: 0x576F20
	.4byte 0x3A83126F


.global lbl_8066D0C4
lbl_8066D0C4:
	# ROM: 0x576F24
	.4byte 0x3F000000


.global lbl_8066D0C8
lbl_8066D0C8:
	# ROM: 0x576F28
	.4byte 0x3DB851EC


.global lbl_8066D0CC
lbl_8066D0CC:
	# ROM: 0x576F2C
	.4byte 0x3E99999A


.global lbl_8066D0D0
lbl_8066D0D0:
	# ROM: 0x576F30
	.4byte 0xBF800000


.global lbl_8066D0D4
lbl_8066D0D4:
	# ROM: 0x576F34
	.4byte 0x3C23D70A


.global lbl_8066D0D8
lbl_8066D0D8:
	# ROM: 0x576F38
	.4byte 0xBCA3D70A


.global lbl_8066D0DC
lbl_8066D0DC:
	# ROM: 0x576F3C
	.4byte 0x3C23D70B


.global lbl_8066D0E0
lbl_8066D0E0:
	# ROM: 0x576F40
	.4byte 0x3DCCCCCD


.global lbl_8066D0E4
lbl_8066D0E4:
	# ROM: 0x576F44
	.4byte 0xBF7FF972


.global lbl_8066D0E8
lbl_8066D0E8:
	# ROM: 0x576F48
	.4byte 0x40000000
	.4byte 0
	.asciz "SHIF"
	.balign 4
	.asciz "SHTY"
	.balign 4


.global lbl_8066D100
lbl_8066D100:
	# ROM: 0x576F60
	.4byte 0x3F666666


.global lbl_8066D104
lbl_8066D104:
	# ROM: 0x576F64
	.4byte 0x3F800000


.global lbl_8066D108
lbl_8066D108:
	# ROM: 0x576F68
	.4byte 0
	.4byte 0


.global lbl_8066D110
lbl_8066D110:
	# ROM: 0x576F70
	.4byte 0x43300000
	.4byte 0
	.asciz "move"
	.balign 4
	.asciz "JUam_L"
	.balign 4
	.asciz "JUam_R"
	.balign 4
	.asciz "JLlg_L"
	.balign 4
	.asciz "JLlg_R"
	.balign 4
	.asciz "JLft_L"
	.balign 4
	.asciz "JLft_R"
	.balign 4


.global lbl_8066D150
lbl_8066D150:
	# ROM: 0x576FB0
	.4byte 0x40000000


.global lbl_8066D154
lbl_8066D154:
	# ROM: 0x576FB4
	.4byte 0x3DCCCCCD


.global lbl_8066D158
lbl_8066D158:
	# ROM: 0x576FB8
	.4byte 0x40A00000


.global lbl_8066D15C
lbl_8066D15C:
	# ROM: 0x576FBC
	.4byte 0x3F333333


.global lbl_8066D160
lbl_8066D160:
	# ROM: 0x576FC0
	.4byte 0x3E99999A
	.4byte 0


.global lbl_8066D168
lbl_8066D168:
	# ROM: 0x576FC8
	.4byte 0x3FF00000
	.4byte 0


.global lbl_8066D170
lbl_8066D170:
	# ROM: 0x576FD0
	.4byte 0
	.4byte 0


.global lbl_8066D178
lbl_8066D178:
	# ROM: 0x576FD8
	.4byte 0x3C23D70A


.global lbl_8066D17C
lbl_8066D17C:
	# ROM: 0x576FDC
	.4byte 0x3BA3D70A


.global lbl_8066D180
lbl_8066D180:
	# ROM: 0x576FE0
	.4byte 0x3F000000


.global lbl_8066D184
lbl_8066D184:
	# ROM: 0x576FE4
	.4byte 0x3CC90FDB


.global lbl_8066D188
lbl_8066D188:
	# ROM: 0x576FE8
	.4byte 0x4222F983


.global lbl_8066D18C
lbl_8066D18C:
	# ROM: 0x576FEC
	.4byte 0xBDCCCCCD


.global lbl_8066D190
lbl_8066D190:
	# ROM: 0x576FF0
	.4byte 0x42C80000
	.4byte 0
	.asciz "CScnMem"
	.asciz "CScn"
	.balign 4


.global lbl_8066D1A8
lbl_8066D1A8:
	# ROM: 0x577008
	.4byte 0x41A00000


.global lbl_8066D1AC
lbl_8066D1AC:
	# ROM: 0x57700C
	.4byte 0x3C23D70A


.global lbl_8066D1B0
lbl_8066D1B0:
	# ROM: 0x577010
	.4byte 0x3DA3D70A


.global lbl_8066D1B4
lbl_8066D1B4:
	# ROM: 0x577014
	.4byte 0


.global lbl_8066D1B8
lbl_8066D1B8:
	# ROM: 0x577018
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D1C0
lbl_8066D1C0:
	# ROM: 0x577020
	.4byte 0


.global lbl_8066D1C4
lbl_8066D1C4:
	# ROM: 0x577024
	.4byte 0x49742400


.global lbl_8066D1C8
lbl_8066D1C8:
	# ROM: 0x577028
	.4byte 0xC9742400
	.4byte 0


.global lbl_8066D1D0
lbl_8066D1D0:
	# ROM: 0x577030
	.4byte 0x40A00000


.global lbl_8066D1D4
lbl_8066D1D4:
	# ROM: 0x577034
	.4byte 0x3F000000


.global lbl_8066D1D8
lbl_8066D1D8:
	# ROM: 0x577038
	.4byte 0x3F800000


.global lbl_8066D1DC
lbl_8066D1DC:
	# ROM: 0x57703C
	.4byte 0xC0800000


.global lbl_8066D1E0
lbl_8066D1E0:
	# ROM: 0x577040
	.4byte 0x40800000


.global lbl_8066D1E4
lbl_8066D1E4:
	# ROM: 0x577044
	.4byte 0


.global lbl_8066D1E8
lbl_8066D1E8:
	# ROM: 0x577048
	.4byte 0x3ECCCCCD


.global lbl_8066D1EC
lbl_8066D1EC:
	# ROM: 0x57704C
	.4byte 0x3EAEAEAF


.global lbl_8066D1F0
lbl_8066D1F0:
	# ROM: 0x577050
	.4byte 0x3E969697


.global lbl_8066D1F4
lbl_8066D1F4:
	# ROM: 0x577054
	.4byte 0xC0400000


.global lbl_8066D1F8
lbl_8066D1F8:
	# ROM: 0x577058
	.4byte 0x3E800000


.global lbl_8066D1FC
lbl_8066D1FC:
	# ROM: 0x57705C
	.4byte 0xBF1409A2


.global lbl_8066D200
lbl_8066D200:
	# ROM: 0x577060
	.4byte 0x3F135419


.global lbl_8066D204
lbl_8066D204:
	# ROM: 0x577064
	.4byte 0x3F13D652


.global lbl_8066D208
lbl_8066D208:
	# ROM: 0x577068
	.4byte 0x3F13BB1F


.global lbl_8066D20C
lbl_8066D20C:
	# ROM: 0x57706C
	.4byte 0xBF1005E6


.global lbl_8066D210
lbl_8066D210:
	# ROM: 0x577070
	.4byte 0x3F0E7760


.global lbl_8066D214
lbl_8066D214:
	# ROM: 0x577074
	.4byte 0x3F1C8399


.global lbl_8066D218
lbl_8066D218:
	# ROM: 0x577078
	.4byte 0x3F0DE3B9


.global lbl_8066D21C
lbl_8066D21C:
	# ROM: 0x57707C
	.4byte 0x3F1403AC


.global lbl_8066D220
lbl_8066D220:
	# ROM: 0x577080
	.4byte 0xBF194802


.global lbl_8066D224
lbl_8066D224:
	# ROM: 0x577084
	.4byte 0x3DCCCCCD


.global lbl_8066D228
lbl_8066D228:
	# ROM: 0x577088
	.4byte 0x3AD82342


.global lbl_8066D22C
lbl_8066D22C:
	# ROM: 0x57708C
	.4byte 0xBF6538EF


.global lbl_8066D230
lbl_8066D230:
	# ROM: 0x577090
	.4byte 0x3EE3F8FD


.global lbl_8066D234
lbl_8066D234:
	# ROM: 0x577094
	.4byte 0x3F666666


.global lbl_8066D238
lbl_8066D238:
	# ROM: 0x577098
	.4byte 0x3D23D70A
	.4byte 0


.global lbl_8066D240
lbl_8066D240:
	# ROM: 0x5770A0
	.4byte 0
	.4byte 0


.global lbl_8066D248
lbl_8066D248:
	# ROM: 0x5770A8
	.4byte 0x3F800000


.global lbl_8066D24C
lbl_8066D24C:
	# ROM: 0x5770AC
	.4byte 0


.global lbl_8066D250
lbl_8066D250:
	# ROM: 0x5770B0
	.4byte 0x437F0000
	.4byte 0


.global lbl_8066D258
lbl_8066D258:
	# ROM: 0x5770B8
	.4byte 0x3F800000


.global lbl_8066D25C
lbl_8066D25C:
	# ROM: 0x5770BC
	.4byte 0x437F0000


.global lbl_8066D260
lbl_8066D260:
	# ROM: 0x5770C0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D268
lbl_8066D268:
	# ROM: 0x5770C8
	.4byte 0


.global lbl_8066D26C
lbl_8066D26C:
	# ROM: 0x5770CC
	.4byte 0x3F000000


.global lbl_8066D270
lbl_8066D270:
	# ROM: 0x5770D0
	.4byte 0x41200000


.global lbl_8066D274
lbl_8066D274:
	# ROM: 0x5770D4
	.4byte 0


.global lbl_8066D278
lbl_8066D278:
	# ROM: 0x5770D8
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066D280
lbl_8066D280:
	# ROM: 0x5770E0
	.4byte 0


.global lbl_8066D284
lbl_8066D284:
	# ROM: 0x5770E4
	.4byte 0x3F800000


.global lbl_8066D288
lbl_8066D288:
	# ROM: 0x5770E8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066D290
lbl_8066D290:
	# ROM: 0x5770F0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D298
lbl_8066D298:
	# ROM: 0x5770F8
	.4byte 0x3F000000


.global lbl_8066D29C
lbl_8066D29C:
	# ROM: 0x5770FC
	.4byte 0x38D1B717


.global lbl_8066D2A0
lbl_8066D2A0:
	# ROM: 0x577100
	.4byte 0x3F800000


.global lbl_8066D2A4
lbl_8066D2A4:
	# ROM: 0x577104
	.4byte 0x3F000000


.global lbl_8066D2A8
lbl_8066D2A8:
	# ROM: 0x577108
	.4byte 0


.global lbl_8066D2AC
lbl_8066D2AC:
	# ROM: 0x57710C
	.4byte 0x437F0000


.global lbl_8066D2B0
lbl_8066D2B0:
	# ROM: 0x577110
	.4byte 0


.global lbl_8066D2B4
lbl_8066D2B4:
	# ROM: 0x577114
	.4byte 0x3F800000


.global lbl_8066D2B8
lbl_8066D2B8:
	# ROM: 0x577118
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D2C0
lbl_8066D2C0:
	# ROM: 0x577120
	.4byte 0x3F800000


.global lbl_8066D2C4
lbl_8066D2C4:
	# ROM: 0x577124
	.4byte 0x3F000000


.global lbl_8066D2C8
lbl_8066D2C8:
	# ROM: 0x577128
	.4byte 0x3FC00000


.global lbl_8066D2CC
lbl_8066D2CC:
	# ROM: 0x57712C
	.4byte 0


.global lbl_8066D2D0
lbl_8066D2D0:
	# ROM: 0x577130
	.4byte 0x3FC99999
	.4byte 0xA0000000


.global lbl_8066D2D8
lbl_8066D2D8:
	# ROM: 0x577138
	.4byte 0x3FE00000
	.4byte 0


.global lbl_8066D2E0
lbl_8066D2E0:
	# ROM: 0x577140
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D2E8
lbl_8066D2E8:
	# ROM: 0x577148
	.4byte 0x3F800000


.global lbl_8066D2EC
lbl_8066D2EC:
	# ROM: 0x57714C
	.4byte 0x3F000000


.global lbl_8066D2F0
lbl_8066D2F0:
	# ROM: 0x577150
	.4byte 0
	.4byte 0


.global lbl_8066D2F8
lbl_8066D2F8:
	# ROM: 0x577158
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D300
lbl_8066D300:
	# ROM: 0x577160
	.4byte 0x437F0000
	.4byte 0


.global lbl_8066D308
lbl_8066D308:
	# ROM: 0x577168
	.4byte 0x3C8EFA33
	.4byte 0


.global lbl_8066D310
lbl_8066D310:
	# ROM: 0x577170
	.4byte 0xC3FA0000


.global lbl_8066D314
lbl_8066D314:
	# ROM: 0x577174
	.4byte 0x3F800000


.global lbl_8066D318
lbl_8066D318:
	# ROM: 0x577178
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066D320
lbl_8066D320:
	# ROM: 0x577180
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D328
lbl_8066D328:
	# ROM: 0x577188
	.4byte 0


.global lbl_8066D32C
lbl_8066D32C:
	# ROM: 0x57718C
	.4byte 0x3F726E98
	.4byte 0x65700000


.global lbl_8066D334
lbl_8066D334:
	# ROM: 0x577194
	.4byte 0x3F800000


.global lbl_8066D338
lbl_8066D338:
	# ROM: 0x577198
	.4byte 0


.global lbl_8066D33C
lbl_8066D33C:
	# ROM: 0x57719C
	.4byte 0x3B800000


.global lbl_8066D340
lbl_8066D340:
	# ROM: 0x5771A0
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066D348
lbl_8066D348:
	# ROM: 0x5771A8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D350
lbl_8066D350:
	# ROM: 0x5771B0
	.4byte 0
	.4byte 0


.global lbl_8066D358
lbl_8066D358:
	# ROM: 0x5771B8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066D360
lbl_8066D360:
	# ROM: 0x5771C0
	.4byte 0


.global lbl_8066D364
lbl_8066D364:
	# ROM: 0x5771C4
	.4byte 0x3F800000


.global lbl_8066D368
lbl_8066D368:
	# ROM: 0x5771C8
	.4byte 0x447A0000


.global lbl_8066D36C
lbl_8066D36C:
	# ROM: 0x5771CC
	.4byte 0x3DCCCCCD


.global lbl_8066D370
lbl_8066D370:
	# ROM: 0x5771D0
	.4byte 0x42C80000


.global lbl_8066D374
lbl_8066D374:
	# ROM: 0x5771D4
	.4byte 0x437F0000


.global lbl_8066D378
lbl_8066D378:
	# ROM: 0x5771D8
	.4byte 0x3DEA72EB


.global lbl_8066D37C
lbl_8066D37C:
	# ROM: 0x5771DC
	.4byte 0x3E990AFE


.global lbl_8066D380
lbl_8066D380:
	# ROM: 0x5771E0
	.4byte 0x3F162C23
	.4byte 0


.global lbl_8066D388
lbl_8066D388:
	# ROM: 0x5771E8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066D390
lbl_8066D390:
	# ROM: 0x5771F0
	.4byte 0x3F800000


.global lbl_8066D394
lbl_8066D394:
	# ROM: 0x5771F4
	.4byte 0x3F000000


.global lbl_8066D398
lbl_8066D398:
	# ROM: 0x5771F8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066D3A0
lbl_8066D3A0:
	# ROM: 0x577200
	.4byte 0


.global lbl_8066D3A4
lbl_8066D3A4:
	# ROM: 0x577204
	.4byte 0x41F00000


.global lbl_8066D3A8
lbl_8066D3A8:
	# ROM: 0x577208
	.4byte 0x3DCCCCCD


.global lbl_8066D3AC
lbl_8066D3AC:
	# ROM: 0x57720C
	.4byte 0x47A60400


.global lbl_8066D3B0
lbl_8066D3B0:
	# ROM: 0x577210
	.4byte 0x40800000


.global lbl_8066D3B4
lbl_8066D3B4:
	# ROM: 0x577214
	.4byte 0x3F726E98


.global lbl_8066D3B8
lbl_8066D3B8:
	# ROM: 0x577218
	.4byte 0x43300000
	.4byte 0


.global lbl_8066D3C0
lbl_8066D3C0:
	# ROM: 0x577220
	.4byte 0x3F000000


.global lbl_8066D3C4
lbl_8066D3C4:
	# ROM: 0x577224
	.4byte 0x3CC90FDB


.global lbl_8066D3C8
lbl_8066D3C8:
	# ROM: 0x577228
	.4byte 0x4222F983


.global lbl_8066D3CC
lbl_8066D3CC:
	# ROM: 0x57722C
	.4byte 0x3F800000


.global lbl_8066D3D0
lbl_8066D3D0:
	# ROM: 0x577230
	.4byte 0x40000000


.global lbl_8066D3D4
lbl_8066D3D4:
	# ROM: 0x577234
	.4byte 0xC0000000


.global lbl_8066D3D8
lbl_8066D3D8:
	# ROM: 0x577238
	.4byte 0xBF800000
	.4byte 0


.global lbl_8066D3E0
lbl_8066D3E0:
	# ROM: 0x577240
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D3E8
lbl_8066D3E8:
	# ROM: 0x577248
	.float 20.0
	.4byte 0
	.asciz "NOP"
	.4byte 0
	.asciz "CONST_0"
	.asciz "CONST_1"
	.asciz "CONST_2"
	.asciz "CONST_3"
	.asciz "CONST_4"
	.asciz "CONST_I"
	.asciz "LD"
	.byte 0x00
	.asciz "ST"
	.byte 0x00
	.asciz "LD_ARG"
	.balign 4
	.asciz "ST_ARG"
	.balign 4
	.asciz "LD_0"
	.balign 4
	.asciz "LD_1"
	.balign 4
	.asciz "LD_2"
	.balign 4
	.asciz "LD_3"
	.balign 4
	.asciz "ST_0"
	.balign 4
	.asciz "ST_1"
	.balign 4
	.asciz "ST_2"
	.balign 4
	.asciz "ST_3"
	.balign 4
	.asciz "LD_AR"
	.balign 4
	.asciz "ST_AR"
	.balign 4
	.asciz "LD_NIL"
	.balign 4
	.asciz "LD_TRUE"
	.asciz "LD_FUNC"
	.asciz "MINUS"
	.balign 4
	.asciz "NOT"
	.asciz "L_NOT"
	.balign 4
	.asciz "ADD"
	.asciz "SUB"
	.asciz "MUL"
	.asciz "DIV"
	.asciz "MOD"
	.asciz "OR"
	.balign 4
	.asciz "AND"
	.asciz "R_SHIFT"
	.asciz "L_SHIFT"
	.asciz "EQ"
	.balign 4
	.asciz "NE"
	.balign 4
	.asciz "GT"
	.balign 4
	.asciz "LT"
	.balign 4
	.asciz "GE"
	.balign 4
	.asciz "LE"
	.balign 4
	.asciz "L_OR"
	.balign 4
	.asciz "L_AND"
	.balign 4
	.asciz "JMP"
	.asciz "JPF"
	.asciz "CALL"
	.balign 4
	.asciz "CALL_W"
	.balign 4
	.asciz "RET"
	.asciz "NEXT"
	.balign 4
	.asciz "PLUGIN"
	.balign 4
	.asciz "GET_OC"
	.balign 4
	.asciz "GETTER"
	.balign 4
	.asciz "SETTER"
	.balign 4
	.asciz "SEND"
	.balign 4
	.asciz "SEND_W"
	.balign 4
	.asciz "TYPEOF"
	.balign 4
	.asciz "SIZEOF"
	.balign 4
	.asciz "SWITCH"
	.balign 4
	.asciz "INC"
	.asciz "DEC"
	.asciz "EXIT"
	.balign 4
	.asciz "BP"
	.balign 4
	.asciz "nil"
	.asciz "true"
	.balign 4
	.asciz "false"
	.balign 4
	.asciz "int"
	.asciz "fixed"
	.balign 4
	.asciz "string"
	.balign 4
	.asciz "array"
	.balign 4
	.asciz "plugin"
	.balign 4
	.asciz "OC"
	.balign 4
	.asciz "sys"


.global lbl_8066D5D0
lbl_8066D5D0:
	# ROM: 0x577430
	.4byte 0x3F800000


.global lbl_8066D5D4
lbl_8066D5D4:
	# ROM: 0x577434
	.4byte 0


.global lbl_8066D5D8
lbl_8066D5D8:
	# ROM: 0x577438
	.4byte 0x4222F983
	.4byte 0
	.asciz "base"
	.balign 4


.global lbl_8066D5E8
lbl_8066D5E8:
	# ROM: 0x577448
	.4byte 0x40000000


.global lbl_8066D5EC
lbl_8066D5EC:
	# ROM: 0x57744C
	.4byte 0x3F800000


.global lbl_8066D5F0
lbl_8066D5F0:
	# ROM: 0x577450
	.4byte 0x3F000000


.global lbl_8066D5F4
lbl_8066D5F4:
	# ROM: 0x577454
	.4byte 0


.global lbl_8066D5F8
lbl_8066D5F8:
	# ROM: 0x577458
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D600
lbl_8066D600:
	# ROM: 0x577460
	.4byte 0xBF800000


.global lbl_8066D604
lbl_8066D604:
	# ROM: 0x577464
	.4byte 0x3E4CCCCD


.global lbl_8066D608
lbl_8066D608:
	# ROM: 0x577468
	.4byte 0x40066666


.global lbl_8066D60C
lbl_8066D60C:
	# ROM: 0x57746C
	.4byte 0x3727C5AC


.global lbl_8066D610
lbl_8066D610:
	# ROM: 0x577470
	.4byte 0x3CC90FDB


.global lbl_8066D614
lbl_8066D614:
	# ROM: 0x577474
	.4byte 0xB727C5AC


.global lbl_8066D618
lbl_8066D618:
	# ROM: 0x577478
	.4byte 0x47C35000


.global lbl_8066D61C
lbl_8066D61C:
	# ROM: 0x57747C
	.4byte 0x3A83126F


.global lbl_8066D620
lbl_8066D620:
	# ROM: 0x577480
	.4byte 0x49742400


.global lbl_8066D624
lbl_8066D624:
	# ROM: 0x577484
	.4byte 0xC9742400


.global lbl_8066D628
lbl_8066D628:
	# ROM: 0x577488
	.4byte 0x41A00000
	.4byte 0


.global lbl_8066D630
lbl_8066D630:
	# ROM: 0x577490
	.4byte 0
	.4byte 0


.global lbl_8066D638
lbl_8066D638:
	# ROM: 0x577498
	.4byte 0


.global lbl_8066D63C
lbl_8066D63C:
	# ROM: 0x57749C
	.4byte 0xC7C35000


.global lbl_8066D640
lbl_8066D640:
	# ROM: 0x5774A0
	.4byte 0x47C35000


.global lbl_8066D644
lbl_8066D644:
	# ROM: 0x5774A4
	.4byte 0x4222F983


.global lbl_8066D648
lbl_8066D648:
	# ROM: 0x5774A8
	.4byte 0xBF800000


.global lbl_8066D64C
lbl_8066D64C:
	# ROM: 0x5774AC
	.4byte 0x3F000000


.global lbl_8066D650
lbl_8066D650:
	# ROM: 0x5774B0
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066D658
lbl_8066D658:
	# ROM: 0x5774B8
	.4byte 0
	.4byte 0


.global lbl_8066D660
lbl_8066D660:
	# ROM: 0x5774C0
	.4byte 0


.global lbl_8066D664
lbl_8066D664:
	# ROM: 0x5774C4
	.4byte 0x3F800000


.global lbl_8066D668
lbl_8066D668:
	# ROM: 0x5774C8
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066D670
lbl_8066D670:
	# ROM: 0x5774D0
	.4byte 0


.global lbl_8066D674
lbl_8066D674:
	# ROM: 0x5774D4
	.4byte 0x3F800000


.global lbl_8066D678
lbl_8066D678:
	# ROM: 0x5774D8
	.4byte 0x49742400
	.4byte 0


.global lbl_8066D680
lbl_8066D680:
	# ROM: 0x5774E0
	.4byte 0


.global lbl_8066D684
lbl_8066D684:
	# ROM: 0x5774E4
	.4byte 0x3F800000


.global lbl_8066D688
lbl_8066D688:
	# ROM: 0x5774E8
	.4byte 0xBF800000


.global lbl_8066D68C
lbl_8066D68C:
	# ROM: 0x5774EC
	.4byte 0xB8D1B717


.global lbl_8066D690
lbl_8066D690:
	# ROM: 0x5774F0
	.4byte 0xB727C5AC


.global lbl_8066D694
lbl_8066D694:
	# ROM: 0x5774F4
	.4byte 0x4CBEBC20


.global lbl_8066D698
lbl_8066D698:
	# ROM: 0x5774F8
	.4byte 0xC61C4000


.global lbl_8066D69C
lbl_8066D69C:
	# ROM: 0x5774FC
	.4byte 0x3CC90FDB


.global lbl_8066D6A0
lbl_8066D6A0:
	# ROM: 0x577500
	.4byte 0x3F000000


.global lbl_8066D6A4
lbl_8066D6A4:
	# ROM: 0x577504
	.4byte 0x49742400


.global lbl_8066D6A8
lbl_8066D6A8:
	# ROM: 0x577508
	.4byte 0xC9742400


.global lbl_8066D6AC
lbl_8066D6AC:
	# ROM: 0x57750C
	.4byte 0


.global lbl_8066D6B0
lbl_8066D6B0:
	# ROM: 0x577510
	.4byte 0x358637BD


.global lbl_8066D6B4
lbl_8066D6B4:
	# ROM: 0x577514
	.4byte 0xC7C35000


.global lbl_8066D6B8
lbl_8066D6B8:
	# ROM: 0x577518
	.4byte 0x47C35000
	.4byte 0


.global lbl_8066D6C0
lbl_8066D6C0:
	# ROM: 0x577520
	.4byte 0x3EAAAAAB


.global lbl_8066D6C4
lbl_8066D6C4:
	# ROM: 0x577524
	.4byte 0


.global lbl_8066D6C8
lbl_8066D6C8:
	# ROM: 0x577528
	.4byte 0x437F0000
	.4byte 0


.global lbl_8066D6D0
lbl_8066D6D0:
	# ROM: 0x577530
	.4byte 0x3F350481


.global lbl_8066D6D4
lbl_8066D6D4:
	# ROM: 0x577534
	.4byte 0


.global lbl_8066D6D8
lbl_8066D6D8:
	# ROM: 0x577538
	.4byte 0x3F800000


.global lbl_8066D6DC
lbl_8066D6DC:
	# ROM: 0x57753C
	.4byte 0x3F000000


.global lbl_8066D6E0
lbl_8066D6E0:
	# ROM: 0x577540
	.4byte 0x3D4CCCCD


.global lbl_8066D6E4
lbl_8066D6E4:
	# ROM: 0x577544
	.4byte 0x40000000


.global lbl_8066D6E8
lbl_8066D6E8:
	# ROM: 0x577548
	.4byte 0x38800000


.global lbl_8066D6EC
lbl_8066D6EC:
	# ROM: 0x57754C
	.4byte 0x3E99999A


.global lbl_8066D6F0
lbl_8066D6F0:
	# ROM: 0x577550
	.4byte 0xBE99999A


.global lbl_8066D6F4
lbl_8066D6F4:
	# ROM: 0x577554
	.4byte 0


.global lbl_8066D6F8
lbl_8066D6F8:
	# ROM: 0x577558
	.4byte 0xBA83126F


.global lbl_8066D6FC
lbl_8066D6FC:
	# ROM: 0x57755C
	.4byte 0x3F800000


.global lbl_8066D700
lbl_8066D700:
	# ROM: 0x577560
	.4byte 0x3A83126F
	.4byte 0


.global lbl_8066D708
lbl_8066D708:
	# ROM: 0x577568
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D710
lbl_8066D710:
	# ROM: 0x577570
	.4byte 0xBD4CCCCD


.global lbl_8066D714
lbl_8066D714:
	# ROM: 0x577574
	.4byte 0x3D23D70B


.global lbl_8066D718
lbl_8066D718:
	# ROM: 0x577578
	.4byte 0x3F7AE148


.global lbl_8066D71C
lbl_8066D71C:
	# ROM: 0x57757C
	.4byte 0x3F000000


.global lbl_8066D720
lbl_8066D720:
	# ROM: 0x577580
	.4byte 0x3DCCCCCD


.global lbl_8066D724
lbl_8066D724:
	# ROM: 0x577584
	.4byte 0xBECCCCCD


.global lbl_8066D728
lbl_8066D728:
	# ROM: 0x577588
	.4byte 0x3F666666


.global lbl_8066D72C
lbl_8066D72C:
	# ROM: 0x57758C
	.4byte 0xBF4A3D71


.global lbl_8066D730
lbl_8066D730:
	# ROM: 0x577590
	.4byte 0


.global lbl_8066D734
lbl_8066D734:
	# ROM: 0x577594
	.4byte 0x3F000000


.global lbl_8066D738
lbl_8066D738:
	# ROM: 0x577598
	.4byte 0x3F800000


.global lbl_8066D73C
lbl_8066D73C:
	# ROM: 0x57759C
	.4byte 0x437F0000


.global lbl_8066D740
lbl_8066D740:
	# ROM: 0x5775A0
	.4byte 0x3B23D70B


.global lbl_8066D744
lbl_8066D744:
	# ROM: 0x5775A4
	.4byte 0x3E4CCCCD


.global lbl_8066D748
lbl_8066D748:
	# ROM: 0x5775A8
	.4byte 0x3D4CCCCD


.global lbl_8066D74C
lbl_8066D74C:
	# ROM: 0x5775AC
	.4byte 0x40000000


.global lbl_8066D750
lbl_8066D750:
	# ROM: 0x5775B0
	.4byte 0x3DCCCCCD
	.4byte 0


.global lbl_8066D758
lbl_8066D758:
	# ROM: 0x5775B8
	.4byte 0


.global lbl_8066D75C
lbl_8066D75C:
	# ROM: 0x5775BC
	.4byte 0x3F000000


.global lbl_8066D760
lbl_8066D760:
	# ROM: 0x5775C0
	.4byte 0x3F800000


.global lbl_8066D764
lbl_8066D764:
	# ROM: 0x5775C4
	.4byte 0x461C4000


.global lbl_8066D768
lbl_8066D768:
	# ROM: 0x5775C8
	.4byte 0x49742400


.global lbl_8066D76C
lbl_8066D76C:
	# ROM: 0x5775CC
	.4byte 0x4222F983


.global lbl_8066D770
lbl_8066D770:
	# ROM: 0x5775D0
	.4byte 0x437F0000
	.asciz "CLight"
	.balign 4
	.4byte 0


.global lbl_8066D780
lbl_8066D780:
	# ROM: 0x5775E0
	.4byte 0x3ECCCCCD


.global lbl_8066D784
lbl_8066D784:
	# ROM: 0x5775E4
	.4byte 0x3F000000


.global lbl_8066D788
lbl_8066D788:
	# ROM: 0x5775E8
	.4byte 0


.global lbl_8066D78C
lbl_8066D78C:
	# ROM: 0x5775EC
	.4byte 0x3F800000


.global lbl_8066D790
lbl_8066D790:
	# ROM: 0x5775F0
	.4byte 0xFFFFFFFF


.global lbl_8066D794
lbl_8066D794:
	# ROM: 0x5775F4
	.4byte 0x49742400


.global lbl_8066D798
lbl_8066D798:
	# ROM: 0x5775F8
	.4byte 0x49742410


.global lbl_8066D79C
lbl_8066D79C:
	# ROM: 0x5775FC
	.4byte 0x3D75C28F


.global lbl_8066D7A0
lbl_8066D7A0:
	# ROM: 0x577600
	.4byte 0x3E19999A
	.4byte 0


.global lbl_8066D7A8
lbl_8066D7A8:
	# ROM: 0x577608
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D7B0
lbl_8066D7B0:
	# ROM: 0x577610
	.4byte 0xC1A00000


.global lbl_8066D7B4
lbl_8066D7B4:
	# ROM: 0x577614
	.4byte 0x40000000


.global lbl_8066D7B8
lbl_8066D7B8:
	# ROM: 0x577618
	.4byte 0x3FC00000
	.4byte 0


.global lbl_8066D7C0
lbl_8066D7C0:
	# ROM: 0x577620
	.4byte 0


.global lbl_8066D7C4
lbl_8066D7C4:
	# ROM: 0x577624
	.4byte 0x3F800000


.global lbl_8066D7C8
lbl_8066D7C8:
	# ROM: 0x577628
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D7D0
lbl_8066D7D0:
	# ROM: 0x577630
	.4byte 0x41600000


.global lbl_8066D7D4
lbl_8066D7D4:
	# ROM: 0x577634
	.4byte 0x3ECCCCCD


.global lbl_8066D7D8
lbl_8066D7D8:
	# ROM: 0x577638
	.4byte 0x3F666666


.global lbl_8066D7DC
lbl_8066D7DC:
	# ROM: 0x57763C
	.4byte 0x3EAAAAAB


.global lbl_8066D7E0
lbl_8066D7E0:
	# ROM: 0x577640
	.4byte 0x437F0000


.global lbl_8066D7E4
lbl_8066D7E4:
	# ROM: 0x577644
	.4byte 0x3DEA72EB


.global lbl_8066D7E8
lbl_8066D7E8:
	# ROM: 0x577648
	.4byte 0x3E990AFE


.global lbl_8066D7EC
lbl_8066D7EC:
	# ROM: 0x57764C
	.4byte 0x3F162C23


.global lbl_8066D7F0
lbl_8066D7F0:
	# ROM: 0x577650
	.4byte 0x43300000
	.4byte 0


.global lbl_8066D7F8
lbl_8066D7F8:
	# ROM: 0x577658
	.4byte 0x000000FF


.global lbl_8066D7FC
lbl_8066D7FC:
	# ROM: 0x57765C
	.4byte 0x40800000


.global lbl_8066D800
lbl_8066D800:
	# ROM: 0x577660
	.4byte 0x42C80000
	.4byte 0


.global lbl_8066D808
lbl_8066D808:
	# ROM: 0x577668
	.4byte 0x3DCCCCCD


.global lbl_8066D80C
lbl_8066D80C:
	# ROM: 0x57766C
	.4byte 0


.global lbl_8066D810
lbl_8066D810:
	# ROM: 0x577670
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066D818
lbl_8066D818:
	# ROM: 0x577678
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D820
lbl_8066D820:
	# ROM: 0x577680
	.4byte 0x40000000


.global lbl_8066D824
lbl_8066D824:
	# ROM: 0x577684
	.4byte 0x40400000


.global lbl_8066D828
lbl_8066D828:
	# ROM: 0x577688
	.4byte 0xC0000000


.global lbl_8066D82C
lbl_8066D82C:
	# ROM: 0x57768C
	.4byte 0xBF800000


.global lbl_8066D830
lbl_8066D830:
	# ROM: 0x577690
	.4byte 0x4222F983
	.4byte 0


.global lbl_8066D838
lbl_8066D838:
	# ROM: 0x577698
	.4byte 0x3F800000


.global lbl_8066D83C
lbl_8066D83C:
	# ROM: 0x57769C
	.4byte 0


.global lbl_8066D840
lbl_8066D840:
	# ROM: 0x5776A0
	.4byte 0x3F4CCCCD


.global lbl_8066D844
lbl_8066D844:
	# ROM: 0x5776A4
	.4byte 0x40A00000


.global lbl_8066D848
lbl_8066D848:
	# ROM: 0x5776A8
	.4byte 0x43C58000
	.4byte 0


.global lbl_8066D850
lbl_8066D850:
	# ROM: 0x5776B0
	.4byte 0


.global lbl_8066D854
lbl_8066D854:
	# ROM: 0x5776B4
	.4byte 0x3F800000


.global lbl_8066D858
lbl_8066D858:
	# ROM: 0x5776B8
	.4byte 0x42C80000
	.4byte 0


.global lbl_8066D860
lbl_8066D860:
	# ROM: 0x5776C0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D868
lbl_8066D868:
	# ROM: 0x5776C8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066D870
lbl_8066D870:
	# ROM: 0x5776D0
	.4byte 0x40000000


.global lbl_8066D874
lbl_8066D874:
	# ROM: 0x5776D4
	.4byte 0x3F000000


.global lbl_8066D878
lbl_8066D878:
	# ROM: 0x5776D8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066D880
lbl_8066D880:
	# ROM: 0x5776E0
	.4byte 0x606060FF
	.4byte 0


.global lbl_8066D888
lbl_8066D888:
	# ROM: 0x5776E8
	.4byte 0x3F800000


.global lbl_8066D88C
lbl_8066D88C:
	# ROM: 0x5776EC
	.4byte 0


.global lbl_8066D890
lbl_8066D890:
	# ROM: 0x5776F0
	.4byte 0x4F000000


.global lbl_8066D894
lbl_8066D894:
	# ROM: 0x5776F4
	.4byte 0x3F000000


.global lbl_8066D898
lbl_8066D898:
	# ROM: 0x5776F8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066D8A0
lbl_8066D8A0:
	# ROM: 0x577700
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D8A8
lbl_8066D8A8:
	# ROM: 0x577708
	.4byte 0x3CC90FDB


.global lbl_8066D8AC
lbl_8066D8AC:
	# ROM: 0x57770C
	.4byte 0x41F00000


.global lbl_8066D8B0
lbl_8066D8B0:
	# ROM: 0x577710
	.4byte 0x3D4CCCCD


.global lbl_8066D8B4
lbl_8066D8B4:
	# ROM: 0x577714
	.4byte 0xB8D1B717


.global lbl_8066D8B8
lbl_8066D8B8:
	# ROM: 0x577718
	.4byte 0x38D1B717


.global lbl_8066D8BC
lbl_8066D8BC:
	# ROM: 0x57771C
	.4byte 0x3FC8F5C3


.global lbl_8066D8C0
lbl_8066D8C0:
	# ROM: 0x577720
	.4byte 0x3F666666


.global lbl_8066D8C4
lbl_8066D8C4:
	# ROM: 0x577724
	.4byte 0x40000000


.global lbl_8066D8C8
lbl_8066D8C8:
	# ROM: 0x577728
	.4byte 0x437F0000


.global lbl_8066D8CC
lbl_8066D8CC:
	# ROM: 0x57772C
	.4byte 0xBF800000


.global lbl_8066D8D0
lbl_8066D8D0:
	# ROM: 0x577730
	.4byte 0xFFFFFFFF


.global lbl_8066D8D4
lbl_8066D8D4:
	# ROM: 0x577734
	.4byte 0x44558000


.global lbl_8066D8D8
lbl_8066D8D8:
	# ROM: 0x577738
	.4byte 0xBF000000


.global lbl_8066D8DC
lbl_8066D8DC:
	# ROM: 0x57773C
	.4byte 0x40400000


.global lbl_8066D8E0
lbl_8066D8E0:
	# ROM: 0x577740
	.4byte 0xC0400000


.global lbl_8066D8E4
lbl_8066D8E4:
	# ROM: 0x577744
	.4byte 0x43B40000


.global lbl_8066D8E8
lbl_8066D8E8:
	# ROM: 0x577748
	.4byte 0


.global lbl_8066D8EC
lbl_8066D8EC:
	# ROM: 0x57774C
	.4byte 0x3F666666


.global lbl_8066D8F0
lbl_8066D8F0:
	# ROM: 0x577750
	.4byte 0x40000000


.global lbl_8066D8F4
lbl_8066D8F4:
	# ROM: 0x577754
	.4byte 0x3F800000


.global lbl_8066D8F8
lbl_8066D8F8:
	# ROM: 0x577758
	.4byte 0x437F0000
	.4byte 0


.global lbl_8066D900
lbl_8066D900:
	# ROM: 0x577760
	.4byte 0x3F800000


.global lbl_8066D904
lbl_8066D904:
	# ROM: 0x577764
	.4byte 0


.global lbl_8066D908
lbl_8066D908:
	# ROM: 0x577768
	.4byte 0x40000000


.global lbl_8066D90C
lbl_8066D90C:
	# ROM: 0x57776C
	.4byte 0x40400000


.global lbl_8066D910
lbl_8066D910:
	# ROM: 0x577770
	.4byte 0xC0000000
	.4byte 0


.global lbl_8066D918
lbl_8066D918:
	# ROM: 0x577778
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D920
lbl_8066D920:
	# ROM: 0x577780
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066D928
lbl_8066D928:
	# ROM: 0x577788
	.4byte 0x43300000
	.4byte 0


.global lbl_8066D930
lbl_8066D930:
	# ROM: 0x577790
	.4byte 0xBF800000
	.4byte 0
	.asciz "CETrail"


.global lbl_8066D940
lbl_8066D940:
	# ROM: 0x5777A0
	.4byte 0


.global lbl_8066D944
lbl_8066D944:
	# ROM: 0x5777A4
	.4byte 0x3DCCCCCD


.global lbl_8066D948
lbl_8066D948:
	# ROM: 0x5777A8
	.4byte 0x3F7D70A4


.global lbl_8066D94C
lbl_8066D94C:
	# ROM: 0x5777AC
	.4byte 0x3F800000


.global lbl_8066D950
lbl_8066D950:
	# ROM: 0x5777B0
	.4byte 0x40400000


.global lbl_8066D954
lbl_8066D954:
	# ROM: 0x5777B4
	.4byte 0x47C34F80


.global lbl_8066D958
lbl_8066D958:
	# ROM: 0x5777B8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D960
lbl_8066D960:
	# ROM: 0x5777C0
	.4byte 0x3F800000


.global lbl_8066D964
lbl_8066D964:
	# ROM: 0x5777C4
	.4byte 0x41F00000


.global lbl_8066D968
lbl_8066D968:
	# ROM: 0x5777C8
	.4byte 0x437F0000


.global lbl_8066D96C
lbl_8066D96C:
	# ROM: 0x5777CC
	.4byte 0x3F000000


.global lbl_8066D970
lbl_8066D970:
	# ROM: 0x5777D0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D978
lbl_8066D978:
	# ROM: 0x5777D8
	.4byte 0x43300000
	.4byte 0


.global lbl_8066D980
lbl_8066D980:
	# ROM: 0x5777E0
	.4byte 0
	.4byte 0


.global lbl_8066D988
lbl_8066D988:
	# ROM: 0x5777E8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D990
lbl_8066D990:
	# ROM: 0x5777F0
	.4byte 0x3FC90FDB


.global lbl_8066D994
lbl_8066D994:
	# ROM: 0x5777F4
	.4byte 0


.global lbl_8066D998
lbl_8066D998:
	# ROM: 0x5777F8
	.4byte 0x4F000000


.global lbl_8066D99C
lbl_8066D99C:
	# ROM: 0x5777FC
	.4byte 0


.global lbl_8066D9A0
lbl_8066D9A0:
	# ROM: 0x577800
	.4byte 0x3F800000


.global lbl_8066D9A4
lbl_8066D9A4:
	# ROM: 0x577804
	.4byte 0x42652EE1


.global lbl_8066D9A8
lbl_8066D9A8:
	# ROM: 0x577808
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D9B0
lbl_8066D9B0:
	# ROM: 0x577810
	.4byte 0x3F000000


.global lbl_8066D9B4
lbl_8066D9B4:
	# ROM: 0x577814
	.4byte 0xBF800000


.global lbl_8066D9B8
lbl_8066D9B8:
	# ROM: 0x577818
	.4byte 0x3C8EFA35
	.4byte 0
	.asciz "CNand"
	.balign 4
	.4byte 0
	.4byte 0
	.asciz "/tmp/"
	.balign 4


.global lbl_8066D9D8
lbl_8066D9D8:
	# ROM: 0x577838
	.4byte 0


.global lbl_8066D9DC
lbl_8066D9DC:
	# ROM: 0x57783C
	.4byte 0x4F000000


.global lbl_8066D9E0
lbl_8066D9E0:
	# ROM: 0x577840
	.4byte 0x3F000000
	.4byte 0


.global lbl_8066D9E8
lbl_8066D9E8:
	# ROM: 0x577848
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066D9F0
lbl_8066D9F0:
	# ROM: 0x577850
	.4byte 0x3F800000


.global lbl_8066D9F4
lbl_8066D9F4:
	# ROM: 0x577854
	.4byte 0xBF800000


.global lbl_8066D9F8
lbl_8066D9F8:
	# ROM: 0x577858
	.4byte 0x461C5800
	.4byte 0


.global lbl_8066DA00
lbl_8066DA00:
	# ROM: 0x577860
	.4byte 0x43300000
	.4byte 0


.global lbl_8066DA08
lbl_8066DA08:
	# ROM: 0x577868
	.4byte 0x42652EE1
	.4byte 0


.global lbl_8066DA10
lbl_8066DA10:
	# ROM: 0x577870
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066DA18
lbl_8066DA18:
	# ROM: 0x577878
	.4byte 0x3F800000


.global lbl_8066DA1C
lbl_8066DA1C:
	# ROM: 0x57787C
	.4byte 0


.global lbl_8066DA20
lbl_8066DA20:
	# ROM: 0x577880
	.4byte 0x3C8EFA35
	.4byte 0


.global lbl_8066DA28
lbl_8066DA28:
	# ROM: 0x577888
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066DA30
lbl_8066DA30:
	# ROM: 0x577890
	.4byte 0x43300000
	.4byte 0


.global lbl_8066DA38
lbl_8066DA38:
	# ROM: 0x577898
	.4byte 0
	.4byte 0


.global lbl_8066DA40
lbl_8066DA40:
	# ROM: 0x5778A0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066DA48
lbl_8066DA48:
	# ROM: 0x5778A8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066DA50
lbl_8066DA50:
	# ROM: 0x5778B0
	.4byte 0x3F800000


.global lbl_8066DA54
lbl_8066DA54:
	# ROM: 0x5778B4
	.4byte 0x4F000000


.global lbl_8066DA58
lbl_8066DA58:
	# ROM: 0x5778B8
	.4byte 0x3F000000


.global lbl_8066DA5C
lbl_8066DA5C:
	# ROM: 0x5778BC
	.4byte 0x41200000


.global lbl_8066DA60
lbl_8066DA60:
	# ROM: 0x5778C0
	.4byte 0x3A83126F


.global lbl_8066DA64
lbl_8066DA64:
	# ROM: 0x5778C4
	.4byte 0x3DCCCCCD


.global lbl_8066DA68
lbl_8066DA68:
	# ROM: 0x5778C8
	.4byte 0x40000000


.global lbl_8066DA6C
lbl_8066DA6C:
	# ROM: 0x5778CC
	.4byte 0x40400000


.global lbl_8066DA70
lbl_8066DA70:
	# ROM: 0x5778D0
	.4byte 0xC0000000


.global lbl_8066DA74
lbl_8066DA74:
	# ROM: 0x5778D4
	.4byte 0xBF800000


.global lbl_8066DA78
lbl_8066DA78:
	# ROM: 0x5778D8
	.4byte 0x437F0000


.global lbl_8066DA7C
lbl_8066DA7C:
	# ROM: 0x5778DC
	.4byte 0x40800000


.global lbl_8066DA80
lbl_8066DA80:
	# ROM: 0x5778E0
	.4byte 0x40C00000


.global lbl_8066DA84
lbl_8066DA84:
	# ROM: 0x5778E4
	.4byte 0x3F7FF972


.global lbl_8066DA88
lbl_8066DA88:
	# ROM: 0x5778E8
	.4byte 0x3F800000


.global lbl_8066DA8C
lbl_8066DA8C:
	# ROM: 0x5778EC
	.4byte 0


.global lbl_8066DA90
lbl_8066DA90:
	# ROM: 0x5778F0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066DA98
lbl_8066DA98:
	# ROM: 0x5778F8
	.4byte 0x43300000
	.4byte 0
	.asciz "Hide"
	.balign 4
	.4byte 0x50494400


.global lbl_8066DAAC
lbl_8066DAAC:
	# ROM: 0x57790C
	.4byte 0x437F0000
	.asciz "JUjaw"
	.balign 4


.global lbl_8066DAB8
lbl_8066DAB8:
	# ROM: 0x577918
	.4byte 0


.global lbl_8066DABC
lbl_8066DABC:
	# ROM: 0x57791C
	.4byte 0x3F800000


.global lbl_8066DAC0
lbl_8066DAC0:
	# ROM: 0x577920
	.4byte 0x3E4CCCCD


.global lbl_8066DAC4
lbl_8066DAC4:
	# ROM: 0x577924
	.4byte 0x3B03126F


.global lbl_8066DAC8
lbl_8066DAC8:
	# ROM: 0x577928
	.4byte 0x3BC49BA6
	.4byte 0


.global lbl_8066DAD0
lbl_8066DAD0:
	# ROM: 0x577930
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066DAD8
lbl_8066DAD8:
	# ROM: 0x577938
	.4byte 0x4222F983


.global lbl_8066DADC
lbl_8066DADC:
	# ROM: 0x57793C
	.4byte 0x42040000


.global lbl_8066DAE0
lbl_8066DAE0:
	# ROM: 0x577940
	.4byte 0x40800000
	.4byte 0
	.asciz "JUview"
	.balign 4
	.asciz "mtIris"
	.balign 4


.global lbl_8066DAF8
lbl_8066DAF8:
	# ROM: 0x577958
	.4byte 0x3F800000


.global lbl_8066DAFC
lbl_8066DAFC:
	# ROM: 0x57795C
	.4byte 0
	.asciz "mtEye"
	.balign 4


.global lbl_8066DB08
lbl_8066DB08:
	# ROM: 0x577968
	.4byte 0


.global lbl_8066DB0C
lbl_8066DB0C:
	# ROM: 0x57796C
	.4byte 0x3F800000


.global lbl_8066DB10
lbl_8066DB10:
	# ROM: 0x577970
	.4byte 0x41200000


.global lbl_8066DB14
lbl_8066DB14:
	# ROM: 0x577974
	.4byte 0x3E4CCCCD


.global lbl_8066DB18
lbl_8066DB18:
	# ROM: 0x577978
	.4byte 0


.global lbl_8066DB1C
lbl_8066DB1C:
	# ROM: 0x57797C
	.4byte 0x41C80000


.global lbl_8066DB20
lbl_8066DB20:
	# ROM: 0x577980
	.4byte 0x42A00000


.global lbl_8066DB24
lbl_8066DB24:
	# ROM: 0x577984
	.4byte 0x3DCCCCCD


.global lbl_8066DB28
lbl_8066DB28:
	# ROM: 0x577988
	.4byte 0x3F800000


.global lbl_8066DB2C
lbl_8066DB2C:
	# ROM: 0x57798C
	.4byte 0x4222F983


.global lbl_8066DB30
lbl_8066DB30:
	# ROM: 0x577990
	.4byte 0x3F733333


.global lbl_8066DB34
lbl_8066DB34:
	# ROM: 0x577994
	.4byte 0xBF7FF972


.global lbl_8066DB38
lbl_8066DB38:
	# ROM: 0x577998
	.4byte 0x40000000


.global lbl_8066DB3C
lbl_8066DB3C:
	# ROM: 0x57799C
	.4byte 0x3F000000


.global lbl_8066DB40
lbl_8066DB40:
	# ROM: 0x5779A0
	.4byte 0x41200000


.global lbl_8066DB44
lbl_8066DB44:
	# ROM: 0x5779A4
	.4byte 0x3C23D70A


.global lbl_8066DB48
lbl_8066DB48:
	# ROM: 0x5779A8
	.4byte 0x3F666666


.global lbl_8066DB4C
lbl_8066DB4C:
	# ROM: 0x5779AC
	.4byte 0x3F4CCCCD


.global lbl_8066DB50
lbl_8066DB50:
	# ROM: 0x5779B0
	.4byte 0x3F7FFF58


.global lbl_8066DB54
lbl_8066DB54:
	# ROM: 0x5779B4
	.4byte 0xBF7FBE77


.global lbl_8066DB58
lbl_8066DB58:
	# ROM: 0x5779B8
	.4byte 0xBF800000


.global lbl_8066DB5C
lbl_8066DB5C:
	# ROM: 0x5779BC
	.4byte 0x3CC90FDB
	.asciz "DCbal"
	.balign 4
	.asciz "DCpla"
	.balign 4
	.asciz "DCcyl"
	.balign 4


.global lbl_8066DB78
lbl_8066DB78:
	# ROM: 0x5779D8
	.4byte 0


.global lbl_8066DB7C
lbl_8066DB7C:
	# ROM: 0x5779DC
	.4byte 0x3F800000


.global lbl_8066DB80
lbl_8066DB80:
	# ROM: 0x5779E0
	.4byte 0x3EB851EC


.global lbl_8066DB84
lbl_8066DB84:
	# ROM: 0x5779E4
	.4byte 0x3F19999A


.global lbl_8066DB88
lbl_8066DB88:
	# ROM: 0x5779E8
	.4byte 0x3ECCCCCD


.global lbl_8066DB8C
lbl_8066DB8C:
	# ROM: 0x5779EC
	.4byte 0x3F000000


.global lbl_8066DB90
lbl_8066DB90:
	# ROM: 0x5779F0
	.4byte 0xBF800000


.global lbl_8066DB94
lbl_8066DB94:
	# ROM: 0x5779F4
	.4byte 0x3CC90FDB


.global lbl_8066DB98
lbl_8066DB98:
	# ROM: 0x5779F8
	.4byte 0x4222F983


.global lbl_8066DB9C
lbl_8066DB9C:
	# ROM: 0x5779FC
	.4byte 0x3F333333


.global lbl_8066DBA0
lbl_8066DBA0:
	# ROM: 0x577A00
	.4byte 0x3F666666


.global lbl_8066DBA4
lbl_8066DBA4:
	# ROM: 0x577A04
	.4byte 0x3DCCCCCD


.global lbl_8066DBA8
lbl_8066DBA8:
	# ROM: 0x577A08
	.4byte 0xFFFFFFFF


.global lbl_8066DBAC
lbl_8066DBAC:
	# ROM: 0x577A0C
	.4byte 0xFFFFFFFF


.global lbl_8066DBB0
lbl_8066DBB0:
	# ROM: 0x577A10
	.4byte 0


.global lbl_8066DBB4
lbl_8066DBB4:
	# ROM: 0x577A14
	.4byte 0x3F800000


.global lbl_8066DBB8
lbl_8066DBB8:
	# ROM: 0x577A18
	.4byte 0xBF800000


.global lbl_8066DBBC
lbl_8066DBBC:
	# ROM: 0x577A1C
	.4byte 0x3F000000


.global lbl_8066DBC0
lbl_8066DBC0:
	# ROM: 0x577A20
	.4byte 0x3C8EFA35


.global lbl_8066DBC4
lbl_8066DBC4:
	# ROM: 0x577A24
	.4byte 0x42652EE1


.global lbl_8066DBC8
lbl_8066DBC8:
	# ROM: 0x577A28
	.4byte 0x437F0000
	.4byte 0


.global lbl_8066DBD0
lbl_8066DBD0:
	# ROM: 0x577A30
	.4byte 0x43300000
	.4byte 0


.global lbl_8066DBD8
lbl_8066DBD8:
	# ROM: 0x577A38
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066DBE0
lbl_8066DBE0:
	# ROM: 0x577A40
	.4byte 0x42340000
	.4byte 0


.global lbl_8066DBE8
lbl_8066DBE8:
	# ROM: 0x577A48
	.4byte 0


.global lbl_8066DBEC
lbl_8066DBEC:
	# ROM: 0x577A4C
	.4byte 0x3C23D70A


.global lbl_8066DBF0
lbl_8066DBF0:
	# ROM: 0x577A50
	.4byte 0x3F800000


.global lbl_8066DBF4
lbl_8066DBF4:
	# ROM: 0x577A54
	.4byte 0x3F8147AE


.global lbl_8066DBF8
lbl_8066DBF8:
	# ROM: 0x577A58
	.4byte 0x437F0000


.global lbl_8066DBFC
lbl_8066DBFC:
	# ROM: 0x577A5C
	.4byte 0x3F000000


.global lbl_8066DC00
lbl_8066DC00:
	# ROM: 0x577A60
	.4byte 0x4048F5C3


.global lbl_8066DC04
lbl_8066DC04:
	# ROM: 0x577A64
	.4byte 0x43340000


.global lbl_8066DC08
lbl_8066DC08:
	# ROM: 0x577A68
	.4byte 0x3F726E98


.global lbl_8066DC0C
lbl_8066DC0C:
	# ROM: 0x577A6C
	.4byte 0x40000000


.global lbl_8066DC10
lbl_8066DC10:
	# ROM: 0x577A70
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066DC18
lbl_8066DC18:
	# ROM: 0x577A78
	.4byte 0x43300000
	.4byte 0


.global lbl_8066DC20
lbl_8066DC20:
	# ROM: 0x577A80
	.4byte 0


.global lbl_8066DC24
lbl_8066DC24:
	# ROM: 0x577A84
	.4byte 0xFFFFFFFF


.global lbl_8066DC28
lbl_8066DC28:
	# ROM: 0x577A88
	.4byte 0xFFFFFFFF


.global lbl_8066DC2C
lbl_8066DC2C:
	# ROM: 0x577A8C
	.4byte 0x437F0000


.global lbl_8066DC30
lbl_8066DC30:
	# ROM: 0x577A90
	.4byte 0x3F800000


.global lbl_8066DC34
lbl_8066DC34:
	# ROM: 0x577A94
	.4byte 0x40C8F5C3


.global lbl_8066DC38
lbl_8066DC38:
	# ROM: 0x577A98
	.4byte 0x4048F5C3


.global lbl_8066DC3C
lbl_8066DC3C:
	# ROM: 0x577A9C
	.4byte 0x40C7AE14


.global lbl_8066DC40
lbl_8066DC40:
	# ROM: 0x577AA0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066DC48
lbl_8066DC48:
	# ROM: 0x577AA8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066DC50
lbl_8066DC50:
	# ROM: 0x577AB0
	.4byte 0x3F000000


.global lbl_8066DC54
lbl_8066DC54:
	# ROM: 0x577AB4
	.4byte 0x40000000


.global lbl_8066DC58
lbl_8066DC58:
	# ROM: 0x577AB8
	.4byte 0
	.4byte 0


.global lbl_8066DC60
lbl_8066DC60:
	# ROM: 0x577AC0
	.4byte 0x43300000
	.4byte 0


.global lbl_8066DC68
lbl_8066DC68:
	# ROM: 0x577AC8
	.4byte 0xFFFFFFFF


.global lbl_8066DC6C
lbl_8066DC6C:
	# ROM: 0x577ACC
	.4byte 0xFFFFFFFF


.global lbl_8066DC70
lbl_8066DC70:
	# ROM: 0x577AD0
	.4byte 0x3F000000


.global lbl_8066DC74
lbl_8066DC74:
	# ROM: 0x577AD4
	.4byte 0x437F0000


.global lbl_8066DC78
lbl_8066DC78:
	# ROM: 0x577AD8
	.4byte 0x3F800000
	.4byte 0


.global lbl_8066DC80
lbl_8066DC80:
	# ROM: 0x577AE0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8066DC88
lbl_8066DC88:
	# ROM: 0x577AE8
	.4byte 0


.global lbl_8066DC8C
lbl_8066DC8C:
	# ROM: 0x577AEC
	.4byte 0x3F800000


.global lbl_8066DC90
lbl_8066DC90:
	# ROM: 0x577AF0
	.4byte 0x4222F983
	.4byte 0


.global lbl_8066DC98
lbl_8066DC98:
	# ROM: 0x577AF8
	.4byte 0


.global lbl_8066DC9C
lbl_8066DC9C:
	# ROM: 0x577AFC
	.4byte 0x3F800000


.global lbl_8066DCA0
lbl_8066DCA0:
	# ROM: 0x577B00
	.4byte 0x437F0000
	.4byte 0


.global lbl_8066DCA8
lbl_8066DCA8:
	# ROM: 0x577B08
	.4byte 0x43300000
	.4byte 0


.global lbl_8066DCB0
lbl_8066DCB0:
	# ROM: 0x577B10
	.4byte 0


.global lbl_8066DCB4
lbl_8066DCB4:
	# ROM: 0x577B14
	.4byte 0xCB800000


.global lbl_8066DCB8
lbl_8066DCB8:
	# ROM: 0x577B18
	.4byte 0x3F800000


.global lbl_8066DCBC
lbl_8066DCBC:
	# ROM: 0x577B1C
	.4byte 0x40000000


.global lbl_8066DCC0
lbl_8066DCC0:
	# ROM: 0x577B20
	.4byte 0x43300000
	.4byte 0


.global lbl_8066DCC8
lbl_8066DCC8:
	# ROM: 0x577B28
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "/tmp/"
	.balign 4
