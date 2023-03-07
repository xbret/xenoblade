.include "macros.inc"


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_8050D420, global
	.asciz "%a %b %e %T %Y"
	.balign 4
.endobj lbl_8050D420

.obj lbl_8050D430, global
	.asciz "%I:%M:%S %p"
.endobj lbl_8050D430

.obj lbl_8050D43C, global
	.asciz "%m/%d/%y"
	.balign 4
.endobj lbl_8050D43C

.obj lbl_8050D448, global
	.asciz "Sun|Sunday|Mon|Monday|Tue|Tuesday|Wed|Wednesday|Thu|Thursday|Fri|Friday|Sat|Saturday"
	.balign 4
.endobj lbl_8050D448

.obj lbl_8050D4A0, global
	.asciz "Jan|January|Feb|February|Mar|March|Apr|April|May|May|Jun|June|Jul|July|Aug|August|Sep|September|Oct|October|Nov|November|Dec|December"
	.balign 4
.endobj lbl_8050D4A0


.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __lconv, global
	.4byte lbl_8066B858
	.4byte lbl_8066B85C
	.4byte lbl_8066B85C
	.4byte lbl_8066B85C
	.4byte lbl_8066B85C
	.4byte lbl_8066B85C
	.4byte lbl_8066B85C
	.4byte lbl_8066B85C
	.4byte lbl_8066B85C
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0
	.4byte lbl_8066B85C
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0
.endobj __lconv

.obj _loc_ctyp_C, global
	.asciz "C" #0x0
	.2byte 0
	.4byte 0
	.4byte __ctype_mapC #0x8
	.4byte __upper_mapC #0xC
	.4byte __lower_mapC #0x10
	.4byte __wctype_mapC #0x14
	.4byte __wupper_mapC #0x18
	.4byte __wlower_mapC #0x1C
	.4byte __mbtowc_noconv #0x20
	.4byte __wctomb_noconv #0x24
.endobj _loc_ctyp_C

.obj char_coll_tableC, global
	.2byte 0x0001
    .2byte 0x0002
	.2byte 0x0003
    .2byte 0x0004
	.2byte 0x0005
    .2byte 0x0006
	.2byte 0x0007
    .2byte 0x0008
	.2byte 0x0009
    .2byte 0x000A
	.2byte 0x000B
    .2byte 0x000C
	.2byte 0x000D
    .2byte 0x000E
	.2byte 0x000F
    .2byte 0x0010
	.2byte 0x0021
    .2byte 0x0022
	.2byte 0x0023
    .2byte 0x0024
	.2byte 0x0025
    .2byte 0x0026
	.2byte 0x0027
    .2byte 0x0028
	.2byte 0x0029
    .2byte 0x002A
	.2byte 0x0011
    .2byte 0x0012
	.2byte 0x0013
    .2byte 0x0014
	.2byte 0x0015
    .2byte 0x0016
	.2byte 0x0017
    .2byte 0x002B
	.2byte 0x002D
    .2byte 0x002F
	.2byte 0x0031
    .2byte 0x0033
	.2byte 0x0035
    .2byte 0x0037
	.2byte 0x0039
    .2byte 0x003B
	.2byte 0x003D
    .2byte 0x003F
	.2byte 0x0041
    .2byte 0x0043
	.2byte 0x0045
    .2byte 0x0047
	.2byte 0x0049
    .2byte 0x004B
	.2byte 0x004D
    .2byte 0x004F
	.2byte 0x0051
    .2byte 0x0053
	.2byte 0x0055
    .2byte 0x0057
	.2byte 0x0059
    .2byte 0x005B
	.2byte 0x005D
    .2byte 0x0018
	.2byte 0x0019
    .2byte 0x001A
	.2byte 0x001B
    .2byte 0x001C
	.2byte 0x0000
    .2byte 0x002C
	.2byte 0x002E
    .2byte 0x0030
	.2byte 0x0032
    .2byte 0x0034
	.2byte 0x0036
    .2byte 0x0038
	.2byte 0x003A
    .2byte 0x003C
	.2byte 0x003E
    .2byte 0x0040
	.2byte 0x0042
    .2byte 0x0044
	.2byte 0x0046
    .2byte 0x0048
	.2byte 0x004A
    .2byte 0x004C
	.2byte 0x004E
    .2byte 0x0050
	.2byte 0x0052
    .2byte 0x0054
	.2byte 0x0056
    .2byte 0x0058
	.2byte 0x005A
    .2byte 0x005C
	.2byte 0x005E
    .2byte 0x001D
	.2byte 0x001E
    .2byte 0x001F
	.2byte 0x0020
    .2byte 0x0000
.endobj char_coll_tableC

.obj _loc_coll_C, global
	.4byte 0x43000000
	.4byte 0
	.4byte 0x00000020
	.4byte 0x0000006E
	.4byte 0
	.4byte char_coll_tableC
	.4byte 0
.endobj _loc_coll_C

.obj _loc_mon_C, global
	.asciz "C" #0x0
	.2byte 0
	.4byte 0
	.4byte lbl_8066B85C #0x8, mon_decimal_point
	.4byte lbl_8066B85C #0xC, mon_thousands_sep
	.4byte lbl_8066B85C #0x10, mon_grouping
	.4byte lbl_8066B85C #0x14, positive_sign
	.4byte lbl_8066B85C #0x18, negative_sign
	.4byte lbl_8066B85C #0x1C, currency_symbol
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x00
	.4byte lbl_8066B85C
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x7F
	.byte 0x00
.endobj _loc_mon_C

.obj _loc_num_C, global
	.asciz "C" #0x0
	.2byte 0
	.4byte 0
	.4byte lbl_8066B858
	.4byte lbl_8066B85C
	.4byte lbl_8066B85C
	.4byte 0
.endobj _loc_num_C

.obj _loc_tim_C, global
	.asciz "C" #0x0
	.2byte 0
	.4byte 0
	.4byte lbl_8066B860
	.4byte lbl_8050D420
	.4byte lbl_8050D430
	.4byte lbl_8050D43C
	.4byte lbl_8066B868
	.4byte lbl_8050D448
	.4byte lbl_8050D4A0
	.4byte lbl_8066B85C
.endobj _loc_tim_C


.obj _current_locale, global
	.4byte 0 #0x0
	.asciz "C" #0x4
	.2byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte _loc_coll_C #0x34
	.4byte _loc_ctyp_C #0x38
	.4byte _loc_mon_C #0x3C
	.4byte _loc_num_C #0x40
	.4byte _loc_tim_C #0x44
.endobj _current_locale


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_8066B858, global
	.asciz "."
	.balign 4
.endobj lbl_8066B858

.obj lbl_8066B85C, global
	.4byte 0
.endobj lbl_8066B85C

.obj lbl_8066B860, global
	.asciz "AM|PM"
	.balign 4
.endobj lbl_8066B860

.obj lbl_8066B868, global
	.asciz "%T"
	.balign 4
	.4byte 0
.endobj lbl_8066B868
