.include "macros.inc"

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.global lbl_8066588C
lbl_8066588C:
	# ROM: 0x57146C
	.4byte 0x7F800000


.global lbl_80665890
lbl_80665890:
	# ROM: 0x571470
	.4byte 0x7FF00000
	.4byte 0


.global lbl_80665898
lbl_80665898:
	# ROM: 0x571478
	.4byte 0x80000000
	.4byte 0


.global lbl_806658A0
lbl_806658A0:
	# ROM: 0x571480
	.4byte lbl_8053FFB8
	.4byte 0


.global lbl_806658A8
lbl_806658A8:
	.asciz "arc.c"
	.balign 4


.global lbl_806658B0
lbl_806658B0:
	# ROM: 0x571490
	.4byte lbl_80540070
	.4byte 0


.global lbl_806658B8
lbl_806658B8:
	# ROM: 0x571498
	.2byte 0x0010


.global lbl_806658BA
lbl_806658BA:
	# ROM: 0x57149A
	.2byte 0x0037


.global lbl_806658BC
lbl_806658BC:
	# ROM: 0x57149C
	.4byte 0x20000000


.global lbl_806658C0
lbl_806658C0:
	# ROM: 0x5714A0
	.4byte __AXFXAllocFunction


.global lbl_806658C4
lbl_806658C4:
	# ROM: 0x5714A4
	.4byte __AXFXFreeFunction


.global lbl_806658C8
lbl_806658C8:
	# ROM: 0x5714A8
	.4byte 0x00000001


.global lbl_806658CC
lbl_806658CC:
	# ROM: 0x5714AC
	.4byte 0xFFFFFFFF


.global lbl_806658D0
lbl_806658D0:
	# ROM: 0x5714B0
	.4byte 0x6F683000


.global lbl_806658D4
lbl_806658D4:
	# ROM: 0x5714B4
	.4byte 0x6F683100


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


.global lbl_80665920
lbl_80665920:
	# ROM: 0x571500
	.4byte 0
	.4byte 0


.global lbl_80665928
lbl_80665928:
	# ROM: 0x571508
	.4byte 0x001F0000


.global lbl_8066592C
lbl_8066592C:
	.asciz "TRUE"
	.balign 4


.global lbl_80665934
lbl_80665934:
	.asciz "FALSE"
	.balign 4
	.4byte 0


.global lbl_80665940
lbl_80665940:
	.asciz "*******"


.global lbl_80665948
lbl_80665948:
	.asciz "TRUE"
	.balign 4


.global lbl_80665950
lbl_80665950:
	.asciz "FALSE"
	.balign 4


.global lbl_80665958
lbl_80665958:
	.asciz "Bad UA"
	.balign 4


.global lbl_80665960
lbl_80665960:
	.asciz "Bad DM"
	.balign 4


.global lbl_80665968
lbl_80665968:
	# ROM: 0x571548
	.4byte lbl_805495F8
	.4byte 0


.global lbl_80665970
lbl_80665970:
	# ROM: 0x571550
	.4byte 0x00000001
	.4byte 0


.global lbl_80665978
lbl_80665978:
	.asciz "dvdfs.c"


.global lbl_80665980
lbl_80665980:
	# ROM: 0x571560
	.4byte lbl_80549920


.global lbl_80665984
lbl_80665984:
	# ROM: 0x571564
	.4byte 0x00000001


.global lbl_80665988
lbl_80665988:
	# ROM: 0x571568
	.4byte defaultOptionalCommandChecker


.global lbl_8066598C
lbl_8066598C:
	.asciz "dvd.c"
	.balign 4


.global lbl_80665994
lbl_80665994:
	# ROM: 0x571574
	.4byte 0xFFFFFFFF


.global lbl_80665998
lbl_80665998:
	# ROM: 0x571578
	.4byte lbl_8054A3DC
	.4byte lbl_8054A480


.global lbl_806659A0
lbl_806659A0:
	# ROM: 0x571580
	.4byte 0x00000001
	.4byte 0


.global lbl_806659A8
lbl_806659A8:
	# ROM: 0x571588
	.4byte 0xFFFFFFFF
	.4byte 0


.global lbl_806659B0
lbl_806659B0:
	.asciz "/dev/di"


.global lbl_806659B8
lbl_806659B8:
	# ROM: 0x571598
	.4byte lbl_8054B5C8
	.4byte 0


.global lbl_806659C0
lbl_806659C0:
	# ROM: 0x5715A0
	.4byte 0x00000001
	.4byte 0


.global lbl_806659C8
lbl_806659C8:
	# ROM: 0x5715A8
	.4byte 0xFFFFFFFF
	.4byte 0


.global lbl_806659D0
lbl_806659D0:
	.asciz "/dev/es"


.global lbl_806659D8
lbl_806659D8:
	# ROM: 0x5715B8
	.4byte lbl_8054B610
	.4byte 0


.global lbl_806659E0
lbl_806659E0:
	# ROM: 0x5715C0
	.4byte 0xFFFFFFFF
	.4byte 0


.global lbl_806659E8
lbl_806659E8:
	.asciz "/dev/fs"


.global lbl_806659F0
lbl_806659F0:
	# ROM: 0x5715D0
	.4byte lbl_8054B680
	.4byte 0


.global lbl_806659F8
lbl_806659F8:
	# ROM: 0x5715D8
	.4byte 0x00040102


.global lbl_806659FC
lbl_806659FC:
	# ROM: 0x5715DC
	.4byte 0x00080102


.global lbl_80665A00
lbl_80665A00:
	# ROM: 0x5715E0
	.4byte 0x000C0102
	.4byte 0


.global lbl_80665A08
lbl_80665A08:
	# ROM: 0x5715E8
	.4byte 0x80818283
	.4byte 0xA0A1A2A3


.global lbl_80665A10
lbl_80665A10:
	# ROM: 0x5715F0
	.4byte 0x84858687
	.4byte 0xA4A5A6A7


.global lbl_80665A18
lbl_80665A18:
	# ROM: 0x5715F8
	.4byte 0x88898A8B
	.4byte 0xA8A9AAAB


.global lbl_80665A20
lbl_80665A20:
	# ROM: 0x571600
	.4byte 0x8C8D8E8F
	.4byte 0xACADAEAF


.global lbl_80665A28
lbl_80665A28:
	# ROM: 0x571608
	.4byte 0x90919293
	.4byte 0xB0B1B2B3


.global lbl_80665A30
lbl_80665A30:
	# ROM: 0x571610
	.4byte 0x94959697
	.4byte 0xB4B5B6B7


.global lbl_80665A38
lbl_80665A38:
	# ROM: 0x571618
	.4byte 0x98999A9B
	.4byte 0xB8B9BABB


.global lbl_80665A40
lbl_80665A40:
	# ROM: 0x571620
	.4byte 0x00040105
	.4byte 0x02060000


