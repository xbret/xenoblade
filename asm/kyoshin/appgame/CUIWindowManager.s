.include "macros.inc"
.file "kyoshin/appgame/CUIWindowManager.o"

# 0x8000CB50 - 0x8000CD8C
.section extab, "a"
.balign 4

.obj "@etb_8000CB50", local
.hidden "@etb_8000CB50"
	.4byte 0x20080000
	.4byte 0x000000F0
	.4byte 0x002F0010
	.4byte 0x00000000
	.4byte 0x0780001D
	.4byte 0x0000007C
	.4byte fn_8013C348
	.4byte 0x0780001D
	.4byte 0x0000005C
	.4byte fn_8013C348
	.4byte 0x0680001D
	.4byte 0x00000054
	.4byte fn_801320F0
	.4byte 0x8680001D
	.4byte 0x00000000
	.4byte fn_8013C23C
.endobj "@etb_8000CB50"

.obj "@etb_8000CB90", local
.hidden "@etb_8000CB90"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000CB90"

.obj "@etb_8000CB98", local
.hidden "@etb_8000CB98"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000CB98"

.obj "@etb_8000CBA0", local
.hidden "@etb_8000CBA0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000CBA0"

.obj "@etb_8000CBA8", local
.hidden "@etb_8000CBA8"
	.4byte 0x18080000
	.4byte 0x0000011C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x0000007C
	.4byte fn_8013C348
	.4byte 0x0780001E
	.4byte 0x0000005C
	.4byte fn_8013C348
	.4byte 0x8680001E
	.4byte 0x00000054
	.4byte fn_801320F0
.endobj "@etb_8000CBA8"

.obj "@etb_8000CBDC", local
.hidden "@etb_8000CBDC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000CBDC"

.obj "@etb_8000CBE4", local
.hidden "@etb_8000CBE4"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000CBE4"

.obj "@etb_8000CBEC", local
.hidden "@etb_8000CBEC"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000CBEC"

.obj "@etb_8000CBF4", local
.hidden "@etb_8000CBF4"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000CBF4"

.obj "@etb_8000CBFC", local
.hidden "@etb_8000CBFC"
	.4byte 0x10180000
	.4byte 0x00000000
.endobj "@etb_8000CBFC"

.obj "@etb_8000CC04", local
.hidden "@etb_8000CC04"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8000CC04"

.obj "@etb_8000CC0C", local
.hidden "@etb_8000CC0C"
	.4byte 0x20180000
	.4byte 0x00000000
.endobj "@etb_8000CC0C"

.obj "@etb_8000CC14", local
.hidden "@etb_8000CC14"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000CC14"

.obj "@etb_8000CC1C", local
.hidden "@etb_8000CC1C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000CC1C"

.obj "@etb_8000CC24", local
.hidden "@etb_8000CC24"
	.4byte 0x18180000
	.4byte 0x00000000
.endobj "@etb_8000CC24"

.obj "@etb_8000CC2C", local
.hidden "@etb_8000CC2C"
	.4byte 0x18180000
	.4byte 0x00000000
.endobj "@etb_8000CC2C"

.obj "@etb_8000CC34", local
.hidden "@etb_8000CC34"
	.4byte 0x20180000
	.4byte 0x00000000
.endobj "@etb_8000CC34"

.obj "@etb_8000CC3C", local
.hidden "@etb_8000CC3C"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CC3C"

.obj "@etb_8000CC44", local
.hidden "@etb_8000CC44"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CC44"

.obj "@etb_8000CC4C", local
.hidden "@etb_8000CC4C"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CC4C"

.obj "@etb_8000CC54", local
.hidden "@etb_8000CC54"
	.4byte 0x18180000
	.4byte 0x00000000
.endobj "@etb_8000CC54"

.obj "@etb_8000CC5C", local
.hidden "@etb_8000CC5C"
	.4byte 0x28180000
	.4byte 0x00000000
.endobj "@etb_8000CC5C"

.obj "@etb_8000CC64", local
.hidden "@etb_8000CC64"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CC64"

.obj "@etb_8000CC6C", local
.hidden "@etb_8000CC6C"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CC6C"

.obj "@etb_8000CC74", local
.hidden "@etb_8000CC74"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CC74"

.obj "@etb_8000CC7C", local
.hidden "@etb_8000CC7C"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CC7C"

.obj "@etb_8000CC84", local
.hidden "@etb_8000CC84"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CC84"

.obj "@etb_8000CC8C", local
.hidden "@etb_8000CC8C"
	.4byte 0x10180000
	.4byte 0x00000000
.endobj "@etb_8000CC8C"

.obj "@etb_8000CC94", local
.hidden "@etb_8000CC94"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CC94"

.obj "@etb_8000CC9C", local
.hidden "@etb_8000CC9C"
	.4byte 0x40180000
	.4byte 0x00000000
.endobj "@etb_8000CC9C"

.obj "@etb_8000CCA4", local
.hidden "@etb_8000CCA4"
	.4byte 0x10180000
	.4byte 0x00000000
.endobj "@etb_8000CCA4"

.obj "@etb_8000CCAC", local
.hidden "@etb_8000CCAC"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CCAC"

.obj "@etb_8000CCB4", local
.hidden "@etb_8000CCB4"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CCB4"

.obj "@etb_8000CCBC", local
.hidden "@etb_8000CCBC"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CCBC"

.obj "@etb_8000CCC4", local
.hidden "@etb_8000CCC4"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CCC4"

.obj "@etb_8000CCCC", local
.hidden "@etb_8000CCCC"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CCCC"

.obj "@etb_8000CCD4", local
.hidden "@etb_8000CCD4"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CCD4"

.obj "@etb_8000CCDC", local
.hidden "@etb_8000CCDC"
	.4byte 0x08180000
	.4byte 0x00000000
.endobj "@etb_8000CCDC"

.obj "@etb_8000CCE4", local
.hidden "@etb_8000CCE4"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000CCE4"

.obj "@etb_8000CCEC", local
.hidden "@etb_8000CCEC"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000CCEC"

.obj "@etb_8000CCF4", local
.hidden "@etb_8000CCF4"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000CCF4"

.obj "@etb_8000CCFC", local
.hidden "@etb_8000CCFC"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000CCFC"

.obj "@etb_8000CD04", local
.hidden "@etb_8000CD04"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000CD04"

.obj "@etb_8000CD0C", local
.hidden "@etb_8000CD0C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000CD0C"

.obj "@etb_8000CD14", local
.hidden "@etb_8000CD14"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8000CD14"

.obj "@etb_8000CD1C", local
.hidden "@etb_8000CD1C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000CD1C"

.obj "@etb_8000CD24", local
.hidden "@etb_8000CD24"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000CD24"

.obj "@etb_8000CD2C", local
.hidden "@etb_8000CD2C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000CD2C"

.obj "@etb_8000CD34", local
.hidden "@etb_8000CD34"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000CD34"

.obj "@etb_8000CD3C", local
.hidden "@etb_8000CD3C"
	.4byte 0x90080000
	.4byte 0x00000000
.endobj "@etb_8000CD3C"

.obj "@etb_8000CD44", local
.hidden "@etb_8000CD44"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_8000CD44"

.obj "@etb_8000CD4C", local
.hidden "@etb_8000CD4C"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_8000CD4C"

.obj "@etb_8000CD54", local
.hidden "@etb_8000CD54"
	.4byte 0x60080000
	.4byte 0x00000000
.endobj "@etb_8000CD54"

.obj "@etb_8000CD5C", local
.hidden "@etb_8000CD5C"
	.4byte 0x60080000
	.4byte 0x00000000
.endobj "@etb_8000CD5C"

.obj "@etb_8000CD64", local
.hidden "@etb_8000CD64"
	.4byte 0x90080000
	.4byte 0x00000000
.endobj "@etb_8000CD64"

.obj "@etb_8000CD6C", local
.hidden "@etb_8000CD6C"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8000CD6C"

.obj "@etb_8000CD74", local
.hidden "@etb_8000CD74"
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_8000CD74"

.obj "@etb_8000CD7C", local
.hidden "@etb_8000CD7C"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8000CD7C"

.obj "@etb_8000CD84", local
.hidden "@etb_8000CD84"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8000CD84"

# 0x80027DDC - 0x800280A0
.section extabindex, "a"
.balign 4

.obj "@eti_80027DDC", local
.hidden "@eti_80027DDC"
	.4byte fn_8013C068
	.4byte 0x000001D4
	.4byte "@etb_8000CB50"
.endobj "@eti_80027DDC"

.obj "@eti_80027DE8", local
.hidden "@eti_80027DE8"
	.4byte fn_8013C23C
	.4byte 0x00000058
	.4byte "@etb_8000CB90"
.endobj "@eti_80027DE8"

.obj "@eti_80027DF4", local
.hidden "@eti_80027DF4"
	.4byte fn_8013C294
	.4byte 0x000000B4
	.4byte "@etb_8000CB98"
.endobj "@eti_80027DF4"

.obj "@eti_80027E00", local
.hidden "@eti_80027E00"
	.4byte fn_8013C348
	.4byte 0x000000B8
	.4byte "@etb_8000CBA0"
.endobj "@eti_80027E00"

.obj "@eti_80027E0C", local
.hidden "@eti_80027E0C"
	.4byte fn_8013C400
	.4byte 0x0000014C
	.4byte "@etb_8000CBA8"
.endobj "@eti_80027E0C"

.obj "@eti_80027E18", local
.hidden "@eti_80027E18"
	.4byte fn_8013C554
	.4byte 0x000000CC
	.4byte "@etb_8000CBDC"
.endobj "@eti_80027E18"

.obj "@eti_80027E24", local
.hidden "@eti_80027E24"
	.4byte fn_8013C620
	.4byte 0x00000058
	.4byte "@etb_8000CBE4"
.endobj "@eti_80027E24"

.obj "@eti_80027E30", local
.hidden "@eti_80027E30"
	.4byte fn_8013C678
	.4byte 0x00000060
	.4byte "@etb_8000CBEC"
.endobj "@eti_80027E30"

.obj "@eti_80027E3C", local
.hidden "@eti_80027E3C"
	.4byte fn_8013C6D8
	.4byte 0x000004DC
	.4byte "@etb_8000CBF4"
.endobj "@eti_80027E3C"

.obj "@eti_80027E48", local
.hidden "@eti_80027E48"
	.4byte fn_8013CBB4
	.4byte 0x00000428
	.4byte "@etb_8000CBFC"
.endobj "@eti_80027E48"

.obj "@eti_80027E54", local
.hidden "@eti_80027E54"
	.4byte fn_8013CFDC
	.4byte 0x000000A0
	.4byte "@etb_8000CC04"
.endobj "@eti_80027E54"

.obj "@eti_80027E60", local
.hidden "@eti_80027E60"
	.4byte fn_8013D07C
	.4byte 0x0000016C
	.4byte "@etb_8000CC0C"
.endobj "@eti_80027E60"

.obj "@eti_80027E6C", local
.hidden "@eti_80027E6C"
	.4byte fn_8013D1E8
	.4byte 0x00000084
	.4byte "@etb_8000CC14"
.endobj "@eti_80027E6C"

.obj "@eti_80027E78", local
.hidden "@eti_80027E78"
	.4byte fn_8013D26C
	.4byte 0x000001DC
	.4byte "@etb_8000CC1C"
.endobj "@eti_80027E78"

.obj "@eti_80027E84", local
.hidden "@eti_80027E84"
	.4byte fn_8013D448
	.4byte 0x00000114
	.4byte "@etb_8000CC24"
.endobj "@eti_80027E84"

.obj "@eti_80027E90", local
.hidden "@eti_80027E90"
	.4byte fn_8013D55C
	.4byte 0x0000012C
	.4byte "@etb_8000CC2C"
.endobj "@eti_80027E90"

.obj "@eti_80027E9C", local
.hidden "@eti_80027E9C"
	.4byte fn_8013D688
	.4byte 0x00000138
	.4byte "@etb_8000CC34"
.endobj "@eti_80027E9C"

.obj "@eti_80027EA8", local
.hidden "@eti_80027EA8"
	.4byte fn_8013D7C0
	.4byte 0x000000E0
	.4byte "@etb_8000CC3C"
.endobj "@eti_80027EA8"

.obj "@eti_80027EB4", local
.hidden "@eti_80027EB4"
	.4byte fn_8013D8A0
	.4byte 0x000000D8
	.4byte "@etb_8000CC44"
.endobj "@eti_80027EB4"

.obj "@eti_80027EC0", local
.hidden "@eti_80027EC0"
	.4byte fn_8013D978
	.4byte 0x000000E8
	.4byte "@etb_8000CC4C"
.endobj "@eti_80027EC0"

.obj "@eti_80027ECC", local
.hidden "@eti_80027ECC"
	.4byte fn_8013DA60
	.4byte 0x0000010C
	.4byte "@etb_8000CC54"
.endobj "@eti_80027ECC"

.obj "@eti_80027ED8", local
.hidden "@eti_80027ED8"
	.4byte fn_8013DB6C
	.4byte 0x00000140
	.4byte "@etb_8000CC5C"
.endobj "@eti_80027ED8"

.obj "@eti_80027EE4", local
.hidden "@eti_80027EE4"
	.4byte fn_8013DCAC
	.4byte 0x000000E8
	.4byte "@etb_8000CC64"
.endobj "@eti_80027EE4"

.obj "@eti_80027EF0", local
.hidden "@eti_80027EF0"
	.4byte fn_8013DD94
	.4byte 0x000000D8
	.4byte "@etb_8000CC6C"
.endobj "@eti_80027EF0"

.obj "@eti_80027EFC", local
.hidden "@eti_80027EFC"
	.4byte fn_8013DE6C
	.4byte 0x000000D8
	.4byte "@etb_8000CC74"
.endobj "@eti_80027EFC"

.obj "@eti_80027F08", local
.hidden "@eti_80027F08"
	.4byte fn_8013DF44
	.4byte 0x000000EC
	.4byte "@etb_8000CC7C"
.endobj "@eti_80027F08"

.obj "@eti_80027F14", local
.hidden "@eti_80027F14"
	.4byte fn_8013E030
	.4byte 0x000000D4
	.4byte "@etb_8000CC84"
.endobj "@eti_80027F14"

.obj "@eti_80027F20", local
.hidden "@eti_80027F20"
	.4byte fn_8013E104
	.4byte 0x00000100
	.4byte "@etb_8000CC8C"
.endobj "@eti_80027F20"

.obj "@eti_80027F2C", local
.hidden "@eti_80027F2C"
	.4byte fn_8013E204
	.4byte 0x000000DC
	.4byte "@etb_8000CC94"
.endobj "@eti_80027F2C"

.obj "@eti_80027F38", local
.hidden "@eti_80027F38"
	.4byte fn_8013E2E0
	.4byte 0x00000144
	.4byte "@etb_8000CC9C"
.endobj "@eti_80027F38"

.obj "@eti_80027F44", local
.hidden "@eti_80027F44"
	.4byte fn_8013E424
	.4byte 0x00000108
	.4byte "@etb_8000CCA4"
.endobj "@eti_80027F44"

.obj "@eti_80027F50", local
.hidden "@eti_80027F50"
	.4byte fn_8013E52C
	.4byte 0x000000DC
	.4byte "@etb_8000CCAC"
.endobj "@eti_80027F50"

.obj "@eti_80027F5C", local
.hidden "@eti_80027F5C"
	.4byte fn_8013E608
	.4byte 0x000000FC
	.4byte "@etb_8000CCB4"
.endobj "@eti_80027F5C"

.obj "@eti_80027F68", local
.hidden "@eti_80027F68"
	.4byte fn_8013E704
	.4byte 0x000000FC
	.4byte "@etb_8000CCBC"
.endobj "@eti_80027F68"

.obj "@eti_80027F74", local
.hidden "@eti_80027F74"
	.4byte fn_8013E800
	.4byte 0x000000E0
	.4byte "@etb_8000CCC4"
.endobj "@eti_80027F74"

.obj "@eti_80027F80", local
.hidden "@eti_80027F80"
	.4byte fn_8013E8E0
	.4byte 0x000000F8
	.4byte "@etb_8000CCCC"
.endobj "@eti_80027F80"

.obj "@eti_80027F8C", local
.hidden "@eti_80027F8C"
	.4byte fn_8013E9D8
	.4byte 0x000000D8
	.4byte "@etb_8000CCD4"
.endobj "@eti_80027F8C"

.obj "@eti_80027F98", local
.hidden "@eti_80027F98"
	.4byte fn_8013EAB0
	.4byte 0x000000E0
	.4byte "@etb_8000CCDC"
.endobj "@eti_80027F98"

.obj "@eti_80027FA4", local
.hidden "@eti_80027FA4"
	.4byte fn_8013EB90
	.4byte 0x000000C8
	.4byte "@etb_8000CCE4"
.endobj "@eti_80027FA4"

.obj "@eti_80027FB0", local
.hidden "@eti_80027FB0"
	.4byte fn_8013EC6C
	.4byte 0x0000043C
	.4byte "@etb_8000CCEC"
.endobj "@eti_80027FB0"

.obj "@eti_80027FBC", local
.hidden "@eti_80027FBC"
	.4byte fn_8013F0B8
	.4byte 0x00000048
	.4byte "@etb_8000CCF4"
.endobj "@eti_80027FBC"

.obj "@eti_80027FC8", local
.hidden "@eti_80027FC8"
	.4byte fn_8013F100
	.4byte 0x00000048
	.4byte "@etb_8000CCFC"
.endobj "@eti_80027FC8"

.obj "@eti_80027FD4", local
.hidden "@eti_80027FD4"
	.4byte fn_8013F148
	.4byte 0x00000048
	.4byte "@etb_8000CD04"
.endobj "@eti_80027FD4"

.obj "@eti_80027FE0", local
.hidden "@eti_80027FE0"
	.4byte fn_8013F190
	.4byte 0x00000048
	.4byte "@etb_8000CD0C"
.endobj "@eti_80027FE0"

.obj "@eti_80027FEC", local
.hidden "@eti_80027FEC"
	.4byte fn_8013F1D8
	.4byte 0x0000005C
	.4byte "@etb_8000CD14"
.endobj "@eti_80027FEC"

.obj "@eti_80027FF8", local
.hidden "@eti_80027FF8"
	.4byte fn_8013F244
	.4byte 0x0000005C
	.4byte "@etb_8000CD1C"
.endobj "@eti_80027FF8"

.obj "@eti_80028004", local
.hidden "@eti_80028004"
	.4byte fn_8013F2A0
	.4byte 0x000000B4
	.4byte "@etb_8000CD24"
.endobj "@eti_80028004"

.obj "@eti_80028010", local
.hidden "@eti_80028010"
	.4byte fn_8013F354
	.4byte 0x00000098
	.4byte "@etb_8000CD2C"
.endobj "@eti_80028010"

.obj "@eti_8002801C", local
.hidden "@eti_8002801C"
	.4byte fn_8013F3F0
	.4byte 0x000002D4
	.4byte "@etb_8000CD34"
.endobj "@eti_8002801C"

.obj "@eti_80028028", local
.hidden "@eti_80028028"
	.4byte fn_8013F6C4
	.4byte 0x00000934
	.4byte "@etb_8000CD3C"
.endobj "@eti_80028028"

.obj "@eti_80028034", local
.hidden "@eti_80028034"
	.4byte fn_8013FFF8
	.4byte 0x0000085C
	.4byte "@etb_8000CD44"
.endobj "@eti_80028034"

.obj "@eti_80028040", local
.hidden "@eti_80028040"
	.4byte fn_80140854
	.4byte 0x000002A8
	.4byte "@etb_8000CD4C"
.endobj "@eti_80028040"

.obj "@eti_8002804C", local
.hidden "@eti_8002804C"
	.4byte fn_80140AFC
	.4byte 0x000001A8
	.4byte "@etb_8000CD54"
.endobj "@eti_8002804C"

.obj "@eti_80028058", local
.hidden "@eti_80028058"
	.4byte fn_80140CA4
	.4byte 0x0000015C
	.4byte "@etb_8000CD5C"
.endobj "@eti_80028058"

.obj "@eti_80028064", local
.hidden "@eti_80028064"
	.4byte fn_80140E00
	.4byte 0x00000470
	.4byte "@etb_8000CD64"
.endobj "@eti_80028064"

.obj "@eti_80028070", local
.hidden "@eti_80028070"
	.4byte fn_80141270
	.4byte 0x00000060
	.4byte "@etb_8000CD6C"
.endobj "@eti_80028070"

.obj "@eti_8002807C", local
.hidden "@eti_8002807C"
	.4byte fn_801412D0
	.4byte 0x0000010C
	.4byte "@etb_8000CD74"
.endobj "@eti_8002807C"

.obj "@eti_80028088", local
.hidden "@eti_80028088"
	.4byte sinit_801413F8
	.4byte 0x00000094
	.4byte "@etb_8000CD7C"
.endobj "@eti_80028088"

.obj "@eti_80028094", local
.hidden "@eti_80028094"
	.4byte fn_8014148C
	.4byte 0x00000040
	.4byte "@etb_8000CD84"
.endobj "@eti_80028094"

# 0x8013C068 - 0x801414CC
.text
.balign 4

.fn fn_8013C068, global
/* 8013C068 00105628  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013C06C 0010562C  7C 08 02 A6 */	mflr r0
/* 8013C070 00105630  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013C074 00105634  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8013C078 00105638  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8013C07C 0010563C  7C 9E 23 78 */	mr r30, r4
/* 8013C080 00105640  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8013C084 00105644  7C 7D 1B 78 */	mr r29, r3
/* 8013C088 00105648  93 81 00 10 */	stw r28, 0x10(r1)
/* 8013C08C 0010564C  48 30 89 8D */	bl __ct__8CProcessFv
/* 8013C090 00105650  3C 60 80 53 */	lis r3, __vt__CTTask_CUIWindowManager@ha
/* 8013C094 00105654  3D 00 80 53 */	lis r8, __vt__CUIWindowManager@ha
/* 8013C098 00105658  38 63 1E 80 */	addi r3, r3, __vt__CTTask_CUIWindowManager@l
/* 8013C09C 0010565C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 8013C0A0 00105660  3D 60 80 51 */	lis r11, lbl_8050CE10@ha
/* 8013C0A4 00105664  3C E0 80 53 */	lis r7, __vt___reslist_base_IUIWindow@ha
/* 8013C0A8 00105668  84 6B CE 10 */	lwzu r3, lbl_8050CE10@l(r11)
/* 8013C0AC 0010566C  3C A0 80 53 */	lis r5, __vt__reslist_IUIWindow@ha
/* 8013C0B0 00105670  39 08 1D 70 */	addi r8, r8, __vt__CUIWindowManager@l
/* 8013C0B4 00105674  38 E7 1D EC */	addi r7, r7, __vt___reslist_base_IUIWindow@l
/* 8013C0B8 00105678  80 0B 00 04 */	lwz r0, 0x4(r11)
/* 8013C0BC 0010567C  3B E0 00 00 */	li r31, 0x0
/* 8013C0C0 00105680  90 1D 00 40 */	stw r0, 0x40(r29)
/* 8013C0C4 00105684  38 08 00 24 */	addi r0, r8, 0x24
/* 8013C0C8 00105688  38 DD 00 64 */	addi r6, r29, 0x64
/* 8013C0CC 0010568C  38 A5 1D D4 */	addi r5, r5, __vt__reslist_IUIWindow@l
/* 8013C0D0 00105690  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 8013C0D4 00105694  38 9D 00 84 */	addi r4, r29, 0x84
/* 8013C0D8 00105698  80 6B 00 08 */	lwz r3, 0x8(r11)
/* 8013C0DC 0010569C  90 7D 00 44 */	stw r3, 0x44(r29)
/* 8013C0E0 001056A0  7F C3 F3 78 */	mr r3, r30
/* 8013C0E4 001056A4  81 4B 00 00 */	lwz r10, 0x0(r11)
/* 8013C0E8 001056A8  81 2B 00 04 */	lwz r9, 0x4(r11)
/* 8013C0EC 001056AC  91 3D 00 4C */	stw r9, 0x4c(r29)
/* 8013C0F0 001056B0  91 5D 00 48 */	stw r10, 0x48(r29)
/* 8013C0F4 001056B4  81 2B 00 08 */	lwz r9, 0x8(r11)
/* 8013C0F8 001056B8  91 3D 00 50 */	stw r9, 0x50(r29)
/* 8013C0FC 001056BC  91 1D 00 10 */	stw r8, 0x10(r29)
/* 8013C100 001056C0  90 1D 00 54 */	stw r0, 0x54(r29)
/* 8013C104 001056C4  93 DD 00 58 */	stw r30, 0x58(r29)
/* 8013C108 001056C8  90 FD 00 5C */	stw r7, 0x5c(r29)
/* 8013C10C 001056CC  93 FD 00 70 */	stw r31, 0x70(r29)
/* 8013C110 001056D0  93 FD 00 74 */	stw r31, 0x74(r29)
/* 8013C114 001056D4  9B FD 00 78 */	stb r31, 0x78(r29)
/* 8013C118 001056D8  90 DD 00 60 */	stw r6, 0x60(r29)
/* 8013C11C 001056DC  90 C6 00 00 */	stw r6, 0x0(r6)
/* 8013C120 001056E0  90 C6 00 04 */	stw r6, 0x4(r6)
/* 8013C124 001056E4  90 BD 00 5C */	stw r5, 0x5c(r29)
/* 8013C128 001056E8  90 FD 00 7C */	stw r7, 0x7c(r29)
/* 8013C12C 001056EC  93 FD 00 90 */	stw r31, 0x90(r29)
/* 8013C130 001056F0  93 FD 00 94 */	stw r31, 0x94(r29)
/* 8013C134 001056F4  9B FD 00 98 */	stb r31, 0x98(r29)
/* 8013C138 001056F8  90 9D 00 80 */	stw r4, 0x80(r29)
/* 8013C13C 001056FC  90 84 00 00 */	stw r4, 0x0(r4)
/* 8013C140 00105700  90 84 00 04 */	stw r4, 0x4(r4)
/* 8013C144 00105704  90 BD 00 7C */	stw r5, 0x7c(r29)
/* 8013C148 00105708  93 FD 00 9C */	stw r31, 0x9c(r29)
/* 8013C14C 0010570C  9B FD 00 A0 */	stb r31, 0xa0(r29)
/* 8013C150 00105710  9B FD 00 A1 */	stb r31, 0xa1(r29)
/* 8013C154 00105714  48 35 9E B1 */	bl fn_80496004
/* 8013C158 00105718  7C 64 1B 78 */	mr r4, r3
/* 8013C15C 0010571C  38 60 00 60 */	li r3, 0x60
/* 8013C160 00105720  48 2F 89 21 */	bl fn_80434A80
/* 8013C164 00105724  90 7D 00 70 */	stw r3, 0x70(r29)
/* 8013C168 00105728  3B 80 00 08 */	li r28, 0x8
/* 8013C16C 0010572C  93 E3 00 00 */	stw r31, 0x0(r3)
/* 8013C170 00105730  7F C3 F3 78 */	mr r3, r30
/* 8013C174 00105734  80 9D 00 70 */	lwz r4, 0x70(r29)
/* 8013C178 00105738  93 E4 00 0C */	stw r31, 0xc(r4)
/* 8013C17C 0010573C  80 9D 00 70 */	lwz r4, 0x70(r29)
/* 8013C180 00105740  93 E4 00 18 */	stw r31, 0x18(r4)
/* 8013C184 00105744  80 9D 00 70 */	lwz r4, 0x70(r29)
/* 8013C188 00105748  93 E4 00 24 */	stw r31, 0x24(r4)
/* 8013C18C 0010574C  80 9D 00 70 */	lwz r4, 0x70(r29)
/* 8013C190 00105750  93 E4 00 30 */	stw r31, 0x30(r4)
/* 8013C194 00105754  80 9D 00 70 */	lwz r4, 0x70(r29)
/* 8013C198 00105758  93 E4 00 3C */	stw r31, 0x3c(r4)
/* 8013C19C 0010575C  80 9D 00 70 */	lwz r4, 0x70(r29)
/* 8013C1A0 00105760  93 E4 00 48 */	stw r31, 0x48(r4)
/* 8013C1A4 00105764  80 9D 00 70 */	lwz r4, 0x70(r29)
/* 8013C1A8 00105768  93 E4 00 54 */	stw r31, 0x54(r4)
/* 8013C1AC 0010576C  93 9D 00 74 */	stw r28, 0x74(r29)
/* 8013C1B0 00105770  48 35 9E 55 */	bl fn_80496004
/* 8013C1B4 00105774  7C 64 1B 78 */	mr r4, r3
/* 8013C1B8 00105778  38 60 00 60 */	li r3, 0x60
/* 8013C1BC 0010577C  48 2F 88 C5 */	bl fn_80434A80
/* 8013C1C0 00105780  90 7D 00 90 */	stw r3, 0x90(r29)
/* 8013C1C4 00105784  93 E3 00 00 */	stw r31, 0x0(r3)
/* 8013C1C8 00105788  80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8013C1CC 0010578C  93 E3 00 0C */	stw r31, 0xc(r3)
/* 8013C1D0 00105790  80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8013C1D4 00105794  93 E3 00 18 */	stw r31, 0x18(r3)
/* 8013C1D8 00105798  80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8013C1DC 0010579C  93 E3 00 24 */	stw r31, 0x24(r3)
/* 8013C1E0 001057A0  80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8013C1E4 001057A4  93 E3 00 30 */	stw r31, 0x30(r3)
/* 8013C1E8 001057A8  80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8013C1EC 001057AC  93 E3 00 3C */	stw r31, 0x3c(r3)
/* 8013C1F0 001057B0  80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8013C1F4 001057B4  93 E3 00 48 */	stw r31, 0x48(r3)
/* 8013C1F8 001057B8  80 7D 00 90 */	lwz r3, 0x90(r29)
/* 8013C1FC 001057BC  93 E3 00 54 */	stw r31, 0x54(r3)
/* 8013C200 001057C0  93 9D 00 94 */	stw r28, 0x94(r29)
/* 8013C204 001057C4  48 02 0E B5 */	bl fn_8015D0B8
/* 8013C208 001057C8  4B FE 62 59 */	bl fn_80122460
/* 8013C20C 001057CC  48 07 67 D5 */	bl fn_801B29E0
/* 8013C210 001057D0  4B FE FB C1 */	bl fn_8012BDD0
/* 8013C214 001057D4  B3 ED A7 FC */	sth r31, lbl_8066697C@sda21(r13)
/* 8013C218 001057D8  7F A3 EB 78 */	mr r3, r29
/* 8013C21C 001057DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8013C220 001057E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8013C224 001057E4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8013C228 001057E8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8013C22C 001057EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013C230 001057F0  7C 08 03 A6 */	mtlr r0
/* 8013C234 001057F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8013C238 001057F8  4E 80 00 20 */	blr
.endfn fn_8013C068

.fn fn_8013C23C, global
/* 8013C23C 001057FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013C240 00105800  7C 08 02 A6 */	mflr r0
/* 8013C244 00105804  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013C248 00105808  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013C24C 0010580C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013C250 00105810  7C 9F 23 78 */	mr r31, r4
/* 8013C254 00105814  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8013C258 00105818  7C 7E 1B 78 */	mr r30, r3
/* 8013C25C 0010581C  41 82 00 1C */	beq .L_8013C278
/* 8013C260 00105820  38 80 00 00 */	li r4, 0x0
/* 8013C264 00105824  48 30 88 D5 */	bl fn_80444B38
/* 8013C268 00105828  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8013C26C 0010582C  40 81 00 0C */	ble .L_8013C278
/* 8013C270 00105830  7F C3 F3 78 */	mr r3, r30
/* 8013C274 00105834  48 2F 89 B9 */	bl __dl__FPv
.L_8013C278:
/* 8013C278 00105838  7F C3 F3 78 */	mr r3, r30
/* 8013C27C 0010583C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013C280 00105840  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8013C284 00105844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013C288 00105848  7C 08 03 A6 */	mtlr r0
/* 8013C28C 0010584C  38 21 00 10 */	addi r1, r1, 0x10
/* 8013C290 00105850  4E 80 00 20 */	blr
.endfn fn_8013C23C

.fn fn_8013C294, global
/* 8013C294 00105854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013C298 00105858  7C 08 02 A6 */	mflr r0
/* 8013C29C 0010585C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013C2A0 00105860  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013C2A4 00105864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013C2A8 00105868  7C 9F 23 78 */	mr r31, r4
/* 8013C2AC 0010586C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8013C2B0 00105870  7C 7E 1B 78 */	mr r30, r3
/* 8013C2B4 00105874  41 82 00 78 */	beq .L_8013C32C
/* 8013C2B8 00105878  3C A0 80 53 */	lis r5, __vt___reslist_base_IUIWindow@ha
/* 8013C2BC 0010587C  80 83 00 04 */	lwz r4, 0x4(r3)
/* 8013C2C0 00105880  38 A5 1D EC */	addi r5, r5, __vt___reslist_base_IUIWindow@l
/* 8013C2C4 00105884  90 A3 00 00 */	stw r5, 0x0(r3)
/* 8013C2C8 00105888  38 00 00 00 */	li r0, 0x0
/* 8013C2CC 0010588C  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 8013C2D0 00105890  48 00 00 10 */	b .L_8013C2E0
.L_8013C2D4:
/* 8013C2D4 00105894  7C A4 2B 78 */	mr r4, r5
/* 8013C2D8 00105898  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 8013C2DC 0010589C  90 04 00 00 */	stw r0, 0x0(r4)
.L_8013C2E0:
/* 8013C2E0 001058A0  80 83 00 04 */	lwz r4, 0x4(r3)
/* 8013C2E4 001058A4  7C 05 20 40 */	cmplw r5, r4
/* 8013C2E8 001058A8  40 82 FF EC */	bne .L_8013C2D4
/* 8013C2EC 001058AC  90 84 00 00 */	stw r4, 0x0(r4)
/* 8013C2F0 001058B0  80 83 00 04 */	lwz r4, 0x4(r3)
/* 8013C2F4 001058B4  90 84 00 04 */	stw r4, 0x4(r4)
/* 8013C2F8 001058B8  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 8013C2FC 001058BC  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013C300 001058C0  40 82 00 1C */	bne .L_8013C31C
/* 8013C304 001058C4  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8013C308 001058C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013C30C 001058CC  41 82 00 10 */	beq .L_8013C31C
/* 8013C310 001058D0  48 2F 8A D1 */	bl __dla__FPv
/* 8013C314 001058D4  38 00 00 00 */	li r0, 0x0
/* 8013C318 001058D8  90 1E 00 14 */	stw r0, 0x14(r30)
.L_8013C31C:
/* 8013C31C 001058DC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8013C320 001058E0  40 81 00 0C */	ble .L_8013C32C
/* 8013C324 001058E4  7F C3 F3 78 */	mr r3, r30
/* 8013C328 001058E8  48 2F 89 05 */	bl __dl__FPv
.L_8013C32C:
/* 8013C32C 001058EC  7F C3 F3 78 */	mr r3, r30
/* 8013C330 001058F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013C334 001058F4  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8013C338 001058F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013C33C 001058FC  7C 08 03 A6 */	mtlr r0
/* 8013C340 00105900  38 21 00 10 */	addi r1, r1, 0x10
/* 8013C344 00105904  4E 80 00 20 */	blr
.endfn fn_8013C294

.fn fn_8013C348, global
/* 8013C348 00105908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013C34C 0010590C  7C 08 02 A6 */	mflr r0
/* 8013C350 00105910  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013C354 00105914  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013C358 00105918  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013C35C 0010591C  7C 9F 23 78 */	mr r31, r4
/* 8013C360 00105920  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8013C364 00105924  7C 7E 1B 78 */	mr r30, r3
/* 8013C368 00105928  41 82 00 7C */	beq .L_8013C3E4
/* 8013C36C 0010592C  41 82 00 68 */	beq .L_8013C3D4
/* 8013C370 00105930  3C A0 80 53 */	lis r5, __vt___reslist_base_IUIWindow@ha
/* 8013C374 00105934  80 83 00 04 */	lwz r4, 0x4(r3)
/* 8013C378 00105938  38 A5 1D EC */	addi r5, r5, __vt___reslist_base_IUIWindow@l
/* 8013C37C 0010593C  90 A3 00 00 */	stw r5, 0x0(r3)
/* 8013C380 00105940  38 00 00 00 */	li r0, 0x0
/* 8013C384 00105944  80 84 00 00 */	lwz r4, 0x0(r4)
/* 8013C388 00105948  48 00 00 10 */	b .L_8013C398
.L_8013C38C:
/* 8013C38C 0010594C  7C 85 23 78 */	mr r5, r4
/* 8013C390 00105950  80 84 00 00 */	lwz r4, 0x0(r4)
/* 8013C394 00105954  90 05 00 00 */	stw r0, 0x0(r5)
.L_8013C398:
/* 8013C398 00105958  80 A3 00 04 */	lwz r5, 0x4(r3)
/* 8013C39C 0010595C  7C 04 28 40 */	cmplw r4, r5
/* 8013C3A0 00105960  40 82 FF EC */	bne .L_8013C38C
/* 8013C3A4 00105964  90 A5 00 00 */	stw r5, 0x0(r5)
/* 8013C3A8 00105968  80 83 00 04 */	lwz r4, 0x4(r3)
/* 8013C3AC 0010596C  90 84 00 04 */	stw r4, 0x4(r4)
/* 8013C3B0 00105970  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 8013C3B4 00105974  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013C3B8 00105978  40 82 00 1C */	bne .L_8013C3D4
/* 8013C3BC 0010597C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8013C3C0 00105980  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013C3C4 00105984  41 82 00 10 */	beq .L_8013C3D4
/* 8013C3C8 00105988  48 2F 8A 19 */	bl __dla__FPv
/* 8013C3CC 0010598C  38 00 00 00 */	li r0, 0x0
/* 8013C3D0 00105990  90 1E 00 14 */	stw r0, 0x14(r30)
.L_8013C3D4:
/* 8013C3D4 00105994  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8013C3D8 00105998  40 81 00 0C */	ble .L_8013C3E4
/* 8013C3DC 0010599C  7F C3 F3 78 */	mr r3, r30
/* 8013C3E0 001059A0  48 2F 88 4D */	bl __dl__FPv
.L_8013C3E4:
/* 8013C3E4 001059A4  7F C3 F3 78 */	mr r3, r30
/* 8013C3E8 001059A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013C3EC 001059AC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8013C3F0 001059B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013C3F4 001059B4  7C 08 03 A6 */	mtlr r0
/* 8013C3F8 001059B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8013C3FC 001059BC  4E 80 00 20 */	blr
.endfn fn_8013C348

.fn fn_8013C400, global
/* 8013C400 001059C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013C404 001059C4  7C 08 02 A6 */	mflr r0
/* 8013C408 001059C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013C40C 001059CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013C410 001059D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8013C414 001059D4  7C 9F 23 78 */	mr r31, r4
/* 8013C418 001059D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8013C41C 001059DC  7C 7E 1B 78 */	mr r30, r3
/* 8013C420 001059E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8013C424 001059E4  41 82 01 08 */	beq .L_8013C52C
/* 8013C428 001059E8  37 A3 00 7C */	addic. r29, r3, 0x7c
/* 8013C42C 001059EC  41 82 00 6C */	beq .L_8013C498
/* 8013C430 001059F0  41 82 00 68 */	beq .L_8013C498
/* 8013C434 001059F4  3C 80 80 53 */	lis r4, __vt___reslist_base_IUIWindow@ha
/* 8013C438 001059F8  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 8013C43C 001059FC  38 84 1D EC */	addi r4, r4, __vt___reslist_base_IUIWindow@l
/* 8013C440 00105A00  90 9D 00 00 */	stw r4, 0x0(r29)
/* 8013C444 00105A04  38 00 00 00 */	li r0, 0x0
/* 8013C448 00105A08  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8013C44C 00105A0C  48 00 00 10 */	b .L_8013C45C
.L_8013C450:
/* 8013C450 00105A10  7C 83 23 78 */	mr r3, r4
/* 8013C454 00105A14  80 84 00 00 */	lwz r4, 0x0(r4)
/* 8013C458 00105A18  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013C45C:
/* 8013C45C 00105A1C  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 8013C460 00105A20  7C 04 18 40 */	cmplw r4, r3
/* 8013C464 00105A24  40 82 FF EC */	bne .L_8013C450
/* 8013C468 00105A28  90 63 00 00 */	stw r3, 0x0(r3)
/* 8013C46C 00105A2C  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 8013C470 00105A30  90 63 00 04 */	stw r3, 0x4(r3)
/* 8013C474 00105A34  88 1D 00 1C */	lbz r0, 0x1c(r29)
/* 8013C478 00105A38  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013C47C 00105A3C  40 82 00 1C */	bne .L_8013C498
/* 8013C480 00105A40  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8013C484 00105A44  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013C488 00105A48  41 82 00 10 */	beq .L_8013C498
/* 8013C48C 00105A4C  48 2F 89 55 */	bl __dla__FPv
/* 8013C490 00105A50  38 00 00 00 */	li r0, 0x0
/* 8013C494 00105A54  90 1D 00 14 */	stw r0, 0x14(r29)
.L_8013C498:
/* 8013C498 00105A58  37 BE 00 5C */	addic. r29, r30, 0x5c
/* 8013C49C 00105A5C  41 82 00 6C */	beq .L_8013C508
/* 8013C4A0 00105A60  41 82 00 68 */	beq .L_8013C508
/* 8013C4A4 00105A64  3C 80 80 53 */	lis r4, __vt___reslist_base_IUIWindow@ha
/* 8013C4A8 00105A68  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 8013C4AC 00105A6C  38 84 1D EC */	addi r4, r4, __vt___reslist_base_IUIWindow@l
/* 8013C4B0 00105A70  90 9D 00 00 */	stw r4, 0x0(r29)
/* 8013C4B4 00105A74  38 00 00 00 */	li r0, 0x0
/* 8013C4B8 00105A78  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8013C4BC 00105A7C  48 00 00 10 */	b .L_8013C4CC
.L_8013C4C0:
/* 8013C4C0 00105A80  7C 83 23 78 */	mr r3, r4
/* 8013C4C4 00105A84  80 84 00 00 */	lwz r4, 0x0(r4)
/* 8013C4C8 00105A88  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013C4CC:
/* 8013C4CC 00105A8C  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 8013C4D0 00105A90  7C 04 18 40 */	cmplw r4, r3
/* 8013C4D4 00105A94  40 82 FF EC */	bne .L_8013C4C0
/* 8013C4D8 00105A98  90 63 00 00 */	stw r3, 0x0(r3)
/* 8013C4DC 00105A9C  80 7D 00 04 */	lwz r3, 0x4(r29)
/* 8013C4E0 00105AA0  90 63 00 04 */	stw r3, 0x4(r3)
/* 8013C4E4 00105AA4  88 1D 00 1C */	lbz r0, 0x1c(r29)
/* 8013C4E8 00105AA8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013C4EC 00105AAC  40 82 00 1C */	bne .L_8013C508
/* 8013C4F0 00105AB0  80 7D 00 14 */	lwz r3, 0x14(r29)
/* 8013C4F4 00105AB4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013C4F8 00105AB8  41 82 00 10 */	beq .L_8013C508
/* 8013C4FC 00105ABC  48 2F 88 E5 */	bl __dla__FPv
/* 8013C500 00105AC0  38 00 00 00 */	li r0, 0x0
/* 8013C504 00105AC4  90 1D 00 14 */	stw r0, 0x14(r29)
.L_8013C508:
/* 8013C508 00105AC8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8013C50C 00105ACC  41 82 00 10 */	beq .L_8013C51C
/* 8013C510 00105AD0  7F C3 F3 78 */	mr r3, r30
/* 8013C514 00105AD4  38 80 00 00 */	li r4, 0x0
/* 8013C518 00105AD8  48 30 86 21 */	bl fn_80444B38
.L_8013C51C:
/* 8013C51C 00105ADC  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8013C520 00105AE0  40 81 00 0C */	ble .L_8013C52C
/* 8013C524 00105AE4  7F C3 F3 78 */	mr r3, r30
/* 8013C528 00105AE8  48 2F 87 05 */	bl __dl__FPv
.L_8013C52C:
/* 8013C52C 00105AEC  7F C3 F3 78 */	mr r3, r30
/* 8013C530 00105AF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8013C534 00105AF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8013C538 00105AF8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8013C53C 00105AFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013C540 00105B00  7C 08 03 A6 */	mtlr r0
/* 8013C544 00105B04  38 21 00 20 */	addi r1, r1, 0x20
/* 8013C548 00105B08  4E 80 00 20 */	blr
.endfn fn_8013C400

.fn fn_8013C54C, global
/* 8013C54C 00105B0C  80 6D A7 F8 */	lwz r3, lbl_80666978@sda21(r13)
/* 8013C550 00105B10  4E 80 00 20 */	blr
.endfn fn_8013C54C

.fn fn_8013C554, global
/* 8013C554 00105B14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013C558 00105B18  7C 08 02 A6 */	mflr r0
/* 8013C55C 00105B1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013C560 00105B20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013C564 00105B24  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8013C568 00105B28  7C 7E 1B 78 */	mr r30, r3
/* 8013C56C 00105B2C  48 2F B0 49 */	bl fn_804375B4
/* 8013C570 00105B30  7C 64 1B 78 */	mr r4, r3
/* 8013C574 00105B34  38 60 00 54 */	li r3, 0x54
/* 8013C578 00105B38  48 2F 84 E5 */	bl mm_malloc
/* 8013C57C 00105B3C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013C580 00105B40  7C 7F 1B 78 */	mr r31, r3
/* 8013C584 00105B44  41 82 00 58 */	beq .L_8013C5DC
/* 8013C588 00105B48  48 30 84 91 */	bl __ct__8CProcessFv
/* 8013C58C 00105B4C  3C 60 80 53 */	lis r3, __vt__CTTask_CUIWindowManager_CTest@ha
/* 8013C590 00105B50  3C A0 80 51 */	lis r5, lbl_8050CE10@ha
/* 8013C594 00105B54  38 63 1E 40 */	addi r3, r3, __vt__CTTask_CUIWindowManager_CTest@l
/* 8013C598 00105B58  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8013C59C 00105B5C  38 A5 CE 10 */	addi r5, r5, lbl_8050CE10@l
/* 8013C5A0 00105B60  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8013C5A4 00105B64  3C 60 80 53 */	lis r3, __vt__CUIWindowManager_CTest@ha
/* 8013C5A8 00105B68  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8013C5AC 00105B6C  38 63 1D F8 */	addi r3, r3, __vt__CUIWindowManager_CTest@l
/* 8013C5B0 00105B70  90 9F 00 3C */	stw r4, 0x3c(r31)
/* 8013C5B4 00105B74  90 1F 00 40 */	stw r0, 0x40(r31)
/* 8013C5B8 00105B78  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8013C5BC 00105B7C  90 1F 00 44 */	stw r0, 0x44(r31)
/* 8013C5C0 00105B80  80 05 00 04 */	lwz r0, 0x4(r5)
/* 8013C5C4 00105B84  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8013C5C8 00105B88  90 9F 00 48 */	stw r4, 0x48(r31)
/* 8013C5CC 00105B8C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8013C5D0 00105B90  80 05 00 08 */	lwz r0, 0x8(r5)
/* 8013C5D4 00105B94  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8013C5D8 00105B98  90 7F 00 10 */	stw r3, 0x10(r31)
.L_8013C5DC:
/* 8013C5DC 00105B9C  93 FE 00 9C */	stw r31, 0x9c(r30)
/* 8013C5E0 00105BA0  7F E3 FB 78 */	mr r3, r31
/* 8013C5E4 00105BA4  38 A0 00 00 */	li r5, 0x0
/* 8013C5E8 00105BA8  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013C5EC 00105BAC  48 30 86 89 */	bl fn_80444C74
/* 8013C5F0 00105BB0  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8013C5F4 00105BB4  41 82 00 08 */	beq .L_8013C5FC
/* 8013C5F8 00105BB8  3B DE 00 54 */	addi r30, r30, 0x54
.L_8013C5FC:
/* 8013C5FC 00105BBC  4B F6 0A B9 */	bl fn_8009D0B4
/* 8013C600 00105BC0  7F C3 F3 78 */	mr r3, r30
/* 8013C604 00105BC4  4B F6 0E 11 */	bl fn_8009D414
/* 8013C608 00105BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013C60C 00105BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013C610 00105BD0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8013C614 00105BD4  7C 08 03 A6 */	mtlr r0
/* 8013C618 00105BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8013C61C 00105BDC  4E 80 00 20 */	blr
.endfn fn_8013C554

.fn fn_8013C620, global
/* 8013C620 00105BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013C624 00105BE4  7C 08 02 A6 */	mflr r0
/* 8013C628 00105BE8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013C62C 00105BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013C630 00105BF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013C634 00105BF4  7C 9F 23 78 */	mr r31, r4
/* 8013C638 00105BF8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8013C63C 00105BFC  7C 7E 1B 78 */	mr r30, r3
/* 8013C640 00105C00  41 82 00 1C */	beq .L_8013C65C
/* 8013C644 00105C04  38 80 00 00 */	li r4, 0x0
/* 8013C648 00105C08  48 30 84 F1 */	bl fn_80444B38
/* 8013C64C 00105C0C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8013C650 00105C10  40 81 00 0C */	ble .L_8013C65C
/* 8013C654 00105C14  7F C3 F3 78 */	mr r3, r30
/* 8013C658 00105C18  48 2F 85 D5 */	bl __dl__FPv
.L_8013C65C:
/* 8013C65C 00105C1C  7F C3 F3 78 */	mr r3, r30
/* 8013C660 00105C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013C664 00105C24  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8013C668 00105C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013C66C 00105C2C  7C 08 03 A6 */	mtlr r0
/* 8013C670 00105C30  38 21 00 10 */	addi r1, r1, 0x10
/* 8013C674 00105C34  4E 80 00 20 */	blr
.endfn fn_8013C620

.fn fn_8013C678, global
/* 8013C678 00105C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013C67C 00105C3C  7C 08 02 A6 */	mflr r0
/* 8013C680 00105C40  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013C684 00105C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013C688 00105C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013C68C 00105C4C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8013C690 00105C50  7C 7E 1B 78 */	mr r30, r3
/* 8013C694 00105C54  7F DF F3 78 */	mr r31, r30
/* 8013C698 00105C58  41 82 00 08 */	beq .L_8013C6A0
/* 8013C69C 00105C5C  3B E3 00 54 */	addi r31, r3, 0x54
.L_8013C6A0:
/* 8013C6A0 00105C60  4B F6 0A 15 */	bl fn_8009D0B4
/* 8013C6A4 00105C64  7F E3 FB 78 */	mr r3, r31
/* 8013C6A8 00105C68  4B F6 0E 6D */	bl fn_8009D514
/* 8013C6AC 00105C6C  80 7E 00 9C */	lwz r3, 0x9c(r30)
/* 8013C6B0 00105C70  38 80 00 01 */	li r4, 0x1
/* 8013C6B4 00105C74  38 00 00 00 */	li r0, 0x0
/* 8013C6B8 00105C78  98 83 00 39 */	stb r4, 0x39(r3)
/* 8013C6BC 00105C7C  90 0D A7 F8 */	stw r0, lbl_80666978@sda21(r13)
/* 8013C6C0 00105C80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013C6C4 00105C84  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8013C6C8 00105C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013C6CC 00105C8C  7C 08 03 A6 */	mtlr r0
/* 8013C6D0 00105C90  38 21 00 10 */	addi r1, r1, 0x10
/* 8013C6D4 00105C94  4E 80 00 20 */	blr
.endfn fn_8013C678

.fn fn_8013C6D8, global
/* 8013C6D8 00105C98  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8013C6DC 00105C9C  81 0D A7 F8 */	lwz r8, lbl_80666978@sda21(r13)
/* 8013C6E0 00105CA0  2C 08 00 00 */	cmpwi r8, 0x0
/* 8013C6E4 00105CA4  41 82 04 C8 */	beq .L_8013CBAC
/* 8013C6E8 00105CA8  80 A8 00 60 */	lwz r5, 0x60(r8)
/* 8013C6EC 00105CAC  80 E5 00 00 */	lwz r7, 0x0(r5)
/* 8013C6F0 00105CB0  48 00 00 34 */	b .L_8013C724
.L_8013C6F4:
/* 8013C6F4 00105CB4  80 87 00 08 */	lwz r4, 0x8(r7)
/* 8013C6F8 00105CB8  80 C4 00 5C */	lwz r6, 0x5c(r4)
/* 8013C6FC 00105CBC  2C 06 00 00 */	cmpwi r6, 0x0
/* 8013C700 00105CC0  40 82 00 0C */	bne .L_8013C70C
/* 8013C704 00105CC4  80 04 00 60 */	lwz r0, 0x60(r4)
/* 8013C708 00105CC8  48 00 00 08 */	b .L_8013C710
.L_8013C70C:
/* 8013C70C 00105CCC  80 06 08 28 */	lwz r0, 0x828(r6)
.L_8013C710:
/* 8013C710 00105CD0  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013C714 00105CD4  40 81 00 0C */	ble .L_8013C720
/* 8013C718 00105CD8  B0 0D A7 FC */	sth r0, lbl_8066697C@sda21(r13)
/* 8013C71C 00105CDC  48 00 00 10 */	b .L_8013C72C
.L_8013C720:
/* 8013C720 00105CE0  80 E7 00 00 */	lwz r7, 0x0(r7)
.L_8013C724:
/* 8013C724 00105CE4  7C 07 28 40 */	cmplw r7, r5
/* 8013C728 00105CE8  40 82 FF CC */	bne .L_8013C6F4
.L_8013C72C:
/* 8013C72C 00105CEC  80 A8 00 80 */	lwz r5, 0x80(r8)
/* 8013C730 00105CF0  80 E5 00 00 */	lwz r7, 0x0(r5)
/* 8013C734 00105CF4  48 00 00 34 */	b .L_8013C768
.L_8013C738:
/* 8013C738 00105CF8  80 87 00 08 */	lwz r4, 0x8(r7)
/* 8013C73C 00105CFC  80 C4 00 5C */	lwz r6, 0x5c(r4)
/* 8013C740 00105D00  2C 06 00 00 */	cmpwi r6, 0x0
/* 8013C744 00105D04  40 82 00 0C */	bne .L_8013C750
/* 8013C748 00105D08  80 04 00 60 */	lwz r0, 0x60(r4)
/* 8013C74C 00105D0C  48 00 00 08 */	b .L_8013C754
.L_8013C750:
/* 8013C750 00105D10  80 06 08 28 */	lwz r0, 0x828(r6)
.L_8013C754:
/* 8013C754 00105D14  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013C758 00105D18  40 81 00 0C */	ble .L_8013C764
/* 8013C75C 00105D1C  B0 0D A7 FC */	sth r0, lbl_8066697C@sda21(r13)
/* 8013C760 00105D20  48 00 00 10 */	b .L_8013C770
.L_8013C764:
/* 8013C764 00105D24  80 E7 00 00 */	lwz r7, 0x0(r7)
.L_8013C768:
/* 8013C768 00105D28  7C 07 28 40 */	cmplw r7, r5
/* 8013C76C 00105D2C  40 82 FF CC */	bne .L_8013C738
.L_8013C770:
/* 8013C770 00105D30  80 A3 00 60 */	lwz r5, 0x60(r3)
/* 8013C774 00105D34  80 E5 00 00 */	lwz r7, 0x0(r5)
/* 8013C778 00105D38  7C E6 3B 78 */	mr r6, r7
/* 8013C77C 00105D3C  48 00 00 48 */	b .L_8013C7C4
.L_8013C780:
/* 8013C780 00105D40  80 86 00 08 */	lwz r4, 0x8(r6)
/* 8013C784 00105D44  88 04 00 65 */	lbz r0, 0x65(r4)
/* 8013C788 00105D48  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013C78C 00105D4C  40 82 00 10 */	bne .L_8013C79C
/* 8013C790 00105D50  88 03 00 A1 */	lbz r0, 0xa1(r3)
/* 8013C794 00105D54  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013C798 00105D58  41 82 00 28 */	beq .L_8013C7C0
.L_8013C79C:
/* 8013C79C 00105D5C  38 A0 00 01 */	li r5, 0x1
/* 8013C7A0 00105D60  48 00 00 10 */	b .L_8013C7B0
.L_8013C7A4:
/* 8013C7A4 00105D64  80 87 00 08 */	lwz r4, 0x8(r7)
/* 8013C7A8 00105D68  98 A4 00 65 */	stb r5, 0x65(r4)
/* 8013C7AC 00105D6C  80 E7 00 00 */	lwz r7, 0x0(r7)
.L_8013C7B0:
/* 8013C7B0 00105D70  80 03 00 60 */	lwz r0, 0x60(r3)
/* 8013C7B4 00105D74  7C 07 00 40 */	cmplw r7, r0
/* 8013C7B8 00105D78  40 82 FF EC */	bne .L_8013C7A4
/* 8013C7BC 00105D7C  48 00 00 10 */	b .L_8013C7CC
.L_8013C7C0:
/* 8013C7C0 00105D80  80 C6 00 00 */	lwz r6, 0x0(r6)
.L_8013C7C4:
/* 8013C7C4 00105D84  7C 06 28 40 */	cmplw r6, r5
/* 8013C7C8 00105D88  40 82 FF B8 */	bne .L_8013C780
.L_8013C7CC:
/* 8013C7CC 00105D8C  80 A3 00 80 */	lwz r5, 0x80(r3)
/* 8013C7D0 00105D90  80 E5 00 00 */	lwz r7, 0x0(r5)
/* 8013C7D4 00105D94  7C E6 3B 78 */	mr r6, r7
/* 8013C7D8 00105D98  48 00 00 48 */	b .L_8013C820
.L_8013C7DC:
/* 8013C7DC 00105D9C  80 86 00 08 */	lwz r4, 0x8(r6)
/* 8013C7E0 00105DA0  88 04 00 65 */	lbz r0, 0x65(r4)
/* 8013C7E4 00105DA4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013C7E8 00105DA8  40 82 00 10 */	bne .L_8013C7F8
/* 8013C7EC 00105DAC  88 03 00 A1 */	lbz r0, 0xa1(r3)
/* 8013C7F0 00105DB0  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013C7F4 00105DB4  41 82 00 28 */	beq .L_8013C81C
.L_8013C7F8:
/* 8013C7F8 00105DB8  38 A0 00 01 */	li r5, 0x1
/* 8013C7FC 00105DBC  48 00 00 10 */	b .L_8013C80C
.L_8013C800:
/* 8013C800 00105DC0  80 87 00 08 */	lwz r4, 0x8(r7)
/* 8013C804 00105DC4  98 A4 00 65 */	stb r5, 0x65(r4)
/* 8013C808 00105DC8  80 E7 00 00 */	lwz r7, 0x0(r7)
.L_8013C80C:
/* 8013C80C 00105DCC  80 03 00 80 */	lwz r0, 0x80(r3)
/* 8013C810 00105DD0  7C 07 00 40 */	cmplw r7, r0
/* 8013C814 00105DD4  40 82 FF EC */	bne .L_8013C800
/* 8013C818 00105DD8  48 00 00 10 */	b .L_8013C828
.L_8013C81C:
/* 8013C81C 00105DDC  80 C6 00 00 */	lwz r6, 0x0(r6)
.L_8013C820:
/* 8013C820 00105DE0  7C 06 28 40 */	cmplw r6, r5
/* 8013C824 00105DE4  40 82 FF B8 */	bne .L_8013C7DC
.L_8013C828:
/* 8013C828 00105DE8  80 C3 00 60 */	lwz r6, 0x60(r3)
/* 8013C82C 00105DEC  38 E1 00 08 */	addi r7, r1, 0x8
/* 8013C830 00105DF0  38 80 00 00 */	li r4, 0x0
/* 8013C834 00105DF4  38 A0 00 00 */	li r5, 0x0
/* 8013C838 00105DF8  81 26 00 00 */	lwz r9, 0x0(r6)
/* 8013C83C 00105DFC  38 C0 00 01 */	li r6, 0x1
/* 8013C840 00105E00  48 00 00 34 */	b .L_8013C874
.L_8013C844:
/* 8013C844 00105E04  81 09 00 08 */	lwz r8, 0x8(r9)
/* 8013C848 00105E08  88 08 00 64 */	lbz r0, 0x64(r8)
/* 8013C84C 00105E0C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013C850 00105E10  40 82 00 10 */	bne .L_8013C860
/* 8013C854 00105E14  88 03 00 A0 */	lbz r0, 0xa0(r3)
/* 8013C858 00105E18  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013C85C 00105E1C  41 82 00 14 */	beq .L_8013C870
.L_8013C860:
/* 8013C860 00105E20  98 C8 00 39 */	stb r6, 0x39(r8)
/* 8013C864 00105E24  38 84 00 01 */	addi r4, r4, 0x1
/* 8013C868 00105E28  7D 27 29 2E */	stwx r9, r7, r5
/* 8013C86C 00105E2C  38 A5 00 04 */	addi r5, r5, 0x4
.L_8013C870:
/* 8013C870 00105E30  81 29 00 00 */	lwz r9, 0x0(r9)
.L_8013C874:
/* 8013C874 00105E34  80 03 00 60 */	lwz r0, 0x60(r3)
/* 8013C878 00105E38  7C 09 00 40 */	cmplw r9, r0
/* 8013C87C 00105E3C  40 82 FF C8 */	bne .L_8013C844
/* 8013C880 00105E40  2C 84 00 00 */	cmpwi cr1, r4, 0x0
/* 8013C884 00105E44  38 A0 00 00 */	li r5, 0x0
/* 8013C888 00105E48  40 85 01 5C */	ble cr1, .L_8013C9E4
/* 8013C88C 00105E4C  2C 04 00 08 */	cmpwi r4, 0x8
/* 8013C890 00105E50  38 E4 FF F8 */	addi r7, r4, -0x8
/* 8013C894 00105E54  40 81 01 10 */	ble .L_8013C9A4
/* 8013C898 00105E58  39 00 00 00 */	li r8, 0x0
/* 8013C89C 00105E5C  41 84 00 18 */	blt cr1, .L_8013C8B4
/* 8013C8A0 00105E60  3C C0 80 00 */	lis r6, 0x8000
/* 8013C8A4 00105E64  38 06 FF FE */	addi r0, r6, -0x2
/* 8013C8A8 00105E68  7C 04 00 00 */	cmpw r4, r0
/* 8013C8AC 00105E6C  41 81 00 08 */	bgt .L_8013C8B4
/* 8013C8B0 00105E70  39 00 00 01 */	li r8, 0x1
.L_8013C8B4:
/* 8013C8B4 00105E74  2C 08 00 00 */	cmpwi r8, 0x0
/* 8013C8B8 00105E78  41 82 00 EC */	beq .L_8013C9A4
/* 8013C8BC 00105E7C  38 07 00 07 */	addi r0, r7, 0x7
/* 8013C8C0 00105E80  39 41 00 08 */	addi r10, r1, 0x8
/* 8013C8C4 00105E84  54 00 E8 FE */	srwi r0, r0, 3
/* 8013C8C8 00105E88  38 C0 00 00 */	li r6, 0x0
/* 8013C8CC 00105E8C  7C 09 03 A6 */	mtctr r0
/* 8013C8D0 00105E90  2C 07 00 00 */	cmpwi r7, 0x0
/* 8013C8D4 00105E94  40 81 00 D0 */	ble .L_8013C9A4
.L_8013C8D8:
/* 8013C8D8 00105E98  81 2A 00 00 */	lwz r9, 0x0(r10)
/* 8013C8DC 00105E9C  38 A5 00 08 */	addi r5, r5, 0x8
/* 8013C8E0 00105EA0  80 E9 00 04 */	lwz r7, 0x4(r9)
/* 8013C8E4 00105EA4  81 09 00 00 */	lwz r8, 0x0(r9)
/* 8013C8E8 00105EA8  91 07 00 00 */	stw r8, 0x0(r7)
/* 8013C8EC 00105EAC  90 E8 00 04 */	stw r7, 0x4(r8)
/* 8013C8F0 00105EB0  90 C9 00 00 */	stw r6, 0x0(r9)
/* 8013C8F4 00105EB4  81 2A 00 04 */	lwz r9, 0x4(r10)
/* 8013C8F8 00105EB8  81 09 00 04 */	lwz r8, 0x4(r9)
/* 8013C8FC 00105EBC  80 E9 00 00 */	lwz r7, 0x0(r9)
/* 8013C900 00105EC0  90 E8 00 00 */	stw r7, 0x0(r8)
/* 8013C904 00105EC4  91 07 00 04 */	stw r8, 0x4(r7)
/* 8013C908 00105EC8  90 C9 00 00 */	stw r6, 0x0(r9)
/* 8013C90C 00105ECC  81 2A 00 08 */	lwz r9, 0x8(r10)
/* 8013C910 00105ED0  81 09 00 04 */	lwz r8, 0x4(r9)
/* 8013C914 00105ED4  80 E9 00 00 */	lwz r7, 0x0(r9)
/* 8013C918 00105ED8  90 E8 00 00 */	stw r7, 0x0(r8)
/* 8013C91C 00105EDC  91 07 00 04 */	stw r8, 0x4(r7)
/* 8013C920 00105EE0  90 C9 00 00 */	stw r6, 0x0(r9)
/* 8013C924 00105EE4  81 2A 00 0C */	lwz r9, 0xc(r10)
/* 8013C928 00105EE8  81 09 00 04 */	lwz r8, 0x4(r9)
/* 8013C92C 00105EEC  80 E9 00 00 */	lwz r7, 0x0(r9)
/* 8013C930 00105EF0  90 E8 00 00 */	stw r7, 0x0(r8)
/* 8013C934 00105EF4  91 07 00 04 */	stw r8, 0x4(r7)
/* 8013C938 00105EF8  90 C9 00 00 */	stw r6, 0x0(r9)
/* 8013C93C 00105EFC  81 2A 00 10 */	lwz r9, 0x10(r10)
/* 8013C940 00105F00  81 09 00 04 */	lwz r8, 0x4(r9)
/* 8013C944 00105F04  80 E9 00 00 */	lwz r7, 0x0(r9)
/* 8013C948 00105F08  90 E8 00 00 */	stw r7, 0x0(r8)
/* 8013C94C 00105F0C  91 07 00 04 */	stw r8, 0x4(r7)
/* 8013C950 00105F10  90 C9 00 00 */	stw r6, 0x0(r9)
/* 8013C954 00105F14  81 2A 00 14 */	lwz r9, 0x14(r10)
/* 8013C958 00105F18  81 09 00 04 */	lwz r8, 0x4(r9)
/* 8013C95C 00105F1C  80 E9 00 00 */	lwz r7, 0x0(r9)
/* 8013C960 00105F20  90 E8 00 00 */	stw r7, 0x0(r8)
/* 8013C964 00105F24  91 07 00 04 */	stw r8, 0x4(r7)
/* 8013C968 00105F28  90 C9 00 00 */	stw r6, 0x0(r9)
/* 8013C96C 00105F2C  81 2A 00 18 */	lwz r9, 0x18(r10)
/* 8013C970 00105F30  81 09 00 04 */	lwz r8, 0x4(r9)
/* 8013C974 00105F34  80 E9 00 00 */	lwz r7, 0x0(r9)
/* 8013C978 00105F38  90 E8 00 00 */	stw r7, 0x0(r8)
/* 8013C97C 00105F3C  91 07 00 04 */	stw r8, 0x4(r7)
/* 8013C980 00105F40  90 C9 00 00 */	stw r6, 0x0(r9)
/* 8013C984 00105F44  81 2A 00 1C */	lwz r9, 0x1c(r10)
/* 8013C988 00105F48  39 4A 00 20 */	addi r10, r10, 0x20
/* 8013C98C 00105F4C  81 09 00 04 */	lwz r8, 0x4(r9)
/* 8013C990 00105F50  80 E9 00 00 */	lwz r7, 0x0(r9)
/* 8013C994 00105F54  90 E8 00 00 */	stw r7, 0x0(r8)
/* 8013C998 00105F58  91 07 00 04 */	stw r8, 0x4(r7)
/* 8013C99C 00105F5C  90 C9 00 00 */	stw r6, 0x0(r9)
/* 8013C9A0 00105F60  42 00 FF 38 */	bdnz .L_8013C8D8
.L_8013C9A4:
/* 8013C9A4 00105F64  54 A7 10 3A */	slwi r7, r5, 2
/* 8013C9A8 00105F68  39 01 00 08 */	addi r8, r1, 0x8
/* 8013C9AC 00105F6C  7C 05 20 50 */	subf r0, r5, r4
/* 8013C9B0 00105F70  38 C0 00 00 */	li r6, 0x0
/* 8013C9B4 00105F74  7D 08 3A 14 */	add r8, r8, r7
/* 8013C9B8 00105F78  7C 09 03 A6 */	mtctr r0
/* 8013C9BC 00105F7C  7C 05 20 00 */	cmpw r5, r4
/* 8013C9C0 00105F80  40 80 00 24 */	bge .L_8013C9E4
.L_8013C9C4:
/* 8013C9C4 00105F84  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 8013C9C8 00105F88  39 08 00 04 */	addi r8, r8, 0x4
/* 8013C9CC 00105F8C  80 A7 00 04 */	lwz r5, 0x4(r7)
/* 8013C9D0 00105F90  80 87 00 00 */	lwz r4, 0x0(r7)
/* 8013C9D4 00105F94  90 85 00 00 */	stw r4, 0x0(r5)
/* 8013C9D8 00105F98  90 A4 00 04 */	stw r5, 0x4(r4)
/* 8013C9DC 00105F9C  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013C9E0 00105FA0  42 00 FF E4 */	bdnz .L_8013C9C4
.L_8013C9E4:
/* 8013C9E4 00105FA4  80 A3 00 80 */	lwz r5, 0x80(r3)
/* 8013C9E8 00105FA8  38 C1 00 08 */	addi r6, r1, 0x8
/* 8013C9EC 00105FAC  39 40 00 00 */	li r10, 0x0
/* 8013C9F0 00105FB0  38 80 00 00 */	li r4, 0x0
/* 8013C9F4 00105FB4  81 05 00 00 */	lwz r8, 0x0(r5)
/* 8013C9F8 00105FB8  38 A0 00 01 */	li r5, 0x1
/* 8013C9FC 00105FBC  48 00 00 34 */	b .L_8013CA30
.L_8013CA00:
/* 8013CA00 00105FC0  80 E8 00 08 */	lwz r7, 0x8(r8)
/* 8013CA04 00105FC4  88 07 00 64 */	lbz r0, 0x64(r7)
/* 8013CA08 00105FC8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013CA0C 00105FCC  40 82 00 10 */	bne .L_8013CA1C
/* 8013CA10 00105FD0  88 03 00 A0 */	lbz r0, 0xa0(r3)
/* 8013CA14 00105FD4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013CA18 00105FD8  41 82 00 14 */	beq .L_8013CA2C
.L_8013CA1C:
/* 8013CA1C 00105FDC  98 A7 00 39 */	stb r5, 0x39(r7)
/* 8013CA20 00105FE0  39 4A 00 01 */	addi r10, r10, 0x1
/* 8013CA24 00105FE4  7D 06 21 2E */	stwx r8, r6, r4
/* 8013CA28 00105FE8  38 84 00 04 */	addi r4, r4, 0x4
.L_8013CA2C:
/* 8013CA2C 00105FEC  81 08 00 00 */	lwz r8, 0x0(r8)
.L_8013CA30:
/* 8013CA30 00105FF0  80 03 00 80 */	lwz r0, 0x80(r3)
/* 8013CA34 00105FF4  7C 08 00 40 */	cmplw r8, r0
/* 8013CA38 00105FF8  40 82 FF C8 */	bne .L_8013CA00
/* 8013CA3C 00105FFC  2C 8A 00 00 */	cmpwi cr1, r10, 0x0
/* 8013CA40 00106000  38 80 00 00 */	li r4, 0x0
/* 8013CA44 00106004  40 85 01 5C */	ble cr1, .L_8013CBA0
/* 8013CA48 00106008  2C 0A 00 08 */	cmpwi r10, 0x8
/* 8013CA4C 0010600C  38 CA FF F8 */	addi r6, r10, -0x8
/* 8013CA50 00106010  40 81 01 10 */	ble .L_8013CB60
/* 8013CA54 00106014  38 E0 00 00 */	li r7, 0x0
/* 8013CA58 00106018  41 84 00 18 */	blt cr1, .L_8013CA70
/* 8013CA5C 0010601C  3C A0 80 00 */	lis r5, 0x8000
/* 8013CA60 00106020  38 05 FF FE */	addi r0, r5, -0x2
/* 8013CA64 00106024  7C 0A 00 00 */	cmpw r10, r0
/* 8013CA68 00106028  41 81 00 08 */	bgt .L_8013CA70
/* 8013CA6C 0010602C  38 E0 00 01 */	li r7, 0x1
.L_8013CA70:
/* 8013CA70 00106030  2C 07 00 00 */	cmpwi r7, 0x0
/* 8013CA74 00106034  41 82 00 EC */	beq .L_8013CB60
/* 8013CA78 00106038  38 06 00 07 */	addi r0, r6, 0x7
/* 8013CA7C 0010603C  39 21 00 08 */	addi r9, r1, 0x8
/* 8013CA80 00106040  54 00 E8 FE */	srwi r0, r0, 3
/* 8013CA84 00106044  38 A0 00 00 */	li r5, 0x0
/* 8013CA88 00106048  7C 09 03 A6 */	mtctr r0
/* 8013CA8C 0010604C  2C 06 00 00 */	cmpwi r6, 0x0
/* 8013CA90 00106050  40 81 00 D0 */	ble .L_8013CB60
.L_8013CA94:
/* 8013CA94 00106054  81 09 00 00 */	lwz r8, 0x0(r9)
/* 8013CA98 00106058  38 84 00 08 */	addi r4, r4, 0x8
/* 8013CA9C 0010605C  80 C8 00 04 */	lwz r6, 0x4(r8)
/* 8013CAA0 00106060  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 8013CAA4 00106064  90 E6 00 00 */	stw r7, 0x0(r6)
/* 8013CAA8 00106068  90 C7 00 04 */	stw r6, 0x4(r7)
/* 8013CAAC 0010606C  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013CAB0 00106070  81 09 00 04 */	lwz r8, 0x4(r9)
/* 8013CAB4 00106074  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013CAB8 00106078  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013CABC 0010607C  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013CAC0 00106080  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013CAC4 00106084  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013CAC8 00106088  81 09 00 08 */	lwz r8, 0x8(r9)
/* 8013CACC 0010608C  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013CAD0 00106090  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013CAD4 00106094  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013CAD8 00106098  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013CADC 0010609C  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013CAE0 001060A0  81 09 00 0C */	lwz r8, 0xc(r9)
/* 8013CAE4 001060A4  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013CAE8 001060A8  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013CAEC 001060AC  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013CAF0 001060B0  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013CAF4 001060B4  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013CAF8 001060B8  81 09 00 10 */	lwz r8, 0x10(r9)
/* 8013CAFC 001060BC  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013CB00 001060C0  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013CB04 001060C4  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013CB08 001060C8  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013CB0C 001060CC  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013CB10 001060D0  81 09 00 14 */	lwz r8, 0x14(r9)
/* 8013CB14 001060D4  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013CB18 001060D8  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013CB1C 001060DC  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013CB20 001060E0  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013CB24 001060E4  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013CB28 001060E8  81 09 00 18 */	lwz r8, 0x18(r9)
/* 8013CB2C 001060EC  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013CB30 001060F0  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013CB34 001060F4  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013CB38 001060F8  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013CB3C 001060FC  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013CB40 00106100  81 09 00 1C */	lwz r8, 0x1c(r9)
/* 8013CB44 00106104  39 29 00 20 */	addi r9, r9, 0x20
/* 8013CB48 00106108  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013CB4C 0010610C  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013CB50 00106110  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013CB54 00106114  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013CB58 00106118  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013CB5C 0010611C  42 00 FF 38 */	bdnz .L_8013CA94
.L_8013CB60:
/* 8013CB60 00106120  54 86 10 3A */	slwi r6, r4, 2
/* 8013CB64 00106124  38 E1 00 08 */	addi r7, r1, 0x8
/* 8013CB68 00106128  7C 04 50 50 */	subf r0, r4, r10
/* 8013CB6C 0010612C  38 A0 00 00 */	li r5, 0x0
/* 8013CB70 00106130  7C E7 32 14 */	add r7, r7, r6
/* 8013CB74 00106134  7C 09 03 A6 */	mtctr r0
/* 8013CB78 00106138  7C 04 50 00 */	cmpw r4, r10
/* 8013CB7C 0010613C  40 80 00 24 */	bge .L_8013CBA0
.L_8013CB80:
/* 8013CB80 00106140  81 07 00 00 */	lwz r8, 0x0(r7)
/* 8013CB84 00106144  38 E7 00 04 */	addi r7, r7, 0x4
/* 8013CB88 00106148  80 C8 00 04 */	lwz r6, 0x4(r8)
/* 8013CB8C 0010614C  80 88 00 00 */	lwz r4, 0x0(r8)
/* 8013CB90 00106150  90 86 00 00 */	stw r4, 0x0(r6)
/* 8013CB94 00106154  90 C4 00 04 */	stw r6, 0x4(r4)
/* 8013CB98 00106158  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013CB9C 0010615C  42 00 FF E4 */	bdnz .L_8013CB80
.L_8013CBA0:
/* 8013CBA0 00106160  38 00 00 00 */	li r0, 0x0
/* 8013CBA4 00106164  98 03 00 A0 */	stb r0, 0xa0(r3)
/* 8013CBA8 00106168  98 03 00 A1 */	stb r0, 0xa1(r3)
.L_8013CBAC:
/* 8013CBAC 0010616C  38 21 00 50 */	addi r1, r1, 0x50
/* 8013CBB0 00106170  4E 80 00 20 */	blr
.endfn fn_8013C6D8

.fn fn_8013CBB4, global
/* 8013CBB4 00106174  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8013CBB8 00106178  7C 08 02 A6 */	mflr r0
/* 8013CBBC 0010617C  7C 85 30 00 */	cmpw cr1, r5, r6
/* 8013CBC0 00106180  90 01 00 84 */	stw r0, 0x84(r1)
/* 8013CBC4 00106184  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8013CBC8 00106188  7C 3F 0B 78 */	mr r31, r1
/* 8013CBCC 0010618C  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8013CBD0 00106190  7C 9E 23 78 */	mr r30, r4
/* 8013CBD4 00106194  41 86 03 E8 */	beq cr1, .L_8013CFBC
/* 8013CBD8 00106198  2C 04 0A 21 */	cmpwi r4, 0xa21
/* 8013CBDC 0010619C  40 80 00 28 */	bge .L_8013CC04
/* 8013CBE0 001061A0  2C 04 06 08 */	cmpwi r4, 0x608
/* 8013CBE4 001061A4  41 82 03 D8 */	beq .L_8013CFBC
/* 8013CBE8 001061A8  40 80 00 10 */	bge .L_8013CBF8
/* 8013CBEC 001061AC  2C 04 02 21 */	cmpwi r4, 0x221
/* 8013CBF0 001061B0  40 80 00 34 */	bge .L_8013CC24
/* 8013CBF4 001061B4  48 00 03 C8 */	b .L_8013CFBC
.L_8013CBF8:
/* 8013CBF8 001061B8  2C 04 07 98 */	cmpwi r4, 0x798
/* 8013CBFC 001061BC  40 80 03 C0 */	bge .L_8013CFBC
/* 8013CC00 001061C0  48 00 01 F4 */	b .L_8013CDF4
.L_8013CC04:
/* 8013CC04 001061C4  2C 04 20 C9 */	cmpwi r4, 0x20c9
/* 8013CC08 001061C8  40 80 00 10 */	bge .L_8013CC18
/* 8013CC0C 001061CC  2C 04 0B 4C */	cmpwi r4, 0xb4c
/* 8013CC10 001061D0  40 80 03 AC */	bge .L_8013CFBC
/* 8013CC14 001061D4  48 00 01 38 */	b .L_8013CD4C
.L_8013CC18:
/* 8013CC18 001061D8  2C 04 24 B0 */	cmpwi r4, 0x24b0
/* 8013CC1C 001061DC  40 80 03 A0 */	bge .L_8013CFBC
/* 8013CC20 001061E0  48 00 02 D0 */	b .L_8013CEF0
.L_8013CC24:
/* 8013CC24 001061E4  2C 05 00 00 */	cmpwi r5, 0x0
/* 8013CC28 001061E8  41 82 03 94 */	beq .L_8013CFBC
/* 8013CC2C 001061EC  2C 05 00 C8 */	cmpwi r5, 0xc8
/* 8013CC30 001061F0  41 82 03 8C */	beq .L_8013CFBC
/* 8013CC34 001061F4  2C 05 00 FE */	cmpwi r5, 0xfe
/* 8013CC38 001061F8  41 82 03 84 */	beq .L_8013CFBC
/* 8013CC3C 001061FC  2C 05 00 FF */	cmpwi r5, 0xff
/* 8013CC40 00106200  41 82 03 7C */	beq .L_8013CFBC
/* 8013CC44 00106204  38 60 33 4B */	li r3, 0x334b
/* 8013CC48 00106208  4B F6 03 45 */	bl fn_8009CF8C
/* 8013CC4C 0010620C  7C 60 00 34 */	cntlzw r0, r3
/* 8013CC50 00106210  54 00 D9 7F */	srwi. r0, r0, 5
/* 8013CC54 00106214  40 82 03 68 */	bne .L_8013CFBC
/* 8013CC58 00106218  38 60 33 7F */	li r3, 0x337f
/* 8013CC5C 0010621C  4B F6 03 31 */	bl fn_8009CF8C
/* 8013CC60 00106220  7C 60 00 34 */	cntlzw r0, r3
/* 8013CC64 00106224  54 00 D9 7F */	srwi. r0, r0, 5
/* 8013CC68 00106228  40 82 03 54 */	bne .L_8013CFBC
/* 8013CC6C 0010622C  80 0D A7 F8 */	lwz r0, lbl_80666978@sda21(r13)
/* 8013CC70 00106230  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013CC74 00106234  41 82 03 48 */	beq .L_8013CFBC
/* 8013CC78 00106238  38 7E FD E0 */	addi r3, r30, -0x220
/* 8013CC7C 0010623C  4B FF B4 BD */	bl fn_80138138
/* 8013CC80 00106240  3C C0 80 57 */	lis r6, lbl_80577510@ha
/* 8013CC84 00106244  3C 80 80 50 */	lis r4, lbl_804FC1AC@ha
/* 8013CC88 00106248  54 60 10 3A */	slwi r0, r3, 2
/* 8013CC8C 0010624C  38 BE FD E0 */	addi r5, r30, -0x220
/* 8013CC90 00106250  38 C6 75 10 */	addi r6, r6, lbl_80577510@l
/* 8013CC94 00106254  38 84 C1 AC */	addi r4, r4, lbl_804FC1AC@l
/* 8013CC98 00106258  7C 66 00 2E */	lwzx r3, r6, r0
/* 8013CC9C 0010625C  4B FF 95 4D */	bl fn_801361E8
/* 8013CCA0 00106260  54 60 06 3E */	clrlwi r0, r3, 24
/* 8013CCA4 00106264  28 00 00 02 */	cmplwi r0, 0x2
/* 8013CCA8 00106268  41 82 03 14 */	beq .L_8013CFBC
/* 8013CCAC 0010626C  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013CCB0 00106270  38 DE FD E0 */	addi r6, r30, -0x220
/* 8013CCB4 00106274  38 A0 00 01 */	li r5, 0x1
/* 8013CCB8 00106278  38 E0 00 00 */	li r7, 0x0
/* 8013CCBC 0010627C  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013CCC0 00106280  39 00 00 00 */	li r8, 0x0
/* 8013CCC4 00106284  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013CCC8 00106288  48 00 5E 85 */	bl fn_80142B4C
/* 8013CCCC 0010628C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013CCD0 00106290  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8013CCD4 00106294  41 82 02 E8 */	beq .L_8013CFBC
/* 8013CCD8 00106298  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013CCDC 0010629C  38 A0 00 00 */	li r5, 0x0
/* 8013CCE0 001062A0  38 C0 00 00 */	li r6, 0x0
/* 8013CCE4 001062A4  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013CCE8 001062A8  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013CCEC 001062AC  48 00 00 1C */	b .L_8013CD08
.L_8013CCF0:
/* 8013CCF0 001062B0  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013CCF4 001062B4  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013CCF8 001062B8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013CCFC 001062BC  41 82 00 14 */	beq .L_8013CD10
/* 8013CD00 001062C0  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013CD04 001062C4  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013CD08:
/* 8013CD08 001062C8  7C 05 38 00 */	cmpw r5, r7
/* 8013CD0C 001062CC  41 80 FF E4 */	blt .L_8013CCF0
.L_8013CD10:
/* 8013CD10 001062D0  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013CD14 001062D4  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013CD18 001062D8  7C 83 02 14 */	add r4, r3, r0
/* 8013CD1C 001062DC  34 64 00 08 */	addic. r3, r4, 0x8
/* 8013CD20 001062E0  41 82 00 10 */	beq .L_8013CD30
/* 8013CD24 001062E4  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8013CD28 001062E8  90 3F 00 74 */	stw r1, 0x74(r31)
/* 8013CD2C 001062EC  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013CD30:
/* 8013CD30 001062F0  91 04 00 00 */	stw r8, 0x0(r4)
/* 8013CD34 001062F4  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013CD38 001062F8  90 04 00 04 */	stw r0, 0x4(r4)
/* 8013CD3C 001062FC  80 68 00 04 */	lwz r3, 0x4(r8)
/* 8013CD40 00106300  90 83 00 00 */	stw r4, 0x0(r3)
/* 8013CD44 00106304  90 88 00 04 */	stw r4, 0x4(r8)
/* 8013CD48 00106308  48 00 02 74 */	b .L_8013CFBC
.L_8013CD4C:
/* 8013CD4C 0010630C  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013CD50 00106310  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013CD54 00106314  41 82 02 68 */	beq .L_8013CFBC
/* 8013CD58 00106318  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013CD5C 0010631C  38 A0 00 02 */	li r5, 0x2
/* 8013CD60 00106320  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013CD64 00106324  38 C0 00 00 */	li r6, 0x0
/* 8013CD68 00106328  38 E0 00 00 */	li r7, 0x0
/* 8013CD6C 0010632C  39 00 00 00 */	li r8, 0x0
/* 8013CD70 00106330  48 00 5D DD */	bl fn_80142B4C
/* 8013CD74 00106334  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013CD78 00106338  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8013CD7C 0010633C  41 82 02 40 */	beq .L_8013CFBC
/* 8013CD80 00106340  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013CD84 00106344  38 A0 00 00 */	li r5, 0x0
/* 8013CD88 00106348  38 C0 00 00 */	li r6, 0x0
/* 8013CD8C 0010634C  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013CD90 00106350  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013CD94 00106354  48 00 00 1C */	b .L_8013CDB0
.L_8013CD98:
/* 8013CD98 00106358  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013CD9C 0010635C  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013CDA0 00106360  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013CDA4 00106364  41 82 00 14 */	beq .L_8013CDB8
/* 8013CDA8 00106368  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013CDAC 0010636C  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013CDB0:
/* 8013CDB0 00106370  7C 05 38 00 */	cmpw r5, r7
/* 8013CDB4 00106374  41 80 FF E4 */	blt .L_8013CD98
.L_8013CDB8:
/* 8013CDB8 00106378  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013CDBC 0010637C  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013CDC0 00106380  7C 83 02 14 */	add r4, r3, r0
/* 8013CDC4 00106384  34 64 00 08 */	addic. r3, r4, 0x8
/* 8013CDC8 00106388  41 82 00 10 */	beq .L_8013CDD8
/* 8013CDCC 0010638C  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8013CDD0 00106390  90 3F 00 5C */	stw r1, 0x5c(r31)
/* 8013CDD4 00106394  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013CDD8:
/* 8013CDD8 00106398  91 04 00 00 */	stw r8, 0x0(r4)
/* 8013CDDC 0010639C  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013CDE0 001063A0  90 04 00 04 */	stw r0, 0x4(r4)
/* 8013CDE4 001063A4  80 68 00 04 */	lwz r3, 0x4(r8)
/* 8013CDE8 001063A8  90 83 00 00 */	stw r4, 0x0(r3)
/* 8013CDEC 001063AC  90 88 00 04 */	stw r4, 0x4(r8)
/* 8013CDF0 001063B0  48 00 01 CC */	b .L_8013CFBC
.L_8013CDF4:
/* 8013CDF4 001063B4  80 0D A5 A4 */	lwz r0, lbl_80666724@sda21(r13)
/* 8013CDF8 001063B8  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 8013CDFC 001063BC  41 82 00 4C */	beq .L_8013CE48
/* 8013CE00 001063C0  38 60 00 00 */	li r3, 0x0
/* 8013CE04 001063C4  4B F4 5F 51 */	bl fn_80082D54
/* 8013CE08 001063C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013CE0C 001063CC  41 82 00 3C */	beq .L_8013CE48
/* 8013CE10 001063D0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 8013CE14 001063D4  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8013CE18 001063D8  7D 89 03 A6 */	mtctr r12
/* 8013CE1C 001063DC  4E 80 04 21 */	bctrl
/* 8013CE20 001063E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013CE24 001063E4  41 82 00 24 */	beq .L_8013CE48
/* 8013CE28 001063E8  4B F7 A2 65 */	bl fn_800B708C
/* 8013CE2C 001063EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013CE30 001063F0  41 82 00 18 */	beq .L_8013CE48
/* 8013CE34 001063F4  80 03 00 64 */	lwz r0, 0x64(r3)
/* 8013CE38 001063F8  54 00 07 39 */	rlwinm. r0, r0, 0, 28, 28
/* 8013CE3C 001063FC  41 82 00 0C */	beq .L_8013CE48
/* 8013CE40 00106400  A0 63 00 8C */	lhz r3, 0x8c(r3)
/* 8013CE44 00106404  4B F6 1E 8D */	bl fn_8009ECD0
.L_8013CE48:
/* 8013CE48 00106408  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013CE4C 0010640C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013CE50 00106410  41 82 01 6C */	beq .L_8013CFBC
/* 8013CE54 00106414  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013CE58 00106418  38 A0 00 02 */	li r5, 0x2
/* 8013CE5C 0010641C  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013CE60 00106420  38 C0 00 00 */	li r6, 0x0
/* 8013CE64 00106424  38 E0 00 00 */	li r7, 0x0
/* 8013CE68 00106428  39 00 00 00 */	li r8, 0x0
/* 8013CE6C 0010642C  48 00 5C E1 */	bl fn_80142B4C
/* 8013CE70 00106430  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013CE74 00106434  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8013CE78 00106438  41 82 01 44 */	beq .L_8013CFBC
/* 8013CE7C 0010643C  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013CE80 00106440  38 A0 00 00 */	li r5, 0x0
/* 8013CE84 00106444  38 C0 00 00 */	li r6, 0x0
/* 8013CE88 00106448  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013CE8C 0010644C  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013CE90 00106450  48 00 00 1C */	b .L_8013CEAC
.L_8013CE94:
/* 8013CE94 00106454  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013CE98 00106458  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013CE9C 0010645C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013CEA0 00106460  41 82 00 14 */	beq .L_8013CEB4
/* 8013CEA4 00106464  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013CEA8 00106468  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013CEAC:
/* 8013CEAC 0010646C  7C 05 38 00 */	cmpw r5, r7
/* 8013CEB0 00106470  41 80 FF E4 */	blt .L_8013CE94
.L_8013CEB4:
/* 8013CEB4 00106474  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013CEB8 00106478  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013CEBC 0010647C  7C 83 02 14 */	add r4, r3, r0
/* 8013CEC0 00106480  34 64 00 08 */	addic. r3, r4, 0x8
/* 8013CEC4 00106484  41 82 00 10 */	beq .L_8013CED4
/* 8013CEC8 00106488  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8013CECC 0010648C  90 3F 00 44 */	stw r1, 0x44(r31)
/* 8013CED0 00106490  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013CED4:
/* 8013CED4 00106494  91 04 00 00 */	stw r8, 0x0(r4)
/* 8013CED8 00106498  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013CEDC 0010649C  90 04 00 04 */	stw r0, 0x4(r4)
/* 8013CEE0 001064A0  80 68 00 04 */	lwz r3, 0x4(r8)
/* 8013CEE4 001064A4  90 83 00 00 */	stw r4, 0x0(r3)
/* 8013CEE8 001064A8  90 88 00 04 */	stw r4, 0x4(r8)
/* 8013CEEC 001064AC  48 00 00 D0 */	b .L_8013CFBC
.L_8013CEF0:
/* 8013CEF0 001064B0  41 86 00 CC */	beq cr1, .L_8013CFBC
/* 8013CEF4 001064B4  2C 05 00 01 */	cmpwi r5, 0x1
/* 8013CEF8 001064B8  40 82 00 C4 */	bne .L_8013CFBC
/* 8013CEFC 001064BC  80 CD A7 F8 */	lwz r6, lbl_80666978@sda21(r13)
/* 8013CF00 001064C0  3B C4 DF 38 */	addi r30, r4, -0x20c8
/* 8013CF04 001064C4  2C 06 00 00 */	cmpwi r6, 0x0
/* 8013CF08 001064C8  41 82 00 94 */	beq .L_8013CF9C
/* 8013CF0C 001064CC  80 66 00 9C */	lwz r3, 0x9c(r6)
/* 8013CF10 001064D0  57 C5 04 3E */	clrlwi r5, r30, 16
/* 8013CF14 001064D4  80 86 00 58 */	lwz r4, 0x58(r6)
/* 8013CF18 001064D8  38 C0 00 00 */	li r6, 0x0
/* 8013CF1C 001064DC  48 00 7F C9 */	bl fn_80144EE4
/* 8013CF20 001064E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013CF24 001064E4  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013CF28 001064E8  41 82 00 74 */	beq .L_8013CF9C
/* 8013CF2C 001064EC  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013CF30 001064F0  38 A0 00 00 */	li r5, 0x0
/* 8013CF34 001064F4  38 C0 00 00 */	li r6, 0x0
/* 8013CF38 001064F8  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013CF3C 001064FC  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013CF40 00106500  48 00 00 1C */	b .L_8013CF5C
.L_8013CF44:
/* 8013CF44 00106504  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013CF48 00106508  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013CF4C 0010650C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013CF50 00106510  41 82 00 14 */	beq .L_8013CF64
/* 8013CF54 00106514  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013CF58 00106518  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013CF5C:
/* 8013CF5C 0010651C  7C 05 38 00 */	cmpw r5, r7
/* 8013CF60 00106520  41 80 FF E4 */	blt .L_8013CF44
.L_8013CF64:
/* 8013CF64 00106524  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013CF68 00106528  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013CF6C 0010652C  7C 83 02 14 */	add r4, r3, r0
/* 8013CF70 00106530  34 64 00 08 */	addic. r3, r4, 0x8
/* 8013CF74 00106534  41 82 00 10 */	beq .L_8013CF84
/* 8013CF78 00106538  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013CF7C 0010653C  90 3F 00 2C */	stw r1, 0x2c(r31)
/* 8013CF80 00106540  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013CF84:
/* 8013CF84 00106544  91 04 00 00 */	stw r8, 0x0(r4)
/* 8013CF88 00106548  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013CF8C 0010654C  90 04 00 04 */	stw r0, 0x4(r4)
/* 8013CF90 00106550  80 68 00 04 */	lwz r3, 0x4(r8)
/* 8013CF94 00106554  90 83 00 00 */	stw r4, 0x0(r3)
/* 8013CF98 00106558  90 88 00 04 */	stw r4, 0x4(r8)
.L_8013CF9C:
/* 8013CF9C 0010655C  3C 80 80 50 */	lis r4, lbl_804FC1AC@ha
/* 8013CFA0 00106560  7F C5 F3 78 */	mr r5, r30
/* 8013CFA4 00106564  38 84 C1 AC */	addi r4, r4, lbl_804FC1AC@l
/* 8013CFA8 00106568  38 64 00 0A */	addi r3, r4, 0xa
/* 8013CFAC 0010656C  38 84 00 17 */	addi r4, r4, 0x17
/* 8013CFB0 00106570  4B FF 90 5D */	bl fn_8013600C
/* 8013CFB4 00106574  54 63 06 3E */	clrlwi r3, r3, 24
/* 8013CFB8 00106578  4B FF E8 D5 */	bl fn_8013B88C
.L_8013CFBC:
/* 8013CFBC 0010657C  7F EA FB 78 */	mr r10, r31
/* 8013CFC0 00106580  83 FF 00 7C */	lwz r31, 0x7c(r31)
/* 8013CFC4 00106584  83 CA 00 78 */	lwz r30, 0x78(r10)
/* 8013CFC8 00106588  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013CFCC 0010658C  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013CFD0 00106590  7D 41 53 78 */	mr r1, r10
/* 8013CFD4 00106594  7C 08 03 A6 */	mtlr r0
/* 8013CFD8 00106598  4E 80 00 20 */	blr
.endfn fn_8013CBB4

.fn fn_8013CFDC, global
/* 8013CFDC 0010659C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013CFE0 001065A0  7C 08 02 A6 */	mflr r0
/* 8013CFE4 001065A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013CFE8 001065A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8013CFEC 001065AC  7C BF 2B 78 */	mr r31, r5
/* 8013CFF0 001065B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8013CFF4 001065B4  7C 9E 23 78 */	mr r30, r4
/* 8013CFF8 001065B8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8013CFFC 001065BC  7C 7D 1B 78 */	mr r29, r3
/* 8013D000 001065C0  80 0D A7 F8 */	lwz r0, lbl_80666978@sda21(r13)
/* 8013D004 001065C4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013D008 001065C8  41 82 00 0C */	beq .L_8013D014
/* 8013D00C 001065CC  7C 03 03 78 */	mr r3, r0
/* 8013D010 001065D0  48 00 00 50 */	b .L_8013D060
.L_8013D014:
/* 8013D014 001065D4  3C 05 00 01 */	addis r0, r5, 0x1
/* 8013D018 001065D8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8013D01C 001065DC  40 82 00 0C */	bne .L_8013D028
/* 8013D020 001065E0  48 2F 73 81 */	bl fn_804343A0
/* 8013D024 001065E4  7C 7F 1B 78 */	mr r31, r3
.L_8013D028:
/* 8013D028 001065E8  48 2F A5 8D */	bl fn_804375B4
/* 8013D02C 001065EC  7C 64 1B 78 */	mr r4, r3
/* 8013D030 001065F0  38 60 00 A4 */	li r3, 0xa4
/* 8013D034 001065F4  48 2F 7A 29 */	bl mm_malloc
/* 8013D038 001065F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013D03C 001065FC  41 82 00 10 */	beq .L_8013D04C
/* 8013D040 00106600  7F C4 F3 78 */	mr r4, r30
/* 8013D044 00106604  7F E5 FB 78 */	mr r5, r31
/* 8013D048 00106608  4B FF F0 21 */	bl fn_8013C068
.L_8013D04C:
/* 8013D04C 0010660C  90 6D A7 F8 */	stw r3, lbl_80666978@sda21(r13)
/* 8013D050 00106610  7F A4 EB 78 */	mr r4, r29
/* 8013D054 00106614  38 A0 00 00 */	li r5, 0x0
/* 8013D058 00106618  48 30 7C 1D */	bl fn_80444C74
/* 8013D05C 0010661C  80 6D A7 F8 */	lwz r3, lbl_80666978@sda21(r13)
.L_8013D060:
/* 8013D060 00106620  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013D064 00106624  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8013D068 00106628  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8013D06C 0010662C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8013D070 00106630  7C 08 03 A6 */	mtlr r0
/* 8013D074 00106634  38 21 00 20 */	addi r1, r1, 0x20
/* 8013D078 00106638  4E 80 00 20 */	blr
.endfn fn_8013CFDC

.fn fn_8013D07C, global
/* 8013D07C 0010663C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8013D080 00106640  7C 08 02 A6 */	mflr r0
/* 8013D084 00106644  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013D088 00106648  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8013D08C 0010664C  7C 3F 0B 78 */	mr r31, r1
/* 8013D090 00106650  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8013D094 00106654  7C BE 2B 78 */	mr r30, r5
/* 8013D098 00106658  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8013D09C 0010665C  7C 9D 23 78 */	mr r29, r4
/* 8013D0A0 00106660  93 81 00 30 */	stw r28, 0x30(r1)
/* 8013D0A4 00106664  7C 7C 1B 78 */	mr r28, r3
/* 8013D0A8 00106668  80 0D A7 F8 */	lwz r0, lbl_80666978@sda21(r13)
/* 8013D0AC 0010666C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013D0B0 00106670  40 82 00 0C */	bne .L_8013D0BC
/* 8013D0B4 00106674  38 60 00 00 */	li r3, 0x0
/* 8013D0B8 00106678  48 00 01 08 */	b .L_8013D1C0
.L_8013D0BC:
/* 8013D0BC 0010667C  4B FF 85 39 */	bl fn_801355F4
/* 8013D0C0 00106680  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013D0C4 00106684  40 82 00 0C */	bne .L_8013D0D0
/* 8013D0C8 00106688  38 60 00 00 */	li r3, 0x0
/* 8013D0CC 0010668C  48 00 00 F4 */	b .L_8013D1C0
.L_8013D0D0:
/* 8013D0D0 00106690  80 6D A7 F8 */	lwz r3, lbl_80666978@sda21(r13)
/* 8013D0D4 00106694  38 E0 00 00 */	li r7, 0x0
/* 8013D0D8 00106698  80 63 00 80 */	lwz r3, 0x80(r3)
/* 8013D0DC 0010669C  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8013D0E0 001066A0  48 00 00 40 */	b .L_8013D120
.L_8013D0E4:
/* 8013D0E4 001066A4  80 85 00 08 */	lwz r4, 0x8(r5)
/* 8013D0E8 001066A8  80 04 00 68 */	lwz r0, 0x68(r4)
/* 8013D0EC 001066AC  7C 00 E0 40 */	cmplw r0, r28
/* 8013D0F0 001066B0  40 82 00 2C */	bne .L_8013D11C
/* 8013D0F4 001066B4  38 00 00 01 */	li r0, 0x1
/* 8013D0F8 001066B8  98 04 00 39 */	stb r0, 0x39(r4)
/* 8013D0FC 001066BC  38 00 00 00 */	li r0, 0x0
/* 8013D100 001066C0  38 E0 00 01 */	li r7, 0x1
/* 8013D104 001066C4  80 65 00 04 */	lwz r3, 0x4(r5)
/* 8013D108 001066C8  80 85 00 00 */	lwz r4, 0x0(r5)
/* 8013D10C 001066CC  90 83 00 00 */	stw r4, 0x0(r3)
/* 8013D110 001066D0  90 64 00 04 */	stw r3, 0x4(r4)
/* 8013D114 001066D4  90 05 00 00 */	stw r0, 0x0(r5)
/* 8013D118 001066D8  48 00 00 10 */	b .L_8013D128
.L_8013D11C:
/* 8013D11C 001066DC  80 A5 00 00 */	lwz r5, 0x0(r5)
.L_8013D120:
/* 8013D120 001066E0  7C 05 18 40 */	cmplw r5, r3
/* 8013D124 001066E4  40 82 FF C0 */	bne .L_8013D0E4
.L_8013D128:
/* 8013D128 001066E8  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D12C 001066EC  7F 85 E3 78 */	mr r5, r28
/* 8013D130 001066F0  7F A6 EB 78 */	mr r6, r29
/* 8013D134 001066F4  7F C9 F3 78 */	mr r9, r30
/* 8013D138 001066F8  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013D13C 001066FC  39 00 00 00 */	li r8, 0x0
/* 8013D140 00106700  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013D144 00106704  4B FE FB 35 */	bl fn_8012CC78
/* 8013D148 00106708  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D14C 0010670C  38 A0 00 00 */	li r5, 0x0
/* 8013D150 00106710  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013D154 00106714  38 C0 00 00 */	li r6, 0x0
/* 8013D158 00106718  81 04 00 80 */	lwz r8, 0x80(r4)
/* 8013D15C 0010671C  80 E4 00 94 */	lwz r7, 0x94(r4)
/* 8013D160 00106720  48 00 00 1C */	b .L_8013D17C
.L_8013D164:
/* 8013D164 00106724  80 64 00 90 */	lwz r3, 0x90(r4)
/* 8013D168 00106728  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013D16C 0010672C  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013D170 00106730  41 82 00 14 */	beq .L_8013D184
/* 8013D174 00106734  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013D178 00106738  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013D17C:
/* 8013D17C 0010673C  7C 05 38 00 */	cmpw r5, r7
/* 8013D180 00106740  41 80 FF E4 */	blt .L_8013D164
.L_8013D184:
/* 8013D184 00106744  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013D188 00106748  80 64 00 90 */	lwz r3, 0x90(r4)
/* 8013D18C 0010674C  7C A3 02 14 */	add r5, r3, r0
/* 8013D190 00106750  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013D194 00106754  41 82 00 10 */	beq .L_8013D1A4
/* 8013D198 00106758  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013D19C 0010675C  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013D1A0 00106760  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013D1A4:
/* 8013D1A4 00106764  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013D1A8 00106768  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013D1AC 0010676C  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013D1B0 00106770  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013D1B4 00106774  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013D1B8 00106778  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013D1BC 0010677C  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013D1C0:
/* 8013D1C0 00106780  7F EA FB 78 */	mr r10, r31
/* 8013D1C4 00106784  83 FF 00 3C */	lwz r31, 0x3c(r31)
/* 8013D1C8 00106788  83 CA 00 38 */	lwz r30, 0x38(r10)
/* 8013D1CC 0010678C  83 AA 00 34 */	lwz r29, 0x34(r10)
/* 8013D1D0 00106790  83 8A 00 30 */	lwz r28, 0x30(r10)
/* 8013D1D4 00106794  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013D1D8 00106798  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013D1DC 0010679C  7D 41 53 78 */	mr r1, r10
/* 8013D1E0 001067A0  7C 08 03 A6 */	mtlr r0
/* 8013D1E4 001067A4  4E 80 00 20 */	blr
.endfn fn_8013D07C

.fn fn_8013D1E8, global
/* 8013D1E8 001067A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013D1EC 001067AC  7C 08 02 A6 */	mflr r0
/* 8013D1F0 001067B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013D1F4 001067B4  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D1F8 001067B8  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013D1FC 001067BC  41 82 00 60 */	beq .L_8013D25C
/* 8013D200 001067C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013D204 001067C4  41 82 00 58 */	beq .L_8013D25C
/* 8013D208 001067C8  80 A4 00 80 */	lwz r5, 0x80(r4)
/* 8013D20C 001067CC  80 C5 00 00 */	lwz r6, 0x0(r5)
/* 8013D210 001067D0  48 00 00 44 */	b .L_8013D254
.L_8013D214:
/* 8013D214 001067D4  80 86 00 08 */	lwz r4, 0x8(r6)
/* 8013D218 001067D8  80 04 00 68 */	lwz r0, 0x68(r4)
/* 8013D21C 001067DC  7C 00 18 40 */	cmplw r0, r3
/* 8013D220 001067E0  40 82 00 30 */	bne .L_8013D250
/* 8013D224 001067E4  7C 83 23 78 */	mr r3, r4
/* 8013D228 001067E8  38 80 00 10 */	li r4, 0x10
/* 8013D22C 001067EC  38 AD 88 E8 */	addi r5, r13, __RTTI__CTalkWindow@sda21
/* 8013D230 001067F0  38 CD 86 40 */	addi r6, r13, __RTTI__IUIWindow@sda21
/* 8013D234 001067F4  38 E0 00 00 */	li r7, 0x0
/* 8013D238 001067F8  48 17 CB 4D */	bl __dynamic_cast
/* 8013D23C 001067FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013D240 00106800  41 82 00 1C */	beq .L_8013D25C
/* 8013D244 00106804  38 00 00 01 */	li r0, 0x1
/* 8013D248 00106808  90 03 00 AC */	stw r0, 0xac(r3)
/* 8013D24C 0010680C  48 00 00 10 */	b .L_8013D25C
.L_8013D250:
/* 8013D250 00106810  80 C6 00 00 */	lwz r6, 0x0(r6)
.L_8013D254:
/* 8013D254 00106814  7C 06 28 40 */	cmplw r6, r5
/* 8013D258 00106818  40 82 FF BC */	bne .L_8013D214
.L_8013D25C:
/* 8013D25C 0010681C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013D260 00106820  7C 08 03 A6 */	mtlr r0
/* 8013D264 00106824  38 21 00 10 */	addi r1, r1, 0x10
/* 8013D268 00106828  4E 80 00 20 */	blr
.endfn fn_8013D1E8

.fn fn_8013D26C, global
/* 8013D26C 0010682C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8013D270 00106830  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D274 00106834  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013D278 00106838  41 82 01 C8 */	beq .L_8013D440
/* 8013D27C 0010683C  80 C4 00 80 */	lwz r6, 0x80(r4)
/* 8013D280 00106840  39 01 00 08 */	addi r8, r1, 0x8
/* 8013D284 00106844  38 80 00 00 */	li r4, 0x0
/* 8013D288 00106848  38 A0 00 00 */	li r5, 0x0
/* 8013D28C 0010684C  81 26 00 00 */	lwz r9, 0x0(r6)
/* 8013D290 00106850  38 E0 00 01 */	li r7, 0x1
/* 8013D294 00106854  48 00 00 38 */	b .L_8013D2CC
.L_8013D298:
/* 8013D298 00106858  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013D29C 0010685C  41 82 00 10 */	beq .L_8013D2AC
/* 8013D2A0 00106860  80 C9 00 08 */	lwz r6, 0x8(r9)
/* 8013D2A4 00106864  98 E6 00 65 */	stb r7, 0x65(r6)
/* 8013D2A8 00106868  48 00 00 20 */	b .L_8013D2C8
.L_8013D2AC:
/* 8013D2AC 0010686C  80 C9 00 08 */	lwz r6, 0x8(r9)
/* 8013D2B0 00106870  38 84 00 01 */	addi r4, r4, 0x1
/* 8013D2B4 00106874  98 E6 00 66 */	stb r7, 0x66(r6)
/* 8013D2B8 00106878  80 C9 00 08 */	lwz r6, 0x8(r9)
/* 8013D2BC 0010687C  98 E6 00 39 */	stb r7, 0x39(r6)
/* 8013D2C0 00106880  7D 28 29 2E */	stwx r9, r8, r5
/* 8013D2C4 00106884  38 A5 00 04 */	addi r5, r5, 0x4
.L_8013D2C8:
/* 8013D2C8 00106888  81 29 00 00 */	lwz r9, 0x0(r9)
.L_8013D2CC:
/* 8013D2CC 0010688C  80 CD A7 F8 */	lwz r6, lbl_80666978@sda21(r13)
/* 8013D2D0 00106890  80 06 00 80 */	lwz r0, 0x80(r6)
/* 8013D2D4 00106894  7C 09 00 40 */	cmplw r9, r0
/* 8013D2D8 00106898  40 82 FF C0 */	bne .L_8013D298
/* 8013D2DC 0010689C  2C 84 00 00 */	cmpwi cr1, r4, 0x0
/* 8013D2E0 001068A0  38 60 00 00 */	li r3, 0x0
/* 8013D2E4 001068A4  40 85 01 5C */	ble cr1, .L_8013D440
/* 8013D2E8 001068A8  2C 04 00 08 */	cmpwi r4, 0x8
/* 8013D2EC 001068AC  38 C4 FF F8 */	addi r6, r4, -0x8
/* 8013D2F0 001068B0  40 81 01 10 */	ble .L_8013D400
/* 8013D2F4 001068B4  38 E0 00 00 */	li r7, 0x0
/* 8013D2F8 001068B8  41 84 00 18 */	blt cr1, .L_8013D310
/* 8013D2FC 001068BC  3C A0 80 00 */	lis r5, 0x8000
/* 8013D300 001068C0  38 05 FF FE */	addi r0, r5, -0x2
/* 8013D304 001068C4  7C 04 00 00 */	cmpw r4, r0
/* 8013D308 001068C8  41 81 00 08 */	bgt .L_8013D310
/* 8013D30C 001068CC  38 E0 00 01 */	li r7, 0x1
.L_8013D310:
/* 8013D310 001068D0  2C 07 00 00 */	cmpwi r7, 0x0
/* 8013D314 001068D4  41 82 00 EC */	beq .L_8013D400
/* 8013D318 001068D8  38 06 00 07 */	addi r0, r6, 0x7
/* 8013D31C 001068DC  39 21 00 08 */	addi r9, r1, 0x8
/* 8013D320 001068E0  54 00 E8 FE */	srwi r0, r0, 3
/* 8013D324 001068E4  38 A0 00 00 */	li r5, 0x0
/* 8013D328 001068E8  7C 09 03 A6 */	mtctr r0
/* 8013D32C 001068EC  2C 06 00 00 */	cmpwi r6, 0x0
/* 8013D330 001068F0  40 81 00 D0 */	ble .L_8013D400
.L_8013D334:
/* 8013D334 001068F4  81 09 00 00 */	lwz r8, 0x0(r9)
/* 8013D338 001068F8  38 63 00 08 */	addi r3, r3, 0x8
/* 8013D33C 001068FC  80 C8 00 04 */	lwz r6, 0x4(r8)
/* 8013D340 00106900  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 8013D344 00106904  90 E6 00 00 */	stw r7, 0x0(r6)
/* 8013D348 00106908  90 C7 00 04 */	stw r6, 0x4(r7)
/* 8013D34C 0010690C  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013D350 00106910  81 09 00 04 */	lwz r8, 0x4(r9)
/* 8013D354 00106914  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013D358 00106918  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013D35C 0010691C  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013D360 00106920  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013D364 00106924  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013D368 00106928  81 09 00 08 */	lwz r8, 0x8(r9)
/* 8013D36C 0010692C  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013D370 00106930  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013D374 00106934  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013D378 00106938  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013D37C 0010693C  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013D380 00106940  81 09 00 0C */	lwz r8, 0xc(r9)
/* 8013D384 00106944  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013D388 00106948  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013D38C 0010694C  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013D390 00106950  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013D394 00106954  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013D398 00106958  81 09 00 10 */	lwz r8, 0x10(r9)
/* 8013D39C 0010695C  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013D3A0 00106960  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013D3A4 00106964  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013D3A8 00106968  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013D3AC 0010696C  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013D3B0 00106970  81 09 00 14 */	lwz r8, 0x14(r9)
/* 8013D3B4 00106974  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013D3B8 00106978  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013D3BC 0010697C  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013D3C0 00106980  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013D3C4 00106984  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013D3C8 00106988  81 09 00 18 */	lwz r8, 0x18(r9)
/* 8013D3CC 0010698C  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013D3D0 00106990  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013D3D4 00106994  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013D3D8 00106998  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013D3DC 0010699C  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013D3E0 001069A0  81 09 00 1C */	lwz r8, 0x1c(r9)
/* 8013D3E4 001069A4  39 29 00 20 */	addi r9, r9, 0x20
/* 8013D3E8 001069A8  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013D3EC 001069AC  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013D3F0 001069B0  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013D3F4 001069B4  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013D3F8 001069B8  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013D3FC 001069BC  42 00 FF 38 */	bdnz .L_8013D334
.L_8013D400:
/* 8013D400 001069C0  54 66 10 3A */	slwi r6, r3, 2
/* 8013D404 001069C4  38 E1 00 08 */	addi r7, r1, 0x8
/* 8013D408 001069C8  7C 03 20 50 */	subf r0, r3, r4
/* 8013D40C 001069CC  38 A0 00 00 */	li r5, 0x0
/* 8013D410 001069D0  7C E7 32 14 */	add r7, r7, r6
/* 8013D414 001069D4  7C 09 03 A6 */	mtctr r0
/* 8013D418 001069D8  7C 03 20 00 */	cmpw r3, r4
/* 8013D41C 001069DC  40 80 00 24 */	bge .L_8013D440
.L_8013D420:
/* 8013D420 001069E0  80 C7 00 00 */	lwz r6, 0x0(r7)
/* 8013D424 001069E4  38 E7 00 04 */	addi r7, r7, 0x4
/* 8013D428 001069E8  80 86 00 04 */	lwz r4, 0x4(r6)
/* 8013D42C 001069EC  80 66 00 00 */	lwz r3, 0x0(r6)
/* 8013D430 001069F0  90 64 00 00 */	stw r3, 0x0(r4)
/* 8013D434 001069F4  90 83 00 04 */	stw r4, 0x4(r3)
/* 8013D438 001069F8  90 A6 00 00 */	stw r5, 0x0(r6)
/* 8013D43C 001069FC  42 00 FF E4 */	bdnz .L_8013D420
.L_8013D440:
/* 8013D440 00106A00  38 21 00 50 */	addi r1, r1, 0x50
/* 8013D444 00106A04  4E 80 00 20 */	blr
.endfn fn_8013D26C

.fn fn_8013D448, global
/* 8013D448 00106A08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8013D44C 00106A0C  7C 08 02 A6 */	mflr r0
/* 8013D450 00106A10  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013D454 00106A14  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8013D458 00106A18  7C 3F 0B 78 */	mr r31, r1
/* 8013D45C 00106A1C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8013D460 00106A20  7C 9E 23 78 */	mr r30, r4
/* 8013D464 00106A24  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8013D468 00106A28  7C 7D 1B 78 */	mr r29, r3
/* 8013D46C 00106A2C  80 0D A7 F8 */	lwz r0, lbl_80666978@sda21(r13)
/* 8013D470 00106A30  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013D474 00106A34  40 82 00 0C */	bne .L_8013D480
/* 8013D478 00106A38  38 60 00 00 */	li r3, 0x0
/* 8013D47C 00106A3C  48 00 00 BC */	b .L_8013D538
.L_8013D480:
/* 8013D480 00106A40  4B FF 81 75 */	bl fn_801355F4
/* 8013D484 00106A44  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013D488 00106A48  40 82 00 0C */	bne .L_8013D494
/* 8013D48C 00106A4C  38 60 00 00 */	li r3, 0x0
/* 8013D490 00106A50  48 00 00 A8 */	b .L_8013D538
.L_8013D494:
/* 8013D494 00106A54  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D498 00106A58  7F A5 EB 78 */	mr r5, r29
/* 8013D49C 00106A5C  7F C6 F3 78 */	mr r6, r30
/* 8013D4A0 00106A60  38 E0 00 00 */	li r7, 0x0
/* 8013D4A4 00106A64  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013D4A8 00106A68  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013D4AC 00106A6C  48 06 4C 31 */	bl fn_801A20DC
/* 8013D4B0 00106A70  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013D4B4 00106A74  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013D4B8 00106A78  40 82 00 0C */	bne .L_8013D4C4
/* 8013D4BC 00106A7C  38 60 00 00 */	li r3, 0x0
/* 8013D4C0 00106A80  48 00 00 78 */	b .L_8013D538
.L_8013D4C4:
/* 8013D4C4 00106A84  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D4C8 00106A88  38 A0 00 00 */	li r5, 0x0
/* 8013D4CC 00106A8C  38 C0 00 00 */	li r6, 0x0
/* 8013D4D0 00106A90  81 04 00 80 */	lwz r8, 0x80(r4)
/* 8013D4D4 00106A94  80 E4 00 94 */	lwz r7, 0x94(r4)
/* 8013D4D8 00106A98  48 00 00 1C */	b .L_8013D4F4
.L_8013D4DC:
/* 8013D4DC 00106A9C  80 64 00 90 */	lwz r3, 0x90(r4)
/* 8013D4E0 00106AA0  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013D4E4 00106AA4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013D4E8 00106AA8  41 82 00 14 */	beq .L_8013D4FC
/* 8013D4EC 00106AAC  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013D4F0 00106AB0  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013D4F4:
/* 8013D4F4 00106AB4  7C 05 38 00 */	cmpw r5, r7
/* 8013D4F8 00106AB8  41 80 FF E4 */	blt .L_8013D4DC
.L_8013D4FC:
/* 8013D4FC 00106ABC  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013D500 00106AC0  80 64 00 90 */	lwz r3, 0x90(r4)
/* 8013D504 00106AC4  7C A3 02 14 */	add r5, r3, r0
/* 8013D508 00106AC8  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013D50C 00106ACC  41 82 00 10 */	beq .L_8013D51C
/* 8013D510 00106AD0  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013D514 00106AD4  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013D518 00106AD8  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013D51C:
/* 8013D51C 00106ADC  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013D520 00106AE0  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013D524 00106AE4  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013D528 00106AE8  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013D52C 00106AEC  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013D530 00106AF0  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013D534 00106AF4  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013D538:
/* 8013D538 00106AF8  7F EA FB 78 */	mr r10, r31
/* 8013D53C 00106AFC  83 FF 00 3C */	lwz r31, 0x3c(r31)
/* 8013D540 00106B00  83 CA 00 38 */	lwz r30, 0x38(r10)
/* 8013D544 00106B04  83 AA 00 34 */	lwz r29, 0x34(r10)
/* 8013D548 00106B08  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013D54C 00106B0C  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013D550 00106B10  7D 41 53 78 */	mr r1, r10
/* 8013D554 00106B14  7C 08 03 A6 */	mtlr r0
/* 8013D558 00106B18  4E 80 00 20 */	blr
.endfn fn_8013D448

.fn fn_8013D55C, global
/* 8013D55C 00106B1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8013D560 00106B20  7C 08 02 A6 */	mflr r0
/* 8013D564 00106B24  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013D568 00106B28  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8013D56C 00106B2C  7C 3F 0B 78 */	mr r31, r1
/* 8013D570 00106B30  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8013D574 00106B34  7C 9E 23 78 */	mr r30, r4
/* 8013D578 00106B38  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8013D57C 00106B3C  7C 7D 1B 78 */	mr r29, r3
/* 8013D580 00106B40  80 0D A7 F8 */	lwz r0, lbl_80666978@sda21(r13)
/* 8013D584 00106B44  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013D588 00106B48  40 82 00 0C */	bne .L_8013D594
/* 8013D58C 00106B4C  38 60 00 00 */	li r3, 0x0
/* 8013D590 00106B50  48 00 00 D4 */	b .L_8013D664
.L_8013D594:
/* 8013D594 00106B54  2C 05 00 00 */	cmpwi r5, 0x0
/* 8013D598 00106B58  40 82 00 18 */	bne .L_8013D5B0
/* 8013D59C 00106B5C  4B FF 81 21 */	bl fn_801356BC
/* 8013D5A0 00106B60  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013D5A4 00106B64  41 82 00 0C */	beq .L_8013D5B0
/* 8013D5A8 00106B68  38 60 00 00 */	li r3, 0x0
/* 8013D5AC 00106B6C  48 00 00 B8 */	b .L_8013D664
.L_8013D5B0:
/* 8013D5B0 00106B70  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D5B4 00106B74  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8013D5B8 00106B78  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013D5BC 00106B7C  41 82 00 0C */	beq .L_8013D5C8
/* 8013D5C0 00106B80  7F C4 F3 78 */	mr r4, r30
/* 8013D5C4 00106B84  48 00 00 08 */	b .L_8013D5CC
.L_8013D5C8:
/* 8013D5C8 00106B88  80 84 00 58 */	lwz r4, 0x58(r4)
.L_8013D5CC:
/* 8013D5CC 00106B8C  7F A6 EB 78 */	mr r6, r29
/* 8013D5D0 00106B90  38 A0 00 00 */	li r5, 0x0
/* 8013D5D4 00106B94  38 E0 00 00 */	li r7, 0x0
/* 8013D5D8 00106B98  4B FE 75 15 */	bl fn_80124AEC
/* 8013D5DC 00106B9C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013D5E0 00106BA0  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013D5E4 00106BA4  40 82 00 0C */	bne .L_8013D5F0
/* 8013D5E8 00106BA8  38 60 00 00 */	li r3, 0x0
/* 8013D5EC 00106BAC  48 00 00 78 */	b .L_8013D664
.L_8013D5F0:
/* 8013D5F0 00106BB0  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D5F4 00106BB4  38 A0 00 00 */	li r5, 0x0
/* 8013D5F8 00106BB8  38 C0 00 00 */	li r6, 0x0
/* 8013D5FC 00106BBC  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013D600 00106BC0  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013D604 00106BC4  48 00 00 1C */	b .L_8013D620
.L_8013D608:
/* 8013D608 00106BC8  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013D60C 00106BCC  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013D610 00106BD0  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013D614 00106BD4  41 82 00 14 */	beq .L_8013D628
/* 8013D618 00106BD8  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013D61C 00106BDC  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013D620:
/* 8013D620 00106BE0  7C 05 38 00 */	cmpw r5, r7
/* 8013D624 00106BE4  41 80 FF E4 */	blt .L_8013D608
.L_8013D628:
/* 8013D628 00106BE8  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013D62C 00106BEC  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013D630 00106BF0  7C A3 02 14 */	add r5, r3, r0
/* 8013D634 00106BF4  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013D638 00106BF8  41 82 00 10 */	beq .L_8013D648
/* 8013D63C 00106BFC  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013D640 00106C00  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013D644 00106C04  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013D648:
/* 8013D648 00106C08  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013D64C 00106C0C  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013D650 00106C10  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013D654 00106C14  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013D658 00106C18  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013D65C 00106C1C  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013D660 00106C20  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013D664:
/* 8013D664 00106C24  7F EA FB 78 */	mr r10, r31
/* 8013D668 00106C28  83 FF 00 3C */	lwz r31, 0x3c(r31)
/* 8013D66C 00106C2C  83 CA 00 38 */	lwz r30, 0x38(r10)
/* 8013D670 00106C30  83 AA 00 34 */	lwz r29, 0x34(r10)
/* 8013D674 00106C34  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013D678 00106C38  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013D67C 00106C3C  7D 41 53 78 */	mr r1, r10
/* 8013D680 00106C40  7C 08 03 A6 */	mtlr r0
/* 8013D684 00106C44  4E 80 00 20 */	blr
.endfn fn_8013D55C

.fn fn_8013D688, global
/* 8013D688 00106C48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8013D68C 00106C4C  7C 08 02 A6 */	mflr r0
/* 8013D690 00106C50  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013D694 00106C54  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8013D698 00106C58  7C 3F 0B 78 */	mr r31, r1
/* 8013D69C 00106C5C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8013D6A0 00106C60  7C BE 2B 78 */	mr r30, r5
/* 8013D6A4 00106C64  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8013D6A8 00106C68  7C 9D 23 78 */	mr r29, r4
/* 8013D6AC 00106C6C  93 81 00 30 */	stw r28, 0x30(r1)
/* 8013D6B0 00106C70  7C 7C 1B 78 */	mr r28, r3
/* 8013D6B4 00106C74  80 0D A7 F8 */	lwz r0, lbl_80666978@sda21(r13)
/* 8013D6B8 00106C78  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013D6BC 00106C7C  40 82 00 0C */	bne .L_8013D6C8
/* 8013D6C0 00106C80  38 60 00 00 */	li r3, 0x0
/* 8013D6C4 00106C84  48 00 00 D4 */	b .L_8013D798
.L_8013D6C8:
/* 8013D6C8 00106C88  2C 06 00 00 */	cmpwi r6, 0x0
/* 8013D6CC 00106C8C  40 82 00 18 */	bne .L_8013D6E4
/* 8013D6D0 00106C90  4B FF 80 11 */	bl fn_801356E0
/* 8013D6D4 00106C94  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013D6D8 00106C98  41 82 00 0C */	beq .L_8013D6E4
/* 8013D6DC 00106C9C  38 60 00 00 */	li r3, 0x0
/* 8013D6E0 00106CA0  48 00 00 B8 */	b .L_8013D798
.L_8013D6E4:
/* 8013D6E4 00106CA4  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D6E8 00106CA8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8013D6EC 00106CAC  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013D6F0 00106CB0  41 82 00 0C */	beq .L_8013D6FC
/* 8013D6F4 00106CB4  7F C4 F3 78 */	mr r4, r30
/* 8013D6F8 00106CB8  48 00 00 08 */	b .L_8013D700
.L_8013D6FC:
/* 8013D6FC 00106CBC  80 84 00 58 */	lwz r4, 0x58(r4)
.L_8013D700:
/* 8013D700 00106CC0  7F 86 E3 78 */	mr r6, r28
/* 8013D704 00106CC4  7F A7 EB 78 */	mr r7, r29
/* 8013D708 00106CC8  38 A0 00 01 */	li r5, 0x1
/* 8013D70C 00106CCC  4B FE 73 E1 */	bl fn_80124AEC
/* 8013D710 00106CD0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013D714 00106CD4  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013D718 00106CD8  40 82 00 0C */	bne .L_8013D724
/* 8013D71C 00106CDC  38 60 00 00 */	li r3, 0x0
/* 8013D720 00106CE0  48 00 00 78 */	b .L_8013D798
.L_8013D724:
/* 8013D724 00106CE4  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D728 00106CE8  38 A0 00 00 */	li r5, 0x0
/* 8013D72C 00106CEC  38 C0 00 00 */	li r6, 0x0
/* 8013D730 00106CF0  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013D734 00106CF4  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013D738 00106CF8  48 00 00 1C */	b .L_8013D754
.L_8013D73C:
/* 8013D73C 00106CFC  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013D740 00106D00  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013D744 00106D04  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013D748 00106D08  41 82 00 14 */	beq .L_8013D75C
/* 8013D74C 00106D0C  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013D750 00106D10  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013D754:
/* 8013D754 00106D14  7C 05 38 00 */	cmpw r5, r7
/* 8013D758 00106D18  41 80 FF E4 */	blt .L_8013D73C
.L_8013D75C:
/* 8013D75C 00106D1C  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013D760 00106D20  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013D764 00106D24  7C A3 02 14 */	add r5, r3, r0
/* 8013D768 00106D28  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013D76C 00106D2C  41 82 00 10 */	beq .L_8013D77C
/* 8013D770 00106D30  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013D774 00106D34  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013D778 00106D38  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013D77C:
/* 8013D77C 00106D3C  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013D780 00106D40  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013D784 00106D44  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013D788 00106D48  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013D78C 00106D4C  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013D790 00106D50  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013D794 00106D54  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013D798:
/* 8013D798 00106D58  7F EA FB 78 */	mr r10, r31
/* 8013D79C 00106D5C  83 FF 00 3C */	lwz r31, 0x3c(r31)
/* 8013D7A0 00106D60  83 CA 00 38 */	lwz r30, 0x38(r10)
/* 8013D7A4 00106D64  83 AA 00 34 */	lwz r29, 0x34(r10)
/* 8013D7A8 00106D68  83 8A 00 30 */	lwz r28, 0x30(r10)
/* 8013D7AC 00106D6C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013D7B0 00106D70  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013D7B4 00106D74  7D 41 53 78 */	mr r1, r10
/* 8013D7B8 00106D78  7C 08 03 A6 */	mtlr r0
/* 8013D7BC 00106D7C  4E 80 00 20 */	blr
.endfn fn_8013D688

.fn fn_8013D7C0, global
/* 8013D7C0 00106D80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013D7C4 00106D84  7C 08 02 A6 */	mflr r0
/* 8013D7C8 00106D88  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013D7CC 00106D8C  7C 60 1B 78 */	mr r0, r3
/* 8013D7D0 00106D90  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013D7D4 00106D94  7C 3F 0B 78 */	mr r31, r1
/* 8013D7D8 00106D98  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D7DC 00106D9C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013D7E0 00106DA0  40 82 00 0C */	bne .L_8013D7EC
/* 8013D7E4 00106DA4  38 60 00 00 */	li r3, 0x0
/* 8013D7E8 00106DA8  48 00 00 9C */	b .L_8013D884
.L_8013D7EC:
/* 8013D7EC 00106DAC  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013D7F0 00106DB0  54 05 04 3E */	clrlwi r5, r0, 16
/* 8013D7F4 00106DB4  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013D7F8 00106DB8  48 13 71 51 */	bl fn_80274948
/* 8013D7FC 00106DBC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013D800 00106DC0  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013D804 00106DC4  40 82 00 0C */	bne .L_8013D810
/* 8013D808 00106DC8  38 60 00 00 */	li r3, 0x0
/* 8013D80C 00106DCC  48 00 00 78 */	b .L_8013D884
.L_8013D810:
/* 8013D810 00106DD0  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D814 00106DD4  38 A0 00 00 */	li r5, 0x0
/* 8013D818 00106DD8  38 C0 00 00 */	li r6, 0x0
/* 8013D81C 00106DDC  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013D820 00106DE0  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013D824 00106DE4  48 00 00 1C */	b .L_8013D840
.L_8013D828:
/* 8013D828 00106DE8  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013D82C 00106DEC  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013D830 00106DF0  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013D834 00106DF4  41 82 00 14 */	beq .L_8013D848
/* 8013D838 00106DF8  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013D83C 00106DFC  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013D840:
/* 8013D840 00106E00  7C 05 38 00 */	cmpw r5, r7
/* 8013D844 00106E04  41 80 FF E4 */	blt .L_8013D828
.L_8013D848:
/* 8013D848 00106E08  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013D84C 00106E0C  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013D850 00106E10  7C A3 02 14 */	add r5, r3, r0
/* 8013D854 00106E14  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013D858 00106E18  41 82 00 10 */	beq .L_8013D868
/* 8013D85C 00106E1C  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013D860 00106E20  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013D864 00106E24  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013D868:
/* 8013D868 00106E28  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013D86C 00106E2C  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013D870 00106E30  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013D874 00106E34  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013D878 00106E38  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013D87C 00106E3C  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013D880 00106E40  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013D884:
/* 8013D884 00106E44  7F EA FB 78 */	mr r10, r31
/* 8013D888 00106E48  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013D88C 00106E4C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013D890 00106E50  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013D894 00106E54  7D 41 53 78 */	mr r1, r10
/* 8013D898 00106E58  7C 08 03 A6 */	mtlr r0
/* 8013D89C 00106E5C  4E 80 00 20 */	blr
.endfn fn_8013D7C0

.fn fn_8013D8A0, global
/* 8013D8A0 00106E60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013D8A4 00106E64  7C 08 02 A6 */	mflr r0
/* 8013D8A8 00106E68  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013D8AC 00106E6C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013D8B0 00106E70  7C 3F 0B 78 */	mr r31, r1
/* 8013D8B4 00106E74  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D8B8 00106E78  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013D8BC 00106E7C  40 82 00 0C */	bne .L_8013D8C8
/* 8013D8C0 00106E80  38 60 00 00 */	li r3, 0x0
/* 8013D8C4 00106E84  48 00 00 98 */	b .L_8013D95C
.L_8013D8C8:
/* 8013D8C8 00106E88  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013D8CC 00106E8C  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013D8D0 00106E90  48 14 11 19 */	bl fn_8027E9E8
/* 8013D8D4 00106E94  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013D8D8 00106E98  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013D8DC 00106E9C  40 82 00 0C */	bne .L_8013D8E8
/* 8013D8E0 00106EA0  38 60 00 00 */	li r3, 0x0
/* 8013D8E4 00106EA4  48 00 00 78 */	b .L_8013D95C
.L_8013D8E8:
/* 8013D8E8 00106EA8  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D8EC 00106EAC  38 A0 00 00 */	li r5, 0x0
/* 8013D8F0 00106EB0  38 C0 00 00 */	li r6, 0x0
/* 8013D8F4 00106EB4  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013D8F8 00106EB8  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013D8FC 00106EBC  48 00 00 1C */	b .L_8013D918
.L_8013D900:
/* 8013D900 00106EC0  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013D904 00106EC4  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013D908 00106EC8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013D90C 00106ECC  41 82 00 14 */	beq .L_8013D920
/* 8013D910 00106ED0  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013D914 00106ED4  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013D918:
/* 8013D918 00106ED8  7C 05 38 00 */	cmpw r5, r7
/* 8013D91C 00106EDC  41 80 FF E4 */	blt .L_8013D900
.L_8013D920:
/* 8013D920 00106EE0  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013D924 00106EE4  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013D928 00106EE8  7C A3 02 14 */	add r5, r3, r0
/* 8013D92C 00106EEC  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013D930 00106EF0  41 82 00 10 */	beq .L_8013D940
/* 8013D934 00106EF4  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013D938 00106EF8  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013D93C 00106EFC  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013D940:
/* 8013D940 00106F00  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013D944 00106F04  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013D948 00106F08  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013D94C 00106F0C  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013D950 00106F10  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013D954 00106F14  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013D958 00106F18  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013D95C:
/* 8013D95C 00106F1C  7F EA FB 78 */	mr r10, r31
/* 8013D960 00106F20  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013D964 00106F24  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013D968 00106F28  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013D96C 00106F2C  7D 41 53 78 */	mr r1, r10
/* 8013D970 00106F30  7C 08 03 A6 */	mtlr r0
/* 8013D974 00106F34  4E 80 00 20 */	blr
.endfn fn_8013D8A0

.fn fn_8013D978, global
/* 8013D978 00106F38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013D97C 00106F3C  7C 08 02 A6 */	mflr r0
/* 8013D980 00106F40  7C 86 23 78 */	mr r6, r4
/* 8013D984 00106F44  7C A7 2B 78 */	mr r7, r5
/* 8013D988 00106F48  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013D98C 00106F4C  7C 60 1B 78 */	mr r0, r3
/* 8013D990 00106F50  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013D994 00106F54  7C 3F 0B 78 */	mr r31, r1
/* 8013D998 00106F58  81 0D A7 F8 */	lwz r8, lbl_80666978@sda21(r13)
/* 8013D99C 00106F5C  2C 08 00 00 */	cmpwi r8, 0x0
/* 8013D9A0 00106F60  40 82 00 0C */	bne .L_8013D9AC
/* 8013D9A4 00106F64  38 60 00 00 */	li r3, 0x0
/* 8013D9A8 00106F68  48 00 00 9C */	b .L_8013DA44
.L_8013D9AC:
/* 8013D9AC 00106F6C  80 68 00 9C */	lwz r3, 0x9c(r8)
/* 8013D9B0 00106F70  7C 05 03 78 */	mr r5, r0
/* 8013D9B4 00106F74  80 88 00 58 */	lwz r4, 0x58(r8)
/* 8013D9B8 00106F78  4B FE 76 B9 */	bl fn_80125070
/* 8013D9BC 00106F7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013D9C0 00106F80  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013D9C4 00106F84  40 82 00 0C */	bne .L_8013D9D0
/* 8013D9C8 00106F88  38 60 00 00 */	li r3, 0x0
/* 8013D9CC 00106F8C  48 00 00 78 */	b .L_8013DA44
.L_8013D9D0:
/* 8013D9D0 00106F90  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013D9D4 00106F94  38 A0 00 00 */	li r5, 0x0
/* 8013D9D8 00106F98  38 C0 00 00 */	li r6, 0x0
/* 8013D9DC 00106F9C  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013D9E0 00106FA0  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013D9E4 00106FA4  48 00 00 1C */	b .L_8013DA00
.L_8013D9E8:
/* 8013D9E8 00106FA8  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013D9EC 00106FAC  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013D9F0 00106FB0  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013D9F4 00106FB4  41 82 00 14 */	beq .L_8013DA08
/* 8013D9F8 00106FB8  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013D9FC 00106FBC  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013DA00:
/* 8013DA00 00106FC0  7C 05 38 00 */	cmpw r5, r7
/* 8013DA04 00106FC4  41 80 FF E4 */	blt .L_8013D9E8
.L_8013DA08:
/* 8013DA08 00106FC8  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013DA0C 00106FCC  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013DA10 00106FD0  7C A3 02 14 */	add r5, r3, r0
/* 8013DA14 00106FD4  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013DA18 00106FD8  41 82 00 10 */	beq .L_8013DA28
/* 8013DA1C 00106FDC  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013DA20 00106FE0  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013DA24 00106FE4  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013DA28:
/* 8013DA28 00106FE8  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013DA2C 00106FEC  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013DA30 00106FF0  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013DA34 00106FF4  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013DA38 00106FF8  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013DA3C 00106FFC  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013DA40 00107000  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013DA44:
/* 8013DA44 00107004  7F EA FB 78 */	mr r10, r31
/* 8013DA48 00107008  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013DA4C 0010700C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013DA50 00107010  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013DA54 00107014  7D 41 53 78 */	mr r1, r10
/* 8013DA58 00107018  7C 08 03 A6 */	mtlr r0
/* 8013DA5C 0010701C  4E 80 00 20 */	blr
.endfn fn_8013D978

.fn fn_8013DA60, global
/* 8013DA60 00107020  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8013DA64 00107024  7C 08 02 A6 */	mflr r0
/* 8013DA68 00107028  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013DA6C 0010702C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8013DA70 00107030  7C 3F 0B 78 */	mr r31, r1
/* 8013DA74 00107034  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8013DA78 00107038  7C 9E 23 78 */	mr r30, r4
/* 8013DA7C 0010703C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8013DA80 00107040  7C 7D 1B 78 */	mr r29, r3
/* 8013DA84 00107044  80 0D A7 F8 */	lwz r0, lbl_80666978@sda21(r13)
/* 8013DA88 00107048  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013DA8C 0010704C  40 82 00 0C */	bne .L_8013DA98
/* 8013DA90 00107050  38 60 00 00 */	li r3, 0x0
/* 8013DA94 00107054  48 00 00 B4 */	b .L_8013DB48
.L_8013DA98:
/* 8013DA98 00107058  2C 05 00 00 */	cmpwi r5, 0x0
/* 8013DA9C 0010705C  40 82 00 1C */	bne .L_8013DAB8
/* 8013DAA0 00107060  54 63 04 3E */	clrlwi r3, r3, 16
/* 8013DAA4 00107064  4B FF 7B F1 */	bl fn_80135694
/* 8013DAA8 00107068  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013DAAC 0010706C  41 82 00 0C */	beq .L_8013DAB8
/* 8013DAB0 00107070  38 60 00 00 */	li r3, 0x0
/* 8013DAB4 00107074  48 00 00 94 */	b .L_8013DB48
.L_8013DAB8:
/* 8013DAB8 00107078  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013DABC 0010707C  7F A5 EB 78 */	mr r5, r29
/* 8013DAC0 00107080  7F C6 F3 78 */	mr r6, r30
/* 8013DAC4 00107084  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013DAC8 00107088  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013DACC 0010708C  4B FE 50 61 */	bl fn_80122B2C
/* 8013DAD0 00107090  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013DAD4 00107094  38 A0 00 00 */	li r5, 0x0
/* 8013DAD8 00107098  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013DADC 0010709C  38 C0 00 00 */	li r6, 0x0
/* 8013DAE0 001070A0  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013DAE4 001070A4  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013DAE8 001070A8  48 00 00 1C */	b .L_8013DB04
.L_8013DAEC:
/* 8013DAEC 001070AC  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013DAF0 001070B0  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013DAF4 001070B4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013DAF8 001070B8  41 82 00 14 */	beq .L_8013DB0C
/* 8013DAFC 001070BC  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013DB00 001070C0  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013DB04:
/* 8013DB04 001070C4  7C 05 38 00 */	cmpw r5, r7
/* 8013DB08 001070C8  41 80 FF E4 */	blt .L_8013DAEC
.L_8013DB0C:
/* 8013DB0C 001070CC  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013DB10 001070D0  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013DB14 001070D4  7C A3 02 14 */	add r5, r3, r0
/* 8013DB18 001070D8  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013DB1C 001070DC  41 82 00 10 */	beq .L_8013DB2C
/* 8013DB20 001070E0  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013DB24 001070E4  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013DB28 001070E8  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013DB2C:
/* 8013DB2C 001070EC  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013DB30 001070F0  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013DB34 001070F4  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013DB38 001070F8  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013DB3C 001070FC  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013DB40 00107100  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013DB44 00107104  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013DB48:
/* 8013DB48 00107108  7F EA FB 78 */	mr r10, r31
/* 8013DB4C 0010710C  83 FF 00 3C */	lwz r31, 0x3c(r31)
/* 8013DB50 00107110  83 CA 00 38 */	lwz r30, 0x38(r10)
/* 8013DB54 00107114  83 AA 00 34 */	lwz r29, 0x34(r10)
/* 8013DB58 00107118  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013DB5C 0010711C  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013DB60 00107120  7D 41 53 78 */	mr r1, r10
/* 8013DB64 00107124  7C 08 03 A6 */	mtlr r0
/* 8013DB68 00107128  4E 80 00 20 */	blr
.endfn fn_8013DA60

.fn fn_8013DB6C, global
/* 8013DB6C 0010712C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8013DB70 00107130  7C 08 02 A6 */	mflr r0
/* 8013DB74 00107134  90 01 00 44 */	stw r0, 0x44(r1)
/* 8013DB78 00107138  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 8013DB7C 0010713C  7C 3F 0B 78 */	mr r31, r1
/* 8013DB80 00107140  7C 7B 1B 78 */	mr r27, r3
/* 8013DB84 00107144  7C 9C 23 78 */	mr r28, r4
/* 8013DB88 00107148  7C BD 2B 78 */	mr r29, r5
/* 8013DB8C 0010714C  7C DE 33 78 */	mr r30, r6
/* 8013DB90 00107150  80 0D A7 F8 */	lwz r0, lbl_80666978@sda21(r13)
/* 8013DB94 00107154  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013DB98 00107158  40 82 00 0C */	bne .L_8013DBA4
/* 8013DB9C 0010715C  38 60 00 00 */	li r3, 0x0
/* 8013DBA0 00107160  48 00 00 F0 */	b .L_8013DC90
.L_8013DBA4:
/* 8013DBA4 00107164  2C 03 00 01 */	cmpwi r3, 0x1
/* 8013DBA8 00107168  40 82 00 40 */	bne .L_8013DBE8
/* 8013DBAC 0010716C  7F 83 E3 78 */	mr r3, r28
/* 8013DBB0 00107170  4B FF A5 89 */	bl fn_80138138
/* 8013DBB4 00107174  3C C0 80 57 */	lis r6, lbl_80577510@ha
/* 8013DBB8 00107178  3C 80 80 50 */	lis r4, lbl_804FC1AC@ha
/* 8013DBBC 0010717C  54 60 10 3A */	slwi r0, r3, 2
/* 8013DBC0 00107180  7F 85 E3 78 */	mr r5, r28
/* 8013DBC4 00107184  38 C6 75 10 */	addi r6, r6, lbl_80577510@l
/* 8013DBC8 00107188  38 84 C1 AC */	addi r4, r4, lbl_804FC1AC@l
/* 8013DBCC 0010718C  7C 66 00 2E */	lwzx r3, r6, r0
/* 8013DBD0 00107190  4B FF 86 19 */	bl fn_801361E8
/* 8013DBD4 00107194  54 60 06 3E */	clrlwi r0, r3, 24
/* 8013DBD8 00107198  28 00 00 02 */	cmplwi r0, 0x2
/* 8013DBDC 0010719C  40 82 00 0C */	bne .L_8013DBE8
/* 8013DBE0 001071A0  38 60 00 00 */	li r3, 0x0
/* 8013DBE4 001071A4  48 00 00 AC */	b .L_8013DC90
.L_8013DBE8:
/* 8013DBE8 001071A8  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013DBEC 001071AC  7F 65 DB 78 */	mr r5, r27
/* 8013DBF0 001071B0  7F 86 E3 78 */	mr r6, r28
/* 8013DBF4 001071B4  7F A7 EB 78 */	mr r7, r29
/* 8013DBF8 001071B8  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013DBFC 001071BC  7F C8 F3 78 */	mr r8, r30
/* 8013DC00 001071C0  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013DC04 001071C4  48 00 4F 49 */	bl fn_80142B4C
/* 8013DC08 001071C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013DC0C 001071CC  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013DC10 001071D0  40 82 00 0C */	bne .L_8013DC1C
/* 8013DC14 001071D4  38 60 00 00 */	li r3, 0x0
/* 8013DC18 001071D8  48 00 00 78 */	b .L_8013DC90
.L_8013DC1C:
/* 8013DC1C 001071DC  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013DC20 001071E0  38 A0 00 00 */	li r5, 0x0
/* 8013DC24 001071E4  38 C0 00 00 */	li r6, 0x0
/* 8013DC28 001071E8  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013DC2C 001071EC  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013DC30 001071F0  48 00 00 1C */	b .L_8013DC4C
.L_8013DC34:
/* 8013DC34 001071F4  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013DC38 001071F8  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013DC3C 001071FC  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013DC40 00107200  41 82 00 14 */	beq .L_8013DC54
/* 8013DC44 00107204  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013DC48 00107208  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013DC4C:
/* 8013DC4C 0010720C  7C 05 38 00 */	cmpw r5, r7
/* 8013DC50 00107210  41 80 FF E4 */	blt .L_8013DC34
.L_8013DC54:
/* 8013DC54 00107214  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013DC58 00107218  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013DC5C 0010721C  7C A3 02 14 */	add r5, r3, r0
/* 8013DC60 00107220  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013DC64 00107224  41 82 00 10 */	beq .L_8013DC74
/* 8013DC68 00107228  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013DC6C 0010722C  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013DC70 00107230  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013DC74:
/* 8013DC74 00107234  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013DC78 00107238  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013DC7C 0010723C  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013DC80 00107240  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013DC84 00107244  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013DC88 00107248  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013DC8C 0010724C  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013DC90:
/* 8013DC90 00107250  7F EA FB 78 */	mr r10, r31
/* 8013DC94 00107254  BB 6A 00 2C */	lmw r27, 0x2c(r10)
/* 8013DC98 00107258  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013DC9C 0010725C  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013DCA0 00107260  7D 41 53 78 */	mr r1, r10
/* 8013DCA4 00107264  7C 08 03 A6 */	mtlr r0
/* 8013DCA8 00107268  4E 80 00 20 */	blr
.endfn fn_8013DB6C

.fn fn_8013DCAC, global
/* 8013DCAC 0010726C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013DCB0 00107270  7C 08 02 A6 */	mflr r0
/* 8013DCB4 00107274  7C 65 1B 78 */	mr r5, r3
/* 8013DCB8 00107278  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013DCBC 0010727C  7C 80 23 78 */	mr r0, r4
/* 8013DCC0 00107280  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013DCC4 00107284  7C 3F 0B 78 */	mr r31, r1
/* 8013DCC8 00107288  80 CD A7 F8 */	lwz r6, lbl_80666978@sda21(r13)
/* 8013DCCC 0010728C  2C 06 00 00 */	cmpwi r6, 0x0
/* 8013DCD0 00107290  40 82 00 0C */	bne .L_8013DCDC
/* 8013DCD4 00107294  38 60 00 00 */	li r3, 0x0
/* 8013DCD8 00107298  48 00 00 A0 */	b .L_8013DD78
.L_8013DCDC:
/* 8013DCDC 0010729C  80 66 00 9C */	lwz r3, 0x9c(r6)
/* 8013DCE0 001072A0  54 A5 04 3E */	clrlwi r5, r5, 16
/* 8013DCE4 001072A4  80 86 00 58 */	lwz r4, 0x58(r6)
/* 8013DCE8 001072A8  54 06 06 3E */	clrlwi r6, r0, 24
/* 8013DCEC 001072AC  48 00 71 F9 */	bl fn_80144EE4
/* 8013DCF0 001072B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013DCF4 001072B4  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013DCF8 001072B8  40 82 00 0C */	bne .L_8013DD04
/* 8013DCFC 001072BC  38 60 00 00 */	li r3, 0x0
/* 8013DD00 001072C0  48 00 00 78 */	b .L_8013DD78
.L_8013DD04:
/* 8013DD04 001072C4  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013DD08 001072C8  38 A0 00 00 */	li r5, 0x0
/* 8013DD0C 001072CC  38 C0 00 00 */	li r6, 0x0
/* 8013DD10 001072D0  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013DD14 001072D4  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013DD18 001072D8  48 00 00 1C */	b .L_8013DD34
.L_8013DD1C:
/* 8013DD1C 001072DC  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013DD20 001072E0  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013DD24 001072E4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013DD28 001072E8  41 82 00 14 */	beq .L_8013DD3C
/* 8013DD2C 001072EC  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013DD30 001072F0  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013DD34:
/* 8013DD34 001072F4  7C 05 38 00 */	cmpw r5, r7
/* 8013DD38 001072F8  41 80 FF E4 */	blt .L_8013DD1C
.L_8013DD3C:
/* 8013DD3C 001072FC  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013DD40 00107300  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013DD44 00107304  7C A3 02 14 */	add r5, r3, r0
/* 8013DD48 00107308  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013DD4C 0010730C  41 82 00 10 */	beq .L_8013DD5C
/* 8013DD50 00107310  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013DD54 00107314  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013DD58 00107318  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013DD5C:
/* 8013DD5C 0010731C  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013DD60 00107320  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013DD64 00107324  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013DD68 00107328  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013DD6C 0010732C  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013DD70 00107330  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013DD74 00107334  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013DD78:
/* 8013DD78 00107338  7F EA FB 78 */	mr r10, r31
/* 8013DD7C 0010733C  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013DD80 00107340  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013DD84 00107344  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013DD88 00107348  7D 41 53 78 */	mr r1, r10
/* 8013DD8C 0010734C  7C 08 03 A6 */	mtlr r0
/* 8013DD90 00107350  4E 80 00 20 */	blr
.endfn fn_8013DCAC

.fn fn_8013DD94, global
/* 8013DD94 00107354  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013DD98 00107358  7C 08 02 A6 */	mflr r0
/* 8013DD9C 0010735C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013DDA0 00107360  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013DDA4 00107364  7C 3F 0B 78 */	mr r31, r1
/* 8013DDA8 00107368  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013DDAC 0010736C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013DDB0 00107370  40 82 00 0C */	bne .L_8013DDBC
/* 8013DDB4 00107374  38 60 00 00 */	li r3, 0x0
/* 8013DDB8 00107378  48 00 00 98 */	b .L_8013DE50
.L_8013DDBC:
/* 8013DDBC 0010737C  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013DDC0 00107380  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013DDC4 00107384  48 02 25 31 */	bl fn_801602F4
/* 8013DDC8 00107388  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013DDCC 0010738C  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013DDD0 00107390  40 82 00 0C */	bne .L_8013DDDC
/* 8013DDD4 00107394  38 60 00 00 */	li r3, 0x0
/* 8013DDD8 00107398  48 00 00 78 */	b .L_8013DE50
.L_8013DDDC:
/* 8013DDDC 0010739C  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013DDE0 001073A0  38 A0 00 00 */	li r5, 0x0
/* 8013DDE4 001073A4  38 C0 00 00 */	li r6, 0x0
/* 8013DDE8 001073A8  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013DDEC 001073AC  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013DDF0 001073B0  48 00 00 1C */	b .L_8013DE0C
.L_8013DDF4:
/* 8013DDF4 001073B4  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013DDF8 001073B8  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013DDFC 001073BC  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013DE00 001073C0  41 82 00 14 */	beq .L_8013DE14
/* 8013DE04 001073C4  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013DE08 001073C8  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013DE0C:
/* 8013DE0C 001073CC  7C 05 38 00 */	cmpw r5, r7
/* 8013DE10 001073D0  41 80 FF E4 */	blt .L_8013DDF4
.L_8013DE14:
/* 8013DE14 001073D4  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013DE18 001073D8  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013DE1C 001073DC  7C A3 02 14 */	add r5, r3, r0
/* 8013DE20 001073E0  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013DE24 001073E4  41 82 00 10 */	beq .L_8013DE34
/* 8013DE28 001073E8  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013DE2C 001073EC  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013DE30 001073F0  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013DE34:
/* 8013DE34 001073F4  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013DE38 001073F8  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013DE3C 001073FC  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013DE40 00107400  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013DE44 00107404  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013DE48 00107408  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013DE4C 0010740C  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013DE50:
/* 8013DE50 00107410  7F EA FB 78 */	mr r10, r31
/* 8013DE54 00107414  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013DE58 00107418  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013DE5C 0010741C  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013DE60 00107420  7D 41 53 78 */	mr r1, r10
/* 8013DE64 00107424  7C 08 03 A6 */	mtlr r0
/* 8013DE68 00107428  4E 80 00 20 */	blr
.endfn fn_8013DD94

.fn fn_8013DE6C, global
/* 8013DE6C 0010742C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013DE70 00107430  7C 08 02 A6 */	mflr r0
/* 8013DE74 00107434  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013DE78 00107438  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013DE7C 0010743C  7C 3F 0B 78 */	mr r31, r1
/* 8013DE80 00107440  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013DE84 00107444  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013DE88 00107448  40 82 00 0C */	bne .L_8013DE94
/* 8013DE8C 0010744C  38 60 00 00 */	li r3, 0x0
/* 8013DE90 00107450  48 00 00 98 */	b .L_8013DF28
.L_8013DE94:
/* 8013DE94 00107454  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013DE98 00107458  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013DE9C 0010745C  48 01 FE 35 */	bl fn_8015DCD0
/* 8013DEA0 00107460  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013DEA4 00107464  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013DEA8 00107468  40 82 00 0C */	bne .L_8013DEB4
/* 8013DEAC 0010746C  38 60 00 00 */	li r3, 0x0
/* 8013DEB0 00107470  48 00 00 78 */	b .L_8013DF28
.L_8013DEB4:
/* 8013DEB4 00107474  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013DEB8 00107478  38 A0 00 00 */	li r5, 0x0
/* 8013DEBC 0010747C  38 C0 00 00 */	li r6, 0x0
/* 8013DEC0 00107480  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013DEC4 00107484  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013DEC8 00107488  48 00 00 1C */	b .L_8013DEE4
.L_8013DECC:
/* 8013DECC 0010748C  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013DED0 00107490  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013DED4 00107494  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013DED8 00107498  41 82 00 14 */	beq .L_8013DEEC
/* 8013DEDC 0010749C  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013DEE0 001074A0  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013DEE4:
/* 8013DEE4 001074A4  7C 05 38 00 */	cmpw r5, r7
/* 8013DEE8 001074A8  41 80 FF E4 */	blt .L_8013DECC
.L_8013DEEC:
/* 8013DEEC 001074AC  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013DEF0 001074B0  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013DEF4 001074B4  7C A3 02 14 */	add r5, r3, r0
/* 8013DEF8 001074B8  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013DEFC 001074BC  41 82 00 10 */	beq .L_8013DF0C
/* 8013DF00 001074C0  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013DF04 001074C4  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013DF08 001074C8  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013DF0C:
/* 8013DF0C 001074CC  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013DF10 001074D0  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013DF14 001074D4  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013DF18 001074D8  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013DF1C 001074DC  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013DF20 001074E0  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013DF24 001074E4  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013DF28:
/* 8013DF28 001074E8  7F EA FB 78 */	mr r10, r31
/* 8013DF2C 001074EC  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013DF30 001074F0  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013DF34 001074F4  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013DF38 001074F8  7D 41 53 78 */	mr r1, r10
/* 8013DF3C 001074FC  7C 08 03 A6 */	mtlr r0
/* 8013DF40 00107500  4E 80 00 20 */	blr
.endfn fn_8013DE6C

.fn fn_8013DF44, global
/* 8013DF44 00107504  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013DF48 00107508  7C 08 02 A6 */	mflr r0
/* 8013DF4C 0010750C  7C 68 1B 78 */	mr r8, r3
/* 8013DF50 00107510  7C 87 23 78 */	mr r7, r4
/* 8013DF54 00107514  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013DF58 00107518  7C A0 2B 78 */	mr r0, r5
/* 8013DF5C 0010751C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013DF60 00107520  7C 3F 0B 78 */	mr r31, r1
/* 8013DF64 00107524  80 CD A7 F8 */	lwz r6, lbl_80666978@sda21(r13)
/* 8013DF68 00107528  2C 06 00 00 */	cmpwi r6, 0x0
/* 8013DF6C 0010752C  40 82 00 0C */	bne .L_8013DF78
/* 8013DF70 00107530  38 60 00 00 */	li r3, 0x0
/* 8013DF74 00107534  48 00 00 A0 */	b .L_8013E014
.L_8013DF78:
/* 8013DF78 00107538  80 66 00 9C */	lwz r3, 0x9c(r6)
/* 8013DF7C 0010753C  55 04 04 3E */	clrlwi r4, r8, 16
/* 8013DF80 00107540  54 E5 06 3E */	clrlwi r5, r7, 24
/* 8013DF84 00107544  54 06 06 3E */	clrlwi r6, r0, 24
/* 8013DF88 00107548  48 02 60 31 */	bl fn_80163FB8
/* 8013DF8C 0010754C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013DF90 00107550  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013DF94 00107554  40 82 00 0C */	bne .L_8013DFA0
/* 8013DF98 00107558  38 60 00 00 */	li r3, 0x0
/* 8013DF9C 0010755C  48 00 00 78 */	b .L_8013E014
.L_8013DFA0:
/* 8013DFA0 00107560  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013DFA4 00107564  38 A0 00 00 */	li r5, 0x0
/* 8013DFA8 00107568  38 C0 00 00 */	li r6, 0x0
/* 8013DFAC 0010756C  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013DFB0 00107570  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013DFB4 00107574  48 00 00 1C */	b .L_8013DFD0
.L_8013DFB8:
/* 8013DFB8 00107578  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013DFBC 0010757C  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013DFC0 00107580  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013DFC4 00107584  41 82 00 14 */	beq .L_8013DFD8
/* 8013DFC8 00107588  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013DFCC 0010758C  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013DFD0:
/* 8013DFD0 00107590  7C 05 38 00 */	cmpw r5, r7
/* 8013DFD4 00107594  41 80 FF E4 */	blt .L_8013DFB8
.L_8013DFD8:
/* 8013DFD8 00107598  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013DFDC 0010759C  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013DFE0 001075A0  7C A3 02 14 */	add r5, r3, r0
/* 8013DFE4 001075A4  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013DFE8 001075A8  41 82 00 10 */	beq .L_8013DFF8
/* 8013DFEC 001075AC  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013DFF0 001075B0  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013DFF4 001075B4  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013DFF8:
/* 8013DFF8 001075B8  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013DFFC 001075BC  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013E000 001075C0  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013E004 001075C4  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013E008 001075C8  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013E00C 001075CC  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013E010 001075D0  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013E014:
/* 8013E014 001075D4  7F EA FB 78 */	mr r10, r31
/* 8013E018 001075D8  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013E01C 001075DC  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013E020 001075E0  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013E024 001075E4  7D 41 53 78 */	mr r1, r10
/* 8013E028 001075E8  7C 08 03 A6 */	mtlr r0
/* 8013E02C 001075EC  4E 80 00 20 */	blr
.endfn fn_8013DF44

.fn fn_8013E030, global
/* 8013E030 001075F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013E034 001075F4  7C 08 02 A6 */	mflr r0
/* 8013E038 001075F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013E03C 001075FC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013E040 00107600  7C 3F 0B 78 */	mr r31, r1
/* 8013E044 00107604  80 6D A7 F8 */	lwz r3, lbl_80666978@sda21(r13)
/* 8013E048 00107608  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E04C 0010760C  40 82 00 0C */	bne .L_8013E058
/* 8013E050 00107610  38 60 00 00 */	li r3, 0x0
/* 8013E054 00107614  48 00 00 94 */	b .L_8013E0E8
.L_8013E058:
/* 8013E058 00107618  80 63 00 9C */	lwz r3, 0x9c(r3)
/* 8013E05C 0010761C  48 01 F1 AD */	bl fn_8015D208
/* 8013E060 00107620  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E064 00107624  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013E068 00107628  40 82 00 0C */	bne .L_8013E074
/* 8013E06C 0010762C  38 60 00 00 */	li r3, 0x0
/* 8013E070 00107630  48 00 00 78 */	b .L_8013E0E8
.L_8013E074:
/* 8013E074 00107634  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E078 00107638  38 A0 00 00 */	li r5, 0x0
/* 8013E07C 0010763C  38 C0 00 00 */	li r6, 0x0
/* 8013E080 00107640  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013E084 00107644  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013E088 00107648  48 00 00 1C */	b .L_8013E0A4
.L_8013E08C:
/* 8013E08C 0010764C  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E090 00107650  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013E094 00107654  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013E098 00107658  41 82 00 14 */	beq .L_8013E0AC
/* 8013E09C 0010765C  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013E0A0 00107660  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013E0A4:
/* 8013E0A4 00107664  7C 05 38 00 */	cmpw r5, r7
/* 8013E0A8 00107668  41 80 FF E4 */	blt .L_8013E08C
.L_8013E0AC:
/* 8013E0AC 0010766C  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013E0B0 00107670  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E0B4 00107674  7C A3 02 14 */	add r5, r3, r0
/* 8013E0B8 00107678  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013E0BC 0010767C  41 82 00 10 */	beq .L_8013E0CC
/* 8013E0C0 00107680  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013E0C4 00107684  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013E0C8 00107688  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013E0CC:
/* 8013E0CC 0010768C  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013E0D0 00107690  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013E0D4 00107694  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013E0D8 00107698  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013E0DC 0010769C  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013E0E0 001076A0  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013E0E4 001076A4  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013E0E8:
/* 8013E0E8 001076A8  7F EA FB 78 */	mr r10, r31
/* 8013E0EC 001076AC  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013E0F0 001076B0  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013E0F4 001076B4  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013E0F8 001076B8  7D 41 53 78 */	mr r1, r10
/* 8013E0FC 001076BC  7C 08 03 A6 */	mtlr r0
/* 8013E100 001076C0  4E 80 00 20 */	blr
.endfn fn_8013E030

.fn fn_8013E104, global
/* 8013E104 001076C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013E108 001076C8  7C 08 02 A6 */	mflr r0
/* 8013E10C 001076CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013E110 001076D0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013E114 001076D4  7C 3F 0B 78 */	mr r31, r1
/* 8013E118 001076D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8013E11C 001076DC  7C 7E 1B 78 */	mr r30, r3
/* 8013E120 001076E0  80 0D A7 F8 */	lwz r0, lbl_80666978@sda21(r13)
/* 8013E124 001076E4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013E128 001076E8  40 82 00 0C */	bne .L_8013E134
/* 8013E12C 001076EC  38 60 00 00 */	li r3, 0x0
/* 8013E130 001076F0  48 00 00 B4 */	b .L_8013E1E4
.L_8013E134:
/* 8013E134 001076F4  48 0E 8A 61 */	bl fn_80226B94
/* 8013E138 001076F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E13C 001076FC  41 82 00 0C */	beq .L_8013E148
/* 8013E140 00107700  38 60 00 00 */	li r3, 0x0
/* 8013E144 00107704  48 00 00 A0 */	b .L_8013E1E4
.L_8013E148:
/* 8013E148 00107708  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E14C 0010770C  7F C5 F3 78 */	mr r5, r30
/* 8013E150 00107710  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013E154 00107714  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013E158 00107718  48 04 C4 35 */	bl fn_8018A58C
/* 8013E15C 0010771C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E160 00107720  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013E164 00107724  40 82 00 0C */	bne .L_8013E170
/* 8013E168 00107728  38 60 00 00 */	li r3, 0x0
/* 8013E16C 0010772C  48 00 00 78 */	b .L_8013E1E4
.L_8013E170:
/* 8013E170 00107730  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E174 00107734  38 A0 00 00 */	li r5, 0x0
/* 8013E178 00107738  38 C0 00 00 */	li r6, 0x0
/* 8013E17C 0010773C  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013E180 00107740  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013E184 00107744  48 00 00 1C */	b .L_8013E1A0
.L_8013E188:
/* 8013E188 00107748  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E18C 0010774C  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013E190 00107750  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013E194 00107754  41 82 00 14 */	beq .L_8013E1A8
/* 8013E198 00107758  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013E19C 0010775C  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013E1A0:
/* 8013E1A0 00107760  7C 05 38 00 */	cmpw r5, r7
/* 8013E1A4 00107764  41 80 FF E4 */	blt .L_8013E188
.L_8013E1A8:
/* 8013E1A8 00107768  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013E1AC 0010776C  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E1B0 00107770  7C A3 02 14 */	add r5, r3, r0
/* 8013E1B4 00107774  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013E1B8 00107778  41 82 00 10 */	beq .L_8013E1C8
/* 8013E1BC 0010777C  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013E1C0 00107780  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013E1C4 00107784  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013E1C8:
/* 8013E1C8 00107788  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013E1CC 0010778C  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013E1D0 00107790  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013E1D4 00107794  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013E1D8 00107798  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013E1DC 0010779C  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013E1E0 001077A0  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013E1E4:
/* 8013E1E4 001077A4  7F EA FB 78 */	mr r10, r31
/* 8013E1E8 001077A8  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013E1EC 001077AC  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 8013E1F0 001077B0  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013E1F4 001077B4  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013E1F8 001077B8  7D 41 53 78 */	mr r1, r10
/* 8013E1FC 001077BC  7C 08 03 A6 */	mtlr r0
/* 8013E200 001077C0  4E 80 00 20 */	blr
.endfn fn_8013E104

.fn fn_8013E204, global
/* 8013E204 001077C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013E208 001077C8  7C 08 02 A6 */	mflr r0
/* 8013E20C 001077CC  7C 65 1B 78 */	mr r5, r3
/* 8013E210 001077D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013E214 001077D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013E218 001077D8  7C 3F 0B 78 */	mr r31, r1
/* 8013E21C 001077DC  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E220 001077E0  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013E224 001077E4  40 82 00 0C */	bne .L_8013E230
/* 8013E228 001077E8  38 60 00 00 */	li r3, 0x0
/* 8013E22C 001077EC  48 00 00 98 */	b .L_8013E2C4
.L_8013E230:
/* 8013E230 001077F0  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013E234 001077F4  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013E238 001077F8  48 08 0B A9 */	bl fn_801BEDE0
/* 8013E23C 001077FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E240 00107800  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013E244 00107804  40 82 00 0C */	bne .L_8013E250
/* 8013E248 00107808  38 60 00 00 */	li r3, 0x0
/* 8013E24C 0010780C  48 00 00 78 */	b .L_8013E2C4
.L_8013E250:
/* 8013E250 00107810  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E254 00107814  38 A0 00 00 */	li r5, 0x0
/* 8013E258 00107818  38 C0 00 00 */	li r6, 0x0
/* 8013E25C 0010781C  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013E260 00107820  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013E264 00107824  48 00 00 1C */	b .L_8013E280
.L_8013E268:
/* 8013E268 00107828  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E26C 0010782C  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013E270 00107830  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013E274 00107834  41 82 00 14 */	beq .L_8013E288
/* 8013E278 00107838  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013E27C 0010783C  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013E280:
/* 8013E280 00107840  7C 05 38 00 */	cmpw r5, r7
/* 8013E284 00107844  41 80 FF E4 */	blt .L_8013E268
.L_8013E288:
/* 8013E288 00107848  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013E28C 0010784C  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E290 00107850  7C A3 02 14 */	add r5, r3, r0
/* 8013E294 00107854  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013E298 00107858  41 82 00 10 */	beq .L_8013E2A8
/* 8013E29C 0010785C  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013E2A0 00107860  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013E2A4 00107864  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013E2A8:
/* 8013E2A8 00107868  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013E2AC 0010786C  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013E2B0 00107870  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013E2B4 00107874  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013E2B8 00107878  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013E2BC 0010787C  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013E2C0 00107880  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013E2C4:
/* 8013E2C4 00107884  7F EA FB 78 */	mr r10, r31
/* 8013E2C8 00107888  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013E2CC 0010788C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013E2D0 00107890  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013E2D4 00107894  7D 41 53 78 */	mr r1, r10
/* 8013E2D8 00107898  7C 08 03 A6 */	mtlr r0
/* 8013E2DC 0010789C  4E 80 00 20 */	blr
.endfn fn_8013E204

.fn fn_8013E2E0, global
/* 8013E2E0 001078A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8013E2E4 001078A4  7C 08 02 A6 */	mflr r0
/* 8013E2E8 001078A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8013E2EC 001078AC  BF 01 00 30 */	stmw r24, 0x30(r1)
/* 8013E2F0 001078B0  7C 3F 0B 78 */	mr r31, r1
/* 8013E2F4 001078B4  8B C1 00 5B */	lbz r30, 0x5b(r1)
/* 8013E2F8 001078B8  7C 78 1B 78 */	mr r24, r3
/* 8013E2FC 001078BC  7C 99 23 78 */	mr r25, r4
/* 8013E300 001078C0  7C BA 2B 78 */	mr r26, r5
/* 8013E304 001078C4  7C DB 33 78 */	mr r27, r6
/* 8013E308 001078C8  7D 1C 43 78 */	mr r28, r8
/* 8013E30C 001078CC  7D 5D 53 78 */	mr r29, r10
/* 8013E310 001078D0  80 0D A7 F8 */	lwz r0, lbl_80666978@sda21(r13)
/* 8013E314 001078D4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013E318 001078D8  40 82 00 0C */	bne .L_8013E324
/* 8013E31C 001078DC  38 60 00 00 */	li r3, 0x0
/* 8013E320 001078E0  48 00 00 E8 */	b .L_8013E408
.L_8013E324:
/* 8013E324 001078E4  2C 09 00 00 */	cmpwi r9, 0x0
/* 8013E328 001078E8  40 82 00 2C */	bne .L_8013E354
/* 8013E32C 001078EC  54 63 04 3E */	clrlwi r3, r3, 16
/* 8013E330 001078F0  54 84 04 3E */	clrlwi r4, r4, 16
/* 8013E334 001078F4  54 A5 04 3E */	clrlwi r5, r5, 16
/* 8013E338 001078F8  54 C6 04 3E */	clrlwi r6, r6, 16
/* 8013E33C 001078FC  54 E7 04 3E */	clrlwi r7, r7, 16
/* 8013E340 00107900  4B FF 73 15 */	bl fn_80135654
/* 8013E344 00107904  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E348 00107908  41 82 00 0C */	beq .L_8013E354
/* 8013E34C 0010790C  38 60 00 00 */	li r3, 0x0
/* 8013E350 00107910  48 00 00 B8 */	b .L_8013E408
.L_8013E354:
/* 8013E354 00107914  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E358 00107918  7F 05 C3 78 */	mr r5, r24
/* 8013E35C 0010791C  7F 26 CB 78 */	mr r6, r25
/* 8013E360 00107920  7F 47 D3 78 */	mr r7, r26
/* 8013E364 00107924  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8013E368 00107928  7F 68 DB 78 */	mr r8, r27
/* 8013E36C 0010792C  7F 89 E3 78 */	mr r9, r28
/* 8013E370 00107930  7F AA EB 78 */	mr r10, r29
/* 8013E374 00107934  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013E378 00107938  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013E37C 0010793C  48 07 63 69 */	bl fn_801B46E4
/* 8013E380 00107940  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E384 00107944  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8013E388 00107948  40 82 00 0C */	bne .L_8013E394
/* 8013E38C 0010794C  38 60 00 00 */	li r3, 0x0
/* 8013E390 00107950  48 00 00 78 */	b .L_8013E408
.L_8013E394:
/* 8013E394 00107954  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E398 00107958  38 A0 00 00 */	li r5, 0x0
/* 8013E39C 0010795C  38 C0 00 00 */	li r6, 0x0
/* 8013E3A0 00107960  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013E3A4 00107964  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013E3A8 00107968  48 00 00 1C */	b .L_8013E3C4
.L_8013E3AC:
/* 8013E3AC 0010796C  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E3B0 00107970  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013E3B4 00107974  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013E3B8 00107978  41 82 00 14 */	beq .L_8013E3CC
/* 8013E3BC 0010797C  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013E3C0 00107980  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013E3C4:
/* 8013E3C4 00107984  7C 05 38 00 */	cmpw r5, r7
/* 8013E3C8 00107988  41 80 FF E4 */	blt .L_8013E3AC
.L_8013E3CC:
/* 8013E3CC 0010798C  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013E3D0 00107990  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E3D4 00107994  7C A3 02 14 */	add r5, r3, r0
/* 8013E3D8 00107998  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013E3DC 0010799C  41 82 00 10 */	beq .L_8013E3EC
/* 8013E3E0 001079A0  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 8013E3E4 001079A4  90 3F 00 2C */	stw r1, 0x2c(r31)
/* 8013E3E8 001079A8  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013E3EC:
/* 8013E3EC 001079AC  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013E3F0 001079B0  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8013E3F4 001079B4  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013E3F8 001079B8  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013E3FC 001079BC  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013E400 001079C0  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013E404 001079C4  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013E408:
/* 8013E408 001079C8  7F EA FB 78 */	mr r10, r31
/* 8013E40C 001079CC  BB 0A 00 30 */	lmw r24, 0x30(r10)
/* 8013E410 001079D0  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013E414 001079D4  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013E418 001079D8  7D 41 53 78 */	mr r1, r10
/* 8013E41C 001079DC  7C 08 03 A6 */	mtlr r0
/* 8013E420 001079E0  4E 80 00 20 */	blr
.endfn fn_8013E2E0

.fn fn_8013E424, global
/* 8013E424 001079E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013E428 001079E8  7C 08 02 A6 */	mflr r0
/* 8013E42C 001079EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013E430 001079F0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013E434 001079F4  7C 3F 0B 78 */	mr r31, r1
/* 8013E438 001079F8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8013E43C 001079FC  7C 7E 1B 78 */	mr r30, r3
/* 8013E440 00107A00  80 0D A7 F8 */	lwz r0, lbl_80666978@sda21(r13)
/* 8013E444 00107A04  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013E448 00107A08  40 82 00 0C */	bne .L_8013E454
/* 8013E44C 00107A0C  38 60 00 00 */	li r3, 0x0
/* 8013E450 00107A10  48 00 00 BC */	b .L_8013E50C
.L_8013E454:
/* 8013E454 00107A14  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013E458 00107A18  40 82 00 18 */	bne .L_8013E470
/* 8013E45C 00107A1C  4B FF 71 D5 */	bl fn_80135630
/* 8013E460 00107A20  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E464 00107A24  41 82 00 0C */	beq .L_8013E470
/* 8013E468 00107A28  38 60 00 00 */	li r3, 0x0
/* 8013E46C 00107A2C  48 00 00 A0 */	b .L_8013E50C
.L_8013E470:
/* 8013E470 00107A30  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E474 00107A34  7F C5 F3 78 */	mr r5, r30
/* 8013E478 00107A38  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013E47C 00107A3C  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013E480 00107A40  48 07 63 11 */	bl fn_801B4790
/* 8013E484 00107A44  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E488 00107A48  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013E48C 00107A4C  40 82 00 0C */	bne .L_8013E498
/* 8013E490 00107A50  38 60 00 00 */	li r3, 0x0
/* 8013E494 00107A54  48 00 00 78 */	b .L_8013E50C
.L_8013E498:
/* 8013E498 00107A58  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E49C 00107A5C  38 A0 00 00 */	li r5, 0x0
/* 8013E4A0 00107A60  38 C0 00 00 */	li r6, 0x0
/* 8013E4A4 00107A64  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013E4A8 00107A68  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013E4AC 00107A6C  48 00 00 1C */	b .L_8013E4C8
.L_8013E4B0:
/* 8013E4B0 00107A70  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E4B4 00107A74  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013E4B8 00107A78  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013E4BC 00107A7C  41 82 00 14 */	beq .L_8013E4D0
/* 8013E4C0 00107A80  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013E4C4 00107A84  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013E4C8:
/* 8013E4C8 00107A88  7C 05 38 00 */	cmpw r5, r7
/* 8013E4CC 00107A8C  41 80 FF E4 */	blt .L_8013E4B0
.L_8013E4D0:
/* 8013E4D0 00107A90  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013E4D4 00107A94  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E4D8 00107A98  7C A3 02 14 */	add r5, r3, r0
/* 8013E4DC 00107A9C  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013E4E0 00107AA0  41 82 00 10 */	beq .L_8013E4F0
/* 8013E4E4 00107AA4  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013E4E8 00107AA8  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013E4EC 00107AAC  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013E4F0:
/* 8013E4F0 00107AB0  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013E4F4 00107AB4  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013E4F8 00107AB8  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013E4FC 00107ABC  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013E500 00107AC0  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013E504 00107AC4  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013E508 00107AC8  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013E50C:
/* 8013E50C 00107ACC  7F EA FB 78 */	mr r10, r31
/* 8013E510 00107AD0  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013E514 00107AD4  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 8013E518 00107AD8  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013E51C 00107ADC  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013E520 00107AE0  7D 41 53 78 */	mr r1, r10
/* 8013E524 00107AE4  7C 08 03 A6 */	mtlr r0
/* 8013E528 00107AE8  4E 80 00 20 */	blr
.endfn fn_8013E424

.fn fn_8013E52C, global
/* 8013E52C 00107AEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013E530 00107AF0  7C 08 02 A6 */	mflr r0
/* 8013E534 00107AF4  7C 65 1B 78 */	mr r5, r3
/* 8013E538 00107AF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013E53C 00107AFC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013E540 00107B00  7C 3F 0B 78 */	mr r31, r1
/* 8013E544 00107B04  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E548 00107B08  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013E54C 00107B0C  40 82 00 0C */	bne .L_8013E558
/* 8013E550 00107B10  38 60 00 00 */	li r3, 0x0
/* 8013E554 00107B14  48 00 00 98 */	b .L_8013E5EC
.L_8013E558:
/* 8013E558 00107B18  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013E55C 00107B1C  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013E560 00107B20  48 07 E9 5D */	bl fn_801BCEBC
/* 8013E564 00107B24  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E568 00107B28  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013E56C 00107B2C  40 82 00 0C */	bne .L_8013E578
/* 8013E570 00107B30  38 60 00 00 */	li r3, 0x0
/* 8013E574 00107B34  48 00 00 78 */	b .L_8013E5EC
.L_8013E578:
/* 8013E578 00107B38  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E57C 00107B3C  38 A0 00 00 */	li r5, 0x0
/* 8013E580 00107B40  38 C0 00 00 */	li r6, 0x0
/* 8013E584 00107B44  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013E588 00107B48  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013E58C 00107B4C  48 00 00 1C */	b .L_8013E5A8
.L_8013E590:
/* 8013E590 00107B50  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E594 00107B54  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013E598 00107B58  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013E59C 00107B5C  41 82 00 14 */	beq .L_8013E5B0
/* 8013E5A0 00107B60  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013E5A4 00107B64  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013E5A8:
/* 8013E5A8 00107B68  7C 05 38 00 */	cmpw r5, r7
/* 8013E5AC 00107B6C  41 80 FF E4 */	blt .L_8013E590
.L_8013E5B0:
/* 8013E5B0 00107B70  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013E5B4 00107B74  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E5B8 00107B78  7C A3 02 14 */	add r5, r3, r0
/* 8013E5BC 00107B7C  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013E5C0 00107B80  41 82 00 10 */	beq .L_8013E5D0
/* 8013E5C4 00107B84  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013E5C8 00107B88  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013E5CC 00107B8C  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013E5D0:
/* 8013E5D0 00107B90  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013E5D4 00107B94  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013E5D8 00107B98  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013E5DC 00107B9C  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013E5E0 00107BA0  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013E5E4 00107BA4  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013E5E8 00107BA8  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013E5EC:
/* 8013E5EC 00107BAC  7F EA FB 78 */	mr r10, r31
/* 8013E5F0 00107BB0  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013E5F4 00107BB4  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013E5F8 00107BB8  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013E5FC 00107BBC  7D 41 53 78 */	mr r1, r10
/* 8013E600 00107BC0  7C 08 03 A6 */	mtlr r0
/* 8013E604 00107BC4  4E 80 00 20 */	blr
.endfn fn_8013E52C

.fn fn_8013E608, global
/* 8013E608 00107BC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013E60C 00107BCC  7C 08 02 A6 */	mflr r0
/* 8013E610 00107BD0  7C 6A 1B 78 */	mr r10, r3
/* 8013E614 00107BD4  7C 89 23 78 */	mr r9, r4
/* 8013E618 00107BD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013E61C 00107BDC  7C A8 2B 78 */	mr r8, r5
/* 8013E620 00107BE0  7C C0 33 78 */	mr r0, r6
/* 8013E624 00107BE4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013E628 00107BE8  7C 3F 0B 78 */	mr r31, r1
/* 8013E62C 00107BEC  80 ED A7 F8 */	lwz r7, lbl_80666978@sda21(r13)
/* 8013E630 00107BF0  2C 07 00 00 */	cmpwi r7, 0x0
/* 8013E634 00107BF4  40 82 00 0C */	bne .L_8013E640
/* 8013E638 00107BF8  38 60 00 00 */	li r3, 0x0
/* 8013E63C 00107BFC  48 00 00 AC */	b .L_8013E6E8
.L_8013E640:
/* 8013E640 00107C00  80 67 00 9C */	lwz r3, 0x9c(r7)
/* 8013E644 00107C04  55 26 04 3E */	clrlwi r6, r9, 16
/* 8013E648 00107C08  80 87 00 58 */	lwz r4, 0x58(r7)
/* 8013E64C 00107C0C  55 07 06 3E */	clrlwi r7, r8, 24
/* 8013E650 00107C10  55 45 04 3E */	clrlwi r5, r10, 16
/* 8013E654 00107C14  54 08 06 3E */	clrlwi r8, r0, 24
/* 8013E658 00107C18  39 20 00 00 */	li r9, 0x0
/* 8013E65C 00107C1C  48 0E 83 7D */	bl fn_802269D8
/* 8013E660 00107C20  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E664 00107C24  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013E668 00107C28  40 82 00 0C */	bne .L_8013E674
/* 8013E66C 00107C2C  38 60 00 00 */	li r3, 0x0
/* 8013E670 00107C30  48 00 00 78 */	b .L_8013E6E8
.L_8013E674:
/* 8013E674 00107C34  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E678 00107C38  38 A0 00 00 */	li r5, 0x0
/* 8013E67C 00107C3C  38 C0 00 00 */	li r6, 0x0
/* 8013E680 00107C40  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013E684 00107C44  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013E688 00107C48  48 00 00 1C */	b .L_8013E6A4
.L_8013E68C:
/* 8013E68C 00107C4C  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E690 00107C50  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013E694 00107C54  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013E698 00107C58  41 82 00 14 */	beq .L_8013E6AC
/* 8013E69C 00107C5C  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013E6A0 00107C60  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013E6A4:
/* 8013E6A4 00107C64  7C 05 38 00 */	cmpw r5, r7
/* 8013E6A8 00107C68  41 80 FF E4 */	blt .L_8013E68C
.L_8013E6AC:
/* 8013E6AC 00107C6C  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013E6B0 00107C70  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E6B4 00107C74  7C A3 02 14 */	add r5, r3, r0
/* 8013E6B8 00107C78  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013E6BC 00107C7C  41 82 00 10 */	beq .L_8013E6CC
/* 8013E6C0 00107C80  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013E6C4 00107C84  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013E6C8 00107C88  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013E6CC:
/* 8013E6CC 00107C8C  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013E6D0 00107C90  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013E6D4 00107C94  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013E6D8 00107C98  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013E6DC 00107C9C  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013E6E0 00107CA0  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013E6E4 00107CA4  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013E6E8:
/* 8013E6E8 00107CA8  7F EA FB 78 */	mr r10, r31
/* 8013E6EC 00107CAC  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013E6F0 00107CB0  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013E6F4 00107CB4  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013E6F8 00107CB8  7D 41 53 78 */	mr r1, r10
/* 8013E6FC 00107CBC  7C 08 03 A6 */	mtlr r0
/* 8013E700 00107CC0  4E 80 00 20 */	blr
.endfn fn_8013E608

.fn fn_8013E704, global
/* 8013E704 00107CC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013E708 00107CC8  7C 08 02 A6 */	mflr r0
/* 8013E70C 00107CCC  7C 6A 1B 78 */	mr r10, r3
/* 8013E710 00107CD0  7C 89 23 78 */	mr r9, r4
/* 8013E714 00107CD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013E718 00107CD8  7C A8 2B 78 */	mr r8, r5
/* 8013E71C 00107CDC  7C C0 33 78 */	mr r0, r6
/* 8013E720 00107CE0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013E724 00107CE4  7C 3F 0B 78 */	mr r31, r1
/* 8013E728 00107CE8  80 ED A7 F8 */	lwz r7, lbl_80666978@sda21(r13)
/* 8013E72C 00107CEC  2C 07 00 00 */	cmpwi r7, 0x0
/* 8013E730 00107CF0  40 82 00 0C */	bne .L_8013E73C
/* 8013E734 00107CF4  38 60 00 00 */	li r3, 0x0
/* 8013E738 00107CF8  48 00 00 AC */	b .L_8013E7E4
.L_8013E73C:
/* 8013E73C 00107CFC  80 67 00 9C */	lwz r3, 0x9c(r7)
/* 8013E740 00107D00  55 26 04 3E */	clrlwi r6, r9, 16
/* 8013E744 00107D04  80 87 00 58 */	lwz r4, 0x58(r7)
/* 8013E748 00107D08  55 07 06 3E */	clrlwi r7, r8, 24
/* 8013E74C 00107D0C  55 45 04 3E */	clrlwi r5, r10, 16
/* 8013E750 00107D10  54 08 06 3E */	clrlwi r8, r0, 24
/* 8013E754 00107D14  39 20 00 01 */	li r9, 0x1
/* 8013E758 00107D18  48 0E 82 81 */	bl fn_802269D8
/* 8013E75C 00107D1C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E760 00107D20  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013E764 00107D24  40 82 00 0C */	bne .L_8013E770
/* 8013E768 00107D28  38 60 00 00 */	li r3, 0x0
/* 8013E76C 00107D2C  48 00 00 78 */	b .L_8013E7E4
.L_8013E770:
/* 8013E770 00107D30  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E774 00107D34  38 A0 00 00 */	li r5, 0x0
/* 8013E778 00107D38  38 C0 00 00 */	li r6, 0x0
/* 8013E77C 00107D3C  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013E780 00107D40  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013E784 00107D44  48 00 00 1C */	b .L_8013E7A0
.L_8013E788:
/* 8013E788 00107D48  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E78C 00107D4C  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013E790 00107D50  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013E794 00107D54  41 82 00 14 */	beq .L_8013E7A8
/* 8013E798 00107D58  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013E79C 00107D5C  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013E7A0:
/* 8013E7A0 00107D60  7C 05 38 00 */	cmpw r5, r7
/* 8013E7A4 00107D64  41 80 FF E4 */	blt .L_8013E788
.L_8013E7A8:
/* 8013E7A8 00107D68  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013E7AC 00107D6C  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E7B0 00107D70  7C A3 02 14 */	add r5, r3, r0
/* 8013E7B4 00107D74  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013E7B8 00107D78  41 82 00 10 */	beq .L_8013E7C8
/* 8013E7BC 00107D7C  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013E7C0 00107D80  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013E7C4 00107D84  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013E7C8:
/* 8013E7C8 00107D88  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013E7CC 00107D8C  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013E7D0 00107D90  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013E7D4 00107D94  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013E7D8 00107D98  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013E7DC 00107D9C  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013E7E0 00107DA0  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013E7E4:
/* 8013E7E4 00107DA4  7F EA FB 78 */	mr r10, r31
/* 8013E7E8 00107DA8  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013E7EC 00107DAC  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013E7F0 00107DB0  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013E7F4 00107DB4  7D 41 53 78 */	mr r1, r10
/* 8013E7F8 00107DB8  7C 08 03 A6 */	mtlr r0
/* 8013E7FC 00107DBC  4E 80 00 20 */	blr
.endfn fn_8013E704

.fn fn_8013E800, global
/* 8013E800 00107DC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013E804 00107DC4  7C 08 02 A6 */	mflr r0
/* 8013E808 00107DC8  7C 66 1B 78 */	mr r6, r3
/* 8013E80C 00107DCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013E810 00107DD0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013E814 00107DD4  7C 3F 0B 78 */	mr r31, r1
/* 8013E818 00107DD8  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E81C 00107DDC  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013E820 00107DE0  40 82 00 0C */	bne .L_8013E82C
/* 8013E824 00107DE4  38 60 00 00 */	li r3, 0x0
/* 8013E828 00107DE8  48 00 00 9C */	b .L_8013E8C4
.L_8013E82C:
/* 8013E82C 00107DEC  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013E830 00107DF0  38 A0 00 02 */	li r5, 0x2
/* 8013E834 00107DF4  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013E838 00107DF8  48 13 10 79 */	bl fn_8026F8B0
/* 8013E83C 00107DFC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E840 00107E00  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013E844 00107E04  40 82 00 0C */	bne .L_8013E850
/* 8013E848 00107E08  38 60 00 00 */	li r3, 0x0
/* 8013E84C 00107E0C  48 00 00 78 */	b .L_8013E8C4
.L_8013E850:
/* 8013E850 00107E10  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E854 00107E14  38 A0 00 00 */	li r5, 0x0
/* 8013E858 00107E18  38 C0 00 00 */	li r6, 0x0
/* 8013E85C 00107E1C  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013E860 00107E20  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013E864 00107E24  48 00 00 1C */	b .L_8013E880
.L_8013E868:
/* 8013E868 00107E28  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E86C 00107E2C  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013E870 00107E30  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013E874 00107E34  41 82 00 14 */	beq .L_8013E888
/* 8013E878 00107E38  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013E87C 00107E3C  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013E880:
/* 8013E880 00107E40  7C 05 38 00 */	cmpw r5, r7
/* 8013E884 00107E44  41 80 FF E4 */	blt .L_8013E868
.L_8013E888:
/* 8013E888 00107E48  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013E88C 00107E4C  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E890 00107E50  7C A3 02 14 */	add r5, r3, r0
/* 8013E894 00107E54  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013E898 00107E58  41 82 00 10 */	beq .L_8013E8A8
/* 8013E89C 00107E5C  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013E8A0 00107E60  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013E8A4 00107E64  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013E8A8:
/* 8013E8A8 00107E68  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013E8AC 00107E6C  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013E8B0 00107E70  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013E8B4 00107E74  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013E8B8 00107E78  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013E8BC 00107E7C  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013E8C0 00107E80  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013E8C4:
/* 8013E8C4 00107E84  7F EA FB 78 */	mr r10, r31
/* 8013E8C8 00107E88  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013E8CC 00107E8C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013E8D0 00107E90  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013E8D4 00107E94  7D 41 53 78 */	mr r1, r10
/* 8013E8D8 00107E98  7C 08 03 A6 */	mtlr r0
/* 8013E8DC 00107E9C  4E 80 00 20 */	blr
.endfn fn_8013E800

.fn fn_8013E8E0, global
/* 8013E8E0 00107EA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013E8E4 00107EA4  7C 08 02 A6 */	mflr r0
/* 8013E8E8 00107EA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013E8EC 00107EAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013E8F0 00107EB0  7C 3F 0B 78 */	mr r31, r1
/* 8013E8F4 00107EB4  80 0D A7 F8 */	lwz r0, lbl_80666978@sda21(r13)
/* 8013E8F8 00107EB8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013E8FC 00107EBC  40 82 00 0C */	bne .L_8013E908
/* 8013E900 00107EC0  38 60 00 00 */	li r3, 0x0
/* 8013E904 00107EC4  48 00 00 B8 */	b .L_8013E9BC
.L_8013E908:
/* 8013E908 00107EC8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E90C 00107ECC  40 82 00 18 */	bne .L_8013E924
/* 8013E910 00107ED0  4B FF 6D 01 */	bl fn_80135610
/* 8013E914 00107ED4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E918 00107ED8  41 82 00 0C */	beq .L_8013E924
/* 8013E91C 00107EDC  38 60 00 00 */	li r3, 0x0
/* 8013E920 00107EE0  48 00 00 9C */	b .L_8013E9BC
.L_8013E924:
/* 8013E924 00107EE4  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E928 00107EE8  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013E92C 00107EEC  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013E930 00107EF0  48 15 52 6D */	bl fn_80293B9C
/* 8013E934 00107EF4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013E938 00107EF8  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013E93C 00107EFC  40 82 00 0C */	bne .L_8013E948
/* 8013E940 00107F00  38 60 00 00 */	li r3, 0x0
/* 8013E944 00107F04  48 00 00 78 */	b .L_8013E9BC
.L_8013E948:
/* 8013E948 00107F08  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E94C 00107F0C  38 A0 00 00 */	li r5, 0x0
/* 8013E950 00107F10  38 C0 00 00 */	li r6, 0x0
/* 8013E954 00107F14  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013E958 00107F18  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013E95C 00107F1C  48 00 00 1C */	b .L_8013E978
.L_8013E960:
/* 8013E960 00107F20  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E964 00107F24  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013E968 00107F28  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013E96C 00107F2C  41 82 00 14 */	beq .L_8013E980
/* 8013E970 00107F30  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013E974 00107F34  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013E978:
/* 8013E978 00107F38  7C 05 38 00 */	cmpw r5, r7
/* 8013E97C 00107F3C  41 80 FF E4 */	blt .L_8013E960
.L_8013E980:
/* 8013E980 00107F40  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013E984 00107F44  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013E988 00107F48  7C A3 02 14 */	add r5, r3, r0
/* 8013E98C 00107F4C  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013E990 00107F50  41 82 00 10 */	beq .L_8013E9A0
/* 8013E994 00107F54  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013E998 00107F58  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013E99C 00107F5C  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013E9A0:
/* 8013E9A0 00107F60  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013E9A4 00107F64  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013E9A8 00107F68  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013E9AC 00107F6C  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013E9B0 00107F70  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013E9B4 00107F74  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013E9B8 00107F78  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013E9BC:
/* 8013E9BC 00107F7C  7F EA FB 78 */	mr r10, r31
/* 8013E9C0 00107F80  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013E9C4 00107F84  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013E9C8 00107F88  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013E9CC 00107F8C  7D 41 53 78 */	mr r1, r10
/* 8013E9D0 00107F90  7C 08 03 A6 */	mtlr r0
/* 8013E9D4 00107F94  4E 80 00 20 */	blr
.endfn fn_8013E8E0

.fn fn_8013E9D8, global
/* 8013E9D8 00107F98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013E9DC 00107F9C  7C 08 02 A6 */	mflr r0
/* 8013E9E0 00107FA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013E9E4 00107FA4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013E9E8 00107FA8  7C 3F 0B 78 */	mr r31, r1
/* 8013E9EC 00107FAC  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013E9F0 00107FB0  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013E9F4 00107FB4  40 82 00 0C */	bne .L_8013EA00
/* 8013E9F8 00107FB8  38 60 00 00 */	li r3, 0x0
/* 8013E9FC 00107FBC  48 00 00 98 */	b .L_8013EA94
.L_8013EA00:
/* 8013EA00 00107FC0  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013EA04 00107FC4  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013EA08 00107FC8  48 15 5A D1 */	bl fn_802944D8
/* 8013EA0C 00107FCC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013EA10 00107FD0  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013EA14 00107FD4  40 82 00 0C */	bne .L_8013EA20
/* 8013EA18 00107FD8  38 60 00 00 */	li r3, 0x0
/* 8013EA1C 00107FDC  48 00 00 78 */	b .L_8013EA94
.L_8013EA20:
/* 8013EA20 00107FE0  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013EA24 00107FE4  38 A0 00 00 */	li r5, 0x0
/* 8013EA28 00107FE8  38 C0 00 00 */	li r6, 0x0
/* 8013EA2C 00107FEC  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013EA30 00107FF0  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013EA34 00107FF4  48 00 00 1C */	b .L_8013EA50
.L_8013EA38:
/* 8013EA38 00107FF8  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013EA3C 00107FFC  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013EA40 00108000  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013EA44 00108004  41 82 00 14 */	beq .L_8013EA58
/* 8013EA48 00108008  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013EA4C 0010800C  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013EA50:
/* 8013EA50 00108010  7C 05 38 00 */	cmpw r5, r7
/* 8013EA54 00108014  41 80 FF E4 */	blt .L_8013EA38
.L_8013EA58:
/* 8013EA58 00108018  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013EA5C 0010801C  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013EA60 00108020  7C A3 02 14 */	add r5, r3, r0
/* 8013EA64 00108024  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013EA68 00108028  41 82 00 10 */	beq .L_8013EA78
/* 8013EA6C 0010802C  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013EA70 00108030  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013EA74 00108034  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013EA78:
/* 8013EA78 00108038  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013EA7C 0010803C  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013EA80 00108040  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013EA84 00108044  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013EA88 00108048  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013EA8C 0010804C  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013EA90 00108050  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013EA94:
/* 8013EA94 00108054  7F EA FB 78 */	mr r10, r31
/* 8013EA98 00108058  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013EA9C 0010805C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013EAA0 00108060  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013EAA4 00108064  7D 41 53 78 */	mr r1, r10
/* 8013EAA8 00108068  7C 08 03 A6 */	mtlr r0
/* 8013EAAC 0010806C  4E 80 00 20 */	blr
.endfn fn_8013E9D8

.fn fn_8013EAB0, global
/* 8013EAB0 00108070  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013EAB4 00108074  7C 08 02 A6 */	mflr r0
/* 8013EAB8 00108078  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013EABC 0010807C  7C 60 1B 78 */	mr r0, r3
/* 8013EAC0 00108080  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8013EAC4 00108084  7C 3F 0B 78 */	mr r31, r1
/* 8013EAC8 00108088  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013EACC 0010808C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013EAD0 00108090  40 82 00 0C */	bne .L_8013EADC
/* 8013EAD4 00108094  38 60 00 00 */	li r3, 0x0
/* 8013EAD8 00108098  48 00 00 9C */	b .L_8013EB74
.L_8013EADC:
/* 8013EADC 0010809C  80 64 00 9C */	lwz r3, 0x9c(r4)
/* 8013EAE0 001080A0  54 05 06 3E */	clrlwi r5, r0, 24
/* 8013EAE4 001080A4  80 84 00 58 */	lwz r4, 0x58(r4)
/* 8013EAE8 001080A8  48 16 B7 B9 */	bl fn_802AA2A0
/* 8013EAEC 001080AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013EAF0 001080B0  90 7F 00 08 */	stw r3, 0x8(r31)
/* 8013EAF4 001080B4  40 82 00 0C */	bne .L_8013EB00
/* 8013EAF8 001080B8  38 60 00 00 */	li r3, 0x0
/* 8013EAFC 001080BC  48 00 00 78 */	b .L_8013EB74
.L_8013EB00:
/* 8013EB00 001080C0  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013EB04 001080C4  38 A0 00 00 */	li r5, 0x0
/* 8013EB08 001080C8  38 C0 00 00 */	li r6, 0x0
/* 8013EB0C 001080CC  81 04 00 60 */	lwz r8, 0x60(r4)
/* 8013EB10 001080D0  80 E4 00 74 */	lwz r7, 0x74(r4)
/* 8013EB14 001080D4  48 00 00 1C */	b .L_8013EB30
.L_8013EB18:
/* 8013EB18 001080D8  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013EB1C 001080DC  7C 03 30 2E */	lwzx r0, r3, r6
/* 8013EB20 001080E0  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013EB24 001080E4  41 82 00 14 */	beq .L_8013EB38
/* 8013EB28 001080E8  38 C6 00 0C */	addi r6, r6, 0xc
/* 8013EB2C 001080EC  38 A5 00 01 */	addi r5, r5, 0x1
.L_8013EB30:
/* 8013EB30 001080F0  7C 05 38 00 */	cmpw r5, r7
/* 8013EB34 001080F4  41 80 FF E4 */	blt .L_8013EB18
.L_8013EB38:
/* 8013EB38 001080F8  1C 05 00 0C */	mulli r0, r5, 0xc
/* 8013EB3C 001080FC  80 64 00 70 */	lwz r3, 0x70(r4)
/* 8013EB40 00108100  7C A3 02 14 */	add r5, r3, r0
/* 8013EB44 00108104  34 65 00 08 */	addic. r3, r5, 0x8
/* 8013EB48 00108108  41 82 00 10 */	beq .L_8013EB58
/* 8013EB4C 0010810C  80 1F 00 08 */	lwz r0, 0x8(r31)
/* 8013EB50 00108110  90 3F 00 24 */	stw r1, 0x24(r31)
/* 8013EB54 00108114  90 03 00 00 */	stw r0, 0x0(r3)
.L_8013EB58:
/* 8013EB58 00108118  91 05 00 00 */	stw r8, 0x0(r5)
/* 8013EB5C 0010811C  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 8013EB60 00108120  80 08 00 04 */	lwz r0, 0x4(r8)
/* 8013EB64 00108124  90 05 00 04 */	stw r0, 0x4(r5)
/* 8013EB68 00108128  80 88 00 04 */	lwz r4, 0x4(r8)
/* 8013EB6C 0010812C  90 A4 00 00 */	stw r5, 0x0(r4)
/* 8013EB70 00108130  90 A8 00 04 */	stw r5, 0x4(r8)
.L_8013EB74:
/* 8013EB74 00108134  7F EA FB 78 */	mr r10, r31
/* 8013EB78 00108138  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 8013EB7C 0010813C  81 41 00 00 */	lwz r10, 0x0(r1)
/* 8013EB80 00108140  80 0A 00 04 */	lwz r0, 0x4(r10)
/* 8013EB84 00108144  7D 41 53 78 */	mr r1, r10
/* 8013EB88 00108148  7C 08 03 A6 */	mtlr r0
/* 8013EB8C 0010814C  4E 80 00 20 */	blr
.endfn fn_8013EAB0

.fn fn_8013EB90, global
/* 8013EB90 00108150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013EB94 00108154  7C 08 02 A6 */	mflr r0
/* 8013EB98 00108158  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013EB9C 0010815C  80 CD A7 F8 */	lwz r6, lbl_80666978@sda21(r13)
/* 8013EBA0 00108160  2C 06 00 00 */	cmpwi r6, 0x0
/* 8013EBA4 00108164  40 82 00 0C */	bne .L_8013EBB0
/* 8013EBA8 00108168  38 60 00 00 */	li r3, 0x0
/* 8013EBAC 0010816C  48 00 00 9C */	b .L_8013EC48
.L_8013EBB0:
/* 8013EBB0 00108170  80 86 00 60 */	lwz r4, 0x60(r6)
/* 8013EBB4 00108174  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 8013EBB8 00108178  48 00 00 20 */	b .L_8013EBD8
.L_8013EBBC:
/* 8013EBBC 0010817C  80 65 00 08 */	lwz r3, 0x8(r5)
/* 8013EBC0 00108180  88 03 00 67 */	lbz r0, 0x67(r3)
/* 8013EBC4 00108184  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013EBC8 00108188  41 82 00 0C */	beq .L_8013EBD4
/* 8013EBCC 0010818C  38 60 00 01 */	li r3, 0x1
/* 8013EBD0 00108190  48 00 00 78 */	b .L_8013EC48
.L_8013EBD4:
/* 8013EBD4 00108194  80 A5 00 00 */	lwz r5, 0x0(r5)
.L_8013EBD8:
/* 8013EBD8 00108198  7C 05 20 40 */	cmplw r5, r4
/* 8013EBDC 0010819C  40 82 FF E0 */	bne .L_8013EBBC
/* 8013EBE0 001081A0  80 86 00 80 */	lwz r4, 0x80(r6)
/* 8013EBE4 001081A4  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 8013EBE8 001081A8  48 00 00 20 */	b .L_8013EC08
.L_8013EBEC:
/* 8013EBEC 001081AC  80 65 00 08 */	lwz r3, 0x8(r5)
/* 8013EBF0 001081B0  88 03 00 67 */	lbz r0, 0x67(r3)
/* 8013EBF4 001081B4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013EBF8 001081B8  41 82 00 0C */	beq .L_8013EC04
/* 8013EBFC 001081BC  38 60 00 01 */	li r3, 0x1
/* 8013EC00 001081C0  48 00 00 48 */	b .L_8013EC48
.L_8013EC04:
/* 8013EC04 001081C4  80 A5 00 00 */	lwz r5, 0x0(r5)
.L_8013EC08:
/* 8013EC08 001081C8  7C 05 20 40 */	cmplw r5, r4
/* 8013EC0C 001081CC  40 82 FF E0 */	bne .L_8013EBEC
/* 8013EC10 001081D0  4B FD 52 0D */	bl fn_80113E1C
/* 8013EC14 001081D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013EC18 001081D8  41 82 00 18 */	beq .L_8013EC30
/* 8013EC1C 001081DC  4B FD 52 09 */	bl fn_80113E24
/* 8013EC20 001081E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013EC24 001081E4  41 82 00 0C */	beq .L_8013EC30
/* 8013EC28 001081E8  38 60 00 01 */	li r3, 0x1
/* 8013EC2C 001081EC  48 00 00 1C */	b .L_8013EC48
.L_8013EC30:
/* 8013EC30 001081F0  48 08 02 2D */	bl fn_801BEE5C
/* 8013EC34 001081F4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013EC38 001081F8  41 82 00 0C */	beq .L_8013EC44
/* 8013EC3C 001081FC  38 60 00 01 */	li r3, 0x1
/* 8013EC40 00108200  48 00 00 08 */	b .L_8013EC48
.L_8013EC44:
/* 8013EC44 00108204  38 60 00 00 */	li r3, 0x0
.L_8013EC48:
/* 8013EC48 00108208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013EC4C 0010820C  7C 08 03 A6 */	mtlr r0
/* 8013EC50 00108210  38 21 00 10 */	addi r1, r1, 0x10
/* 8013EC54 00108214  4E 80 00 20 */	blr
.endfn fn_8013EB90

.fn fn_8013EC58, global
/* 8013EC58 00108218  A0 6D A7 FC */	lhz r3, lbl_8066697C@sda21(r13)
/* 8013EC5C 0010821C  4E 80 00 20 */	blr
.endfn fn_8013EC58

.fn fn_8013EC60, global
/* 8013EC60 00108220  38 00 00 00 */	li r0, 0x0
/* 8013EC64 00108224  B0 0D A7 FC */	sth r0, lbl_8066697C@sda21(r13)
/* 8013EC68 00108228  4E 80 00 20 */	blr
.endfn fn_8013EC60

.fn fn_8013EC6C, global
/* 8013EC6C 0010822C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8013EC70 00108230  80 AD A7 F8 */	lwz r5, lbl_80666978@sda21(r13)
/* 8013EC74 00108234  2C 05 00 00 */	cmpwi r5, 0x0
/* 8013EC78 00108238  41 82 04 28 */	beq .L_8013F0A0
/* 8013EC7C 0010823C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013EC80 00108240  41 82 00 C4 */	beq .L_8013ED44
/* 8013EC84 00108244  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013EC88 00108248  41 82 00 60 */	beq .L_8013ECE8
/* 8013EC8C 0010824C  80 65 00 60 */	lwz r3, 0x60(r5)
/* 8013EC90 00108250  38 80 00 01 */	li r4, 0x1
/* 8013EC94 00108254  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8013EC98 00108258  48 00 00 10 */	b .L_8013ECA8
.L_8013EC9C:
/* 8013EC9C 0010825C  80 65 00 08 */	lwz r3, 0x8(r5)
/* 8013ECA0 00108260  98 83 00 66 */	stb r4, 0x66(r3)
/* 8013ECA4 00108264  80 A5 00 00 */	lwz r5, 0x0(r5)
.L_8013ECA8:
/* 8013ECA8 00108268  80 6D A7 F8 */	lwz r3, lbl_80666978@sda21(r13)
/* 8013ECAC 0010826C  80 03 00 60 */	lwz r0, 0x60(r3)
/* 8013ECB0 00108270  7C 05 00 40 */	cmplw r5, r0
/* 8013ECB4 00108274  40 82 FF E8 */	bne .L_8013EC9C
/* 8013ECB8 00108278  80 63 00 80 */	lwz r3, 0x80(r3)
/* 8013ECBC 0010827C  38 80 00 01 */	li r4, 0x1
/* 8013ECC0 00108280  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8013ECC4 00108284  48 00 00 10 */	b .L_8013ECD4
.L_8013ECC8:
/* 8013ECC8 00108288  80 65 00 08 */	lwz r3, 0x8(r5)
/* 8013ECCC 0010828C  98 83 00 66 */	stb r4, 0x66(r3)
/* 8013ECD0 00108290  80 A5 00 00 */	lwz r5, 0x0(r5)
.L_8013ECD4:
/* 8013ECD4 00108294  80 6D A7 F8 */	lwz r3, lbl_80666978@sda21(r13)
/* 8013ECD8 00108298  80 03 00 80 */	lwz r0, 0x80(r3)
/* 8013ECDC 0010829C  7C 05 00 40 */	cmplw r5, r0
/* 8013ECE0 001082A0  40 82 FF E8 */	bne .L_8013ECC8
/* 8013ECE4 001082A4  48 00 03 BC */	b .L_8013F0A0
.L_8013ECE8:
/* 8013ECE8 001082A8  80 65 00 60 */	lwz r3, 0x60(r5)
/* 8013ECEC 001082AC  38 80 00 01 */	li r4, 0x1
/* 8013ECF0 001082B0  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8013ECF4 001082B4  48 00 00 10 */	b .L_8013ED04
.L_8013ECF8:
/* 8013ECF8 001082B8  80 65 00 08 */	lwz r3, 0x8(r5)
/* 8013ECFC 001082BC  98 83 00 65 */	stb r4, 0x65(r3)
/* 8013ED00 001082C0  80 A5 00 00 */	lwz r5, 0x0(r5)
.L_8013ED04:
/* 8013ED04 001082C4  80 6D A7 F8 */	lwz r3, lbl_80666978@sda21(r13)
/* 8013ED08 001082C8  80 03 00 60 */	lwz r0, 0x60(r3)
/* 8013ED0C 001082CC  7C 05 00 40 */	cmplw r5, r0
/* 8013ED10 001082D0  40 82 FF E8 */	bne .L_8013ECF8
/* 8013ED14 001082D4  80 63 00 80 */	lwz r3, 0x80(r3)
/* 8013ED18 001082D8  38 80 00 01 */	li r4, 0x1
/* 8013ED1C 001082DC  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8013ED20 001082E0  48 00 00 10 */	b .L_8013ED30
.L_8013ED24:
/* 8013ED24 001082E4  80 65 00 08 */	lwz r3, 0x8(r5)
/* 8013ED28 001082E8  98 83 00 65 */	stb r4, 0x65(r3)
/* 8013ED2C 001082EC  80 A5 00 00 */	lwz r5, 0x0(r5)
.L_8013ED30:
/* 8013ED30 001082F0  80 6D A7 F8 */	lwz r3, lbl_80666978@sda21(r13)
/* 8013ED34 001082F4  80 03 00 80 */	lwz r0, 0x80(r3)
/* 8013ED38 001082F8  7C 05 00 40 */	cmplw r5, r0
/* 8013ED3C 001082FC  40 82 FF E8 */	bne .L_8013ED24
/* 8013ED40 00108300  48 00 03 60 */	b .L_8013F0A0
.L_8013ED44:
/* 8013ED44 00108304  80 A5 00 60 */	lwz r5, 0x60(r5)
/* 8013ED48 00108308  38 E1 00 08 */	addi r7, r1, 0x8
/* 8013ED4C 0010830C  38 60 00 00 */	li r3, 0x0
/* 8013ED50 00108310  38 80 00 00 */	li r4, 0x0
/* 8013ED54 00108314  81 05 00 00 */	lwz r8, 0x0(r5)
/* 8013ED58 00108318  38 C0 00 01 */	li r6, 0x1
/* 8013ED5C 0010831C  48 00 00 1C */	b .L_8013ED78
.L_8013ED60:
/* 8013ED60 00108320  80 A8 00 08 */	lwz r5, 0x8(r8)
/* 8013ED64 00108324  38 63 00 01 */	addi r3, r3, 0x1
/* 8013ED68 00108328  98 C5 00 39 */	stb r6, 0x39(r5)
/* 8013ED6C 0010832C  7D 07 21 2E */	stwx r8, r7, r4
/* 8013ED70 00108330  38 84 00 04 */	addi r4, r4, 0x4
/* 8013ED74 00108334  81 08 00 00 */	lwz r8, 0x0(r8)
.L_8013ED78:
/* 8013ED78 00108338  80 AD A7 F8 */	lwz r5, lbl_80666978@sda21(r13)
/* 8013ED7C 0010833C  80 05 00 60 */	lwz r0, 0x60(r5)
/* 8013ED80 00108340  7C 08 00 40 */	cmplw r8, r0
/* 8013ED84 00108344  40 82 FF DC */	bne .L_8013ED60
/* 8013ED88 00108348  2C 83 00 00 */	cmpwi cr1, r3, 0x0
/* 8013ED8C 0010834C  38 80 00 00 */	li r4, 0x0
/* 8013ED90 00108350  40 85 01 5C */	ble cr1, .L_8013EEEC
/* 8013ED94 00108354  2C 03 00 08 */	cmpwi r3, 0x8
/* 8013ED98 00108358  38 C3 FF F8 */	addi r6, r3, -0x8
/* 8013ED9C 0010835C  40 81 01 10 */	ble .L_8013EEAC
/* 8013EDA0 00108360  38 E0 00 00 */	li r7, 0x0
/* 8013EDA4 00108364  41 84 00 18 */	blt cr1, .L_8013EDBC
/* 8013EDA8 00108368  3C A0 80 00 */	lis r5, 0x8000
/* 8013EDAC 0010836C  38 05 FF FE */	addi r0, r5, -0x2
/* 8013EDB0 00108370  7C 03 00 00 */	cmpw r3, r0
/* 8013EDB4 00108374  41 81 00 08 */	bgt .L_8013EDBC
/* 8013EDB8 00108378  38 E0 00 01 */	li r7, 0x1
.L_8013EDBC:
/* 8013EDBC 0010837C  2C 07 00 00 */	cmpwi r7, 0x0
/* 8013EDC0 00108380  41 82 00 EC */	beq .L_8013EEAC
/* 8013EDC4 00108384  38 06 00 07 */	addi r0, r6, 0x7
/* 8013EDC8 00108388  39 21 00 08 */	addi r9, r1, 0x8
/* 8013EDCC 0010838C  54 00 E8 FE */	srwi r0, r0, 3
/* 8013EDD0 00108390  38 A0 00 00 */	li r5, 0x0
/* 8013EDD4 00108394  7C 09 03 A6 */	mtctr r0
/* 8013EDD8 00108398  2C 06 00 00 */	cmpwi r6, 0x0
/* 8013EDDC 0010839C  40 81 00 D0 */	ble .L_8013EEAC
.L_8013EDE0:
/* 8013EDE0 001083A0  81 09 00 00 */	lwz r8, 0x0(r9)
/* 8013EDE4 001083A4  38 84 00 08 */	addi r4, r4, 0x8
/* 8013EDE8 001083A8  80 C8 00 04 */	lwz r6, 0x4(r8)
/* 8013EDEC 001083AC  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 8013EDF0 001083B0  90 E6 00 00 */	stw r7, 0x0(r6)
/* 8013EDF4 001083B4  90 C7 00 04 */	stw r6, 0x4(r7)
/* 8013EDF8 001083B8  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013EDFC 001083BC  81 09 00 04 */	lwz r8, 0x4(r9)
/* 8013EE00 001083C0  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013EE04 001083C4  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013EE08 001083C8  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013EE0C 001083CC  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013EE10 001083D0  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013EE14 001083D4  81 09 00 08 */	lwz r8, 0x8(r9)
/* 8013EE18 001083D8  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013EE1C 001083DC  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013EE20 001083E0  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013EE24 001083E4  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013EE28 001083E8  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013EE2C 001083EC  81 09 00 0C */	lwz r8, 0xc(r9)
/* 8013EE30 001083F0  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013EE34 001083F4  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013EE38 001083F8  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013EE3C 001083FC  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013EE40 00108400  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013EE44 00108404  81 09 00 10 */	lwz r8, 0x10(r9)
/* 8013EE48 00108408  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013EE4C 0010840C  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013EE50 00108410  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013EE54 00108414  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013EE58 00108418  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013EE5C 0010841C  81 09 00 14 */	lwz r8, 0x14(r9)
/* 8013EE60 00108420  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013EE64 00108424  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013EE68 00108428  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013EE6C 0010842C  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013EE70 00108430  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013EE74 00108434  81 09 00 18 */	lwz r8, 0x18(r9)
/* 8013EE78 00108438  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013EE7C 0010843C  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013EE80 00108440  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013EE84 00108444  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013EE88 00108448  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013EE8C 0010844C  81 09 00 1C */	lwz r8, 0x1c(r9)
/* 8013EE90 00108450  39 29 00 20 */	addi r9, r9, 0x20
/* 8013EE94 00108454  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013EE98 00108458  80 C8 00 00 */	lwz r6, 0x0(r8)
/* 8013EE9C 0010845C  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8013EEA0 00108460  90 E6 00 04 */	stw r7, 0x4(r6)
/* 8013EEA4 00108464  90 A8 00 00 */	stw r5, 0x0(r8)
/* 8013EEA8 00108468  42 00 FF 38 */	bdnz .L_8013EDE0
.L_8013EEAC:
/* 8013EEAC 0010846C  54 86 10 3A */	slwi r6, r4, 2
/* 8013EEB0 00108470  38 E1 00 08 */	addi r7, r1, 0x8
/* 8013EEB4 00108474  7C 04 18 50 */	subf r0, r4, r3
/* 8013EEB8 00108478  38 A0 00 00 */	li r5, 0x0
/* 8013EEBC 0010847C  7C E7 32 14 */	add r7, r7, r6
/* 8013EEC0 00108480  7C 09 03 A6 */	mtctr r0
/* 8013EEC4 00108484  7C 04 18 00 */	cmpw r4, r3
/* 8013EEC8 00108488  40 80 00 24 */	bge .L_8013EEEC
.L_8013EECC:
/* 8013EECC 0010848C  80 C7 00 00 */	lwz r6, 0x0(r7)
/* 8013EED0 00108490  38 E7 00 04 */	addi r7, r7, 0x4
/* 8013EED4 00108494  80 86 00 04 */	lwz r4, 0x4(r6)
/* 8013EED8 00108498  80 66 00 00 */	lwz r3, 0x0(r6)
/* 8013EEDC 0010849C  90 64 00 00 */	stw r3, 0x0(r4)
/* 8013EEE0 001084A0  90 83 00 04 */	stw r4, 0x4(r3)
/* 8013EEE4 001084A4  90 A6 00 00 */	stw r5, 0x0(r6)
/* 8013EEE8 001084A8  42 00 FF E4 */	bdnz .L_8013EECC
.L_8013EEEC:
/* 8013EEEC 001084AC  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013EEF0 001084B0  38 C1 00 08 */	addi r6, r1, 0x8
/* 8013EEF4 001084B4  39 20 00 00 */	li r9, 0x0
/* 8013EEF8 001084B8  38 60 00 00 */	li r3, 0x0
/* 8013EEFC 001084BC  80 84 00 80 */	lwz r4, 0x80(r4)
/* 8013EF00 001084C0  38 A0 00 01 */	li r5, 0x1
/* 8013EF04 001084C4  80 E4 00 00 */	lwz r7, 0x0(r4)
/* 8013EF08 001084C8  48 00 00 24 */	b .L_8013EF2C
.L_8013EF0C:
/* 8013EF0C 001084CC  80 87 00 08 */	lwz r4, 0x8(r7)
/* 8013EF10 001084D0  39 29 00 01 */	addi r9, r9, 0x1
/* 8013EF14 001084D4  98 A4 00 66 */	stb r5, 0x66(r4)
/* 8013EF18 001084D8  80 87 00 08 */	lwz r4, 0x8(r7)
/* 8013EF1C 001084DC  98 A4 00 39 */	stb r5, 0x39(r4)
/* 8013EF20 001084E0  7C E6 19 2E */	stwx r7, r6, r3
/* 8013EF24 001084E4  38 63 00 04 */	addi r3, r3, 0x4
/* 8013EF28 001084E8  80 E7 00 00 */	lwz r7, 0x0(r7)
.L_8013EF2C:
/* 8013EF2C 001084EC  80 8D A7 F8 */	lwz r4, lbl_80666978@sda21(r13)
/* 8013EF30 001084F0  80 04 00 80 */	lwz r0, 0x80(r4)
/* 8013EF34 001084F4  7C 07 00 40 */	cmplw r7, r0
/* 8013EF38 001084F8  40 82 FF D4 */	bne .L_8013EF0C
/* 8013EF3C 001084FC  2C 89 00 00 */	cmpwi cr1, r9, 0x0
/* 8013EF40 00108500  38 60 00 00 */	li r3, 0x0
/* 8013EF44 00108504  40 85 01 5C */	ble cr1, .L_8013F0A0
/* 8013EF48 00108508  2C 09 00 08 */	cmpwi r9, 0x8
/* 8013EF4C 0010850C  38 A9 FF F8 */	addi r5, r9, -0x8
/* 8013EF50 00108510  40 81 01 10 */	ble .L_8013F060
/* 8013EF54 00108514  38 C0 00 00 */	li r6, 0x0
/* 8013EF58 00108518  41 84 00 18 */	blt cr1, .L_8013EF70
/* 8013EF5C 0010851C  3C 80 80 00 */	lis r4, 0x8000
/* 8013EF60 00108520  38 04 FF FE */	addi r0, r4, -0x2
/* 8013EF64 00108524  7C 09 00 00 */	cmpw r9, r0
/* 8013EF68 00108528  41 81 00 08 */	bgt .L_8013EF70
/* 8013EF6C 0010852C  38 C0 00 01 */	li r6, 0x1
.L_8013EF70:
/* 8013EF70 00108530  2C 06 00 00 */	cmpwi r6, 0x0
/* 8013EF74 00108534  41 82 00 EC */	beq .L_8013F060
/* 8013EF78 00108538  38 05 00 07 */	addi r0, r5, 0x7
/* 8013EF7C 0010853C  39 01 00 08 */	addi r8, r1, 0x8
/* 8013EF80 00108540  54 00 E8 FE */	srwi r0, r0, 3
/* 8013EF84 00108544  38 80 00 00 */	li r4, 0x0
/* 8013EF88 00108548  7C 09 03 A6 */	mtctr r0
/* 8013EF8C 0010854C  2C 05 00 00 */	cmpwi r5, 0x0
/* 8013EF90 00108550  40 81 00 D0 */	ble .L_8013F060
.L_8013EF94:
/* 8013EF94 00108554  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 8013EF98 00108558  38 63 00 08 */	addi r3, r3, 0x8
/* 8013EF9C 0010855C  80 A7 00 04 */	lwz r5, 0x4(r7)
/* 8013EFA0 00108560  80 C7 00 00 */	lwz r6, 0x0(r7)
/* 8013EFA4 00108564  90 C5 00 00 */	stw r6, 0x0(r5)
/* 8013EFA8 00108568  90 A6 00 04 */	stw r5, 0x4(r6)
/* 8013EFAC 0010856C  90 87 00 00 */	stw r4, 0x0(r7)
/* 8013EFB0 00108570  80 E8 00 04 */	lwz r7, 0x4(r8)
/* 8013EFB4 00108574  80 C7 00 04 */	lwz r6, 0x4(r7)
/* 8013EFB8 00108578  80 A7 00 00 */	lwz r5, 0x0(r7)
/* 8013EFBC 0010857C  90 A6 00 00 */	stw r5, 0x0(r6)
/* 8013EFC0 00108580  90 C5 00 04 */	stw r6, 0x4(r5)
/* 8013EFC4 00108584  90 87 00 00 */	stw r4, 0x0(r7)
/* 8013EFC8 00108588  80 E8 00 08 */	lwz r7, 0x8(r8)
/* 8013EFCC 0010858C  80 C7 00 04 */	lwz r6, 0x4(r7)
/* 8013EFD0 00108590  80 A7 00 00 */	lwz r5, 0x0(r7)
/* 8013EFD4 00108594  90 A6 00 00 */	stw r5, 0x0(r6)
/* 8013EFD8 00108598  90 C5 00 04 */	stw r6, 0x4(r5)
/* 8013EFDC 0010859C  90 87 00 00 */	stw r4, 0x0(r7)
/* 8013EFE0 001085A0  80 E8 00 0C */	lwz r7, 0xc(r8)
/* 8013EFE4 001085A4  80 C7 00 04 */	lwz r6, 0x4(r7)
/* 8013EFE8 001085A8  80 A7 00 00 */	lwz r5, 0x0(r7)
/* 8013EFEC 001085AC  90 A6 00 00 */	stw r5, 0x0(r6)
/* 8013EFF0 001085B0  90 C5 00 04 */	stw r6, 0x4(r5)
/* 8013EFF4 001085B4  90 87 00 00 */	stw r4, 0x0(r7)
/* 8013EFF8 001085B8  80 E8 00 10 */	lwz r7, 0x10(r8)
/* 8013EFFC 001085BC  80 C7 00 04 */	lwz r6, 0x4(r7)
/* 8013F000 001085C0  80 A7 00 00 */	lwz r5, 0x0(r7)
/* 8013F004 001085C4  90 A6 00 00 */	stw r5, 0x0(r6)
/* 8013F008 001085C8  90 C5 00 04 */	stw r6, 0x4(r5)
/* 8013F00C 001085CC  90 87 00 00 */	stw r4, 0x0(r7)
/* 8013F010 001085D0  80 E8 00 14 */	lwz r7, 0x14(r8)
/* 8013F014 001085D4  80 C7 00 04 */	lwz r6, 0x4(r7)
/* 8013F018 001085D8  80 A7 00 00 */	lwz r5, 0x0(r7)
/* 8013F01C 001085DC  90 A6 00 00 */	stw r5, 0x0(r6)
/* 8013F020 001085E0  90 C5 00 04 */	stw r6, 0x4(r5)
/* 8013F024 001085E4  90 87 00 00 */	stw r4, 0x0(r7)
/* 8013F028 001085E8  80 E8 00 18 */	lwz r7, 0x18(r8)
/* 8013F02C 001085EC  80 C7 00 04 */	lwz r6, 0x4(r7)
/* 8013F030 001085F0  80 A7 00 00 */	lwz r5, 0x0(r7)
/* 8013F034 001085F4  90 A6 00 00 */	stw r5, 0x0(r6)
/* 8013F038 001085F8  90 C5 00 04 */	stw r6, 0x4(r5)
/* 8013F03C 001085FC  90 87 00 00 */	stw r4, 0x0(r7)
/* 8013F040 00108600  80 E8 00 1C */	lwz r7, 0x1c(r8)
/* 8013F044 00108604  39 08 00 20 */	addi r8, r8, 0x20
/* 8013F048 00108608  80 C7 00 04 */	lwz r6, 0x4(r7)
/* 8013F04C 0010860C  80 A7 00 00 */	lwz r5, 0x0(r7)
/* 8013F050 00108610  90 A6 00 00 */	stw r5, 0x0(r6)
/* 8013F054 00108614  90 C5 00 04 */	stw r6, 0x4(r5)
/* 8013F058 00108618  90 87 00 00 */	stw r4, 0x0(r7)
/* 8013F05C 0010861C  42 00 FF 38 */	bdnz .L_8013EF94
.L_8013F060:
/* 8013F060 00108620  54 65 10 3A */	slwi r5, r3, 2
/* 8013F064 00108624  38 C1 00 08 */	addi r6, r1, 0x8
/* 8013F068 00108628  7C 03 48 50 */	subf r0, r3, r9
/* 8013F06C 0010862C  38 80 00 00 */	li r4, 0x0
/* 8013F070 00108630  7C C6 2A 14 */	add r6, r6, r5
/* 8013F074 00108634  7C 09 03 A6 */	mtctr r0
/* 8013F078 00108638  7C 03 48 00 */	cmpw r3, r9
/* 8013F07C 0010863C  40 80 00 24 */	bge .L_8013F0A0
.L_8013F080:
/* 8013F080 00108640  80 E6 00 00 */	lwz r7, 0x0(r6)
/* 8013F084 00108644  38 C6 00 04 */	addi r6, r6, 0x4
/* 8013F088 00108648  80 A7 00 04 */	lwz r5, 0x4(r7)
/* 8013F08C 0010864C  80 67 00 00 */	lwz r3, 0x0(r7)
/* 8013F090 00108650  90 65 00 00 */	stw r3, 0x0(r5)
/* 8013F094 00108654  90 A3 00 04 */	stw r5, 0x4(r3)
/* 8013F098 00108658  90 87 00 00 */	stw r4, 0x0(r7)
/* 8013F09C 0010865C  42 00 FF E4 */	bdnz .L_8013F080
.L_8013F0A0:
/* 8013F0A0 00108660  38 21 00 50 */	addi r1, r1, 0x50
/* 8013F0A4 00108664  4E 80 00 20 */	blr
.endfn fn_8013EC6C

.fn fn_8013F0A8, global
/* 8013F0A8 00108668  4E 80 00 20 */	blr
.endfn fn_8013F0A8

.fn fn_8013F0AC, global
/* 8013F0AC 0010866C  4E 80 00 20 */	blr
.endfn fn_8013F0AC

.fn fn_8013F0B0, global
/* 8013F0B0 00108670  4E 80 00 20 */	blr
.endfn fn_8013F0B0

.fn fn_8013F0B4, global
/* 8013F0B4 00108674  4E 80 00 20 */	blr
.endfn fn_8013F0B4

.fn fn_8013F0B8, global
/* 8013F0B8 00108678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013F0BC 0010867C  7C 08 02 A6 */	mflr r0
/* 8013F0C0 00108680  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013F0C4 00108684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013F0C8 00108688  7C 7F 1B 78 */	mr r31, r3
/* 8013F0CC 0010868C  38 63 00 3C */	addi r3, r3, 0x3c
/* 8013F0D0 00108690  48 17 AC 21 */	bl __ptmf_test
/* 8013F0D4 00108694  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013F0D8 00108698  41 82 00 14 */	beq .L_8013F0EC
/* 8013F0DC 0010869C  7F E3 FB 78 */	mr r3, r31
/* 8013F0E0 001086A0  39 9F 00 3C */	addi r12, r31, 0x3c
/* 8013F0E4 001086A4  48 17 AC 79 */	bl __ptmf_scall
/* 8013F0E8 001086A8  60 00 00 00 */	nop
.L_8013F0EC:
/* 8013F0EC 001086AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013F0F0 001086B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013F0F4 001086B4  7C 08 03 A6 */	mtlr r0
/* 8013F0F8 001086B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8013F0FC 001086BC  4E 80 00 20 */	blr
.endfn fn_8013F0B8

.fn fn_8013F100, global
/* 8013F100 001086C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013F104 001086C4  7C 08 02 A6 */	mflr r0
/* 8013F108 001086C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013F10C 001086CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013F110 001086D0  7C 7F 1B 78 */	mr r31, r3
/* 8013F114 001086D4  38 63 00 48 */	addi r3, r3, 0x48
/* 8013F118 001086D8  48 17 AB D9 */	bl __ptmf_test
/* 8013F11C 001086DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013F120 001086E0  41 82 00 14 */	beq .L_8013F134
/* 8013F124 001086E4  7F E3 FB 78 */	mr r3, r31
/* 8013F128 001086E8  39 9F 00 48 */	addi r12, r31, 0x48
/* 8013F12C 001086EC  48 17 AC 31 */	bl __ptmf_scall
/* 8013F130 001086F0  60 00 00 00 */	nop
.L_8013F134:
/* 8013F134 001086F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013F138 001086F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013F13C 001086FC  7C 08 03 A6 */	mtlr r0
/* 8013F140 00108700  38 21 00 10 */	addi r1, r1, 0x10
/* 8013F144 00108704  4E 80 00 20 */	blr
.endfn fn_8013F100

.fn fn_8013F148, global
/* 8013F148 00108708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013F14C 0010870C  7C 08 02 A6 */	mflr r0
/* 8013F150 00108710  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013F154 00108714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013F158 00108718  7C 7F 1B 78 */	mr r31, r3
/* 8013F15C 0010871C  38 63 00 3C */	addi r3, r3, 0x3c
/* 8013F160 00108720  48 17 AB 91 */	bl __ptmf_test
/* 8013F164 00108724  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013F168 00108728  41 82 00 14 */	beq .L_8013F17C
/* 8013F16C 0010872C  7F E3 FB 78 */	mr r3, r31
/* 8013F170 00108730  39 9F 00 3C */	addi r12, r31, 0x3c
/* 8013F174 00108734  48 17 AB E9 */	bl __ptmf_scall
/* 8013F178 00108738  60 00 00 00 */	nop
.L_8013F17C:
/* 8013F17C 0010873C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013F180 00108740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013F184 00108744  7C 08 03 A6 */	mtlr r0
/* 8013F188 00108748  38 21 00 10 */	addi r1, r1, 0x10
/* 8013F18C 0010874C  4E 80 00 20 */	blr
.endfn fn_8013F148

.fn fn_8013F190, global
/* 8013F190 00108750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013F194 00108754  7C 08 02 A6 */	mflr r0
/* 8013F198 00108758  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013F19C 0010875C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013F1A0 00108760  7C 7F 1B 78 */	mr r31, r3
/* 8013F1A4 00108764  38 63 00 48 */	addi r3, r3, 0x48
/* 8013F1A8 00108768  48 17 AB 49 */	bl __ptmf_test
/* 8013F1AC 0010876C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013F1B0 00108770  41 82 00 14 */	beq .L_8013F1C4
/* 8013F1B4 00108774  7F E3 FB 78 */	mr r3, r31
/* 8013F1B8 00108778  39 9F 00 48 */	addi r12, r31, 0x48
/* 8013F1BC 0010877C  48 17 AB A1 */	bl __ptmf_scall
/* 8013F1C0 00108780  60 00 00 00 */	nop
.L_8013F1C4:
/* 8013F1C4 00108784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013F1C8 00108788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013F1CC 0010878C  7C 08 03 A6 */	mtlr r0
/* 8013F1D0 00108790  38 21 00 10 */	addi r1, r1, 0x10
/* 8013F1D4 00108794  4E 80 00 20 */	blr
.endfn fn_8013F190

.fn fn_8013F1D8, global
/* 8013F1D8 00108798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013F1DC 0010879C  7C 08 02 A6 */	mflr r0
/* 8013F1E0 001087A0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013F1E4 001087A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013F1E8 001087A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013F1EC 001087AC  7C 9F 23 78 */	mr r31, r4
/* 8013F1F0 001087B0  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8013F1F4 001087B4  7C 7E 1B 78 */	mr r30, r3
/* 8013F1F8 001087B8  41 82 00 20 */	beq .L_8013F218
/* 8013F1FC 001087BC  41 82 00 0C */	beq .L_8013F208
/* 8013F200 001087C0  38 80 00 00 */	li r4, 0x0
/* 8013F204 001087C4  48 30 59 35 */	bl fn_80444B38
.L_8013F208:
/* 8013F208 001087C8  2C 1F 00 00 */	cmpwi r31, 0x0
/* 8013F20C 001087CC  40 81 00 0C */	ble .L_8013F218
/* 8013F210 001087D0  7F C3 F3 78 */	mr r3, r30
/* 8013F214 001087D4  48 2F 5A 19 */	bl __dl__FPv
.L_8013F218:
/* 8013F218 001087D8  7F C3 F3 78 */	mr r3, r30
/* 8013F21C 001087DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013F220 001087E0  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8013F224 001087E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013F228 001087E8  7C 08 03 A6 */	mtlr r0
/* 8013F22C 001087EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8013F230 001087F0  4E 80 00 20 */	blr
.endfn fn_8013F1D8

.fn fn_8013F234, global
/* 8013F234 001087F4  38 63 FF AC */	addi r3, r3, -0x54
/* 8013F238 001087F8  4B FF D9 7C */	b fn_8013CBB4
.endfn fn_8013F234

.fn fn_8013F23C, global
/* 8013F23C 001087FC  38 63 FF AC */	addi r3, r3, -0x54
/* 8013F240 00108800  4B FF D1 C0 */	b fn_8013C400
.endfn fn_8013F23C

.fn fn_8013F244, global
/* 8013F244 00108804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013F248 00108808  7C 08 02 A6 */	mflr r0
/* 8013F24C 0010880C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013F250 00108810  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013F254 00108814  7C 7F 1B 78 */	mr r31, r3
/* 8013F258 00108818  A0 83 00 52 */	lhz r4, 0x52(r3)
/* 8013F25C 0010881C  38 60 FF FF */	li r3, -0x1
/* 8013F260 00108820  2C 04 03 E8 */	cmpwi r4, 0x3e8
/* 8013F264 00108824  40 80 00 08 */	bge .L_8013F26C
/* 8013F268 00108828  38 64 02 20 */	addi r3, r4, 0x220
.L_8013F26C:
/* 8013F26C 0010882C  2C 03 FF FF */	cmpwi r3, -0x1
/* 8013F270 00108830  41 82 00 1C */	beq .L_8013F28C
/* 8013F274 00108834  38 80 00 00 */	li r4, 0x0
/* 8013F278 00108838  4B F5 DD A1 */	bl fn_8009D018
/* 8013F27C 0010883C  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8013F280 00108840  38 80 00 00 */	li r4, 0x0
/* 8013F284 00108844  38 A0 00 08 */	li r5, 0x8
/* 8013F288 00108848  4B EC 50 C9 */	bl memset
.L_8013F28C:
/* 8013F28C 0010884C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013F290 00108850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013F294 00108854  7C 08 03 A6 */	mtlr r0
/* 8013F298 00108858  38 21 00 10 */	addi r1, r1, 0x10
/* 8013F29C 0010885C  4E 80 00 20 */	blr
.endfn fn_8013F244

.fn fn_8013F2A0, global
/* 8013F2A0 00108860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013F2A4 00108864  7C 08 02 A6 */	mflr r0
/* 8013F2A8 00108868  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013F2AC 0010886C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013F2B0 00108870  7C 7F 1B 78 */	mr r31, r3
/* 8013F2B4 00108874  A0 83 00 52 */	lhz r4, 0x52(r3)
/* 8013F2B8 00108878  38 60 FF FF */	li r3, -0x1
/* 8013F2BC 0010887C  2C 04 03 E8 */	cmpwi r4, 0x3e8
/* 8013F2C0 00108880  40 80 00 08 */	bge .L_8013F2C8
/* 8013F2C4 00108884  38 64 02 20 */	addi r3, r4, 0x220
.L_8013F2C8:
/* 8013F2C8 00108888  2C 03 FF FF */	cmpwi r3, -0x1
/* 8013F2CC 0010888C  41 82 00 74 */	beq .L_8013F340
/* 8013F2D0 00108890  38 80 00 01 */	li r4, 0x1
/* 8013F2D4 00108894  4B F5 DD 45 */	bl fn_8009D018
/* 8013F2D8 00108898  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8013F2DC 0010889C  38 80 00 00 */	li r4, 0x0
/* 8013F2E0 001088A0  38 A0 00 08 */	li r5, 0x8
/* 8013F2E4 001088A4  4B EC 50 6D */	bl memset
/* 8013F2E8 001088A8  A0 9F 00 68 */	lhz r4, 0x68(r31)
/* 8013F2EC 001088AC  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013F2F0 001088B0  41 82 00 24 */	beq .L_8013F314
/* 8013F2F4 001088B4  2C 04 03 E8 */	cmpwi r4, 0x3e8
/* 8013F2F8 001088B8  38 60 FF FF */	li r3, -0x1
/* 8013F2FC 001088BC  40 80 00 08 */	bge .L_8013F304
/* 8013F300 001088C0  38 64 02 20 */	addi r3, r4, 0x220
.L_8013F304:
/* 8013F304 001088C4  2C 03 FF FF */	cmpwi r3, -0x1
/* 8013F308 001088C8  41 82 00 38 */	beq .L_8013F340
/* 8013F30C 001088CC  38 80 00 C8 */	li r4, 0xc8
/* 8013F310 001088D0  4B F5 DD 09 */	bl fn_8009D018
.L_8013F314:
/* 8013F314 001088D4  A0 9F 00 6A */	lhz r4, 0x6a(r31)
/* 8013F318 001088D8  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013F31C 001088DC  41 82 00 24 */	beq .L_8013F340
/* 8013F320 001088E0  2C 04 03 E8 */	cmpwi r4, 0x3e8
/* 8013F324 001088E4  38 60 FF FF */	li r3, -0x1
/* 8013F328 001088E8  40 80 00 08 */	bge .L_8013F330
/* 8013F32C 001088EC  38 64 02 20 */	addi r3, r4, 0x220
.L_8013F330:
/* 8013F330 001088F0  2C 03 FF FF */	cmpwi r3, -0x1
/* 8013F334 001088F4  41 82 00 0C */	beq .L_8013F340
/* 8013F338 001088F8  38 80 00 C8 */	li r4, 0xc8
/* 8013F33C 001088FC  4B F5 DC DD */	bl fn_8009D018
.L_8013F340:
/* 8013F340 00108900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013F344 00108904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013F348 00108908  7C 08 03 A6 */	mtlr r0
/* 8013F34C 0010890C  38 21 00 10 */	addi r1, r1, 0x10
/* 8013F350 00108910  4E 80 00 20 */	blr
.endfn fn_8013F2A0

.fn fn_8013F354, global
/* 8013F354 00108914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013F358 00108918  7C 08 02 A6 */	mflr r0
/* 8013F35C 0010891C  3C 80 80 57 */	lis r4, lbl_80577448@ha
/* 8013F360 00108920  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013F364 00108924  38 84 74 48 */	addi r4, r4, lbl_80577448@l
/* 8013F368 00108928  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013F36C 0010892C  7C 7F 1B 78 */	mr r31, r3
/* 8013F370 00108930  88 04 00 6C */	lbz r0, 0x6c(r4)
/* 8013F374 00108934  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F378 00108938  41 82 00 60 */	beq .L_8013F3D8
/* 8013F37C 0010893C  A0 83 00 52 */	lhz r4, 0x52(r3)
/* 8013F380 00108940  38 00 FF FF */	li r0, -0x1
/* 8013F384 00108944  2C 04 03 E8 */	cmpwi r4, 0x3e8
/* 8013F388 00108948  40 80 00 08 */	bge .L_8013F390
/* 8013F38C 0010894C  38 04 02 20 */	addi r0, r4, 0x220
.L_8013F390:
/* 8013F390 00108950  2C 00 FF FF */	cmpwi r0, -0x1
/* 8013F394 00108954  41 82 00 44 */	beq .L_8013F3D8
/* 8013F398 00108958  80 63 00 04 */	lwz r3, 0x4(r3)
/* 8013F39C 0010895C  2C 03 00 FC */	cmpwi r3, 0xfc
/* 8013F3A0 00108960  40 82 00 1C */	bne .L_8013F3BC
/* 8013F3A4 00108964  7C 03 03 78 */	mr r3, r0
/* 8013F3A8 00108968  38 80 00 FE */	li r4, 0xfe
/* 8013F3AC 0010896C  4B F5 DC 6D */	bl fn_8009D018
/* 8013F3B0 00108970  38 00 00 FE */	li r0, 0xfe
/* 8013F3B4 00108974  90 1F 00 04 */	stw r0, 0x4(r31)
/* 8013F3B8 00108978  48 00 00 20 */	b .L_8013F3D8
.L_8013F3BC:
/* 8013F3BC 0010897C  2C 03 00 FD */	cmpwi r3, 0xfd
/* 8013F3C0 00108980  40 82 00 18 */	bne .L_8013F3D8
/* 8013F3C4 00108984  7C 03 03 78 */	mr r3, r0
/* 8013F3C8 00108988  38 80 00 FF */	li r4, 0xff
/* 8013F3CC 0010898C  4B F5 DC 4D */	bl fn_8009D018
/* 8013F3D0 00108990  38 00 00 FF */	li r0, 0xff
/* 8013F3D4 00108994  90 1F 00 04 */	stw r0, 0x4(r31)
.L_8013F3D8:
/* 8013F3D8 00108998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013F3DC 0010899C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013F3E0 001089A0  7C 08 03 A6 */	mtlr r0
/* 8013F3E4 001089A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8013F3E8 001089A8  4E 80 00 20 */	blr
.endfn fn_8013F354

.fn fn_8013F3EC, global
/* 8013F3EC 001089AC  4B FF FE B4 */	b fn_8013F2A0
.endfn fn_8013F3EC

.fn fn_8013F3F0, global
/* 8013F3F0 001089B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013F3F4 001089B4  7C 08 02 A6 */	mflr r0
/* 8013F3F8 001089B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013F3FC 001089BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8013F400 001089C0  7C 7F 1B 78 */	mr r31, r3
/* 8013F404 001089C4  88 03 00 00 */	lbz r0, 0x0(r3)
/* 8013F408 001089C8  54 00 07 FF */	clrlwi. r0, r0, 31
/* 8013F40C 001089CC  41 82 00 0C */	beq .L_8013F418
/* 8013F410 001089D0  38 60 00 00 */	li r3, 0x0
/* 8013F414 001089D4  48 00 02 9C */	b .L_8013F6B0
.L_8013F418:
/* 8013F418 001089D8  A0 83 00 52 */	lhz r4, 0x52(r3)
/* 8013F41C 001089DC  38 60 FF FF */	li r3, -0x1
/* 8013F420 001089E0  2C 04 03 E8 */	cmpwi r4, 0x3e8
/* 8013F424 001089E4  40 80 00 08 */	bge .L_8013F42C
/* 8013F428 001089E8  38 64 02 20 */	addi r3, r4, 0x220
.L_8013F42C:
/* 8013F42C 001089EC  2C 03 FF FF */	cmpwi r3, -0x1
/* 8013F430 001089F0  40 82 00 0C */	bne .L_8013F43C
/* 8013F434 001089F4  38 60 00 00 */	li r3, 0x0
/* 8013F438 001089F8  48 00 02 78 */	b .L_8013F6B0
.L_8013F43C:
/* 8013F43C 001089FC  4B F5 DB 51 */	bl fn_8009CF8C
/* 8013F440 00108A00  2C 03 00 01 */	cmpwi r3, 0x1
/* 8013F444 00108A04  40 82 00 0C */	bne .L_8013F450
/* 8013F448 00108A08  38 60 00 00 */	li r3, 0x0
/* 8013F44C 00108A0C  48 00 02 64 */	b .L_8013F6B0
.L_8013F450:
/* 8013F450 00108A10  2C 03 00 6F */	cmpwi r3, 0x6f
/* 8013F454 00108A14  41 82 00 38 */	beq .L_8013F48C
/* 8013F458 00108A18  2C 03 00 70 */	cmpwi r3, 0x70
/* 8013F45C 00108A1C  41 82 00 30 */	beq .L_8013F48C
/* 8013F460 00108A20  2C 03 00 79 */	cmpwi r3, 0x79
/* 8013F464 00108A24  41 82 00 28 */	beq .L_8013F48C
/* 8013F468 00108A28  2C 03 00 7A */	cmpwi r3, 0x7a
/* 8013F46C 00108A2C  41 82 00 20 */	beq .L_8013F48C
/* 8013F470 00108A30  2C 03 00 83 */	cmpwi r3, 0x83
/* 8013F474 00108A34  41 82 00 18 */	beq .L_8013F48C
/* 8013F478 00108A38  2C 03 00 84 */	cmpwi r3, 0x84
/* 8013F47C 00108A3C  41 82 00 10 */	beq .L_8013F48C
/* 8013F480 00108A40  38 03 FF 73 */	addi r0, r3, -0x8d
/* 8013F484 00108A44  28 00 00 01 */	cmplwi r0, 0x1
/* 8013F488 00108A48  41 81 00 0C */	bgt .L_8013F494
.L_8013F48C:
/* 8013F48C 00108A4C  38 60 00 00 */	li r3, 0x0
/* 8013F490 00108A50  48 00 02 20 */	b .L_8013F6B0
.L_8013F494:
/* 8013F494 00108A54  2C 03 00 C8 */	cmpwi r3, 0xc8
/* 8013F498 00108A58  40 82 00 0C */	bne .L_8013F4A4
/* 8013F49C 00108A5C  38 60 00 00 */	li r3, 0x0
/* 8013F4A0 00108A60  48 00 02 10 */	b .L_8013F6B0
.L_8013F4A4:
/* 8013F4A4 00108A64  38 03 FF 02 */	addi r0, r3, -0xfe
/* 8013F4A8 00108A68  28 00 00 01 */	cmplwi r0, 0x1
/* 8013F4AC 00108A6C  41 81 00 0C */	bgt .L_8013F4B8
/* 8013F4B0 00108A70  38 60 00 00 */	li r3, 0x0
/* 8013F4B4 00108A74  48 00 01 FC */	b .L_8013F6B0
.L_8013F4B8:
/* 8013F4B8 00108A78  A0 7F 00 58 */	lhz r3, 0x58(r31)
/* 8013F4BC 00108A7C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013F4C0 00108A80  40 82 00 48 */	bne .L_8013F508
/* 8013F4C4 00108A84  A0 1F 00 5A */	lhz r0, 0x5a(r31)
/* 8013F4C8 00108A88  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F4CC 00108A8C  40 82 00 3C */	bne .L_8013F508
/* 8013F4D0 00108A90  A0 1F 00 5C */	lhz r0, 0x5c(r31)
/* 8013F4D4 00108A94  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F4D8 00108A98  40 82 00 30 */	bne .L_8013F508
/* 8013F4DC 00108A9C  A0 1F 00 60 */	lhz r0, 0x60(r31)
/* 8013F4E0 00108AA0  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F4E4 00108AA4  40 82 00 24 */	bne .L_8013F508
/* 8013F4E8 00108AA8  A0 1F 00 62 */	lhz r0, 0x62(r31)
/* 8013F4EC 00108AAC  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F4F0 00108AB0  40 82 00 18 */	bne .L_8013F508
/* 8013F4F4 00108AB4  A0 1F 00 64 */	lhz r0, 0x64(r31)
/* 8013F4F8 00108AB8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F4FC 00108ABC  40 82 00 0C */	bne .L_8013F508
/* 8013F500 00108AC0  38 60 00 00 */	li r3, 0x0
/* 8013F504 00108AC4  48 00 01 AC */	b .L_8013F6B0
.L_8013F508:
/* 8013F508 00108AC8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013F50C 00108ACC  41 82 00 20 */	beq .L_8013F52C
/* 8013F510 00108AD0  38 60 00 20 */	li r3, 0x20
/* 8013F514 00108AD4  4B F5 DA 79 */	bl fn_8009CF8C
/* 8013F518 00108AD8  A0 1F 00 58 */	lhz r0, 0x58(r31)
/* 8013F51C 00108ADC  7C 03 00 00 */	cmpw r3, r0
/* 8013F520 00108AE0  40 80 00 0C */	bge .L_8013F52C
/* 8013F524 00108AE4  38 60 00 00 */	li r3, 0x0
/* 8013F528 00108AE8  48 00 01 88 */	b .L_8013F6B0
.L_8013F52C:
/* 8013F52C 00108AEC  A0 9F 00 5A */	lhz r4, 0x5a(r31)
/* 8013F530 00108AF0  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013F534 00108AF4  41 82 00 40 */	beq .L_8013F574
/* 8013F538 00108AF8  2C 04 03 E8 */	cmpwi r4, 0x3e8
/* 8013F53C 00108AFC  38 60 FF FF */	li r3, -0x1
/* 8013F540 00108B00  40 80 00 08 */	bge .L_8013F548
/* 8013F544 00108B04  38 64 02 20 */	addi r3, r4, 0x220
.L_8013F548:
/* 8013F548 00108B08  2C 03 FF FF */	cmpwi r3, -0x1
/* 8013F54C 00108B0C  40 82 00 0C */	bne .L_8013F558
/* 8013F550 00108B10  38 60 00 00 */	li r3, 0x0
/* 8013F554 00108B14  48 00 01 5C */	b .L_8013F6B0
.L_8013F558:
/* 8013F558 00108B18  4B F5 DA 35 */	bl fn_8009CF8C
/* 8013F55C 00108B1C  2C 03 00 FE */	cmpwi r3, 0xfe
/* 8013F560 00108B20  41 82 00 14 */	beq .L_8013F574
/* 8013F564 00108B24  2C 03 00 FF */	cmpwi r3, 0xff
/* 8013F568 00108B28  41 82 00 0C */	beq .L_8013F574
/* 8013F56C 00108B2C  38 60 00 00 */	li r3, 0x0
/* 8013F570 00108B30  48 00 01 40 */	b .L_8013F6B0
.L_8013F574:
/* 8013F574 00108B34  A0 9F 00 5C */	lhz r4, 0x5c(r31)
/* 8013F578 00108B38  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013F57C 00108B3C  41 82 00 3C */	beq .L_8013F5B8
/* 8013F580 00108B40  2C 04 00 07 */	cmpwi r4, 0x7
/* 8013F584 00108B44  38 60 FF FF */	li r3, -0x1
/* 8013F588 00108B48  40 80 00 08 */	bge .L_8013F590
/* 8013F58C 00108B4C  38 64 00 21 */	addi r3, r4, 0x21
.L_8013F590:
/* 8013F590 00108B50  2C 03 FF FF */	cmpwi r3, -0x1
/* 8013F594 00108B54  40 82 00 0C */	bne .L_8013F5A0
/* 8013F598 00108B58  38 60 00 00 */	li r3, 0x0
/* 8013F59C 00108B5C  48 00 01 14 */	b .L_8013F6B0
.L_8013F5A0:
/* 8013F5A0 00108B60  4B F5 D9 ED */	bl fn_8009CF8C
/* 8013F5A4 00108B64  A0 1F 00 5E */	lhz r0, 0x5e(r31)
/* 8013F5A8 00108B68  7C 03 00 00 */	cmpw r3, r0
/* 8013F5AC 00108B6C  40 80 00 0C */	bge .L_8013F5B8
/* 8013F5B0 00108B70  38 60 00 00 */	li r3, 0x0
/* 8013F5B4 00108B74  48 00 00 FC */	b .L_8013F6B0
.L_8013F5B8:
/* 8013F5B8 00108B78  A0 BF 00 60 */	lhz r5, 0x60(r31)
/* 8013F5BC 00108B7C  2C 05 00 00 */	cmpwi r5, 0x0
/* 8013F5C0 00108B80  41 82 00 50 */	beq .L_8013F610
/* 8013F5C4 00108B84  3C 80 80 50 */	lis r4, lbl_804FC280@ha
/* 8013F5C8 00108B88  80 6D A8 08 */	lwz r3, lbl_80666988@sda21(r13)
/* 8013F5CC 00108B8C  38 84 C2 80 */	addi r4, r4, lbl_804FC280@l
/* 8013F5D0 00108B90  4B EF B5 79 */	bl fn_8003AB48
/* 8013F5D4 00108B94  90 61 00 0C */	stw r3, 0xc(r1)
/* 8013F5D8 00108B98  38 60 FF FF */	li r3, -0x1
/* 8013F5DC 00108B9C  A0 81 00 0C */	lhz r4, 0xc(r1)
/* 8013F5E0 00108BA0  2C 04 01 2C */	cmpwi r4, 0x12c
/* 8013F5E4 00108BA4  40 80 00 08 */	bge .L_8013F5EC
/* 8013F5E8 00108BA8  38 64 0A 20 */	addi r3, r4, 0xa20
.L_8013F5EC:
/* 8013F5EC 00108BAC  2C 03 FF FF */	cmpwi r3, -0x1
/* 8013F5F0 00108BB0  40 82 00 0C */	bne .L_8013F5FC
/* 8013F5F4 00108BB4  38 60 00 00 */	li r3, 0x0
/* 8013F5F8 00108BB8  48 00 00 B8 */	b .L_8013F6B0
.L_8013F5FC:
/* 8013F5FC 00108BBC  4B F5 D9 91 */	bl fn_8009CF8C
/* 8013F600 00108BC0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013F604 00108BC4  40 82 00 0C */	bne .L_8013F610
/* 8013F608 00108BC8  38 60 00 00 */	li r3, 0x0
/* 8013F60C 00108BCC  48 00 00 A4 */	b .L_8013F6B0
.L_8013F610:
/* 8013F610 00108BD0  A0 BF 00 62 */	lhz r5, 0x62(r31)
/* 8013F614 00108BD4  2C 05 00 00 */	cmpwi r5, 0x0
/* 8013F618 00108BD8  41 82 00 50 */	beq .L_8013F668
/* 8013F61C 00108BDC  3C 80 80 50 */	lis r4, lbl_804FC280@ha
/* 8013F620 00108BE0  80 6D A8 08 */	lwz r3, lbl_80666988@sda21(r13)
/* 8013F624 00108BE4  38 84 C2 80 */	addi r4, r4, lbl_804FC280@l
/* 8013F628 00108BE8  4B EF B5 21 */	bl fn_8003AB48
/* 8013F62C 00108BEC  90 61 00 08 */	stw r3, 0x8(r1)
/* 8013F630 00108BF0  38 60 FF FF */	li r3, -0x1
/* 8013F634 00108BF4  A0 81 00 08 */	lhz r4, 0x8(r1)
/* 8013F638 00108BF8  2C 04 01 2C */	cmpwi r4, 0x12c
/* 8013F63C 00108BFC  40 80 00 08 */	bge .L_8013F644
/* 8013F640 00108C00  38 64 0A 20 */	addi r3, r4, 0xa20
.L_8013F644:
/* 8013F644 00108C04  2C 03 FF FF */	cmpwi r3, -0x1
/* 8013F648 00108C08  40 82 00 0C */	bne .L_8013F654
/* 8013F64C 00108C0C  38 60 00 00 */	li r3, 0x0
/* 8013F650 00108C10  48 00 00 60 */	b .L_8013F6B0
.L_8013F654:
/* 8013F654 00108C14  4B F5 D9 39 */	bl fn_8009CF8C
/* 8013F658 00108C18  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013F65C 00108C1C  40 82 00 0C */	bne .L_8013F668
/* 8013F660 00108C20  38 60 00 00 */	li r3, 0x0
/* 8013F664 00108C24  48 00 00 4C */	b .L_8013F6B0
.L_8013F668:
/* 8013F668 00108C28  A0 9F 00 64 */	lhz r4, 0x64(r31)
/* 8013F66C 00108C2C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013F670 00108C30  41 82 00 3C */	beq .L_8013F6AC
/* 8013F674 00108C34  2C 04 01 90 */	cmpwi r4, 0x190
/* 8013F678 00108C38  38 60 FF FF */	li r3, -0x1
/* 8013F67C 00108C3C  40 80 00 08 */	bge .L_8013F684
/* 8013F680 00108C40  38 64 06 08 */	addi r3, r4, 0x608
.L_8013F684:
/* 8013F684 00108C44  2C 03 FF FF */	cmpwi r3, -0x1
/* 8013F688 00108C48  40 82 00 0C */	bne .L_8013F694
/* 8013F68C 00108C4C  38 60 00 00 */	li r3, 0x0
/* 8013F690 00108C50  48 00 00 20 */	b .L_8013F6B0
.L_8013F694:
/* 8013F694 00108C54  4B F5 D8 F9 */	bl fn_8009CF8C
/* 8013F698 00108C58  88 1F 00 66 */	lbz r0, 0x66(r31)
/* 8013F69C 00108C5C  7C 03 00 00 */	cmpw r3, r0
/* 8013F6A0 00108C60  41 82 00 0C */	beq .L_8013F6AC
/* 8013F6A4 00108C64  38 60 00 00 */	li r3, 0x0
/* 8013F6A8 00108C68  48 00 00 08 */	b .L_8013F6B0
.L_8013F6AC:
/* 8013F6AC 00108C6C  38 60 00 01 */	li r3, 0x1
.L_8013F6B0:
/* 8013F6B0 00108C70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013F6B4 00108C74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8013F6B8 00108C78  7C 08 03 A6 */	mtlr r0
/* 8013F6BC 00108C7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8013F6C0 00108C80  4E 80 00 20 */	blr
.endfn fn_8013F3F0

.fn fn_8013F6C4, global
/* 8013F6C4 00108C84  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8013F6C8 00108C88  7C 08 02 A6 */	mflr r0
/* 8013F6CC 00108C8C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8013F6D0 00108C90  BD C1 00 28 */	stmw r14, 0x28(r1)
/* 8013F6D4 00108C94  7C 6F 1B 78 */	mr r15, r3
/* 8013F6D8 00108C98  7C 90 23 78 */	mr r16, r4
/* 8013F6DC 00108C9C  7C B1 2B 78 */	mr r17, r5
/* 8013F6E0 00108CA0  90 C1 00 08 */	stw r6, 0x8(r1)
/* 8013F6E4 00108CA4  7C F2 3B 78 */	mr r18, r7
/* 8013F6E8 00108CA8  88 03 00 00 */	lbz r0, 0x0(r3)
/* 8013F6EC 00108CAC  54 00 07 FE */	clrlwi r0, r0, 31
/* 8013F6F0 00108CB0  7C 00 00 34 */	cntlzw r0, r0
/* 8013F6F4 00108CB4  54 00 D9 7F */	srwi. r0, r0, 5
/* 8013F6F8 00108CB8  40 82 00 0C */	bne .L_8013F704
/* 8013F6FC 00108CBC  38 60 00 00 */	li r3, 0x0
/* 8013F700 00108CC0  48 00 08 E4 */	b .L_8013FFE4
.L_8013F704:
/* 8013F704 00108CC4  80 03 00 04 */	lwz r0, 0x4(r3)
/* 8013F708 00108CC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8013F70C 00108CCC  40 82 00 10 */	bne .L_8013F71C
/* 8013F710 00108CD0  38 00 FF FF */	li r0, -0x1
/* 8013F714 00108CD4  90 01 00 20 */	stw r0, 0x20(r1)
/* 8013F718 00108CD8  48 00 00 B0 */	b .L_8013F7C8
.L_8013F71C:
/* 8013F71C 00108CDC  3D C0 80 57 */	lis r14, lbl_80577448@ha
/* 8013F720 00108CE0  39 CE 74 48 */	addi r14, r14, lbl_80577448@l
/* 8013F724 00108CE4  88 6E 00 6E */	lbz r3, 0x6e(r14)
/* 8013F728 00108CE8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013F72C 00108CEC  41 82 00 64 */	beq .L_8013F790
/* 8013F730 00108CF0  88 0E 00 98 */	lbz r0, 0x98(r14)
/* 8013F734 00108CF4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F738 00108CF8  41 82 00 58 */	beq .L_8013F790
/* 8013F73C 00108CFC  7D C3 73 78 */	mr r3, r14
/* 8013F740 00108D00  38 80 00 00 */	li r4, 0x0
/* 8013F744 00108D04  38 A0 00 00 */	li r5, 0x0
/* 8013F748 00108D08  48 00 11 0D */	bl fn_80140854
/* 8013F74C 00108D0C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013F750 00108D10  41 82 00 10 */	beq .L_8013F760
/* 8013F754 00108D14  38 00 00 00 */	li r0, 0x0
/* 8013F758 00108D18  90 01 00 20 */	stw r0, 0x20(r1)
/* 8013F75C 00108D1C  48 00 00 6C */	b .L_8013F7C8
.L_8013F760:
/* 8013F760 00108D20  7D C3 73 78 */	mr r3, r14
/* 8013F764 00108D24  38 80 00 01 */	li r4, 0x1
/* 8013F768 00108D28  38 A0 00 00 */	li r5, 0x0
/* 8013F76C 00108D2C  48 00 10 E9 */	bl fn_80140854
/* 8013F770 00108D30  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013F774 00108D34  41 82 00 10 */	beq .L_8013F784
/* 8013F778 00108D38  38 00 00 01 */	li r0, 0x1
/* 8013F77C 00108D3C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8013F780 00108D40  48 00 00 48 */	b .L_8013F7C8
.L_8013F784:
/* 8013F784 00108D44  38 00 FF FF */	li r0, -0x1
/* 8013F788 00108D48  90 01 00 20 */	stw r0, 0x20(r1)
/* 8013F78C 00108D4C  48 00 00 3C */	b .L_8013F7C8
.L_8013F790:
/* 8013F790 00108D50  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013F794 00108D54  41 82 00 10 */	beq .L_8013F7A4
/* 8013F798 00108D58  38 00 00 00 */	li r0, 0x0
/* 8013F79C 00108D5C  90 01 00 20 */	stw r0, 0x20(r1)
/* 8013F7A0 00108D60  48 00 00 28 */	b .L_8013F7C8
.L_8013F7A4:
/* 8013F7A4 00108D64  3C 60 80 57 */	lis r3, lbl_80577448@ha
/* 8013F7A8 00108D68  38 00 FF FF */	li r0, -0x1
/* 8013F7AC 00108D6C  38 63 74 48 */	addi r3, r3, lbl_80577448@l
/* 8013F7B0 00108D70  90 01 00 20 */	stw r0, 0x20(r1)
/* 8013F7B4 00108D74  88 03 00 98 */	lbz r0, 0x98(r3)
/* 8013F7B8 00108D78  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F7BC 00108D7C  41 82 00 0C */	beq .L_8013F7C8
/* 8013F7C0 00108D80  38 00 00 01 */	li r0, 0x1
/* 8013F7C4 00108D84  90 01 00 20 */	stw r0, 0x20(r1)
.L_8013F7C8:
/* 8013F7C8 00108D88  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8013F7CC 00108D8C  3F C0 80 50 */	lis r30, lbl_804FC280@ha
/* 8013F7D0 00108D90  82 C1 00 20 */	lwz r22, 0x20(r1)
/* 8013F7D4 00108D94  3B DE C2 80 */	addi r30, r30, lbl_804FC280@l
/* 8013F7D8 00108D98  1C 60 00 2A */	mulli r3, r0, 0x2a
/* 8013F7DC 00108D9C  3C 00 80 50 */	lis r0, 0x8050
/* 8013F7E0 00108DA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013F7E4 00108DA4  3A E0 00 00 */	li r23, 0x0
/* 8013F7E8 00108DA8  56 C0 10 3A */	slwi r0, r22, 2
/* 8013F7EC 00108DAC  7C 6F 1A 14 */	add r3, r15, r3
/* 8013F7F0 00108DB0  3B A3 00 6E */	addi r29, r3, 0x6e
/* 8013F7F4 00108DB4  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8013F7F8 00108DB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8013F7FC 00108DBC  3B E0 00 01 */	li r31, 0x1
/* 8013F800 00108DC0  38 63 C2 40 */	addi r3, r3, -0x3dc0
/* 8013F804 00108DC4  90 61 00 24 */	stw r3, 0x24(r1)
/* 8013F808 00108DC8  48 00 07 D0 */	b .L_8013FFD8
.L_8013F80C:
/* 8013F80C 00108DCC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8013F810 00108DD0  2C 00 FF FF */	cmpwi r0, -0x1
/* 8013F814 00108DD4  40 82 00 0C */	bne .L_8013F820
/* 8013F818 00108DD8  2C 16 FF FF */	cmpwi r22, -0x1
/* 8013F81C 00108DDC  41 82 07 A8 */	beq .L_8013FFC4
.L_8013F820:
/* 8013F820 00108DE0  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8013F824 00108DE4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F828 00108DE8  40 82 00 0C */	bne .L_8013F834
/* 8013F82C 00108DEC  2C 16 00 00 */	cmpwi r22, 0x0
/* 8013F830 00108DF0  40 82 07 94 */	bne .L_8013FFC4
.L_8013F834:
/* 8013F834 00108DF4  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8013F838 00108DF8  2C 00 00 01 */	cmpwi r0, 0x1
/* 8013F83C 00108DFC  40 82 00 0C */	bne .L_8013F848
/* 8013F840 00108E00  2C 16 00 01 */	cmpwi r22, 0x1
/* 8013F844 00108E04  40 82 07 80 */	bne .L_8013FFC4
.L_8013F848:
/* 8013F848 00108E08  88 1D 00 00 */	lbz r0, 0x0(r29)
/* 8013F84C 00108E0C  80 6F 00 C4 */	lwz r3, 0xc4(r15)
/* 8013F850 00108E10  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F854 00108E14  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8013F858 00108E18  7E A3 02 14 */	add r21, r3, r0
/* 8013F85C 00108E1C  41 82 07 68 */	beq .L_8013FFC4
/* 8013F860 00108E20  80 61 00 24 */	lwz r3, 0x24(r1)
/* 8013F864 00108E24  7F BC EB 78 */	mr r28, r29
/* 8013F868 00108E28  39 C0 00 00 */	li r14, 0x0
/* 8013F86C 00108E2C  3A 80 00 00 */	li r20, 0x0
/* 8013F870 00108E30  7F 23 02 14 */	add r25, r3, r0
/* 8013F874 00108E34  3A 60 00 00 */	li r19, 0x0
/* 8013F878 00108E38  7F 3B CB 78 */	mr r27, r25
.L_8013F87C:
/* 8013F87C 00108E3C  A0 1C 00 02 */	lhz r0, 0x2(r28)
/* 8013F880 00108E40  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F884 00108E44  41 82 05 0C */	beq .L_8013FD90
/* 8013F888 00108E48  7C 95 98 AE */	lbzx r4, r21, r19
/* 8013F88C 00108E4C  2C 10 00 00 */	cmpwi r16, 0x0
/* 8013F890 00108E50  7C 98 07 74 */	extsb r24, r4
/* 8013F894 00108E54  41 82 03 28 */	beq .L_8013FBBC
/* 8013F898 00108E58  2C 11 00 00 */	cmpwi r17, 0x0
/* 8013F89C 00108E5C  41 82 03 20 */	beq .L_8013FBBC
/* 8013F8A0 00108E60  2C 10 00 01 */	cmpwi r16, 0x1
/* 8013F8A4 00108E64  40 82 00 A8 */	bne .L_8013F94C
/* 8013F8A8 00108E68  7C 10 00 00 */	cmpw r16, r0
/* 8013F8AC 00108E6C  40 82 04 B4 */	bne .L_8013FD60
/* 8013F8B0 00108E70  A0 1C 00 0A */	lhz r0, 0xa(r28)
/* 8013F8B4 00108E74  7C 11 00 00 */	cmpw r17, r0
/* 8013F8B8 00108E78  40 82 04 A8 */	bne .L_8013FD60
/* 8013F8BC 00108E7C  7C 9D 9A 14 */	add r4, r29, r19
/* 8013F8C0 00108E80  88 04 00 12 */	lbz r0, 0x12(r4)
/* 8013F8C4 00108E84  7C 00 C0 00 */	cmpw r0, r24
/* 8013F8C8 00108E88  40 81 04 98 */	ble .L_8013FD60
/* 8013F8CC 00108E8C  88 1D 00 01 */	lbz r0, 0x1(r29)
/* 8013F8D0 00108E90  38 A0 00 01 */	li r5, 0x1
/* 8013F8D4 00108E94  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F8D8 00108E98  41 82 00 20 */	beq .L_8013F8F8
/* 8013F8DC 00108E9C  2C 13 00 00 */	cmpwi r19, 0x0
/* 8013F8E0 00108EA0  40 81 00 18 */	ble .L_8013F8F8
/* 8013F8E4 00108EA4  80 7B FF F8 */	lwz r3, -0x8(r27)
/* 8013F8E8 00108EA8  80 0F 00 04 */	lwz r0, 0x4(r15)
/* 8013F8EC 00108EAC  7C 03 00 00 */	cmpw r3, r0
/* 8013F8F0 00108EB0  40 81 00 08 */	ble .L_8013F8F8
/* 8013F8F4 00108EB4  38 A0 00 00 */	li r5, 0x0
.L_8013F8F8:
/* 8013F8F8 00108EB8  2C 05 00 00 */	cmpwi r5, 0x0
/* 8013F8FC 00108EBC  41 82 04 64 */	beq .L_8013FD60
/* 8013F900 00108EC0  7C 75 98 AE */	lbzx r3, r21, r19
/* 8013F904 00108EC4  38 03 00 01 */	addi r0, r3, 0x1
/* 8013F908 00108EC8  7C 15 99 AE */	stbx r0, r21, r19
/* 8013F90C 00108ECC  54 05 06 3E */	clrlwi r5, r0, 24
/* 8013F910 00108ED0  88 C4 00 12 */	lbz r6, 0x12(r4)
/* 8013F914 00108ED4  7C A5 07 74 */	extsb r5, r5
/* 8013F918 00108ED8  7C 06 28 00 */	cmpw r6, r5
/* 8013F91C 00108EDC  41 81 00 08 */	bgt .L_8013F924
/* 8013F920 00108EE0  3A E0 00 01 */	li r23, 0x1
.L_8013F924:
/* 8013F924 00108EE4  88 0F 00 08 */	lbz r0, 0x8(r15)
/* 8013F928 00108EE8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F92C 00108EEC  41 82 00 0C */	beq .L_8013F938
/* 8013F930 00108EF0  28 00 00 03 */	cmplwi r0, 0x3
/* 8013F934 00108EF4  40 82 04 2C */	bne .L_8013FD60
.L_8013F938:
/* 8013F938 00108EF8  A0 6F 00 52 */	lhz r3, 0x52(r15)
/* 8013F93C 00108EFC  56 24 04 3E */	clrlwi r4, r17, 16
/* 8013F940 00108F00  54 A5 06 3E */	clrlwi r5, r5, 24
/* 8013F944 00108F04  4B FF EC C5 */	bl fn_8013E608
/* 8013F948 00108F08  48 00 04 18 */	b .L_8013FD60
.L_8013F94C:
/* 8013F94C 00108F0C  2C 10 00 03 */	cmpwi r16, 0x3
/* 8013F950 00108F10  41 82 00 0C */	beq .L_8013F95C
/* 8013F954 00108F14  2C 10 00 05 */	cmpwi r16, 0x5
/* 8013F958 00108F18  40 82 00 D4 */	bne .L_8013FA2C
.L_8013F95C:
/* 8013F95C 00108F1C  7C 10 00 00 */	cmpw r16, r0
/* 8013F960 00108F20  40 82 04 00 */	bne .L_8013FD60
/* 8013F964 00108F24  A0 1C 00 0A */	lhz r0, 0xa(r28)
/* 8013F968 00108F28  7C 11 00 00 */	cmpw r17, r0
/* 8013F96C 00108F2C  40 82 03 F4 */	bne .L_8013FD60
/* 8013F970 00108F30  2C 18 00 01 */	cmpwi r24, 0x1
/* 8013F974 00108F34  40 80 03 EC */	bge .L_8013FD60
/* 8013F978 00108F38  7C 7D 9A 14 */	add r3, r29, r19
/* 8013F97C 00108F3C  38 A0 00 01 */	li r5, 0x1
/* 8013F980 00108F40  88 63 00 12 */	lbz r3, 0x12(r3)
/* 8013F984 00108F44  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013F988 00108F48  41 82 00 14 */	beq .L_8013F99C
/* 8013F98C 00108F4C  80 01 00 08 */	lwz r0, 0x8(r1)
/* 8013F990 00108F50  7C 00 18 00 */	cmpw r0, r3
/* 8013F994 00108F54  41 82 00 08 */	beq .L_8013F99C
/* 8013F998 00108F58  38 A0 00 00 */	li r5, 0x0
.L_8013F99C:
/* 8013F99C 00108F5C  2C 05 00 00 */	cmpwi r5, 0x0
/* 8013F9A0 00108F60  41 82 00 38 */	beq .L_8013F9D8
/* 8013F9A4 00108F64  A0 0F 00 50 */	lhz r0, 0x50(r15)
/* 8013F9A8 00108F68  7C 00 88 00 */	cmpw r0, r17
/* 8013F9AC 00108F6C  40 82 00 2C */	bne .L_8013F9D8
/* 8013F9B0 00108F70  2C 13 00 00 */	cmpwi r19, 0x0
/* 8013F9B4 00108F74  40 82 00 24 */	bne .L_8013F9D8
/* 8013F9B8 00108F78  7C 80 07 75 */	extsb. r0, r4
/* 8013F9BC 00108F7C  40 82 00 1C */	bne .L_8013F9D8
/* 8013F9C0 00108F80  88 1D 00 01 */	lbz r0, 0x1(r29)
/* 8013F9C4 00108F84  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F9C8 00108F88  41 82 00 10 */	beq .L_8013F9D8
/* 8013F9CC 00108F8C  38 00 FF FF */	li r0, -0x1
/* 8013F9D0 00108F90  7C 15 99 AE */	stbx r0, r21, r19
/* 8013F9D4 00108F94  38 A0 00 00 */	li r5, 0x0
.L_8013F9D8:
/* 8013F9D8 00108F98  2C 05 00 00 */	cmpwi r5, 0x0
/* 8013F9DC 00108F9C  41 82 00 3C */	beq .L_8013FA18
/* 8013F9E0 00108FA0  88 1D 00 01 */	lbz r0, 0x1(r29)
/* 8013F9E4 00108FA4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013F9E8 00108FA8  41 82 00 30 */	beq .L_8013FA18
/* 8013F9EC 00108FAC  2C 13 00 00 */	cmpwi r19, 0x0
/* 8013F9F0 00108FB0  40 81 00 18 */	ble .L_8013FA08
/* 8013F9F4 00108FB4  80 7B FF F8 */	lwz r3, -0x8(r27)
/* 8013F9F8 00108FB8  80 0F 00 04 */	lwz r0, 0x4(r15)
/* 8013F9FC 00108FBC  7C 03 00 00 */	cmpw r3, r0
/* 8013FA00 00108FC0  40 81 00 08 */	ble .L_8013FA08
/* 8013FA04 00108FC4  38 A0 00 00 */	li r5, 0x0
.L_8013FA08:
/* 8013FA08 00108FC8  88 0F 00 6C */	lbz r0, 0x6c(r15)
/* 8013FA0C 00108FCC  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013FA10 00108FD0  40 82 00 08 */	bne .L_8013FA18
/* 8013FA14 00108FD4  38 A0 00 00 */	li r5, 0x0
.L_8013FA18:
/* 8013FA18 00108FD8  2C 05 00 00 */	cmpwi r5, 0x0
/* 8013FA1C 00108FDC  41 82 03 44 */	beq .L_8013FD60
/* 8013FA20 00108FE0  7F F5 99 AE */	stbx r31, r21, r19
/* 8013FA24 00108FE4  3A E0 00 01 */	li r23, 0x1
/* 8013FA28 00108FE8  48 00 03 38 */	b .L_8013FD60
.L_8013FA2C:
/* 8013FA2C 00108FEC  2C 10 00 02 */	cmpwi r16, 0x2
/* 8013FA30 00108FF0  40 82 00 DC */	bne .L_8013FB0C
/* 8013FA34 00108FF4  7C 10 00 00 */	cmpw r16, r0
/* 8013FA38 00108FF8  40 82 03 28 */	bne .L_8013FD60
/* 8013FA3C 00108FFC  A0 1C 00 0A */	lhz r0, 0xa(r28)
/* 8013FA40 00109000  7C 11 00 00 */	cmpw r17, r0
/* 8013FA44 00109004  40 82 03 1C */	bne .L_8013FD60
/* 8013FA48 00109008  2C 18 00 01 */	cmpwi r24, 0x1
/* 8013FA4C 0010900C  40 80 03 14 */	bge .L_8013FD60
/* 8013FA50 00109010  88 1D 00 01 */	lbz r0, 0x1(r29)
/* 8013FA54 00109014  38 80 00 01 */	li r4, 0x1
/* 8013FA58 00109018  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013FA5C 0010901C  41 82 00 20 */	beq .L_8013FA7C
/* 8013FA60 00109020  2C 13 00 00 */	cmpwi r19, 0x0
/* 8013FA64 00109024  40 81 00 18 */	ble .L_8013FA7C
/* 8013FA68 00109028  80 7B FF F8 */	lwz r3, -0x8(r27)
/* 8013FA6C 0010902C  80 0F 00 04 */	lwz r0, 0x4(r15)
/* 8013FA70 00109030  7C 03 00 00 */	cmpw r3, r0
/* 8013FA74 00109034  40 81 00 08 */	ble .L_8013FA7C
/* 8013FA78 00109038  38 80 00 00 */	li r4, 0x0
.L_8013FA7C:
/* 8013FA7C 0010903C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013FA80 00109040  41 82 02 E0 */	beq .L_8013FD60
/* 8013FA84 00109044  7F 5D 9A 14 */	add r26, r29, r19
/* 8013FA88 00109048  56 23 04 3E */	clrlwi r3, r17, 16
/* 8013FA8C 0010904C  48 01 85 DD */	bl fn_80158068
/* 8013FA90 00109050  88 1A 00 12 */	lbz r0, 0x12(r26)
/* 8013FA94 00109054  7C 03 00 00 */	cmpw r3, r0
/* 8013FA98 00109058  41 80 00 10 */	blt .L_8013FAA8
/* 8013FA9C 0010905C  7F F5 99 AE */	stbx r31, r21, r19
/* 8013FAA0 00109060  3B 00 00 01 */	li r24, 0x1
/* 8013FAA4 00109064  3A E0 00 01 */	li r23, 0x1
.L_8013FAA8:
/* 8013FAA8 00109068  88 0F 00 08 */	lbz r0, 0x8(r15)
/* 8013FAAC 0010906C  28 00 00 02 */	cmplwi r0, 0x2
/* 8013FAB0 00109070  41 82 00 20 */	beq .L_8013FAD0
/* 8013FAB4 00109074  A0 7C 00 0A */	lhz r3, 0xa(r28)
/* 8013FAB8 00109078  48 01 85 B1 */	bl fn_80158068
/* 8013FABC 0010907C  54 65 06 3E */	clrlwi r5, r3, 24
/* 8013FAC0 00109080  A0 6F 00 52 */	lhz r3, 0x52(r15)
/* 8013FAC4 00109084  88 DA 00 12 */	lbz r6, 0x12(r26)
/* 8013FAC8 00109088  56 24 04 3E */	clrlwi r4, r17, 16
/* 8013FACC 0010908C  4B FF EC 39 */	bl fn_8013E704
.L_8013FAD0:
/* 8013FAD0 00109090  2C 18 00 01 */	cmpwi r24, 0x1
/* 8013FAD4 00109094  41 80 02 8C */	blt .L_8013FD60
/* 8013FAD8 00109098  80 6D A8 5C */	lwz r3, lbl_806669DC@sda21(r13)
/* 8013FADC 0010909C  7E 25 8B 78 */	mr r5, r17
/* 8013FAE0 001090A0  38 9E 00 09 */	addi r4, r30, 0x9
/* 8013FAE4 001090A4  4B EF B0 65 */	bl fn_8003AB48
/* 8013FAE8 001090A8  90 61 00 14 */	stw r3, 0x14(r1)
/* 8013FAEC 001090AC  A0 61 00 14 */	lhz r3, 0x14(r1)
/* 8013FAF0 001090B0  38 03 FF F6 */	addi r0, r3, -0xa
/* 8013FAF4 001090B4  28 00 00 01 */	cmplwi r0, 0x1
/* 8013FAF8 001090B8  41 81 02 68 */	bgt .L_8013FD60
/* 8013FAFC 001090BC  88 9A 00 12 */	lbz r4, 0x12(r26)
/* 8013FB00 001090C0  56 23 04 3E */	clrlwi r3, r17, 16
/* 8013FB04 001090C4  48 01 A1 01 */	bl fn_80159C04
/* 8013FB08 001090C8  48 00 02 58 */	b .L_8013FD60
.L_8013FB0C:
/* 8013FB0C 001090CC  2C 10 00 06 */	cmpwi r16, 0x6
/* 8013FB10 001090D0  40 82 00 78 */	bne .L_8013FB88
/* 8013FB14 001090D4  7C 10 00 00 */	cmpw r16, r0
/* 8013FB18 001090D8  40 82 02 48 */	bne .L_8013FD60
/* 8013FB1C 001090DC  A0 1C 00 0A */	lhz r0, 0xa(r28)
/* 8013FB20 001090E0  7C 11 00 00 */	cmpw r17, r0
/* 8013FB24 001090E4  40 82 02 3C */	bne .L_8013FD60
/* 8013FB28 001090E8  2C 18 00 01 */	cmpwi r24, 0x1
/* 8013FB2C 001090EC  40 80 02 34 */	bge .L_8013FD60
/* 8013FB30 001090F0  88 1D 00 01 */	lbz r0, 0x1(r29)
/* 8013FB34 001090F4  38 80 00 01 */	li r4, 0x1
/* 8013FB38 001090F8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013FB3C 001090FC  41 82 00 20 */	beq .L_8013FB5C
/* 8013FB40 00109100  2C 13 00 00 */	cmpwi r19, 0x0
/* 8013FB44 00109104  40 81 00 18 */	ble .L_8013FB5C
/* 8013FB48 00109108  80 7B FF F8 */	lwz r3, -0x8(r27)
/* 8013FB4C 0010910C  80 0F 00 04 */	lwz r0, 0x4(r15)
/* 8013FB50 00109110  7C 03 00 00 */	cmpw r3, r0
/* 8013FB54 00109114  40 81 00 08 */	ble .L_8013FB5C
/* 8013FB58 00109118  38 80 00 00 */	li r4, 0x0
.L_8013FB5C:
/* 8013FB5C 0010911C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013FB60 00109120  41 82 02 00 */	beq .L_8013FD60
/* 8013FB64 00109124  7C 95 98 AE */	lbzx r4, r21, r19
/* 8013FB68 00109128  38 60 00 01 */	li r3, 0x1
/* 8013FB6C 0010912C  38 A0 00 00 */	li r5, 0x0
/* 8013FB70 00109130  38 C0 00 00 */	li r6, 0x0
/* 8013FB74 00109134  38 04 00 01 */	addi r0, r4, 0x1
/* 8013FB78 00109138  7C 15 99 AE */	stbx r0, r21, r19
/* 8013FB7C 0010913C  A0 8F 00 52 */	lhz r4, 0x52(r15)
/* 8013FB80 00109140  4B FF DF ED */	bl fn_8013DB6C
/* 8013FB84 00109144  48 00 01 DC */	b .L_8013FD60
.L_8013FB88:
/* 8013FB88 00109148  2C 10 00 04 */	cmpwi r16, 0x4
/* 8013FB8C 0010914C  40 82 01 D4 */	bne .L_8013FD60
/* 8013FB90 00109150  28 00 00 04 */	cmplwi r0, 0x4
/* 8013FB94 00109154  40 82 01 CC */	bne .L_8013FD60
/* 8013FB98 00109158  A0 1C 00 0A */	lhz r0, 0xa(r28)
/* 8013FB9C 0010915C  7C 11 00 00 */	cmpw r17, r0
/* 8013FBA0 00109160  40 82 01 C0 */	bne .L_8013FD60
/* 8013FBA4 00109164  2C 18 00 01 */	cmpwi r24, 0x1
/* 8013FBA8 00109168  40 80 01 B8 */	bge .L_8013FD60
/* 8013FBAC 0010916C  38 04 00 01 */	addi r0, r4, 0x1
/* 8013FBB0 00109170  7C 15 99 AE */	stbx r0, r21, r19
/* 8013FBB4 00109174  3A E0 00 01 */	li r23, 0x1
/* 8013FBB8 00109178  48 00 01 A8 */	b .L_8013FD60
.L_8013FBBC:
/* 8013FBBC 0010917C  2C 10 00 02 */	cmpwi r16, 0x2
/* 8013FBC0 00109180  40 82 01 A0 */	bne .L_8013FD60
/* 8013FBC4 00109184  28 00 00 02 */	cmplwi r0, 0x2
/* 8013FBC8 00109188  40 82 01 98 */	bne .L_8013FD60
/* 8013FBCC 0010918C  88 1D 00 01 */	lbz r0, 0x1(r29)
/* 8013FBD0 00109190  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013FBD4 00109194  41 82 00 F4 */	beq .L_8013FCC8
/* 8013FBD8 00109198  2C 13 00 00 */	cmpwi r19, 0x0
/* 8013FBDC 0010919C  40 82 00 10 */	bne .L_8013FBEC
/* 8013FBE0 001091A0  80 0F 00 04 */	lwz r0, 0x4(r15)
/* 8013FBE4 001091A4  2C 00 00 01 */	cmpwi r0, 0x1
/* 8013FBE8 001091A8  40 80 00 34 */	bge .L_8013FC1C
.L_8013FBEC:
/* 8013FBEC 001091AC  2C 13 00 00 */	cmpwi r19, 0x0
/* 8013FBF0 001091B0  41 82 01 70 */	beq .L_8013FD60
/* 8013FBF4 001091B4  7D E3 7B 78 */	mr r3, r15
/* 8013FBF8 001091B8  7E C4 B3 78 */	mr r4, r22
/* 8013FBFC 001091BC  38 B3 FF FF */	addi r5, r19, -0x1
/* 8013FC00 001091C0  48 00 0C 55 */	bl fn_80140854
/* 8013FC04 001091C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013FC08 001091C8  41 82 01 58 */	beq .L_8013FD60
/* 8013FC0C 001091CC  80 7B FF F8 */	lwz r3, -0x8(r27)
/* 8013FC10 001091D0  80 0F 00 04 */	lwz r0, 0x4(r15)
/* 8013FC14 001091D4  7C 03 00 00 */	cmpw r3, r0
/* 8013FC18 001091D8  41 81 01 48 */	bgt .L_8013FD60
.L_8013FC1C:
/* 8013FC1C 001091DC  7D E3 7B 78 */	mr r3, r15
/* 8013FC20 001091E0  7E C4 B3 78 */	mr r4, r22
/* 8013FC24 001091E4  7E 65 9B 78 */	mr r5, r19
/* 8013FC28 001091E8  48 00 0C 2D */	bl fn_80140854
/* 8013FC2C 001091EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013FC30 001091F0  40 82 00 20 */	bne .L_8013FC50
/* 8013FC34 001091F4  A0 1C 00 00 */	lhz r0, 0x0(r28)
/* 8013FC38 001091F8  28 00 00 03 */	cmplwi r0, 0x3
/* 8013FC3C 001091FC  40 82 01 24 */	bne .L_8013FD60
/* 8013FC40 00109200  A0 1C 00 08 */	lhz r0, 0x8(r28)
/* 8013FC44 00109204  7C 12 00 00 */	cmpw r18, r0
/* 8013FC48 00109208  41 82 01 18 */	beq .L_8013FD60
/* 8013FC4C 0010920C  48 00 01 14 */	b .L_8013FD60
.L_8013FC50:
/* 8013FC50 00109210  7C 15 98 AE */	lbzx r0, r21, r19
/* 8013FC54 00109214  7C 00 07 75 */	extsb. r0, r0
/* 8013FC58 00109218  40 82 01 08 */	bne .L_8013FD60
/* 8013FC5C 0010921C  7F F5 99 AE */	stbx r31, r21, r19
/* 8013FC60 00109220  3A E0 00 01 */	li r23, 0x1
/* 8013FC64 00109224  88 0F 00 08 */	lbz r0, 0x8(r15)
/* 8013FC68 00109228  28 00 00 02 */	cmplwi r0, 0x2
/* 8013FC6C 0010922C  41 82 00 24 */	beq .L_8013FC90
/* 8013FC70 00109230  A0 7C 00 0A */	lhz r3, 0xa(r28)
/* 8013FC74 00109234  48 01 83 F5 */	bl fn_80158068
/* 8013FC78 00109238  7C DD 9A 14 */	add r6, r29, r19
/* 8013FC7C 0010923C  54 65 06 3E */	clrlwi r5, r3, 24
/* 8013FC80 00109240  A0 6F 00 52 */	lhz r3, 0x52(r15)
/* 8013FC84 00109244  A0 9C 00 0A */	lhz r4, 0xa(r28)
/* 8013FC88 00109248  88 C6 00 12 */	lbz r6, 0x12(r6)
/* 8013FC8C 0010924C  4B FF EA 79 */	bl fn_8013E704
.L_8013FC90:
/* 8013FC90 00109250  80 6D A8 5C */	lwz r3, lbl_806669DC@sda21(r13)
/* 8013FC94 00109254  38 9E 00 09 */	addi r4, r30, 0x9
/* 8013FC98 00109258  A0 BC 00 0A */	lhz r5, 0xa(r28)
/* 8013FC9C 0010925C  4B EF AE AD */	bl fn_8003AB48
/* 8013FCA0 00109260  90 61 00 10 */	stw r3, 0x10(r1)
/* 8013FCA4 00109264  A0 61 00 10 */	lhz r3, 0x10(r1)
/* 8013FCA8 00109268  38 03 FF F6 */	addi r0, r3, -0xa
/* 8013FCAC 0010926C  28 00 00 01 */	cmplwi r0, 0x1
/* 8013FCB0 00109270  41 81 00 B0 */	bgt .L_8013FD60
/* 8013FCB4 00109274  7C 9D 9A 14 */	add r4, r29, r19
/* 8013FCB8 00109278  A0 7C 00 0A */	lhz r3, 0xa(r28)
/* 8013FCBC 0010927C  88 84 00 12 */	lbz r4, 0x12(r4)
/* 8013FCC0 00109280  48 01 9F 45 */	bl fn_80159C04
/* 8013FCC4 00109284  48 00 00 9C */	b .L_8013FD60
.L_8013FCC8:
/* 8013FCC8 00109288  A0 0F 00 50 */	lhz r0, 0x50(r15)
/* 8013FCCC 0010928C  7C 00 90 00 */	cmpw r0, r18
/* 8013FCD0 00109290  40 82 00 90 */	bne .L_8013FD60
/* 8013FCD4 00109294  7D E3 7B 78 */	mr r3, r15
/* 8013FCD8 00109298  7E C4 B3 78 */	mr r4, r22
/* 8013FCDC 0010929C  7E 65 9B 78 */	mr r5, r19
/* 8013FCE0 001092A0  48 00 0B 75 */	bl fn_80140854
/* 8013FCE4 001092A4  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013FCE8 001092A8  41 82 00 78 */	beq .L_8013FD60
/* 8013FCEC 001092AC  7C 15 98 AE */	lbzx r0, r21, r19
/* 8013FCF0 001092B0  7C 00 07 75 */	extsb. r0, r0
/* 8013FCF4 001092B4  40 82 00 6C */	bne .L_8013FD60
/* 8013FCF8 001092B8  7F F5 99 AE */	stbx r31, r21, r19
/* 8013FCFC 001092BC  3A E0 00 01 */	li r23, 0x1
/* 8013FD00 001092C0  88 0F 00 08 */	lbz r0, 0x8(r15)
/* 8013FD04 001092C4  28 00 00 02 */	cmplwi r0, 0x2
/* 8013FD08 001092C8  41 82 00 24 */	beq .L_8013FD2C
/* 8013FD0C 001092CC  A0 7C 00 0A */	lhz r3, 0xa(r28)
/* 8013FD10 001092D0  48 01 83 59 */	bl fn_80158068
/* 8013FD14 001092D4  7C DD 9A 14 */	add r6, r29, r19
/* 8013FD18 001092D8  54 65 06 3E */	clrlwi r5, r3, 24
/* 8013FD1C 001092DC  A0 6F 00 52 */	lhz r3, 0x52(r15)
/* 8013FD20 001092E0  A0 9C 00 0A */	lhz r4, 0xa(r28)
/* 8013FD24 001092E4  88 C6 00 12 */	lbz r6, 0x12(r6)
/* 8013FD28 001092E8  4B FF E9 DD */	bl fn_8013E704
.L_8013FD2C:
/* 8013FD2C 001092EC  80 6D A8 5C */	lwz r3, lbl_806669DC@sda21(r13)
/* 8013FD30 001092F0  38 9E 00 09 */	addi r4, r30, 0x9
/* 8013FD34 001092F4  A0 BC 00 0A */	lhz r5, 0xa(r28)
/* 8013FD38 001092F8  4B EF AE 11 */	bl fn_8003AB48
/* 8013FD3C 001092FC  90 61 00 0C */	stw r3, 0xc(r1)
/* 8013FD40 00109300  A0 61 00 0C */	lhz r3, 0xc(r1)
/* 8013FD44 00109304  38 03 FF F6 */	addi r0, r3, -0xa
/* 8013FD48 00109308  28 00 00 01 */	cmplwi r0, 0x1
/* 8013FD4C 0010930C  41 81 00 14 */	bgt .L_8013FD60
/* 8013FD50 00109310  7C 9D 9A 14 */	add r4, r29, r19
/* 8013FD54 00109314  A0 7C 00 0A */	lhz r3, 0xa(r28)
/* 8013FD58 00109318  88 84 00 12 */	lbz r4, 0x12(r4)
/* 8013FD5C 0010931C  48 01 9E A9 */	bl fn_80159C04
.L_8013FD60:
/* 8013FD60 00109320  7F F8 98 30 */	slw r24, r31, r19
/* 8013FD64 00109324  7D E3 7B 78 */	mr r3, r15
/* 8013FD68 00109328  57 00 06 3E */	clrlwi r0, r24, 24
/* 8013FD6C 0010932C  7E C4 B3 78 */	mr r4, r22
/* 8013FD70 00109330  7E 65 9B 78 */	mr r5, r19
/* 8013FD74 00109334  7D CE 03 78 */	or r14, r14, r0
/* 8013FD78 00109338  48 00 0A DD */	bl fn_80140854
/* 8013FD7C 0010933C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8013FD80 00109340  41 82 00 10 */	beq .L_8013FD90
/* 8013FD84 00109344  57 00 06 3E */	clrlwi r0, r24, 24
/* 8013FD88 00109348  7E 80 03 78 */	or r0, r20, r0
/* 8013FD8C 0010934C  54 14 06 3E */	clrlwi r20, r0, 24
.L_8013FD90:
/* 8013FD90 00109350  3A 73 00 01 */	addi r19, r19, 0x1
/* 8013FD94 00109354  3B 7B 00 08 */	addi r27, r27, 0x8
/* 8013FD98 00109358  2C 13 00 04 */	cmpwi r19, 0x4
/* 8013FD9C 0010935C  3B 9C 00 02 */	addi r28, r28, 0x2
/* 8013FDA0 00109360  41 80 FA DC */	blt .L_8013F87C
/* 8013FDA4 00109364  88 1D 00 01 */	lbz r0, 0x1(r29)
/* 8013FDA8 00109368  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013FDAC 0010936C  41 82 00 C8 */	beq .L_8013FE74
/* 8013FDB0 00109370  3A E0 00 00 */	li r23, 0x0
/* 8013FDB4 00109374  55 C3 06 3E */	clrlwi r3, r14, 24
/* 8013FDB8 00109378  7F E0 B8 30 */	slw r0, r31, r23
/* 8013FDBC 0010937C  54 04 06 3E */	clrlwi r4, r0, 24
/* 8013FDC0 00109380  7C 60 20 39 */	and. r0, r3, r4
/* 8013FDC4 00109384  41 82 00 B0 */	beq .L_8013FE74
/* 8013FDC8 00109388  7E 80 20 39 */	and. r0, r20, r4
/* 8013FDCC 0010938C  41 82 00 A8 */	beq .L_8013FE74
/* 8013FDD0 00109390  80 99 00 00 */	lwz r4, 0x0(r25)
/* 8013FDD4 00109394  80 0F 00 04 */	lwz r0, 0x4(r15)
/* 8013FDD8 00109398  7C 00 20 00 */	cmpw r0, r4
/* 8013FDDC 0010939C  40 80 00 08 */	bge .L_8013FDE4
/* 8013FDE0 001093A0  90 8F 00 04 */	stw r4, 0x4(r15)
.L_8013FDE4:
/* 8013FDE4 001093A4  38 00 00 01 */	li r0, 0x1
/* 8013FDE8 001093A8  7F E0 00 30 */	slw r0, r31, r0
/* 8013FDEC 001093AC  54 04 06 3E */	clrlwi r4, r0, 24
/* 8013FDF0 001093B0  7C 60 20 39 */	and. r0, r3, r4
/* 8013FDF4 001093B4  41 82 00 80 */	beq .L_8013FE74
/* 8013FDF8 001093B8  7E 80 20 39 */	and. r0, r20, r4
/* 8013FDFC 001093BC  41 82 00 78 */	beq .L_8013FE74
/* 8013FE00 001093C0  80 99 00 08 */	lwz r4, 0x8(r25)
/* 8013FE04 001093C4  80 0F 00 04 */	lwz r0, 0x4(r15)
/* 8013FE08 001093C8  7C 00 20 00 */	cmpw r0, r4
/* 8013FE0C 001093CC  40 80 00 08 */	bge .L_8013FE14
/* 8013FE10 001093D0  90 8F 00 04 */	stw r4, 0x4(r15)
.L_8013FE14:
/* 8013FE14 001093D4  38 00 00 02 */	li r0, 0x2
/* 8013FE18 001093D8  7F E0 00 30 */	slw r0, r31, r0
/* 8013FE1C 001093DC  54 04 06 3E */	clrlwi r4, r0, 24
/* 8013FE20 001093E0  7C 60 20 39 */	and. r0, r3, r4
/* 8013FE24 001093E4  41 82 00 50 */	beq .L_8013FE74
/* 8013FE28 001093E8  7E 80 20 39 */	and. r0, r20, r4
/* 8013FE2C 001093EC  41 82 00 48 */	beq .L_8013FE74
/* 8013FE30 001093F0  80 99 00 10 */	lwz r4, 0x10(r25)
/* 8013FE34 001093F4  80 0F 00 04 */	lwz r0, 0x4(r15)
/* 8013FE38 001093F8  7C 00 20 00 */	cmpw r0, r4
/* 8013FE3C 001093FC  40 80 00 08 */	bge .L_8013FE44
/* 8013FE40 00109400  90 8F 00 04 */	stw r4, 0x4(r15)
.L_8013FE44:
/* 8013FE44 00109404  38 00 00 03 */	li r0, 0x3
/* 8013FE48 00109408  7F E0 00 30 */	slw r0, r31, r0
/* 8013FE4C 0010940C  54 04 06 3E */	clrlwi r4, r0, 24
/* 8013FE50 00109410  7C 60 20 39 */	and. r0, r3, r4
/* 8013FE54 00109414  41 82 00 20 */	beq .L_8013FE74
/* 8013FE58 00109418  7E 80 20 39 */	and. r0, r20, r4
/* 8013FE5C 0010941C  41 82 00 18 */	beq .L_8013FE74
/* 8013FE60 00109420  80 99 00 18 */	lwz r4, 0x18(r25)
/* 8013FE64 00109424  80 0F 00 04 */	lwz r0, 0x4(r15)
/* 8013FE68 00109428  7C 00 20 00 */	cmpw r0, r4
/* 8013FE6C 0010942C  40 80 00 08 */	bge .L_8013FE74
/* 8013FE70 00109430  90 8F 00 04 */	stw r4, 0x4(r15)
.L_8013FE74:
/* 8013FE74 00109434  55 C0 06 3E */	clrlwi r0, r14, 24
/* 8013FE78 00109438  7C 00 A0 40 */	cmplw r0, r20
/* 8013FE7C 0010943C  40 82 01 14 */	bne .L_8013FF90
/* 8013FE80 00109440  38 00 00 04 */	li r0, 0x4
/* 8013FE84 00109444  38 7D 00 06 */	addi r3, r29, 0x6
/* 8013FE88 00109448  38 80 00 01 */	li r4, 0x1
/* 8013FE8C 0010944C  38 A0 00 03 */	li r5, 0x3
/* 8013FE90 00109450  7C 09 03 A6 */	mtctr r0
.L_8013FE94:
/* 8013FE94 00109454  A0 03 00 02 */	lhz r0, 0x2(r3)
/* 8013FE98 00109458  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013FE9C 0010945C  41 82 00 38 */	beq .L_8013FED4
/* 8013FEA0 00109460  88 1D 00 01 */	lbz r0, 0x1(r29)
/* 8013FEA4 00109464  2C 00 00 00 */	cmpwi r0, 0x0
/* 8013FEA8 00109468  41 82 00 38 */	beq .L_8013FEE0
/* 8013FEAC 0010946C  54 A0 08 3C */	slwi r0, r5, 1
/* 8013FEB0 00109470  7C 7D 02 14 */	add r3, r29, r0
/* 8013FEB4 00109474  A0 03 00 02 */	lhz r0, 0x2(r3)
/* 8013FEB8 00109478  28 00 00 03 */	cmplwi r0, 0x3
/* 8013FEBC 0010947C  41 82 00 0C */	beq .L_8013FEC8
/* 8013FEC0 00109480  28 00 00 05 */	cmplwi r0, 0x5
/* 8013FEC4 00109484  40 82 00 1C */	bne .L_8013FEE0
.L_8013FEC8:
/* 8013FEC8 00109488  38 80 00 00 */	li r4, 0x0
/* 8013FECC 0010948C  48 00 00 14 */	b .L_8013FEE0
/* 8013FED0 00109490  48 00 00 10 */	b .L_8013FEE0
.L_8013FED4:
/* 8013FED4 00109494  38 63 FF FE */	addi r3, r3, -0x2
/* 8013FED8 00109498  38 A5 FF FF */	addi r5, r5, -0x1
/* 8013FEDC 0010949C  42 00 FF B8 */	bdnz .L_8013FE94
.L_8013FEE0:
/* 8013FEE0 001094A0  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013FEE4 001094A4  41 82 00 18 */	beq .L_8013FEFC
/* 8013FEE8 001094A8  2C 16 00 00 */	cmpwi r22, 0x0
/* 8013FEEC 001094AC  38 00 00 FD */	li r0, 0xfd
/* 8013FEF0 001094B0  40 82 00 08 */	bne .L_8013FEF8
/* 8013FEF4 001094B4  38 00 00 FC */	li r0, 0xfc
.L_8013FEF8:
/* 8013FEF8 001094B8  90 0F 00 04 */	stw r0, 0x4(r15)
.L_8013FEFC:
/* 8013FEFC 001094BC  3C 60 80 57 */	lis r3, lbl_80577448@ha
/* 8013FF00 001094C0  38 63 74 48 */	addi r3, r3, lbl_80577448@l
/* 8013FF04 001094C4  88 03 00 6C */	lbz r0, 0x6c(r3)
/* 8013FF08 001094C8  2C 80 00 00 */	cmpwi cr1, r0, 0x0
/* 8013FF0C 001094CC  41 86 00 6C */	beq cr1, .L_8013FF78
/* 8013FF10 001094D0  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013FF14 001094D4  41 82 00 64 */	beq .L_8013FF78
/* 8013FF18 001094D8  41 86 00 58 */	beq cr1, .L_8013FF70
/* 8013FF1C 001094DC  A0 8F 00 52 */	lhz r4, 0x52(r15)
/* 8013FF20 001094E0  38 60 FF FF */	li r3, -0x1
/* 8013FF24 001094E4  2C 04 03 E8 */	cmpwi r4, 0x3e8
/* 8013FF28 001094E8  40 80 00 08 */	bge .L_8013FF30
/* 8013FF2C 001094EC  38 64 02 20 */	addi r3, r4, 0x220
.L_8013FF30:
/* 8013FF30 001094F0  2C 03 FF FF */	cmpwi r3, -0x1
/* 8013FF34 001094F4  41 82 00 3C */	beq .L_8013FF70
/* 8013FF38 001094F8  80 0F 00 04 */	lwz r0, 0x4(r15)
/* 8013FF3C 001094FC  2C 00 00 FC */	cmpwi r0, 0xfc
/* 8013FF40 00109500  40 82 00 18 */	bne .L_8013FF58
/* 8013FF44 00109504  38 80 00 FE */	li r4, 0xfe
/* 8013FF48 00109508  4B F5 D0 D1 */	bl fn_8009D018
/* 8013FF4C 0010950C  38 00 00 FE */	li r0, 0xfe
/* 8013FF50 00109510  90 0F 00 04 */	stw r0, 0x4(r15)
/* 8013FF54 00109514  48 00 00 1C */	b .L_8013FF70
.L_8013FF58:
/* 8013FF58 00109518  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8013FF5C 0010951C  40 82 00 14 */	bne .L_8013FF70
/* 8013FF60 00109520  38 80 00 FF */	li r4, 0xff
/* 8013FF64 00109524  4B F5 D0 B5 */	bl fn_8009D018
/* 8013FF68 00109528  38 00 00 FF */	li r0, 0xff
/* 8013FF6C 0010952C  90 0F 00 04 */	stw r0, 0x4(r15)
.L_8013FF70:
/* 8013FF70 00109530  38 60 00 01 */	li r3, 0x1
/* 8013FF74 00109534  48 00 00 70 */	b .L_8013FFE4
.L_8013FF78:
/* 8013FF78 00109538  2C 04 00 00 */	cmpwi r4, 0x0
/* 8013FF7C 0010953C  41 82 00 0C */	beq .L_8013FF88
/* 8013FF80 00109540  38 60 00 01 */	li r3, 0x1
/* 8013FF84 00109544  48 00 00 60 */	b .L_8013FFE4
.L_8013FF88:
/* 8013FF88 00109548  38 60 00 00 */	li r3, 0x0
/* 8013FF8C 0010954C  48 00 00 58 */	b .L_8013FFE4
.L_8013FF90:
/* 8013FF90 00109550  2C 17 00 00 */	cmpwi r23, 0x0
/* 8013FF94 00109554  41 82 00 18 */	beq .L_8013FFAC
/* 8013FF98 00109558  A0 8F 00 52 */	lhz r4, 0x52(r15)
/* 8013FF9C 0010955C  38 60 00 01 */	li r3, 0x1
/* 8013FFA0 00109560  38 A0 00 00 */	li r5, 0x0
/* 8013FFA4 00109564  38 C0 00 00 */	li r6, 0x0
/* 8013FFA8 00109568  4B FF DB C5 */	bl fn_8013DB6C
.L_8013FFAC:
/* 8013FFAC 0010956C  80 6F 00 04 */	lwz r3, 0x4(r15)
/* 8013FFB0 00109570  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8013FFB4 00109574  7C 03 00 00 */	cmpw r3, r0
/* 8013FFB8 00109578  41 82 00 0C */	beq .L_8013FFC4
/* 8013FFBC 0010957C  38 60 00 01 */	li r3, 0x1
/* 8013FFC0 00109580  48 00 00 24 */	b .L_8013FFE4
.L_8013FFC4:
/* 8013FFC4 00109584  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8013FFC8 00109588  3B BD 00 2A */	addi r29, r29, 0x2a
/* 8013FFCC 0010958C  3A D6 00 01 */	addi r22, r22, 0x1
/* 8013FFD0 00109590  38 63 00 04 */	addi r3, r3, 0x4
/* 8013FFD4 00109594  90 61 00 1C */	stw r3, 0x1c(r1)
.L_8013FFD8:
/* 8013FFD8 00109598  2C 16 00 02 */	cmpwi r22, 0x2
/* 8013FFDC 0010959C  41 80 F8 30 */	blt .L_8013F80C
/* 8013FFE0 001095A0  38 60 00 00 */	li r3, 0x0
.L_8013FFE4:
/* 8013FFE4 001095A4  B9 C1 00 28 */	lmw r14, 0x28(r1)
/* 8013FFE8 001095A8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8013FFEC 001095AC  7C 08 03 A6 */	mtlr r0
/* 8013FFF0 001095B0  38 21 00 70 */	addi r1, r1, 0x70
/* 8013FFF4 001095B4  4E 80 00 20 */	blr
.endfn fn_8013F6C4

.fn fn_8013FFF8, global
/* 8013FFF8 001095B8  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8013FFFC 001095BC  7C 08 02 A6 */	mflr r0
/* 80140000 001095C0  90 01 01 34 */	stw r0, 0x134(r1)
/* 80140004 001095C4  BF 61 01 1C */	stmw r27, 0x11c(r1)
/* 80140008 001095C8  7C 9D 23 78 */	mr r29, r4
/* 8014000C 001095CC  7C BE 2B 78 */	mr r30, r5
/* 80140010 001095D0  7C 7C 1B 78 */	mr r28, r3
/* 80140014 001095D4  38 80 00 00 */	li r4, 0x0
/* 80140018 001095D8  38 A0 00 C8 */	li r5, 0xc8
/* 8014001C 001095DC  4B EC 43 35 */	bl memset
/* 80140020 001095E0  88 1C 00 00 */	lbz r0, 0x0(r28)
/* 80140024 001095E4  3F E0 80 50 */	lis r31, lbl_804FC280@ha
/* 80140028 001095E8  3B FF C2 80 */	addi r31, r31, lbl_804FC280@l
/* 8014002C 001095EC  B3 DC 00 52 */	sth r30, 0x52(r28)
/* 80140030 001095F0  60 00 00 01 */	ori r0, r0, 0x1
/* 80140034 001095F4  7F A3 EB 78 */	mr r3, r29
/* 80140038 001095F8  98 1C 00 00 */	stb r0, 0x0(r28)
/* 8014003C 001095FC  7F C5 F3 78 */	mr r5, r30
/* 80140040 00109600  38 9F 00 12 */	addi r4, r31, 0x12
/* 80140044 00109604  4B EF AB 05 */	bl fn_8003AB48
/* 80140048 00109608  90 61 01 0C */	stw r3, 0x10c(r1)
/* 8014004C 0010960C  7F A3 EB 78 */	mr r3, r29
/* 80140050 00109610  7F C5 F3 78 */	mr r5, r30
/* 80140054 00109614  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80140058 00109618  88 01 01 0C */	lbz r0, 0x10c(r1)
/* 8014005C 0010961C  98 1C 00 08 */	stb r0, 0x8(r28)
/* 80140060 00109620  4B EF AA E9 */	bl fn_8003AB48
/* 80140064 00109624  90 61 01 08 */	stw r3, 0x108(r1)
/* 80140068 00109628  7F A3 EB 78 */	mr r3, r29
/* 8014006C 0010962C  7F C5 F3 78 */	mr r5, r30
/* 80140070 00109630  38 9F 00 25 */	addi r4, r31, 0x25
/* 80140074 00109634  88 01 01 08 */	lbz r0, 0x108(r1)
/* 80140078 00109638  98 1C 00 09 */	stb r0, 0x9(r28)
/* 8014007C 0010963C  4B EF AA CD */	bl fn_8003AB48
/* 80140080 00109640  7C 7B 1B 78 */	mr r27, r3
/* 80140084 00109644  48 17 95 35 */	bl strlen
/* 80140088 00109648  90 7C 00 4C */	stw r3, 0x4c(r28)
/* 8014008C 0010964C  7F 64 DB 78 */	mr r4, r27
/* 80140090 00109650  38 7C 00 0C */	addi r3, r28, 0xc
/* 80140094 00109654  48 18 26 25 */	bl strcpy
/* 80140098 00109658  7F A3 EB 78 */	mr r3, r29
/* 8014009C 0010965C  7F C5 F3 78 */	mr r5, r30
/* 801400A0 00109660  38 9F 00 2B */	addi r4, r31, 0x2b
/* 801400A4 00109664  4B EF AA A5 */	bl fn_8003AB48
/* 801400A8 00109668  90 61 01 04 */	stw r3, 0x104(r1)
/* 801400AC 0010966C  7F A3 EB 78 */	mr r3, r29
/* 801400B0 00109670  7F C5 F3 78 */	mr r5, r30
/* 801400B4 00109674  38 9F 00 32 */	addi r4, r31, 0x32
/* 801400B8 00109678  88 01 01 04 */	lbz r0, 0x104(r1)
/* 801400BC 0010967C  B0 1C 00 54 */	sth r0, 0x54(r28)
/* 801400C0 00109680  4B EF AA 89 */	bl fn_8003AB48
/* 801400C4 00109684  90 61 01 00 */	stw r3, 0x100(r1)
/* 801400C8 00109688  7F A3 EB 78 */	mr r3, r29
/* 801400CC 0010968C  7F C5 F3 78 */	mr r5, r30
/* 801400D0 00109690  38 9F 00 39 */	addi r4, r31, 0x39
/* 801400D4 00109694  A0 01 01 00 */	lhz r0, 0x100(r1)
/* 801400D8 00109698  B0 1C 00 50 */	sth r0, 0x50(r28)
/* 801400DC 0010969C  4B EF AA 6D */	bl fn_8003AB48
/* 801400E0 001096A0  90 61 00 FC */	stw r3, 0xfc(r1)
/* 801400E4 001096A4  7F A3 EB 78 */	mr r3, r29
/* 801400E8 001096A8  7F C5 F3 78 */	mr r5, r30
/* 801400EC 001096AC  38 9F 00 44 */	addi r4, r31, 0x44
/* 801400F0 001096B0  88 01 00 FC */	lbz r0, 0xfc(r1)
/* 801400F4 001096B4  98 1C 00 57 */	stb r0, 0x57(r28)
/* 801400F8 001096B8  4B EF AA 51 */	bl fn_8003AB48
/* 801400FC 001096BC  90 61 00 F8 */	stw r3, 0xf8(r1)
/* 80140100 001096C0  7F A3 EB 78 */	mr r3, r29
/* 80140104 001096C4  7F C5 F3 78 */	mr r5, r30
/* 80140108 001096C8  38 9F 00 4A */	addi r4, r31, 0x4a
/* 8014010C 001096CC  A0 01 00 F8 */	lhz r0, 0xf8(r1)
/* 80140110 001096D0  B0 1C 00 58 */	sth r0, 0x58(r28)
/* 80140114 001096D4  4B EF AA 35 */	bl fn_8003AB48
/* 80140118 001096D8  90 61 00 F4 */	stw r3, 0xf4(r1)
/* 8014011C 001096DC  7F A3 EB 78 */	mr r3, r29
/* 80140120 001096E0  7F C5 F3 78 */	mr r5, r30
/* 80140124 001096E4  38 9F 00 56 */	addi r4, r31, 0x56
/* 80140128 001096E8  A0 01 00 F4 */	lhz r0, 0xf4(r1)
/* 8014012C 001096EC  B0 1C 00 5A */	sth r0, 0x5a(r28)
/* 80140130 001096F0  4B EF AA 19 */	bl fn_8003AB48
/* 80140134 001096F4  90 61 00 F0 */	stw r3, 0xf0(r1)
/* 80140138 001096F8  7F A3 EB 78 */	mr r3, r29
/* 8014013C 001096FC  7F C5 F3 78 */	mr r5, r30
/* 80140140 00109700  38 9F 00 61 */	addi r4, r31, 0x61
/* 80140144 00109704  88 01 00 F0 */	lbz r0, 0xf0(r1)
/* 80140148 00109708  B0 1C 00 5C */	sth r0, 0x5c(r28)
/* 8014014C 0010970C  4B EF A9 FD */	bl fn_8003AB48
/* 80140150 00109710  90 61 00 EC */	stw r3, 0xec(r1)
/* 80140154 00109714  7F A3 EB 78 */	mr r3, r29
/* 80140158 00109718  7F C5 F3 78 */	mr r5, r30
/* 8014015C 0010971C  38 9F 00 6C */	addi r4, r31, 0x6c
/* 80140160 00109720  A0 01 00 EC */	lhz r0, 0xec(r1)
/* 80140164 00109724  B0 1C 00 5E */	sth r0, 0x5e(r28)
/* 80140168 00109728  4B EF A9 E1 */	bl fn_8003AB48
/* 8014016C 0010972C  90 61 00 E8 */	stw r3, 0xe8(r1)
/* 80140170 00109730  7F A3 EB 78 */	mr r3, r29
/* 80140174 00109734  7F C5 F3 78 */	mr r5, r30
/* 80140178 00109738  38 9F 00 77 */	addi r4, r31, 0x77
/* 8014017C 0010973C  A0 01 00 E8 */	lhz r0, 0xe8(r1)
/* 80140180 00109740  B0 1C 00 60 */	sth r0, 0x60(r28)
/* 80140184 00109744  4B EF A9 C5 */	bl fn_8003AB48
/* 80140188 00109748  90 61 00 E4 */	stw r3, 0xe4(r1)
/* 8014018C 0010974C  7F A3 EB 78 */	mr r3, r29
/* 80140190 00109750  7F C5 F3 78 */	mr r5, r30
/* 80140194 00109754  38 9F 00 82 */	addi r4, r31, 0x82
/* 80140198 00109758  A0 01 00 E4 */	lhz r0, 0xe4(r1)
/* 8014019C 0010975C  B0 1C 00 62 */	sth r0, 0x62(r28)
/* 801401A0 00109760  4B EF A9 A9 */	bl fn_8003AB48
/* 801401A4 00109764  90 61 00 E0 */	stw r3, 0xe0(r1)
/* 801401A8 00109768  7F A3 EB 78 */	mr r3, r29
/* 801401AC 0010976C  7F C5 F3 78 */	mr r5, r30
/* 801401B0 00109770  38 9F 00 8D */	addi r4, r31, 0x8d
/* 801401B4 00109774  A0 01 00 E0 */	lhz r0, 0xe0(r1)
/* 801401B8 00109778  B0 1C 00 64 */	sth r0, 0x64(r28)
/* 801401BC 0010977C  4B EF A9 8D */	bl fn_8003AB48
/* 801401C0 00109780  90 61 00 DC */	stw r3, 0xdc(r1)
/* 801401C4 00109784  7F A3 EB 78 */	mr r3, r29
/* 801401C8 00109788  7F C5 F3 78 */	mr r5, r30
/* 801401CC 0010978C  38 9F 00 98 */	addi r4, r31, 0x98
/* 801401D0 00109790  88 01 00 DC */	lbz r0, 0xdc(r1)
/* 801401D4 00109794  98 1C 00 66 */	stb r0, 0x66(r28)
/* 801401D8 00109798  4B EF A9 71 */	bl fn_8003AB48
/* 801401DC 0010979C  90 61 00 D8 */	stw r3, 0xd8(r1)
/* 801401E0 001097A0  7F A3 EB 78 */	mr r3, r29
/* 801401E4 001097A4  7F C5 F3 78 */	mr r5, r30
/* 801401E8 001097A8  38 9F 00 A3 */	addi r4, r31, 0xa3
/* 801401EC 001097AC  A0 01 00 D8 */	lhz r0, 0xd8(r1)
/* 801401F0 001097B0  B0 1C 00 68 */	sth r0, 0x68(r28)
/* 801401F4 001097B4  4B EF A9 55 */	bl fn_8003AB48
/* 801401F8 001097B8  90 61 00 D4 */	stw r3, 0xd4(r1)
/* 801401FC 001097BC  7F A3 EB 78 */	mr r3, r29
/* 80140200 001097C0  7F C5 F3 78 */	mr r5, r30
/* 80140204 001097C4  38 9F 00 AF */	addi r4, r31, 0xaf
/* 80140208 001097C8  A0 01 00 D4 */	lhz r0, 0xd4(r1)
/* 8014020C 001097CC  B0 1C 00 6A */	sth r0, 0x6a(r28)
/* 80140210 001097D0  4B EF A9 39 */	bl fn_8003AB48
/* 80140214 001097D4  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 80140218 001097D8  7F A3 EB 78 */	mr r3, r29
/* 8014021C 001097DC  7F C5 F3 78 */	mr r5, r30
/* 80140220 001097E0  38 9F 00 B9 */	addi r4, r31, 0xb9
/* 80140224 001097E4  88 01 00 D0 */	lbz r0, 0xd0(r1)
/* 80140228 001097E8  98 1C 00 6C */	stb r0, 0x6c(r28)
/* 8014022C 001097EC  4B EF A9 1D */	bl fn_8003AB48
/* 80140230 001097F0  90 61 00 CC */	stw r3, 0xcc(r1)
/* 80140234 001097F4  88 01 00 CC */	lbz r0, 0xcc(r1)
/* 80140238 001097F8  B0 1C 00 70 */	sth r0, 0x70(r28)
/* 8014023C 001097FC  2C 00 00 00 */	cmpwi r0, 0x0
/* 80140240 00109800  41 82 02 D4 */	beq .L_80140514
/* 80140244 00109804  7F A3 EB 78 */	mr r3, r29
/* 80140248 00109808  7F C5 F3 78 */	mr r5, r30
/* 8014024C 0010980C  38 9F 00 C6 */	addi r4, r31, 0xc6
/* 80140250 00109810  4B EF A8 F9 */	bl fn_8003AB48
/* 80140254 00109814  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 80140258 00109818  7F A3 EB 78 */	mr r3, r29
/* 8014025C 0010981C  7F C5 F3 78 */	mr r5, r30
/* 80140260 00109820  38 9F 00 D2 */	addi r4, r31, 0xd2
/* 80140264 00109824  A0 01 00 C8 */	lhz r0, 0xc8(r1)
/* 80140268 00109828  B0 1C 00 78 */	sth r0, 0x78(r28)
/* 8014026C 0010982C  4B EF A8 DD */	bl fn_8003AB48
/* 80140270 00109830  90 61 00 C4 */	stw r3, 0xc4(r1)
/* 80140274 00109834  7F A3 EB 78 */	mr r3, r29
/* 80140278 00109838  7F C5 F3 78 */	mr r5, r30
/* 8014027C 0010983C  38 9F 00 DE */	addi r4, r31, 0xde
/* 80140280 00109840  88 01 00 C4 */	lbz r0, 0xc4(r1)
/* 80140284 00109844  98 1C 00 80 */	stb r0, 0x80(r28)
/* 80140288 00109848  4B EF A8 C1 */	bl fn_8003AB48
/* 8014028C 0010984C  90 61 00 C0 */	stw r3, 0xc0(r1)
/* 80140290 00109850  7F A3 EB 78 */	mr r3, r29
/* 80140294 00109854  7F C5 F3 78 */	mr r5, r30
/* 80140298 00109858  38 9F 00 EC */	addi r4, r31, 0xec
/* 8014029C 0010985C  A0 01 00 C0 */	lhz r0, 0xc0(r1)
/* 801402A0 00109860  B0 1C 00 8C */	sth r0, 0x8c(r28)
/* 801402A4 00109864  4B EF A8 A5 */	bl fn_8003AB48
/* 801402A8 00109868  90 61 00 BC */	stw r3, 0xbc(r1)
/* 801402AC 0010986C  7F A3 EB 78 */	mr r3, r29
/* 801402B0 00109870  7F C5 F3 78 */	mr r5, r30
/* 801402B4 00109874  38 9F 00 F9 */	addi r4, r31, 0xf9
/* 801402B8 00109878  88 01 00 BC */	lbz r0, 0xbc(r1)
/* 801402BC 0010987C  98 1C 00 94 */	stb r0, 0x94(r28)
/* 801402C0 00109880  4B EF A8 89 */	bl fn_8003AB48
/* 801402C4 00109884  90 61 00 B8 */	stw r3, 0xb8(r1)
/* 801402C8 00109888  7F A3 EB 78 */	mr r3, r29
/* 801402CC 0010988C  7F C5 F3 78 */	mr r5, r30
/* 801402D0 00109890  38 9F 01 06 */	addi r4, r31, 0x106
/* 801402D4 00109894  88 01 00 B8 */	lbz r0, 0xb8(r1)
/* 801402D8 00109898  98 1C 00 6F */	stb r0, 0x6f(r28)
/* 801402DC 0010989C  4B EF A8 6D */	bl fn_8003AB48
/* 801402E0 001098A0  90 61 00 B4 */	stw r3, 0xb4(r1)
/* 801402E4 001098A4  7F A3 EB 78 */	mr r3, r29
/* 801402E8 001098A8  7F C5 F3 78 */	mr r5, r30
/* 801402EC 001098AC  38 9F 01 12 */	addi r4, r31, 0x112
/* 801402F0 001098B0  A0 01 00 B4 */	lhz r0, 0xb4(r1)
/* 801402F4 001098B4  B0 1C 00 8A */	sth r0, 0x8a(r28)
/* 801402F8 001098B8  4B EF A8 51 */	bl fn_8003AB48
/* 801402FC 001098BC  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 80140300 001098C0  7F A3 EB 78 */	mr r3, r29
/* 80140304 001098C4  7F C5 F3 78 */	mr r5, r30
/* 80140308 001098C8  38 9F 01 1C */	addi r4, r31, 0x11c
/* 8014030C 001098CC  A0 01 00 B0 */	lhz r0, 0xb0(r1)
/* 80140310 001098D0  B0 1C 00 84 */	sth r0, 0x84(r28)
/* 80140314 001098D4  4B EF A8 35 */	bl fn_8003AB48
/* 80140318 001098D8  90 61 00 AC */	stw r3, 0xac(r1)
/* 8014031C 001098DC  7F A3 EB 78 */	mr r3, r29
/* 80140320 001098E0  7F C5 F3 78 */	mr r5, r30
/* 80140324 001098E4  38 9F 01 26 */	addi r4, r31, 0x126
/* 80140328 001098E8  A0 01 00 AC */	lhz r0, 0xac(r1)
/* 8014032C 001098EC  B0 1C 00 86 */	sth r0, 0x86(r28)
/* 80140330 001098F0  4B EF A8 19 */	bl fn_8003AB48
/* 80140334 001098F4  90 61 00 A8 */	stw r3, 0xa8(r1)
/* 80140338 001098F8  7F A3 EB 78 */	mr r3, r29
/* 8014033C 001098FC  7F C5 F3 78 */	mr r5, r30
/* 80140340 00109900  38 9F 01 30 */	addi r4, r31, 0x130
/* 80140344 00109904  A0 01 00 A8 */	lhz r0, 0xa8(r1)
/* 80140348 00109908  B0 1C 00 88 */	sth r0, 0x88(r28)
/* 8014034C 0010990C  4B EF A7 FD */	bl fn_8003AB48
/* 80140350 00109910  90 61 00 A4 */	stw r3, 0xa4(r1)
/* 80140354 00109914  88 01 00 A4 */	lbz r0, 0xa4(r1)
/* 80140358 00109918  B0 1C 00 72 */	sth r0, 0x72(r28)
/* 8014035C 0010991C  2C 00 00 00 */	cmpwi r0, 0x0
/* 80140360 00109920  41 82 00 74 */	beq .L_801403D4
/* 80140364 00109924  7F A3 EB 78 */	mr r3, r29
/* 80140368 00109928  7F C5 F3 78 */	mr r5, r30
/* 8014036C 0010992C  38 9F 01 3D */	addi r4, r31, 0x13d
/* 80140370 00109930  4B EF A7 D9 */	bl fn_8003AB48
/* 80140374 00109934  90 61 00 A0 */	stw r3, 0xa0(r1)
/* 80140378 00109938  7F A3 EB 78 */	mr r3, r29
/* 8014037C 0010993C  7F C5 F3 78 */	mr r5, r30
/* 80140380 00109940  38 9F 01 49 */	addi r4, r31, 0x149
/* 80140384 00109944  A0 01 00 A0 */	lhz r0, 0xa0(r1)
/* 80140388 00109948  B0 1C 00 7A */	sth r0, 0x7a(r28)
/* 8014038C 0010994C  4B EF A7 BD */	bl fn_8003AB48
/* 80140390 00109950  90 61 00 9C */	stw r3, 0x9c(r1)
/* 80140394 00109954  7F A3 EB 78 */	mr r3, r29
/* 80140398 00109958  7F C5 F3 78 */	mr r5, r30
/* 8014039C 0010995C  38 9F 01 55 */	addi r4, r31, 0x155
/* 801403A0 00109960  88 01 00 9C */	lbz r0, 0x9c(r1)
/* 801403A4 00109964  98 1C 00 81 */	stb r0, 0x81(r28)
/* 801403A8 00109968  4B EF A7 A1 */	bl fn_8003AB48
/* 801403AC 0010996C  90 61 00 98 */	stw r3, 0x98(r1)
/* 801403B0 00109970  7F A3 EB 78 */	mr r3, r29
/* 801403B4 00109974  7F C5 F3 78 */	mr r5, r30
/* 801403B8 00109978  38 9F 01 63 */	addi r4, r31, 0x163
/* 801403BC 0010997C  A0 01 00 98 */	lhz r0, 0x98(r1)
/* 801403C0 00109980  B0 1C 00 8E */	sth r0, 0x8e(r28)
/* 801403C4 00109984  4B EF A7 85 */	bl fn_8003AB48
/* 801403C8 00109988  90 61 00 94 */	stw r3, 0x94(r1)
/* 801403CC 0010998C  88 01 00 94 */	lbz r0, 0x94(r1)
/* 801403D0 00109990  98 1C 00 95 */	stb r0, 0x95(r28)
.L_801403D4:
/* 801403D4 00109994  3F 60 80 50 */	lis r27, lbl_804FC280@ha
/* 801403D8 00109998  7F A3 EB 78 */	mr r3, r29
/* 801403DC 0010999C  3B 7B C2 80 */	addi r27, r27, lbl_804FC280@l
/* 801403E0 001099A0  7F C5 F3 78 */	mr r5, r30
/* 801403E4 001099A4  38 9B 01 70 */	addi r4, r27, 0x170
/* 801403E8 001099A8  4B EF A7 61 */	bl fn_8003AB48
/* 801403EC 001099AC  90 61 00 90 */	stw r3, 0x90(r1)
/* 801403F0 001099B0  88 01 00 90 */	lbz r0, 0x90(r1)
/* 801403F4 001099B4  B0 1C 00 74 */	sth r0, 0x74(r28)
/* 801403F8 001099B8  2C 00 00 00 */	cmpwi r0, 0x0
/* 801403FC 001099BC  41 82 00 74 */	beq .L_80140470
/* 80140400 001099C0  7F A3 EB 78 */	mr r3, r29
/* 80140404 001099C4  7F C5 F3 78 */	mr r5, r30
/* 80140408 001099C8  38 9B 01 7D */	addi r4, r27, 0x17d
/* 8014040C 001099CC  4B EF A7 3D */	bl fn_8003AB48
/* 80140410 001099D0  90 61 00 8C */	stw r3, 0x8c(r1)
/* 80140414 001099D4  7F A3 EB 78 */	mr r3, r29
/* 80140418 001099D8  7F C5 F3 78 */	mr r5, r30
/* 8014041C 001099DC  38 9B 01 89 */	addi r4, r27, 0x189
/* 80140420 001099E0  A0 01 00 8C */	lhz r0, 0x8c(r1)
/* 80140424 001099E4  B0 1C 00 7C */	sth r0, 0x7c(r28)
/* 80140428 001099E8  4B EF A7 21 */	bl fn_8003AB48
/* 8014042C 001099EC  90 61 00 88 */	stw r3, 0x88(r1)
/* 80140430 001099F0  7F A3 EB 78 */	mr r3, r29
/* 80140434 001099F4  7F C5 F3 78 */	mr r5, r30
/* 80140438 001099F8  38 9B 01 95 */	addi r4, r27, 0x195
/* 8014043C 001099FC  88 01 00 88 */	lbz r0, 0x88(r1)
/* 80140440 00109A00  98 1C 00 82 */	stb r0, 0x82(r28)
/* 80140444 00109A04  4B EF A7 05 */	bl fn_8003AB48
/* 80140448 00109A08  90 61 00 84 */	stw r3, 0x84(r1)
/* 8014044C 00109A0C  7F A3 EB 78 */	mr r3, r29
/* 80140450 00109A10  7F C5 F3 78 */	mr r5, r30
/* 80140454 00109A14  38 9B 01 A3 */	addi r4, r27, 0x1a3
/* 80140458 00109A18  A0 01 00 84 */	lhz r0, 0x84(r1)
/* 8014045C 00109A1C  B0 1C 00 90 */	sth r0, 0x90(r28)
/* 80140460 00109A20  4B EF A6 E9 */	bl fn_8003AB48
/* 80140464 00109A24  90 61 00 80 */	stw r3, 0x80(r1)
/* 80140468 00109A28  88 01 00 80 */	lbz r0, 0x80(r1)
/* 8014046C 00109A2C  98 1C 00 96 */	stb r0, 0x96(r28)
.L_80140470:
/* 80140470 00109A30  3F 60 80 50 */	lis r27, lbl_804FC280@ha
/* 80140474 00109A34  7F A3 EB 78 */	mr r3, r29
/* 80140478 00109A38  3B 7B C2 80 */	addi r27, r27, lbl_804FC280@l
/* 8014047C 00109A3C  7F C5 F3 78 */	mr r5, r30
/* 80140480 00109A40  38 9B 01 B0 */	addi r4, r27, 0x1b0
/* 80140484 00109A44  4B EF A6 C5 */	bl fn_8003AB48
/* 80140488 00109A48  90 61 00 7C */	stw r3, 0x7c(r1)
/* 8014048C 00109A4C  88 01 00 7C */	lbz r0, 0x7c(r1)
/* 80140490 00109A50  B0 1C 00 76 */	sth r0, 0x76(r28)
/* 80140494 00109A54  2C 00 00 00 */	cmpwi r0, 0x0
/* 80140498 00109A58  41 82 00 74 */	beq .L_8014050C
/* 8014049C 00109A5C  7F A3 EB 78 */	mr r3, r29
/* 801404A0 00109A60  7F C5 F3 78 */	mr r5, r30
/* 801404A4 00109A64  38 9B 01 BD */	addi r4, r27, 0x1bd
/* 801404A8 00109A68  4B EF A6 A1 */	bl fn_8003AB48
/* 801404AC 00109A6C  90 61 00 78 */	stw r3, 0x78(r1)
/* 801404B0 00109A70  7F A3 EB 78 */	mr r3, r29
/* 801404B4 00109A74  7F C5 F3 78 */	mr r5, r30
/* 801404B8 00109A78  38 9B 01 C9 */	addi r4, r27, 0x1c9
/* 801404BC 00109A7C  A0 01 00 78 */	lhz r0, 0x78(r1)
/* 801404C0 00109A80  B0 1C 00 7E */	sth r0, 0x7e(r28)
/* 801404C4 00109A84  4B EF A6 85 */	bl fn_8003AB48
/* 801404C8 00109A88  90 61 00 74 */	stw r3, 0x74(r1)
/* 801404CC 00109A8C  7F A3 EB 78 */	mr r3, r29
/* 801404D0 00109A90  7F C5 F3 78 */	mr r5, r30
/* 801404D4 00109A94  38 9B 01 D5 */	addi r4, r27, 0x1d5
/* 801404D8 00109A98  88 01 00 74 */	lbz r0, 0x74(r1)
/* 801404DC 00109A9C  98 1C 00 83 */	stb r0, 0x83(r28)
/* 801404E0 00109AA0  4B EF A6 69 */	bl fn_8003AB48
/* 801404E4 00109AA4  90 61 00 70 */	stw r3, 0x70(r1)
/* 801404E8 00109AA8  7F A3 EB 78 */	mr r3, r29
/* 801404EC 00109AAC  7F C5 F3 78 */	mr r5, r30
/* 801404F0 00109AB0  38 9B 01 E3 */	addi r4, r27, 0x1e3
/* 801404F4 00109AB4  A0 01 00 70 */	lhz r0, 0x70(r1)
/* 801404F8 00109AB8  B0 1C 00 92 */	sth r0, 0x92(r28)
/* 801404FC 00109ABC  4B EF A6 4D */	bl fn_8003AB48
/* 80140500 00109AC0  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80140504 00109AC4  88 01 00 6C */	lbz r0, 0x6c(r1)
/* 80140508 00109AC8  98 1C 00 97 */	stb r0, 0x97(r28)
.L_8014050C:
/* 8014050C 00109ACC  38 00 00 01 */	li r0, 0x1
/* 80140510 00109AD0  98 1C 00 6E */	stb r0, 0x6e(r28)
.L_80140514:
/* 80140514 00109AD4  3F 60 80 50 */	lis r27, lbl_804FC280@ha
/* 80140518 00109AD8  7F A3 EB 78 */	mr r3, r29
/* 8014051C 00109ADC  3B 7B C2 80 */	addi r27, r27, lbl_804FC280@l
/* 80140520 00109AE0  7F C5 F3 78 */	mr r5, r30
/* 80140524 00109AE4  38 9B 01 F0 */	addi r4, r27, 0x1f0
/* 80140528 00109AE8  4B EF A6 21 */	bl fn_8003AB48
/* 8014052C 00109AEC  90 61 00 68 */	stw r3, 0x68(r1)
/* 80140530 00109AF0  88 01 00 68 */	lbz r0, 0x68(r1)
/* 80140534 00109AF4  B0 1C 00 9A */	sth r0, 0x9a(r28)
/* 80140538 00109AF8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8014053C 00109AFC  41 82 02 D4 */	beq .L_80140810
/* 80140540 00109B00  7F A3 EB 78 */	mr r3, r29
/* 80140544 00109B04  7F C5 F3 78 */	mr r5, r30
/* 80140548 00109B08  38 9B 01 FD */	addi r4, r27, 0x1fd
/* 8014054C 00109B0C  4B EF A5 FD */	bl fn_8003AB48
/* 80140550 00109B10  90 61 00 64 */	stw r3, 0x64(r1)
/* 80140554 00109B14  7F A3 EB 78 */	mr r3, r29
/* 80140558 00109B18  7F C5 F3 78 */	mr r5, r30
/* 8014055C 00109B1C  38 9B 02 09 */	addi r4, r27, 0x209
/* 80140560 00109B20  A0 01 00 64 */	lhz r0, 0x64(r1)
/* 80140564 00109B24  B0 1C 00 A2 */	sth r0, 0xa2(r28)
/* 80140568 00109B28  4B EF A5 E1 */	bl fn_8003AB48
/* 8014056C 00109B2C  90 61 00 60 */	stw r3, 0x60(r1)
/* 80140570 00109B30  7F A3 EB 78 */	mr r3, r29
/* 80140574 00109B34  7F C5 F3 78 */	mr r5, r30
/* 80140578 00109B38  38 9B 02 15 */	addi r4, r27, 0x215
/* 8014057C 00109B3C  88 01 00 60 */	lbz r0, 0x60(r1)
/* 80140580 00109B40  98 1C 00 AA */	stb r0, 0xaa(r28)
/* 80140584 00109B44  4B EF A5 C5 */	bl fn_8003AB48
/* 80140588 00109B48  90 61 00 5C */	stw r3, 0x5c(r1)
/* 8014058C 00109B4C  7F A3 EB 78 */	mr r3, r29
/* 80140590 00109B50  7F C5 F3 78 */	mr r5, r30
/* 80140594 00109B54  38 9B 02 23 */	addi r4, r27, 0x223
/* 80140598 00109B58  A0 01 00 5C */	lhz r0, 0x5c(r1)
/* 8014059C 00109B5C  B0 1C 00 B6 */	sth r0, 0xb6(r28)
/* 801405A0 00109B60  4B EF A5 A9 */	bl fn_8003AB48
/* 801405A4 00109B64  90 61 00 58 */	stw r3, 0x58(r1)
/* 801405A8 00109B68  7F A3 EB 78 */	mr r3, r29
/* 801405AC 00109B6C  7F C5 F3 78 */	mr r5, r30
/* 801405B0 00109B70  38 9B 02 30 */	addi r4, r27, 0x230
/* 801405B4 00109B74  88 01 00 58 */	lbz r0, 0x58(r1)
/* 801405B8 00109B78  98 1C 00 BE */	stb r0, 0xbe(r28)
/* 801405BC 00109B7C  4B EF A5 8D */	bl fn_8003AB48
/* 801405C0 00109B80  90 61 00 54 */	stw r3, 0x54(r1)
/* 801405C4 00109B84  7F A3 EB 78 */	mr r3, r29
/* 801405C8 00109B88  7F C5 F3 78 */	mr r5, r30
/* 801405CC 00109B8C  38 9B 02 3D */	addi r4, r27, 0x23d
/* 801405D0 00109B90  88 01 00 54 */	lbz r0, 0x54(r1)
/* 801405D4 00109B94  98 1C 00 99 */	stb r0, 0x99(r28)
/* 801405D8 00109B98  4B EF A5 71 */	bl fn_8003AB48
/* 801405DC 00109B9C  90 61 00 50 */	stw r3, 0x50(r1)
/* 801405E0 00109BA0  7F A3 EB 78 */	mr r3, r29
/* 801405E4 00109BA4  7F C5 F3 78 */	mr r5, r30
/* 801405E8 00109BA8  38 9B 02 49 */	addi r4, r27, 0x249
/* 801405EC 00109BAC  A0 01 00 50 */	lhz r0, 0x50(r1)
/* 801405F0 00109BB0  B0 1C 00 B4 */	sth r0, 0xb4(r28)
/* 801405F4 00109BB4  4B EF A5 55 */	bl fn_8003AB48
/* 801405F8 00109BB8  90 61 00 4C */	stw r3, 0x4c(r1)
/* 801405FC 00109BBC  7F A3 EB 78 */	mr r3, r29
/* 80140600 00109BC0  7F C5 F3 78 */	mr r5, r30
/* 80140604 00109BC4  38 9B 02 53 */	addi r4, r27, 0x253
/* 80140608 00109BC8  A0 01 00 4C */	lhz r0, 0x4c(r1)
/* 8014060C 00109BCC  B0 1C 00 AE */	sth r0, 0xae(r28)
/* 80140610 00109BD0  4B EF A5 39 */	bl fn_8003AB48
/* 80140614 00109BD4  90 61 00 48 */	stw r3, 0x48(r1)
/* 80140618 00109BD8  7F A3 EB 78 */	mr r3, r29
/* 8014061C 00109BDC  7F C5 F3 78 */	mr r5, r30
/* 80140620 00109BE0  38 9B 02 5D */	addi r4, r27, 0x25d
/* 80140624 00109BE4  A0 01 00 48 */	lhz r0, 0x48(r1)
/* 80140628 00109BE8  B0 1C 00 B0 */	sth r0, 0xb0(r28)
/* 8014062C 00109BEC  4B EF A5 1D */	bl fn_8003AB48
/* 80140630 00109BF0  90 61 00 44 */	stw r3, 0x44(r1)
/* 80140634 00109BF4  7F A3 EB 78 */	mr r3, r29
/* 80140638 00109BF8  7F C5 F3 78 */	mr r5, r30
/* 8014063C 00109BFC  38 9B 02 67 */	addi r4, r27, 0x267
/* 80140640 00109C00  A0 01 00 44 */	lhz r0, 0x44(r1)
/* 80140644 00109C04  B0 1C 00 B2 */	sth r0, 0xb2(r28)
/* 80140648 00109C08  4B EF A5 01 */	bl fn_8003AB48
/* 8014064C 00109C0C  90 61 00 40 */	stw r3, 0x40(r1)
/* 80140650 00109C10  88 01 00 40 */	lbz r0, 0x40(r1)
/* 80140654 00109C14  B0 1C 00 9C */	sth r0, 0x9c(r28)
/* 80140658 00109C18  2C 00 00 00 */	cmpwi r0, 0x0
/* 8014065C 00109C1C  41 82 00 74 */	beq .L_801406D0
/* 80140660 00109C20  7F A3 EB 78 */	mr r3, r29
/* 80140664 00109C24  7F C5 F3 78 */	mr r5, r30
/* 80140668 00109C28  38 9B 02 74 */	addi r4, r27, 0x274
/* 8014066C 00109C2C  4B EF A4 DD */	bl fn_8003AB48
/* 80140670 00109C30  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80140674 00109C34  7F A3 EB 78 */	mr r3, r29
/* 80140678 00109C38  7F C5 F3 78 */	mr r5, r30
/* 8014067C 00109C3C  38 9B 02 80 */	addi r4, r27, 0x280
/* 80140680 00109C40  A0 01 00 3C */	lhz r0, 0x3c(r1)
/* 80140684 00109C44  B0 1C 00 A4 */	sth r0, 0xa4(r28)
/* 80140688 00109C48  4B EF A4 C1 */	bl fn_8003AB48
/* 8014068C 00109C4C  90 61 00 38 */	stw r3, 0x38(r1)
/* 80140690 00109C50  7F A3 EB 78 */	mr r3, r29
/* 80140694 00109C54  7F C5 F3 78 */	mr r5, r30
/* 80140698 00109C58  38 9B 02 8C */	addi r4, r27, 0x28c
/* 8014069C 00109C5C  88 01 00 38 */	lbz r0, 0x38(r1)
/* 801406A0 00109C60  98 1C 00 AB */	stb r0, 0xab(r28)
/* 801406A4 00109C64  4B EF A4 A5 */	bl fn_8003AB48
/* 801406A8 00109C68  90 61 00 34 */	stw r3, 0x34(r1)
/* 801406AC 00109C6C  7F A3 EB 78 */	mr r3, r29
/* 801406B0 00109C70  7F C5 F3 78 */	mr r5, r30
/* 801406B4 00109C74  38 9B 02 9A */	addi r4, r27, 0x29a
/* 801406B8 00109C78  A0 01 00 34 */	lhz r0, 0x34(r1)
/* 801406BC 00109C7C  B0 1C 00 B8 */	sth r0, 0xb8(r28)
/* 801406C0 00109C80  4B EF A4 89 */	bl fn_8003AB48
/* 801406C4 00109C84  90 61 00 30 */	stw r3, 0x30(r1)
/* 801406C8 00109C88  88 01 00 30 */	lbz r0, 0x30(r1)
/* 801406CC 00109C8C  98 1C 00 BF */	stb r0, 0xbf(r28)
.L_801406D0:
/* 801406D0 00109C90  3F 60 80 50 */	lis r27, lbl_804FC280@ha
/* 801406D4 00109C94  7F A3 EB 78 */	mr r3, r29
/* 801406D8 00109C98  3B 7B C2 80 */	addi r27, r27, lbl_804FC280@l
/* 801406DC 00109C9C  7F C5 F3 78 */	mr r5, r30
/* 801406E0 00109CA0  38 9B 02 A7 */	addi r4, r27, 0x2a7
/* 801406E4 00109CA4  4B EF A4 65 */	bl fn_8003AB48
/* 801406E8 00109CA8  90 61 00 2C */	stw r3, 0x2c(r1)
/* 801406EC 00109CAC  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 801406F0 00109CB0  B0 1C 00 9E */	sth r0, 0x9e(r28)
/* 801406F4 00109CB4  2C 00 00 00 */	cmpwi r0, 0x0
/* 801406F8 00109CB8  41 82 00 74 */	beq .L_8014076C
/* 801406FC 00109CBC  7F A3 EB 78 */	mr r3, r29
/* 80140700 00109CC0  7F C5 F3 78 */	mr r5, r30
/* 80140704 00109CC4  38 9B 02 B4 */	addi r4, r27, 0x2b4
/* 80140708 00109CC8  4B EF A4 41 */	bl fn_8003AB48
/* 8014070C 00109CCC  90 61 00 28 */	stw r3, 0x28(r1)
/* 80140710 00109CD0  7F A3 EB 78 */	mr r3, r29
/* 80140714 00109CD4  7F C5 F3 78 */	mr r5, r30
/* 80140718 00109CD8  38 9B 02 C0 */	addi r4, r27, 0x2c0
/* 8014071C 00109CDC  A0 01 00 28 */	lhz r0, 0x28(r1)
/* 80140720 00109CE0  B0 1C 00 A6 */	sth r0, 0xa6(r28)
/* 80140724 00109CE4  4B EF A4 25 */	bl fn_8003AB48
/* 80140728 00109CE8  90 61 00 24 */	stw r3, 0x24(r1)
/* 8014072C 00109CEC  7F A3 EB 78 */	mr r3, r29
/* 80140730 00109CF0  7F C5 F3 78 */	mr r5, r30
/* 80140734 00109CF4  38 9B 02 CC */	addi r4, r27, 0x2cc
/* 80140738 00109CF8  88 01 00 24 */	lbz r0, 0x24(r1)
/* 8014073C 00109CFC  98 1C 00 AC */	stb r0, 0xac(r28)
/* 80140740 00109D00  4B EF A4 09 */	bl fn_8003AB48
/* 80140744 00109D04  90 61 00 20 */	stw r3, 0x20(r1)
/* 80140748 00109D08  7F A3 EB 78 */	mr r3, r29
/* 8014074C 00109D0C  7F C5 F3 78 */	mr r5, r30
/* 80140750 00109D10  38 9B 02 DA */	addi r4, r27, 0x2da
/* 80140754 00109D14  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 80140758 00109D18  B0 1C 00 BA */	sth r0, 0xba(r28)
/* 8014075C 00109D1C  4B EF A3 ED */	bl fn_8003AB48
/* 80140760 00109D20  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80140764 00109D24  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 80140768 00109D28  98 1C 00 C0 */	stb r0, 0xc0(r28)
.L_8014076C:
/* 8014076C 00109D2C  3F 60 80 50 */	lis r27, lbl_804FC280@ha
/* 80140770 00109D30  7F A3 EB 78 */	mr r3, r29
/* 80140774 00109D34  3B 7B C2 80 */	addi r27, r27, lbl_804FC280@l
/* 80140778 00109D38  7F C5 F3 78 */	mr r5, r30
/* 8014077C 00109D3C  38 9B 02 E7 */	addi r4, r27, 0x2e7
/* 80140780 00109D40  4B EF A3 C9 */	bl fn_8003AB48
/* 80140784 00109D44  90 61 00 18 */	stw r3, 0x18(r1)
/* 80140788 00109D48  88 01 00 18 */	lbz r0, 0x18(r1)
/* 8014078C 00109D4C  B0 1C 00 A0 */	sth r0, 0xa0(r28)
/* 80140790 00109D50  2C 00 00 00 */	cmpwi r0, 0x0
/* 80140794 00109D54  41 82 00 74 */	beq .L_80140808
/* 80140798 00109D58  7F A3 EB 78 */	mr r3, r29
/* 8014079C 00109D5C  7F C5 F3 78 */	mr r5, r30
/* 801407A0 00109D60  38 9B 02 F4 */	addi r4, r27, 0x2f4
/* 801407A4 00109D64  4B EF A3 A5 */	bl fn_8003AB48
/* 801407A8 00109D68  90 61 00 14 */	stw r3, 0x14(r1)
/* 801407AC 00109D6C  7F A3 EB 78 */	mr r3, r29
/* 801407B0 00109D70  7F C5 F3 78 */	mr r5, r30
/* 801407B4 00109D74  38 9B 03 00 */	addi r4, r27, 0x300
/* 801407B8 00109D78  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 801407BC 00109D7C  B0 1C 00 A8 */	sth r0, 0xa8(r28)
/* 801407C0 00109D80  4B EF A3 89 */	bl fn_8003AB48
/* 801407C4 00109D84  90 61 00 10 */	stw r3, 0x10(r1)
/* 801407C8 00109D88  7F A3 EB 78 */	mr r3, r29
/* 801407CC 00109D8C  7F C5 F3 78 */	mr r5, r30
/* 801407D0 00109D90  38 9B 03 0C */	addi r4, r27, 0x30c
/* 801407D4 00109D94  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801407D8 00109D98  98 1C 00 AD */	stb r0, 0xad(r28)
/* 801407DC 00109D9C  4B EF A3 6D */	bl fn_8003AB48
/* 801407E0 00109DA0  90 61 00 0C */	stw r3, 0xc(r1)
/* 801407E4 00109DA4  7F A3 EB 78 */	mr r3, r29
/* 801407E8 00109DA8  7F C5 F3 78 */	mr r5, r30
/* 801407EC 00109DAC  38 9B 03 1A */	addi r4, r27, 0x31a
/* 801407F0 00109DB0  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 801407F4 00109DB4  B0 1C 00 BC */	sth r0, 0xbc(r28)
/* 801407F8 00109DB8  4B EF A3 51 */	bl fn_8003AB48
/* 801407FC 00109DBC  90 61 00 08 */	stw r3, 0x8(r1)
/* 80140800 00109DC0  88 01 00 08 */	lbz r0, 0x8(r1)
/* 80140804 00109DC4  98 1C 00 C1 */	stb r0, 0xc1(r28)
.L_80140808:
/* 80140808 00109DC8  38 00 00 01 */	li r0, 0x1
/* 8014080C 00109DCC  98 1C 00 98 */	stb r0, 0x98(r28)
.L_80140810:
/* 80140810 00109DD0  2C 1E 03 E8 */	cmpwi r30, 0x3e8
/* 80140814 00109DD4  38 60 FF FF */	li r3, -0x1
/* 80140818 00109DD8  40 80 00 08 */	bge .L_80140820
/* 8014081C 00109DDC  38 7E 02 20 */	addi r3, r30, 0x220
.L_80140820:
/* 80140820 00109DE0  4B F5 C7 6D */	bl fn_8009CF8C
/* 80140824 00109DE4  90 7C 00 04 */	stw r3, 0x4(r28)
/* 80140828 00109DE8  A0 7C 00 52 */	lhz r3, 0x52(r28)
/* 8014082C 00109DEC  4B F5 E4 91 */	bl fn_8009ECBC
/* 80140830 00109DF0  88 1C 00 00 */	lbz r0, 0x0(r28)
/* 80140834 00109DF4  90 7C 00 C4 */	stw r3, 0xc4(r28)
/* 80140838 00109DF8  54 00 06 3C */	rlwinm r0, r0, 0, 24, 30
/* 8014083C 00109DFC  98 1C 00 00 */	stb r0, 0x0(r28)
/* 80140840 00109E00  BB 61 01 1C */	lmw r27, 0x11c(r1)
/* 80140844 00109E04  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80140848 00109E08  7C 08 03 A6 */	mtlr r0
/* 8014084C 00109E0C  38 21 01 30 */	addi r1, r1, 0x130
/* 80140850 00109E10  4E 80 00 20 */	blr
.endfn fn_8013FFF8

.fn fn_80140854, global
/* 80140854 00109E14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80140858 00109E18  7C 08 02 A6 */	mflr r0
/* 8014085C 00109E1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80140860 00109E20  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80140864 00109E24  7C 7C 1B 78 */	mr r28, r3
/* 80140868 00109E28  7C 9D 23 78 */	mr r29, r4
/* 8014086C 00109E2C  7C BE 2B 78 */	mr r30, r5
/* 80140870 00109E30  88 03 00 00 */	lbz r0, 0x0(r3)
/* 80140874 00109E34  54 00 07 FF */	clrlwi. r0, r0, 31
/* 80140878 00109E38  41 82 00 0C */	beq .L_80140884
/* 8014087C 00109E3C  38 60 00 00 */	li r3, 0x0
/* 80140880 00109E40  48 00 02 68 */	b .L_80140AE8
.L_80140884:
/* 80140884 00109E44  80 E3 00 04 */	lwz r7, 0x4(r3)
/* 80140888 00109E48  38 07 FF 04 */	addi r0, r7, -0xfc
/* 8014088C 00109E4C  28 00 00 03 */	cmplwi r0, 0x3
/* 80140890 00109E50  41 81 00 0C */	bgt .L_8014089C
/* 80140894 00109E54  38 60 00 01 */	li r3, 0x1
/* 80140898 00109E58  48 00 02 50 */	b .L_80140AE8
.L_8014089C:
/* 8014089C 00109E5C  1C 04 00 2A */	mulli r0, r4, 0x2a
/* 801408A0 00109E60  54 A8 08 3C */	slwi r8, r5, 1
/* 801408A4 00109E64  7C C3 02 14 */	add r6, r3, r0
/* 801408A8 00109E68  3B E6 00 6E */	addi r31, r6, 0x6e
/* 801408AC 00109E6C  38 DF 00 02 */	addi r6, r31, 0x2
/* 801408B0 00109E70  7D 26 42 2E */	lhzx r9, r6, r8
/* 801408B4 00109E74  28 09 00 02 */	cmplwi r9, 0x2
/* 801408B8 00109E78  40 82 00 E0 */	bne .L_80140998
/* 801408BC 00109E7C  54 9B 10 3A */	slwi r27, r4, 2
/* 801408C0 00109E80  80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 801408C4 00109E84  7C 05 DA 14 */	add r0, r5, r27
/* 801408C8 00109E88  7C 03 00 AE */	lbzx r0, r3, r0
/* 801408CC 00109E8C  7C 00 07 74 */	extsb r0, r0
/* 801408D0 00109E90  2C 00 00 01 */	cmpwi r0, 0x1
/* 801408D4 00109E94  41 80 00 0C */	blt .L_801408E0
/* 801408D8 00109E98  38 60 00 01 */	li r3, 0x1
/* 801408DC 00109E9C  48 00 02 0C */	b .L_80140AE8
.L_801408E0:
/* 801408E0 00109EA0  7C 7F 42 14 */	add r3, r31, r8
/* 801408E4 00109EA4  A0 63 00 0A */	lhz r3, 0xa(r3)
/* 801408E8 00109EA8  48 01 77 81 */	bl fn_80158068
/* 801408EC 00109EAC  7C 9F F2 14 */	add r4, r31, r30
/* 801408F0 00109EB0  88 04 00 12 */	lbz r0, 0x12(r4)
/* 801408F4 00109EB4  7C 03 00 00 */	cmpw r3, r0
/* 801408F8 00109EB8  41 80 00 0C */	blt .L_80140904
/* 801408FC 00109EBC  38 60 00 01 */	li r3, 0x1
/* 80140900 00109EC0  48 00 01 E8 */	b .L_80140AE8
.L_80140904:
/* 80140904 00109EC4  88 1F 00 01 */	lbz r0, 0x1(r31)
/* 80140908 00109EC8  2C 00 00 00 */	cmpwi r0, 0x0
/* 8014090C 00109ECC  41 82 00 84 */	beq .L_80140990
/* 80140910 00109ED0  57 C0 18 38 */	slwi r0, r30, 3
/* 80140914 00109ED4  3C 60 80 50 */	lis r3, lbl_804FC260@ha
/* 80140918 00109ED8  38 63 C2 60 */	addi r3, r3, lbl_804FC260@l
/* 8014091C 00109EDC  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 80140920 00109EE0  7C 1B 02 14 */	add r0, r27, r0
/* 80140924 00109EE4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80140928 00109EE8  7C 00 20 00 */	cmpw r0, r4
/* 8014092C 00109EEC  41 81 00 64 */	bgt .L_80140990
/* 80140930 00109EF0  7F A0 00 34 */	cntlzw r0, r29
/* 80140934 00109EF4  54 00 E8 FA */	rlwinm r0, r0, 29, 3, 29
/* 80140938 00109EF8  7C 03 00 6E */	lwzux r0, r3, r0
/* 8014093C 00109EFC  7C 04 00 00 */	cmpw r4, r0
/* 80140940 00109F00  40 82 00 0C */	bne .L_8014094C
/* 80140944 00109F04  38 60 00 00 */	li r3, 0x0
/* 80140948 00109F08  48 00 01 A0 */	b .L_80140AE8
.L_8014094C:
/* 8014094C 00109F0C  80 03 00 08 */	lwz r0, 0x8(r3)
/* 80140950 00109F10  7C 04 00 00 */	cmpw r4, r0
/* 80140954 00109F14  40 82 00 0C */	bne .L_80140960
/* 80140958 00109F18  38 60 00 00 */	li r3, 0x0
/* 8014095C 00109F1C  48 00 01 8C */	b .L_80140AE8
.L_80140960:
/* 80140960 00109F20  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80140964 00109F24  7C 04 00 00 */	cmpw r4, r0
/* 80140968 00109F28  40 82 00 0C */	bne .L_80140974
/* 8014096C 00109F2C  38 60 00 00 */	li r3, 0x0
/* 80140970 00109F30  48 00 01 78 */	b .L_80140AE8
.L_80140974:
/* 80140974 00109F34  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80140978 00109F38  7C 04 00 00 */	cmpw r4, r0
/* 8014097C 00109F3C  40 82 00 0C */	bne .L_80140988
/* 80140980 00109F40  38 60 00 00 */	li r3, 0x0
/* 80140984 00109F44  48 00 01 64 */	b .L_80140AE8
.L_80140988:
/* 80140988 00109F48  38 60 00 01 */	li r3, 0x1
/* 8014098C 00109F4C  48 00 01 5C */	b .L_80140AE8
.L_80140990:
/* 80140990 00109F50  38 60 00 00 */	li r3, 0x0
/* 80140994 00109F54  48 00 01 54 */	b .L_80140AE8
.L_80140998:
/* 80140998 00109F58  28 09 00 03 */	cmplwi r9, 0x3
/* 8014099C 00109F5C  41 82 00 18 */	beq .L_801409B4
/* 801409A0 00109F60  3C C9 00 01 */	addis r6, r9, 0x1
/* 801409A4 00109F64  38 06 FF FB */	addi r0, r6, -0x5
/* 801409A8 00109F68  54 00 04 3E */	clrlwi r0, r0, 16
/* 801409AC 00109F6C  28 00 00 01 */	cmplwi r0, 0x1
/* 801409B0 00109F70  41 81 00 B8 */	bgt .L_80140A68
.L_801409B4:
/* 801409B4 00109F74  54 86 10 3A */	slwi r6, r4, 2
/* 801409B8 00109F78  80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 801409BC 00109F7C  7C 05 32 14 */	add r0, r5, r6
/* 801409C0 00109F80  7C 03 00 AE */	lbzx r0, r3, r0
/* 801409C4 00109F84  7C 00 07 74 */	extsb r0, r0
/* 801409C8 00109F88  2C 00 00 01 */	cmpwi r0, 0x1
/* 801409CC 00109F8C  41 80 00 0C */	blt .L_801409D8
/* 801409D0 00109F90  38 60 00 01 */	li r3, 0x1
/* 801409D4 00109F94  48 00 01 14 */	b .L_80140AE8
.L_801409D8:
/* 801409D8 00109F98  88 1F 00 01 */	lbz r0, 0x1(r31)
/* 801409DC 00109F9C  2C 00 00 00 */	cmpwi r0, 0x0
/* 801409E0 00109FA0  41 82 00 80 */	beq .L_80140A60
/* 801409E4 00109FA4  54 A0 18 38 */	slwi r0, r5, 3
/* 801409E8 00109FA8  3C 60 80 50 */	lis r3, lbl_804FC260@ha
/* 801409EC 00109FAC  38 63 C2 60 */	addi r3, r3, lbl_804FC260@l
/* 801409F0 00109FB0  7C 06 02 14 */	add r0, r6, r0
/* 801409F4 00109FB4  7C 03 00 2E */	lwzx r0, r3, r0
/* 801409F8 00109FB8  7C 00 38 00 */	cmpw r0, r7
/* 801409FC 00109FBC  41 81 00 64 */	bgt .L_80140A60
/* 80140A00 00109FC0  7C 80 00 34 */	cntlzw r0, r4
/* 80140A04 00109FC4  54 00 E8 FA */	rlwinm r0, r0, 29, 3, 29
/* 80140A08 00109FC8  7C 03 00 6E */	lwzux r0, r3, r0
/* 80140A0C 00109FCC  7C 07 00 00 */	cmpw r7, r0
/* 80140A10 00109FD0  40 82 00 0C */	bne .L_80140A1C
/* 80140A14 00109FD4  38 60 00 00 */	li r3, 0x0
/* 80140A18 00109FD8  48 00 00 D0 */	b .L_80140AE8
.L_80140A1C:
/* 80140A1C 00109FDC  80 03 00 08 */	lwz r0, 0x8(r3)
/* 80140A20 00109FE0  7C 07 00 00 */	cmpw r7, r0
/* 80140A24 00109FE4  40 82 00 0C */	bne .L_80140A30
/* 80140A28 00109FE8  38 60 00 00 */	li r3, 0x0
/* 80140A2C 00109FEC  48 00 00 BC */	b .L_80140AE8
.L_80140A30:
/* 80140A30 00109FF0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80140A34 00109FF4  7C 07 00 00 */	cmpw r7, r0
/* 80140A38 00109FF8  40 82 00 0C */	bne .L_80140A44
/* 80140A3C 00109FFC  38 60 00 00 */	li r3, 0x0
/* 80140A40 0010A000  48 00 00 A8 */	b .L_80140AE8
.L_80140A44:
/* 80140A44 0010A004  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80140A48 0010A008  7C 07 00 00 */	cmpw r7, r0
/* 80140A4C 0010A00C  40 82 00 0C */	bne .L_80140A58
/* 80140A50 0010A010  38 60 00 00 */	li r3, 0x0
/* 80140A54 0010A014  48 00 00 94 */	b .L_80140AE8
.L_80140A58:
/* 80140A58 0010A018  38 60 00 01 */	li r3, 0x1
/* 80140A5C 0010A01C  48 00 00 8C */	b .L_80140AE8
.L_80140A60:
/* 80140A60 0010A020  38 60 00 00 */	li r3, 0x0
/* 80140A64 0010A024  48 00 00 84 */	b .L_80140AE8
.L_80140A68:
/* 80140A68 0010A028  28 09 00 04 */	cmplwi r9, 0x4
/* 80140A6C 0010A02C  40 82 00 50 */	bne .L_80140ABC
/* 80140A70 0010A030  7C 9F 42 14 */	add r4, r31, r8
/* 80140A74 0010A034  38 60 FF FF */	li r3, -0x1
/* 80140A78 0010A038  A0 84 00 0A */	lhz r4, 0xa(r4)
/* 80140A7C 0010A03C  2C 04 03 E8 */	cmpwi r4, 0x3e8
/* 80140A80 0010A040  40 80 00 08 */	bge .L_80140A88
/* 80140A84 0010A044  38 64 02 20 */	addi r3, r4, 0x220
.L_80140A88:
/* 80140A88 0010A048  2C 03 FF FF */	cmpwi r3, -0x1
/* 80140A8C 0010A04C  40 82 00 0C */	bne .L_80140A98
/* 80140A90 0010A050  38 60 00 00 */	li r3, 0x0
/* 80140A94 0010A054  48 00 00 54 */	b .L_80140AE8
.L_80140A98:
/* 80140A98 0010A058  4B F5 C4 F5 */	bl fn_8009CF8C
/* 80140A9C 0010A05C  38 83 FF 02 */	addi r4, r3, -0xfe
/* 80140AA0 0010A060  38 60 00 01 */	li r3, 0x1
/* 80140AA4 0010A064  20 04 00 01 */	subfic r0, r4, 0x1
/* 80140AA8 0010A068  7C 63 23 38 */	orc r3, r3, r4
/* 80140AAC 0010A06C  54 00 F8 7E */	srwi r0, r0, 1
/* 80140AB0 0010A070  7C 00 18 50 */	subf r0, r0, r3
/* 80140AB4 0010A074  54 03 0F FE */	srwi r3, r0, 31
/* 80140AB8 0010A078  48 00 00 30 */	b .L_80140AE8
.L_80140ABC:
/* 80140ABC 0010A07C  80 C3 00 C4 */	lwz r6, 0xc4(r3)
/* 80140AC0 0010A080  7C 7F 2A 14 */	add r3, r31, r5
/* 80140AC4 0010A084  88 03 00 12 */	lbz r0, 0x12(r3)
/* 80140AC8 0010A088  54 84 10 3A */	slwi r4, r4, 2
/* 80140ACC 0010A08C  7C 65 32 14 */	add r3, r5, r6
/* 80140AD0 0010A090  7C 84 18 AE */	lbzx r4, r4, r3
/* 80140AD4 0010A094  54 03 0F FE */	srwi r3, r0, 31
/* 80140AD8 0010A098  7C 85 07 74 */	extsb r5, r4
/* 80140ADC 0010A09C  7C A4 FE 70 */	srawi r4, r5, 31
/* 80140AE0 0010A0A0  7C 00 28 10 */	subfc r0, r0, r5
/* 80140AE4 0010A0A4  7C 64 19 14 */	adde r3, r4, r3
.L_80140AE8:
/* 80140AE8 0010A0A8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80140AEC 0010A0AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80140AF0 0010A0B0  7C 08 03 A6 */	mtlr r0
/* 80140AF4 0010A0B4  38 21 00 20 */	addi r1, r1, 0x20
/* 80140AF8 0010A0B8  4E 80 00 20 */	blr
.endfn fn_80140854

.fn fn_80140AFC, global
/* 80140AFC 0010A0BC  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80140B00 0010A0C0  7C 08 02 A6 */	mflr r0
/* 80140B04 0010A0C4  38 80 00 00 */	li r4, 0x0
/* 80140B08 0010A0C8  38 A0 00 C8 */	li r5, 0xc8
/* 80140B0C 0010A0CC  90 01 01 24 */	stw r0, 0x124(r1)
/* 80140B10 0010A0D0  BE 81 00 F0 */	stmw r20, 0xf0(r1)
/* 80140B14 0010A0D4  3E A0 80 57 */	lis r21, lbl_80577448@ha
/* 80140B18 0010A0D8  7C 79 1B 78 */	mr r25, r3
/* 80140B1C 0010A0DC  38 75 74 48 */	addi r3, r21, lbl_80577448@l
/* 80140B20 0010A0E0  4B EC 38 31 */	bl memset
/* 80140B24 0010A0E4  88 15 74 48 */	lbz r0, lbl_80577448@l(r21)
/* 80140B28 0010A0E8  60 00 00 01 */	ori r0, r0, 0x1
/* 80140B2C 0010A0EC  98 15 74 48 */	stb r0, lbl_80577448@l(r21)
/* 80140B30 0010A0F0  4B EF 9F 05 */	bl fn_8003AA34
/* 80140B34 0010A0F4  3C 60 80 50 */	lis r3, lbl_804FC1D0@ha
/* 80140B38 0010A0F8  3F A0 80 57 */	lis r29, lbl_80577510@ha
/* 80140B3C 0010A0FC  38 63 C1 D0 */	addi r3, r3, lbl_804FC1D0@l
/* 80140B40 0010A100  38 00 00 0E */	li r0, 0xe
/* 80140B44 0010A104  3B BD 75 10 */	addi r29, r29, lbl_80577510@l
/* 80140B48 0010A108  3B 81 00 80 */	addi r28, r1, 0x80
/* 80140B4C 0010A10C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80140B50 0010A110  38 83 FF FC */	addi r4, r3, -0x4
/* 80140B54 0010A114  3B 60 00 00 */	li r27, 0x0
/* 80140B58 0010A118  7C 09 03 A6 */	mtctr r0
.L_80140B5C:
/* 80140B5C 0010A11C  80 64 00 04 */	lwz r3, 0x4(r4)
/* 80140B60 0010A120  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 80140B64 0010A124  90 65 00 04 */	stw r3, 0x4(r5)
/* 80140B68 0010A128  94 05 00 08 */	stwu r0, 0x8(r5)
/* 80140B6C 0010A12C  42 00 FF F0 */	bdnz .L_80140B5C
/* 80140B70 0010A130  3E E0 80 57 */	lis r23, lbl_80577448@ha
/* 80140B74 0010A134  3E C0 80 50 */	lis r22, lbl_804FC280@ha
/* 80140B78 0010A138  3A A0 00 0E */	li r21, 0xe
/* 80140B7C 0010A13C  3A D6 C2 80 */	addi r22, r22, lbl_804FC280@l
/* 80140B80 0010A140  3B 17 74 48 */	addi r24, r23, lbl_80577448@l
.L_80140B84:
/* 80140B84 0010A144  83 DD 00 00 */	lwz r30, 0x0(r29)
/* 80140B88 0010A148  7F C3 F3 78 */	mr r3, r30
/* 80140B8C 0010A14C  4B EF A6 61 */	bl fn_8003B1EC
/* 80140B90 0010A150  7C 7F 1B 78 */	mr r31, r3
/* 80140B94 0010A154  3B 40 00 00 */	li r26, 0x0
/* 80140B98 0010A158  48 00 00 D8 */	b .L_80140C70
.L_80140B9C:
/* 80140B9C 0010A15C  38 A1 00 7C */	addi r5, r1, 0x7c
/* 80140BA0 0010A160  38 81 00 0C */	addi r4, r1, 0xc
/* 80140BA4 0010A164  7E A9 03 A6 */	mtctr r21
.L_80140BA8:
/* 80140BA8 0010A168  80 64 00 04 */	lwz r3, 0x4(r4)
/* 80140BAC 0010A16C  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 80140BB0 0010A170  90 65 00 04 */	stw r3, 0x4(r5)
/* 80140BB4 0010A174  94 05 00 08 */	stwu r0, 0x8(r5)
/* 80140BB8 0010A178  42 00 FF F0 */	bdnz .L_80140BA8
/* 80140BBC 0010A17C  80 1C 00 00 */	lwz r0, 0x0(r28)
/* 80140BC0 0010A180  7F C3 F3 78 */	mr r3, r30
/* 80140BC4 0010A184  38 96 00 32 */	addi r4, r22, 0x32
/* 80140BC8 0010A188  7E 9A 02 14 */	add r20, r26, r0
/* 80140BCC 0010A18C  7E 85 A3 78 */	mr r5, r20
/* 80140BD0 0010A190  4B EF 9F 79 */	bl fn_8003AB48
/* 80140BD4 0010A194  90 61 00 08 */	stw r3, 0x8(r1)
/* 80140BD8 0010A198  A0 01 00 08 */	lhz r0, 0x8(r1)
/* 80140BDC 0010A19C  7C 00 C8 00 */	cmpw r0, r25
/* 80140BE0 0010A1A0  40 82 00 8C */	bne .L_80140C6C
/* 80140BE4 0010A1A4  7F C4 F3 78 */	mr r4, r30
/* 80140BE8 0010A1A8  7E 85 A3 78 */	mr r5, r20
/* 80140BEC 0010A1AC  38 77 74 48 */	addi r3, r23, lbl_80577448@l
/* 80140BF0 0010A1B0  4B FF F4 09 */	bl fn_8013FFF8
/* 80140BF4 0010A1B4  88 18 00 09 */	lbz r0, 0x9(r24)
/* 80140BF8 0010A1B8  2C 00 00 00 */	cmpwi r0, 0x0
/* 80140BFC 0010A1BC  40 82 00 70 */	bne .L_80140C6C
/* 80140C00 0010A1C0  A0 98 00 52 */	lhz r4, 0x52(r24)
/* 80140C04 0010A1C4  38 60 FF FF */	li r3, -0x1
/* 80140C08 0010A1C8  2C 04 03 E8 */	cmpwi r4, 0x3e8
/* 80140C0C 0010A1CC  40 80 00 08 */	bge .L_80140C14
/* 80140C10 0010A1D0  38 64 02 20 */	addi r3, r4, 0x220
.L_80140C14:
/* 80140C14 0010A1D4  2C 03 FF FF */	cmpwi r3, -0x1
/* 80140C18 0010A1D8  40 82 00 0C */	bne .L_80140C24
/* 80140C1C 0010A1DC  38 60 00 00 */	li r3, 0x0
/* 80140C20 0010A1E0  48 00 00 70 */	b .L_80140C90
.L_80140C24:
/* 80140C24 0010A1E4  4B F5 C3 69 */	bl fn_8009CF8C
/* 80140C28 0010A1E8  2C 03 00 01 */	cmpwi r3, 0x1
/* 80140C2C 0010A1EC  90 78 00 04 */	stw r3, 0x4(r24)
/* 80140C30 0010A1F0  40 82 00 0C */	bne .L_80140C3C
/* 80140C34 0010A1F4  7F 03 C3 78 */	mr r3, r24
/* 80140C38 0010A1F8  48 00 00 58 */	b .L_80140C90
.L_80140C3C:
/* 80140C3C 0010A1FC  2C 03 00 02 */	cmpwi r3, 0x2
/* 80140C40 0010A200  40 82 00 0C */	bne .L_80140C4C
/* 80140C44 0010A204  7F 03 C3 78 */	mr r3, r24
/* 80140C48 0010A208  48 00 00 48 */	b .L_80140C90
.L_80140C4C:
/* 80140C4C 0010A20C  2C 03 00 FC */	cmpwi r3, 0xfc
/* 80140C50 0010A210  40 82 00 0C */	bne .L_80140C5C
/* 80140C54 0010A214  7F 03 C3 78 */	mr r3, r24
/* 80140C58 0010A218  48 00 00 38 */	b .L_80140C90
.L_80140C5C:
/* 80140C5C 0010A21C  2C 03 00 FD */	cmpwi r3, 0xfd
/* 80140C60 0010A220  40 82 00 0C */	bne .L_80140C6C
/* 80140C64 0010A224  7F 03 C3 78 */	mr r3, r24
/* 80140C68 0010A228  48 00 00 28 */	b .L_80140C90
.L_80140C6C:
/* 80140C6C 0010A22C  3B 5A 00 01 */	addi r26, r26, 0x1
.L_80140C70:
/* 80140C70 0010A230  7C 1A F8 00 */	cmpw r26, r31
/* 80140C74 0010A234  41 80 FF 28 */	blt .L_80140B9C
/* 80140C78 0010A238  3B 7B 00 01 */	addi r27, r27, 0x1
/* 80140C7C 0010A23C  3B 9C 00 04 */	addi r28, r28, 0x4
/* 80140C80 0010A240  2C 1B 00 1C */	cmpwi r27, 0x1c
/* 80140C84 0010A244  3B BD 00 04 */	addi r29, r29, 0x4
/* 80140C88 0010A248  41 80 FE FC */	blt .L_80140B84
/* 80140C8C 0010A24C  38 60 00 00 */	li r3, 0x0
.L_80140C90:
/* 80140C90 0010A250  BA 81 00 F0 */	lmw r20, 0xf0(r1)
/* 80140C94 0010A254  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80140C98 0010A258  7C 08 03 A6 */	mtlr r0
/* 80140C9C 0010A25C  38 21 01 20 */	addi r1, r1, 0x120
/* 80140CA0 0010A260  4E 80 00 20 */	blr
.endfn fn_80140AFC

.fn fn_80140CA4, global
/* 80140CA4 0010A264  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 80140CA8 0010A268  7C 08 02 A6 */	mflr r0
/* 80140CAC 0010A26C  38 80 00 00 */	li r4, 0x0
/* 80140CB0 0010A270  38 A0 00 C8 */	li r5, 0xc8
/* 80140CB4 0010A274  90 01 01 24 */	stw r0, 0x124(r1)
/* 80140CB8 0010A278  BE 81 00 F0 */	stmw r20, 0xf0(r1)
/* 80140CBC 0010A27C  3E A0 80 57 */	lis r21, lbl_80577448@ha
/* 80140CC0 0010A280  7C 79 1B 78 */	mr r25, r3
/* 80140CC4 0010A284  38 75 74 48 */	addi r3, r21, lbl_80577448@l
/* 80140CC8 0010A288  4B EC 36 89 */	bl memset
/* 80140CCC 0010A28C  88 15 74 48 */	lbz r0, lbl_80577448@l(r21)
/* 80140CD0 0010A290  60 00 00 01 */	ori r0, r0, 0x1
/* 80140CD4 0010A294  98 15 74 48 */	stb r0, lbl_80577448@l(r21)
/* 80140CD8 0010A298  4B EF 9D 5D */	bl fn_8003AA34
/* 80140CDC 0010A29C  3C 60 80 50 */	lis r3, lbl_804FC1D0@ha
/* 80140CE0 0010A2A0  3F C0 80 57 */	lis r30, lbl_80577510@ha
/* 80140CE4 0010A2A4  38 63 C1 D0 */	addi r3, r3, lbl_804FC1D0@l
/* 80140CE8 0010A2A8  38 00 00 0E */	li r0, 0xe
/* 80140CEC 0010A2AC  3B DE 75 10 */	addi r30, r30, lbl_80577510@l
/* 80140CF0 0010A2B0  3B A1 00 80 */	addi r29, r1, 0x80
/* 80140CF4 0010A2B4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80140CF8 0010A2B8  38 83 FF FC */	addi r4, r3, -0x4
/* 80140CFC 0010A2BC  3B 80 00 00 */	li r28, 0x0
/* 80140D00 0010A2C0  7C 09 03 A6 */	mtctr r0
.L_80140D04:
/* 80140D04 0010A2C4  80 64 00 04 */	lwz r3, 0x4(r4)
/* 80140D08 0010A2C8  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 80140D0C 0010A2CC  90 65 00 04 */	stw r3, 0x4(r5)
/* 80140D10 0010A2D0  94 05 00 08 */	stwu r0, 0x8(r5)
/* 80140D14 0010A2D4  42 00 FF F0 */	bdnz .L_80140D04
/* 80140D18 0010A2D8  3E C0 80 50 */	lis r22, lbl_804FC280@ha
/* 80140D1C 0010A2DC  3E E0 80 57 */	lis r23, lbl_80577448@ha
/* 80140D20 0010A2E0  3A D6 C2 80 */	addi r22, r22, lbl_804FC280@l
/* 80140D24 0010A2E4  3A A0 00 0E */	li r21, 0xe
/* 80140D28 0010A2E8  3B 17 74 48 */	addi r24, r23, lbl_80577448@l
.L_80140D2C:
/* 80140D2C 0010A2EC  83 7E 00 00 */	lwz r27, 0x0(r30)
/* 80140D30 0010A2F0  7F 63 DB 78 */	mr r3, r27
/* 80140D34 0010A2F4  4B EF A4 B9 */	bl fn_8003B1EC
/* 80140D38 0010A2F8  7C 7F 1B 78 */	mr r31, r3
/* 80140D3C 0010A2FC  3B 40 00 00 */	li r26, 0x0
/* 80140D40 0010A300  48 00 00 8C */	b .L_80140DCC
.L_80140D44:
/* 80140D44 0010A304  38 A1 00 7C */	addi r5, r1, 0x7c
/* 80140D48 0010A308  38 81 00 0C */	addi r4, r1, 0xc
/* 80140D4C 0010A30C  7E A9 03 A6 */	mtctr r21
.L_80140D50:
/* 80140D50 0010A310  80 64 00 04 */	lwz r3, 0x4(r4)
/* 80140D54 0010A314  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 80140D58 0010A318  90 65 00 04 */	stw r3, 0x4(r5)
/* 80140D5C 0010A31C  94 05 00 08 */	stwu r0, 0x8(r5)
/* 80140D60 0010A320  42 00 FF F0 */	bdnz .L_80140D50
/* 80140D64 0010A324  80 1D 00 00 */	lwz r0, 0x0(r29)
/* 80140D68 0010A328  7F 63 DB 78 */	mr r3, r27
/* 80140D6C 0010A32C  38 96 00 32 */	addi r4, r22, 0x32
/* 80140D70 0010A330  7E 9A 02 14 */	add r20, r26, r0
/* 80140D74 0010A334  7E 85 A3 78 */	mr r5, r20
/* 80140D78 0010A338  4B EF 9D D1 */	bl fn_8003AB48
/* 80140D7C 0010A33C  90 61 00 08 */	stw r3, 0x8(r1)
/* 80140D80 0010A340  A0 01 00 08 */	lhz r0, 0x8(r1)
/* 80140D84 0010A344  7C 00 C8 00 */	cmpw r0, r25
/* 80140D88 0010A348  40 82 00 40 */	bne .L_80140DC8
/* 80140D8C 0010A34C  7F 64 DB 78 */	mr r4, r27
/* 80140D90 0010A350  7E 85 A3 78 */	mr r5, r20
/* 80140D94 0010A354  38 77 74 48 */	addi r3, r23, lbl_80577448@l
/* 80140D98 0010A358  4B FF F2 61 */	bl fn_8013FFF8
/* 80140D9C 0010A35C  88 18 00 09 */	lbz r0, 0x9(r24)
/* 80140DA0 0010A360  2C 00 00 00 */	cmpwi r0, 0x0
/* 80140DA4 0010A364  40 82 00 24 */	bne .L_80140DC8
/* 80140DA8 0010A368  7F 03 C3 78 */	mr r3, r24
/* 80140DAC 0010A36C  4B FF E6 45 */	bl fn_8013F3F0
/* 80140DB0 0010A370  2C 03 00 00 */	cmpwi r3, 0x0
/* 80140DB4 0010A374  41 82 00 14 */	beq .L_80140DC8
/* 80140DB8 0010A378  38 00 00 00 */	li r0, 0x0
/* 80140DBC 0010A37C  90 18 00 04 */	stw r0, 0x4(r24)
/* 80140DC0 0010A380  7F 03 C3 78 */	mr r3, r24
/* 80140DC4 0010A384  48 00 00 28 */	b .L_80140DEC
.L_80140DC8:
/* 80140DC8 0010A388  3B 5A 00 01 */	addi r26, r26, 0x1
.L_80140DCC:
/* 80140DCC 0010A38C  7C 1A F8 00 */	cmpw r26, r31
/* 80140DD0 0010A390  41 80 FF 74 */	blt .L_80140D44
/* 80140DD4 0010A394  3B 9C 00 01 */	addi r28, r28, 0x1
/* 80140DD8 0010A398  3B BD 00 04 */	addi r29, r29, 0x4
/* 80140DDC 0010A39C  2C 1C 00 1C */	cmpwi r28, 0x1c
/* 80140DE0 0010A3A0  3B DE 00 04 */	addi r30, r30, 0x4
/* 80140DE4 0010A3A4  41 80 FF 48 */	blt .L_80140D2C
/* 80140DE8 0010A3A8  38 60 00 00 */	li r3, 0x0
.L_80140DEC:
/* 80140DEC 0010A3AC  BA 81 00 F0 */	lmw r20, 0xf0(r1)
/* 80140DF0 0010A3B0  80 01 01 24 */	lwz r0, 0x124(r1)
/* 80140DF4 0010A3B4  7C 08 03 A6 */	mtlr r0
/* 80140DF8 0010A3B8  38 21 01 20 */	addi r1, r1, 0x120
/* 80140DFC 0010A3BC  4E 80 00 20 */	blr
.endfn fn_80140CA4

.fn fn_80140E00, global
/* 80140E00 0010A3C0  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 80140E04 0010A3C4  7C 08 02 A6 */	mflr r0
/* 80140E08 0010A3C8  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 80140E0C 0010A3CC  BD C1 01 88 */	stmw r14, 0x188(r1)
/* 80140E10 0010A3D0  7C 6F 1B 78 */	mr r15, r3
/* 80140E14 0010A3D4  7C 90 23 78 */	mr r16, r4
/* 80140E18 0010A3D8  7C B1 2B 78 */	mr r17, r5
/* 80140E1C 0010A3DC  4B EF 9C 19 */	bl fn_8003AA34
/* 80140E20 0010A3E0  3C 00 80 50 */	lis r0, 0x8050
/* 80140E24 0010A3E4  90 01 01 80 */	stw r0, 0x180(r1)
/* 80140E28 0010A3E8  3F 60 80 57 */	lis r27, lbl_80577448@ha
/* 80140E2C 0010A3EC  3A C1 00 A0 */	addi r22, r1, 0xa0
/* 80140E30 0010A3F0  80 61 01 80 */	lwz r3, 0x180(r1)
/* 80140E34 0010A3F4  3C 00 80 57 */	lis r0, lbl_80577510@ha
/* 80140E38 0010A3F8  3B 9B 74 48 */	addi r28, r27, lbl_80577448@l
/* 80140E3C 0010A3FC  3B A1 00 08 */	addi r29, r1, 0x8
/* 80140E40 0010A400  38 63 C1 D0 */	addi r3, r3, -0x3e30
/* 80140E44 0010A404  90 61 01 80 */	stw r3, 0x180(r1)
/* 80140E48 0010A408  7C 03 03 78 */	mr r3, r0
/* 80140E4C 0010A40C  3B 40 00 0E */	li r26, 0xe
/* 80140E50 0010A410  38 63 75 10 */	addi r3, r3, lbl_80577510@l
/* 80140E54 0010A414  90 61 01 84 */	stw r3, 0x184(r1)
.L_80140E58:
/* 80140E58 0010A418  3A 80 00 00 */	li r20, 0x0
/* 80140E5C 0010A41C  92 81 00 08 */	stw r20, 0x8(r1)
/* 80140E60 0010A420  3A 60 00 00 */	li r19, 0x0
/* 80140E64 0010A424  39 C0 00 01 */	li r14, 0x1
/* 80140E68 0010A428  92 81 00 0C */	stw r20, 0xc(r1)
/* 80140E6C 0010A42C  3B E0 00 04 */	li r31, 0x4
/* 80140E70 0010A430  92 81 00 10 */	stw r20, 0x10(r1)
/* 80140E74 0010A434  92 81 00 14 */	stw r20, 0x14(r1)
/* 80140E78 0010A438  92 81 00 18 */	stw r20, 0x18(r1)
/* 80140E7C 0010A43C  92 81 00 1C */	stw r20, 0x1c(r1)
/* 80140E80 0010A440  92 81 00 20 */	stw r20, 0x20(r1)
/* 80140E84 0010A444  92 81 00 24 */	stw r20, 0x24(r1)
/* 80140E88 0010A448  92 81 00 28 */	stw r20, 0x28(r1)
/* 80140E8C 0010A44C  92 81 00 2C */	stw r20, 0x2c(r1)
.L_80140E90:
/* 80140E90 0010A450  80 61 01 80 */	lwz r3, 0x180(r1)
/* 80140E94 0010A454  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80140E98 0010A458  38 83 FF FC */	addi r4, r3, -0x4
/* 80140E9C 0010A45C  7F 49 03 A6 */	mtctr r26
.L_80140EA0:
/* 80140EA0 0010A460  80 64 00 04 */	lwz r3, 0x4(r4)
/* 80140EA4 0010A464  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 80140EA8 0010A468  90 65 00 04 */	stw r3, 0x4(r5)
/* 80140EAC 0010A46C  94 05 00 08 */	stwu r0, 0x8(r5)
/* 80140EB0 0010A470  42 00 FF F0 */	bdnz .L_80140EA0
/* 80140EB4 0010A474  38 A1 01 0C */	addi r5, r1, 0x10c
/* 80140EB8 0010A478  38 81 00 2C */	addi r4, r1, 0x2c
/* 80140EBC 0010A47C  7F 49 03 A6 */	mtctr r26
.L_80140EC0:
/* 80140EC0 0010A480  80 64 00 04 */	lwz r3, 0x4(r4)
/* 80140EC4 0010A484  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 80140EC8 0010A488  90 65 00 04 */	stw r3, 0x4(r5)
/* 80140ECC 0010A48C  94 05 00 08 */	stwu r0, 0x8(r5)
/* 80140ED0 0010A490  42 00 FF F0 */	bdnz .L_80140EC0
/* 80140ED4 0010A494  38 61 01 10 */	addi r3, r1, 0x110
/* 80140ED8 0010A498  7C 03 F8 2E */	lwzx r0, r3, r31
/* 80140EDC 0010A49C  2C 00 00 00 */	cmpwi r0, 0x0
/* 80140EE0 0010A4A0  41 82 03 2C */	beq .L_8014120C
/* 80140EE4 0010A4A4  80 61 01 84 */	lwz r3, 0x184(r1)
/* 80140EE8 0010A4A8  7E E3 F8 2E */	lwzx r23, r3, r31
/* 80140EEC 0010A4AC  7E E3 BB 78 */	mr r3, r23
/* 80140EF0 0010A4B0  4B EF A2 FD */	bl fn_8003B1EC
/* 80140EF4 0010A4B4  7C 79 1B 78 */	mr r25, r3
/* 80140EF8 0010A4B8  56 7E 10 3A */	slwi r30, r19, 2
/* 80140EFC 0010A4BC  3A 40 00 00 */	li r18, 0x0
/* 80140F00 0010A4C0  48 00 03 04 */	b .L_80141204
.L_80140F04:
/* 80140F04 0010A4C4  38 A1 00 9C */	addi r5, r1, 0x9c
/* 80140F08 0010A4C8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80140F0C 0010A4CC  7F 49 03 A6 */	mtctr r26
.L_80140F10:
/* 80140F10 0010A4D0  80 64 00 04 */	lwz r3, 0x4(r4)
/* 80140F14 0010A4D4  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 80140F18 0010A4D8  90 65 00 04 */	stw r3, 0x4(r5)
/* 80140F1C 0010A4DC  94 05 00 08 */	stwu r0, 0x8(r5)
/* 80140F20 0010A4E0  42 00 FF F0 */	bdnz .L_80140F10
/* 80140F24 0010A4E4  7C 16 F8 2E */	lwzx r0, r22, r31
/* 80140F28 0010A4E8  3B 00 FF FF */	li r24, -0x1
/* 80140F2C 0010A4EC  7E B2 02 14 */	add r21, r18, r0
/* 80140F30 0010A4F0  2C 15 03 E8 */	cmpwi r21, 0x3e8
/* 80140F34 0010A4F4  40 80 00 08 */	bge .L_80140F3C
/* 80140F38 0010A4F8  3B 15 02 20 */	addi r24, r21, 0x220
.L_80140F3C:
/* 80140F3C 0010A4FC  2C 18 FF FF */	cmpwi r24, -0x1
/* 80140F40 0010A500  41 82 03 1C */	beq .L_8014125C
/* 80140F44 0010A504  7F 03 C3 78 */	mr r3, r24
/* 80140F48 0010A508  4B F5 C0 45 */	bl fn_8009CF8C
/* 80140F4C 0010A50C  2C 03 00 7B */	cmpwi r3, 0x7b
/* 80140F50 0010A510  40 80 00 2C */	bge .L_80140F7C
/* 80140F54 0010A514  2C 03 00 6F */	cmpwi r3, 0x6f
/* 80140F58 0010A518  40 80 00 10 */	bge .L_80140F68
/* 80140F5C 0010A51C  2C 03 00 01 */	cmpwi r3, 0x1
/* 80140F60 0010A520  41 82 00 40 */	beq .L_80140FA0
/* 80140F64 0010A524  48 00 02 9C */	b .L_80141200
.L_80140F68:
/* 80140F68 0010A528  2C 03 00 79 */	cmpwi r3, 0x79
/* 80140F6C 0010A52C  40 80 00 34 */	bge .L_80140FA0
/* 80140F70 0010A530  2C 03 00 71 */	cmpwi r3, 0x71
/* 80140F74 0010A534  40 80 02 8C */	bge .L_80141200
/* 80140F78 0010A538  48 00 00 28 */	b .L_80140FA0
.L_80140F7C:
/* 80140F7C 0010A53C  2C 03 00 8D */	cmpwi r3, 0x8d
/* 80140F80 0010A540  40 80 00 18 */	bge .L_80140F98
/* 80140F84 0010A544  2C 03 00 85 */	cmpwi r3, 0x85
/* 80140F88 0010A548  40 80 02 78 */	bge .L_80141200
/* 80140F8C 0010A54C  2C 03 00 83 */	cmpwi r3, 0x83
/* 80140F90 0010A550  40 80 00 10 */	bge .L_80140FA0
/* 80140F94 0010A554  48 00 02 6C */	b .L_80141200
.L_80140F98:
/* 80140F98 0010A558  2C 03 00 8F */	cmpwi r3, 0x8f
/* 80140F9C 0010A55C  40 80 02 64 */	bge .L_80141200
.L_80140FA0:
/* 80140FA0 0010A560  7E E4 BB 78 */	mr r4, r23
/* 80140FA4 0010A564  7E A5 AB 78 */	mr r5, r21
/* 80140FA8 0010A568  38 7B 74 48 */	addi r3, r27, lbl_80577448@l
/* 80140FAC 0010A56C  4B FF F0 4D */	bl fn_8013FFF8
/* 80140FB0 0010A570  88 1C 00 09 */	lbz r0, 0x9(r28)
/* 80140FB4 0010A574  2C 00 00 00 */	cmpwi r0, 0x0
/* 80140FB8 0010A578  40 82 02 48 */	bne .L_80141200
/* 80140FBC 0010A57C  7F 83 E3 78 */	mr r3, r28
/* 80140FC0 0010A580  7D E4 7B 78 */	mr r4, r15
/* 80140FC4 0010A584  7E 05 83 78 */	mr r5, r16
/* 80140FC8 0010A588  7E 26 8B 78 */	mr r6, r17
/* 80140FCC 0010A58C  38 E0 00 00 */	li r7, 0x0
/* 80140FD0 0010A590  4B FF E6 F5 */	bl fn_8013F6C4
/* 80140FD4 0010A594  2C 03 00 00 */	cmpwi r3, 0x0
/* 80140FD8 0010A598  41 82 01 B0 */	beq .L_80141188
/* 80140FDC 0010A59C  88 1B 74 48 */	lbz r0, lbl_80577448@l(r27)
/* 80140FE0 0010A5A0  54 00 07 FF */	clrlwi. r0, r0, 31
/* 80140FE4 0010A5A4  41 82 00 0C */	beq .L_80140FF0
/* 80140FE8 0010A5A8  38 60 FF FF */	li r3, -0x1
/* 80140FEC 0010A5AC  48 00 00 88 */	b .L_80141074
.L_80140FF0:
/* 80140FF0 0010A5B0  88 7C 00 6E */	lbz r3, 0x6e(r28)
/* 80140FF4 0010A5B4  2C 03 00 00 */	cmpwi r3, 0x0
/* 80140FF8 0010A5B8  41 82 00 58 */	beq .L_80141050
/* 80140FFC 0010A5BC  88 1C 00 98 */	lbz r0, 0x98(r28)
/* 80141000 0010A5C0  2C 00 00 00 */	cmpwi r0, 0x0
/* 80141004 0010A5C4  41 82 00 4C */	beq .L_80141050
/* 80141008 0010A5C8  7F 83 E3 78 */	mr r3, r28
/* 8014100C 0010A5CC  38 80 00 00 */	li r4, 0x0
/* 80141010 0010A5D0  38 A0 00 00 */	li r5, 0x0
/* 80141014 0010A5D4  4B FF F8 41 */	bl fn_80140854
/* 80141018 0010A5D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8014101C 0010A5DC  41 82 00 0C */	beq .L_80141028
/* 80141020 0010A5E0  38 60 00 00 */	li r3, 0x0
/* 80141024 0010A5E4  48 00 00 50 */	b .L_80141074
.L_80141028:
/* 80141028 0010A5E8  7F 83 E3 78 */	mr r3, r28
/* 8014102C 0010A5EC  38 80 00 01 */	li r4, 0x1
/* 80141030 0010A5F0  38 A0 00 00 */	li r5, 0x0
/* 80141034 0010A5F4  4B FF F8 21 */	bl fn_80140854
/* 80141038 0010A5F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8014103C 0010A5FC  41 82 00 0C */	beq .L_80141048
/* 80141040 0010A600  38 60 00 01 */	li r3, 0x1
/* 80141044 0010A604  48 00 00 30 */	b .L_80141074
.L_80141048:
/* 80141048 0010A608  38 60 FF FF */	li r3, -0x1
/* 8014104C 0010A60C  48 00 00 28 */	b .L_80141074
.L_80141050:
/* 80141050 0010A610  2C 03 00 00 */	cmpwi r3, 0x0
/* 80141054 0010A614  41 82 00 0C */	beq .L_80141060
/* 80141058 0010A618  38 60 00 00 */	li r3, 0x0
/* 8014105C 0010A61C  48 00 00 18 */	b .L_80141074
.L_80141060:
/* 80141060 0010A620  88 1C 00 98 */	lbz r0, 0x98(r28)
/* 80141064 0010A624  38 60 FF FF */	li r3, -0x1
/* 80141068 0010A628  2C 00 00 00 */	cmpwi r0, 0x0
/* 8014106C 0010A62C  41 82 00 08 */	beq .L_80141074
/* 80141070 0010A630  38 60 00 01 */	li r3, 0x1
.L_80141074:
/* 80141074 0010A634  1C 03 00 2A */	mulli r0, r3, 0x2a
/* 80141078 0010A638  7C 7C 02 14 */	add r3, r28, r0
/* 8014107C 0010A63C  88 03 00 6F */	lbz r0, 0x6f(r3)
/* 80141080 0010A640  2C 00 00 00 */	cmpwi r0, 0x0
/* 80141084 0010A644  40 82 00 24 */	bne .L_801410A8
/* 80141088 0010A648  88 1C 00 6C */	lbz r0, 0x6c(r28)
/* 8014108C 0010A64C  2C 00 00 00 */	cmpwi r0, 0x0
/* 80141090 0010A650  40 82 00 18 */	bne .L_801410A8
/* 80141094 0010A654  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 80141098 0010A658  7F 03 C3 78 */	mr r3, r24
/* 8014109C 0010A65C  4B F5 BF 7D */	bl fn_8009D018
/* 801410A0 0010A660  3A 80 00 01 */	li r20, 0x1
/* 801410A4 0010A664  48 00 00 F0 */	b .L_80141194
.L_801410A8:
/* 801410A8 0010A668  2C 0F 00 03 */	cmpwi r15, 0x3
/* 801410AC 0010A66C  41 82 00 CC */	beq .L_80141178
/* 801410B0 0010A670  2C 0F 00 05 */	cmpwi r15, 0x5
/* 801410B4 0010A674  41 82 00 C4 */	beq .L_80141178
/* 801410B8 0010A678  88 1B 74 48 */	lbz r0, lbl_80577448@l(r27)
/* 801410BC 0010A67C  54 00 07 FF */	clrlwi. r0, r0, 31
/* 801410C0 0010A680  41 82 00 0C */	beq .L_801410CC
/* 801410C4 0010A684  38 60 FF FF */	li r3, -0x1
/* 801410C8 0010A688  48 00 00 88 */	b .L_80141150
.L_801410CC:
/* 801410CC 0010A68C  88 7C 00 6E */	lbz r3, 0x6e(r28)
/* 801410D0 0010A690  2C 03 00 00 */	cmpwi r3, 0x0
/* 801410D4 0010A694  41 82 00 58 */	beq .L_8014112C
/* 801410D8 0010A698  88 1C 00 98 */	lbz r0, 0x98(r28)
/* 801410DC 0010A69C  2C 00 00 00 */	cmpwi r0, 0x0
/* 801410E0 0010A6A0  41 82 00 4C */	beq .L_8014112C
/* 801410E4 0010A6A4  7F 83 E3 78 */	mr r3, r28
/* 801410E8 0010A6A8  38 80 00 00 */	li r4, 0x0
/* 801410EC 0010A6AC  38 A0 00 00 */	li r5, 0x0
/* 801410F0 0010A6B0  4B FF F7 65 */	bl fn_80140854
/* 801410F4 0010A6B4  2C 03 00 00 */	cmpwi r3, 0x0
/* 801410F8 0010A6B8  41 82 00 0C */	beq .L_80141104
/* 801410FC 0010A6BC  38 60 00 00 */	li r3, 0x0
/* 80141100 0010A6C0  48 00 00 50 */	b .L_80141150
.L_80141104:
/* 80141104 0010A6C4  7F 83 E3 78 */	mr r3, r28
/* 80141108 0010A6C8  38 80 00 01 */	li r4, 0x1
/* 8014110C 0010A6CC  38 A0 00 00 */	li r5, 0x0
/* 80141110 0010A6D0  4B FF F7 45 */	bl fn_80140854
/* 80141114 0010A6D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 80141118 0010A6D8  41 82 00 0C */	beq .L_80141124
/* 8014111C 0010A6DC  38 60 00 01 */	li r3, 0x1
/* 80141120 0010A6E0  48 00 00 30 */	b .L_80141150
.L_80141124:
/* 80141124 0010A6E4  38 60 FF FF */	li r3, -0x1
/* 80141128 0010A6E8  48 00 00 28 */	b .L_80141150
.L_8014112C:
/* 8014112C 0010A6EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 80141130 0010A6F0  41 82 00 0C */	beq .L_8014113C
/* 80141134 0010A6F4  38 60 00 00 */	li r3, 0x0
/* 80141138 0010A6F8  48 00 00 18 */	b .L_80141150
.L_8014113C:
/* 8014113C 0010A6FC  88 1C 00 98 */	lbz r0, 0x98(r28)
/* 80141140 0010A700  38 60 FF FF */	li r3, -0x1
/* 80141144 0010A704  2C 00 00 00 */	cmpwi r0, 0x0
/* 80141148 0010A708  41 82 00 08 */	beq .L_80141150
/* 8014114C 0010A70C  38 60 00 01 */	li r3, 0x1
.L_80141150:
/* 80141150 0010A710  1C 03 00 2A */	mulli r0, r3, 0x2a
/* 80141154 0010A714  7C 7C 02 14 */	add r3, r28, r0
/* 80141158 0010A718  88 03 00 6F */	lbz r0, 0x6f(r3)
/* 8014115C 0010A71C  2C 00 00 00 */	cmpwi r0, 0x0
/* 80141160 0010A720  41 82 00 18 */	beq .L_80141178
/* 80141164 0010A724  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 80141168 0010A728  7F 03 C3 78 */	mr r3, r24
/* 8014116C 0010A72C  4B F5 BE AD */	bl fn_8009D018
/* 80141170 0010A730  3A 80 00 01 */	li r20, 0x1
/* 80141174 0010A734  48 00 00 20 */	b .L_80141194
.L_80141178:
/* 80141178 0010A738  7F 03 C3 78 */	mr r3, r24
/* 8014117C 0010A73C  4B F5 BE 11 */	bl fn_8009CF8C
/* 80141180 0010A740  90 7C 00 04 */	stw r3, 0x4(r28)
/* 80141184 0010A744  48 00 00 10 */	b .L_80141194
.L_80141188:
/* 80141188 0010A748  7F 03 C3 78 */	mr r3, r24
/* 8014118C 0010A74C  4B F5 BE 01 */	bl fn_8009CF8C
/* 80141190 0010A750  90 7C 00 04 */	stw r3, 0x4(r28)
.L_80141194:
/* 80141194 0010A754  2C 0F 00 03 */	cmpwi r15, 0x3
/* 80141198 0010A758  41 82 00 0C */	beq .L_801411A4
/* 8014119C 0010A75C  2C 0F 00 05 */	cmpwi r15, 0x5
/* 801411A0 0010A760  40 82 00 44 */	bne .L_801411E4
.L_801411A4:
/* 801411A4 0010A764  7E 07 83 78 */	mr r7, r16
/* 801411A8 0010A768  38 7B 74 48 */	addi r3, r27, lbl_80577448@l
/* 801411AC 0010A76C  38 80 00 02 */	li r4, 0x2
/* 801411B0 0010A770  38 A0 00 00 */	li r5, 0x0
/* 801411B4 0010A774  38 C0 00 03 */	li r6, 0x3
/* 801411B8 0010A778  4B FF E5 0D */	bl fn_8013F6C4
/* 801411BC 0010A77C  2C 03 00 00 */	cmpwi r3, 0x0
/* 801411C0 0010A780  41 82 00 18 */	beq .L_801411D8
/* 801411C4 0010A784  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 801411C8 0010A788  7F 03 C3 78 */	mr r3, r24
/* 801411CC 0010A78C  4B F5 BE 4D */	bl fn_8009D018
/* 801411D0 0010A790  3A 80 00 01 */	li r20, 0x1
/* 801411D4 0010A794  48 00 00 10 */	b .L_801411E4
.L_801411D8:
/* 801411D8 0010A798  7F 03 C3 78 */	mr r3, r24
/* 801411DC 0010A79C  4B F5 BD B1 */	bl fn_8009CF8C
/* 801411E0 0010A7A0  90 7C 00 04 */	stw r3, 0x4(r28)
.L_801411E4:
/* 801411E4 0010A7A4  80 7C 00 04 */	lwz r3, 0x4(r28)
/* 801411E8 0010A7A8  38 03 FF 02 */	addi r0, r3, -0xfe
/* 801411EC 0010A7AC  28 00 00 01 */	cmplwi r0, 0x1
/* 801411F0 0010A7B0  41 81 00 10 */	bgt .L_80141200
/* 801411F4 0010A7B4  7E BD F1 2E */	stwx r21, r29, r30
/* 801411F8 0010A7B8  3A 73 00 01 */	addi r19, r19, 0x1
/* 801411FC 0010A7BC  3B DE 00 04 */	addi r30, r30, 0x4
.L_80141200:
/* 80141200 0010A7C0  3A 52 00 01 */	addi r18, r18, 0x1
.L_80141204:
/* 80141204 0010A7C4  7C 12 C8 00 */	cmpw r18, r25
/* 80141208 0010A7C8  41 80 FC FC */	blt .L_80140F04
.L_8014120C:
/* 8014120C 0010A7CC  39 CE 00 01 */	addi r14, r14, 0x1
/* 80141210 0010A7D0  3B FF 00 04 */	addi r31, r31, 0x4
/* 80141214 0010A7D4  2C 0E 00 1C */	cmpwi r14, 0x1c
/* 80141218 0010A7D8  41 80 FC 78 */	blt .L_80140E90
/* 8014121C 0010A7DC  39 C1 00 08 */	addi r14, r1, 0x8
/* 80141220 0010A7E0  39 E0 00 00 */	li r15, 0x0
/* 80141224 0010A7E4  48 00 00 1C */	b .L_80141240
.L_80141228:
/* 80141228 0010A7E8  80 8E 00 00 */	lwz r4, 0x0(r14)
/* 8014122C 0010A7EC  38 60 00 04 */	li r3, 0x4
/* 80141230 0010A7F0  38 A0 00 00 */	li r5, 0x0
/* 80141234 0010A7F4  4B FF FB CD */	bl fn_80140E00
/* 80141238 0010A7F8  39 CE 00 04 */	addi r14, r14, 0x4
/* 8014123C 0010A7FC  39 EF 00 01 */	addi r15, r15, 0x1
.L_80141240:
/* 80141240 0010A800  7C 0F 98 00 */	cmpw r15, r19
/* 80141244 0010A804  41 80 FF E4 */	blt .L_80141228
/* 80141248 0010A808  2C 14 00 00 */	cmpwi r20, 0x0
/* 8014124C 0010A80C  41 82 00 10 */	beq .L_8014125C
/* 80141250 0010A810  39 E0 00 00 */	li r15, 0x0
/* 80141254 0010A814  3A 00 00 00 */	li r16, 0x0
/* 80141258 0010A818  4B FF FC 00 */	b .L_80140E58
.L_8014125C:
/* 8014125C 0010A81C  B9 C1 01 88 */	lmw r14, 0x188(r1)
/* 80141260 0010A820  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 80141264 0010A824  7C 08 03 A6 */	mtlr r0
/* 80141268 0010A828  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 8014126C 0010A82C  4E 80 00 20 */	blr
.endfn fn_80140E00

.fn fn_80141270, global
/* 80141270 0010A830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80141274 0010A834  7C 08 02 A6 */	mflr r0
/* 80141278 0010A838  2C 03 03 E8 */	cmpwi r3, 0x3e8
/* 8014127C 0010A83C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80141280 0010A840  38 00 FF FF */	li r0, -0x1
/* 80141284 0010A844  40 80 00 08 */	bge .L_8014128C
/* 80141288 0010A848  38 03 02 20 */	addi r0, r3, 0x220
.L_8014128C:
/* 8014128C 0010A84C  2C 00 FF FF */	cmpwi r0, -0x1
/* 80141290 0010A850  40 82 00 0C */	bne .L_8014129C
/* 80141294 0010A854  38 60 00 00 */	li r3, 0x0
/* 80141298 0010A858  48 00 00 28 */	b .L_801412C0
.L_8014129C:
/* 8014129C 0010A85C  7C 03 03 78 */	mr r3, r0
/* 801412A0 0010A860  4B F5 BC ED */	bl fn_8009CF8C
/* 801412A4 0010A864  38 83 FF 02 */	addi r4, r3, -0xfe
/* 801412A8 0010A868  38 60 00 01 */	li r3, 0x1
/* 801412AC 0010A86C  20 04 00 01 */	subfic r0, r4, 0x1
/* 801412B0 0010A870  7C 63 23 38 */	orc r3, r3, r4
/* 801412B4 0010A874  54 00 F8 7E */	srwi r0, r0, 1
/* 801412B8 0010A878  7C 00 18 50 */	subf r0, r0, r3
/* 801412BC 0010A87C  54 03 0F FE */	srwi r3, r0, 31
.L_801412C0:
/* 801412C0 0010A880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801412C4 0010A884  7C 08 03 A6 */	mtlr r0
/* 801412C8 0010A888  38 21 00 10 */	addi r1, r1, 0x10
/* 801412CC 0010A88C  4E 80 00 20 */	blr
.endfn fn_80141270

.fn fn_801412D0, global
/* 801412D0 0010A890  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801412D4 0010A894  7C 08 02 A6 */	mflr r0
/* 801412D8 0010A898  38 80 00 00 */	li r4, 0x0
/* 801412DC 0010A89C  38 A0 00 C8 */	li r5, 0xc8
/* 801412E0 0010A8A0  90 01 01 04 */	stw r0, 0x104(r1)
/* 801412E4 0010A8A4  BF 41 00 E8 */	stmw r26, 0xe8(r1)
/* 801412E8 0010A8A8  3F C0 80 57 */	lis r30, lbl_80577448@ha
/* 801412EC 0010A8AC  7C 7F 1B 78 */	mr r31, r3
/* 801412F0 0010A8B0  38 7E 74 48 */	addi r3, r30, lbl_80577448@l
/* 801412F4 0010A8B4  4B EC 30 5D */	bl memset
/* 801412F8 0010A8B8  88 1E 74 48 */	lbz r0, lbl_80577448@l(r30)
/* 801412FC 0010A8BC  60 00 00 01 */	ori r0, r0, 0x1
/* 80141300 0010A8C0  98 1E 74 48 */	stb r0, lbl_80577448@l(r30)
/* 80141304 0010A8C4  4B EF 97 31 */	bl fn_8003AA34
/* 80141308 0010A8C8  3C 60 80 50 */	lis r3, lbl_804FC1D0@ha
/* 8014130C 0010A8CC  3F 80 80 57 */	lis r28, lbl_80577510@ha
/* 80141310 0010A8D0  38 63 C1 D0 */	addi r3, r3, lbl_804FC1D0@l
/* 80141314 0010A8D4  38 00 00 0E */	li r0, 0xe
/* 80141318 0010A8D8  3B 9C 75 10 */	addi r28, r28, lbl_80577510@l
/* 8014131C 0010A8DC  3B 61 00 78 */	addi r27, r1, 0x78
/* 80141320 0010A8E0  38 A1 00 04 */	addi r5, r1, 0x4
/* 80141324 0010A8E4  38 83 FF FC */	addi r4, r3, -0x4
/* 80141328 0010A8E8  3B 40 00 00 */	li r26, 0x0
/* 8014132C 0010A8EC  7C 09 03 A6 */	mtctr r0
.L_80141330:
/* 80141330 0010A8F0  80 64 00 04 */	lwz r3, 0x4(r4)
/* 80141334 0010A8F4  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 80141338 0010A8F8  90 65 00 04 */	stw r3, 0x4(r5)
/* 8014133C 0010A8FC  94 05 00 08 */	stwu r0, 0x8(r5)
/* 80141340 0010A900  42 00 FF F0 */	bdnz .L_80141330
/* 80141344 0010A904  3B C0 00 0E */	li r30, 0xe
.L_80141348:
/* 80141348 0010A908  83 BC 00 00 */	lwz r29, 0x0(r28)
/* 8014134C 0010A90C  7F A3 EB 78 */	mr r3, r29
/* 80141350 0010A910  4B EF 9E 9D */	bl fn_8003B1EC
/* 80141354 0010A914  38 E0 00 00 */	li r7, 0x0
/* 80141358 0010A918  48 00 00 50 */	b .L_801413A8
.L_8014135C:
/* 8014135C 0010A91C  38 C1 00 74 */	addi r6, r1, 0x74
/* 80141360 0010A920  38 A1 00 04 */	addi r5, r1, 0x4
/* 80141364 0010A924  7F C9 03 A6 */	mtctr r30
.L_80141368:
/* 80141368 0010A928  80 85 00 04 */	lwz r4, 0x4(r5)
/* 8014136C 0010A92C  84 05 00 08 */	lwzu r0, 0x8(r5)
/* 80141370 0010A930  90 86 00 04 */	stw r4, 0x4(r6)
/* 80141374 0010A934  94 06 00 08 */	stwu r0, 0x8(r6)
/* 80141378 0010A938  42 00 FF F0 */	bdnz .L_80141368
/* 8014137C 0010A93C  80 1B 00 00 */	lwz r0, 0x0(r27)
/* 80141380 0010A940  7C A7 02 14 */	add r5, r7, r0
/* 80141384 0010A944  7C 05 F8 00 */	cmpw r5, r31
/* 80141388 0010A948  40 82 00 1C */	bne .L_801413A4
/* 8014138C 0010A94C  3F E0 80 57 */	lis r31, lbl_80577448@ha
/* 80141390 0010A950  7F A4 EB 78 */	mr r4, r29
/* 80141394 0010A954  38 7F 74 48 */	addi r3, r31, lbl_80577448@l
/* 80141398 0010A958  4B FF EC 61 */	bl fn_8013FFF8
/* 8014139C 0010A95C  38 7F 74 48 */	addi r3, r31, lbl_80577448@l
/* 801413A0 0010A960  48 00 00 28 */	b .L_801413C8
.L_801413A4:
/* 801413A4 0010A964  38 E7 00 01 */	addi r7, r7, 0x1
.L_801413A8:
/* 801413A8 0010A968  7C 07 18 00 */	cmpw r7, r3
/* 801413AC 0010A96C  41 80 FF B0 */	blt .L_8014135C
/* 801413B0 0010A970  3B 5A 00 01 */	addi r26, r26, 0x1
/* 801413B4 0010A974  3B 7B 00 04 */	addi r27, r27, 0x4
/* 801413B8 0010A978  2C 1A 00 1C */	cmpwi r26, 0x1c
/* 801413BC 0010A97C  3B 9C 00 04 */	addi r28, r28, 0x4
/* 801413C0 0010A980  41 80 FF 88 */	blt .L_80141348
/* 801413C4 0010A984  38 60 00 00 */	li r3, 0x0
.L_801413C8:
/* 801413C8 0010A988  BB 41 00 E8 */	lmw r26, 0xe8(r1)
/* 801413CC 0010A98C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801413D0 0010A990  7C 08 03 A6 */	mtlr r0
/* 801413D4 0010A994  38 21 01 00 */	addi r1, r1, 0x100
/* 801413D8 0010A998  4E 80 00 20 */	blr
.endfn fn_801412D0

.fn fn_801413DC, global
/* 801413DC 0010A99C  54 60 04 3E */	clrlwi r0, r3, 16
/* 801413E0 0010A9A0  54 65 84 3E */	srwi r5, r3, 16
/* 801413E4 0010A9A4  7C 04 00 00 */	cmpw r4, r0
/* 801413E8 0010A9A8  38 60 FF FF */	li r3, -0x1
/* 801413EC 0010A9AC  4C 80 00 20 */	bgelr
/* 801413F0 0010A9B0  7C 65 22 14 */	add r3, r5, r4
/* 801413F4 0010A9B4  4E 80 00 20 */	blr
.endfn fn_801413DC

.fn sinit_801413F8, global
/* 801413F8 0010A9B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801413FC 0010A9BC  7C 08 02 A6 */	mflr r0
/* 80141400 0010A9C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80141404 0010A9C4  38 00 00 00 */	li r0, 0x0
/* 80141408 0010A9C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8014140C 0010A9CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80141410 0010A9D0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80141414 0010A9D4  3F A0 80 57 */	lis r29, lbl_80577448@ha
/* 80141418 0010A9D8  3B DD 74 48 */	addi r30, r29, lbl_80577448@l
/* 8014141C 0010A9DC  93 81 00 10 */	stw r28, 0x10(r1)
/* 80141420 0010A9E0  3B 9E 00 6E */	addi r28, r30, 0x6e
/* 80141424 0010A9E4  3B FE 00 C2 */	addi r31, r30, 0xc2
/* 80141428 0010A9E8  98 1D 74 48 */	stb r0, lbl_80577448@l(r29)
/* 8014142C 0010A9EC  98 1E 00 0C */	stb r0, 0xc(r30)
/* 80141430 0010A9F0  90 1E 00 4C */	stw r0, 0x4c(r30)
.L_80141434:
/* 80141434 0010A9F4  7F 83 E3 78 */	mr r3, r28
/* 80141438 0010A9F8  38 80 00 00 */	li r4, 0x0
/* 8014143C 0010A9FC  38 A0 00 2A */	li r5, 0x2a
/* 80141440 0010AA00  4B EC 2F 11 */	bl memset
/* 80141444 0010AA04  3B 9C 00 2A */	addi r28, r28, 0x2a
/* 80141448 0010AA08  7C 1C F8 40 */	cmplw r28, r31
/* 8014144C 0010AA0C  41 80 FF E8 */	blt .L_80141434
/* 80141450 0010AA10  7F C3 F3 78 */	mr r3, r30
/* 80141454 0010AA14  38 80 00 00 */	li r4, 0x0
/* 80141458 0010AA18  38 A0 00 C8 */	li r5, 0xc8
/* 8014145C 0010AA1C  4B EC 2E F5 */	bl memset
/* 80141460 0010AA20  88 1D 74 48 */	lbz r0, lbl_80577448@l(r29)
/* 80141464 0010AA24  60 00 00 01 */	ori r0, r0, 0x1
/* 80141468 0010AA28  98 1D 74 48 */	stb r0, lbl_80577448@l(r29)
/* 8014146C 0010AA2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80141470 0010AA30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80141474 0010AA34  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80141478 0010AA38  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8014147C 0010AA3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80141480 0010AA40  7C 08 03 A6 */	mtlr r0
/* 80141484 0010AA44  38 21 00 20 */	addi r1, r1, 0x20
/* 80141488 0010AA48  4E 80 00 20 */	blr
.endfn sinit_801413F8

.fn fn_8014148C, global
/* 8014148C 0010AA4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80141490 0010AA50  7C 08 02 A6 */	mflr r0
/* 80141494 0010AA54  2C 03 00 00 */	cmpwi r3, 0x0
/* 80141498 0010AA58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014149C 0010AA5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801414A0 0010AA60  7C 7F 1B 78 */	mr r31, r3
/* 801414A4 0010AA64  41 82 00 10 */	beq .L_801414B4
/* 801414A8 0010AA68  2C 04 00 00 */	cmpwi r4, 0x0
/* 801414AC 0010AA6C  40 81 00 08 */	ble .L_801414B4
/* 801414B0 0010AA70  48 2F 37 7D */	bl __dl__FPv
.L_801414B4:
/* 801414B4 0010AA74  7F E3 FB 78 */	mr r3, r31
/* 801414B8 0010AA78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801414BC 0010AA7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801414C0 0010AA80  7C 08 03 A6 */	mtlr r0
/* 801414C4 0010AA84  38 21 00 10 */	addi r1, r1, 0x10
/* 801414C8 0010AA88  4E 80 00 20 */	blr
.endfn fn_8014148C

# 0x804F5958 - 0x804F595C
.section .ctors, "a"
.balign 4
	.4byte sinit_801413F8

# 0x804FC110 - 0x804FC5A8
.rodata
.balign 8

.obj CUIWindowManager_typestr, global
	.4byte 0x43554957
	.4byte 0x696E646F
	.4byte 0x774D616E
	.4byte 0x61676572
	.4byte 0x00000000

.obj reslist_IUIWindow_typestr, global
	.4byte 0x7265736C
	.4byte 0x6973743C
	.4byte 0x49554957
	.4byte 0x696E646F
	.4byte 0x77202A3E
	.4byte 0x00000000

.obj _reslist_base_IUIWindow_typestr, global
	.4byte 0x5F726573
	.4byte 0x6C697374
	.4byte 0x5F626173
	.4byte 0x653C4955
	.4byte 0x4957696E
	.4byte 0x646F7720
	.4byte 0x2A3E0000

.obj CUIWindowManager_CTest_typestr, global
	.4byte 0x43554957
	.4byte 0x696E646F
	.4byte 0x774D616E
	.4byte 0x61676572
	.4byte 0x3A3A4354
	.4byte 0x65737400

.obj CTTask_CUIWindowManager_CTest_typestr, global
	.4byte 0x43545461
	.4byte 0x736B3C43
	.4byte 0x55495769
	.4byte 0x6E646F77
	.4byte 0x4D616E61
	.4byte 0x6765723A
	.4byte 0x3A435465
	.4byte 0x73743E00

.obj CTTask_CUIWindowManager_typestr, global
	.4byte 0x43545461
	.4byte 0x736B3C43
	.4byte 0x55495769
	.4byte 0x6E646F77
	.4byte 0x4D616E61
	.4byte 0x6765723E
	.4byte 0x00000000
.sym lbl_804FC1AC, global
	.4byte 0x7173745F
	.4byte 0x67656E72
	.4byte 0x65006C61
	.4byte 0x6E646D61
	.4byte 0x726B6C69
	.4byte 0x7374006D
	.4byte 0x61704944
	.4byte 0x00000000
	.4byte 0x00000000
.sym lbl_804FC1D0, global
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000056
	.4byte 0x00000074
	.4byte 0x000000AE
	.4byte 0x00000105
	.4byte 0x00000114
	.4byte 0x00000137
	.4byte 0x0000015F
	.4byte 0x000001D1
	.4byte 0x000001D2
	.4byte 0x000001F0
	.4byte 0x00000218
	.4byte 0x00000263
	.4byte 0x00000272
	.4byte 0x00000281
	.4byte 0x000002A9
	.4byte 0x000002D1
	.4byte 0x000002EF
	.4byte 0x00000000
	.4byte 0x0000032B
	.4byte 0x00000352
	.4byte 0x00000353
	.4byte 0x0000037B
	.4byte 0x00000399
	.4byte 0x000003C1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006F
	.4byte 0x00000070
	.4byte 0x00000079
	.4byte 0x0000007A
	.4byte 0x00000083
	.4byte 0x00000084
	.4byte 0x0000008D
	.4byte 0x0000008E
.sym lbl_804FC260, global
	.4byte 0x0000006F
	.4byte 0x00000070
	.4byte 0x00000079
	.4byte 0x0000007A
	.4byte 0x00000083
	.4byte 0x00000084
	.4byte 0x0000008D
	.4byte 0x0000008E
.sym lbl_804FC280, global
	.4byte 0x726C745F
	.4byte 0x6D656574
	.4byte 0x00697465
	.4byte 0x6D547970
	.4byte 0x65007173
	.4byte 0x745F6765
	.4byte 0x6E726500
	.4byte 0x6E6F6E5F
	.4byte 0x6175746F
	.4byte 0x00746974
	.4byte 0x6C65006E
	.4byte 0x6F5F6D61
	.4byte 0x70006E70
	.4byte 0x635F6964
	.4byte 0x006D6573
	.4byte 0x5F726566
	.4byte 0x75736500
	.4byte 0x666C675F
	.4byte 0x7300636E
	.4byte 0x645F7175
	.4byte 0x65737449
	.4byte 0x4400666C
	.4byte 0x675F6661
	.4byte 0x6D6F7573
	.4byte 0x00636E64
	.4byte 0x5F66616D
	.4byte 0x6F757300
	.4byte 0x6E70636D
	.4byte 0x65657449
	.4byte 0x4431006E
	.4byte 0x70636D65
	.4byte 0x65744944
	.4byte 0x3200666C
	.4byte 0x675F7265
	.4byte 0x6C617465
	.4byte 0x00636E64
	.4byte 0x5F72656C
	.4byte 0x61746500
	.4byte 0x75705F71
	.4byte 0x75657374
	.4byte 0x49440075
	.4byte 0x705F7175
	.4byte 0x65737449
	.4byte 0x4432006E
	.4byte 0x6F5F7265
	.4byte 0x706F7274
	.4byte 0x00747970
	.4byte 0x655F7375
	.4byte 0x63635F41
	.4byte 0x3100636E
	.4byte 0x645F7375
	.4byte 0x63635F41
	.4byte 0x31006E75
	.4byte 0x6D5F7375
	.4byte 0x63635F41
	.4byte 0x3100666C
	.4byte 0x675F7265
	.4byte 0x6C617465
	.4byte 0x5F413100
	.4byte 0x75705F72
	.4byte 0x656C6174
	.4byte 0x655F4131
	.4byte 0x006F7264
	.4byte 0x65725F73
	.4byte 0x7563635F
	.4byte 0x41007570
	.4byte 0x5F66616D
	.4byte 0x6F75735F
	.4byte 0x41007265
	.4byte 0x77617264
	.4byte 0x5F413100
	.4byte 0x72657761
	.4byte 0x72645F41
	.4byte 0x32007265
	.4byte 0x77617264
	.4byte 0x5F413300
	.4byte 0x74797065
	.4byte 0x5F737563
	.4byte 0x635F4132
	.4byte 0x00636E64
	.4byte 0x5F737563
	.4byte 0x635F4132
	.4byte 0x006E756D
	.4byte 0x5F737563
	.4byte 0x635F4132
	.4byte 0x00666C67
	.4byte 0x5F72656C
	.4byte 0x6174655F
	.4byte 0x41320075
	.4byte 0x705F7265
	.4byte 0x6C617465
	.4byte 0x5F413200
	.4byte 0x74797065
	.4byte 0x5F737563
	.4byte 0x635F4133
	.4byte 0x00636E64
	.4byte 0x5F737563
	.4byte 0x635F4133
	.4byte 0x006E756D
	.4byte 0x5F737563
	.4byte 0x635F4133
	.4byte 0x00666C67
	.4byte 0x5F72656C
	.4byte 0x6174655F
	.4byte 0x41330075
	.4byte 0x705F7265
	.4byte 0x6C617465
	.4byte 0x5F413300
	.4byte 0x74797065
	.4byte 0x5F737563
	.4byte 0x635F4134
	.4byte 0x00636E64
	.4byte 0x5F737563
	.4byte 0x635F4134
	.4byte 0x006E756D
	.4byte 0x5F737563
	.4byte 0x635F4134
	.4byte 0x00666C67
	.4byte 0x5F72656C
	.4byte 0x6174655F
	.4byte 0x41340075
	.4byte 0x705F7265
	.4byte 0x6C617465
	.4byte 0x5F413400
	.4byte 0x74797065
	.4byte 0x5F737563
	.4byte 0x635F4231
	.4byte 0x00636E64
	.4byte 0x5F737563
	.4byte 0x635F4231
	.4byte 0x006E756D
	.4byte 0x5F737563
	.4byte 0x635F4231
	.4byte 0x00666C67
	.4byte 0x5F72656C
	.4byte 0x6174655F
	.4byte 0x42310075
	.4byte 0x705F7265
	.4byte 0x6C617465
	.4byte 0x5F423100
	.4byte 0x6F726465
	.4byte 0x725F7375
	.4byte 0x63635F42
	.4byte 0x0075705F
	.4byte 0x66616D6F
	.4byte 0x75735F42
	.4byte 0x00726577
	.4byte 0x6172645F
	.4byte 0x42310072
	.4byte 0x65776172
	.4byte 0x645F4232
	.4byte 0x00726577
	.4byte 0x6172645F
	.4byte 0x42330074
	.4byte 0x7970655F
	.4byte 0x73756363
	.4byte 0x5F423200
	.4byte 0x636E645F
	.4byte 0x73756363
	.4byte 0x5F423200
	.4byte 0x6E756D5F
	.4byte 0x73756363
	.4byte 0x5F423200
	.4byte 0x666C675F
	.4byte 0x72656C61
	.4byte 0x74655F42
	.4byte 0x32007570
	.4byte 0x5F72656C
	.4byte 0x6174655F
	.4byte 0x42320074
	.4byte 0x7970655F
	.4byte 0x73756363
	.4byte 0x5F423300
	.4byte 0x636E645F
	.4byte 0x73756363
	.4byte 0x5F423300
	.4byte 0x6E756D5F
	.4byte 0x73756363
	.4byte 0x5F423300
	.4byte 0x666C675F
	.4byte 0x72656C61
	.4byte 0x74655F42
	.4byte 0x33007570
	.4byte 0x5F72656C
	.4byte 0x6174655F
	.4byte 0x42330074
	.4byte 0x7970655F
	.4byte 0x73756363
	.4byte 0x5F423400
	.4byte 0x636E645F
	.4byte 0x73756363
	.4byte 0x5F423400
	.4byte 0x6E756D5F
	.4byte 0x73756363
	.4byte 0x5F423400
	.4byte 0x666C675F
	.4byte 0x72656C61
	.4byte 0x74655F42
	.4byte 0x34007570
	.4byte 0x5F72656C
	.4byte 0x6174655F
	.4byte 0x42340000

# 0x80531D70 - 0x80531EC0
.data
.balign 8

.obj __vt__CUIWindowManager, global
	.4byte __RTTI__CUIWindowManager
	.4byte 0x00000000
	.4byte fn_8013C400
	.4byte CChildListNode_Reset
	.4byte fn_8013C554
	.4byte fn_8013C678
	.4byte fn_8013C6D8
	.4byte fn_8013F190
	.4byte fn_80043F20
	.4byte __RTTI__CUIWindowManager
	.4byte 0xFFFFFFAC
	.4byte fn_8013F23C
	.4byte fn_8013F234
	.4byte fn_8013CBB4

.obj CUIWindowManager_hierarchy, global
	.4byte __RTTI__cf_IFlagEvent
	.4byte 0x00000054
	.4byte __RTTI__CDoubleListNode
	.4byte 0x00000000
	.4byte __RTTI__CChildListNode
	.4byte 0x00000000
	.4byte __RTTI__CProcess
	.4byte 0x00000000
	.4byte __RTTI__CTTask_CUIWindowManager
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__reslist_IUIWindow, global
	.4byte __RTTI__reslist_IUIWindow
	.4byte 0x00000000
	.4byte fn_8013C348

.obj reslist_IUIWindow_hierarchy, global
	.4byte __RTTI___reslist_base_IUIWindow
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt___reslist_base_IUIWindow, global
	.4byte __RTTI___reslist_base_IUIWindow
	.4byte 0x00000000
	.4byte fn_8013C294

.obj __vt__CUIWindowManager_CTest, global
	.4byte __RTTI__CUIWindowManager_CTest
	.4byte 0x00000000
	.4byte fn_8013F1D8
	.4byte CChildListNode_Reset
	.4byte fn_8013F0B4
	.4byte fn_8013F0B0
	.4byte fn_8013F0AC
	.4byte fn_8013F0A8
	.4byte fn_80043F20

.obj CUIWindowManager_CTest_hierarchy, global
	.4byte __RTTI__CDoubleListNode
	.4byte 0x00000000
	.4byte __RTTI__CChildListNode
	.4byte 0x00000000
	.4byte __RTTI__CProcess
	.4byte 0x00000000
	.4byte __RTTI__CTTask_CUIWindowManager_CTest
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__CTTask_CUIWindowManager_CTest, global
	.4byte __RTTI__CTTask_CUIWindowManager_CTest
	.4byte 0x00000000
	.4byte fn_8013C620
	.4byte CChildListNode_Reset
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte fn_8013F0B8
	.4byte fn_8013F100
	.4byte fn_80043F20

.obj CTTask_CUIWindowManager_CTest_hierarchy, global
	.4byte __RTTI__CDoubleListNode
	.4byte 0x00000000
	.4byte __RTTI__CChildListNode
	.4byte 0x00000000
	.4byte __RTTI__CProcess
	.4byte 0x00000000
	.4byte 0x00000000

.obj __vt__CTTask_CUIWindowManager, global
	.4byte __RTTI__CTTask_CUIWindowManager
	.4byte 0x00000000
	.4byte fn_8013C23C
	.4byte CChildListNode_Reset
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte fn_8013F148
	.4byte fn_8013F190
	.4byte fn_80043F20

.obj CTTask_CUIWindowManager_hierarchy, global
	.4byte __RTTI__CDoubleListNode
	.4byte 0x00000000
	.4byte __RTTI__CChildListNode
	.4byte 0x00000000
	.4byte __RTTI__CProcess
	.4byte 0x00000000
	.4byte 0x00000000

# 0x80577448 - 0x80577580
.section .bss, "wa", @nobits
.balign 8
.sym lbl_80577448, global
	.skip 0xC8
.sym lbl_80577510, global
	.skip 0x70

# 0x80664AF0 - 0x80664B20
.section .sdata, "wa"
.balign 8

.obj __RTTI__CUIWindowManager, global
	.4byte CUIWindowManager_typestr
	.4byte CUIWindowManager_hierarchy

.obj __RTTI__reslist_IUIWindow, global
	.4byte reslist_IUIWindow_typestr
	.4byte reslist_IUIWindow_hierarchy

.obj __RTTI___reslist_base_IUIWindow, global
	.4byte _reslist_base_IUIWindow_typestr
	.4byte 0x00000000

.obj __RTTI__CUIWindowManager_CTest, global
	.4byte CUIWindowManager_CTest_typestr
	.4byte CUIWindowManager_CTest_hierarchy

.obj __RTTI__CTTask_CUIWindowManager_CTest, global
	.4byte CTTask_CUIWindowManager_CTest_typestr
	.4byte CTTask_CUIWindowManager_CTest_hierarchy

.obj __RTTI__CTTask_CUIWindowManager, global
	.4byte CTTask_CUIWindowManager_typestr
	.4byte CTTask_CUIWindowManager_hierarchy

# 0x80666978 - 0x80666980
.section .sbss, "wa", @nobits
.balign 8
.sym lbl_80666978, global
	.skip 0x4
.sym lbl_8066697C, global
	.skip 0x4
