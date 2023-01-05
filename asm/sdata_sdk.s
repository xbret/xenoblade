.include "macros.inc"

.section .sdata, "wa"  # 0x80664180 - 0x80666600


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


.global float_80665A5C
float_80665A5C:
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


.global float_80665A70
float_80665A70:
	# ROM: 0x571650
	.float 0.2


.global float_80665A74
float_80665A74:
	# ROM: 0x571654
	.4byte 0x3D4CCCCD


.global float_80665A78
float_80665A78:
	# ROM: 0x571658
	.4byte 0x3D8F5C29


.global float_80665A7C
float_80665A7C:
	# ROM: 0x57165C
	.4byte 0x3D75C28F


.global lbl_80665A80
lbl_80665A80:
	# ROM: 0x571660
	.4byte 0x00640000


.global float_80665A84
float_80665A84:
	# ROM: 0x571664
	.4byte 0x3D4CCCCD


.global float_80665A88
float_80665A88:
	# ROM: 0x571668
	.4byte 0x40400000


.global float_80665A8C
float_80665A8C:
	# ROM: 0x57166C
	.4byte 0x3D23D70A


.global float_80665A90
float_80665A90:
	# ROM: 0x571670
	.4byte 0x3F666666


.global float_80665A94
float_80665A94:
	# ROM: 0x571674
	.4byte 0x3F666666


.global float_80665A98
float_80665A98:
	# ROM: 0x571678
	.4byte 0x3F666666


.global float_80665A9C
float_80665A9C:
	# ROM: 0x57167C
	.4byte 0x3F333333


.global float_80665AA0
float_80665AA0:
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


.global float_80665ABC
float_80665ABC:
	# ROM: 0x57169C
	.4byte 0x4059999A


.global float_80665AC0
float_80665AC0:
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


.global float_80665AD0
float_80665AD0:
	# ROM: 0x5716B0
	.4byte 0x43C80000


.global float_80665AD4
float_80665AD4:
	# ROM: 0x5716B4
	.4byte 0x41C00000


.global Unit01
Unit01:
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