.global lbl_80665A48
lbl_80665A48:
	# ROM: 0x571628
	.4byte 0x00020400
	.4byte 0x01030500


.global lbl_80665A50
lbl_80665A50:
	# ROM: 0x571630
	.4byte 0x00000001


.global lbl_80665A54
lbl_80665A54:
	# ROM: 0x571634
	.4byte 0xFFFFFFFF


.global lbl_80665A58
lbl_80665A58:
	# ROM: 0x571638
	.4byte lbl_80550490


.global lbl_80665A5C
lbl_80665A5C:
	# ROM: 0x57163C
	.float 1.0


.global lbl_80665A60
lbl_80665A60:
	# ROM: 0x571640
	.4byte 0


.global lbl_80665A64
lbl_80665A64:
	# ROM: 0x571644
	.float -1.0


.global lbl_80665A68
lbl_80665A68:
	# ROM: 0x571648
	.float 1.0


.global lbl_80665A6C
lbl_80665A6C:
	# ROM: 0x57164C
	.4byte 0


.global lbl_80665A70
lbl_80665A70:
	# ROM: 0x571650
	.float 0.2


.global lbl_80665A74
lbl_80665A74:
	# ROM: 0x571654
	.4byte 0x3D4CCCCD


.global lbl_80665A78
lbl_80665A78:
	# ROM: 0x571658
	.4byte 0x3D8F5C29


.global lbl_80665A7C
lbl_80665A7C:
	# ROM: 0x57165C
	.4byte 0x3D75C28F


.global lbl_80665A80
lbl_80665A80:
	# ROM: 0x571660
	.4byte 0x00640000


.global lbl_80665A84
lbl_80665A84:
	# ROM: 0x571664
	.4byte 0x3D4CCCCD


.global lbl_80665A88
lbl_80665A88:
	# ROM: 0x571668
	.4byte 0x40400000


.global lbl_80665A8C
lbl_80665A8C:
	# ROM: 0x57166C
	.4byte 0x3D23D70A


.global lbl_80665A90
lbl_80665A90:
	# ROM: 0x571670
	.4byte 0x3F666666


.global lbl_80665A94
lbl_80665A94:
	# ROM: 0x571674
	.4byte 0x3F666666


.global lbl_80665A98
lbl_80665A98:
	# ROM: 0x571678
	.4byte 0x3F666666


.global lbl_80665A9C
lbl_80665A9C:
	# ROM: 0x57167C
	.4byte 0x3F333333


.global lbl_80665AA0
lbl_80665AA0:
	# ROM: 0x571680
	.4byte 0x3DCCCCCD


.global lbl_80665AA4
lbl_80665AA4:
	# ROM: 0x571684
	.4byte 0x0000000F


.global lbl_80665AA8
lbl_80665AA8:
	# ROM: 0x571688
	.4byte 0x00000047


.global lbl_80665AAC
lbl_80665AAC:
	# ROM: 0x57168C
	.4byte 0x0000003C


.global lbl_80665AB0
lbl_80665AB0:
	# ROM: 0x571690
	.4byte 0x00000134


.global lbl_80665AB4
lbl_80665AB4:
	# ROM: 0x571694
	.4byte 0x0000001E


.global lbl_80665AB8
lbl_80665AB8:
	# ROM: 0x571698
	.4byte 0x000000B4


.global lbl_80665ABC
lbl_80665ABC:
	# ROM: 0x57169C
	.4byte 0x4059999A


.global lbl_80665AC0
lbl_80665AC0:
	# ROM: 0x5716A0
	.4byte 0x40066666


.global lbl_80665AC4
lbl_80665AC4:
	# ROM: 0x5716A4
	.4byte 0x00000100


.global lbl_80665AC8
lbl_80665AC8:
	# ROM: 0x5716A8
	.4byte 0x00000400


.global lbl_80665ACC
lbl_80665ACC:
	# ROM: 0x5716AC
	.4byte 0x32000000


.global lbl_80665AD0
lbl_80665AD0:
	# ROM: 0x5716B0
	.4byte 0x43C80000


.global lbl_80665AD4
lbl_80665AD4:
	# ROM: 0x5716B4
	.4byte 0x41C00000


.global lbl_80665AD8
lbl_80665AD8:
	# ROM: 0x5716B8
	.4byte 0
	.float 1.0


.global lbl_80665AE0
lbl_80665AE0:
	# ROM: 0x5716C0
	.4byte 0x2F000000


.global lbl_80665AE4
lbl_80665AE4:
	# ROM: 0x5716C4
	.4byte 0x2F257300


.global lbl_80665AE8
lbl_80665AE8:
	# ROM: 0x5716C8
	.4byte lbl_80551080


.global lbl_80665AEC
lbl_80665AEC:
	# ROM: 0x5716CC
	.4byte 0x2F000000


.global lbl_80665AF0
lbl_80665AF0:
	# ROM: 0x5716D0
	.4byte 0


.global lbl_80665AF4
lbl_80665AF4:
	# ROM: 0x5716D4
	.4byte 0x2E000000


.global lbl_80665AF8
lbl_80665AF8:
	# ROM: 0x5716D8
	.4byte 0x2E2E0000


.global lbl_80665AFC
lbl_80665AFC:
	# ROM: 0x5716DC
	.4byte 0x2F257300


.global lbl_80665B00
lbl_80665B00:
	.asciz "%s/%s"
	.balign 4


.global lbl_80665B08
lbl_80665B08:
	# ROM: 0x5716E8
	.4byte 0


.global lbl_80665B0C
lbl_80665B0C:
	# ROM: 0x5716EC
	.4byte 0x00200000

.global lbl_80665B10
lbl_80665B10:
	.asciz "/meta"
	.balign 4

.global lbl_80665B18
lbl_80665B18:
	.asciz "/ticket"


.global lbl_80665B20
lbl_80665B20:
	# ROM: 0x571700
	.4byte 0xFFFFFF01
	.4byte 0


.global lbl_80665B28
lbl_80665B28:
	# ROM: 0x571708
	.4byte lbl_80551300


.global lbl_80665B2C
lbl_80665B2C:
	.asciz "RVA 1\n"
	.balign 4


.global lbl_80665B34
lbl_80665B34:
	.asciz "%08x\n"
	.balign 4


.global lbl_80665B3C
lbl_80665B3C:
	.asciz "%s\n"


.global lbl_80665B40
lbl_80665B40:
	.asciz "OS.c"
	.balign 4

.global lbl_80665B48
lbl_80665B48:
	.asciz "HAEA"
	.balign 4


.global lbl_80665B50
lbl_80665B50:
	# ROM: 0x571730
	.4byte lbl_80665B48
	.4byte 0


.global lbl_80665B58
lbl_80665B58:
	# ROM: 0x571738
	.4byte 0xFFFFFFFF
	.4byte 0


.global lbl_80665B60
lbl_80665B60:
	# ROM: 0x571740
	.4byte 0xFFFFFFFF


.global lbl_80665B64
lbl_80665B64:
	# ROM: 0x571744
	.4byte 0xFFFFFFFF


.global lbl_80665B68
lbl_80665B68:
	# ROM: 0x571748
	.4byte 0x000000F8


.global lbl_80665B6C
lbl_80665B6C:
	# ROM: 0x57174C
	.4byte 0x0A000000


.global lbl_80665B70
lbl_80665B70:
	.asciz "%016llx"


.global lbl_80665B78
lbl_80665B78:
	# ROM: 0x571758
	.4byte 0x25640000
	.4byte 0


.global lbl_80665B80
lbl_80665B80:
	.asciz "%s\n"
	.4byte 0


.global lbl_80665B88
lbl_80665B88:
	# ROM: 0x571768
	.4byte 0xFFFF0000
	.4byte 0


.global lbl_80665B90
lbl_80665B90:
	# ROM: 0x571770
	.4byte DefaultSwitchThreadCallback
	.4byte 0


.global lbl_80665B98
lbl_80665B98:
	# ROM: 0x571778
	.4byte 0xFFFFFFFF
	.4byte 0


.global lbl_80665BA0
lbl_80665BA0:
	# ROM: 0x571780
	.4byte 0x00000009
	.4byte 0


.global lbl_80665BA8
lbl_80665BA8:
	# ROM: 0x571788
	.4byte 0xFFFFFFFF
	.4byte 0


.global lbl_80665BB0
lbl_80665BB0:
	.asciz "Expired"


.global lbl_80665BB8
lbl_80665BB8:
	# ROM: 0x571798
	.4byte 0x00000300


.global lbl_80665BBC
lbl_80665BBC:
	# ROM: 0x57179C
	.4byte 0x00000005


.global lbl_80665BC0
lbl_80665BC0:
	# ROM: 0x5717A0
	.4byte lbl_8055EEF8

.global lbl_80665BC4
lbl_80665BC4:
	.asciz "IPL.CB"
	.balign 4

.global lbl_80665BCC
lbl_80665BCC:
	.asciz "IPL.AR"
	.balign 4
	.4byte 0

.global lbl_80665BD8
lbl_80665BD8:
	.asciz "IPL.ARN"

.global lbl_80665BE0
lbl_80665BE0:
	.asciz "IPL.CD"
	.balign 4

.global lbl_80665BE8
lbl_80665BE8:
	.asciz "IPL.CD2"

.global lbl_80665BF0
lbl_80665BF0:
	.asciz "IPL.DH"
	.balign 4

.global lbl_80665BF8
lbl_80665BF8:
	.asciz "IPL.E60"

.global lbl_80665C00
lbl_80665C00:
	.asciz "IPL.FRC"

.global lbl_80665C08
lbl_80665C08:
	.asciz "IPL.IDL"

.global lbl_80665C10
lbl_80665C10:
	.asciz "IPL.INC"

.global lbl_80665C18
lbl_80665C18:
	.asciz "IPL.LNG"

.global lbl_80665C20
lbl_80665C20:
	.asciz "IPL.NIK"

.global lbl_80665C28
lbl_80665C28:
	.asciz "IPL.PC"
	.balign 4

.global lbl_80665C30
lbl_80665C30:
	.asciz "IPL.PGS"

.global lbl_80665C38
lbl_80665C38:
	.asciz "IPL.SSV"

.global lbl_80665C40
lbl_80665C40:
	.asciz "IPL.SND"

.global lbl_80665C48
lbl_80665C48:
	.asciz "IPL.UPT"

.global lbl_80665C50
lbl_80665C50:
	.asciz "NET.CNF"

.global lbl_80665C58
lbl_80665C58:
	.asciz "DEV.BTM"

.global lbl_80665C60
lbl_80665C60:
	.asciz "DEV.VIM"

.global lbl_80665C68
lbl_80665C68:
	.asciz "DEV.CTC"

.global lbl_80665C70
lbl_80665C70:
	.asciz "DEV.DSM"

.global lbl_80665C78
lbl_80665C78:
	.asciz "BT.DINF"

.global lbl_80665C80
lbl_80665C80:
	.asciz "BT.CDIF"

.global lbl_80665C88
lbl_80665C88:
	.asciz "BT.SENS"

.global lbl_80665C90
lbl_80665C90:
	.asciz "BT.SPKV"

.global lbl_80665C98
lbl_80665C98:
	.asciz "BT.MOT"
	.balign 4

.global lbl_80665CA0
lbl_80665CA0:
	.asciz "BT.BAR"
	.balign 4

.global lbl_80665CA8
lbl_80665CA8:
	.asciz "DVD.CNF"

.global lbl_80665CB0
lbl_80665CB0:
	.asciz "WWW.RST"

.global lbl_80665CB8
lbl_80665CB8:
	.asciz "IPL.TID"


.global lbl_80665CC0
lbl_80665CC0:
	.asciz "SCv0"
	.balign 4


.global lbl_80665CC8
lbl_80665CC8:
	.asciz "SCed"
	.balign 4


.global lbl_80665CD0
lbl_80665CD0:
	.asciz "AREA"
	.balign 4


.global lbl_80665CD8
lbl_80665CD8:
	.asciz "GAME"
	.balign 4


.global lbl_80665CE0
lbl_80665CE0:
	# ROM: 0x5718C0
	.4byte lbl_8055F138
	.4byte 0


.global lbl_80665CE8
lbl_80665CE8:
	.asciz "TPL.c"
	.balign 4


.global lbl_80665CF0
lbl_80665CF0:
	# ROM: 0x5718D0
	.4byte 0xFFFFFFFF


.global lbl_80665CF4
lbl_80665CF4:
	# ROM: 0x5718D4
	.4byte 0x01000000


.global lbl_80665CF8
lbl_80665CF8:
	.asciz "USB: "
	.balign 4


.global lbl_80665D00
lbl_80665D00:
	# ROM: 0x5718E0
	.4byte lbl_8055FAA0


.global lbl_80665D04
lbl_80665D04:
	# ROM: 0x5718E4
	.4byte 0x00000001


.global lbl_80665D08
lbl_80665D08:
	# ROM: 0x5718E8
	.4byte 0x000003E7


.global lbl_80665D0C
lbl_80665D0C:
	# ROM: 0x5718EC
	.4byte 0x000003E7


.global lbl_80665D10
lbl_80665D10:
	# ROM: 0x5718F0
	.4byte 0x00000001


.global lbl_80665D14
lbl_80665D14:
	# ROM: 0x5718F4
	.4byte 0x00000001


.global lbl_80665D18
lbl_80665D18:
	.asciz "vi.c"
	.balign 4


.global lbl_80665D20
lbl_80665D20:
	# ROM: 0x571900
	.4byte 0x00000001
	.4byte 0


.global lbl_80665D28
lbl_80665D28:
	# ROM: 0x571908
	.4byte 0x000000FF


.global lbl_80665D2C
lbl_80665D2C:
	# ROM: 0x57190C
	.byte 0xFF


.global lbl_80665D2D
lbl_80665D2D:
	# ROM: 0x57190D
	.byte 0xFF


.global lbl_80665D2E
lbl_80665D2E:
	# ROM: 0x57190E
	.byte 0xFF


.global lbl_80665D2F
lbl_80665D2F:
	# ROM: 0x57190F
	.byte 0xFF


.global lbl_80665D30
lbl_80665D30:
	# ROM: 0x571910
	.byte 0xFF


.global lbl_80665D31
lbl_80665D31:
	# ROM: 0x571911
	.byte 0xFF


.global lbl_80665D32
lbl_80665D32:
	# ROM: 0x571912
	.byte 0xFF


.global lbl_80665D33
lbl_80665D33:
	# ROM: 0x571913
	.byte 0xFF


.global lbl_80665D34
lbl_80665D34:
	# ROM: 0x571914
	.byte 0xFF


.global lbl_80665D35
lbl_80665D35:
	# ROM: 0x571915
	.byte 0xFF


.global lbl_80665D36
lbl_80665D36:
	# ROM: 0x571916
	.byte 0xFF


.global lbl_80665D37
lbl_80665D37:
	# ROM: 0x571917
	.byte 0xFF


.global lbl_80665D38
lbl_80665D38:
	# ROM: 0x571918
	.4byte lbl_80560608


.global lbl_80665D3C
lbl_80665D3C:
	# ROM: 0x57191C
	.4byte 0xFFFFFFFF


.global lbl_80665D40
lbl_80665D40:
	# ROM: 0x571920
	.4byte 0x00060004
	.4byte 0x00060000


.global lbl_80665D48
lbl_80665D48:
	# ROM: 0x571928
	.4byte 0x001E001E
	.4byte 0x001E0000


.global lbl_80665D50
lbl_80665D50:
	# ROM: 0x571930
	.4byte 0x322E3000


.global lbl_80665D54
lbl_80665D54:
	.asciz "opened"
	.balign 4


.global lbl_80665D5C
lbl_80665D5C:
	.asciz "closed"
	.balign 4
	.4byte 0


.global lbl_80665D68
lbl_80665D68:
	.asciz " %s\n"
	.balign 4


.global lbl_80665D70
lbl_80665D70:
	.asciz "RFNJ"
	.balign 4


.global lbl_80665D78
lbl_80665D78:
	.asciz "WUD.c"
	.balign 4


.global lbl_80665D80
lbl_80665D80:
	# ROM: 0x571960
	.4byte 0x01000000


.global lbl_80665D84
lbl_80665D84:
	# ROM: 0x571964
	.4byte 0x0A000000


.global lbl_80665D88
lbl_80665D88:
	# ROM: 0x571968
	.4byte func_803E73B0
	.4byte func_803E73B8


.global lbl_80665D90
lbl_80665D90:
	# ROM: 0x571970
	.float 1.0
	.4byte 0


.global lbl_80665D98
lbl_80665D98:
	# ROM: 0x571978
	.4byte 0xFFFFFFFF


.global lbl_80665D9C
lbl_80665D9C:
	# ROM: 0x57197C
	.4byte lbl_80622C40


.global lbl_80665DA0
lbl_80665DA0:
	.asciz "NodeMix"


.global lbl_80665DA8
lbl_80665DA8:
	# ROM: 0x571988
	.4byte 0xFFFFFFFC


.global lbl_80665DAC
lbl_80665DAC:
	# ROM: 0x57198C
	.4byte 0xFFFFFFFC


.global lbl_80665DB0
lbl_80665DB0:
	# ROM: 0x571990
	.4byte 0x00000020


.global lbl_80665DB4
lbl_80665DB4:
	# ROM: 0x571994
	.4byte 0x00000020


.global lbl_80665DB8
lbl_80665DB8:
	# ROM: 0x571998
	.4byte 0xFFFFFFFC


.global lbl_80665DBC
lbl_80665DBC:
	# ROM: 0x57199C
	.4byte 0xFFFFFFFC


.global lbl_80665DC0
lbl_80665DC0:
	.asciz "NodeMix"


.global lbl_80665DC8
lbl_80665DC8:
	.asciz "DrawOpa"


.global lbl_80665DD0
lbl_80665DD0:
	.asciz "DrawXlu"


.global lbl_80665DD8
lbl_80665DD8:
	# ROM: 0x5719B8
	.4byte 0xFFFFFFFF
	.4byte 0


.global lbl_80665DE0
lbl_80665DE0:
	# ROM: 0x5719C0
	.4byte lbl_8056D108
	.4byte 0


.global lbl_80665DE8
lbl_80665DE8:
	# ROM: 0x5719C8
	.4byte lbl_8056D188
	.4byte 0


.global lbl_80665DF0
lbl_80665DF0:
	# ROM: 0x5719D0
	.4byte 0x000A0000
	.4byte 0


.global lbl_80665DF8
lbl_80665DF8:
	# ROM: 0x5719D8
	.4byte 0x2E000000


.global lbl_80665DFC
lbl_80665DFC:
	# ROM: 0x5719DC
	.4byte 0x2E2E0000


.global lbl_80665E00
lbl_80665E00:
	# ROM: 0x5719E0
	.4byte 0x38D1B717
	.4byte 0


.global lbl_80665E08
lbl_80665E08:
	# ROM: 0x5719E8
	.4byte 0x54000000


.global lbl_80665E0C
lbl_80665E0C:
	# ROM: 0x5719EC
	.4byte 0x47000000


.global lbl_80665E10
lbl_80665E10:
	# ROM: 0x5719F0
	.4byte 0
	.4byte 0


.global lbl_80665E18
lbl_80665E18:
	# ROM: 0x5719F8
	.4byte lbl_8056E510
	.4byte 0


.global lbl_80665E20
lbl_80665E20:
	# ROM: 0x571A00
	.4byte 0x12345678
	.4byte 0


.global lbl_80665E28
lbl_80665E28:
	# ROM: 0x571A08
	.4byte lbl_8066C9A8


.global lbl_80665E2C
lbl_80665E2C:
	# ROM: 0x571A0C
	.4byte lbl_8066C9B0


.global lbl_80665E30
lbl_80665E30:
	# ROM: 0x571A10
	.4byte 0xFFFFFFFF


.global lbl_80665E34
lbl_80665E34:
	# ROM: 0x571A14
	.4byte 0xFFFFFFFF


.global lbl_80665E38
lbl_80665E38:
	# ROM: 0x571A18
	.byte 0x01


.global lbl_80665E39
lbl_80665E39:
	.byte 0x01
	.byte 0x00
	.byte 0x00

.global arenaMemorySize
arenaMemorySize:
	# ROM: 0x571A1C
	.4byte 0x00600000


.global lbl_80665E40
lbl_80665E40:
	# ROM: 0x571A20
	.4byte lbl_80525D78


.global lbl_80665E44
lbl_80665E44:
	# ROM: 0x571A24
	.4byte 0xFFFFFFFF

.global lbl_80665E48
lbl_80665E48:
	.4byte lbl_80525D8C
	.4byte 0

.global lbl_80665E50
lbl_80665E50:
	.4byte lbl_80525D9C
	.4byte lbl_8056EA40

.global lbl_80665E58
lbl_80665E58:
	.4byte lbl_80525DB4
	.4byte 0

.global lbl_80665E60
lbl_80665E60:
	.4byte lbl_80525DE0
	.4byte lbl_8056EB04

.global lbl_80665E68
lbl_80665E68:
	.4byte lbl_80525DF8
	.4byte 0

.global lbl_80665E70
lbl_80665E70:
	.4byte lbl_80525E20
	.4byte lbl_8056EBC0

.global lbl_80665E78
lbl_80665E78:
	.4byte lbl_80525E40
	.4byte lbl_8056EC78

.global lbl_80665E80
lbl_80665E80:
	.4byte lbl_80525E58
	.4byte lbl_8056ED30

.global lbl_80665E88
lbl_80665E88:
	.4byte lbl_8066CAC8
	.4byte 0

.global lbl_80665E90
lbl_80665E90:
	.4byte lbl_80525EA0
	.4byte lbl_8056EDD4

.global lbl_80665E98
lbl_80665E98:
	.4byte lbl_80525EC8
	.4byte lbl_8056EE1C

.global lbl_80665EA0
lbl_80665EA0:
	.4byte lbl_8066CAD8
	.4byte lbl_8056EF28

.global lbl_80665EA8
lbl_80665EA8:
	.4byte lbl_80525EF8
	.4byte 0

.global lbl_80665EB0
lbl_80665EB0:
	.4byte lbl_80525F08
	.4byte lbl_8056EF5C

.global lbl_80665EB8
lbl_80665EB8:
	.4byte lbl_80525F20
	.4byte 0

.global lbl_80665EC0
lbl_80665EC0:
	.4byte lbl_80525F3C
	.4byte 0

.global lbl_80665EC8
lbl_80665EC8:
	.4byte lbl_80525F68
	.4byte 0

.global lbl_80665ED0
lbl_80665ED0:
	.4byte lbl_80525F78
	.4byte lbl_8056F028

.global lbl_80665ED8
lbl_80665ED8:
	.4byte lbl_80525F90
	.4byte lbl_8056F0E0

.global lbl_80665EE0
lbl_80665EE0:
	.4byte lbl_80526020
	.4byte lbl_8056F198

.global lbl_80665EE8
lbl_80665EE8:
	.4byte lbl_80526030
	.4byte lbl_8056F250

.global lbl_80665EF0
lbl_80665EF0:
	.4byte lbl_805260A8
	.4byte lbl_8056F308

.global lbl_80665EF8
lbl_80665EF8:
	.4byte lbl_80526130
	.4byte lbl_8056F3C0

.global lbl_80665F00
lbl_80665F00:
	.4byte lbl_80526140
	.4byte 0

.global lbl_80665F08
lbl_80665F08:
	.4byte lbl_80526160
	.4byte 0

.global lbl_80665F10
lbl_80665F10:
	.4byte lbl_80526278
	.4byte lbl_8056F4D8

.global lbl_80665F18
lbl_80665F18:
	.4byte lbl_8052628C
	.4byte lbl_8056F598

.global lbl_80665F20
lbl_80665F20:
	.4byte lbl_80526298
	.4byte lbl_8056F650

.global lbl_80665F28
lbl_80665F28:
	.4byte lbl_80526320
	.4byte lbl_8056F764

.global lbl_80665F30
lbl_80665F30:
	.4byte lbl_8052632C
	.4byte lbl_8056F78C

.global lbl_80665F38
lbl_80665F38:
	.4byte lbl_80526344
	.4byte 0

.global lbl_80665F40
lbl_80665F40:
	.4byte lbl_80526368
	.4byte 0


.global lbl_80665F48
lbl_80665F48:
	# ROM: 0x571B28
	.4byte 0x00000001


.global lbl_80665F4C
lbl_80665F4C:
	# ROM: 0x571B2C
	.4byte 0x00FFFFFF


.global lbl_80665F50
lbl_80665F50:
	# ROM: 0x571B30
	.4byte 0x00000001


.global lbl_80665F54
lbl_80665F54:
	# ROM: 0x571B34
	.4byte 0x00000001


.global lbl_80665F58
lbl_80665F58:
	# ROM: 0x571B38
	.4byte 0x00000001


.global lbl_80665F5C
lbl_80665F5C:
	# ROM: 0x571B3C
	.4byte 0x00000001


.global lbl_80665F60
lbl_80665F60:
	# ROM: 0x571B40
	.4byte 0x00000001


.global lbl_80665F64
lbl_80665F64:
	# ROM: 0x571B44
	.4byte 0


.global lbl_80665F68
lbl_80665F68:
	# ROM: 0x571B48
	.4byte 0


.global lbl_80665F6C
lbl_80665F6C:
	# ROM: 0x571B4C
	.4byte 0


.global lbl_80665F70
lbl_80665F70:
	# ROM: 0x571B50
	.4byte 0x00000001


.global lbl_80665F74
lbl_80665F74:
	# ROM: 0x571B54
	.4byte 0x00000002


.global lbl_80665F78
lbl_80665F78:
	# ROM: 0x571B58
	.4byte 0x00000003
	.4byte 0

.global lbl_80665F80
lbl_80665F80:
	.4byte lbl_80526378
	.4byte lbl_8056F818

.global lbl_80665F88
lbl_80665F88:
	.4byte lbl_80526384
	.4byte 0

.global lbl_80665F90
lbl_80665F90:
	.4byte lbl_80526394
	.4byte 0


.global lbl_80665F98
lbl_80665F98:
	# ROM: 0x571B78
	.4byte lbl_805263A0


.global lbl_80665F9C
lbl_80665F9C:
	# ROM: 0x571B7C
	.4byte lbl_805263B0


.global lbl_80665FA0
lbl_80665FA0:
	# ROM: 0x571B80
	.4byte 0xFFFFFFFF


.global lbl_80665FA4
lbl_80665FA4:
	# ROM: 0x571B84
	.4byte 0xFFFFFFFF

.global lbl_80665FA8
lbl_80665FA8:
	.4byte lbl_805263C0
	.4byte lbl_8056F8E0

.global lbl_80665FB0
lbl_80665FB0:
	.4byte lbl_8066CBA8
	.4byte lbl_8056F998

.global lbl_80665FB8
lbl_80665FB8:
	.4byte lbl_80526460
	.4byte lbl_8056FA50

.global lbl_80665FC0
lbl_80665FC0:
	.4byte lbl_80526470
	.4byte lbl_8056FA78

.global lbl_80665FC8
lbl_80665FC8:
	.4byte lbl_80526490
	.4byte 0


.global lbl_80665FD0
lbl_80665FD0:
	# ROM: 0x571BB0
	.4byte 0x01000000
	.4byte 0

.global lbl_80665FD8
lbl_80665FD8:
	.4byte lbl_805264B8
	.4byte lbl_8056FB30

.global lbl_80665FE0
lbl_80665FE0:
	.4byte lbl_805264C4
	.4byte lbl_8056FB58

.global lbl_80665FE8
lbl_80665FE8:
	.4byte lbl_805264DC
	.4byte 0


.global lbl_80665FF0
lbl_80665FF0:
	# ROM: 0x571BD0
	.4byte lbl_8066CBB0


.global lbl_80665FF4
lbl_80665FF4:
	# ROM: 0x571BD4
	.4byte lbl_8066CBB0


.global lbl_80665FF8
lbl_80665FF8:
	# ROM: 0x571BD8
	.4byte lbl_8066CBB0
	.4byte 0

.global lbl_80666000
lbl_80666000:
	.4byte lbl_805265A8
	.4byte lbl_8056FC48

.global lbl_80666008
lbl_80666008:
	.4byte lbl_805265C0
	.4byte lbl_8056FD08

.global lbl_80666010
lbl_80666010:
	.4byte lbl_80526658
	.4byte lbl_8056FDCC

.global lbl_80666018
lbl_80666018:
	.4byte lbl_80526668
	.4byte lbl_8056FE8C


.global lbl_80666020
lbl_80666020:
	# ROM: 0x571C00
	.4byte lbl_80526680


.global lbl_80666024
lbl_80666024:
	# ROM: 0x571C04
	.4byte lbl_80526694

.global lbl_80666028
lbl_80666028:
	.4byte lbl_805266A8
	.4byte lbl_8056FF48

.global lbl_80666030
lbl_80666030:
	.4byte lbl_805266B4
	.4byte lbl_8056FF70

.global lbl_80666038
lbl_80666038:
	.4byte lbl_805266D0
	.4byte 0

.global lbl_80666040
lbl_80666040:
	.4byte lbl_80526718
	.4byte lbl_8056FFC4

.global lbl_80666048
lbl_80666048:
	.4byte lbl_80526730
	.4byte 0

.global lbl_80666050
lbl_80666050:
	.4byte lbl_80526740
	.4byte lbl_8057000C

.global lbl_80666058
lbl_80666058:
	.4byte lbl_80526758
	.4byte lbl_805700B8

.global lbl_80666060
lbl_80666060:
	.4byte lbl_8052676C
	.4byte lbl_805700D8

.global lbl_80666068
lbl_80666068:
	.4byte lbl_8052679C
	.4byte 0

.global lbl_80666070
lbl_80666070:
	.4byte lbl_805267D0
	.4byte lbl_80570190


.global lbl_80666078
lbl_80666078:
	# ROM: 0x571C58
	.4byte 0x00200000


.global lbl_8066607C
lbl_8066607C:
	# ROM: 0x571C5C
	.4byte lbl_8066CBE8

.global lbl_80666080
lbl_80666080:
	.4byte lbl_805267E8
	.4byte lbl_80570268


.global lbl_80666088
lbl_80666088:
	# ROM: 0x571C68
	.4byte lbl_8066CC10
	.4byte 0

.global lbl_80666090
lbl_80666090:
	.4byte lbl_805267F8
	.4byte lbl_80570330

.global lbl_80666098
lbl_80666098:
	.4byte lbl_80526824
	.4byte lbl_805703F0

.global lbl_806660A0
lbl_806660A0:
	.4byte lbl_80526850
	.4byte lbl_805704B0

.global lbl_806660A8
lbl_806660A8:
	.4byte lbl_80526888
	.4byte lbl_805705C8

.global lbl_806660B0
lbl_806660B0:
	.4byte lbl_8066CC88
	.4byte lbl_80570688

.global lbl_806660B8
lbl_806660B8:
	.4byte lbl_8066CC90
	.4byte lbl_80570770

.global lbl_806660C0
lbl_806660C0:
	.4byte lbl_80526928
	.4byte lbl_80570850


.global lbl_806660C8
lbl_806660C8:
	# ROM: 0x571CA8
	.4byte 0x0000BB80


.global lbl_806660CC
lbl_806660CC:
	# ROM: 0x571CAC
	.4byte lbl_8066CCC0

.global lbl_806660D0
lbl_806660D0:
	.4byte lbl_805269C0
	.4byte lbl_80570924

.global lbl_806660D8
lbl_806660D8:
	.4byte lbl_8066CCE8
	.4byte lbl_805709D8


.global lbl_806660E0
lbl_806660E0:
	# ROM: 0x571CC0
	.4byte 0xFFFFFFFF
	.4byte 0

.global lbl_806660E8
lbl_806660E8:
	.4byte lbl_8066CD28
	.4byte lbl_80570A90

.global lbl_806660F0
lbl_806660F0:
	.4byte lbl_80526A98
	.4byte lbl_80570B78

.global lbl_806660F8
lbl_806660F8:
	.4byte lbl_80526AD8
	.4byte lbl_80570C38

.global lbl_80666100
lbl_80666100:
	.4byte lbl_80526AF8
	.4byte lbl_80570CF0

.global lbl_80666108
lbl_80666108:
	.4byte lbl_80526B08
	.4byte 0

.global lbl_80666110
lbl_80666110:
	.4byte lbl_8066CD70
	.4byte lbl_80570E30

.global lbl_80666118
lbl_80666118:
	.4byte lbl_80527688
	.4byte lbl_80570EE4

.global lbl_80666120
lbl_80666120:
	.4byte lbl_80527694
	.4byte lbl_80570F2C


.global lbl_80666128
lbl_80666128:
	# ROM: 0x571D08
	.4byte 0x72656600


.global lbl_8066612C
lbl_8066612C:
	# ROM: 0x571D0C
	.4byte 0x72656600


.global lbl_80666130
lbl_80666130:
	# ROM: 0x571D10
	.4byte 0x72656600
	.4byte 0


.global lbl_80666138
lbl_80666138:
	# ROM: 0x571D18
	.4byte 0x3BA3D70A


.global lbl_8066613C
lbl_8066613C:
	# ROM: 0x571D1C
	.4byte 0x3BA3D70A


.global lbl_80666140
lbl_80666140:
	# ROM: 0x571D20
	.4byte 0x3BA3D70A
	.4byte 0


.global lbl_80666148
lbl_80666148:
	# ROM: 0x571D28
	.4byte 0x0000FFFF
	.4byte 0


.global lbl_80666150
lbl_80666150:
	# ROM: 0x571D30
	.4byte 0x42B40000


.global lbl_80666154
lbl_80666154:
	# ROM: 0x571D34
	.4byte 0


.global lbl_80666158
lbl_80666158:
	# ROM: 0x571D38
	.4byte 0x72656600


.global lbl_8066615C
lbl_8066615C:
	# ROM: 0x571D3C
	.4byte 0x72656600


.global lbl_80666160
lbl_80666160:
	# ROM: 0x571D40
	.4byte 0x72656600
	.4byte 0

.global lbl_80666168
lbl_80666168:
	.4byte lbl_805276A8
	.4byte lbl_805713D8


.global lbl_80666170
lbl_80666170:
	# ROM: 0x571D50
	.4byte 0x3B03126F


.global lbl_80666174
lbl_80666174:
	# ROM: 0x571D54
	.4byte 0x3BA3D70A


.global lbl_80666178
lbl_80666178:
	# ROM: 0x571D58
	.4byte 0xFFFFFFFF


.global lbl_8066617C
lbl_8066617C:
	# ROM: 0x571D5C
	.4byte 0x72656600


.global lbl_80666180
lbl_80666180:
	# ROM: 0x571D60
	.4byte 0x72656600


.global lbl_80666184
lbl_80666184:
	# ROM: 0x571D64
	.4byte 0x72656600

.global lbl_80666188
lbl_80666188:
	.4byte lbl_805276C0
	.4byte lbl_805713F8

.global lbl_80666190
lbl_80666190:
	.4byte lbl_805276E0
	.4byte 0

.global lbl_80666198
lbl_80666198:
	.4byte lbl_805276F0
	.4byte lbl_80571418

.global lbl_806661A0
lbl_806661A0:
	.4byte lbl_80527708
	.4byte lbl_80571438

.global lbl_806661A8
lbl_806661A8:
	.4byte lbl_80527748
	.4byte lbl_80571458

.global lbl_806661B0
lbl_806661B0:
	.4byte lbl_80527764
	.4byte lbl_80571480

.global lbl_806661B8
lbl_806661B8:
	.4byte lbl_8052777C
	.4byte lbl_805714A0


.global lbl_806661C0
lbl_806661C0:
	# ROM: 0x571DA0
	.4byte 0x3EAAAAAB
	.4byte 0

.global lbl_806661C8
lbl_806661C8:
	.4byte lbl_80527798
	.4byte lbl_80571500

.global lbl_806661D0
lbl_806661D0:
	.4byte lbl_805277AC
	.4byte lbl_80571514

.global lbl_806661D8
lbl_806661D8:
	.4byte lbl_805277C0
	.4byte lbl_80571540

.global lbl_806661E0
lbl_806661E0:
	.4byte lbl_805277D0
	.4byte lbl_80571570

.global lbl_806661E8
lbl_806661E8:
	.4byte lbl_805277E0
	.4byte lbl_805715A0


.global lbl_806661F0
lbl_806661F0:
	# ROM: 0x571DD0
	.4byte lbl_8066D090


.global lbl_806661F4
lbl_806661F4:
	# ROM: 0x571DD4
	.4byte lbl_8066D098

.global lbl_806661F8
lbl_806661F8:
	.4byte lbl_80527800
	.4byte 0

.global lbl_80666200
lbl_80666200:
	.4byte lbl_8052781C
	.4byte 0


.global lbl_80666208
lbl_80666208:
	.asciz "ResMat"
	.balign 4


.global lbl_80666210
lbl_80666210:
	# ROM: 0x571DF0
	.4byte 0x72656600


.global lbl_80666214
lbl_80666214:
	.asciz "ResTev"
	.balign 4


.global lbl_8066621C
lbl_8066621C:
	# ROM: 0x571DFC
	.4byte 0x72656600


.global lbl_80666220
lbl_80666220:
	.asciz "ResMdl"
	.balign 4


.global lbl_80666228
lbl_80666228:
	# ROM: 0x571E08
	.4byte 0x72656600


.global lbl_8066622C
lbl_8066622C:
	# ROM: 0x571E0C
	.4byte 0x72656600


.global lbl_80666230
lbl_80666230:
	.asciz "ResNode"


.global lbl_80666238
lbl_80666238:
	# ROM: 0x571E18
	.4byte 0x72656600


.global lbl_8066623C
lbl_8066623C:
	# ROM: 0x571E1C
	.4byte 0x72656600


.global lbl_80666240
lbl_80666240:
	# ROM: 0x571E20
	.4byte 0x72656600


.global lbl_80666244
lbl_80666244:
	# ROM: 0x571E24
	.4byte 0x72656600


.global lbl_80666248
lbl_80666248:
	.asciz "ResDic"
	.balign 4


.global lbl_80666250
lbl_80666250:
	# ROM: 0x571E30
	.4byte 0x72656600
	.4byte 0

.global lbl_80666258
lbl_80666258:
	.4byte lbl_80527840
	.4byte lbl_80571D74

.global lbl_80666260
lbl_80666260:
	.4byte lbl_80527850
	.4byte lbl_80571D94

.global lbl_80666268
lbl_80666268:
	.4byte lbl_80527864
	.4byte 0

.global lbl_80666270
lbl_80666270:
	.4byte lbl_80527880
	.4byte 0


.global lbl_80666278
lbl_80666278:
	# ROM: 0x571E58
	.4byte lbl_80527890


.global lbl_8066627C
lbl_8066627C:
	# ROM: 0x571E5C
	.4byte lbl_8066D0F0


.global lbl_80666280
lbl_80666280:
	# ROM: 0x571E60
	.4byte lbl_8066D0F8


.global lbl_80666284
lbl_80666284:
	# ROM: 0x571E64
	.4byte 0x3D03126F


.global lbl_80666288
lbl_80666288:
	# ROM: 0x571E68
	.4byte 0x72656600


.global lbl_8066628C
lbl_8066628C:
	# ROM: 0x571E6C
	.4byte 0x72656600


.global lbl_80666290
lbl_80666290:
	# ROM: 0x571E70
	.4byte 0x72656600
	.4byte 0

.global lbl_80666298
lbl_80666298:
	.4byte lbl_8066D198
	.4byte 0

.global lbl_806662A0
lbl_806662A0:
	.4byte lbl_805278C8
	.4byte lbl_80571EC4

.global lbl_806662A8
lbl_806662A8:
	.4byte lbl_8066D1A0
	.4byte lbl_80571EF8

.global lbl_806662B0
lbl_806662B0:
	.4byte lbl_805278D4
	.4byte lbl_80571F24

.global lbl_806662B8
lbl_806662B8:
	.4byte lbl_805278E8
	.4byte 0

.global lbl_806662C0
lbl_806662C0:
	.4byte lbl_805278F8
	.4byte lbl_8057200C


.global lbl_806662C8
lbl_806662C8:
	# ROM: 0x571EA8
	.4byte 0xFFFFFFFF


.global lbl_806662CC
lbl_806662CC:
	# ROM: 0x571EAC
	.4byte 0xFFFFFFFF

.global lbl_806662D0
lbl_806662D0:
	.4byte lbl_80527938
	.4byte lbl_80572030


.global lbl_806662D8
lbl_806662D8:
	# ROM: 0x571EB8
	.4byte 0x72656600


.global lbl_806662DC
lbl_806662DC:
	# ROM: 0x571EBC
	.4byte 0x72656600

.global lbl_806662E0
lbl_806662E0:
	.4byte lbl_80527958
	.4byte 0

.global lbl_806662E8
lbl_806662E8:
	.4byte lbl_80527978
	.4byte lbl_805720D4

.global lbl_806662F0
lbl_806662F0:
	.4byte lbl_8052798C
	.4byte 0

.global lbl_806662F8
lbl_806662F8:
	.4byte lbl_805279A0
	.4byte lbl_805720F4


.global lbl_80666300
lbl_80666300:
	# ROM: 0x571EE0
	.4byte 0x72656600


.global lbl_80666304
lbl_80666304:
	# ROM: 0x571EE4
	.4byte 0x72656600

.global lbl_80666308
lbl_80666308:
	.4byte lbl_805279C8
	.4byte lbl_80572244

.global lbl_80666310
lbl_80666310:
	.4byte lbl_805279D4
	.4byte 0

.global lbl_80666318
lbl_80666318:
	.4byte lbl_805279E0
	.4byte lbl_80572274

.global lbl_80666320
lbl_80666320:
	.4byte lbl_805279EC
	.4byte 0


.global lbl_80666328
lbl_80666328:
	# ROM: 0x571F08
	.4byte lbl_80527A00


.global lbl_8066632C
lbl_8066632C:
	# ROM: 0x571F0C
	.4byte 0xFFFFFFFF

.global lbl_80666330
lbl_80666330:
	.4byte lbl_80527A20
	.4byte lbl_80572310


.global lbl_80666338
lbl_80666338:
	# ROM: 0x571F18
	.4byte lbl_8066D330
	.4byte 0

.global lbl_80666340
lbl_80666340:
	.4byte lbl_80527A30
	.4byte lbl_80572388

.global lbl_80666348
lbl_80666348:
	.4byte lbl_80527A44
	.4byte 0


.global lbl_80666350
lbl_80666350:
	# ROM: 0x571F30
	.4byte 0x72656600


.global lbl_80666354
lbl_80666354:
	# ROM: 0x571F34
	.4byte 0x72656600

.global lbl_80666358
lbl_80666358:
	.4byte lbl_80527A50
	.4byte 0

.global lbl_80666360
lbl_80666360:
	.4byte lbl_80527A60
	.4byte 0

.global lbl_80666368
lbl_80666368:
	.4byte lbl_80527A70
	.4byte lbl_805723DC

.global lbl_80666370
lbl_80666370:
	.4byte lbl_80527AB8
	.4byte 0

.global lbl_80666378
lbl_80666378:
	.4byte lbl_80527B08
	.4byte lbl_80572400

.global lbl_80666380
lbl_80666380:
	.4byte lbl_80527B20
	.4byte 0

.global lbl_80666388
lbl_80666388:
	.4byte lbl_80527B40
	.4byte 0

.global lbl_80666390
lbl_80666390:
	.4byte lbl_80527B50
	.4byte 0

.global lbl_80666398
lbl_80666398:
	.4byte lbl_80527B60
	.4byte 0

.global lbl_806663A0
lbl_806663A0:
	.4byte lbl_80527B70
	.4byte lbl_805724F8


.global lbl_806663A8
lbl_806663A8:
	# ROM: 0x571F88
	.4byte 0x72656600
	.4byte 0


.global lbl_806663B0
lbl_806663B0:
	# ROM: 0x571F90
	.4byte lbl_8066D5E0
	.4byte 0

.global lbl_806663B8
lbl_806663B8:
	.4byte lbl_80527D30
	.4byte lbl_80572BD4

.global lbl_806663C0
lbl_806663C0:
	.4byte lbl_80527D40
	.4byte lbl_80572BFC


.global lbl_806663C8
lbl_806663C8:
	# ROM: 0x571FA8
	.4byte 0x72656600
	.4byte 0

.global lbl_806663D0
lbl_806663D0:
	.4byte lbl_80527D50
	.4byte lbl_80572CD4

.global lbl_806663D8
lbl_806663D8:
	.4byte lbl_80527D64
	.4byte lbl_80572D1C

.global lbl_806663E0
lbl_806663E0:
	.4byte lbl_80527D80
	.4byte lbl_80572D44


.global lbl_806663E8
lbl_806663E8:
	# ROM: 0x571FC8
	.4byte lbl_8065FA60


.global lbl_806663EC
lbl_806663EC:
	# ROM: 0x571FCC
	.4byte lbl_8065FA60


.global lbl_806663F0
lbl_806663F0:
	# ROM: 0x571FD0
	.4byte 0x42480000


.global lbl_806663F4
lbl_806663F4:
	# ROM: 0x571FD4
	.4byte 0x41A00000


.global lbl_806663F8
lbl_806663F8:
	# ROM: 0x571FD8
	.4byte func_804BF274
	.4byte 0

.global lbl_80666400
lbl_80666400:
	.4byte lbl_8066D774
	.4byte 0


.global lbl_80666408
lbl_80666408:
	# ROM: 0x571FE8
	.4byte 0x00004650


.global lbl_8066640C
lbl_8066640C:
	# ROM: 0x571FEC
	.4byte 0x00005460


.global lbl_80666410
lbl_80666410:
	# ROM: 0x571FF0
	.4byte 0x00010428


.global lbl_80666414
lbl_80666414:
	# ROM: 0x571FF4
	.4byte 0x00010B30

.global lbl_80666418
lbl_80666418:
	.4byte lbl_80527D90
	.4byte lbl_805731B4

.global lbl_80666420
lbl_80666420:
	.4byte lbl_80527DA8
	.4byte 0

.global lbl_80666428
lbl_80666428:
	.4byte lbl_80527DC8
	.4byte lbl_805732A0

.global lbl_80666430
lbl_80666430:
	.4byte lbl_80527DD8
	.4byte 0