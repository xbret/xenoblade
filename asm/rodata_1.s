.include "macros.inc"

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_8050DEA8
lbl_8050DEA8:
	# ROM: 0x509FA8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x00000001

.global lbl_8050DEB8
lbl_8050DEB8:
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000

.global lbl_8050DEE0
lbl_8050DEE0:
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000

.global lbl_8050DF08
lbl_8050DF08:
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000
	.4byte 0x60000000


.global lbl_8050DF30
lbl_8050DF30:
	# ROM: 0x50A030
	.4byte func_802DD010
	.4byte func_802DD040
	.4byte func_802DD0B0
	.4byte func_802DD0F0
	.4byte func_802DD120
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


.global lbl_8050DFE8
lbl_8050DFE8:
	# ROM: 0x50A0E8
	.4byte 0x12001101
	.4byte 0x11031111
	.4byte 0x11021108
	.4byte 0x111E1105
	.4byte 0x11061109
	.4byte 0x11101104
	.4byte 0x1118111B
	.4byte 0x11151116
	.4byte 0x1117112D
	.4byte 0x110B110E
	.4byte 0x11241304
	.4byte 0x112F0000


.global lbl_8050E018
lbl_8050E018:
	# ROM: 0x50A118
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x0000000C
	.4byte 0x0000001D
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x00000016
	.4byte 0x00000023
	.4byte 0x00000019
	.4byte 0x0000001B
	.4byte 0x0000001A
	.4byte 0x00000028
	.4byte 0x00000025
	.4byte 0x00000027
	.4byte 0x00000020
	.4byte 0x00000025
	.4byte 0x0000002C
	.4byte 0


.global lbl_8050E078
lbl_8050E078:
	# ROM: 0x50A178
	.4byte bta_dm_authorize_cback
	.4byte bta_dm_pin_cback
	.4byte bta_dm_new_link_key_cback
	.4byte bta_dm_link_key_request_cback
	.4byte bta_dm_authentication_complete_cback
	.4byte 0


.global lbl_8050E090
lbl_8050E090:
	# ROM: 0x50A190
	.4byte bta_dm_enable
	.4byte bta_dm_disable
	.4byte bta_dm_set_dev_name
	.4byte bta_dm_set_visibility
	.4byte bta_dm_bond
	.4byte bta_dm_pin_reply
	.4byte bta_dm_auth_reply
	.4byte bta_dm_signal_strength
	.4byte bta_dm_acl_change
	.4byte bta_dm_pm_btm_status
	.4byte bta_dm_pm_timer
	.4byte bta_dm_keep_acl
	.4byte bta_dm_send_hci_reset


.global lbl_8050E0C4
lbl_8050E0C4:
	# ROM: 0x50A1C4
	.4byte 0x000D0001
	.4byte 0x0D00020D
	.4byte 0x00030D00
	.4byte 0x070D0008
	.4byte 0x0D00040D
	.4byte 0x00050D00
	.4byte 0x060D0009
	.4byte 0x0D000A0D
	.4byte 0x000B0D00
	.4byte 0x0C0D0000
	.4byte 0


.global lbl_8050E0F0
lbl_8050E0F0:
	# ROM: 0x50A1F0
	.4byte bta_dm_search_start
	.4byte bta_dm_search_cancel
	.4byte bta_dm_discover
	.4byte bta_dm_inq_cmpl
	.4byte bta_dm_rmt_name
	.4byte bta_dm_sdp_result
	.4byte bta_dm_search_cmpl
	.4byte bta_dm_free_sdp_db
	.4byte bta_dm_disc_result
	.4byte bta_dm_search_result
	.4byte bta_dm_queue_search
	.4byte bta_dm_queue_disc
	.4byte bta_dm_search_clear_queue
	.4byte bta_dm_search_cancel_cmpl
	.4byte bta_dm_search_cancel_notify
	.4byte bta_dm_search_cancel_transac_cmpl
	.4byte bta_dm_disc_rmt_name
	.4byte bta_dm_cancel_rmt_name

.global lbl_8050E138
lbl_8050E138:
	.4byte 0x0012010E
	.4byte 0x12000212
	.4byte 0x03121200
	.4byte 0x12120012
	.4byte 0x12000712
	.4byte 0x00121200
	.4byte 0x12120000

.global lbl_8050E154
lbl_8050E154:
	.4byte 0x12120101
	.4byte 0x12021212
	.4byte 0x01031201
	.4byte 0x04120111
	.4byte 0x12010512
	.4byte 0x01061200
	.4byte 0x09120100

.global lbl_8050E170
lbl_8050E170:
	.4byte 0x0A12020C
	.4byte 0x0E020B12
	.4byte 0x020D1200
	.4byte 0x0F0D0012
	.4byte 0x12020F0D
	.4byte 0x000D1200
	.4byte 0x0D120000

.global lbl_8050E18C
lbl_8050E18C:
	.4byte 0x1212030E
	.4byte 0x12031212
	.4byte 0x03121203
	.4byte 0x10120311
	.4byte 0x12030512
	.4byte 0x03121200
	.4byte 0x08120300


.global lbl_8050E1A8
lbl_8050E1A8:
	# ROM: 0x50A2A8
	.4byte lbl_8050E138
	.4byte lbl_8050E154
	.4byte lbl_8050E170
	.4byte lbl_8050E18C


.global lbl_8050E1B8
lbl_8050E1B8:
	# ROM: 0x50A2B8
	.4byte bta_hh_api_disc_act
	.4byte bta_hh_open_act
	.4byte bta_hh_close_act
	.4byte bta_hh_data_act
	.4byte bta_hh_ctrl_dat_act
	.4byte bta_hh_handsk_act
	.4byte bta_hh_start_sdp
	.4byte bta_hh_sdp_cmpl
	.4byte bta_hh_write_dev_act
	.4byte bta_hh_get_dscp_act
	.4byte bta_hh_maint_dev_act
	.4byte bta_hh_open_cmpl_act

.global lbl_8050E1E8
lbl_8050E1E8:
	.4byte 0x06020C01
	.4byte 0x01020201
	.4byte 0x0C010C01
	.4byte 0x0C010C01
	.4byte 0x0C010C01
	.4byte 0x0A010C01

.global lbl_8050E200
lbl_8050E200:
	.4byte 0x0C020C01
	.4byte 0x01020201
	.4byte 0x0C020C02
	.4byte 0x0C020702
	.4byte 0x0C020C02
	.4byte 0x0A010B03

.global lbl_8050E218
lbl_8050E218:
	.4byte 0x0C030003
	.4byte 0x01030201
	.4byte 0x03030403
	.4byte 0x05030C03
	.4byte 0x08030903
	.4byte 0x0A030C03


.global lbl_8050E230
lbl_8050E230:
	# ROM: 0x50A330
	.4byte lbl_8050E1E8
	.4byte lbl_8050E200
	.4byte lbl_8050E218
	.4byte 0


.global lbl_8050E240
lbl_8050E240:
	# ROM: 0x50A340
	.4byte 0x03020201
	.4byte 0x03010102
	.4byte 0x03000000
	.4byte 0

.global lbl_8050E250
lbl_8050E250:
	.4byte 0x00001F40
	.4byte 0x00001F40
	.4byte 0x000A0060
	.4byte 0x003F0100


.global lbl_8050E260
lbl_8050E260:
	# ROM: 0x50A360
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF7F0000
	.4byte 0


.global lbl_8050E270
lbl_8050E270:
	# ROM: 0x50A370
	.4byte func_802F4BF0
	.4byte func_802F51A8
	.4byte 0
	.4byte func_802F54F0
	.4byte func_802F5798
	.4byte func_802F5AA4
	.4byte func_802F5D68
	.4byte 0
	.4byte func_802F61A8
	.4byte func_802F5FB0


.global lbl_8050E298
lbl_8050E298:
	# ROM: 0x50A398
	.4byte 0x0091E372
	.4byte 0x0796E475
	.4byte 0x0E9FED7C
	.4byte 0x0998EA7B
	.4byte 0x1C8DFF6E
	.4byte 0x1B8AF869
	.4byte 0x1283F160
	.4byte 0x1584F667
	.4byte 0x38A9DB4A
	.4byte 0x3FAEDC4D
	.4byte 0x36A7D544
	.4byte 0x31A0D243
	.4byte 0x24B5C756
	.4byte 0x23B2C051
	.4byte 0x2ABBC958
	.4byte 0x2DBCCE5F
	.4byte 0x70E19302
	.4byte 0x77E69405
	.4byte 0x7EEF9D0C
	.4byte 0x79E89A0B
	.4byte 0x6CFD8F1E
	.4byte 0x6BFA8819
	.4byte 0x62F38110
	.4byte 0x65F48617
	.4byte 0x48D9AB3A
	.4byte 0x4FDEAC3D
	.4byte 0x46D7A534
	.4byte 0x41D0A233
	.4byte 0x54C5B726
	.4byte 0x53C2B021
	.4byte 0x5ACBB928
	.4byte 0x5DCCBE2F
	.4byte 0xE0710392
	.4byte 0xE7760495
	.4byte 0xEE7F0D9C
	.4byte 0xE9780A9B
	.4byte 0xFC6D1F8E
	.4byte 0xFB6A1889
	.4byte 0xF2631180
	.4byte 0xF5641687
	.4byte 0xD8493BAA
	.4byte 0xDF4E3CAD
	.4byte 0xD64735A4
	.4byte 0xD14032A3
	.4byte 0xC45527B6
	.4byte 0xC35220B1
	.4byte 0xCA5B29B8
	.4byte 0xCD5C2EBF
	.4byte 0x900173E2
	.4byte 0x970674E5
	.4byte 0x9E0F7DEC
	.4byte 0x99087AEB
	.4byte 0x8C1D6FFE
	.4byte 0x8B1A68F9
	.4byte 0x821361F0
	.4byte 0x851466F7
	.4byte 0xA8394BDA
	.4byte 0xAF3E4CDD
	.4byte 0xA63745D4
	.4byte 0xA13042D3
	.4byte 0xB42557C6
	.4byte 0xB32250C1
	.4byte 0xBA2B59C8
	.4byte 0xBD2C5ECF


.global lbl_8050E398
lbl_8050E398:
	# ROM: 0x50A498
	.4byte 0
	.4byte 0x00001000
	.4byte 0x80000080
	.4byte 0x5F9B34FB


.global lbl_8050E3A8
lbl_8050E3A8:
	# ROM: 0x50A4A8
	.4byte lbl_80549D60
	.4byte lbl_80549DF0
	.4byte lbl_80549EA0
	.4byte lbl_80549F58
	.4byte lbl_8054A008
	.4byte lbl_8054A0A8
	.4byte lbl_8054A154


.global lbl_8050E3C4
lbl_8050E3C4:
	# ROM: 0x50A4C4
	.4byte lbl_80549D60
	.4byte lbl_8054A1E8
	.4byte lbl_80549EA0
	.4byte lbl_8054A28C
	.4byte lbl_8054A330
	.4byte lbl_8054A0A8
	.4byte lbl_8054A154


.global lbl_8050E3E0
lbl_8050E3E0:
	# ROM: 0x50A4E0
	.4byte lbl_8054A528
	.4byte lbl_8054A564
	.4byte lbl_8054A59C
	.4byte lbl_8054A5DC
	.4byte lbl_8054A618
	.4byte lbl_8054A654
	.4byte lbl_8054A690
	.4byte 0


.global lbl_8050E400
lbl_8050E400:
	# ROM: 0x50A500
	.4byte 0x30003001
	.4byte 0x3002FF0C
	.4byte 0xFF0E30FB
	.4byte 0xFF1AFF1B
	.4byte 0xFF1FFF01
	.4byte 0x309B309C
	.4byte 0x00B4FF40
	.4byte 0x00A8FF3E
	.4byte 0xFFE3FF3F
	.4byte 0x30FD30FE
	.4byte 0x309D309E
	.4byte 0x30034EDD
	.4byte 0x30053006
	.4byte 0x300730FC
	.4byte 0x20152010
	.4byte 0xFF0FFF3C
	.4byte 0xFF5E2225
	.4byte 0xFF5C2026
	.4byte 0x20252018
	.4byte 0x2019201C
	.4byte 0x201DFF08
	.4byte 0xFF093014
	.4byte 0x3015FF3B
	.4byte 0xFF3DFF5B
	.4byte 0xFF5D3008
	.4byte 0x3009300A
	.4byte 0x300B300C
	.4byte 0x300D300E
	.4byte 0x300F3010
	.4byte 0x3011FF0B
	.4byte 0xFF0D00B1
	.4byte 0x00D700F7
	.4byte 0xFF1D2260
	.4byte 0xFF1CFF1E
	.4byte 0x22662267
	.4byte 0x221E2234
	.4byte 0x26422640
	.4byte 0x00B02032
	.4byte 0x20332103
	.4byte 0xFFE5FF04
	.4byte 0xFFE0FFE1
	.4byte 0xFF05FF03
	.4byte 0xFF06FF0A
	.4byte 0xFF2000A7
	.4byte 0x26062605
	.4byte 0x25CB25CF
	.4byte 0x25CE25C7
	.4byte 0x25C625A1
	.4byte 0x25A025B3
	.4byte 0x25B225BD
	.4byte 0x25BC203B
	.4byte 0x30122192
	.4byte 0x21902191
	.4byte 0x21933013
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00002208
	.4byte 0x220B2286
	.4byte 0x22872282
	.4byte 0x2283222A
	.4byte 0x22290000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00002227
	.4byte 0x2228FFE2
	.4byte 0x21D221D4
	.4byte 0x22002203
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00002220
	.4byte 0x22A52312
	.4byte 0x22022207
	.4byte 0x22612252
	.4byte 0x226A226B
	.4byte 0x221A223D
	.4byte 0x221D2235
	.4byte 0x222B222C
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000212B
	.4byte 0x2030266F
	.4byte 0x266D266A
	.4byte 0x20202021
	.4byte 0x00B60000
	.4byte 0
	.4byte 0x000025EF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x0000FF10
	.4byte 0xFF11FF12
	.4byte 0xFF13FF14
	.4byte 0xFF15FF16
	.4byte 0xFF17FF18
	.4byte 0xFF190000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFF21FF22
	.4byte 0xFF23FF24
	.4byte 0xFF25FF26
	.4byte 0xFF27FF28
	.4byte 0xFF29FF2A
	.4byte 0xFF2BFF2C
	.4byte 0xFF2DFF2E
	.4byte 0xFF2FFF30
	.4byte 0xFF31FF32
	.4byte 0xFF33FF34
	.4byte 0xFF35FF36
	.4byte 0xFF37FF38
	.4byte 0xFF39FF3A
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0xFF41FF42
	.4byte 0xFF43FF44
	.4byte 0xFF45FF46
	.4byte 0xFF47FF48
	.4byte 0xFF49FF4A
	.4byte 0xFF4BFF4C
	.4byte 0xFF4DFF4E
	.4byte 0xFF4FFF50
	.4byte 0xFF51FF52
	.4byte 0xFF53FF54
	.4byte 0xFF55FF56
	.4byte 0xFF57FF58
	.4byte 0xFF59FF5A
	.4byte 0
	.4byte 0
	.4byte 0x30413042
	.4byte 0x30433044
	.4byte 0x30453046
	.4byte 0x30473048
	.4byte 0x3049304A
	.4byte 0x304B304C
	.4byte 0x304D304E
	.4byte 0x304F3050
	.4byte 0x30513052
	.4byte 0x30533054
	.4byte 0x30553056
	.4byte 0x30573058
	.4byte 0x3059305A
	.4byte 0x305B305C
	.4byte 0x305D305E
	.4byte 0x305F3060
	.4byte 0x30613062
	.4byte 0x30633064
	.4byte 0x30653066
	.4byte 0x30673068
	.4byte 0x3069306A
	.4byte 0x306B306C
	.4byte 0x306D306E
	.4byte 0x306F3070
	.4byte 0x30713072
	.4byte 0x30733074
	.4byte 0x30753076
	.4byte 0x30773078
	.4byte 0x3079307A
	.4byte 0x307B307C
	.4byte 0x307D307E
	.4byte 0x307F3080
	.4byte 0x30813082
	.4byte 0x30833084
	.4byte 0x30853086
	.4byte 0x30873088
	.4byte 0x3089308A
	.4byte 0x308B308C
	.4byte 0x308D308E
	.4byte 0x308F3090
	.4byte 0x30913092
	.4byte 0x30930000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x30A130A2
	.4byte 0x30A330A4
	.4byte 0x30A530A6
	.4byte 0x30A730A8
	.4byte 0x30A930AA
	.4byte 0x30AB30AC
	.4byte 0x30AD30AE
	.4byte 0x30AF30B0
	.4byte 0x30B130B2
	.4byte 0x30B330B4
	.4byte 0x30B530B6
	.4byte 0x30B730B8
	.4byte 0x30B930BA
	.4byte 0x30BB30BC
	.4byte 0x30BD30BE
	.4byte 0x30BF30C0
	.4byte 0x30C130C2
	.4byte 0x30C330C4
	.4byte 0x30C530C6
	.4byte 0x30C730C8
	.4byte 0x30C930CA
	.4byte 0x30CB30CC
	.4byte 0x30CD30CE
	.4byte 0x30CF30D0
	.4byte 0x30D130D2
	.4byte 0x30D330D4
	.4byte 0x30D530D6
	.4byte 0x30D730D8
	.4byte 0x30D930DA
	.4byte 0x30DB30DC
	.4byte 0x30DD30DE
	.4byte 0x30DF30E0
	.4byte 0x30E130E2
	.4byte 0x30E330E4
	.4byte 0x30E530E6
	.4byte 0x30E730E8
	.4byte 0x30E930EA
	.4byte 0x30EB30EC
	.4byte 0x30ED30EE
	.4byte 0x30EF30F0
	.4byte 0x30F130F2
	.4byte 0x30F330F4
	.4byte 0x30F530F6
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x03910392
	.4byte 0x03930394
	.4byte 0x03950396
	.4byte 0x03970398
	.4byte 0x0399039A
	.4byte 0x039B039C
	.4byte 0x039D039E
	.4byte 0x039F03A0
	.4byte 0x03A103A3
	.4byte 0x03A403A5
	.4byte 0x03A603A7
	.4byte 0x03A803A9
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x03B103B2
	.4byte 0x03B303B4
	.4byte 0x03B503B6
	.4byte 0x03B703B8
	.4byte 0x03B903BA
	.4byte 0x03BB03BC
	.4byte 0x03BD03BE
	.4byte 0x03BF03C0
	.4byte 0x03C103C3
	.4byte 0x03C403C5
	.4byte 0x03C603C7
	.4byte 0x03C803C9
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
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x04100411
	.4byte 0x04120413
	.4byte 0x04140415
	.4byte 0x04010416
	.4byte 0x04170418
	.4byte 0x0419041A
	.4byte 0x041B041C
	.4byte 0x041D041E
	.4byte 0x041F0420
	.4byte 0x04210422
	.4byte 0x04230424
	.4byte 0x04250426
	.4byte 0x04270428
	.4byte 0x0429042A
	.4byte 0x042B042C
	.4byte 0x042D042E
	.4byte 0x042F0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x04300431
	.4byte 0x04320433
	.4byte 0x04340435
	.4byte 0x04510436
	.4byte 0x04370438
	.4byte 0x0439043A
	.4byte 0x043B043C
	.4byte 0x043D043E
	.4byte 0x043F0440
	.4byte 0x04410442
	.4byte 0x04430444
	.4byte 0x04450446
	.4byte 0x04470448
	.4byte 0x0449044A
	.4byte 0x044B044C
	.4byte 0x044D044E
	.4byte 0x044F0000
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x25002502
	.4byte 0x250C2510
	.4byte 0x25182514
	.4byte 0x251C252C
	.4byte 0x25242534
	.4byte 0x253C2501
	.4byte 0x2503250F
	.4byte 0x2513251B
	.4byte 0x25172523
	.4byte 0x2533252B
	.4byte 0x253B254B
	.4byte 0x2520252F
	.4byte 0x25282537
	.4byte 0x253F251D
	.4byte 0x25302525
	.4byte 0x25382542
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
	.4byte 0x24602461
	.4byte 0x24622463
	.4byte 0x24642465
	.4byte 0x24662467
	.4byte 0x24682469
	.4byte 0x246A246B
	.4byte 0x246C246D
	.4byte 0x246E246F
	.4byte 0x24702471
	.4byte 0x24722473
	.4byte 0x21602161
	.4byte 0x21622163
	.4byte 0x21642165
	.4byte 0x21662167
	.4byte 0x21682169
	.4byte 0x00003349
	.4byte 0x33143322
	.4byte 0x334D3318
	.4byte 0x33273303
	.4byte 0x33363351
	.4byte 0x3357330D
	.4byte 0x33263323
	.4byte 0x332B334A
	.4byte 0x333B339C
	.4byte 0x339D339E
	.4byte 0x338E338F
	.4byte 0x33C433A1
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x337B301D
	.4byte 0x301F2116
	.4byte 0x33CD2121
	.4byte 0x32A432A5
	.4byte 0x32A632A7
	.4byte 0x32A83231
	.4byte 0x32323239
	.4byte 0x337E337D
	.4byte 0x337C2252
	.4byte 0x2261222B
	.4byte 0x222E2211
	.4byte 0x221A22A5
	.4byte 0x2220221F
	.4byte 0x22BF2235
	.4byte 0x2229222A
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
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x4E9C5516
	.4byte 0x5A03963F
	.4byte 0x54C0611B
	.4byte 0x632859F6
	.4byte 0x90228475
	.4byte 0x831C7A50
	.4byte 0x60AA63E1
	.4byte 0x6E2565ED
	.4byte 0x846682A6
	.4byte 0x9BF56893
	.4byte 0x572765A1
	.4byte 0x62715B9B
	.4byte 0x59D0867B
	.4byte 0x98F47D62
	.4byte 0x7DBE9B8E
	.4byte 0x62167C9F
	.4byte 0x88B75B89
	.4byte 0x5EB56309
	.4byte 0x66976848
	.4byte 0x95C7978D
	.4byte 0x674F4EE5
	.4byte 0x4F0A4F4D
	.4byte 0x4F9D5049
	.4byte 0x56F25937
	.4byte 0x59D45A01
	.4byte 0x5C0960DF
	.4byte 0x610F6170
	.4byte 0x66136905
	.4byte 0x70BA754F
	.4byte 0x757079FB
	.4byte 0x7DAD7DEF
	.4byte 0x80C3840E
	.4byte 0x88638B02
	.4byte 0x9055907A
	.4byte 0x533B4E95
	.4byte 0x4EA557DF
	.4byte 0x80B290C1
	.4byte 0x78EF4E00
	.4byte 0x58F16EA2
	.4byte 0x90387A32
	.4byte 0x8328828B
	.4byte 0x9C2F5141
	.4byte 0x537054BD
	.4byte 0x54E156E0
	.4byte 0x59FB5F15
	.4byte 0x98F26DEB
	.4byte 0x80E4852D
	.4byte 0x96629670
	.4byte 0x96A097FB
	.4byte 0x540B53F3
	.4byte 0x5B8770CF
	.4byte 0x7FBD8FC2
	.4byte 0x96E8536F
	.4byte 0x9D5C7ABA
	.4byte 0x4E117893
	.4byte 0x81FC6E26
	.4byte 0x56185504
	.4byte 0x6B1D851A
	.4byte 0x9C3B59E5
	.4byte 0x53A96D66
	.4byte 0x74DC958F
	.4byte 0x56424E91
	.4byte 0x904B96F2
	.4byte 0x834F990C
	.4byte 0x53E155B6
	.4byte 0x5B305F71
	.4byte 0x662066F3
	.4byte 0x68046C38
	.4byte 0x6CF36D29
	.4byte 0x745B76C8
	.4byte 0x7A4E9834
	.4byte 0x82F1885B
	.4byte 0x8A6092ED
	.4byte 0x6DB275AB
	.4byte 0x76CA99C5
	.4byte 0x60A68B01
	.4byte 0x8D8A95B2
	.4byte 0x698E53AD
	.4byte 0x51865712
	.4byte 0x58305944
	.4byte 0x5BB45EF6
	.4byte 0x602863A9
	.4byte 0x63F46CBF
	.4byte 0x6F14708E
	.4byte 0x71147159
	.4byte 0x71D5733F
	.4byte 0x7E018276
	.4byte 0x82D18597
	.4byte 0x9060925B
	.4byte 0x9D1B5869
	.4byte 0x65BC6C5A
	.4byte 0x752551F9
	.4byte 0x592E5965
	.4byte 0x5F805FDC
	.4byte 0x62BC65FA
	.4byte 0x6A2A6B27
	.4byte 0x6BB4738B
	.4byte 0x7FC18956
	.4byte 0x9D2C9D0E
	.4byte 0x9EC45CA1
	.4byte 0x6C96837B
	.4byte 0x51045C4B
	.4byte 0x61B681C6
	.4byte 0x68767261
	.4byte 0x4E594FFA
	.4byte 0x53786069
	.4byte 0x6E297A4F
	.4byte 0x97F34E0B
	.4byte 0x53164EEE
	.4byte 0x4F554F3D
	.4byte 0x4FA14F73
	.4byte 0x52A053EF
	.4byte 0x5609590F
	.4byte 0x5AC15BB6
	.4byte 0x5BE179D1
	.4byte 0x6687679C
	.4byte 0x67B66B4C
	.4byte 0x6CB3706B
	.4byte 0x73C2798D
	.4byte 0x79BE7A3C
	.4byte 0x7B8782B1
	.4byte 0x82DB8304
	.4byte 0x837783EF
	.4byte 0x83D38766
	.4byte 0x8AB25629
	.4byte 0x8CA88FE6
	.4byte 0x904E971E
	.4byte 0x868A4FC4
	.4byte 0x5CE86211
	.4byte 0x7259753B
	.4byte 0x81E582BD
	.4byte 0x86FE8CC0
	.4byte 0x96C59913
	.4byte 0x99D54ECB
	.4byte 0x4F1A89E3
	.4byte 0x56DE584A
	.4byte 0x58CA5EFB
	.4byte 0x5FEB602A
	.4byte 0x60946062
	.4byte 0x61D06212
	.4byte 0x62D06539
	.4byte 0x9B416666
	.4byte 0x68B06D77
	.4byte 0x7070754C
	.4byte 0x76867D75
	.4byte 0x82A587F9
	.4byte 0x958B968E
	.4byte 0x8C9D51F1
	.4byte 0x52BE5916
	.4byte 0x54B35BB3
	.4byte 0x5D166168
	.4byte 0x69826DAF
	.4byte 0x788D84CB
	.4byte 0x88578A72
	.4byte 0x93A79AB8
	.4byte 0x6D6C99A8
	.4byte 0x86D957A3
	.4byte 0x67FF86CE
	.4byte 0x920E5283
	.4byte 0x56875404
	.4byte 0x5ED362E1
	.4byte 0x64B9683C
	.4byte 0x68386BBB
	.4byte 0x737278BA
	.4byte 0x7A6B899A
	.4byte 0x89D28D6B
	.4byte 0x8F0390ED
	.4byte 0x95A39694
	.4byte 0x97695B66
	.4byte 0x5CB3697D
	.4byte 0x984D984E
	.4byte 0x639B7B20
	.4byte 0x6A2B6A7F
	.4byte 0x68B69C0D
	.4byte 0x6F5F5272
	.4byte 0x559D6070
	.4byte 0x62EC6D3B
	.4byte 0x6E076ED1
	.4byte 0x845B8910
	.4byte 0x8F444E14
	.4byte 0x9C3953F6
	.4byte 0x691B6A3A
	.4byte 0x9784682A
	.4byte 0x515C7AC3
	.4byte 0x84B291DC
	.4byte 0x938C565B
	.4byte 0x9D286822
	.4byte 0x83058431
	.4byte 0x7CA55208
	.4byte 0x82C574E6
	.4byte 0x4E7E4F83
	.4byte 0x51A05BD2
	.4byte 0x520A52D8
	.4byte 0x52E75DFB
	.4byte 0x559A582A
	.4byte 0x59E65B8C
	.4byte 0x5B985BDB
	.4byte 0x5E725E79
	.4byte 0x60A3611F
	.4byte 0x616361BE
	.4byte 0x63DB6562
	.4byte 0x67D16853
	.4byte 0x68FA6B3E
	.4byte 0x6B536C57
	.4byte 0x6F226F97
	.4byte 0x6F4574B0
	.4byte 0x751876E3
	.4byte 0x770B7AFF
	.4byte 0x7BA17C21
	.4byte 0x7DE97F36
	.4byte 0x7FF0809D
	.4byte 0x8266839E
	.4byte 0x89B38ACC
	.4byte 0x8CAB9084
	.4byte 0x94519593
	.4byte 0x959195A2
	.4byte 0x966597D3
	.4byte 0x99288218
	.4byte 0x4E38542B
	.4byte 0x5CB85DCC
	.4byte 0x73A9764C
	.4byte 0x773C5CA9
	.4byte 0x7FEB8D0B
	.4byte 0x96C19811
	.4byte 0x98549858
	.4byte 0x4F014F0E
	.4byte 0x5371559C
	.4byte 0x566857FA
	.4byte 0x59475B09
	.4byte 0x5BC45C90
	.4byte 0x5E0C5E7E
	.4byte 0x5FCC63EE
	.4byte 0x673A65D7
	.4byte 0x65E2671F
	.4byte 0x68CB68C4
	.4byte 0x6A5F5E30
	.4byte 0x6BC56C17
	.4byte 0x6C7D757F
	.4byte 0x79485B63
	.4byte 0x7A007D00
	.4byte 0x5FBD898F
	.4byte 0x8A188CB4
	.4byte 0x8D778ECC
	.4byte 0x8F1D98E2
	.4byte 0x9A0E9B3C
	.4byte 0x4E80507D
	.4byte 0x51005993
	.4byte 0x5B9C622F
	.4byte 0x628064EC
	.4byte 0x6B3A72A0
	.4byte 0x75917947
	.4byte 0x7FA987FB
	.4byte 0x8ABC8B70
	.4byte 0x63AC83CA
	.4byte 0x97A05409
	.4byte 0x540355AB
	.4byte 0x68546A58
	.4byte 0x8A707827
	.4byte 0x67759ECD
	.4byte 0x53745BA2
	.4byte 0x811A8650
	.4byte 0x90064E18
	.4byte 0x4E454EC7
	.4byte 0x4F1153CA
	.4byte 0x54385BAE
	.4byte 0x5F136025
	.4byte 0x6551673D
	.4byte 0x6C426C72
	.4byte 0x6CE37078
	.4byte 0x74037A76
	.4byte 0x7AAE7B08
	.4byte 0x7D1A7CFE
	.4byte 0x7D6665E7
	.4byte 0x725B53BB
	.4byte 0x5C455DE8
	.4byte 0x62D262E0
	.4byte 0x63196E20
	.4byte 0x865A8A31
	.4byte 0x8DDD92F8
	.4byte 0x6F0179A6
	.4byte 0x9B5A4EA8
	.4byte 0x4EAB4EAC
	.4byte 0x4F9B4FA0
	.4byte 0x50D15147
	.4byte 0x7AF65171
	.4byte 0x51F65354
	.4byte 0x5321537F
	.4byte 0x53EB55AC
	.4byte 0x58835CE1
	.4byte 0x5F375F4A
	.4byte 0x602F6050
	.4byte 0x606D631F
	.4byte 0x65596A4B
	.4byte 0x6CC172C2
	.4byte 0x72ED77EF
	.4byte 0x80F88105
	.4byte 0x8208854E
	.4byte 0x90F793E1
	.4byte 0x97FF9957
	.4byte 0x9A5A4EF0
	.4byte 0x51DD5C2D
	.4byte 0x6681696D
	.4byte 0x5C4066F2
	.4byte 0x69757389
	.4byte 0x68507C81
	.4byte 0x50C552E4
	.4byte 0x57475DFE
	.4byte 0x932665A4
	.4byte 0x6B236B3D
	.4byte 0x74347981
	.4byte 0x79BD7B4B
	.4byte 0x7DCA82B9
	.4byte 0x83CC887F
	.4byte 0x895F8B39
	.4byte 0x8FD191D1
	.4byte 0x541F9280
	.4byte 0x4E5D5036
	.4byte 0x53E5533A
	.4byte 0x72D77396
	.4byte 0x77E982E6
	.4byte 0x8EAF99C6
	.4byte 0x99C899D2
	.4byte 0x5177611A
	.4byte 0x865E55B0
	.4byte 0x7A7A5076
	.4byte 0x5BD39047
	.4byte 0x96854E32
	.4byte 0x6ADB91E7
	.4byte 0x5C515C48
	.4byte 0x63987A9F
	.4byte 0x6C939774
	.4byte 0x8F617AAA
	.4byte 0x718A9688
	.4byte 0x7C826817
	.4byte 0x7E706851
	.4byte 0x936C52F2
	.4byte 0x541B85AB
	.4byte 0x8A137FA4
	.4byte 0x8ECD90E1
	.4byte 0x53668888
	.4byte 0x79414FC2
	.4byte 0x50BE5211
	.4byte 0x51445553
	.4byte 0x572D73EA
	.4byte 0x578B5951
	.4byte 0x5F625F84
	.4byte 0x60756176
	.4byte 0x616761A9
	.4byte 0x63B2643A
	.4byte 0x656C666F
	.4byte 0x68426E13
	.4byte 0x75667A3D
	.4byte 0x7CFB7D4C
	.4byte 0x7D997E4B
	.4byte 0x7F6B830E
	.4byte 0x834A86CD
	.4byte 0x8A088A63
	.4byte 0x8B668EFD
	.4byte 0x981A9D8F
	.4byte 0x82B88FCE
	.4byte 0x9BE85287
	.4byte 0x621F6483
	.4byte 0x6FC09699
	.4byte 0x68415091
	.4byte 0x6B206C7A
	.4byte 0x6F547A74
	.4byte 0x7D508840
	.4byte 0x8A236708
	.4byte 0x4EF65039
	.4byte 0x50265065
	.4byte 0x517C5238
	.4byte 0x526355A7
	.4byte 0x570F5805
	.4byte 0x5ACC5EFA
	.4byte 0x61B261F8
	.4byte 0x62F36372
	.4byte 0x691C6A29
	.4byte 0x727D72AC
	.4byte 0x732E7814
	.4byte 0x786F7D79
	.4byte 0x770C80A9
	.4byte 0x898B8B19
	.4byte 0x8CE28ED2
	.4byte 0x90639375
	.4byte 0x967A9855
	.4byte 0x9A139E78
	.4byte 0x5143539F
	.4byte 0x53B35E7B
	.4byte 0x5F266E1B
	.4byte 0x6E907384
	.4byte 0x73FE7D43
	.4byte 0x82378A00
	.4byte 0x8AFA9650
	.4byte 0x4E4E500B
	.4byte 0x53E4547C
	.4byte 0x56FA59D1
	.4byte 0x5B645DF1
	.4byte 0x5EAB5F27
	.4byte 0x62386545
	.4byte 0x67AF6E56
	.4byte 0x72D07CCA
	.4byte 0x88B480A1
	.4byte 0x80E183F0
	.4byte 0x864E8A87
	.4byte 0x8DE89237
	.4byte 0x96C79867
	.4byte 0x9F134E94
	.4byte 0x4E924F0D
	.4byte 0x53485449
	.4byte 0x543E5A2F
	.4byte 0x5F8C5FA1
	.4byte 0x609F68A7
	.4byte 0x6A8E745A
	.4byte 0x78818A9E
	.4byte 0x8AA48B77
	.4byte 0x91904E5E
	.4byte 0x9BC94EA4
	.4byte 0x4F7C4FAF
	.4byte 0x50195016
	.4byte 0x5149516C
	.4byte 0x529F52B9
	.4byte 0x52FE539A
	.4byte 0x53E35411
	.4byte 0x540E5589
	.4byte 0x575157A2
	.4byte 0x597D5B54
	.4byte 0x5B5D5B8F
	.4byte 0x5DE55DE7
	.4byte 0x5DF75E78
	.4byte 0x5E835E9A
	.4byte 0x5EB75F18
	.4byte 0x6052614C
	.4byte 0x629762D8
	.4byte 0x63A7653B
	.4byte 0x66026643
	.4byte 0x66F4676D
	.4byte 0x68216897
	.4byte 0x69CB6C5F
	.4byte 0x6D2A6D69
	.4byte 0x6E2F6E9D
	.4byte 0x75327687
	.4byte 0x786C7A3F
	.4byte 0x7CE07D05
	.4byte 0x7D187D5E
	.4byte 0x7DB18015
	.4byte 0x800380AF
	.4byte 0x80B18154
	.4byte 0x818F822A
	.4byte 0x8352884C
	.4byte 0x88618B1B
	.4byte 0x8CA28CFC
	.4byte 0x90CA9175
	.4byte 0x9271783F
	.4byte 0x92FC95A4
	.4byte 0x964D9805
	.4byte 0x99999AD8
	.4byte 0x9D3B525B
	.4byte 0x52AB53F7
	.4byte 0x540858D5
	.4byte 0x62F76FE0
	.4byte 0x8C6A8F5F
	.4byte 0x9EB9514B
	.4byte 0x523B544A
	.4byte 0x56FD7A40
	.4byte 0x91779D60
	.4byte 0x9ED27344
	.4byte 0x6F098170
	.4byte 0x75115FFD
	.4byte 0x60DA9AA8
	.4byte 0x72DB8FBC
	.4byte 0x6B649803
	.4byte 0x4ECA56F0
	.4byte 0x576458BE
	.4byte 0x5A5A6068
	.4byte 0x61C7660F
	.4byte 0x66066839
	.4byte 0x68B16DF7
	.4byte 0x75D57D3A
	.4byte 0x826E9B42
	.4byte 0x4E9B4F50
	.4byte 0x53C95506
	.4byte 0x5D6F5DE6
	.4byte 0x5DEE67FB
	.4byte 0x6C997473
	.4byte 0x78028A50
	.4byte 0x939688DF
	.4byte 0x57505EA7
	.4byte 0x632B50B5
	.4byte 0x50AC518D
	.4byte 0x670054C9
	.4byte 0x585E59BB
	.4byte 0x5BB05F69
	.4byte 0x624D63A1
	.4byte 0x683D6B73
	.4byte 0x6E08707D
	.4byte 0x91C77280
	.4byte 0x78157826
	.4byte 0x796D658E
	.4byte 0x7D3083DC
	.4byte 0x88C18F09
	.4byte 0x969B5264
	.4byte 0x57286750
	.4byte 0x7F6A8CA1
	.4byte 0x51B45742
	.4byte 0x962A583A
	.4byte 0x698A80B4
	.4byte 0x54B25D0E
	.4byte 0x57FC7895
	.4byte 0x9DFA4F5C
	.4byte 0x524A548B
	.4byte 0x643E6628
	.4byte 0x671467F5
	.4byte 0x7A847B56
	.4byte 0x7D22932F
	.4byte 0x685C9BAD
	.4byte 0x7B395319
	.4byte 0x518A5237
	.4byte 0x5BDF62F6
	.4byte 0x64AE64E6
	.4byte 0x672D6BBA
	.4byte 0x85A996D1
	.4byte 0x76909BD6
	.4byte 0x634C9306
	.4byte 0x9BAB76BF
	.4byte 0x66524E09
	.4byte 0x509853C2
	.4byte 0x5C7160E8
	.4byte 0x64926563
	.4byte 0x685F71E6
	.4byte 0x73CA7523
	.4byte 0x7B977E82
	.4byte 0x86958B83
	.4byte 0x8CDB9178
	.4byte 0x991065AC
	.4byte 0x66AB6B8B
	.4byte 0x4ED54ED4
	.4byte 0x4F3A4F7F
	.4byte 0x523A53F8
	.4byte 0x53F255E3
	.4byte 0x56DB58EB
	.4byte 0x59CB59C9
	.4byte 0x59FF5B50
	.4byte 0x5C4D5E02
	.4byte 0x5E2B5FD7
	.4byte 0x601D6307
	.4byte 0x652F5B5C
	.4byte 0x65AF65BD
	.4byte 0x65E8679D
	.4byte 0x6B626B7B
	.4byte 0x6C0F7345
	.4byte 0x794979C1
	.4byte 0x7CF87D19
	.4byte 0x7D2B80A2
	.4byte 0x810281F3
	.4byte 0x89968A5E
	.4byte 0x8A698A66
	.4byte 0x8A8C8AEE
	.4byte 0x8CC78CDC
	.4byte 0x96CC98FC
	.4byte 0x6B6F4E8B
	.4byte 0x4F3C4F8D
	.4byte 0x51505B57
	.4byte 0x5BFA6148
	.4byte 0x63016642
	.4byte 0x6B216ECB
	.4byte 0x6CBB723E
	.4byte 0x74BD75D4
	.4byte 0x78C1793A
	.4byte 0x800C8033
	.4byte 0x81EA8494
	.4byte 0x8F9E6C50
	.4byte 0x9E7F5F0F
	.4byte 0x8B589D2B
	.4byte 0x7AFA8EF8
	.4byte 0x5B8D96EB
	.4byte 0x4E0353F1
	.4byte 0x57F75931
	.4byte 0x5AC95BA4
	.4byte 0x60896E7F
	.4byte 0x6F0675BE
	.4byte 0x8CEA5B9F
	.4byte 0x85007BE0
	.4byte 0x507267F4
	.4byte 0x829D5C61
	.4byte 0x854A7E1E
	.4byte 0x820E5199
	.4byte 0x5C046368
	.4byte 0x8D66659C
	.4byte 0x716E793E
	.4byte 0x7D178005
	.4byte 0x8B1D8ECA
	.4byte 0x906E86C7
	.4byte 0x90AA501F
	.4byte 0x52FA5C3A
	.4byte 0x6753707C
	.4byte 0x7235914C
	.4byte 0x91C8932B
	.4byte 0x82E55BC2
	.4byte 0x5F3160F9
	.4byte 0x4E3B53D6
	.4byte 0x5B88624B
	.4byte 0x67316B8A
	.4byte 0x72E973E0
	.4byte 0x7A2E816B
	.4byte 0x8DA39152
	.4byte 0x99965112
	.4byte 0x53D7546A
	.4byte 0x5BFF6388
	.4byte 0x6A397DAC
	.4byte 0x970056DA
	.4byte 0x53CE5468
	.4byte 0x5B975C31
	.4byte 0x5DDE4FEE
	.4byte 0x610162FE
	.4byte 0x6D3279C0
	.4byte 0x79CB7D42
	.4byte 0x7E4D7FD2
	.4byte 0x81ED821F
	.4byte 0x84908846
	.4byte 0x89728B90
	.4byte 0x8E748F2F
	.4byte 0x9031914B
	.4byte 0x916C96C6
	.4byte 0x919C4EC0
	.4byte 0x4F4F5145
	.4byte 0x53415F93
	.4byte 0x620E67D4
	.4byte 0x6C416E0B
	.4byte 0x73637E26
	.4byte 0x91CD9283
	.4byte 0x53D45919
	.4byte 0x5BBF6DD1
	.4byte 0x795D7E2E
	.4byte 0x7C9B587E
	.4byte 0x719F51FA
	.4byte 0x88538FF0
	.4byte 0x4FCA5CFB
	.4byte 0x662577AC
	.4byte 0x7AE3821C
	.4byte 0x99FF51C6
	.4byte 0x5FAA65EC
	.4byte 0x696F6B89
	.4byte 0x6DF36E96
	.4byte 0x6F6476FE
	.4byte 0x7D145DE1
	.4byte 0x90759187
	.4byte 0x980651E6
	.4byte 0x521D6240
	.4byte 0x669166D9
	.4byte 0x6E1A5EB6
	.4byte 0x7DD27F72
	.4byte 0x66F885AF
	.4byte 0x85F78AF8
	.4byte 0x52A953D9
	.4byte 0x59735E8F
	.4byte 0x5F906055
	.4byte 0x92E49664
	.4byte 0x50B7511F
	.4byte 0x52DD5320
	.4byte 0x534753EC
	.4byte 0x54E85546
	.4byte 0x55315617
	.4byte 0x596859BE
	.4byte 0x5A3C5BB5
	.4byte 0x5C065C0F
	.4byte 0x5C115C1A
	.4byte 0x5E845E8A
	.4byte 0x5EE05F70
	.4byte 0x627F6284
	.4byte 0x62DB638C
	.4byte 0x63776607
	.4byte 0x660C662D
	.4byte 0x6676677E
	.4byte 0x68A26A1F
	.4byte 0x6A356CBC
	.4byte 0x6D886E09
	.4byte 0x6E58713C
	.4byte 0x71267167
	.4byte 0x75C77701
	.4byte 0x785D7901
	.4byte 0x796579F0
	.4byte 0x7AE07B11
	.4byte 0x7CA77D39
	.4byte 0x809683D6
	.4byte 0x848B8549
	.4byte 0x885D88F3
	.4byte 0x8A1F8A3C
	.4byte 0x8A548A73
	.4byte 0x8C618CDE
	.4byte 0x91A49266
	.4byte 0x937E9418
	.4byte 0x969C9798
	.4byte 0x4E0A4E08
	.4byte 0x4E1E4E57
	.4byte 0x51975270
	.4byte 0x57CE5834
	.4byte 0x58CC5B22
	.4byte 0x5E3860C5
	.4byte 0x64FE6761
	.4byte 0x67566D44
	.4byte 0x72B67573
	.4byte 0x7A6384B8
	.4byte 0x8B7291B8
	.4byte 0x93205631
	.4byte 0x57F498FE
	.4byte 0x62ED690D
	.4byte 0x6B9671ED
	.4byte 0x7E548077
	.4byte 0x827289E6
	.4byte 0x98DF8755
	.4byte 0x8FB15C3B
	.4byte 0x4F384FE1
	.4byte 0x4FB55507
	.4byte 0x5A205BDD
	.4byte 0x5BE95FC3
	.4byte 0x614E632F
	.4byte 0x65B0664B
	.4byte 0x68EE699B
	.4byte 0x6D786DF1
	.4byte 0x753375B9
	.4byte 0x771F795E
	.4byte 0x79E67D33
	.4byte 0x81E382AF
	.4byte 0x85AA89AA
	.4byte 0x8A3A8EAB
	.4byte 0x8F9B9032
	.4byte 0x91DD9707
	.4byte 0x4EBA4EC1
	.4byte 0x52035875
	.4byte 0x58EC5C0B
	.4byte 0x751A5C3D
	.4byte 0x814E8A0A
	.4byte 0x8FC59663
	.4byte 0x976D7B25
	.4byte 0x8ACF9808
	.4byte 0x916256F3
	.4byte 0x53A89017
	.4byte 0x54395782
	.4byte 0x5E2563A8
	.4byte 0x6C34708A
	.4byte 0x77617C8B
	.4byte 0x7FE08870
	.4byte 0x90429154
	.4byte 0x93109318
	.4byte 0x968F745E
	.4byte 0x9AC45D07
	.4byte 0x5D696570
	.4byte 0x67A28DA8
	.4byte 0x96DB636E
	.4byte 0x67496919
	.4byte 0x83C59817
	.4byte 0x96C088FE
	.4byte 0x6F84647A
	.4byte 0x5BF84E16
	.4byte 0x702C755D
	.4byte 0x662F51C4
	.4byte 0x523652E2
	.4byte 0x59D35F81
	.4byte 0x60276210
	.4byte 0x653F6574
	.4byte 0x661F6674
	.4byte 0x68F26816
	.4byte 0x6B636E05
	.4byte 0x7272751F
	.4byte 0x76DB7CBE
	.4byte 0x805658F0
	.4byte 0x88FD897F
	.4byte 0x8AA08A93
	.4byte 0x8ACB901D
	.4byte 0x91929752
	.4byte 0x97596589
	.4byte 0x7A0E8106
	.4byte 0x96BB5E2D
	.4byte 0x60DC621A
	.4byte 0x65A56614
	.4byte 0x679077F3
	.4byte 0x7A4D7C4D
	.4byte 0x7E3E810A
	.4byte 0x8CAC8D64
	.4byte 0x8DE18E5F
	.4byte 0x78A95207
	.4byte 0x62D963A5
	.4byte 0x64426298
	.4byte 0x8A2D7A83
	.4byte 0x7BC08AAC
	.4byte 0x96EA7D76
	.4byte 0x820C8749
	.4byte 0x4ED95148
	.4byte 0x53435360
	.4byte 0x5BA35C02
	.4byte 0x5C165DDD
	.4byte 0x62266247
	.4byte 0x64B06813
	.4byte 0x68346CC9
	.4byte 0x6D456D17
	.4byte 0x67D36F5C
	.4byte 0x714E717D
	.4byte 0x65CB7A7F
	.4byte 0x7BAD7DDA
	.4byte 0x7E4A7FA8
	.4byte 0x817A821B
	.4byte 0x823985A6
	.4byte 0x8A6E8CCE
	.4byte 0x8DF59078
	.4byte 0x907792AD
	.4byte 0x92919583
	.4byte 0x9BAE524D
	.4byte 0x55846F38
	.4byte 0x71365168
	.4byte 0x79857E55
	.4byte 0x81B37CCE
	.4byte 0x564C5851
	.4byte 0x5CA863AA
	.4byte 0x66FE66FD
	.4byte 0x695A72D9
	.4byte 0x758F758E
	.4byte 0x790E7956
	.4byte 0x79DF7C97
	.4byte 0x7D207D44
	.4byte 0x86078A34
	.4byte 0x963B9061
	.4byte 0x9F2050E7
	.4byte 0x527553CC
	.4byte 0x53E25009
	.4byte 0x55AA58EE
	.4byte 0x594F723D
	.4byte 0x5B8B5C64
	.4byte 0x531D60E3
	.4byte 0x60F3635C
	.4byte 0x6383633F
	.4byte 0x63BB64CD
	.4byte 0x65E966F9
	.4byte 0x5DE369CD
	.4byte 0x69FD6F15
	.4byte 0x71E54E89
	.4byte 0x75E976F8
	.4byte 0x7A937CDF
	.4byte 0x7DCF7D9C
	.4byte 0x80618349
	.4byte 0x8358846C
	.4byte 0x84BC85FB
	.4byte 0x88C58D70
	.4byte 0x9001906D
	.4byte 0x9397971C
	.4byte 0x9A1250CF
	.4byte 0x5897618E
	.4byte 0x81D38535
	.4byte 0x8D089020
	.4byte 0x4FC35074
	.4byte 0x52475373
	.4byte 0x606F6349
	.4byte 0x675F6E2C
	.4byte 0x8DB3901F
	.4byte 0x4FD75C5E
	.4byte 0x8CCA65CF
	.4byte 0x7D9A5352
	.4byte 0x88965176
	.4byte 0x63C35B58
	.4byte 0x5B6B5C0A
	.4byte 0x640D6751
	.4byte 0x905C4ED6
	.4byte 0x591A592A
	.4byte 0x6C708A51
	.4byte 0x553E5815
	.4byte 0x59A560F0
	.4byte 0x625367C1
	.4byte 0x82356955
	.4byte 0x964099C4
	.4byte 0x9A284F53
	.4byte 0x58065BFE
	.4byte 0x80105CB1
	.4byte 0x5E2F5F85
	.4byte 0x6020614B
	.4byte 0x623466FF
	.4byte 0x6CF06EDE
	.4byte 0x80CE817F
	.4byte 0x82D4888B
	.4byte 0x8CB89000
	.4byte 0x902E968A
	.4byte 0x9EDB9BDB
	.4byte 0x4EE353F0
	.4byte 0x59277B2C
	.4byte 0x918D984C
	.4byte 0x9DF96EDD
	.4byte 0x70275353
	.4byte 0x55445B85
	.4byte 0x6258629E
	.4byte 0x62D36CA2
	.4byte 0x6FEF7422
	.4byte 0x8A179438
	.4byte 0x6FC18AFE
	.4byte 0x833851E7
	.4byte 0x86F853EA
	.4byte 0x53E94F46
	.4byte 0x90548FB0
	.4byte 0x596A8131
	.4byte 0x5DFD7AEA
	.4byte 0x8FBF68DA
	.4byte 0x8C3772F8
	.4byte 0x9C486A3D
	.4byte 0x8AB04E39
	.4byte 0x53585606
	.4byte 0x576662C5
	.4byte 0x63A265E6
	.4byte 0x6B4E6DE1
	.4byte 0x6E5B70AD
	.4byte 0x77ED7AEF
	.4byte 0x7BAA7DBB
	.4byte 0x803D80C6
	.4byte 0x86CB8A95
	.4byte 0x935B56E3
	.4byte 0x58C75F3E
	.4byte 0x65AD6696
	.4byte 0x6A806BB5
	.4byte 0x75378AC7
	.4byte 0x502477E5
	.4byte 0x57305F1B
	.4byte 0x6065667A
	.4byte 0x6C6075F4
	.4byte 0x7A1A7F6E
	.4byte 0x81F48718
	.4byte 0x904599B3
	.4byte 0x7BC9755C
	.4byte 0x7AF97B51
	.4byte 0x84C49010
	.4byte 0x79E97A92
	.4byte 0x83365AE1
	.4byte 0x77404E2D
	.4byte 0x4EF25B99
	.4byte 0x5FE062BD
	.4byte 0x663C67F1
	.4byte 0x6CE8866B
	.4byte 0x88778A3B
	.4byte 0x914E92F3
	.4byte 0x99D06A17
	.4byte 0x7026732A
	.4byte 0x82E78457
	.4byte 0x8CAF4E01
	.4byte 0x514651CB
	.4byte 0x558B5BF5
	.4byte 0x5E165E33
	.4byte 0x5E815F14
	.4byte 0x5F355F6B
	.4byte 0x5FB461F2
	.4byte 0x631166A2
	.4byte 0x671D6F6E
	.4byte 0x7252753A
	.4byte 0x773A8074
	.4byte 0x81398178
	.4byte 0x87768ABF
	.4byte 0x8ADC8D85
	.4byte 0x8DF3929A
	.4byte 0x95779802
	.4byte 0x9CE552C5
	.4byte 0x635776F4
	.4byte 0x67156C88
	.4byte 0x73CD8CC3
	.4byte 0x93AE9673
	.4byte 0x6D25589C
	.4byte 0x690E69CC
	.4byte 0x8FFD939A
	.4byte 0x75DB901A
	.4byte 0x585A6802
	.4byte 0x63B469FB
	.4byte 0x4F436F2C
	.4byte 0x67D88FBB
	.4byte 0x85267DB4
	.4byte 0x9354693F
	.4byte 0x6F70576A
	.4byte 0x58F75B2C
	.4byte 0x7D2C722A
	.4byte 0x540A91E3
	.4byte 0x9DB44EAD
	.4byte 0x4F4E505C
	.4byte 0x50755243
	.4byte 0x8C9E5448
	.4byte 0x58245B9A
	.4byte 0x5E1D5E95
	.4byte 0x5EAD5EF7
	.4byte 0x5F1F608C
	.4byte 0x62B5633A
	.4byte 0x63D068AF
	.4byte 0x6C407887
	.4byte 0x798E7A0B
	.4byte 0x7DE08247
	.4byte 0x8A028AE6
	.4byte 0x8E449013
	.4byte 0x90B8912D
	.4byte 0x91D89F0E
	.4byte 0x6CE56458
	.4byte 0x64E26575
	.4byte 0x6EF47684
	.4byte 0x7B1B9069
	.4byte 0x93D16EBA
	.4byte 0x54F25FB9
	.4byte 0x64A48F4D
	.4byte 0x8FED9244
	.4byte 0x5178586B
	.4byte 0x59295C55
	.4byte 0x5E976DFB
	.4byte 0x7E8F751C
	.4byte 0x8CBC8EE2
	.4byte 0x985B70B9
	.4byte 0x4F1D6BBF
	.4byte 0x6FB17530
	.4byte 0x96FB514E
	.4byte 0x54105835
	.4byte 0x585759AC
	.4byte 0x5C605F92
	.4byte 0x6597675C
	.4byte 0x6E21767B
	.4byte 0x83DF8CED
	.4byte 0x901490FD
	.4byte 0x934D7825
	.4byte 0x783A52AA
	.4byte 0x5EA6571F
	.4byte 0x59746012
	.4byte 0x5012515A
	.4byte 0x51AC51CD
	.4byte 0x52005510
	.4byte 0x58545858
	.4byte 0x59575B95
	.4byte 0x5CF65D8B
	.4byte 0x60BC6295
	.4byte 0x642D6771
	.4byte 0x684368BC
	.4byte 0x68DF76D7
	.4byte 0x6DD86E6F
	.4byte 0x6D9B706F
	.4byte 0x71C85F53
	.4byte 0x75D87977
	.4byte 0x7B497B54
	.4byte 0x7B527CD6
	.4byte 0x7D715230
	.4byte 0x84638569
	.4byte 0x85E48A0E
	.4byte 0x8B048C46
	.4byte 0x8E0F9003
	.4byte 0x900F9419
	.4byte 0x9676982D
	.4byte 0x9A3095D8
	.4byte 0x50CD52D5
	.4byte 0x540C5802
	.4byte 0x5C0E61A7
	.4byte 0x649E6D1E
	.4byte 0x77B37AE5
	.4byte 0x80F48404
	.4byte 0x90539285
	.4byte 0x5CE09D07
	.4byte 0x533F5F97
	.4byte 0x5FB36D9C
	.4byte 0x72797763
	.4byte 0x79BF7BE4
	.4byte 0x6BD272EC
	.4byte 0x8AAD6803
	.4byte 0x6A6151F8
	.4byte 0x7A816934
	.4byte 0x5C4A9CF6
	.4byte 0x82EB5BC5
	.4byte 0x9149701E
	.4byte 0x56785C6F
	.4byte 0x60C76566
	.4byte 0x6C8C8C5A
	.4byte 0x90419813
	.4byte 0x545166C7
	.4byte 0x920D5948
	.4byte 0x90A35185
	.4byte 0x4E4D51EA
	.4byte 0x85998B0E
	.4byte 0x7058637A
	.4byte 0x934B6962
	.4byte 0x99B47E04
	.4byte 0x75775357
	.4byte 0x69608EDF
	.4byte 0x96E36C5D
	.4byte 0x4E8C5C3C
	.4byte 0x5F108FE9
	.4byte 0x53028CD1
	.4byte 0x80898679
	.4byte 0x5EFF65E5
	.4byte 0x4E735165
	.4byte 0x59825C3F
	.4byte 0x97EE4EFB
	.4byte 0x598A5FCD
	.4byte 0x8A8D6FE1
	.4byte 0x79B07962
	.4byte 0x5BE78471
	.4byte 0x732B71B1
	.4byte 0x5E745FF5
	.4byte 0x637B649A
	.4byte 0x71C37C98
	.4byte 0x4E435EFC
	.4byte 0x4E4B57DC
	.4byte 0x56A260A9
	.4byte 0x6FC37D0D
	.4byte 0x80FD8133
	.4byte 0x81BF8FB2
	.4byte 0x899786A4
	.4byte 0x5DF4628A
	.4byte 0x64AD8987
	.4byte 0x67776CE2
	.4byte 0x6D3E7436
	.4byte 0x78345A46
	.4byte 0x7F7582AD
	.4byte 0x99AC4FF3
	.4byte 0x5EC362DD
	.4byte 0x63926557
	.4byte 0x676F76C3
	.4byte 0x724C80CC
	.4byte 0x80BA8F29
	.4byte 0x914D500D
	.4byte 0x57F95A92
	.4byte 0x68856973
	.4byte 0x716472FD
	.4byte 0x8CB758F2
	.4byte 0x8CE0966A
	.4byte 0x9019877F
	.4byte 0x79E477E7
	.4byte 0x84294F2F
	.4byte 0x5265535A
	.4byte 0x62CD67CF
	.4byte 0x6CCA767D
	.4byte 0x7B947C95
	.4byte 0x82368584
	.4byte 0x8FEB66DD
	.4byte 0x6F207206
	.4byte 0x7E1B83AB
	.4byte 0x99C19EA6
	.4byte 0x51FD7BB1
	.4byte 0x78727BB8
	.4byte 0x80877B48
	.4byte 0x6AE85E61
	.4byte 0x808C7551
	.4byte 0x7560516B
	.4byte 0x92626E8C
	.4byte 0x767A9197
	.4byte 0x9AEA4F10
	.4byte 0x7F70629C
	.4byte 0x7B4F95A5
	.4byte 0x9CE9567A
	.4byte 0x585986E4
	.4byte 0x96BC4F34
	.4byte 0x5224534A
	.4byte 0x53CD53DB
	.4byte 0x5E06642C
	.4byte 0x6591677F
	.4byte 0x6C3E6C4E
	.4byte 0x724872AF
	.4byte 0x73ED7554
	.4byte 0x7E41822C
	.4byte 0x85E98CA9
	.4byte 0x7BC491C6
	.4byte 0x71699812
	.4byte 0x98EF633D
	.4byte 0x6669756A
	.4byte 0x76E478D0
	.4byte 0x854386EE
	.4byte 0x532A5351
	.4byte 0x54265983
	.4byte 0x5E875F7C
	.4byte 0x60B26249
	.4byte 0x627962AB
	.4byte 0x65906BD4
	.4byte 0x6CCC75B2
	.4byte 0x76AE7891
	.4byte 0x79D87DCB
	.4byte 0x7F7780A5
	.4byte 0x88AB8AB9
	.4byte 0x8CBB907F
	.4byte 0x975E98DB
	.4byte 0x6A0B7C38
	.4byte 0x50995C3E
	.4byte 0x5FAE6787
	.4byte 0x6BD87435
	.4byte 0x77097F8E
	.4byte 0x9F3B67CA
	.4byte 0x7A175339
	.4byte 0x758B9AED
	.4byte 0x5F66819D
	.4byte 0x83F18098
	.4byte 0x5F3C5FC5
	.4byte 0x75627B46
	.4byte 0x903C6867
	.4byte 0x59EB5A9B
	.4byte 0x7D10767E
	.4byte 0x8B2C4FF5
	.4byte 0x5F6A6A19
	.4byte 0x6C376F02
	.4byte 0x74E27968
	.4byte 0x88688A55
	.4byte 0x8C795EDF
	.4byte 0x63CF75C5
	.4byte 0x79D282D7
	.4byte 0x932892F2
	.4byte 0x849C86ED
	.4byte 0x9C2D54C1
	.4byte 0x5F6C658C
	.4byte 0x6D5C7015
	.4byte 0x8CA78CD3
	.4byte 0x983B654F
	.4byte 0x74F64E0D
	.4byte 0x4ED857E0
	.4byte 0x592B5A66
	.4byte 0x5BCC51A8
	.4byte 0x5E035E9C
	.4byte 0x60166276
	.4byte 0x657765A7
	.4byte 0x666E6D6E
	.4byte 0x72367B26
	.4byte 0x8150819A
	.4byte 0x82998B5C
	.4byte 0x8CA08CE6
	.4byte 0x8D74961C
	.4byte 0x96444FAE
	.4byte 0x64AB6B66
	.4byte 0x821E8461
	.4byte 0x856A90E8
	.4byte 0x5C016953
	.4byte 0x98A8847A
	.4byte 0x85574F0F
	.4byte 0x526F5FA9
	.4byte 0x5E45670D
	.4byte 0x798F8179
	.4byte 0x89078986
	.4byte 0x6DF55F17
	.4byte 0x62556CB8
	.4byte 0x4ECF7269
	.4byte 0x9B925206
	.4byte 0x543B5674
	.4byte 0x58B361A4
	.4byte 0x626E711A
	.4byte 0x596E7C89
	.4byte 0x7CDE7D1B
	.4byte 0x96F06587
	.4byte 0x805E4E19
	.4byte 0x4F755175
	.4byte 0x58405E63
	.4byte 0x5E735F0A
	.4byte 0x67C44E26
	.4byte 0x853D9589
	.4byte 0x965B7C73
	.4byte 0x980150FB
	.4byte 0x58C17656
	.4byte 0x78A75225
	.4byte 0x77A58511
	.4byte 0x7B86504F
	.4byte 0x59097247
	.4byte 0x7BC77DE8
	.4byte 0x8FBA8FD4
	.4byte 0x904D4FBF
	.4byte 0x52C95A29
	.4byte 0x5F0197AD
	.4byte 0x4FDD8217
	.4byte 0x92EA5703
	.4byte 0x63556B69
	.4byte 0x752B88DC
	.4byte 0x8F147A42
	.4byte 0x52DF5893
	.4byte 0x6155620A
	.4byte 0x66AE6BCD
	.4byte 0x7C3F83E9
	.4byte 0x50234FF8
	.4byte 0x53055446
	.4byte 0x58315949
	.4byte 0x5B9D5CF0
	.4byte 0x5CEF5D29
	.4byte 0x5E9662B1
	.4byte 0x6367653E
	.4byte 0x65B9670B
	.4byte 0x6CD56CE1
	.4byte 0x70F97832
	.4byte 0x7E2B80DE
	.4byte 0x82B3840C
	.4byte 0x84EC8702
	.4byte 0x89128A2A
	.4byte 0x8C4A90A6
	.4byte 0x92D298FD
	.4byte 0x9CF39D6C
	.4byte 0x4E4F4EA1
	.4byte 0x508D5256
	.4byte 0x574A59A8
	.4byte 0x5E3D5FD8
	.4byte 0x5FD9623F
	.4byte 0x66B4671B
	.4byte 0x67D068D2
	.4byte 0x51927D21
	.4byte 0x80AA81A8
	.4byte 0x8B008C8C
	.4byte 0x8CBF927E
	.4byte 0x96325420
	.4byte 0x982C5317
	.4byte 0x50D5535C
	.4byte 0x58A864B2
	.4byte 0x67347267
	.4byte 0x77667A46
	.4byte 0x91E652C3
	.4byte 0x6CA16B86
	.4byte 0x58005E4C
	.4byte 0x5954672C
	.4byte 0x7FFB51E1
	.4byte 0x76C66469
	.4byte 0x78E89B54
	.4byte 0x9EBB57CB
	.4byte 0x59B96627
	.4byte 0x679A6BCE
	.4byte 0x54E969D9
	.4byte 0x5E55819C
	.4byte 0x67959BAA
	.4byte 0x67FE9C52
	.4byte 0x685D4EA6
	.4byte 0x4FE353C8
	.4byte 0x62B9672B
	.4byte 0x6CAB8FC4
	.4byte 0x4FAD7E6D
	.4byte 0x9EBF4E07
	.4byte 0x61626E80
	.4byte 0x6F2B8513
	.4byte 0x5473672A
	.4byte 0x9B455DF3
	.4byte 0x7B955CAC
	.4byte 0x5BC6871C
	.4byte 0x6E4A84D1
	.4byte 0x7A148108
	.4byte 0x59997C8D
	.4byte 0x6C117720
	.4byte 0x52D95922
	.4byte 0x7121725F
	.4byte 0x77DB9727
	.4byte 0x9D61690B
	.4byte 0x5A7F5A18
	.4byte 0x51A5540D
	.4byte 0x547D660E
	.4byte 0x76DF8FF7
	.4byte 0x92989CF4
	.4byte 0x59EA725D
	.4byte 0x6EC5514D
	.4byte 0x68C97DBF
	.4byte 0x7DEC9762
	.4byte 0x9EBA6478
	.4byte 0x6A218302
	.4byte 0x59845B5F
	.4byte 0x6BDB731B
	.4byte 0x76F27DB2
	.4byte 0x80178499
	.4byte 0x51326728
	.4byte 0x9ED976EE
	.4byte 0x676252FF
	.4byte 0x99055C24
	.4byte 0x623B7C7E
	.4byte 0x8CB0554F
	.4byte 0x60B67D0B
	.4byte 0x95805301
	.4byte 0x4E5F51B6
	.4byte 0x591C723A
	.4byte 0x803691CE
	.4byte 0x5F2577E2
	.4byte 0x53845F79
	.4byte 0x7D0485AC
	.4byte 0x8A338E8D
	.4byte 0x975667F3
	.4byte 0x85AE9453
	.4byte 0x61096108
	.4byte 0x6CB97652
	.4byte 0x8AED8F38
	.4byte 0x552F4F51
	.4byte 0x512A52C7
	.4byte 0x53CB5BA5
	.4byte 0x5E7D60A0
	.4byte 0x618263D6
	.4byte 0x670967DA
	.4byte 0x6E676D8C
	.4byte 0x73367337
	.4byte 0x75317950
	.4byte 0x88D58A98
	.4byte 0x904A9091
	.4byte 0x90F596C4
	.4byte 0x878D5915
	.4byte 0x4E884F59
	.4byte 0x4E0E8A89
	.4byte 0x8F3F9810
	.4byte 0x50AD5E7C
	.4byte 0x59965BB9
	.4byte 0x5EB863DA
	.4byte 0x63FA64C1
	.4byte 0x66DC694A
	.4byte 0x69D86D0B
	.4byte 0x6EB67194
	.4byte 0x75287AAF
	.4byte 0x7F8A8000
	.4byte 0x844984C9
	.4byte 0x89818B21
	.4byte 0x8E0A9065
	.4byte 0x967D990A
	.4byte 0x617E6291
	.4byte 0x6B326C83
	.4byte 0x6D747FCC
	.4byte 0x7FFC6DC0
	.4byte 0x7F8587BA
	.4byte 0x88F86765
	.4byte 0x83B1983C
	.4byte 0x96F76D1B
	.4byte 0x7D61843D
	.4byte 0x916A4E71
	.4byte 0x53755D50
	.4byte 0x6B046FEB
	.4byte 0x85CD862D
	.4byte 0x89A75229
	.4byte 0x540F5C65
	.4byte 0x674E68A8
	.4byte 0x74067483
	.4byte 0x75E288CF
	.4byte 0x88E191CC
	.4byte 0x96E29678
	.4byte 0x5F8B7387
	.4byte 0x7ACB844E
	.4byte 0x63A07565
	.4byte 0x52896D41
	.4byte 0x6E9C7409
	.4byte 0x7559786B
	.4byte 0x7C929686
	.4byte 0x7ADC9F8D
	.4byte 0x4FB6616E
	.4byte 0x65C5865C
	.4byte 0x4E864EAE
	.4byte 0x50DA4E21
	.4byte 0x51CC5BEE
	.4byte 0x65996881
	.4byte 0x6DBC731F
	.4byte 0x764277AD
	.4byte 0x7A1C7CE7
	.4byte 0x826F8AD2
	.4byte 0x907C91CF
	.4byte 0x96759818
	.4byte 0x529B7DD1
	.4byte 0x502B5398
	.4byte 0x67976DCB
	.4byte 0x71D07433
	.4byte 0x81E88F2A
	.4byte 0x96A39C57
	.4byte 0x9E9F7460
	.4byte 0x58416D99
	.4byte 0x7D2F985E
	.4byte 0x4EE44F36
	.4byte 0x4F8B51B7
	.4byte 0x52B15DBA
	.4byte 0x601C73B2
	.4byte 0x793C82D3
	.4byte 0x923496B7
	.4byte 0x96F6970A
	.4byte 0x9E979F62
	.4byte 0x66A66B74
	.4byte 0x521752A3
	.4byte 0x70C888C2
	.4byte 0x5EC9604B
	.4byte 0x61906F23
	.4byte 0x71497C3E
	.4byte 0x7DF4806F
	.4byte 0x84EE9023
	.4byte 0x932C5442
	.4byte 0x9B6F6AD3
	.4byte 0x70898CC2
	.4byte 0x8DEF9732
	.4byte 0x52B45A41
	.4byte 0x5ECA5F04
	.4byte 0x6717697C
	.4byte 0x69946D6A
	.4byte 0x6F0F7262
	.4byte 0x72FC7BED
	.4byte 0x8001807E
	.4byte 0x874B90CE
	.4byte 0x516D9E93
	.4byte 0x7984808B
	.4byte 0x93328AD6
	.4byte 0x502D548C
	.4byte 0x8A716B6A
	.4byte 0x8CC48107
	.4byte 0x60D167A0
	.4byte 0x9DF24E99
	.4byte 0x4E989C10
	.4byte 0x8A6B85C1
	.4byte 0x85686900
	.4byte 0x6E7E7897
	.4byte 0x81550000
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
	.4byte 0x5F0C4E10
	.4byte 0x4E154E2A
	.4byte 0x4E314E36
	.4byte 0x4E3C4E3F
	.4byte 0x4E424E56
	.4byte 0x4E584E82
	.4byte 0x4E858C6B
	.4byte 0x4E8A8212
	.4byte 0x5F0D4E8E
	.4byte 0x4E9E4E9F
	.4byte 0x4EA04EA2
	.4byte 0x4EB04EB3
	.4byte 0x4EB64ECE
	.4byte 0x4ECD4EC4
	.4byte 0x4EC64EC2
	.4byte 0x4ED74EDE
	.4byte 0x4EED4EDF
	.4byte 0x4EF74F09
	.4byte 0x4F5A4F30
	.4byte 0x4F5B4F5D
	.4byte 0x4F574F47
	.4byte 0x4F764F88
	.4byte 0x4F8F4F98
	.4byte 0x4F7B4F69
	.4byte 0x4F704F91
	.4byte 0x4F6F4F86
	.4byte 0x4F965118
	.4byte 0x4FD44FDF
	.4byte 0x4FCE4FD8
	.4byte 0x4FDB4FD1
	.4byte 0x4FDA4FD0
	.4byte 0x4FE44FE5
	.4byte 0x501A5028
	.4byte 0x5014502A
	.4byte 0x50255005
	.4byte 0x4F1C4FF6
	.4byte 0x50215029
	.4byte 0x502C4FFE
	.4byte 0x4FEF5011
	.4byte 0x50065043
	.4byte 0x50476703
	.4byte 0x50555050
	.4byte 0x5048505A
	.4byte 0x5056506C
	.4byte 0x50785080
	.4byte 0x509A5085
	.4byte 0x50B450B2
	.4byte 0x50C950CA
	.4byte 0x50B350C2
	.4byte 0x50D650DE
	.4byte 0x50E550ED
	.4byte 0x50E350EE
	.4byte 0x50F950F5
	.4byte 0x51095101
	.4byte 0x51025116
	.4byte 0x51155114
	.4byte 0x511A5121
	.4byte 0x513A5137
	.4byte 0x513C513B
	.4byte 0x513F5140
	.4byte 0x5152514C
	.4byte 0x51545162
	.4byte 0x7AF85169
	.4byte 0x516A516E
	.4byte 0x51805182
	.4byte 0x56D8518C
	.4byte 0x5189518F
	.4byte 0x51915193
	.4byte 0x51955196
	.4byte 0x51A451A6
	.4byte 0x51A251A9
	.4byte 0x51AA51AB
	.4byte 0x51B351B1
	.4byte 0x51B251B0
	.4byte 0x51B551BD
	.4byte 0x51C551C9
	.4byte 0x51DB51E0
	.4byte 0x865551E9
	.4byte 0x51ED51F0
	.4byte 0x51F551FE
	.4byte 0x5204520B
	.4byte 0x5214520E
	.4byte 0x5227522A
	.4byte 0x522E5233
	.4byte 0x5239524F
	.4byte 0x5244524B
	.4byte 0x524C525E
	.4byte 0x5254526A
	.4byte 0x52745269
	.4byte 0x5273527F
	.4byte 0x527D528D
	.4byte 0x52945292
	.4byte 0x52715288
	.4byte 0x52918FA8
	.4byte 0x8FA752AC
	.4byte 0x52AD52BC
	.4byte 0x52B552C1
	.4byte 0x52CD52D7
	.4byte 0x52DE52E3
	.4byte 0x52E698ED
	.4byte 0x52E052F3
	.4byte 0x52F552F8
	.4byte 0x52F95306
	.4byte 0x53087538
	.4byte 0x530D5310
	.4byte 0x530F5315
	.4byte 0x531A5323
	.4byte 0x532F5331
	.4byte 0x53335338
	.4byte 0x53405346
	.4byte 0x53454E17
	.4byte 0x5349534D
	.4byte 0x51D6535E
	.4byte 0x5369536E
	.4byte 0x5918537B
	.4byte 0x53775382
	.4byte 0x539653A0
	.4byte 0x53A653A5
	.4byte 0x53AE53B0
	.4byte 0x53B653C3
	.4byte 0x7C1296D9
	.4byte 0x53DF66FC
	.4byte 0x71EE53EE
	.4byte 0x53E853ED
	.4byte 0x53FA5401
	.4byte 0x543D5440
	.4byte 0x542C542D
	.4byte 0x543C542E
	.4byte 0x54365429
	.4byte 0x541D544E
	.4byte 0x548F5475
	.4byte 0x548E545F
	.4byte 0x54715477
	.4byte 0x54705492
	.4byte 0x547B5480
	.4byte 0x54765484
	.4byte 0x54905486
	.4byte 0x54C754A2
	.4byte 0x54B854A5
	.4byte 0x54AC54C4
	.4byte 0x54C854A8
	.4byte 0x54AB54C2
	.4byte 0x54A454BE
	.4byte 0x54BC54D8
	.4byte 0x54E554E6
	.4byte 0x550F5514
	.4byte 0x54FD54EE
	.4byte 0x54ED54FA
	.4byte 0x54E25539
	.4byte 0x55405563
	.4byte 0x554C552E
	.4byte 0x555C5545
	.4byte 0x55565557
	.4byte 0x55385533
	.4byte 0x555D5599
	.4byte 0x558054AF
	.4byte 0x558A559F
	.4byte 0x557B557E
	.4byte 0x5598559E
	.4byte 0x55AE557C
	.4byte 0x558355A9
	.4byte 0x558755A8
	.4byte 0x55DA55C5
	.4byte 0x55DF55C4
	.4byte 0x55DC55E4
	.4byte 0x55D45614
	.4byte 0x55F75616
	.4byte 0x55FE55FD
	.4byte 0x561B55F9
	.4byte 0x564E5650
	.4byte 0x71DF5634
	.4byte 0x56365632
	.4byte 0x5638566B
	.4byte 0x5664562F
	.4byte 0x566C566A
	.4byte 0x56865680
	.4byte 0x568A56A0
	.4byte 0x5694568F
	.4byte 0x56A556AE
	.4byte 0x56B656B4
	.4byte 0x56C256BC
	.4byte 0x56C156C3
	.4byte 0x56C056C8
	.4byte 0x56CE56D1
	.4byte 0x56D356D7
	.4byte 0x56EE56F9
	.4byte 0x570056FF
	.4byte 0x57045709
	.4byte 0x5708570B
	.4byte 0x570D5713
	.4byte 0x57185716
	.4byte 0x55C7571C
	.4byte 0x57265737
	.4byte 0x5738574E
	.4byte 0x573B5740
	.4byte 0x574F5769
	.4byte 0x57C05788
	.4byte 0x5761577F
	.4byte 0x57895793
	.4byte 0x57A057B3
	.4byte 0x57A457AA
	.4byte 0x57B057C3
	.4byte 0x57C657D4
	.4byte 0x57D257D3
	.4byte 0x580A57D6
	.4byte 0x57E3580B
	.4byte 0x5819581D
	.4byte 0x58725821
	.4byte 0x5862584B
	.4byte 0x58706BC0
	.4byte 0x5852583D
	.4byte 0x58795885
	.4byte 0x58B9589F
	.4byte 0x58AB58BA
	.4byte 0x58DE58BB
	.4byte 0x58B858AE
	.4byte 0x58C558D3
	.4byte 0x58D158D7
	.4byte 0x58D958D8
	.4byte 0x58E558DC
	.4byte 0x58E458DF
	.4byte 0x58EF58FA
	.4byte 0x58F958FB
	.4byte 0x58FC58FD
	.4byte 0x5902590A
	.4byte 0x5910591B
	.4byte 0x68A65925
	.4byte 0x592C592D
	.4byte 0x59325938
	.4byte 0x593E7AD2
	.4byte 0x59555950
	.4byte 0x594E595A
	.4byte 0x59585962
	.4byte 0x59605967
	.4byte 0x596C5969
	.4byte 0x59785981
	.4byte 0x599D4F5E
	.4byte 0x4FAB59A3
	.4byte 0x59B259C6
	.4byte 0x59E859DC
	.4byte 0x598D59D9
	.4byte 0x59DA5A25
	.4byte 0x5A1F5A11
	.4byte 0x5A1C5A09
	.4byte 0x5A1A5A40
	.4byte 0x5A6C5A49
	.4byte 0x5A355A36
	.4byte 0x5A625A6A
	.4byte 0x5A9A5ABC
	.4byte 0x5ABE5ACB
	.4byte 0x5AC25ABD
	.4byte 0x5AE35AD7
	.4byte 0x5AE65AE9
	.4byte 0x5AD65AFA
	.4byte 0x5AFB5B0C
	.4byte 0x5B0B5B16
	.4byte 0x5B325AD0
	.4byte 0x5B2A5B36
	.4byte 0x5B3E5B43
	.4byte 0x5B455B40
	.4byte 0x5B515B55
	.4byte 0x5B5A5B5B
	.4byte 0x5B655B69
	.4byte 0x5B705B73
	.4byte 0x5B755B78
	.4byte 0x65885B7A
	.4byte 0x5B805B83
	.4byte 0x5BA65BB8
	.4byte 0x5BC35BC7
	.4byte 0x5BC95BD4
	.4byte 0x5BD05BE4
	.4byte 0x5BE65BE2
	.4byte 0x5BDE5BE5
	.4byte 0x5BEB5BF0
	.4byte 0x5BF65BF3
	.4byte 0x5C055C07
	.4byte 0x5C085C0D
	.4byte 0x5C135C20
	.4byte 0x5C225C28
	.4byte 0x5C385C39
	.4byte 0x5C415C46
	.4byte 0x5C4E5C53
	.4byte 0x5C505C4F
	.4byte 0x5B715C6C
	.4byte 0x5C6E4E62
	.4byte 0x5C765C79
	.4byte 0x5C8C5C91
	.4byte 0x5C94599B
	.4byte 0x5CAB5CBB
	.4byte 0x5CB65CBC
	.4byte 0x5CB75CC5
	.4byte 0x5CBE5CC7
	.4byte 0x5CD95CE9
	.4byte 0x5CFD5CFA
	.4byte 0x5CED5D8C
	.4byte 0x5CEA5D0B
	.4byte 0x5D155D17
	.4byte 0x5D5C5D1F
	.4byte 0x5D1B5D11
	.4byte 0x5D145D22
	.4byte 0x5D1A5D19
	.4byte 0x5D185D4C
	.4byte 0x5D525D4E
	.4byte 0x5D4B5D6C
	.4byte 0x5D735D76
	.4byte 0x5D875D84
	.4byte 0x5D825DA2
	.4byte 0x5D9D5DAC
	.4byte 0x5DAE5DBD
	.4byte 0x5D905DB7
	.4byte 0x5DBC5DC9
	.4byte 0x5DCD5DD3
	.4byte 0x5DD25DD6
	.4byte 0x5DDB5DEB
	.4byte 0x5DF25DF5
	.4byte 0x5E0B5E1A
	.4byte 0x5E195E11
	.4byte 0x5E1B5E36
	.4byte 0x5E375E44
	.4byte 0x5E435E40
	.4byte 0x5E4E5E57
	.4byte 0x5E545E5F
	.4byte 0x5E625E64
	.4byte 0x5E475E75
	.4byte 0x5E765E7A
	.4byte 0x9EBC5E7F
	.4byte 0x5EA05EC1
	.4byte 0x5EC25EC8
	.4byte 0x5ED05ECF
	.4byte 0x5ED65EE3
	.4byte 0x5EDD5EDA
	.4byte 0x5EDB5EE2
	.4byte 0x5EE15EE8
	.4byte 0x5EE95EEC
	.4byte 0x5EF15EF3
	.4byte 0x5EF05EF4
	.4byte 0x5EF85EFE
	.4byte 0x5F035F09
	.4byte 0x5F5D5F5C
	.4byte 0x5F0B5F11
	.4byte 0x5F165F29
	.4byte 0x5F2D5F38
	.4byte 0x5F415F48
	.4byte 0x5F4C5F4E
	.4byte 0x5F2F5F51
	.4byte 0x5F565F57
	.4byte 0x5F595F61
	.4byte 0x5F6D5F73
	.4byte 0x5F775F83
	.4byte 0x5F825F7F
	.4byte 0x5F8A5F88
	.4byte 0x5F915F87
	.4byte 0x5F9E5F99
	.4byte 0x5F985FA0
	.4byte 0x5FA85FAD
	.4byte 0x5FBC5FD6
	.4byte 0x5FFB5FE4
	.4byte 0x5FF85FF1
	.4byte 0x5FDD60B3
	.4byte 0x5FFF6021
	.4byte 0x60606019
	.4byte 0x60106029
	.4byte 0x600E6031
	.4byte 0x601B6015
	.4byte 0x602B6026
	.4byte 0x600F603A
	.4byte 0x605A6041
	.4byte 0x606A6077
	.4byte 0x605F604A
	.4byte 0x6046604D
	.4byte 0x60636043
	.4byte 0x60646042
	.4byte 0x606C606B
	.4byte 0x60596081
	.4byte 0x608D60E7
	.4byte 0x6083609A
	.4byte 0x6084609B
	.4byte 0x60966097
	.4byte 0x609260A7
	.4byte 0x608B60E1
	.4byte 0x60B860E0
	.4byte 0x60D360B4
	.4byte 0x5FF060BD
	.4byte 0x60C660B5
	.4byte 0x60D8614D
	.4byte 0x61156106
	.4byte 0x60F660F7
	.4byte 0x610060F4
	.4byte 0x60FA6103
	.4byte 0x612160FB
	.4byte 0x60F1610D
	.4byte 0x610E6147
	.4byte 0x613E6128
	.4byte 0x6127614A
	.4byte 0x613F613C
	.4byte 0x612C6134
	.4byte 0x613D6142
	.4byte 0x61446173
	.4byte 0x61776158
	.4byte 0x6159615A
	.4byte 0x616B6174
	.4byte 0x616F6165
	.4byte 0x6171615F
	.4byte 0x615D6153
	.4byte 0x61756199
	.4byte 0x61966187
	.4byte 0x61AC6194
	.4byte 0x619A618A
	.4byte 0x619161AB
	.4byte 0x61AE61CC
	.4byte 0x61CA61C9
	.4byte 0x61F761C8
	.4byte 0x61C361C6
	.4byte 0x61BA61CB
	.4byte 0x7F7961CD
	.4byte 0x61E661E3
	.4byte 0x61F661FA
	.4byte 0x61F461FF
	.4byte 0x61FD61FC
	.4byte 0x61FE6200
	.4byte 0x62086209
	.4byte 0x620D620C
	.4byte 0x6214621B
	.4byte 0x621E6221
	.4byte 0x622A622E
	.4byte 0x62306232
	.4byte 0x62336241
	.4byte 0x624E625E
	.4byte 0x6263625B
	.4byte 0x62606268
	.4byte 0x627C6282
	.4byte 0x6289627E
	.4byte 0x62926293
	.4byte 0x629662D4
	.4byte 0x62836294
	.4byte 0x62D762D1
	.4byte 0x62BB62CF
	.4byte 0x62FF62C6
	.4byte 0x64D462C8
	.4byte 0x62DC62CC
	.4byte 0x62CA62C2
	.4byte 0x62C7629B
	.4byte 0x62C9630C
	.4byte 0x62EE62F1
	.4byte 0x63276302
	.4byte 0x630862EF
	.4byte 0x62F56350
	.4byte 0x633E634D
	.4byte 0x641C634F
	.4byte 0x6396638E
	.4byte 0x638063AB
	.4byte 0x637663A3
	.4byte 0x638F6389
	.4byte 0x639F63B5
	.4byte 0x636B6369
	.4byte 0x63BE63E9
	.4byte 0x63C063C6
	.4byte 0x63E363C9
	.4byte 0x63D263F6
	.4byte 0x63C46416
	.4byte 0x64346406
	.4byte 0x64136426
	.4byte 0x6436651D
	.4byte 0x64176428
	.4byte 0x640F6467
	.4byte 0x646F6476
	.4byte 0x644E652A
	.4byte 0x64956493
	.4byte 0x64A564A9
	.4byte 0x648864BC
	.4byte 0x64DA64D2
	.4byte 0x64C564C7
	.4byte 0x64BB64D8
	.4byte 0x64C264F1
	.4byte 0x64E78209
	.4byte 0x64E064E1
	.4byte 0x62AC64E3
	.4byte 0x64EF652C
	.4byte 0x64F664F4
	.4byte 0x64F264FA
	.4byte 0x650064FD
	.4byte 0x6518651C
	.4byte 0x65056524
	.4byte 0x6523652B
	.4byte 0x65346535
	.4byte 0x65376536
	.4byte 0x6538754B
	.4byte 0x65486556
	.4byte 0x6555654D
	.4byte 0x6558655E
	.4byte 0x655D6572
	.4byte 0x65786582
	.4byte 0x65838B8A
	.4byte 0x659B659F
	.4byte 0x65AB65B7
	.4byte 0x65C365C6
	.4byte 0x65C165C4
	.4byte 0x65CC65D2
	.4byte 0x65DB65D9
	.4byte 0x65E065E1
	.4byte 0x65F16772
	.4byte 0x660A6603
	.4byte 0x65FB6773
	.4byte 0x66356636
	.4byte 0x6634661C
	.4byte 0x664F6644
	.4byte 0x66496641
	.4byte 0x665E665D
	.4byte 0x66646667
	.4byte 0x6668665F
	.4byte 0x66626670
	.4byte 0x66836688
	.4byte 0x668E6689
	.4byte 0x66846698
	.4byte 0x669D66C1
	.4byte 0x66B966C9
	.4byte 0x66BE66BC
	.4byte 0x66C466B8
	.4byte 0x66D666DA
	.4byte 0x66E0663F
	.4byte 0x66E666E9
	.4byte 0x66F066F5
	.4byte 0x66F7670F
	.4byte 0x6716671E
	.4byte 0x67266727
	.4byte 0x9738672E
	.4byte 0x673F6736
	.4byte 0x67416738
	.4byte 0x67376746
	.4byte 0x675E6760
	.4byte 0x67596763
	.4byte 0x67646789
	.4byte 0x677067A9
	.4byte 0x677C676A
	.4byte 0x678C678B
	.4byte 0x67A667A1
	.4byte 0x678567B7
	.4byte 0x67EF67B4
	.4byte 0x67EC67B3
	.4byte 0x67E967B8
	.4byte 0x67E467DE
	.4byte 0x67DD67E2
	.4byte 0x67EE67B9
	.4byte 0x67CE67C6
	.4byte 0x67E76A9C
	.4byte 0x681E6846
	.4byte 0x68296840
	.4byte 0x684D6832
	.4byte 0x684E68B3
	.4byte 0x682B6859
	.4byte 0x68636877
	.4byte 0x687F689F
	.4byte 0x688F68AD
	.4byte 0x6894689D
	.4byte 0x689B6883
	.4byte 0x6AAE68B9
	.4byte 0x687468B5
	.4byte 0x68A068BA
	.4byte 0x690F688D
	.4byte 0x687E6901
	.4byte 0x68CA6908
	.4byte 0x68D86922
	.4byte 0x692668E1
	.4byte 0x690C68CD
	.4byte 0x68D468E7
	.4byte 0x68D56936
	.4byte 0x69126904
	.4byte 0x68D768E3
	.4byte 0x692568F9
	.4byte 0x68E068EF
	.4byte 0x6928692A
	.4byte 0x691A6923
	.4byte 0x692168C6
	.4byte 0x69796977
	.4byte 0x695C6978
	.4byte 0x696B6954
	.4byte 0x697E696E
	.4byte 0x69396974
	.4byte 0x693D6959
	.4byte 0x69306961
	.4byte 0x695E695D
	.4byte 0x6981696A
	.4byte 0x69B269AE
	.4byte 0x69D069BF
	.4byte 0x69C169D3
	.4byte 0x69BE69CE
	.4byte 0x5BE869CA
	.4byte 0x69DD69BB
	.4byte 0x69C369A7
	.4byte 0x6A2E6991
	.4byte 0x69A0699C
	.4byte 0x699569B4
	.4byte 0x69DE69E8
	.4byte 0x6A026A1B
	.4byte 0x69FF6B0A
	.4byte 0x69F969F2
	.4byte 0x69E76A05
	.4byte 0x69B16A1E
	.4byte 0x69ED6A14
	.4byte 0x69EB6A0A
	.4byte 0x6A126AC1
	.4byte 0x6A236A13
	.4byte 0x6A446A0C
	.4byte 0x6A726A36
	.4byte 0x6A786A47
	.4byte 0x6A626A59
	.4byte 0x6A666A48
	.4byte 0x6A386A22
	.4byte 0x6A906A8D
	.4byte 0x6AA06A84
	.4byte 0x6AA26AA3
	.4byte 0x6A978617
	.4byte 0x6ABB6AC3
	.4byte 0x6AC26AB8
	.4byte 0x6AB36AAC
	.4byte 0x6ADE6AD1
	.4byte 0x6ADF6AAA
	.4byte 0x6ADA6AEA
	.4byte 0x6AFB6B05
	.4byte 0x86166AFA
	.4byte 0x6B126B16
	.4byte 0x9B316B1F
	.4byte 0x6B386B37
	.4byte 0x76DC6B39
	.4byte 0x98EE6B47
	.4byte 0x6B436B49
	.4byte 0x6B506B59
	.4byte 0x6B546B5B
	.4byte 0x6B5F6B61
	.4byte 0x6B786B79
	.4byte 0x6B7F6B80
	.4byte 0x6B846B83
	.4byte 0x6B8D6B98
	.4byte 0x6B956B9E
	.4byte 0x6BA46BAA
	.4byte 0x6BAB6BAF
	.4byte 0x6BB26BB1
	.4byte 0x6BB36BB7
	.4byte 0x6BBC6BC6
	.4byte 0x6BCB6BD3
	.4byte 0x6BDF6BEC
	.4byte 0x6BEB6BF3
	.4byte 0x6BEF9EBE
	.4byte 0x6C086C13
	.4byte 0x6C146C1B
	.4byte 0x6C246C23
	.4byte 0x6C5E6C55
	.4byte 0x6C626C6A
	.4byte 0x6C826C8D
	.4byte 0x6C9A6C81
	.4byte 0x6C9B6C7E
	.4byte 0x6C686C73
	.4byte 0x6C926C90
	.4byte 0x6CC46CF1
	.4byte 0x6CD36CBD
	.4byte 0x6CD76CC5
	.4byte 0x6CDD6CAE
	.4byte 0x6CB16CBE
	.4byte 0x6CBA6CDB
	.4byte 0x6CEF6CD9
	.4byte 0x6CEA6D1F
	.4byte 0x884D6D36
	.4byte 0x6D2B6D3D
	.4byte 0x6D386D19
	.4byte 0x6D356D33
	.4byte 0x6D126D0C
	.4byte 0x6D636D93
	.4byte 0x6D646D5A
	.4byte 0x6D796D59
	.4byte 0x6D8E6D95
	.4byte 0x6FE46D85
	.4byte 0x6DF96E15
	.4byte 0x6E0A6DB5
	.4byte 0x6DC76DE6
	.4byte 0x6DB86DC6
	.4byte 0x6DEC6DDE
	.4byte 0x6DCC6DE8
	.4byte 0x6DD26DC5
	.4byte 0x6DFA6DD9
	.4byte 0x6DE46DD5
	.4byte 0x6DEA6DEE
	.4byte 0x6E2D6E6E
	.4byte 0x6E2E6E19
	.4byte 0x6E726E5F
	.4byte 0x6E3E6E23
	.4byte 0x6E6B6E2B
	.4byte 0x6E766E4D
	.4byte 0x6E1F6E43
	.4byte 0x6E3A6E4E
	.4byte 0x6E246EFF
	.4byte 0x6E1D6E38
	.4byte 0x6E826EAA
	.4byte 0x6E986EC9
	.4byte 0x6EB76ED3
	.4byte 0x6EBD6EAF
	.4byte 0x6EC46EB2
	.4byte 0x6ED46ED5
	.4byte 0x6E8F6EA5
	.4byte 0x6EC26E9F
	.4byte 0x6F416F11
	.4byte 0x704C6EEC
	.4byte 0x6EF86EFE
	.4byte 0x6F3F6EF2
	.4byte 0x6F316EEF
	.4byte 0x6F326ECC
	.4byte 0x6F3E6F13
	.4byte 0x6EF76F86
	.4byte 0x6F7A6F78
	.4byte 0x6F816F80
	.4byte 0x6F6F6F5B
	.4byte 0x6FF36F6D
	.4byte 0x6F826F7C
	.4byte 0x6F586F8E
	.4byte 0x6F916FC2
	.4byte 0x6F666FB3
	.4byte 0x6FA36FA1
	.4byte 0x6FA46FB9
	.4byte 0x6FC66FAA
	.4byte 0x6FDF6FD5
	.4byte 0x6FEC6FD4
	.4byte 0x6FD86FF1
	.4byte 0x6FEE6FDB
	.4byte 0x7009700B
	.4byte 0x6FFA7011
	.4byte 0x7001700F
	.4byte 0x6FFE701B
	.4byte 0x701A6F74
	.4byte 0x701D7018
	.4byte 0x701F7030
	.4byte 0x703E7032
	.4byte 0x70517063
	.4byte 0x70997092
	.4byte 0x70AF70F1
	.4byte 0x70AC70B8
	.4byte 0x70B370AE
	.4byte 0x70DF70CB
	.4byte 0x70DD70D9
	.4byte 0x710970FD
	.4byte 0x711C7119
	.4byte 0x71657155
	.4byte 0x71887166
	.4byte 0x7162714C
	.4byte 0x7156716C
	.4byte 0x718F71FB
	.4byte 0x71847195
	.4byte 0x71A871AC
	.4byte 0x71D771B9
	.4byte 0x71BE71D2
	.4byte 0x71C971D4
	.4byte 0x71CE71E0
	.4byte 0x71EC71E7
	.4byte 0x71F571FC
	.4byte 0x71F971FF
	.4byte 0x720D7210
	.4byte 0x721B7228
	.4byte 0x722D722C
	.4byte 0x72307232
	.4byte 0x723B723C
	.4byte 0x723F7240
	.4byte 0x7246724B
	.4byte 0x72587274
	.4byte 0x727E7282
	.4byte 0x72817287
	.4byte 0x72927296
	.4byte 0x72A272A7
	.4byte 0x72B972B2
	.4byte 0x72C372C6
	.4byte 0x72C472CE
	.4byte 0x72D272E2
	.4byte 0x72E072E1
	.4byte 0x72F972F7
	.4byte 0x500F7317
	.4byte 0x730A731C
	.4byte 0x7316731D
	.4byte 0x7334732F
	.4byte 0x73297325
	.4byte 0x733E734E
	.4byte 0x734F9ED8
	.4byte 0x7357736A
	.4byte 0x73687370
	.4byte 0x73787375
	.4byte 0x737B737A
	.4byte 0x73C873B3
	.4byte 0x73CE73BB
	.4byte 0x73C073E5
	.4byte 0x73EE73DE
	.4byte 0x74A27405
	.4byte 0x746F7425
	.4byte 0x73F87432
	.4byte 0x743A7455
	.4byte 0x743F745F
	.4byte 0x74597441
	.4byte 0x745C7469
	.4byte 0x74707463
	.4byte 0x746A7476
	.4byte 0x747E748B
	.4byte 0x749E74A7
	.4byte 0x74CA74CF
	.4byte 0x74D473F1
	.4byte 0x74E074E3
	.4byte 0x74E774E9
	.4byte 0x74EE74F2
	.4byte 0x74F074F1
	.4byte 0x74F874F7
	.4byte 0x75047503
	.4byte 0x7505750C
	.4byte 0x750E750D
	.4byte 0x75157513
	.4byte 0x751E7526
	.4byte 0x752C753C
	.4byte 0x7544754D
	.4byte 0x754A7549
	.4byte 0x755B7546
	.4byte 0x755A7569
	.4byte 0x75647567
	.4byte 0x756B756D
	.4byte 0x75787576
	.4byte 0x75867587
	.4byte 0x7574758A
	.4byte 0x75897582
	.4byte 0x7594759A
	.4byte 0x759D75A5
	.4byte 0x75A375C2
	.4byte 0x75B375C3
	.4byte 0x75B575BD
	.4byte 0x75B875BC
	.4byte 0x75B175CD
	.4byte 0x75CA75D2
	.4byte 0x75D975E3
	.4byte 0x75DE75FE
	.4byte 0x75FF75FC
	.4byte 0x760175F0
	.4byte 0x75FA75F2
	.4byte 0x75F3760B
	.4byte 0x760D7609
	.4byte 0x761F7627
	.4byte 0x76207621
	.4byte 0x76227624
	.4byte 0x76347630
	.4byte 0x763B7647
	.4byte 0x76487646
	.4byte 0x765C7658
	.4byte 0x76617662
	.4byte 0x76687669
	.4byte 0x766A7667
	.4byte 0x766C7670
	.4byte 0x76727676
	.4byte 0x7678767C
	.4byte 0x76807683
	.4byte 0x7688768B
	.4byte 0x768E7696
	.4byte 0x76937699
	.4byte 0x769A76B0
	.4byte 0x76B476B8
	.4byte 0x76B976BA
	.4byte 0x76C276CD
	.4byte 0x76D676D2
	.4byte 0x76DE76E1
	.4byte 0x76E576E7
	.4byte 0x76EA862F
	.4byte 0x76FB7708
	.4byte 0x77077704
	.4byte 0x77297724
	.4byte 0x771E7725
	.4byte 0x7726771B
	.4byte 0x77377738
	.4byte 0x7747775A
	.4byte 0x7768776B
	.4byte 0x775B7765
	.4byte 0x777F777E
	.4byte 0x7779778E
	.4byte 0x778B7791
	.4byte 0x77A0779E
	.4byte 0x77B077B6
	.4byte 0x77B977BF
	.4byte 0x77BC77BD
	.4byte 0x77BB77C7
	.4byte 0x77CD77D7
	.4byte 0x77DA77DC
	.4byte 0x77E377EE
	.4byte 0x77FC780C
	.4byte 0x78127926
	.4byte 0x7820792A
	.4byte 0x7845788E
	.4byte 0x78747886
	.4byte 0x787C789A
	.4byte 0x788C78A3
	.4byte 0x78B578AA
	.4byte 0x78AF78D1
	.4byte 0x78C678CB
	.4byte 0x78D478BE
	.4byte 0x78BC78C5
	.4byte 0x78CA78EC
	.4byte 0x78E778DA
	.4byte 0x78FD78F4
	.4byte 0x79077912
	.4byte 0x79117919
	.4byte 0x792C792B
	.4byte 0x79407960
	.4byte 0x7957795F
	.4byte 0x795A7955
	.4byte 0x7953797A
	.4byte 0x797F798A
	.4byte 0x799D79A7
	.4byte 0x9F4B79AA
	.4byte 0x79AE79B3
	.4byte 0x79B979BA
	.4byte 0x79C979D5
	.4byte 0x79E779EC
	.4byte 0x79E179E3
	.4byte 0x7A087A0D
	.4byte 0x7A187A19
	.4byte 0x7A207A1F
	.4byte 0x79807A31
	.4byte 0x7A3B7A3E
	.4byte 0x7A377A43
	.4byte 0x7A577A49
	.4byte 0x7A617A62
	.4byte 0x7A699F9D
	.4byte 0x7A707A79
	.4byte 0x7A7D7A88
	.4byte 0x7A977A95
	.4byte 0x7A987A96
	.4byte 0x7AA97AC8
	.4byte 0x7AB07AB6
	.4byte 0x7AC57AC4
	.4byte 0x7ABF9083
	.4byte 0x7AC77ACA
	.4byte 0x7ACD7ACF
	.4byte 0x7AD57AD3
	.4byte 0x7AD97ADA
	.4byte 0x7ADD7AE1
	.4byte 0x7AE27AE6
	.4byte 0x7AED7AF0
	.4byte 0x7B027B0F
	.4byte 0x7B0A7B06
	.4byte 0x7B337B18
	.4byte 0x7B197B1E
	.4byte 0x7B357B28
	.4byte 0x7B367B50
	.4byte 0x7B7A7B04
	.4byte 0x7B4D7B0B
	.4byte 0x7B4C7B45
	.4byte 0x7B757B65
	.4byte 0x7B747B67
	.4byte 0x7B707B71
	.4byte 0x7B6C7B6E
	.4byte 0x7B9D7B98
	.4byte 0x7B9F7B8D
	.4byte 0x7B9C7B9A
	.4byte 0x7B8B7B92
	.4byte 0x7B8F7B5D
	.4byte 0x7B997BCB
	.4byte 0x7BC17BCC
	.4byte 0x7BCF7BB4
	.4byte 0x7BC67BDD
	.4byte 0x7BE97C11
	.4byte 0x7C147BE6
	.4byte 0x7BE57C60
	.4byte 0x7C007C07
	.4byte 0x7C137BF3
	.4byte 0x7BF77C17
	.4byte 0x7C0D7BF6
	.4byte 0x7C237C27
	.4byte 0x7C2A7C1F
	.4byte 0x7C377C2B
	.4byte 0x7C3D7C4C
	.4byte 0x7C437C54
	.4byte 0x7C4F7C40
	.4byte 0x7C507C58
	.4byte 0x7C5F7C64
	.4byte 0x7C567C65
	.4byte 0x7C6C7C75
	.4byte 0x7C837C90
	.4byte 0x7CA47CAD
	.4byte 0x7CA27CAB
	.4byte 0x7CA17CA8
	.4byte 0x7CB37CB2
	.4byte 0x7CB17CAE
	.4byte 0x7CB97CBD
	.4byte 0x7CC07CC5
	.4byte 0x7CC27CD8
	.4byte 0x7CD27CDC
	.4byte 0x7CE29B3B
	.4byte 0x7CEF7CF2
	.4byte 0x7CF47CF6
	.4byte 0x7CFA7D06
	.4byte 0x7D027D1C
	.4byte 0x7D157D0A
	.4byte 0x7D457D4B
	.4byte 0x7D2E7D32
	.4byte 0x7D3F7D35
	.4byte 0x7D467D73
	.4byte 0x7D567D4E
	.4byte 0x7D727D68
	.4byte 0x7D6E7D4F
	.4byte 0x7D637D93
	.4byte 0x7D897D5B
	.4byte 0x7D8F7D7D
	.4byte 0x7D9B7DBA
	.4byte 0x7DAE7DA3
	.4byte 0x7DB57DC7
	.4byte 0x7DBD7DAB
	.4byte 0x7E3D7DA2
	.4byte 0x7DAF7DDC
	.4byte 0x7DB87D9F
	.4byte 0x7DB07DD8
	.4byte 0x7DDD7DE4
	.4byte 0x7DDE7DFB
	.4byte 0x7DF27DE1
	.4byte 0x7E057E0A
	.4byte 0x7E237E21
	.4byte 0x7E127E31
	.4byte 0x7E1F7E09
	.4byte 0x7E0B7E22
	.4byte 0x7E467E66
	.4byte 0x7E3B7E35
	.4byte 0x7E397E43
	.4byte 0x7E377E32
	.4byte 0x7E3A7E67
	.4byte 0x7E5D7E56
	.4byte 0x7E5E7E59
	.4byte 0x7E5A7E79
	.4byte 0x7E6A7E69
	.4byte 0x7E7C7E7B
	.4byte 0x7E837DD5
	.4byte 0x7E7D8FAE
	.4byte 0x7E7F7E88
	.4byte 0x7E897E8C
	.4byte 0x7E927E90
	.4byte 0x7E937E94
	.4byte 0x7E967E8E
	.4byte 0x7E9B7E9C
	.4byte 0x7F387F3A
	.4byte 0x7F457F4C
	.4byte 0x7F4D7F4E
	.4byte 0x7F507F51
	.4byte 0x7F557F54
	.4byte 0x7F587F5F
	.4byte 0x7F607F68
	.4byte 0x7F697F67
	.4byte 0x7F787F82
	.4byte 0x7F867F83
	.4byte 0x7F887F87
	.4byte 0x7F8C7F94
	.4byte 0x7F9E7F9D
	.4byte 0x7F9A7FA3
	.4byte 0x7FAF7FB2
	.4byte 0x7FB97FAE
	.4byte 0x7FB67FB8
	.4byte 0x8B717FC5
	.4byte 0x7FC67FCA
	.4byte 0x7FD57FD4
	.4byte 0x7FE17FE6
	.4byte 0x7FE97FF3
	.4byte 0x7FF998DC
	.4byte 0x80068004
	.4byte 0x800B8012
	.4byte 0x80188019
	.4byte 0x801C8021
	.4byte 0x8028803F
	.4byte 0x803B804A
	.4byte 0x80468052
	.4byte 0x8058805A
	.4byte 0x805F8062
	.4byte 0x80688073
	.4byte 0x80728070
	.4byte 0x80768079
	.4byte 0x807D807F
	.4byte 0x80848086
	.4byte 0x8085809B
	.4byte 0x8093809A
	.4byte 0x80AD5190
	.4byte 0x80AC80DB
	.4byte 0x80E580D9
	.4byte 0x80DD80C4
	.4byte 0x80DA80D6
	.4byte 0x810980EF
	.4byte 0x80F1811B
	.4byte 0x81298123
	.4byte 0x812F814B
	.4byte 0x968B8146
	.4byte 0x813E8153
	.4byte 0x815180FC
	.4byte 0x8171816E
	.4byte 0x81658166
	.4byte 0x81748183
	.4byte 0x8188818A
	.4byte 0x81808182
	.4byte 0x81A08195
	.4byte 0x81A481A3
	.4byte 0x815F8193
	.4byte 0x81A981B0
	.4byte 0x81B581BE
	.4byte 0x81B881BD
	.4byte 0x81C081C2
	.4byte 0x81BA81C9
	.4byte 0x81CD81D1
	.4byte 0x81D981D8
	.4byte 0x81C881DA
	.4byte 0x81DF81E0
	.4byte 0x81E781FA
	.4byte 0x81FB81FE
	.4byte 0x82018202
	.4byte 0x82058207
	.4byte 0x820A820D
	.4byte 0x82108216
	.4byte 0x8229822B
	.4byte 0x82388233
	.4byte 0x82408259
	.4byte 0x8258825D
	.4byte 0x825A825F
	.4byte 0x82648262
	.4byte 0x8268826A
	.4byte 0x826B822E
	.4byte 0x82718277
	.4byte 0x8278827E
	.4byte 0x828D8292
	.4byte 0x82AB829F
	.4byte 0x82BB82AC
	.4byte 0x82E182E3
	.4byte 0x82DF82D2
	.4byte 0x82F482F3
	.4byte 0x82FA8393
	.4byte 0x830382FB
	.4byte 0x82F982DE
	.4byte 0x830682DC
	.4byte 0x830982D9
	.4byte 0x83358334
	.4byte 0x83168332
	.4byte 0x83318340
	.4byte 0x83398350
	.4byte 0x8345832F
	.4byte 0x832B8317
	.4byte 0x83188385
	.4byte 0x839A83AA
	.4byte 0x839F83A2
	.4byte 0x83968323
	.4byte 0x838E8387
	.4byte 0x838A837C
	.4byte 0x83B58373
	.4byte 0x837583A0
	.4byte 0x838983A8
	.4byte 0x83F48413
	.4byte 0x83EB83CE
	.4byte 0x83FD8403
	.4byte 0x83D8840B
	.4byte 0x83C183F7
	.4byte 0x840783E0
	.4byte 0x83F2840D
	.4byte 0x84228420
	.4byte 0x83BD8438
	.4byte 0x850683FB
	.4byte 0x846D842A
	.4byte 0x843C855A
	.4byte 0x84848477
	.4byte 0x846B84AD
	.4byte 0x846E8482
	.4byte 0x84698446
	.4byte 0x842C846F
	.4byte 0x84798435
	.4byte 0x84CA8462
	.4byte 0x84B984BF
	.4byte 0x849F84D9
	.4byte 0x84CD84BB
	.4byte 0x84DA84D0
	.4byte 0x84C184C6
	.4byte 0x84D684A1
	.4byte 0x852184FF
	.4byte 0x84F48517
	.4byte 0x8518852C
	.4byte 0x851F8515
	.4byte 0x851484FC
	.4byte 0x85408563
	.4byte 0x85588548
	.4byte 0x85418602
	.4byte 0x854B8555
	.4byte 0x858085A4
	.4byte 0x85888591
	.4byte 0x858A85A8
	.4byte 0x856D8594
	.4byte 0x859B85EA
	.4byte 0x8587859C
	.4byte 0x8577857E
	.4byte 0x859085C9
	.4byte 0x85BA85CF
	.4byte 0x85B985D0
	.4byte 0x85D585DD
	.4byte 0x85E585DC
	.4byte 0x85F9860A
	.4byte 0x8613860B
	.4byte 0x85FE85FA
	.4byte 0x86068622
	.4byte 0x861A8630
	.4byte 0x863F864D
	.4byte 0x4E558654
	.4byte 0x865F8667
	.4byte 0x86718693
	.4byte 0x86A386A9
	.4byte 0x86AA868B
	.4byte 0x868C86B6
	.4byte 0x86AF86C4
	.4byte 0x86C686B0
	.4byte 0x86C98823
	.4byte 0x86AB86D4
	.4byte 0x86DE86E9
	.4byte 0x86EC86DF
	.4byte 0x86DB86EF
	.4byte 0x87128706
	.4byte 0x87088700
	.4byte 0x870386FB
	.4byte 0x87118709
	.4byte 0x870D86F9
	.4byte 0x870A8734
	.4byte 0x873F8737
	.4byte 0x873B8725
	.4byte 0x8729871A
	.4byte 0x8760875F
	.4byte 0x8778874C
	.4byte 0x874E8774
	.4byte 0x87578768
	.4byte 0x876E8759
	.4byte 0x87538763
	.4byte 0x876A8805
	.4byte 0x87A2879F
	.4byte 0x878287AF
	.4byte 0x87CB87BD
	.4byte 0x87C087D0
	.4byte 0x96D687AB
	.4byte 0x87C487B3
	.4byte 0x87C787C6
	.4byte 0x87BB87EF
	.4byte 0x87F287E0
	.4byte 0x880F880D
	.4byte 0x87FE87F6
	.4byte 0x87F7880E
	.4byte 0x87D28811
	.4byte 0x88168815
	.4byte 0x88228821
	.4byte 0x88318836
	.4byte 0x88398827
	.4byte 0x883B8844
	.4byte 0x88428852
	.4byte 0x8859885E
	.4byte 0x8862886B
	.4byte 0x8881887E
	.4byte 0x889E8875
	.4byte 0x887D88B5
	.4byte 0x88728882
	.4byte 0x88978892
	.4byte 0x88AE8899
	.4byte 0x88A2888D
	.4byte 0x88A488B0
	.4byte 0x88BF88B1
	.4byte 0x88C388C4
	.4byte 0x88D488D8
	.4byte 0x88D988DD
	.4byte 0x88F98902
	.4byte 0x88FC88F4
	.4byte 0x88E888F2
	.4byte 0x8904890C
	.4byte 0x890A8913
	.4byte 0x8943891E
	.4byte 0x8925892A
	.4byte 0x892B8941
	.4byte 0x8944893B
	.4byte 0x89368938
	.4byte 0x894C891D
	.4byte 0x8960895E
	.4byte 0x89668964
	.4byte 0x896D896A
	.4byte 0x896F8974
	.4byte 0x8977897E
	.4byte 0x89838988
	.4byte 0x898A8993
	.4byte 0x899889A1
	.4byte 0x89A989A6
	.4byte 0x89AC89AF
	.4byte 0x89B289BA
	.4byte 0x89BD89BF
	.4byte 0x89C089DA
	.4byte 0x89DC89DD
	.4byte 0x89E789F4
	.4byte 0x89F88A03
	.4byte 0x8A168A10
	.4byte 0x8A0C8A1B
	.4byte 0x8A1D8A25
	.4byte 0x8A368A41
	.4byte 0x8A5B8A52
	.4byte 0x8A468A48
	.4byte 0x8A7C8A6D
	.4byte 0x8A6C8A62
	.4byte 0x8A858A82
	.4byte 0x8A848AA8
	.4byte 0x8AA18A91
	.4byte 0x8AA58AA6
	.4byte 0x8A9A8AA3
	.4byte 0x8AC48ACD
	.4byte 0x8AC28ADA
	.4byte 0x8AEB8AF3
	.4byte 0x8AE78AE4
	.4byte 0x8AF18B14
	.4byte 0x8AE08AE2
	.4byte 0x8AF78ADE
	.4byte 0x8ADB8B0C
	.4byte 0x8B078B1A
	.4byte 0x8AE18B16
	.4byte 0x8B108B17
	.4byte 0x8B208B33
	.4byte 0x97AB8B26
	.4byte 0x8B2B8B3E
	.4byte 0x8B288B41
	.4byte 0x8B4C8B4F
	.4byte 0x8B4E8B49
	.4byte 0x8B568B5B
	.4byte 0x8B5A8B6B
	.4byte 0x8B5F8B6C
	.4byte 0x8B6F8B74
	.4byte 0x8B7D8B80
	.4byte 0x8B8C8B8E
	.4byte 0x8B928B93
	.4byte 0x8B968B99
	.4byte 0x8B9A8C3A
	.4byte 0x8C418C3F
	.4byte 0x8C488C4C
	.4byte 0x8C4E8C50
	.4byte 0x8C558C62
	.4byte 0x8C6C8C78
	.4byte 0x8C7A8C82
	.4byte 0x8C898C85
	.4byte 0x8C8A8C8D
	.4byte 0x8C8E8C94
	.4byte 0x8C7C8C98
	.4byte 0x621D8CAD
	.4byte 0x8CAA8CBD
	.4byte 0x8CB28CB3
	.4byte 0x8CAE8CB6
	.4byte 0x8CC88CC1
	.4byte 0x8CE48CE3
	.4byte 0x8CDA8CFD
	.4byte 0x8CFA8CFB
	.4byte 0x8D048D05
	.4byte 0x8D0A8D07
	.4byte 0x8D0F8D0D
	.4byte 0x8D109F4E
	.4byte 0x8D138CCD
	.4byte 0x8D148D16
	.4byte 0x8D678D6D
	.4byte 0x8D718D73
	.4byte 0x8D818D99
	.4byte 0x8DC28DBE
	.4byte 0x8DBA8DCF
	.4byte 0x8DDA8DD6
	.4byte 0x8DCC8DDB
	.4byte 0x8DCB8DEA
	.4byte 0x8DEB8DDF
	.4byte 0x8DE38DFC
	.4byte 0x8E088E09
	.4byte 0x8DFF8E1D
	.4byte 0x8E1E8E10
	.4byte 0x8E1F8E42
	.4byte 0x8E358E30
	.4byte 0x8E348E4A
	.4byte 0x8E478E49
	.4byte 0x8E4C8E50
	.4byte 0x8E488E59
	.4byte 0x8E648E60
	.4byte 0x8E2A8E63
	.4byte 0x8E558E76
	.4byte 0x8E728E7C
	.4byte 0x8E818E87
	.4byte 0x8E858E84
	.4byte 0x8E8B8E8A
	.4byte 0x8E938E91
	.4byte 0x8E948E99
	.4byte 0x8EAA8EA1
	.4byte 0x8EAC8EB0
	.4byte 0x8EC68EB1
	.4byte 0x8EBE8EC5
	.4byte 0x8EC88ECB
	.4byte 0x8EDB8EE3
	.4byte 0x8EFC8EFB
	.4byte 0x8EEB8EFE
	.4byte 0x8F0A8F05
	.4byte 0x8F158F12
	.4byte 0x8F198F13
	.4byte 0x8F1C8F1F
	.4byte 0x8F1B8F0C
	.4byte 0x8F268F33
	.4byte 0x8F3B8F39
	.4byte 0x8F458F42
	.4byte 0x8F3E8F4C
	.4byte 0x8F498F46
	.4byte 0x8F4E8F57
	.4byte 0x8F5C8F62
	.4byte 0x8F638F64
	.4byte 0x8F9C8F9F
	.4byte 0x8FA38FAD
	.4byte 0x8FAF8FB7
	.4byte 0x8FDA8FE5
	.4byte 0x8FE28FEA
	.4byte 0x8FEF9087
	.4byte 0x8FF49005
	.4byte 0x8FF98FFA
	.4byte 0x90119015
	.4byte 0x9021900D
	.4byte 0x901E9016
	.4byte 0x900B9027
	.4byte 0x90369035
	.4byte 0x90398FF8
	.4byte 0x904F9050
	.4byte 0x90519052
	.4byte 0x900E9049
	.4byte 0x903E9056
	.4byte 0x9058905E
	.4byte 0x9068906F
	.4byte 0x907696A8
	.4byte 0x90729082
	.4byte 0x907D9081
	.4byte 0x9080908A
	.4byte 0x9089908F
	.4byte 0x90A890AF
	.4byte 0x90B190B5
	.4byte 0x90E290E4
	.4byte 0x624890DB
	.4byte 0x91029112
	.4byte 0x91199132
	.4byte 0x9130914A
	.4byte 0x91569158
	.4byte 0x91639165
	.4byte 0x91699173
	.4byte 0x9172918B
	.4byte 0x91899182
	.4byte 0x91A291AB
	.4byte 0x91AF91AA
	.4byte 0x91B591B4
	.4byte 0x91BA91C0
	.4byte 0x91C191C9
	.4byte 0x91CB91D0
	.4byte 0x91D691DF
	.4byte 0x91E191DB
	.4byte 0x91FC91F5
	.4byte 0x91F6921E
	.4byte 0x91FF9214
	.4byte 0x922C9215
	.4byte 0x9211925E
	.4byte 0x92579245
	.4byte 0x92499264
	.4byte 0x92489295
	.4byte 0x923F924B
	.4byte 0x9250929C
	.4byte 0x92969293
	.4byte 0x929B925A
	.4byte 0x92CF92B9
	.4byte 0x92B792E9
	.4byte 0x930F92FA
	.4byte 0x9344932E
	.4byte 0x93199322
	.4byte 0x931A9323
	.4byte 0x933A9335
	.4byte 0x933B935C
	.4byte 0x9360937C
	.4byte 0x936E9356
	.4byte 0x93B093AC
	.4byte 0x93AD9394
	.4byte 0x93B993D6
	.4byte 0x93D793E8
	.4byte 0x93E593D8
	.4byte 0x93C393DD
	.4byte 0x93D093C8
	.4byte 0x93E4941A
	.4byte 0x94149413
	.4byte 0x94039407
	.4byte 0x94109436
	.4byte 0x942B9435
	.4byte 0x9421943A
	.4byte 0x94419452
	.4byte 0x9444945B
	.4byte 0x94609462
	.4byte 0x945E946A
	.4byte 0x92299470
	.4byte 0x94759477
	.4byte 0x947D945A
	.4byte 0x947C947E
	.4byte 0x9481947F
	.4byte 0x95829587
	.4byte 0x958A9594
	.4byte 0x95969598
	.4byte 0x959995A0
	.4byte 0x95A895A7
	.4byte 0x95AD95BC
	.4byte 0x95BB95B9
	.4byte 0x95BE95CA
	.4byte 0x6FF695C3
	.4byte 0x95CD95CC
	.4byte 0x95D595D4
	.4byte 0x95D695DC
	.4byte 0x95E195E5
	.4byte 0x95E29621
	.4byte 0x9628962E
	.4byte 0x962F9642
	.4byte 0x964C964F
	.4byte 0x964B9677
	.4byte 0x965C965E
	.4byte 0x965D965F
	.4byte 0x96669672
	.4byte 0x966C968D
	.4byte 0x96989695
	.4byte 0x969796AA
	.4byte 0x96A796B1
	.4byte 0x96B296B0
	.4byte 0x96B496B6
	.4byte 0x96B896B9
	.4byte 0x96CE96CB
	.4byte 0x96C996CD
	.4byte 0x894D96DC
	.4byte 0x970D96D5
	.4byte 0x96F99704
	.4byte 0x97069708
	.4byte 0x9713970E
	.4byte 0x9711970F
	.4byte 0x97169719
	.4byte 0x9724972A
	.4byte 0x97309739
	.4byte 0x973D973E
	.4byte 0x97449746
	.4byte 0x97489742
	.4byte 0x9749975C
	.4byte 0x97609764
	.4byte 0x97669768
	.4byte 0x52D2976B
	.4byte 0x97719779
	.4byte 0x9785977C
	.4byte 0x9781977A
	.4byte 0x9786978B
	.4byte 0x978F9790
	.4byte 0x979C97A8
	.4byte 0x97A697A3
	.4byte 0x97B397B4
	.4byte 0x97C397C6
	.4byte 0x97C897CB
	.4byte 0x97DC97ED
	.4byte 0x9F4F97F2
	.4byte 0x7ADF97F6
	.4byte 0x97F5980F
	.4byte 0x980C9838
	.4byte 0x98249821
	.4byte 0x9837983D
	.4byte 0x9846984F
	.4byte 0x984B986B
	.4byte 0x986F9870
	.4byte 0x98719874
	.4byte 0x987398AA
	.4byte 0x98AF98B1
	.4byte 0x98B698C4
	.4byte 0x98C398C6
	.4byte 0x98E998EB
	.4byte 0x99039909
	.4byte 0x99129914
	.4byte 0x99189921
	.4byte 0x991D991E
	.4byte 0x99249920
	.4byte 0x992C992E
	.4byte 0x993D993E
	.4byte 0x99429949
	.4byte 0x99459950
	.4byte 0x994B9951
	.4byte 0x9952994C
	.4byte 0x99559997
	.4byte 0x999899A5
	.4byte 0x99AD99AE
	.4byte 0x99BC99DF
	.4byte 0x99DB99DD
	.4byte 0x99D899D1
	.4byte 0x99ED99EE
	.4byte 0x99F199F2
	.4byte 0x99FB99F8
	.4byte 0x9A019A0F
	.4byte 0x9A0599E2
	.4byte 0x9A199A2B
	.4byte 0x9A379A45
	.4byte 0x9A429A40
	.4byte 0x9A439A3E
	.4byte 0x9A559A4D
	.4byte 0x9A5B9A57
	.4byte 0x9A5F9A62
	.4byte 0x9A659A64
	.4byte 0x9A699A6B
	.4byte 0x9A6A9AAD
	.4byte 0x9AB09ABC
	.4byte 0x9AC09ACF
	.4byte 0x9AD19AD3
	.4byte 0x9AD49ADE
	.4byte 0x9ADF9AE2
	.4byte 0x9AE39AE6
	.4byte 0x9AEF9AEB
	.4byte 0x9AEE9AF4
	.4byte 0x9AF19AF7
	.4byte 0x9AFB9B06
	.4byte 0x9B189B1A
	.4byte 0x9B1F9B22
	.4byte 0x9B239B25
	.4byte 0x9B279B28
	.4byte 0x9B299B2A
	.4byte 0x9B2E9B2F
	.4byte 0x9B329B44
	.4byte 0x9B439B4F
	.4byte 0x9B4D9B4E
	.4byte 0x9B519B58
	.4byte 0x9B749B93
	.4byte 0x9B839B91
	.4byte 0x9B969B97
	.4byte 0x9B9F9BA0
	.4byte 0x9BA89BB4
	.4byte 0x9BC09BCA
	.4byte 0x9BB99BC6
	.4byte 0x9BCF9BD1
	.4byte 0x9BD29BE3
	.4byte 0x9BE29BE4
	.4byte 0x9BD49BE1
	.4byte 0x9C3A9BF2
	.4byte 0x9BF19BF0
	.4byte 0x9C159C14
	.4byte 0x9C099C13
	.4byte 0x9C0C9C06
	.4byte 0x9C089C12
	.4byte 0x9C0A9C04
	.4byte 0x9C2E9C1B
	.4byte 0x9C259C24
	.4byte 0x9C219C30
	.4byte 0x9C479C32
	.4byte 0x9C469C3E
	.4byte 0x9C5A9C60
	.4byte 0x9C679C76
	.4byte 0x9C789CE7
	.4byte 0x9CEC9CF0
	.4byte 0x9D099D08
	.4byte 0x9CEB9D03
	.4byte 0x9D069D2A
	.4byte 0x9D269DAF
	.4byte 0x9D239D1F
	.4byte 0x9D449D15
	.4byte 0x9D129D41
	.4byte 0x9D3F9D3E
	.4byte 0x9D469D48
	.4byte 0x9D5D9D5E
	.4byte 0x9D649D51
	.4byte 0x9D509D59
	.4byte 0x9D729D89
	.4byte 0x9D879DAB
	.4byte 0x9D6F9D7A
	.4byte 0x9D9A9DA4
	.4byte 0x9DA99DB2
	.4byte 0x9DC49DC1
	.4byte 0x9DBB9DB8
	.4byte 0x9DBA9DC6
	.4byte 0x9DCF9DC2
	.4byte 0x9DD99DD3
	.4byte 0x9DF89DE6
	.4byte 0x9DED9DEF
	.4byte 0x9DFD9E1A
	.4byte 0x9E1B9E1E
	.4byte 0x9E759E79
	.4byte 0x9E7D9E81
	.4byte 0x9E889E8B
	.4byte 0x9E8C9E92
	.4byte 0x9E959E91
	.4byte 0x9E9D9EA5
	.4byte 0x9EA99EB8
	.4byte 0x9EAA9EAD
	.4byte 0x97619ECC
	.4byte 0x9ECE9ECF
	.4byte 0x9ED09ED4
	.4byte 0x9EDC9EDE
	.4byte 0x9EDD9EE0
	.4byte 0x9EE59EE8
	.4byte 0x9EEF9EF4
	.4byte 0x9EF69EF7
	.4byte 0x9EF99EFB
	.4byte 0x9EFC9EFD
	.4byte 0x9F079F08
	.4byte 0x76B79F15
	.4byte 0x9F219F2C
	.4byte 0x9F3E9F4A
	.4byte 0x9F529F54
	.4byte 0x9F639F5F
	.4byte 0x9F609F61
	.4byte 0x9F669F67
	.4byte 0x9F6C9F6A
	.4byte 0x9F779F72
	.4byte 0x9F769F95
	.4byte 0x9F9C9FA0
	.4byte 0x582F69C7
	.4byte 0x90597464
	.4byte 0x51DC7199
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
	.4byte 0
	.4byte 0x7E8A891C
	.4byte 0x93489288
	.4byte 0x84DC4FC9
	.4byte 0x70BB6631
	.4byte 0x68C892F9
	.4byte 0x66FB5F45
	.4byte 0x4E284EE1
	.4byte 0x4EFC4F00
	.4byte 0x4F034F39
	.4byte 0x4F564F92
	.4byte 0x4F8A4F9A
	.4byte 0x4F944FCD
	.4byte 0x50405022
	.4byte 0x4FFF501E
	.4byte 0x50465070
	.4byte 0x50425094
	.4byte 0x50F450D8
	.4byte 0x514A5164
	.4byte 0x519D51BE
	.4byte 0x51EC5215
	.4byte 0x529C52A6
	.4byte 0x52C052DB
	.4byte 0x53005307
	.4byte 0x53245372
	.4byte 0x539353B2
	.4byte 0x53DDFA0E
	.4byte 0x549C548A
	.4byte 0x54A954FF
	.4byte 0x55865759
	.4byte 0x576557AC
	.4byte 0x57C857C7
	.4byte 0xFA0FFA10
	.4byte 0x589E58B2
	.4byte 0x590B5953
	.4byte 0x595B595D
	.4byte 0x596359A4
	.4byte 0x59BA5B56
	.4byte 0x5BC0752F
	.4byte 0x5BD85BEC
	.4byte 0x5C1E5CA6
	.4byte 0x5CBA5CF5
	.4byte 0x5D275D53
	.4byte 0xFA115D42
	.4byte 0x5D6D5DB8
	.4byte 0x5DB95DD0
	.4byte 0x5F215F34
	.4byte 0x5F675FB7
	.4byte 0x5FDE605D
	.4byte 0x6085608A
	.4byte 0x60DE60D5
	.4byte 0x612060F2
	.4byte 0x61116137
	.4byte 0x61306198
	.4byte 0x621362A6
	.4byte 0x63F56460
	.4byte 0x649D64CE
	.4byte 0x654E6600
	.4byte 0x6615663B
	.4byte 0x6609662E
	.4byte 0x661E6624
	.4byte 0x66656657
	.4byte 0x6659FA12
	.4byte 0x66736699
	.4byte 0x66A066B2
	.4byte 0x66BF66FA
	.4byte 0x670EF929
	.4byte 0x676667BB
	.4byte 0x685267C0
	.4byte 0x68016844
	.4byte 0x68CFFA13
	.4byte 0x6968FA14
	.4byte 0x699869E2
	.4byte 0x6A306A6B
	.4byte 0x6A466A73
	.4byte 0x6A7E6AE2
	.4byte 0x6AE46BD6
	.4byte 0x6C3F6C5C
	.4byte 0x6C866C6F
	.4byte 0x6CDA6D04
	.4byte 0x6D876D6F
	.4byte 0x6D966DAC
	.4byte 0x6DCF6DF8
	.4byte 0x6DF26DFC
	.4byte 0x6E396E5C
	.4byte 0x6E276E3C
	.4byte 0x6EBF6F88
	.4byte 0x6FB56FF5
	.4byte 0x70057007
	.4byte 0x70287085
	.4byte 0x70AB710F
	.4byte 0x7104715C
	.4byte 0x71467147
	.4byte 0xFA1571C1
	.4byte 0x71FE72B1
	.4byte 0x72BE7324
	.4byte 0xFA167377
	.4byte 0x73BD73C9
	.4byte 0x73D673E3
	.4byte 0x73D27407
	.4byte 0x73F57426
	.4byte 0x742A7429
	.4byte 0x742E7462
	.4byte 0x7489749F
	.4byte 0x7501756F
	.4byte 0x7682769C
	.4byte 0x769E769B
	.4byte 0x76A6FA17
	.4byte 0x774652AF
	.4byte 0x7821784E
	.4byte 0x7864787A
	.4byte 0x7930FA18
	.4byte 0xFA19FA1A
	.4byte 0x7994FA1B
	.4byte 0x799B7AD1
	.4byte 0x7AE7FA1C
	.4byte 0x7AEB7B9E
	.4byte 0xFA1D7D48
	.4byte 0x7D5C7DB7
	.4byte 0x7DA07DD6
	.4byte 0x7E527F47
	.4byte 0x7FA1FA1E
	.4byte 0x83018362
	.4byte 0x837F83C7
	.4byte 0x83F68448
	.4byte 0x84B48553
	.4byte 0x8559856B
	.4byte 0xFA1F85B0
	.4byte 0xFA20FA21
	.4byte 0x880788F5
	.4byte 0x8A128A37
	.4byte 0x8A798AA7
	.4byte 0x8ABE8ADF
	.4byte 0xFA228AF6
	.4byte 0x8B538B7F
	.4byte 0x8CF08CF4
	.4byte 0x8D128D76
	.4byte 0xFA238ECF
	.4byte 0xFA24FA25
	.4byte 0x906790DE
	.4byte 0xFA269115
	.4byte 0x912791DA
	.4byte 0x91D791DE
	.4byte 0x91ED91EE
	.4byte 0x91E491E5
	.4byte 0x92069210
	.4byte 0x920A923A
	.4byte 0x9240923C
	.4byte 0x924E9259
	.4byte 0x92519239
	.4byte 0x926792A7
	.4byte 0x92779278
	.4byte 0x92E792D7
	.4byte 0x92D992D0
	.4byte 0xFA2792D5
	.4byte 0x92E092D3
	.4byte 0x93259321
	.4byte 0x92FBFA28
	.4byte 0x931E92FF
	.4byte 0x931D9302
	.4byte 0x93709357
	.4byte 0x93A493C6
	.4byte 0x93DE93F8
	.4byte 0x94319445
	.4byte 0x94489592
	.4byte 0xF9DCFA29
	.4byte 0x969D96AF
	.4byte 0x9733973B
	.4byte 0x9743974D
	.4byte 0x974F9751
	.4byte 0x97559857
	.4byte 0x9865FA2A
	.4byte 0xFA2B9927
	.4byte 0xFA2C999E
	.4byte 0x9A4E9AD9
	.4byte 0x9ADC9B75
	.4byte 0x9B729B8F
	.4byte 0x9BB19BBB
	.4byte 0x9C009D70
	.4byte 0x9D6BFA2D
	.4byte 0x9E199ED1
	.4byte 0
	.4byte 0x21702171
	.4byte 0x21722173
	.4byte 0x21742175
	.4byte 0x21762177
	.4byte 0x21782179
	.4byte 0xFFE2FFE4
	.4byte 0xFF07FF02
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
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x21702171
	.4byte 0x21722173
	.4byte 0x21742175
	.4byte 0x21762177
	.4byte 0x21782179
	.4byte 0x21602161
	.4byte 0x21622163
	.4byte 0x21642165
	.4byte 0x21662167
	.4byte 0x21682169
	.4byte 0xFFE2FFE4
	.4byte 0xFF07FF02
	.4byte 0x32312116
	.4byte 0x21212235
	.4byte 0x7E8A891C
	.4byte 0x93489288
	.4byte 0x84DC4FC9
	.4byte 0x70BB6631
	.4byte 0x68C892F9
	.4byte 0x66FB5F45
	.4byte 0x4E284EE1
	.4byte 0x4EFC4F00
	.4byte 0x4F034F39
	.4byte 0x4F564F92
	.4byte 0x4F8A4F9A
	.4byte 0x4F944FCD
	.4byte 0x50405022
	.4byte 0x4FFF501E
	.4byte 0x50465070
	.4byte 0x50425094
	.4byte 0x50F450D8
	.4byte 0x514A5164
	.4byte 0x519D51BE
	.4byte 0x51EC5215
	.4byte 0x529C52A6
	.4byte 0x52C052DB
	.4byte 0x53005307
	.4byte 0x53245372
	.4byte 0x539353B2
	.4byte 0x53DDFA0E
	.4byte 0x549C548A
	.4byte 0x54A954FF
	.4byte 0x55865759
	.4byte 0x576557AC
	.4byte 0x57C857C7
	.4byte 0xFA0FFA10
	.4byte 0x589E58B2
	.4byte 0x590B5953
	.4byte 0x595B595D
	.4byte 0x596359A4
	.4byte 0x59BA5B56
	.4byte 0x5BC0752F
	.4byte 0x5BD85BEC
	.4byte 0x5C1E5CA6
	.4byte 0x5CBA5CF5
	.4byte 0x5D275D53
	.4byte 0xFA115D42
	.4byte 0x5D6D5DB8
	.4byte 0x5DB95DD0
	.4byte 0x5F215F34
	.4byte 0x5F675FB7
	.4byte 0x5FDE605D
	.4byte 0x6085608A
	.4byte 0x60DE60D5
	.4byte 0x612060F2
	.4byte 0x61116137
	.4byte 0x61306198
	.4byte 0x621362A6
	.4byte 0x63F56460
	.4byte 0x649D64CE
	.4byte 0x654E6600
	.4byte 0x6615663B
	.4byte 0x6609662E
	.4byte 0x661E6624
	.4byte 0x66656657
	.4byte 0x6659FA12
	.4byte 0x66736699
	.4byte 0x66A066B2
	.4byte 0x66BF66FA
	.4byte 0x670EF929
	.4byte 0x676667BB
	.4byte 0x685267C0
	.4byte 0x68016844
	.4byte 0x68CFFA13
	.4byte 0x6968FA14
	.4byte 0x699869E2
	.4byte 0x6A306A6B
	.4byte 0x6A466A73
	.4byte 0x6A7E6AE2
	.4byte 0x6AE46BD6
	.4byte 0x6C3F6C5C
	.4byte 0x6C866C6F
	.4byte 0x6CDA6D04
	.4byte 0x6D876D6F
	.4byte 0x6D966DAC
	.4byte 0x6DCF6DF8
	.4byte 0x6DF26DFC
	.4byte 0x6E396E5C
	.4byte 0x6E276E3C
	.4byte 0x6EBF6F88
	.4byte 0x6FB56FF5
	.4byte 0x70057007
	.4byte 0x70287085
	.4byte 0x70AB710F
	.4byte 0x7104715C
	.4byte 0x71467147
	.4byte 0xFA1571C1
	.4byte 0x71FE72B1
	.4byte 0x72BE7324
	.4byte 0xFA167377
	.4byte 0x73BD73C9
	.4byte 0x73D673E3
	.4byte 0x73D27407
	.4byte 0x73F57426
	.4byte 0x742A7429
	.4byte 0x742E7462
	.4byte 0x7489749F
	.4byte 0x7501756F
	.4byte 0x7682769C
	.4byte 0x769E769B
	.4byte 0x76A6FA17
	.4byte 0x774652AF
	.4byte 0x7821784E
	.4byte 0x7864787A
	.4byte 0x7930FA18
	.4byte 0xFA19FA1A
	.4byte 0x7994FA1B
	.4byte 0x799B7AD1
	.4byte 0x7AE7FA1C
	.4byte 0x7AEB7B9E
	.4byte 0xFA1D7D48
	.4byte 0x7D5C7DB7
	.4byte 0x7DA07DD6
	.4byte 0x7E527F47
	.4byte 0x7FA1FA1E
	.4byte 0x83018362
	.4byte 0x837F83C7
	.4byte 0x83F68448
	.4byte 0x84B48553
	.4byte 0x8559856B
	.4byte 0xFA1F85B0
	.4byte 0xFA20FA21
	.4byte 0x880788F5
	.4byte 0x8A128A37
	.4byte 0x8A798AA7
	.4byte 0x8ABE8ADF
	.4byte 0xFA228AF6
	.4byte 0x8B538B7F
	.4byte 0x8CF08CF4
	.4byte 0x8D128D76
	.4byte 0xFA238ECF
	.4byte 0xFA24FA25
	.4byte 0x906790DE
	.4byte 0xFA269115
	.4byte 0x912791DA
	.4byte 0x91D791DE
	.4byte 0x91ED91EE
	.4byte 0x91E491E5
	.4byte 0x92069210
	.4byte 0x920A923A
	.4byte 0x9240923C
	.4byte 0x924E9259
	.4byte 0x92519239
	.4byte 0x926792A7
	.4byte 0x92779278
	.4byte 0x92E792D7
	.4byte 0x92D992D0
	.4byte 0xFA2792D5
	.4byte 0x92E092D3
	.4byte 0x93259321
	.4byte 0x92FBFA28
	.4byte 0x931E92FF
	.4byte 0x931D9302
	.4byte 0x93709357
	.4byte 0x93A493C6
	.4byte 0x93DE93F8
	.4byte 0x94319445
	.4byte 0x94489592
	.4byte 0xF9DCFA29
	.4byte 0x969D96AF
	.4byte 0x9733973B
	.4byte 0x9743974D
	.4byte 0x974F9751
	.4byte 0x97559857
	.4byte 0x9865FA2A
	.4byte 0xFA2B9927
	.4byte 0xFA2C999E
	.4byte 0x9A4E9AD9
	.4byte 0x9ADC9B75
	.4byte 0x9B729B8F
	.4byte 0x9BB19BBB
	.4byte 0x9C009D70
	.4byte 0x9D6BFA2D
	.4byte 0x9E199ED1
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


.global lbl_80512D70
lbl_80512D70:
	# ROM: 0x50EE70
	.4byte 0x2281CD25
	.4byte 0x849F3081
	.4byte 0x404E88EA
	.4byte 0x4FFA6B51
	.4byte 0x8B565293
	.4byte 0x8153FA89
	.4byte 0x579A9B58
	.4byte 0x9678619C
	.4byte 0xB5629CF6
	.4byte 0x659DB366
	.4byte 0xFACE678D
	.4byte 0xC569986F
	.4byte 0x7A8B487C
	.4byte 0xE2C57D8B
	.4byte 0x49809773
	.4byte 0x858EC187
	.4byte 0xE5868A8C
	.4byte 0xBE8B9664
	.4byte 0x9091DE97
	.4byte 0x8EF99CFC
	.4byte 0x46048446
	.4byte 0x2584AA30
	.4byte 0x81414E92
	.4byte 0x9A4F8AE9
	.4byte 0x51994D53
	.4byte 0x96E65499
	.4byte 0xDC5A88D0
	.4byte 0x5C95955F
	.4byte 0x95D9618F
	.4byte 0x44638E9D
	.4byte 0x68FAE569
	.4byte 0x9E966F8B
	.4byte 0x9970E066
	.4byte 0x75FB6E76
	.4byte 0xE181778F
	.4byte 0xC8798FCA
	.4byte 0x7E898F80
	.4byte 0x985682E4
	.4byte 0x6C83FB93
	.4byte 0x8B897990
	.4byte 0x91979895
	.4byte 0xC59AE974
	.4byte 0xFF814922
	.4byte 0x81DD2584
	.4byte 0xA0308142
	.4byte 0x51994E53
	.4byte 0x93F55893
	.4byte 0xB0599AE7
	.4byte 0x5C90EA5E
	.4byte 0x8E73639D
	.4byte 0x6B668D56
	.4byte 0x6892CC6A
	.4byte 0x9ED96F95
	.4byte 0x59788DBB
	.4byte 0x7BE2937D
	.4byte 0xE340818E
	.4byte 0x8982E46D
	.4byte 0x8396CE86
	.4byte 0xE5418796
	.4byte 0x4989E5E6
	.4byte 0x8A92F98B
	.4byte 0x88E091E7
	.4byte 0xBD93FBDE
	.4byte 0x9892B8FF
	.4byte 0xFA572181
	.4byte 0x8E2281CE
	.4byte 0x2584AB30
	.4byte 0x81563387
	.4byte 0x654E8EB5
	.4byte 0x4FFA6C52
	.4byte 0x906E548B
	.4byte 0x685795DE
	.4byte 0x5A88A15E
	.4byte 0x957A5F9C
	.4byte 0x50619CB8
	.4byte 0x669DDE67
	.4byte 0x98F06893
	.4byte 0xC8748B85
	.4byte 0x75E14B80
	.4byte 0x8D6C83E4
	.4byte 0x9784E4C2
	.4byte 0x87E5878A
	.4byte 0xE65D8F8A
	.4byte 0x729093A6
	.4byte 0x94E85E98
	.4byte 0x8DA099E9
	.4byte 0x4C9DE9EE
	.4byte 0xFF819451
	.4byte 0x89AD5299
	.4byte 0x83548A65
	.4byte 0x55895357
	.4byte 0x9A9D5C8E
	.4byte 0xCB5F984D
	.4byte 0x68896869
	.4byte 0x9EA46B97
	.4byte 0x936DFAFA
	.4byte 0x71FB5475
	.4byte 0xE14A77E1
	.4byte 0xBE7BE2A0
	.4byte 0x7D96F17E
	.4byte 0x93EA80E3
	.4byte 0xCC8389D6
	.4byte 0x8493B889
	.4byte 0xE5EB8B93
	.4byte 0xA38DE6D1
	.4byte 0x97E8BA9C
	.4byte 0xE9D8FF81
	.4byte 0x9026819A
	.4byte 0x30815850
	.4byte 0x98E45395
	.4byte 0xEF588C98
	.4byte 0x5C9B9165
	.4byte 0x9DB76988
	.4byte 0xD66A9EE0
	.4byte 0x6B9F4F6E
	.4byte 0x90B470FB
	.4byte 0x4E74E0E4
	.4byte 0x75E14C7D
	.4byte 0x8D677EE3
	.4byte 0x6E808ED2
	.4byte 0x818BBA82
	.4byte 0xE46E838A
	.4byte 0x9D88E5A2
	.4byte 0x8DE6D28F
	.4byte 0xE76990E7
	.4byte 0x90988D80
	.4byte 0x9996DD9A
	.4byte 0xE976FF81
	.4byte 0x93268199
	.4byte 0x30815950
	.4byte 0x98ED5295
	.4byte 0xAA5399B0
	.4byte 0x558DB456
	.4byte 0x92515891
	.4byte 0xCD5C8FAB
	.4byte 0x5E94BF61
	.4byte 0x9CB2649D
	.4byte 0x8C668DA9
	.4byte 0x6F8EBD72
	.4byte 0x949A7497
	.4byte 0x9D7BE296
	.4byte 0x7DE2FC80
	.4byte 0xE3CB8190
	.4byte 0xC683E49B
	.4byte 0x85E4CF86
	.4byte 0xE56287E5
	.4byte 0x84908B74
	.4byte 0x92FBC193
	.4byte 0x8E4B97E8
	.4byte 0xBB988F87
	.4byte 0x9BE9A09C
	.4byte 0xE9D49DE9
	.4byte 0xEFFF8195
	.4byte 0x2281DE30
	.4byte 0x815A4E96
	.4byte 0x9C5290D8
	.4byte 0x53FA8A55
	.4byte 0x904F5C9B
	.4byte 0x925D9092
	.4byte 0x638E7766
	.4byte 0x8FB86E8A
	.4byte 0x8970FB4F
	.4byte 0x74FB6577
	.4byte 0xE1BD79E2
	.4byte 0x447CE2C6
	.4byte 0x81986582
	.4byte 0xE46F84E4
	.4byte 0xC7869168
	.4byte 0x88FBA189
	.4byte 0x95A18BE6
	.4byte 0x898DE6D4
	.4byte 0x94E85F97
	.4byte 0x906B9D93
	.4byte 0xBC9FEA87
	.4byte 0xFFFA5622
	.4byte 0x81B83081
	.4byte 0x714E8FE4
	.4byte 0x528AA053
	.4byte 0x99B1548D
	.4byte 0x87579A9F
	.4byte 0x5C9B9361
	.4byte 0x96FA629C
	.4byte 0xF7639D6C
	.4byte 0x678C8E69
	.4byte 0x9E986C9F
	.4byte 0x816E8DCF
	.4byte 0x77E1BC7A
	.4byte 0xE2627B8B
	.4byte 0x888196AC
	.4byte 0x828BBB87
	.4byte 0xE5858A8C
	.4byte 0x768D91A1
	.4byte 0x8EE6F197
	.4byte 0xE8BC9890
	.4byte 0x7B9CE9D5
	.4byte 0x9DE9EC9F
	.4byte 0xEA88FF81
	.4byte 0x69308172
	.4byte 0x4E8E4F4F
	.4byte 0x98C25091
	.4byte 0x7151994C
	.4byte 0x548B6756
	.4byte 0x89C3579A
	.4byte 0x9E5995CF
	.4byte 0x5A9B515B
	.4byte 0x8AF05C88
	.4byte 0xD15F9C51
	.4byte 0x6196F962
	.4byte 0x9CF86388
	.4byte 0xC266FAD1
	.4byte 0x67974C6E
	.4byte 0x8FC26F8D
	.4byte 0x9770E062
	.4byte 0x71E08174
	.4byte 0x97AE76E1
	.4byte 0x887794FB
	.4byte 0x7EE37581
	.4byte 0xE3F5829D
	.4byte 0xA883E49D
	.4byte 0x87E58A8E
	.4byte 0xE6F28F8D
	.4byte 0xDA99E94D
	.4byte 0x9CE9D19D
	.4byte 0xE9EBFF81
	.4byte 0x6A308173
	.4byte 0x4E8FE34F
	.4byte 0x88C9528A
	.4byte 0xA75492DD
	.4byte 0x589ABF59
	.4byte 0x9AE85C91
	.4byte 0xB85F95BE
	.4byte 0x6295E866
	.4byte 0x9DDD6A9E
	.4byte 0xE66B9EDC
	.4byte 0x6E9FBB73
	.4byte 0xE0C77BE2
	.4byte 0x957DE343
	.4byte 0x7EE36F81
	.4byte 0x90D282E4
	.4byte 0x7086E55D
	.4byte 0x87E58D89
	.4byte 0xE5ED8A90
	.4byte 0x758DE6D3
	.4byte 0x8E97788F
	.4byte 0xE76892FB
	.4byte 0xC39797EC
	.4byte 0x99977B9C
	.4byte 0xE9D7FF81
	.4byte 0x962281B9
	.4byte 0x3081744E
	.4byte 0x89BA508C
	.4byte 0xC2529984
	.4byte 0x54894457
	.4byte 0x9AA0589A
	.4byte 0xC259FA9F
	.4byte 0x5B9B685C
	.4byte 0x90715D9B
	.4byte 0xBA5E9BE1
	.4byte 0x5F9C5467
	.4byte 0x95FC6996
	.4byte 0xB86A94F3
	.4byte 0x6D976D6E
	.4byte 0x8F6170E0
	.4byte 0x6376E186
	.4byte 0x778AC57A
	.4byte 0x92F67BE2
	.4byte 0xA27D96E4
	.4byte 0x7EE37680
	.4byte 0xE3CD84E4
	.4byte 0xC486E55F
	.4byte 0x8D8AE490
	.4byte 0xE799FF81
	.4byte 0x7B2584A1
	.4byte 0x30817554
	.4byte 0x93AF5B9B
	.4byte 0x675E8AF3
	.4byte 0x5F989F62
	.4byte 0x9CFA639D
	.4byte 0x67668FB9
	.4byte 0x699E9D6A
	.4byte 0x9EEC6D9F
	.4byte 0xAE75E14D
	.4byte 0x778CA778
	.4byte 0xE1E4808E
	.4byte 0xA78290E3
	.4byte 0x84964789
	.4byte 0xE5EC8AE6
	.4byte 0x608BE688
	.4byte 0x8FE77198
	.4byte 0xE8F19989
	.4byte 0x619CE9D3
	.4byte 0xFF814330
	.4byte 0x81763387
	.4byte 0x694E9573
	.4byte 0x4F8CDE50
	.4byte 0x947B5399
	.4byte 0xB35496BC
	.4byte 0x579AA15C
	.4byte 0x9B945F98
	.4byte 0xAF619CBC
	.4byte 0x629CF964
	.4byte 0x91B96795
	.4byte 0x9E699041
	.4byte 0x72E0A175
	.4byte 0xE14F76E1
	.4byte 0x877AE263
	.4byte 0x7CE2CB7D
	.4byte 0x945B82E4
	.4byte 0x7184E4CA
	.4byte 0x87E58B88
	.4byte 0xE5B68DE6
	.4byte 0xD690E796
	.4byte 0x9293DD97
	.4byte 0xE8B79C8A
	.4byte 0x82FF817C
	.4byte 0x3081774E
	.4byte 0x975E4F8A
	.4byte 0xEA529986
	.4byte 0x548D405C
	.4byte 0x93B15D8D
	.4byte 0xE8609C83
	.4byte 0x619CBD62
	.4byte 0x8F5E6696
	.4byte 0xBE67FADF
	.4byte 0x6992C575
	.4byte 0xE14E7991
	.4byte 0x627A90C5
	.4byte 0x828EC983
	.4byte 0x8C738488
	.4byte 0xDE88E5BA
	.4byte 0x8A93A28B
	.4byte 0x93E490E7
	.4byte 0xA3928A62
	.4byte 0x97E8BE9A
	.4byte 0x8B529D89
	.4byte 0xA89F9343
	.4byte 0xFAFA90FF
	.4byte 0x81442584
	.4byte 0xAC308178
	.4byte 0x4F959A50
	.4byte 0xE0C55399
	.4byte 0xB5549799
	.4byte 0x559A4857
	.4byte 0x8C975989
	.4byte 0xC45C8FAC
	.4byte 0x5F8EAE60
	.4byte 0x9C896188
	.4byte 0xD3649D93
	.4byte 0x668DA867
	.4byte 0x9E4B699E
	.4byte 0x936C8E81
	.4byte 0x6F985270
	.4byte 0xE06771FB
	.4byte 0x537BE294
	.4byte 0x88E5B58D
	.4byte 0xE6D58E93
	.4byte 0xA59093A7
	.4byte 0x93E7F997
	.4byte 0xE8C098E8
	.4byte 0xF09AE975
	.4byte 0xFAFA9BFF
	.4byte 0x815E0484
	.4byte 0x4020815D
	.4byte 0x2584A230
	.4byte 0x81794E98
	.4byte 0xA04F94B0
	.4byte 0x5399B454
	.4byte 0x93665593
	.4byte 0x82599AE9
	.4byte 0x5F93F360
	.4byte 0x9C816290
	.4byte 0xAC72E0A2
	.4byte 0x7D955280
	.4byte 0x91CF82E4
	.4byte 0x72898A8C
	.4byte 0x8AE65F8B
	.4byte 0xE68D8DE6
	.4byte 0xD78EE6F6
	.4byte 0x90928092
	.4byte 0xFBC29390
	.4byte 0x8D94E860
	.4byte 0x98976199
	.4byte 0x8E609C98
	.4byte 0x6BFAFA9C
	.4byte 0xFF824F04
	.4byte 0x84412287
	.4byte 0x9430817A
	.4byte 0x4E894E4F
	.4byte 0x8B785098
	.4byte 0xEC528C59
	.4byte 0x548CFC5A
	.4byte 0x9B4F5C8F
	.4byte 0xAD5D9BC0
	.4byte 0x5E9BE45F
	.4byte 0x9C5561FA
	.4byte 0xC36289E4
	.4byte 0x6392A76C
	.4byte 0x96AF6F9F
	.4byte 0xF270E065
	.4byte 0x758D9979
	.4byte 0xE2467B8F
	.4byte 0xCE7CE2C0
	.4byte 0x8595CC87
	.4byte 0xE58988E5
	.4byte 0xBC90E793
	.4byte 0x92E7E597
	.4byte 0xE8BF988A
	.4byte 0xE6FAFAB1
	.4byte 0xFF825004
	.4byte 0x84422281
	.4byte 0x7C2381DC
	.4byte 0x3081A750
	.4byte 0x937C518E
	.4byte 0xF2578980
	.4byte 0x60937B62
	.4byte 0x89FA699E
	.4byte 0xA36A9EE7
	.4byte 0x6B9F526D
	.4byte 0x9FAD78E1
	.4byte 0xE579E245
	.4byte 0x7C99D37E
	.4byte 0xE37280E3
	.4byte 0xCE8298AE
	.4byte 0x87E58389
	.4byte 0x964A8AFB
	.4byte 0xA38DFBAF
	.4byte 0x8FE76B91
	.4byte 0xE7BE9894
	.4byte 0xD099E94E
	.4byte 0x9A919B9C
	.4byte 0xE9D69DE9
	.4byte 0xF7FAFAD8
	.4byte 0xFF825104
	.4byte 0x84432584
	.4byte 0xAD3081AC
	.4byte 0x579AA25C
	.4byte 0x9B955F8B
	.4byte 0x7C62FAC7
	.4byte 0x649D8D66
	.4byte 0x88D56890
	.4byte 0xF06A9EEA
	.4byte 0x6C9F826E
	.4byte 0x8C6B6FE0
	.4byte 0x4175E151
	.4byte 0x7CE2C784
	.4byte 0xE4BE8596
	.4byte 0xA086E55E
	.4byte 0x89E5EE8A
	.4byte 0x8C508DE6
	.4byte 0xD98FE76D
	.4byte 0x9092FC94
	.4byte 0xE85D97E8
	.4byte 0xBD9893DA
	.4byte 0x9989EC9A
	.4byte 0x8CB19CE9
	.4byte 0xD29F8CDB
	.4byte 0xFAFAE8FF
	.4byte 0x82520484
	.4byte 0x4420815C
	.4byte 0x2584A430
	.4byte 0x816B3387
	.4byte 0x604E8A8E
	.4byte 0x5098E151
	.4byte 0x99515299
	.4byte 0x85559A49
	.4byte 0x569A715D
	.4byte 0x9BC15F92
	.4byte 0xA2629CFB
	.4byte 0x6690CC67
	.4byte 0x8DF16A9E
	.4byte 0xE46C9F83
	.4byte 0x6F898971
	.4byte 0x898B788C
	.4byte 0xA47A96AB
	.4byte 0x7CE2C17D
	.4byte 0x8F8385E4
	.4byte 0xF78BE682
	.4byte 0x8DE6DB8F
	.4byte 0x95E39093
	.4byte 0x7292E7E2
	.4byte 0x94E85C99
	.4byte 0xE94F9CE9
	.4byte 0xD0FAFAEA
	.4byte 0xFF825304
	.4byte 0x84452081
	.4byte 0x5C30816C
	.4byte 0x4E98A151
	.4byte 0x995052FA
	.4byte 0x845399B6
	.4byte 0x5891C259
	.4byte 0x975B5D9B
	.4byte 0xBB5F88F8
	.4byte 0x609C8661
	.4byte 0x9CB166FA
	.4byte 0xCF6792BD
	.4byte 0x6E9FBA6F
	.4byte 0x91867095
	.4byte 0x6D75E150
	.4byte 0x788DD37D
	.4byte 0xE342808D
	.4byte 0x6B85E4F6
	.4byte 0x88E5BE8F
	.4byte 0xE76A90E7
	.4byte 0x9491FBB8
	.4byte 0x92E7E49C
	.4byte 0xE9CF9DE9
	.4byte 0xF69FEA8A
	.4byte 0xFAFB58FF
	.4byte 0x82540484
	.4byte 0x47208161
	.4byte 0x2187824E
	.4byte 0x90A2508C
	.4byte 0xF451994F
	.4byte 0x5389BB55
	.4byte 0x88A0569A
	.4byte 0x73579AA4
	.4byte 0x598A4F5B
	.4byte 0x9B695C90
	.4byte 0xEB5D8A52
	.4byte 0x5E929F5F
	.4byte 0x9C566095
	.4byte 0x7C6288BD
	.4byte 0x649D8A67
	.4byte 0x9E4C6890
	.4byte 0xB26B9F53
	.4byte 0x73E0C982
	.4byte 0xE47383E4
	.4byte 0xA1869F50
	.4byte 0x88E5BD8A
	.4byte 0xE65E8BE6
	.4byte 0x8C8DE6DC
	.4byte 0x90E79897
	.4byte 0xE8C1FAFB
	.4byte 0x5EFF8255
	.4byte 0x04844825
	.4byte 0x84AF4E99
	.4byte 0xC05297F1
	.4byte 0x53966B56
	.4byte 0x8FA65D9B
	.4byte 0xBC5F95A4
	.4byte 0x649D9167
	.4byte 0x984E688C
	.4byte 0x496A9294
	.4byte 0x6C8B436D
	.4byte 0x90F473E0
	.4byte 0xC67A9542
	.4byte 0x7CE2CA7D
	.4byte 0x8ED18096
	.4byte 0xD58295DC
	.4byte 0x83E4AA85
	.4byte 0xE4F2869F
	.4byte 0x418A91F5
	.4byte 0x8BE68E90
	.4byte 0x90809890
	.4byte 0x9CFAFB75
	.4byte 0xFF825604
	.4byte 0x84492081
	.4byte 0x652584A3
	.4byte 0x3387634E
	.4byte 0x8B755198
	.4byte 0xD4568952
	.4byte 0x579AA359
	.4byte 0x99C75A96
	.4byte 0xBA5D9BC5
	.4byte 0x5F8D4F65
	.4byte 0x9DB570E0
	.4byte 0x6D758AC3
	.4byte 0x7AE2647B
	.4byte 0xE2987D8D
	.4byte 0x6880E3CF
	.4byte 0x828ADA83
	.4byte 0xE4AB85E4
	.4byte 0xF3879277
	.4byte 0x8A8B4C93
	.4byte 0x908E948F
	.4byte 0xE09897CC
	.4byte 0x99E9509B
	.4byte 0xE9A1FAFB
	.4byte 0x7DFF8257
	.4byte 0x04844A20
	.4byte 0x81664E95
	.4byte 0xB8508CF3
	.4byte 0x538DFA58
	.4byte 0x9AC3598F
	.4byte 0x675D9BC4
	.4byte 0x5E9BE360
	.4byte 0x9C80638B
	.4byte 0x9369909A
	.4byte 0x6A95576D
	.4byte 0x9FAA6E9F
	.4byte 0xD071E084
	.4byte 0x79E2477A
	.4byte 0xE2657BE2
	.4byte 0x997D8E86
	.4byte 0x80E3D08B
	.4byte 0x8CAA8FE7
	.4byte 0x6C909487
	.4byte 0x91E7BF93
	.4byte 0xE8409493
	.4byte 0xA897E8C2
	.4byte 0x9AE9789E
	.4byte 0xFC4AFAFB
	.4byte 0x7EFF8258
	.4byte 0x04844B22
	.4byte 0x81E34F89
	.4byte 0xEF5098DF
	.4byte 0x51995253
	.4byte 0x99B75991
	.4byte 0xBD5A9B52
	.4byte 0x5C8FAE5D
	.4byte 0x9BC35E9B
	.4byte 0xE2618BF0
	.4byte 0x6290CA69
	.4byte 0x9EAD6E8F
	.4byte 0x8D70E06A
	.4byte 0x7195B075
	.4byte 0x90727A92
	.4byte 0x747D8B89
	.4byte 0x818B7285
	.4byte 0x895586E5
	.4byte 0x6487E594
	.4byte 0x8BE68A90
	.4byte 0x92CA93E8
	.4byte 0x4294E85B
	.4byte 0x988C7A9B
	.4byte 0xE9A29EEA
	.4byte 0x5FFAFB80
	.4byte 0xFF814604
	.4byte 0x844C2584
	.4byte 0xAE548C4E
	.4byte 0x569A7659
	.4byte 0x9AEA5D9B
	.4byte 0xBF5E9BE5
	.4byte 0x5F926F60
	.4byte 0x9C856188
	.4byte 0xA4629CFC
	.4byte 0x67965D69
	.4byte 0x8A916A9E
	.4byte 0xDA6C9F84
	.4byte 0x6D978C6E
	.4byte 0x8CB870E0
	.4byte 0x6972E0A3
	.4byte 0x7396D277
	.4byte 0xE1C47B93
	.4byte 0x4A7D95B4
	.4byte 0x7E949B81
	.4byte 0xE3F88291
	.4byte 0x438AE661
	.4byte 0x8B8D758F
	.4byte 0xE7709CE9
	.4byte 0xDA9D8995
	.4byte 0x9EEA60FA
	.4byte 0xFB82FF81
	.4byte 0x4704844D
	.4byte 0x20816725
	.4byte 0x84A53081
	.4byte 0x604F98E5
	.4byte 0x579AA659
	.4byte 0x96E95A9B
	.4byte 0x506097E5
	.4byte 0x649D7265
	.4byte 0x9DB6669D
	.4byte 0xE4698C9F
	.4byte 0x71E08373
	.4byte 0xE0C87593
	.4byte 0x5B7A97C5
	.4byte 0x7DE34180
	.4byte 0xE3D1828F
	.4byte 0x778388A9
	.4byte 0x8796A889
	.4byte 0xFA5D8FE7
	.4byte 0x6E96958C
	.4byte 0x97919AFA
	.4byte 0xFB86FF81
	.4byte 0x8304844E
	.4byte 0x20816822
	.4byte 0x81E52584
	.4byte 0xBA308780
	.4byte 0x4F936052
	.4byte 0x8F895391
	.4byte 0x785499E5
	.4byte 0x589AC45E
	.4byte 0x92E9608E
	.4byte 0x7662E6C1
	.4byte 0x659D9067
	.4byte 0x92A96B89
	.4byte 0x546E9FDF
	.4byte 0x70E06C73
	.4byte 0xE0CA89E5
	.4byte 0xFA8AE662
	.4byte 0x8B8ED38E
	.4byte 0xE6F48F8B
	.4byte 0x509090C0
	.4byte 0x93FBDD99
	.4byte 0xE952FAFB
	.4byte 0x89FF8181
	.4byte 0x04844F22
	.4byte 0x81874E8F
	.4byte 0xE550FA77
	.4byte 0x5CFAAB62
	.4byte 0x9D4066FA
	.4byte 0xD3679E4D
	.4byte 0x689E786A
	.4byte 0x9EE26D93
	.4byte 0xB47093D2
	.4byte 0x75E15277
	.4byte 0xE1C17BE2
	.4byte 0x9A7E8EC8
	.4byte 0x82959189
	.4byte 0xE5F08EE6
	.4byte 0xF590E797
	.4byte 0x92E7E093
	.4byte 0xFBDB9789
	.4byte 0xE099E953
	.4byte 0x9EEA61FA
	.4byte 0xFB92FF81
	.4byte 0x84048450
	.4byte 0x22879830
	.4byte 0x8781508E
	.4byte 0xD8518F9E
	.4byte 0x548BE157
	.4byte 0x93795A9B
	.4byte 0x4E5D9BBE
	.4byte 0x5F92ED61
	.4byte 0x8AB4628C
	.4byte 0x81638BB2
	.4byte 0x6690AF67
	.4byte 0x8AFA6A8F
	.4byte 0xBE6B9F55
	.4byte 0x6D9FA46E
	.4byte 0x9FD970E0
	.4byte 0x6E7397C2
	.4byte 0x7590B676
	.4byte 0xE1897790
	.4byte 0x5E7AE267
	.4byte 0x7CE2D07E
	.4byte 0xE374828F
	.4byte 0x4D85E4F5
	.4byte 0x8A8FD78E
	.4byte 0xE6F78FE7
	.4byte 0x6F9091AC
	.4byte 0x9BE9A39D
	.4byte 0xE9F4FAFB
	.4byte 0x9DFF8148
	.4byte 0x04845120
	.4byte 0x81F52281
	.4byte 0xDA2584B5
	.4byte 0x538FA054
	.4byte 0x96695A90
	.4byte 0x505C9B96
	.4byte 0x6091D361
	.4byte 0xFAC16689
	.4byte 0x666B8C87
	.4byte 0x6E8B946F
	.4byte 0x949976E1
	.4byte 0x8B7796B0
	.4byte 0x78E1E77A
	.4byte 0xE2667B8A
	.4byte 0x7D7D9166
	.4byte 0x84E4CC8B
	.4byte 0xE68F9091
	.4byte 0xA2938FF9
	.4byte 0x99E9559F
	.4byte 0x916CFAFB
	.4byte 0x9FFF8197
	.4byte 0x04845220
	.4byte 0x81F62187
	.4byte 0x844E97BC
	.4byte 0x5098E751
	.4byte 0x9953538B
	.4byte 0xA7589AC6
	.4byte 0x5FFAB760
	.4byte 0x9C7D619C
	.4byte 0xB9629D41
	.4byte 0x688D5A69
	.4byte 0x9EAF6A96
	.4byte 0xCD6B8E9F
	.4byte 0x6E936E71
	.4byte 0x96B376E1
	.4byte 0x8C78FB78
	.4byte 0x7C8AC87D
	.4byte 0x96617EE3
	.4byte 0x7180E3D2
	.4byte 0x85E4EF88
	.4byte 0xE5C08B97
	.4byte 0x7790E795
	.4byte 0x93FBD894
	.4byte 0xE86496E8
	.4byte 0x9498E8F4
	.4byte 0x99E9519C
	.4byte 0xE9DD9FEA
	.4byte 0x8BFAFBA0
	.4byte 0xFF826004
	.4byte 0x84533387
	.4byte 0x6150FA75
	.4byte 0x5996B25B
	.4byte 0x8FEC5C9B
	.4byte 0x975D9BC2
	.4byte 0x688A9C69
	.4byte 0x9E9A6A9E
	.4byte 0xF66F8ABF
	.4byte 0x7491F476
	.4byte 0xE18D7D8D
	.4byte 0xF57EE377
	.4byte 0x84E4CB86
	.4byte 0xE56388E5
	.4byte 0xBF9088A7
	.4byte 0x93E8419B
	.4byte 0xE9A4FAFB
	.4byte 0xA9FF8261
	.4byte 0x04845425
	.4byte 0x84B03387
	.4byte 0x6B5095ED
	.4byte 0x5399B865
	.4byte 0x9DB9699E
	.4byte 0xAE6A9EE9
	.4byte 0x6B8BD36C
	.4byte 0x9F866E9F
	.4byte 0xD46F97F8
	.4byte 0x758E597C
	.4byte 0xE2CD7EE3
	.4byte 0x7081E3FA
	.4byte 0x83E4B288
	.4byte 0xE5798A8C
	.4byte 0x8D909841
	.4byte 0x93E8439B
	.4byte 0xE9A59DE9
	.4byte 0xF3FAFBB1
	.4byte 0xFF826204
	.4byte 0x84552584
	.4byte 0xA750926C
	.4byte 0x5294BB53
	.4byte 0xFA8B5892
	.4byte 0xE75C96DE
	.4byte 0x659DB866
	.4byte 0xFAD46C9F
	.4byte 0x856E9FDD
	.4byte 0x73FB5D76
	.4byte 0xE18E77E1
	.4byte 0xC097E8C3
	.4byte 0x98E8F399
	.4byte 0xE9549CE9
	.4byte 0xDCFAFBB3
	.4byte 0xFF826304
	.4byte 0x84562081
	.4byte 0x64228161
	.4byte 0x2584BC50
	.4byte 0x98E35295
	.4byte 0xCA599AEC
	.4byte 0x5A9B4D5E
	.4byte 0x90835F96
	.4byte 0xED608B7D
	.4byte 0x668F7469
	.4byte 0x9EA76D92
	.4byte 0xC36E88AD
	.4byte 0x73E0CE74
	.4byte 0xE0E67589
	.4byte 0x9977E1C2
	.4byte 0x7893757B
	.4byte 0x907987E5
	.4byte 0x9289E5F1
	.4byte 0x8AE66393
	.4byte 0xFBD79BE9
	.4byte 0xA69CE9DB
	.4byte 0xFAFBB4FF
	.4byte 0x82640484
	.4byte 0x57208163
	.4byte 0x33876A4E
	.4byte 0x95C0508C
	.4byte 0x915494DB
	.4byte 0x579AA75F
	.4byte 0x8CB7609C
	.4byte 0x886290ED
	.4byte 0x649D8E67
	.4byte 0x9E4E699E
	.4byte 0x9B6E8951
	.4byte 0x70929571
	.4byte 0x8FC574FB
	.4byte 0x6775E153
	.4byte 0x77E1C378
	.4byte 0x8DD479E1
	.4byte 0xE67B9584
	.4byte 0x7E8F6385
	.4byte 0x92D38BE6
	.4byte 0x928FE772
	.4byte 0x938BD19D
	.4byte 0xE9F1FAFB
	.4byte 0xB7FF8265
	.4byte 0x04845822
	.4byte 0x81C83387
	.4byte 0x64529987
	.4byte 0x5788B359
	.4byte 0x91E55DFA
	.4byte 0xAF5F8CCA
	.4byte 0x6090AB61
	.4byte 0x9CC1639D
	.4byte 0x6A669686
	.4byte 0x679E4F6B
	.4byte 0x89A26EFB
	.4byte 0x487091EB
	.4byte 0x76E18A78
	.4byte 0x8B6D7CE2
	.4byte 0xCE88E5C4
	.4byte 0x90E79A91
	.4byte 0xFBB99796
	.4byte 0xB699FBF8
	.4byte 0x9BE9A7FA
	.4byte 0xFBD3FF82
	.4byte 0x66048459
	.4byte 0x2281C925
	.4byte 0x84B74EFA
	.4byte 0x685098E0
	.4byte 0x578DDD5C
	.4byte 0x9B986089
	.4byte 0x85619CC0
	.4byte 0x6388A564
	.4byte 0x9D92668D
	.4byte 0xF06796D8
	.4byte 0x699EAB70
	.4byte 0xFB5072E0
	.4byte 0xA4759770
	.4byte 0x7BE29C80
	.4byte 0xE3D38388
	.4byte 0xEF8BE695
	.4byte 0x93956496
	.4byte 0xE895998A
	.4byte 0xD99A91CB
	.4byte 0x9BE9A89D
	.4byte 0x8A9BFAFB
	.4byte 0xDAFF8267
	.4byte 0x04845A22
	.4byte 0x81BF5098
	.4byte 0xE8529798
	.4byte 0x5499E456
	.4byte 0x89DC5993
	.4byte 0x565A95D8
	.4byte 0x5D95F65F
	.4byte 0x9C57609C
	.4byte 0x82689E7A
	.4byte 0x6A8CA06D
	.4byte 0x896B6E89
	.4byte 0xB773E0CD
	.4byte 0x74FB6977
	.4byte 0xE1BF81E3
	.4byte 0xF982E474
	.4byte 0x84948B87
	.4byte 0xE5938F94
	.4byte 0x7992E86E
	.4byte 0x9BE9A9F9
	.4byte 0xFAE0FAFB
	.4byte 0xEAFF8268
	.4byte 0x04845B22
	.4byte 0x81BE4E98
	.4byte 0xA25098E2
	.4byte 0x51974452
	.4byte 0x99885394
	.4byte 0xD9588AAC
	.4byte 0x5991BE5B
	.4byte 0x9B6C6089
	.4byte 0xF6629D42
	.4byte 0x659D9867
	.4byte 0x96A2688A
	.4byte 0x94699EAC
	.4byte 0x6A89A16D
	.4byte 0x8D5E7292
	.4byte 0xDC739296
	.4byte 0x74FB6879
	.4byte 0xE1E87CE2
	.4byte 0xCF828D71
	.4byte 0x84E4D289
	.4byte 0xE5F28A96
	.4byte 0x4B8EE748
	.4byte 0x8F97D696
	.4byte 0x8DE397E8
	.4byte 0xC49BE9AA
	.4byte 0x9DE9F0FA
	.4byte 0xFBF6FF82
	.4byte 0x6904845C
	.4byte 0x2181F022
	.4byte 0x81E72584
	.4byte 0xB233876C
	.4byte 0x5097CF54
	.4byte 0x8ADC5995
	.4byte 0x765E8E74
	.4byte 0x609C8763
	.4byte 0x8DC1659D
	.4byte 0xBA679696
	.4byte 0x689E816A
	.4byte 0x8A7E6D9F
	.4byte 0xA76E9FD6
	.4byte 0x6F969F73
	.4byte 0x944C7595
	.4byte 0xE179E249
	.4byte 0x7CE2D27D
	.4byte 0x8E877E96
	.4byte 0x4482E475
	.4byte 0x83E4A989
	.4byte 0xE5F38BE6
	.4byte 0x93938EE0
	.4byte 0x94E8629A
	.4byte 0xE9799D8E
	.4byte 0xB0FAFBF7
	.4byte 0xFF826A04
	.4byte 0x845D2281
	.4byte 0xE82584A6
	.4byte 0x5098E954
	.4byte 0x99DF599A
	.4byte 0xED5B92DA
	.4byte 0x619CC564
	.4byte 0x94C0659D
	.4byte 0xAE67967B
	.4byte 0x6E91AA6F
	.4byte 0x92D07090
	.4byte 0xA372E0A6
	.4byte 0x75E15479
	.4byte 0xE2487B91
	.4byte 0xE67D92DB
	.4byte 0x8294CA84
	.4byte 0xE4DD85E4
	.4byte 0xF48B9554
	.4byte 0x92E7E393
	.4byte 0x98429896
	.4byte 0x6A99E956
	.4byte 0x9D89A79F
	.4byte 0xEA8CFAFB
	.4byte 0xF9FF826B
	.4byte 0x04845E4E
	.4byte 0x92865098
	.4byte 0x605499E0
	.4byte 0x578C5C59
	.4byte 0x9AEE5C8B
	.4byte 0xC45E90C8
	.4byte 0x5F9C5864
	.4byte 0x938B668F
	.4byte 0xBA678E44
	.4byte 0x6E9FCD72
	.4byte 0xE0A58588
	.4byte 0xFC869796
	.4byte 0x8A90DD91
	.4byte 0x93419893
	.4byte 0xAA9C9568
	.4byte 0xFAFC49FF
	.4byte 0x826C0484
	.4byte 0x5F228793
	.4byte 0x52998954
	.4byte 0x99E2559A
	.4byte 0x5359899B
	.4byte 0x629D4366
	.4byte 0xFAD2679E
	.4byte 0x516A9ED1
	.4byte 0x6E9FCF73
	.4byte 0x8CA374FB
	.4byte 0x6A7A8EED
	.4byte 0x7DE3467E
	.4byte 0x8F6B82E4
	.4byte 0x849091DF
	.4byte 0x93E7FC96
	.4byte 0xE89699E9
	.4byte 0x579BE9AB
	.4byte 0x9CE9D9FF
	.4byte 0x826D0484
	.4byte 0x602584B6
	.4byte 0x4F948C53
	.4byte 0x99B95597
	.4byte 0x42569A82
	.4byte 0x58EA9F5A
	.4byte 0x8CE25E91
	.4byte 0xD15F9C5E
	.4byte 0x608BAF62
	.4byte 0x8B596390
	.4byte 0x55658E78
	.4byte 0x6690A56E
	.4byte 0x8D6073E0
	.4byte 0xCC75FAA8
	.4byte 0x7D97DD81
	.4byte 0xE3FB83E4
	.4byte 0xA886E1BA
	.4byte 0x8F8F5393
	.4byte 0x8DF696E8
	.4byte 0x979BE9AC
	.4byte 0x9C88F1FF
	.4byte 0x826E0484
	.4byte 0x702081F1
	.4byte 0x2584BB4F
	.4byte 0x98C45293
	.4byte 0x9E57926E
	.4byte 0x5889815B
	.4byte 0x89645E8B
	.4byte 0x4161FAC5
	.4byte 0x629D4469
	.4byte 0x9EBD6AFA
	.4byte 0xED70E06F
	.4byte 0x72E0A775
	.4byte 0x936376E1
	.4byte 0x9079FB7C
	.4byte 0x7D8DD786
	.4byte 0xE5658EE6
	.4byte 0xFA91E7C1
	.4byte 0x97E8C59A
	.4byte 0x93AB9CE9
	.4byte 0xDEFF826F
	.4byte 0x04847132
	.4byte 0x878A4E98
	.4byte 0xA35399BA
	.4byte 0x558FA556
	.4byte 0x8FFA5895
	.4byte 0xF1598EB8
	.4byte 0x5C8F415F
	.4byte 0x8EE3609C
	.4byte 0x8466FA63
	.4byte 0x678EE96F
	.4byte 0x9FF97597
	.4byte 0x527AE269
	.4byte 0x7EE37381
	.4byte 0x924583E4
	.4byte 0xA3848A9E
	.4byte 0x88E5C18A
	.4byte 0x8B96908F
	.4byte 0x5494FBE5
	.4byte 0x9B9F54FF
	.4byte 0x82700484
	.4byte 0x7220818C
	.4byte 0x32878B4E
	.4byte 0x8BF85196
	.4byte 0xD7569A7D
	.4byte 0x599AEF5B
	.4byte 0x9B6A629D
	.4byte 0x45689E7D
	.4byte 0x6B977E6D
	.4byte 0x8F466F9F
	.4byte 0xFB70E071
	.4byte 0x72E0A874
	.4byte 0xE0E8758D
	.4byte 0x62789643
	.4byte 0x7A88EE7D
	.4byte 0xE3477EE3
	.4byte 0x8083E4A2
	.4byte 0x90906991
	.4byte 0xE7C09398
	.4byte 0x5E969668
	.4byte 0x9798499B
	.4byte 0xE9AD9CE9
	.4byte 0xE0FF8271
	.4byte 0x04847320
	.4byte 0x818D2584
	.4byte 0xB152998A
	.4byte 0x5399BB55
	.4byte 0x9A595E92
	.4byte 0xA0629D46
	.4byte 0x6D9FAC74
	.4byte 0x97D47590
	.4byte 0x5C7BE297
	.4byte 0x7D906180
	.4byte 0x8EA88194
	.4byte 0x5D82E477
	.4byte 0x8A96F38B
	.4byte 0xE6908FE7
	.4byte 0x7397FBED
	.4byte 0xFF827204
	.4byte 0x84742281
	.4byte 0x882584A8
	.4byte 0x4F94BA56
	.4byte 0x9A7B588F
	.4byte 0xEA5FFAB8
	.4byte 0x619CC662
	.4byte 0x91D5649D
	.4byte 0x8B659DBB
	.4byte 0x669DE367
	.4byte 0x96706890
	.4byte 0xF16993CC
	.4byte 0x6C908573
	.4byte 0xE0CB748B
	.4byte 0xD576E18F
	.4byte 0x78946A83
	.4byte 0xE4A087E5
	.4byte 0x8E8A9169
	.4byte 0x8EE6FB92
	.4byte 0x97E99889
	.4byte 0x6FFF8273
	.4byte 0x04847522
	.4byte 0x81E65893
	.4byte 0x675A9B56
	.4byte 0x5F92A365
	.4byte 0x9DBC669D
	.4byte 0xE16A8FBF
	.4byte 0x6D9FAB72
	.4byte 0x8EDD7494
	.4byte 0xFA7BE29B
	.4byte 0x7DE3497E
	.4byte 0xE37B8291
	.4byte 0xC783E49F
	.4byte 0x84E4E085
	.4byte 0x91A08EE6
	.4byte 0xF990E79C
	.4byte 0x93E84594
	.4byte 0xE863FF82
	.4byte 0x74048477
	.4byte 0x3387664E
	.4byte 0x98A44F97
	.4byte 0xE0508BE4
	.4byte 0x5290A754
	.4byte 0x99E3569A
	.4byte 0x7C5A9B57
	.4byte 0x5B9B6D5E
	.4byte 0x9BE6649D
	.4byte 0x8F659DBE
	.4byte 0x669DE267
	.4byte 0x9E53699E
	.4byte 0xA26A9EEE
	.4byte 0x6D9FA671
	.4byte 0x91527295
	.4byte 0x83739750
	.4byte 0x7494697B
	.4byte 0xE29D7F8A
	.4byte 0xCA8096EB
	.4byte 0x82949583
	.4byte 0x928388E5
	.4byte 0xC289E5F7
	.4byte 0x8AE66490
	.4byte 0xE79B94E8
	.4byte 0x61FF8275
	.4byte 0x04847825
	.4byte 0x84B85199
	.4byte 0x55528DFC
	.4byte 0x579AA859
	.4byte 0x88CE5E9B
	.4byte 0xE75F8BAD
	.4byte 0x61FAC465
	.4byte 0x9DBD679E
	.4byte 0x566B9F57
	.4byte 0x6C955873
	.4byte 0x97517592
	.4byte 0x6A77E1C5
	.4byte 0x7AE26C7C
	.4byte 0xE2D17EE3
	.4byte 0x7E828CBD
	.4byte 0x87E5908A
	.4byte 0xFBA48C92
	.4byte 0x4A928CD8
	.4byte 0x98E8F59A
	.4byte 0xE97AFF82
	.4byte 0x76048479
	.4byte 0x2584BD4E
	.4byte 0x8ADB4F90
	.4byte 0x4C528C94
	.4byte 0x5399BC54
	.4byte 0x8B7A559A
	.4byte 0x58569A7E
	.4byte 0x579AA959
	.4byte 0x9AF05C9B
	.4byte 0x995E8FED
	.4byte 0x5F9C5962
	.4byte 0x8CCB659D
	.4byte 0xBF679E55
	.4byte 0x688A6A6A
	.4byte 0x9EF56B9F
	.4byte 0x566C8969
	.4byte 0x6D9FA96E
	.4byte 0x9FE06F91
	.4byte 0x517599B2
	.4byte 0x77E1C67C
	.4byte 0x94F47FE3
	.4byte 0x9D82E476
	.4byte 0x8391F984
	.4byte 0xE4CE89E5
	.4byte 0xF88F9741
	.4byte 0x9088ED94
	.4byte 0x91F6979E
	.4byte 0x5098E8F2
	.4byte 0xFF827704
	.4byte 0x847A3287
	.4byte 0x8C4E924F
	.4byte 0x4FFA6D50
	.4byte 0x8C905299
	.4byte 0x8B539543
	.4byte 0x54908155
	.4byte 0x9A4F5C9B
	.4byte 0x9A6589FC
	.4byte 0x688DAA69
	.4byte 0x9EB96A8E
	.4byte 0xF76B9F59
	.4byte 0x6EFB467B
	.4byte 0x8DF97D8F
	.4byte 0xD07EE37C
	.4byte 0x8192AF82
	.4byte 0x914483E4
	.4byte 0xA588E5C3
	.4byte 0x8B8BDE8F
	.4byte 0xE77590E7
	.4byte 0x9D92FBCA
	.4byte 0x97E8C69C
	.4byte 0x8A8FFF82
	.4byte 0x7804847B
	.4byte 0x4F8E6651
	.4byte 0x9954528E
	.4byte 0x68538BE6
	.4byte 0x588DE45C
	.4byte 0x8EDA609C
	.4byte 0x8A6392F0
	.4byte 0x648C6767
	.4byte 0x8AF76A8A
	.4byte 0x926B8B5C
	.4byte 0x6E9FDB72
	.4byte 0x96EA74E0
	.4byte 0xE97592AC
	.4byte 0x7792AD78
	.4byte 0x9376798E
	.4byte 0xA67D8DAE
	.4byte 0x7EE3817F
	.4byte 0xE39E8A90
	.4byte 0x668CE6AC
	.4byte 0x92FBC493
	.4byte 0xE84494E8
	.4byte 0x659CE9CB
	.4byte 0xFF827904
	.4byte 0x847C2081
	.4byte 0xA62584B3
	.4byte 0x33876E4E
	.4byte 0x8EE55199
	.4byte 0x57528D8F
	.4byte 0x5388E354
	.4byte 0x95AB579A
	.4byte 0xAB5C904B
	.4byte 0x6296DF65
	.4byte 0x8D5566FA
	.4byte 0xD06D8A88
	.4byte 0x72E0A975
	.4byte 0x89E676E1
	.4byte 0x917AE26A
	.4byte 0x7EE37A80
	.4byte 0xE3D587E5
	.4byte 0x9188E5C5
	.4byte 0x89E5F68A
	.4byte 0x92908FE7
	.4byte 0x7493E846
	.4byte 0x96916A97
	.4byte 0xFBEE9895
	.4byte 0x709BE2F6
	.4byte 0x9C89569D
	.4byte 0x8D839F95
	.4byte 0x40FF816D
	.4byte 0x04847D25
	.4byte 0x84A94E98
	.4byte 0xA54F8E97
	.4byte 0x51995654
	.4byte 0x99E15A8F
	.4byte 0xA95C93F2
	.4byte 0x5F954A61
	.4byte 0x9CC46692
	.4byte 0x8B688A69
	.4byte 0x6EFB4971
	.4byte 0x8FC472E0
	.4byte 0xAA75E155
	.4byte 0x778AE179
	.4byte 0x97E77A89
	.4byte 0xD284E4D3
	.4byte 0x8A8FD890
	.4byte 0x954E92FB
	.4byte 0xC698978A
	.4byte 0x9B8B53FF
	.4byte 0x815F0484
	.4byte 0x7E2281E4
	.4byte 0x4F89BE54
	.4byte 0x99DD589A
	.4byte 0xCC5C9073
	.4byte 0x5E965861
	.4byte 0x9CC76394
	.4byte 0xD2678B80
	.4byte 0x688DCD69
	.4byte 0x9EBB6A92
	.4byte 0x4D6B8BD4
	.4byte 0x6D9FA872
	.4byte 0x91757A8C
	.4byte 0x6D7CE2D3
	.4byte 0x7EE36080
	.4byte 0x925E8497
	.4byte 0x8E8595C1
	.4byte 0x97E8C798
	.4byte 0xE8F699E9
	.4byte 0x58FF816E
	.4byte 0x04848020
	.4byte 0x7E00548C
	.4byte 0xE15591C1
	.4byte 0x599AF15B
	.4byte 0x9B6E5C94
	.4byte 0xF65F9265
	.4byte 0x619CBF63
	.4byte 0x9D70648D
	.4byte 0xEF6595FA
	.4byte 0x6B8ABC6C
	.4byte 0x94C36D94
	.4byte 0x686E9FD3
	.4byte 0x6FE04070
	.4byte 0xE070728E
	.4byte 0xA273E0CF
	.4byte 0x798ED07A
	.4byte 0xE26B7C97
	.4byte 0xFA7E90D1
	.4byte 0x81E4428B
	.4byte 0xE6948FE7
	.4byte 0x7890E7A5
	.4byte 0x97E8C899
	.4byte 0xE9599AE9
	.4byte 0x809CE9E2
	.4byte 0x9DE9FA9F
	.4byte 0xEA8DFF81
	.4byte 0x4F048481
	.4byte 0x2584B94E
	.4byte 0x98A65199
	.4byte 0x585393BD
	.4byte 0x5C944161
	.4byte 0x9CC36296
	.4byte 0x5B63917D
	.4byte 0x6590AD66
	.4byte 0x9E45679E
	.4byte 0x526992D6
	.4byte 0x6CFAF56F
	.4byte 0x9FF772E0
	.4byte 0xAB73898E
	.4byte 0x74E0EB78
	.4byte 0x8D7B7A8D
	.4byte 0x657C95EB
	.4byte 0x7DE34880
	.4byte 0xE3D486E5
	.4byte 0x6687E58F
	.4byte 0x8CE6AE8F
	.4byte 0x976092E7
	.4byte 0xED9688A2
	.4byte 0x9DE9F9FF
	.4byte 0x81510484
	.4byte 0x8226818A
	.4byte 0x50FA7451
	.4byte 0x99595399
	.4byte 0xBD5499DE
	.4byte 0x559A5057
	.4byte 0x9AAC5895
	.4byte 0xBB5A9B53
	.4byte 0x5B9B715C
	.4byte 0x8BC75E9B
	.4byte 0xEA628F8A
	.4byte 0x689E7B6C
	.4byte 0x92F372E0
	.4byte 0xAC779285
	.4byte 0x79E24A7A
	.4byte 0x8D927CE2
	.4byte 0xD882E478
	.4byte 0x83E4A485
	.4byte 0xE4F9888C
	.4byte 0x8C92FBC5
	.4byte 0x9691C99A
	.4byte 0xE97DFF81
	.4byte 0x4D048483
	.4byte 0x30829F51
	.4byte 0x88F2538F
	.4byte 0x5C5897DB
	.4byte 0x5A984B5C
	.4byte 0x9B9B5F9C
	.4byte 0x5A609C8C
	.4byte 0x629D4766
	.4byte 0x9DE8679E
	.4byte 0x54688C85
	.4byte 0x6C8F606D
	.4byte 0x97AC6F9F
	.4byte 0xF174E0EE
	.4byte 0x798C567E
	.4byte 0x94C985E5
	.4byte 0x4089E5F4
	.4byte 0x8AE6658B
	.4byte 0xE6968CE6
	.4byte 0xAD9093D9
	.4byte 0x94E8669B
	.4byte 0x8A409DE9
	.4byte 0xF8FF8281
	.4byte 0x04848425
	.4byte 0x84BE2681
	.4byte 0x893082A0
	.4byte 0x4E98A750
	.4byte 0xFA7A5498
	.4byte 0x4356895C
	.4byte 0x578DE25D
	.4byte 0xFAB2609C
	.4byte 0x96619CC8
	.4byte 0x6490DB66
	.4byte 0x8E9E688C
	.4byte 0x6A6C8B81
	.4byte 0x7697C37A
	.4byte 0x95E47D8F
	.4byte 0x4988E5C7
	.4byte 0x8EE6F88F
	.4byte 0xE7779090
	.4byte 0x8B96E898
	.4byte 0x97E8CC99
	.4byte 0xE95A9AE9
	.4byte 0x7C9B8DB0
	.4byte 0xFF828204
	.4byte 0x84853082
	.4byte 0xA14E9454
	.4byte 0x4F92CF50
	.4byte 0x98EE518C
	.4byte 0xB35292E4
	.4byte 0x5390E75B
	.4byte 0x9B6F5E9B
	.4byte 0xE9609C94
	.4byte 0x668D5768
	.4byte 0x938D6B9F
	.4byte 0x5C6E9FDA
	.4byte 0x7AE26D7C
	.4byte 0xE2D57D8C
	.4byte 0xBC7EE37D
	.4byte 0x8594D789
	.4byte 0xE5EF97FB
	.4byte 0xEF9AE97E
	.4byte 0x9BE9AFFF
	.4byte 0x82830484
	.4byte 0x863082A2
	.4byte 0x518C5A52
	.4byte 0x998D5591
	.4byte 0xED598982
	.4byte 0x5E9BE861
	.4byte 0x9CC9669D
	.4byte 0xE668FAE6
	.4byte 0x6A9EEB6D
	.4byte 0x8FF2738D
	.4byte 0x9675E156
	.4byte 0x7D916788
	.4byte 0xE5C689E5
	.4byte 0xF58E92FB
	.4byte 0x8F8A8D92
	.4byte 0x935393E7
	.4byte 0xFB94E868
	.4byte 0x96958D97
	.4byte 0xE8C99BE9
	.4byte 0xAE9DE9F5
	.4byte 0xFF828404
	.4byte 0x84873082
	.4byte 0xA34E8B76
	.4byte 0x518F5B53
	.4byte 0x99BF559A
	.4byte 0x555B9B70
	.4byte 0x5C8B8F5E
	.4byte 0x959D5FFA
	.4byte 0x67658CCC
	.4byte 0x6D90F36F
	.4byte 0x8AC1738E
	.4byte 0x8278E1E9
	.4byte 0x7BE2A47D
	.4byte 0xE3447FE3
	.4byte 0x9F83E4A7
	.4byte 0x8FE77690
	.4byte 0x927892E7
	.4byte 0xE894FBE6
	.4byte 0x99E95C9A
	.4byte 0xE97B9B96
	.4byte 0xA3FF8285
	.4byte 0x04848830
	.4byte 0x82A44F92
	.4byte 0x4150FA78
	.4byte 0x51929B53
	.4byte 0x99BE5495
	.4byte 0xF0558FA4
	.4byte 0x5A946B5C
	.4byte 0x9B9C609C
	.4byte 0x91679E57
	.4byte 0x689E796A
	.4byte 0xFAEF71FB
	.4byte 0x5672E0AD
	.4byte 0x75E15B76
	.4byte 0xE19477FB
	.4byte 0x767A9673
	.4byte 0x7B954D7D
	.4byte 0xE34A7EE3
	.4byte 0x7880E3D7
	.4byte 0x81E44184
	.4byte 0xE4DC888F
	.4byte 0x4F8AE668
	.4byte 0x8C93A48F
	.4byte 0xE77B97E8
	.4byte 0xCA98E8F7
	.4byte 0x9CE9E19D
	.4byte 0xE9FBFF82
	.4byte 0x86048489
	.4byte 0x3082A54F
	.4byte 0x98C85098
	.4byte 0xEF518BA2
	.4byte 0x5291A553
	.4byte 0x8FA1578B
	.4byte 0xCF598AEF
	.4byte 0x5E9BF161
	.4byte 0x9CBE6290
	.4byte 0xEE6A9EF0
	.4byte 0x6B9F5B71
	.4byte 0xFB577295
	.4byte 0xD076E192
	.4byte 0x77E1C779
	.4byte 0x8B5F7FFB
	.4byte 0x908292F8
	.4byte 0x8EE74090
	.4byte 0x8BF69CE9
	.4byte 0xDFFF8287
	.4byte 0x04848A30
	.4byte 0x82A65098
	.4byte 0xF35190E6
	.4byte 0x538CDF54
	.4byte 0x92E65993
	.4byte 0xDE5C8BFC
	.4byte 0x5F9C5B61
	.4byte 0x8E9C62E7
	.4byte 0xBB659DC1
	.4byte 0x6888C46A
	.4byte 0x9EF47294
	.4byte 0xC576E193
	.4byte 0x798B467B
	.4byte 0x94A47DFB
	.4byte 0x8A84FB98
	.4byte 0x85E4FC8A
	.4byte 0xE6698CE6
	.4byte 0xAF8EE744
	.4byte 0x92E7EB93
	.4byte 0xFA5E94FB
	.4byte 0xE797E8CB
	.4byte 0x9C924C9D
	.4byte 0xE9FCFF82
	.4byte 0x8804848B
	.4byte 0x3082A733
	.4byte 0x875F5088
	.4byte 0xCC518CF5
	.4byte 0x5399C154
	.4byte 0x8CE05995
	.4byte 0xF25A9B55
	.4byte 0x6294E063
	.4byte 0x91A8669D
	.4byte 0xE7679099
	.4byte 0x6B9F5D71
	.4byte 0x97F975E1
	.4byte 0x59798E83
	.4byte 0x7AE26F7B
	.4byte 0x93998391
	.4byte 0x90849774
	.4byte 0x858FD487
	.4byte 0x90E48BE6
	.4byte 0x9A8EE741
	.4byte 0x8FE77A90
	.4byte 0xE7A49193
	.4byte 0xD192E7E9
	.4byte 0x97E8CD99
	.4byte 0xE95BFF82
	.4byte 0x8904848C
	.4byte 0x3082A833
	.4byte 0x876D51FA
	.4byte 0x7E528DED
	.4byte 0x5394BC54
	.4byte 0x8D905796
	.4byte 0x565889F2
	.4byte 0x5C93CD5F
	.4byte 0x8BAE609C
	.4byte 0x90619CC2
	.4byte 0x69976B6E
	.4byte 0x96A975E1
	.4byte 0x587E9140
	.4byte 0x80E3D683
	.4byte 0x8C74858E
	.4byte 0xC78C964C
	.4byte 0x8EE6FC90
	.4byte 0x975691E7
	.4byte 0xC29FEA8E
	.4byte 0xFF828A04
	.4byte 0x848D2584
	.4byte 0xB43082A9
	.4byte 0x4E945651
	.4byte 0x8D8E5299
	.4byte 0x8E589AC8
	.4byte 0x5C89AE5D
	.4byte 0x9BC96097
	.4byte 0xF66191D4
	.4byte 0x628EE866
	.4byte 0x90576A8B
	.4byte 0xB472E0AE
	.4byte 0x759DC07B
	.4byte 0x8BD87DE3
	.4byte 0x457E8C71
	.4byte 0x81E3FC85
	.4byte 0xE5428798
	.4byte 0x5890895E
	.4byte 0x918F5592
	.4byte 0xE7EE9393
	.4byte 0xE796E89B
	.4byte 0x98E8F999
	.4byte 0xE95E9FE2
	.4byte 0x56FF828B
	.4byte 0x04848E30
	.4byte 0x82AA5199
	.4byte 0x5B52998F
	.4byte 0x559A5256
	.4byte 0x91585D9B
	.4byte 0xC65E9679
	.4byte 0x5F9C5C61
	.4byte 0x8D51638E
	.4byte 0x4A6B89CC
	.4byte 0x709FF371
	.4byte 0xE08A7294
	.4byte 0x76758A45
	.4byte 0x768AE07B
	.4byte 0xE2A37CE2
	.4byte 0xD47D8C6F
	.4byte 0x7FE3A087
	.4byte 0xE598888D
	.4byte 0x7389E5F9
	.4byte 0x8BE6978C
	.4byte 0xE6B08EE7
	.4byte 0x428FE779
	.4byte 0x918EDE96
	.4byte 0xE8999891
	.4byte 0xE899E961
	.4byte 0xFF828C04
	.4byte 0x848F3082
	.4byte 0xAB338762
	.4byte 0x4E93E14F
	.4byte 0x88CA5196
	.4byte 0xC652914F
	.4byte 0x5399C25C
	.4byte 0x8E72609C
	.4byte 0x92619CB0
	.4byte 0x628DCB63
	.4byte 0x9D71659D
	.4byte 0xC4689E7C
	.4byte 0x6E9FD875
	.4byte 0xE1577A90
	.4byte 0xCF7BE2A1
	.4byte 0x7C90D07E
	.4byte 0x8F4A7FE3
	.4byte 0xA186E567
	.4byte 0x889FA589
	.4byte 0xE8B58F93
	.4byte 0x519095D5
	.4byte 0x91947A93
	.4byte 0x9374968D
	.4byte 0x7E97FBF0
	.4byte 0x988A7A9A
	.4byte 0xE9829BE9
	.4byte 0xB1FF828D
	.4byte 0x04849030
	.4byte 0x82AC4E8C
	.4byte 0xC14F92E1
	.4byte 0x51936554
	.4byte 0x99E6569A
	.4byte 0x78579AAA
	.4byte 0x599AF55C
	.4byte 0x9B9D5D9B
	.4byte 0xC85E9BEB
	.4byte 0x5F9C5D61
	.4byte 0x9054629D
	.4byte 0x48649D97
	.4byte 0x65FACD67
	.4byte 0x979B689E
	.4byte 0x7E6B9256
	.4byte 0x6C94C46E
	.4byte 0x9FDC7190
	.4byte 0xF773E0D0
	.4byte 0x78FB797A
	.4byte 0x896E7DE3
	.4byte 0x4D7FE3A2
	.4byte 0x81907484
	.4byte 0x97A8858B
	.4byte 0xBC868CD5
	.4byte 0x87E5998B
	.4byte 0xE6998CE6
	.4byte 0xB18FE77C
	.4byte 0x9089DF91
	.4byte 0x929192FB
	.4byte 0xC7988A7B
	.4byte 0x9AFBFB9B
	.4byte 0xE9B29FE6
	.4byte 0xD8FF828E
	.4byte 0x04849130
	.4byte 0x82AD4E96
	.4byte 0x524F8F5A
	.4byte 0x5095CE52
	.4byte 0x998C5596
	.4byte 0xE2579AAD
	.4byte 0x5991745C
	.4byte 0x9BA0639D
	.4byte 0x73659571
	.4byte 0x669DE567
	.4byte 0x88C773E0
	.4byte 0xD17588D8
	.4byte 0x7A89B87B
	.4byte 0x94B37CE2
	.4byte 0xD77DE351
	.4byte 0x8389608B
	.4byte 0xE69890E7
	.4byte 0x9F96E89A
	.4byte 0x97FBF198
	.4byte 0xE8F89BE9
	.4byte 0xB09FE8EB
	.4byte 0xFF828F30
	.4byte 0x82AE4F8D
	.4byte 0xB25098F2
	.4byte 0x518E9956
	.4byte 0x9A79578D
	.4byte 0xBF599AF4
	.4byte 0x5B8E715C
	.4byte 0x9B9F5D97
	.4byte 0x92608BB0
	.4byte 0x639D6F67
	.4byte 0x8DDE688B
	.4byte 0xCB6B9F5E
	.4byte 0x6C8EAC79
	.4byte 0x97537A88
	.4byte 0xAA7BE29E
	.4byte 0x7CE2D97D
	.4byte 0x8C8B7FE3
	.4byte 0xA3819585
	.4byte 0x83E4A686
	.4byte 0x8B738A8D
	.4byte 0xBC8CE6B2
	.4byte 0x8EE74390
	.4byte 0xE7A092E7
	.4byte 0xEF968CC0
	.4byte 0x99E95D9D
	.4byte 0xEA44FF82
	.4byte 0x90048476
	.4byte 0x3082AF33
	.4byte 0x87674F97
	.4byte 0x435394DA
	.4byte 0x5493DB57
	.4byte 0x8D425891
	.4byte 0x59598C5F
	.4byte 0x5B9B725C
	.4byte 0x8BFB5F9C
	.4byte 0x5F658B7E
	.4byte 0x6791BA68
	.4byte 0x8C4B70E0
	.4byte 0x727594A8
	.4byte 0x7B927D7F
	.4byte 0xE3A481E4
	.4byte 0x448A91C0
	.4byte 0x90E7A192
	.4byte 0xFBC9948A
	.4byte 0xD397FBF2
	.4byte 0x99E95F9B
	.4byte 0xE9B39DEA
	.4byte 0x43FF8291
	.4byte 0x2281E030
	.4byte 0x82B05199
	.4byte 0x5A5391B2
	.4byte 0x589ACB5D
	.4byte 0x9BC7608D
	.4byte 0x50668E4E
	.4byte 0x68FAE372
	.4byte 0x92AB7696
	.4byte 0xFC7B939B
	.4byte 0x7EFB8F80
	.4byte 0xE3D8838D
	.4byte 0x7288E5C8
	.4byte 0x8AE66790
	.4byte 0xE7A2918E
	.4byte 0xF094E867
	.4byte 0x9790C299
	.4byte 0xE9609C96
	.4byte 0x909FEA8F
	.4byte 0xFF829230
	.4byte 0x82B14F91
	.4byte 0xCC5391EC
	.4byte 0x558C5B59
	.4byte 0xFAA05C9B
	.4byte 0x9E5DFAB0
	.4byte 0x5F939661
	.4byte 0x9CD66291
	.4byte 0xC5678EDB
	.4byte 0x688ABA69
	.4byte 0x95966B8A
	.4byte 0xBD79E250
	.4byte 0x81E44385
	.4byte 0xFB9A87E5
	.4byte 0x9F888F70
	.4byte 0x8BFBAB90
	.4byte 0x93B99496
	.4byte 0xF8FF8293
	.4byte 0x3082B251
	.4byte 0x995C5299
	.4byte 0x91538BA6
	.4byte 0x58938359
	.4byte 0x967A5B8D
	.4byte 0x455E9BED
	.4byte 0x688B6A69
	.4byte 0x9EB66B9F
	.4byte 0x606F8C89
	.4byte 0x7594C87B
	.4byte 0x939A7CE2
	.4byte 0xD67E9044
	.4byte 0x7FE3A681
	.4byte 0x8D6F86E5
	.4byte 0x698A8FD9
	.4byte 0x90924291
	.4byte 0x908C9392
	.4byte 0xD5988AE7
	.4byte 0x9B96829F
	.4byte 0xEA90FF82
	.4byte 0x943082B3
	.4byte 0x4EE5684F
	.4byte 0x89BD5098
	.4byte 0xF1599AF3
	.4byte 0x5B9B735C
	.4byte 0x93575E96
	.4byte 0x8B608F9A
	.4byte 0x6195E762
	.4byte 0x95A56395
	.4byte 0xDF659DC3
	.4byte 0x6991C86C
	.4byte 0x9F8871E0
	.4byte 0x8674E0EA
	.4byte 0x79E24F7E
	.4byte 0x91557FE3
	.4byte 0xA5819872
	.4byte 0x85E54386
	.4byte 0x997C8790
	.4byte 0x498A955D
	.4byte 0x8CE6B38E
	.4byte 0xE74A9088
	.4byte 0xE197FBF3
	.4byte 0x988CB099
	.4byte 0xE9629AE9
	.4byte 0x81FF8295
	.4byte 0x3082B44E
	.4byte 0x98A84FFA
	.4byte 0x6E5098F5
	.4byte 0x52965555
	.4byte 0x9A565BFA
	.4byte 0xA65F9C60
	.4byte 0x659DC267
	.4byte 0x8FF16E8C
	.4byte 0xCE71E08B
	.4byte 0x7695C879
	.4byte 0x91637B8D
	.4byte 0xF47CE2DD
	.4byte 0x7DE34C7E
	.4byte 0xE3848090
	.4byte 0xB98989A6
	.4byte 0x8BE69B90
	.4byte 0xE7A691E7
	.4byte 0xC393E84B
	.4byte 0x9796F5FF
	.4byte 0x82963082
	.4byte 0xB5338768
	.4byte 0x4E8FE64F
	.4byte 0x98C75393
	.4byte 0xEC559A57
	.4byte 0x58936859
	.4byte 0x93855B8E
	.4byte 0x9A5E9BEC
	.4byte 0x5F9C6163
	.4byte 0x92BB6594
	.4byte 0x7366FAD6
	.4byte 0x6C8ABE73
	.4byte 0xE0D379E2
	.4byte 0x4C7AE26E
	.4byte 0x84929885
	.4byte 0x959987E5
	.4byte 0x9B888A58
	.4byte 0x8FE77D92
	.4byte 0xE7E793FB
	.4byte 0xE098FBF4
	.4byte 0x998BC09A
	.4byte 0xE9849C97
	.4byte 0xD8FF8297
	.4byte 0x3082B64E
	.4byte 0x98A95392
	.4byte 0x50589384
	.4byte 0x599AF75B
	.4byte 0x91B6619C
	.4byte 0xCC6291EF
	.4byte 0x64934565
	.4byte 0x9DC56A8B
	.4byte 0x6B6E8FC3
	.4byte 0x6FE04E70
	.4byte 0x93E572E0
	.4byte 0xAF76E196
	.4byte 0x7CE2DA7F
	.4byte 0xE3A780E3
	.4byte 0xD982E47A
	.4byte 0x83919185
	.4byte 0xE4FB8B8E
	.4byte 0xAF90E7A7
	.4byte 0x91E7C498
	.4byte 0x8AE89BE9
	.4byte 0xB4FF8298
	.4byte 0x3082B74E
	.4byte 0x89B34F97
	.4byte 0x5D57FA96
	.4byte 0x5894B75F
	.4byte 0x9C62609C
	.4byte 0x99619CCD
	.4byte 0x658BB366
	.4byte 0xFAD7679E
	.4byte 0x5A689E82
	.4byte 0x699EBC6A
	.4byte 0x9EF26B9F
	.4byte 0x5F6D9FB4
	.4byte 0x71898C72
	.4byte 0x89E574E0
	.4byte 0xED7597AF
	.4byte 0x7EE38682
	.4byte 0xE47985FB
	.4byte 0x9B87E59E
	.4byte 0x88E5C98E
	.4byte 0xE74590EA
	.4byte 0xA192FBC8
	.4byte 0x9790C39D
	.4byte 0xEA45FF82
	.4byte 0x993082B8
	.4byte 0x4F98C350
	.4byte 0x98F45193
	.4byte 0x7D53948E
	.4byte 0x5892CB59
	.4byte 0x9AF65A8D
	.4byte 0xA55B9B74
	.4byte 0x609C8B61
	.4byte 0x9CCE6991
	.4byte 0x5E6C8998
	.4byte 0x6D9FB274
	.4byte 0x8CE875E1
	.4byte 0x5C77E1C8
	.4byte 0x79E24E7E
	.4byte 0xE38780E3
	.4byte 0xDA82E47C
	.4byte 0x85E4D486
	.4byte 0x8B958BE6
	.4byte 0x9D8C93D8
	.4byte 0x92E7F494
	.4byte 0xE8739A8B
	.4byte 0xC19B8B9B
	.4byte 0x9CE9E3FF
	.4byte 0x829A3082
	.4byte 0xB94F98C5
	.4byte 0x528D8456
	.4byte 0x8A9A59FA
	.4byte 0xA15B9B75
	.4byte 0x629D4B6B
	.4byte 0x9F616E92
	.4byte 0x586FE049
	.4byte 0x728B8D74
	.4byte 0x896C75E1
	.4byte 0x5A77E1CB
	.4byte 0x7DE35584
	.4byte 0x8A8B8889
	.4byte 0x718AE666
	.4byte 0x8BE69C92
	.4byte 0x89949392
	.4byte 0x6294E869
	.4byte 0x9695C398
	.4byte 0x935E9AE9
	.4byte 0x83FF816F
	.4byte 0x3082BA4F
	.4byte 0x8DEC5092
	.4byte 0xE2518A95
	.4byte 0x53966D55
	.4byte 0x9A545B8E
	.4byte 0x795D9BBD
	.4byte 0x5F9C5363
	.4byte 0x917B6793
	.4byte 0x6D688DF7
	.4byte 0x699EB36C
	.4byte 0xFAF66D95
	.4byte 0x6C6EFB47
	.4byte 0x6F90F671
	.4byte 0xFB5574E0
	.4byte 0xEF75927B
	.4byte 0x76E1957D
	.4byte 0xFB8B8697
	.4byte 0xB88B9588
	.4byte 0x8FE77E90
	.4byte 0x91BB93E8
	.4byte 0x4796E89D
	.4byte 0x97E8CE9D
	.4byte 0x894CFF81
	.4byte 0x623082BB
	.4byte 0x4E8BE34F
	.4byte 0x98C6559A
	.4byte 0x5A59FAA2
	.4byte 0x5B8D465F
	.4byte 0x9C5260FA
	.4byte 0xBC619CD5
	.4byte 0x659DC766
	.4byte 0x9DEA6896
	.4byte 0x91699EC0
	.4byte 0x6C93F072
	.4byte 0x96C47590
	.4byte 0xA4788FC9
	.4byte 0x798F6A7B
	.4byte 0xE2B67EE3
	.4byte 0x8382E47B
	.4byte 0x888FD596
	.4byte 0xE89F9DEA
	.4byte 0x40FF8170
	.4byte 0x3082BC4E
	.4byte 0x8CEE4F9B
	.4byte 0x43529990
	.4byte 0x5399C458
	.4byte 0x8DC75C91
	.4byte 0xAE629D49
	.4byte 0x659DC666
	.4byte 0x9DE9679E
	.4byte 0x58699EBF
	.4byte 0x6C9F8774
	.4byte 0x90907990
	.4byte 0x5F7D8D69
	.4byte 0x7EE38580
	.4byte 0x95B7868B
	.4byte 0xF188E5CA
	.4byte 0x89E5FC8A
	.4byte 0x8E8C90E7
	.4byte 0xA892E7E6
	.4byte 0x94E86C96
	.4byte 0xE89E9794
	.4byte 0xF19897DE
	.4byte 0x9DEA41FF
	.4byte 0x81603082
	.4byte 0xBD4E96E7
	.4byte 0x5499EA5B
	.4byte 0x96D05E9B
	.4byte 0xEE609C8F
	.4byte 0x619CD466
	.4byte 0x9DEE6791
	.4byte 0xA9688E56
	.4byte 0x6A8B406B
	.4byte 0x9F626C8D
	.4byte 0x5D6E9FD2
	.4byte 0x6F8A8372
	.4byte 0x96B474E0
	.4byte 0xEC79E24D
	.4byte 0x7CE2DB7F
	.4byte 0xE3A880E3
	.4byte 0xDB81E454
	.4byte 0x82E47D86
	.4byte 0xE56A87E5
	.4byte 0x96898BDD
	.4byte 0x8BE69F8E
	.4byte 0x90D68F8D
	.4byte 0x8C96E8A0
	.4byte 0x9AE9859F
	.4byte 0xEA922187
	.4byte 0x54228182
	.4byte 0x24874030
	.4byte 0x82BE5390
	.4byte 0xE8599AF9
	.4byte 0x5C936A60
	.4byte 0x9C7E629D
	.4byte 0x4C64FACA
	.4byte 0x679E5969
	.4byte 0x93ED6C92
	.4byte 0x727497DA
	.4byte 0x7594A979
	.4byte 0xE24B7CE2
	.4byte 0xC47FE3A9
	.4byte 0x87E59589
	.4byte 0xE5FB8A89
	.4byte 0x728EE747
	.4byte 0x90899393
	.4byte 0xE84894E8
	.4byte 0x6A97E8CF
	.4byte 0x9CE9E49D
	.4byte 0x8D949FEA
	.4byte 0x93218755
	.4byte 0x2281DF24
	.4byte 0x87413082
	.4byte 0xBF579AB1
	.4byte 0x5C8EC65E
	.4byte 0x94A65F9C
	.4byte 0x63678FF0
	.4byte 0x699EBE6A
	.4byte 0x93C96B9F
	.4byte 0x637289B2
	.4byte 0x76E19777
	.4byte 0x90877AE2
	.4byte 0x707D978D
	.4byte 0x80918F84
	.4byte 0x9592888D
	.4byte 0x748C8FDB
	.4byte 0x8F8C4490
	.4byte 0x916B97EA
	.4byte 0x729D96B7
	.4byte 0x9FEA9421
	.4byte 0x87562487
	.4byte 0x423082C0
	.4byte 0x4E9BA451
	.4byte 0x995D589A
	.4byte 0xC7599AF8
	.4byte 0x5A9B585E
	.4byte 0x9BEF5F8C
	.4byte 0x606089F8
	.4byte 0x61969D65
	.4byte 0x8AB8669D
	.4byte 0xEF6796DB
	.4byte 0x6993E86A
	.4byte 0x9EF16B8E
	.4byte 0x7E6C9F89
	.4byte 0x71E08972
	.4byte 0x985374FB
	.4byte 0x6B75954C
	.4byte 0x76E19879
	.4byte 0x94497AE2
	.4byte 0x717D88BA
	.4byte 0x80E3DC82
	.4byte 0xE48083FB
	.4byte 0x9484E4E2
	.4byte 0x88E5CB8A
	.4byte 0xE66D8CE6
	.4byte 0xB48FE780
	.4byte 0x91907C92
	.4byte 0x94AB94E8
	.4byte 0x6B968940
	.4byte 0x9796CA9A
	.4byte 0xE9869F97
	.4byte 0xEE218757
	.4byte 0x24874330
	.4byte 0x82C1528C
	.4byte 0x95559A51
	.4byte 0x59FAA35B
	.4byte 0x8B475E95
	.4byte 0xBC609C93
	.4byte 0x618AB562
	.4byte 0x9D4A658E
	.4byte 0x55679E5B
	.4byte 0x689E836B
	.4byte 0x90B36D9F
	.4byte 0xAF70E073
	.4byte 0x738F6274
	.4byte 0xE0F27793
	.4byte 0xC27A8FF5
	.4byte 0x7DE35284
	.4byte 0x939F85E4
	.4byte 0xFA87E5A0
	.4byte 0x8888DF8A
	.4byte 0x8C778EE7
	.4byte 0x498FE781
	.4byte 0x908CAD91
	.4byte 0xE7C59690
	.4byte 0x779FEA91
	.4byte 0x21875824
	.4byte 0x87443082
	.4byte 0xC251FA80
	.4byte 0x528DDC56
	.4byte 0x9A81578D
	.4byte 0xA35B8CC7
	.4byte 0x5C91775E
	.4byte 0x9BF0609C
	.4byte 0x95669DEB
	.4byte 0x679E5C6B
	.4byte 0x8D9F6D9F
	.4byte 0xB16F8F81
	.4byte 0x71948174
	.4byte 0xEAA275E1
	.4byte 0x5E78FB7A
	.4byte 0x7CE2DC82
	.4byte 0xE47E89E6
	.4byte 0x418D90D4
	.4byte 0x8EE7468F
	.4byte 0xE78292E7
	.4byte 0xEA968F9C
	.4byte 0x97E8D09A
	.4byte 0xE9889DEA
	.4byte 0x42218759
	.4byte 0x24874530
	.4byte 0x82C3508C
	.4byte 0x925193FC
	.4byte 0x52948D57
	.4byte 0xFA975989
	.4byte 0x9C5B9B76
	.4byte 0x5C979A60
	.4byte 0x9270619C
	.4byte 0xD266FAD5
	.4byte 0x67978871
	.4byte 0xE0857597
	.4byte 0xAA77E1CC
	.4byte 0x798FCB7B
	.4byte 0xE2A67CE2
	.4byte 0xDE81E448
	.4byte 0x90977991
	.4byte 0xE7C6968A
	.4byte 0xD798FBF5
	.4byte 0x9AE98721
	.4byte 0x875A2281
	.4byte 0x85248746
	.4byte 0x3082C453
	.4byte 0x8C545792
	.4byte 0x525A9577
	.4byte 0x5B8A775F
	.4byte 0x95466593
	.4byte 0xD6668A41
	.4byte 0x67FAE16A
	.4byte 0x9EF36B95
	.4byte 0x906D8959
	.4byte 0x6FE05271
	.4byte 0xE088758C
	.4byte 0x6C779672
	.4byte 0x7D8B8B7E
	.4byte 0xE37981E4
	.4byte 0x49828ACD
	.4byte 0x8488AF87
	.4byte 0x89DA89E6
	.4byte 0x408A8E8E
	.4byte 0x8B8C788D
	.4byte 0x8ECD928F
	.4byte 0xDE96E8A1
	.4byte 0x97E8D19F
	.4byte 0xEA952187
	.4byte 0x5B228186
	.4byte 0x24874730
	.4byte 0x82C5599A
	.4byte 0xFA5FFAB9
	.4byte 0x618C6463
	.4byte 0x95F9649D
	.4byte 0x94669DEC
	.4byte 0x68954F6E
	.4byte 0x974E718F
	.4byte 0xC6729671
	.4byte 0x75E15F76
	.4byte 0xE19C7BE2
	.4byte 0xA87EE382
	.4byte 0x7FE3AC86
	.4byte 0xE56B8DE6
	.4byte 0xDD90FBB5
	.4byte 0x92FBCB98
	.4byte 0x8CDA9CE9
	.4byte 0xE59FEA96
	.4byte 0x21875C24
	.4byte 0x87483082
	.4byte 0xC6519153
	.4byte 0x548EFC56
	.4byte 0x8AED598F
	.4byte 0xA7608DA6
	.4byte 0x618A5362
	.4byte 0x9D4D638E
	.4byte 0xCC669DED
	.4byte 0x69FAE96C
	.4byte 0x9F9173E0
	.4byte 0xD576E199
	.4byte 0x77E1C979
	.4byte 0x955B7DE3
	.4byte 0x4F7FE3AA
	.4byte 0x80E3DD82
	.4byte 0xE4818598
	.4byte 0x6E87E59C
	.4byte 0x88955C90
	.4byte 0xE7A997E8
	.4byte 0xD221875D
	.4byte 0x24874930
	.4byte 0x82C74F98
	.4byte 0xCE51995F
	.4byte 0x52999453
	.4byte 0x99C5579A
	.4byte 0xAE588996
	.4byte 0x599AFC5B
	.4byte 0x9B775D90
	.4byte 0x935F8DCA
	.4byte 0x6089B663
	.4byte 0x9D806496
	.4byte 0x806694D3
	.4byte 0x6B95E06D
	.4byte 0x8D5F7194
	.4byte 0xCF7295A8
	.4byte 0x74E0F075
	.4byte 0xE15D76E1
	.4byte 0x9A7AE272
	.4byte 0x7EE38A7F
	.4byte 0xE3AB84E4
	.4byte 0xDB8593A0
	.4byte 0x8A8E8D90
	.4byte 0x934B91E7
	.4byte 0xC7978A76
	.4byte 0x9AE98922
	.4byte 0x81E12487
	.4byte 0x4A2681F4
	.4byte 0x3082C851
	.4byte 0x99605299
	.4byte 0x92548EF4
	.4byte 0x569A8457
	.4byte 0x92D85992
	.4byte 0x445A9B59
	.4byte 0x5F955660
	.4byte 0x9C8D679E
	.4byte 0x61699EC2
	.4byte 0x6B98636C
	.4byte 0x9F8A6D98
	.4byte 0x5173E0D4
	.4byte 0x74E0F375
	.4byte 0x94D476E1
	.4byte 0x9B7EE389
	.4byte 0x7F8DDF82
	.4byte 0xE4828595
	.4byte 0x9387E5A1
	.4byte 0x89E6438C
	.4byte 0x8D8B9197
	.4byte 0x8F94E86D
	.4byte 0x9694869A
	.4byte 0xE98B9FEA
	.4byte 0x982281E2
	.4byte 0x24874B30
	.4byte 0x82C95194
	.4byte 0xAA569A80
	.4byte 0x5893555B
	.4byte 0x91B75F92
	.4byte 0xA4609C98
	.4byte 0x619CCF63
	.4byte 0x9D7E699E
	.4byte 0xB56AFAEE
	.4byte 0x6E9FD570
	.4byte 0x89CE75E1
	.4byte 0x6077E1CA
	.4byte 0x7897B07A
	.4byte 0x8A6E7F8C
	.4byte 0x72818EEE
	.4byte 0x82E48384
	.4byte 0xE4D785FB
	.4byte 0x9C86928E
	.4byte 0x88E5CC8A
	.4byte 0x986C8BE6
	.4byte 0x9E8C98AC
	.4byte 0x8D8A7197
	.4byte 0xE8D498E8
	.4byte 0xFA9AE98A
	.4byte 0x9DFC4824
	.4byte 0x874C3082
	.4byte 0xCA5098F6
	.4byte 0x518CF656
	.4byte 0x9A83599A
	.4byte 0xFB5A9B54
	.4byte 0x5C9BA25D
	.4byte 0x9BCA5F95
	.4byte 0x6A609C97
	.4byte 0x658C686D
	.4byte 0x8A5C71E0
	.4byte 0x8C76E19D
	.4byte 0x788D647B
	.4byte 0xE2AB7CE2
	.4byte 0xDF849192
	.4byte 0x8AE66C8B
	.4byte 0xE6A08CE6
	.4byte 0xB5918F56
	.4byte 0x938C4C96
	.4byte 0xE8A39D96
	.4byte 0x519FEA97
	.4byte 0x24874D26
	.4byte 0x81F33082
	.4byte 0xCB51985A
	.4byte 0x5DFAB35F
	.4byte 0x9C64608B
	.4byte 0xB1678D59
	.4byte 0x698BC66F
	.4byte 0xE04B75E1
	.4byte 0x61798DD5
	.4byte 0x7E969A84
	.4byte 0xE4D185E5
	.4byte 0x4A89E642
	.4byte 0x8AE66B8D
	.4byte 0xE6DE9091
	.4byte 0x98979078
	.4byte 0x24874E30
	.4byte 0x82CC5199
	.4byte 0x615399C6
	.4byte 0x5995B15C
	.4byte 0x9BA36197
	.4byte 0xB66295AF
	.4byte 0x63909866
	.4byte 0x9581699E
	.4byte 0xB86D9582
	.4byte 0x6E9FCE6F
	.4byte 0x92AA718E
	.4byte 0xCF7BE2AC
	.4byte 0x7DE3507F
	.4byte 0x927581E4
	.4byte 0x47828DAF
	.4byte 0x84E4D987
	.4byte 0xE59D8A91
	.4byte 0x46908ED5
	.4byte 0x93E84A24
	.4byte 0x874F2681
	.4byte 0xF23082CD
	.4byte 0x4F98D152
	.4byte 0x959B5389
	.4byte 0x4B5C93D4
	.4byte 0x5D8DB560
	.4byte 0x91A7619C
	.4byte 0xD1649D95
	.4byte 0x668C6967
	.4byte 0x9474698F
	.4byte 0x7C6B8E95
	.4byte 0x6CFAF86D
	.4byte 0xFAFC6E93
	.4byte 0x926FE048
	.4byte 0x70939474
	.4byte 0xE0E575FB
	.4byte 0x6F788CA5
	.4byte 0x8097FC82
	.4byte 0x97C784E4
	.4byte 0xDE89E644
	.4byte 0x8BE6A190
	.4byte 0xE7AA98E8
	.4byte 0xFB9B9844
	.4byte 0x9DEA4A21
	.4byte 0xFA402487
	.4byte 0x503082CE
	.4byte 0x4F98CF50
	.4byte 0xFA79528F
	.4byte 0xE85388F3
	.4byte 0x5499ED58
	.4byte 0x9AC95B9B
	.4byte 0x785F8FB2
	.4byte 0x608A8661
	.4byte 0x88D46590
	.4byte 0x94669DF0
	.4byte 0x679E5E6C
	.4byte 0x91BF6F92
	.4byte 0xD7708A44
	.4byte 0x73E0D674
	.4byte 0xE0F17588
	.4byte 0xD976E19E
	.4byte 0x7AE2747B
	.4byte 0xE2A97E8C
	.4byte 0x4A7F94B1
	.4byte 0x80E3E081
	.4byte 0x8D988890
	.4byte 0x8A8A8B6C
	.4byte 0x8B8B638D
	.4byte 0x919693FB
	.4byte 0xDF94E86F
	.4byte 0x96894198
	.4byte 0xE8FC9DFC
	.4byte 0x4721FA41
	.4byte 0x24875130
	.4byte 0x82CF4E97
	.4byte 0x90518BA4
	.4byte 0x52999B53
	.4byte 0x8AEB5499
	.4byte 0xEB5B9BA1
	.4byte 0x5C8E525F
	.4byte 0x8965619C
	.4byte 0xD36288B5
	.4byte 0x67938C7B
	.4byte 0xE2AA7D93
	.4byte 0x9D81E446
	.4byte 0x82E48584
	.4byte 0x944B86E5
	.4byte 0x6C8A9862
	.4byte 0x8BE3BF8D
	.4byte 0xE6DF928D
	.4byte 0x7A97E8D5
	.4byte 0x98E94021
	.4byte 0xFA422487
	.4byte 0x523082D0
	.4byte 0x508EC352
	.4byte 0x8A8453FA
	.4byte 0x8C589AC5
	.4byte 0x5E8AB163
	.4byte 0x8C9E659D
	.4byte 0xC8679DDC
	.4byte 0x6A9EED6C
	.4byte 0x8B826E9F
	.4byte 0xD17290B5
	.4byte 0x738A6C76
	.4byte 0xE19F7894
	.4byte 0xA17DE34E
	.4byte 0x7F8F9080
	.4byte 0xE3DF8290
	.4byte 0x4688E5D3
	.4byte 0x898F508A
	.4byte 0x8A598B8F
	.4byte 0xF78EE74C
	.4byte 0x90E7AD91
	.4byte 0xE7C996E8
	.4byte 0xA29BFC42
	.4byte 0x9DEA469F
	.4byte 0xEA9A21FA
	.4byte 0x43248753
	.4byte 0x3082D14E
	.4byte 0x93FB4F89
	.4byte 0xC0529995
	.4byte 0x5391A654
	.4byte 0x96A1598F
	.4byte 0x975B9B79
	.4byte 0x5D9BCB5E
	.4byte 0x95BD5F9C
	.4byte 0x65619CCA
	.4byte 0x66FAD967
	.4byte 0x9DE06994
	.4byte 0x806AFAF0
	.4byte 0x6B8DCE6C
	.4byte 0x9F92748D
	.4byte 0xBA758FF4
	.4byte 0x7C95C47D
	.4byte 0xE34B80E3
	.4byte 0xDE83E4B8
	.4byte 0x8A8FDA8D
	.4byte 0xE6E091E7
	.4byte 0xC89692C2
	.4byte 0x98E94221
	.4byte 0xFA443082
	.4byte 0xD25091A4
	.4byte 0x52999353
	.4byte 0x8B705695
	.4byte 0xAC59937A
	.4byte 0x5E944E61
	.4byte 0x9CD06590
	.4byte 0xAE6690B0
	.4byte 0x689E8F69
	.4byte 0x9EBA6B97
	.4byte 0xF06D9781
	.4byte 0x6FE06B72
	.4byte 0xE0B075E1
	.4byte 0x6678E1EB
	.4byte 0x7A8C8A7B
	.4byte 0xE2A78092
	.4byte 0xAE81E44A
	.4byte 0x87E59A89
	.4byte 0xE6458BE6
	.4byte 0xA28D958B
	.4byte 0x8E8F5297
	.4byte 0x8C4398E9
	.4byte 0x419BE9B5
	.4byte 0x21FA4530
	.4byte 0x82D34F95
	.4byte 0xB95092E3
	.4byte 0x5195BA52
	.4byte 0x916E5397
	.4byte 0x915499E8
	.4byte 0x58906F5B
	.4byte 0x9B7A5E9B
	.4byte 0xF2608C62
	.4byte 0x619CD765
	.4byte 0x9347678B
	.4byte 0x6E698BC9
	.4byte 0x73E0D87B
	.4byte 0xE2A57CE2
	.4byte 0xE07D8A47
	.4byte 0x7F946C83
	.4byte 0xE4B98488
	.4byte 0xA888E5D0
	.4byte 0x908F8591
	.4byte 0x8D79938C
	.4byte 0xAE94E870
	.4byte 0x9697CB9B
	.4byte 0xFC419EEA
	.4byte 0x6221FA46
	.4byte 0x3082D44F
	.4byte 0x98C9508B
	.4byte 0xF45191B4
	.4byte 0x5499F15C
	.4byte 0x9BA55D9B
	.4byte 0xCC5E9BF3
	.4byte 0x618C6362
	.4byte 0x957D639D
	.4byte 0x78649D96
	.4byte 0x668FBB68
	.4byte 0x89B16E9F
	.4byte 0xD774E0F4
	.4byte 0x75E16376
	.4byte 0xE1A07A8B
	.4byte 0x867D90E2
	.4byte 0x80E3E182
	.4byte 0x89908792
	.4byte 0xB18DFBB0
	.4byte 0x8EE74B90
	.4byte 0xE7AB9693
	.4byte 0xA99CE9E6
	.4byte 0x9FEA9B21
	.4byte 0xFA473082
	.4byte 0xD5518BEF
	.4byte 0x5399C954
	.4byte 0x99EC5F9C
	.4byte 0x66609C8E
	.4byte 0x619CCB63
	.4byte 0x8FB76595
	.4byte 0x7E679466
	.4byte 0x689E8469
	.4byte 0x9EB26D8A
	.4byte 0x4373FB5F
	.4byte 0x7593EB79
	.4byte 0x93987F94
	.4byte 0xEB809045
	.4byte 0x82E48683
	.4byte 0x89D784E4
	.4byte 0xD685E550
	.4byte 0x88928F89
	.4byte 0xE6468B8C
	.4byte 0xEC8D8B4E
	.4byte 0x90914A91
	.4byte 0x8D9392FB
	.4byte 0xCD94E871
	.4byte 0x9592B796
	.4byte 0xE89C9FEA
	.4byte 0x9921FA48
	.4byte 0x3082D650
	.4byte 0x98F75193
	.4byte 0x545389B5
	.4byte 0x5693D359
	.4byte 0x9B405B9B
	.4byte 0x7B5E8D4B
	.4byte 0x6496CC65
	.4byte 0x9DC9699E
	.4byte 0xB46A9EEF
	.4byte 0x6B9F646D
	.4byte 0x905A6FE0
	.4byte 0x45708B84
	.4byte 0x73E0D775
	.4byte 0xE16276E1
	.4byte 0xA17FE3AD
	.4byte 0x8192B082
	.4byte 0xE48787E5
	.4byte 0x978CE6B6
	.4byte 0x90914991
	.4byte 0x8E5F92FB
	.4byte 0xCE9697A4
	.4byte 0x9CE9E79E
	.4byte 0x8CB221FA
	.4byte 0x493082D7
	.4byte 0x589ACD5C
	.4byte 0x9BA65E8A
	.4byte 0xB25F96F0
	.4byte 0x6294E169
	.4byte 0x9EB16B9F
	.4byte 0x656D9FB3
	.4byte 0x7293C177
	.4byte 0xE1CF7AE2
	.4byte 0x757D8CA6
	.4byte 0x7EE3887F
	.4byte 0x9CEB80E3
	.4byte 0xE28195A0
	.4byte 0x84E4DF86
	.4byte 0x93F88AFB
	.4byte 0xA58C955E
	.4byte 0x97E8D69E
	.4byte 0xEA633082
	.4byte 0xD85694B6
	.4byte 0x5B9B7D5E
	.4byte 0x9BF46393
	.4byte 0xE66490A0
	.4byte 0x6692716C
	.4byte 0x8C886FE0
	.4byte 0x4473E0DA
	.4byte 0x7694AD78
	.4byte 0xFB7B79E2
	.4byte 0x517A8BF3
	.4byte 0x7BE29F81
	.4byte 0x91428495
	.4byte 0x988CE6B7
	.4byte 0x9088E296
	.4byte 0x8CAF97E8
	.4byte 0xDA9DEA4B
	.4byte 0x3082D933
	.4byte 0x877E4F98
	.4byte 0xCD5399C8
	.4byte 0x5499EF55
	.4byte 0x9A605E8C
	.4byte 0xB6639450
	.4byte 0x6B8E8073
	.4byte 0xE0D97693
	.4byte 0x6F7EE38C
	.4byte 0x8389AC86
	.4byte 0x88B83082
	.4byte 0xDA33878F
	.4byte 0x4F8CF151
	.4byte 0x8C93548C
	.4byte 0xC4559A65
	.4byte 0x5E97635F
	.4byte 0x94DE629D
	.4byte 0x4E679E60
	.4byte 0x69984F6F
	.4byte 0xE04D708E
	.4byte 0xDC76E1A2
	.4byte 0x78E1ED7E
	.4byte 0xE38B83E4
	.4byte 0xB68AE66A
	.4byte 0x8CE6BF8E
	.4byte 0xE74D9097
	.4byte 0xC993E849
	.4byte 0x94E87497
	.4byte 0xE8D83082
	.4byte 0xDB33878E
	.4byte 0x508B5552
	.4byte 0x99975496
	.4byte 0xBD598D44
	.4byte 0x5E974869
	.4byte 0x8A796C8B
	.4byte 0x44708DD0
	.4byte 0x7190F872
	.4byte 0x8CA17694
	.4byte 0x927AE276
	.4byte 0x7DE3577E
	.4byte 0xE38F80E3
	.4byte 0xE388E5D1
	.4byte 0x8BE6A390
	.4byte 0xE7AF94E8
	.4byte 0x7296977A
	.4byte 0x9EEA6430
	.4byte 0x82DC3387
	.4byte 0x8D4E8AA3
	.4byte 0x559A6158
	.4byte 0x8F6D5E8A
	.4byte 0xF461977C
	.4byte 0x629D5167
	.4byte 0x8FBC689E
	.4byte 0x95699EB7
	.4byte 0x6AFAF16C
	.4byte 0x9F906E98
	.4byte 0x7072E0B1
	.4byte 0x74E0F576
	.4byte 0x955377E1
	.4byte 0xCE7C96E0
	.4byte 0x80985782
	.4byte 0xE48885E5
	.4byte 0x5188E5CE
	.4byte 0x89E64792
	.4byte 0x9667938F
	.4byte 0xDF94E875
	.4byte 0x3082DD4F
	.4byte 0x8E675299
	.4byte 0x96538BA8
	.4byte 0x579AB25A
	.4byte 0x96B95E9B
	.4byte 0xF65F9C69
	.4byte 0x628FB367
	.4byte 0x94C2689E
	.4byte 0x856A8A80
	.4byte 0x6B9F666E
	.4byte 0x8EBC758B
	.4byte 0x4577E1CD
	.4byte 0x79E2527A
	.4byte 0x90FA7EE3
	.4byte 0x9180E3E4
	.4byte 0x8191DA83
	.4byte 0xFB958794
	.4byte 0x88888BDC
	.4byte 0x8990BC8B
	.4byte 0xFBAC9094
	.4byte 0xF094E877
	.4byte 0x9E8EAD00
	.4byte 0x80003082
	.4byte 0xDE4E8B54
	.4byte 0x5098F851
	.4byte 0x99625499
	.4byte 0xF0559A5C
	.4byte 0x569A865B
	.4byte 0x9B7E5F89
	.4byte 0x9D628B5A
	.4byte 0x639D766A
	.4byte 0x92686B9F
	.4byte 0x676E969E
	.4byte 0x6FE04772
	.4byte 0x8DD276E1
	.4byte 0xA379E268
	.4byte 0x81E44E85
	.4byte 0xE5448BE6
	.4byte 0xA490E7B1
	.4byte 0x928BE295
	.4byte 0x96E53082
	.4byte 0xDF599B41
	.4byte 0x5E92A15F
	.4byte 0x90AA609C
	.4byte 0x9A668BC5
	.4byte 0x6897C069
	.4byte 0x9EC16C9F
	.4byte 0x8E6FE046
	.4byte 0x72E0B378
	.4byte 0x8CE9798B
	.4byte 0xD67A93CB
	.4byte 0x7C8BCC88
	.4byte 0xE5CD8997
	.4byte 0x768DE6E1
	.4byte 0x8EE74E90
	.4byte 0xE7B094E8
	.4byte 0x7697E8D9
	.4byte 0x9EEA6522
	.4byte 0x81BC3082
	.4byte 0xE04E98AA
	.4byte 0x51996353
	.4byte 0x99CA5790
	.4byte 0x82599440
	.4byte 0x5D9BCF5F
	.4byte 0x9C686197
	.4byte 0x4A629D4F
	.4byte 0x659DCA69
	.4byte 0x8A546C9F
	.4byte 0x8B6E9FE1
	.4byte 0x6FE04C72
	.4byte 0xE0B275E1
	.4byte 0x6976FB70
	.4byte 0x7C8C487E
	.4byte 0x8E5B7FE3
	.4byte 0xAE81E44F
	.4byte 0x84E4DA87
	.4byte 0xE5A588E5
	.4byte 0xD48AE66F
	.4byte 0x8CE6B890
	.4byte 0xE7AE91E7
	.4byte 0xCC95E878
	.4byte 0x2281BD30
	.4byte 0x82E14F8A
	.4byte 0xA4528A63
	.4byte 0x559A6658
	.4byte 0x8BAB5994
	.4byte 0xDC5B9B80
	.4byte 0x5E8D4C5F
	.4byte 0x9C67609C
	.4byte 0x9D629D56
	.4byte 0x63917C64
	.4byte 0x8C82659D
	.4byte 0xCB669DF1
	.4byte 0x689E8C6B
	.4byte 0x9F696C97
	.4byte 0x8074979E
	.4byte 0x76E1A47A
	.4byte 0x90DE7CE2
	.4byte 0xE17EE38D
	.4byte 0x7FE3B081
	.4byte 0xE44B89E6
	.4byte 0x488B8E5D
	.4byte 0x90E28492
	.4byte 0x8F659591
	.4byte 0x4D9BE9B7
	.4byte 0x3082E253
	.4byte 0x96EF5499
	.4byte 0xF2559150
	.4byte 0x5996CF5D
	.4byte 0x9BCE5E8F
	.4byte 0xAF5F8C61
	.4byte 0x609C9F62
	.4byte 0x8FB4669D
	.4byte 0xF56A9EFA
	.4byte 0x6B9F686F
	.4byte 0x909F71E0
	.4byte 0x8F738CBA
	.4byte 0x76934979
	.4byte 0x985C7A8D
	.4byte 0xF380E3E5
	.4byte 0x84E4D585
	.4byte 0x94968AE6
	.4byte 0x708EE751
	.4byte 0x908AD297
	.4byte 0x8A933082
	.4byte 0xE34E98AB
	.4byte 0x5098FA51
	.4byte 0x93E0589A
	.4byte 0xCE5B91EE
	.4byte 0x5F91D260
	.4byte 0xFABD679E
	.4byte 0x6668947E
	.4byte 0x6D9FB870
	.4byte 0xFB517991
	.4byte 0x547F9785
	.4byte 0x80E3E783
	.4byte 0xE4AC8AE6
	.4byte 0x6E8CE6BA
	.4byte 0x8D92B48E
	.4byte 0xE7509293
	.4byte 0xBA968BF7
	.4byte 0x97E8D722
	.4byte 0x81BA3082
	.4byte 0xE44E97B9
	.4byte 0x4F98D251
	.4byte 0x897E5499
	.4byte 0xF455FA95
	.4byte 0x569A856B
	.4byte 0x96776CFA
	.4byte 0xF76FE043
	.4byte 0x75E16476
	.4byte 0x8A4678E1
	.4byte 0xEC7B95CD
	.4byte 0x7FE3AF80
	.4byte 0xE3E68995
	.4byte 0xA29697B2
	.4byte 0x97E8DB22
	.4byte 0x81BB3082
	.4byte 0xE5528C80
	.4byte 0x559A6856
	.4byte 0x8A645B89
	.4byte 0x465D9BCD
	.4byte 0x5E94DD5F
	.4byte 0x9C6D619C
	.4byte 0xDA6595B6
	.4byte 0x6689C967
	.4byte 0x94F86DFA
	.4byte 0xFB72E0B4
	.4byte 0x7397A675
	.4byte 0xE165768D
	.4byte 0x637892F4
	.4byte 0x7B89D37F
	.4byte 0xE3B28094
	.4byte 0xA383E4B4
	.4byte 0x85E54E89
	.4byte 0x94658A8C
	.4byte 0xD68EE74F
	.4byte 0x90E78E91
	.4byte 0x8F8695E8
	.4byte 0x799DEA48
	.4byte 0x3082E64E
	.4byte 0x975C4F98
	.4byte 0xCA52999C
	.4byte 0x579AB05B
	.4byte 0x8EE75F9C
	.4byte 0x6B638EF6
	.4byte 0x649D9D65
	.4byte 0x9B7C669D
	.4byte 0xF26C92BE
	.4byte 0x6D8FC16F
	.4byte 0xFB4B71E0
	.4byte 0x8776E1A5
	.4byte 0x7AE2777E
	.4byte 0xE3927FE3
	.4byte 0xB181E44C
	.4byte 0x85E54688
	.4byte 0x8C5589E6
	.4byte 0x4992FA5F
	.4byte 0x968C479E
	.4byte 0xEA663082
	.4byte 0xE74E9188
	.4byte 0x51996652
	.4byte 0x97AB558D
	.4byte 0x41579AB3
	.4byte 0x5B88C060
	.4byte 0x8EBB629D
	.4byte 0x50639D7B
	.4byte 0x6590C466
	.4byte 0x9DF4679E
	.4byte 0x5D6B8F7D
	.4byte 0x70984673
	.4byte 0x8BCA74FB
	.4byte 0x6C75E168
	.4byte 0x7C95B27D
	.4byte 0xE3547EE3
	.4byte 0x938093F7
	.4byte 0x83E4BB8A
	.4byte 0x975F8CE6
	.4byte 0xB990E7B3
	.4byte 0x91E7CB95
	.4byte 0x95C29DEA
	.4byte 0x473082E8
	.4byte 0x4E98AD4F
	.4byte 0xFA70518D
	.4byte 0xFB54FA92
	.4byte 0x559A5E56
	.4byte 0x9A875994
	.4byte 0x445E8FB0
	.4byte 0x5F9C6A60
	.4byte 0xFABE619C
	.4byte 0xDE629463
	.4byte 0x698DE56B
	.4byte 0x8EEA7090
	.4byte 0x86718C46
	.4byte 0x75E16779
	.4byte 0xE2537EFA
	.4byte 0x5C7F9772
	.4byte 0x81E44D83
	.4byte 0xE4B585E5
	.4byte 0x488689E1
	.4byte 0x89E64A8B
	.4byte 0x9DCC8CE6
	.4byte 0xBB8D897A
	.4byte 0x8EE75390
	.4byte 0xE7B295E8
	.4byte 0x7A9691E0
	.4byte 0x3082E94E
	.4byte 0x8E964F97
	.4byte 0xE1548DEE
	.4byte 0x55929D57
	.4byte 0x8C5E5B91
	.4byte 0x765D9388
	.4byte 0x5F97A560
	.4byte 0x9CA5679E
	.4byte 0x636B8E63
	.4byte 0x7389A474
	.4byte 0xE0F67595
	.4byte 0x4476E1A6
	.4byte 0x77E1D17B
	.4byte 0xE2B37C90
	.4byte 0x8880985D
	.4byte 0x8288F084
	.4byte 0x8FD386E5
	.4byte 0x718891DC
	.4byte 0x898CA98E
	.4byte 0xE75291E7
	.4byte 0xCA958A4A
	.4byte 0x96E44097
	.4byte 0xE8DC9EEA
	.4byte 0x673082EA
	.4byte 0x4E93F151
	.4byte 0x99655498
	.4byte 0x615B8AAE
	.4byte 0x5C9BA75D
	.4byte 0x9BB85F8C
	.4byte 0xE36092EE
	.4byte 0x638FB665
	.4byte 0x956B679E
	.4byte 0x626C93D7
	.4byte 0x6D974F6E
	.4byte 0x94AC78E1
	.4byte 0xEF7EE394
	.4byte 0x7FE3B380
	.4byte 0x94A786E5
	.4byte 0x728A8E8F
	.4byte 0x8BE6A58C
	.4byte 0x9665938A
	.4byte 0x999EEA68
	.4byte 0x3082EB4F
	.4byte 0x8E985096
	.4byte 0x54518DC4
	.4byte 0x52999859
	.4byte 0x9B4A5B8E
	.4byte 0xB3609C9B
	.4byte 0x689E946A
	.4byte 0x9EF86B9F
	.4byte 0x6A6C9F8C
	.4byte 0x788A5679
	.4byte 0x89D07BE2
	.4byte 0xB07C96AE
	.4byte 0x82E48987
	.4byte 0x975A88E5
	.4byte 0xDA8A9446
	.4byte 0x8CE6BC8E
	.4byte 0x96F49191
	.4byte 0xE796E8A4
	.4byte 0x9788C69F
	.4byte 0x97B43082
	.4byte 0xEC338772
	.4byte 0x4E98B054
	.4byte 0x99E96191
	.4byte 0x9E639D75
	.4byte 0x658DD666
	.4byte 0x9DF36989
	.4byte 0x7C6A8CE7
	.4byte 0x6D9FB56F
	.4byte 0xE04F7089
	.4byte 0x8A759161
	.4byte 0x76E1A777
	.4byte 0xE1D078E1
	.4byte 0xEA7992F5
	.4byte 0x7EE39A7F
	.4byte 0x94FC83E4
	.4byte 0xB38BE6A6
	.4byte 0x8CE6BD96
	.4byte 0x8A4B9B88
	.4byte 0xBC3082ED
	.4byte 0x3387734F
	.4byte 0x98CB5199
	.4byte 0x675499E7
	.4byte 0x569A8A5B
	.4byte 0x8D475E8F
	.4byte 0x98639D7A
	.4byte 0x689E876E
	.4byte 0x9FED71E0
	.4byte 0x8D759160
	.4byte 0x79959F7B
	.4byte 0xE2B57DE3
	.4byte 0x567E935A
	.4byte 0x818D7089
	.4byte 0x8B4B90E7
	.4byte 0xB495895B
	.4byte 0x96908F97
	.4byte 0xE8DD9BFC
	.4byte 0x439D8C7B
	.4byte 0x2181A930
	.4byte 0x82EE51E3
	.4byte 0xEC5499F3
	.4byte 0x5C8AF25D
	.4byte 0x9BD55F8F
	.4byte 0x996197F7
	.4byte 0x6594E367
	.4byte 0x90CD6A9E
	.4byte 0xF76C9F94
	.4byte 0x6E8CB976
	.4byte 0x8E487CE2
	.4byte 0xE27EE396
	.4byte 0x848F4E85
	.4byte 0xE5528B8F
	.4byte 0x51918CED
	.4byte 0x97E8DE03
	.4byte 0x839F2181
	.4byte 0xAA3082EF
	.4byte 0x4E895D4F
	.4byte 0x98D0508C
	.4byte 0x86519968
	.4byte 0x52999D5C
	.4byte 0x9BA85F9C
	.4byte 0x6C619CDF
	.4byte 0x62977D65
	.4byte 0x94C1668F
	.4byte 0x8B699ED2
	.4byte 0x6FE05075
	.4byte 0x8B5E77E1
	.4byte 0xD27894E8
	.4byte 0x85E5478A
	.4byte 0xE6738EE7
	.4byte 0x55909757
	.4byte 0x92914C95
	.4byte 0x8AD59BE9
	.4byte 0xB89EEA6B
	.4byte 0x0383A021
	.4byte 0x81A83082
	.4byte 0xF04E8CDD
	.4byte 0x4FFA6F51
	.4byte 0x96605299
	.4byte 0x9A5499EE
	.4byte 0x5A947D5F
	.4byte 0x936B609C
	.4byte 0xA3629D52
	.4byte 0x63947264
	.4byte 0x8E546C9F
	.4byte 0x9370E075
	.4byte 0x72E0B57A
	.4byte 0x92827BE2
	.4byte 0xB47C97B1
	.4byte 0x7EE39582
	.4byte 0xE48A88E5
	.4byte 0xD68BE6A7
	.4byte 0x9190C195
	.4byte 0xFBE89B95
	.4byte 0xA99EEA69
	.4byte 0x0383A121
	.4byte 0x81AB3082
	.4byte 0xF1519969
	.4byte 0x53FA8D57
	.4byte 0x9AB45895
	.4byte 0xE6598B57
	.4byte 0x5F8F5D62
	.4byte 0x9D53649D
	.4byte 0x9A6888B2
	.4byte 0x6C8C426D
	.4byte 0x9FB076E1
	.4byte 0xA978894F
	.4byte 0x7A918B7D
	.4byte 0xE3537EE3
	.4byte 0x9780E3E9
	.4byte 0x81E45583
	.4byte 0xE49686E5
	.4byte 0x6D89E64B
	.4byte 0x8A90BE8B
	.4byte 0xE6A88EE7
	.4byte 0x5492E7F2
	.4byte 0x958AD49B
	.4byte 0xE9B69E98
	.4byte 0x5B0383A2
	.4byte 0x3083944E
	.4byte 0x8CDC4FFA
	.4byte 0x7250FA7B
	.4byte 0x52999956
	.4byte 0x9A895C9B
	.4byte 0xA96089F7
	.4byte 0x619CDC62
	.4byte 0x9D57689E
	.4byte 0x89699850
	.4byte 0x71976F75
	.4byte 0xE16A79FB
	.4byte 0x817B9493
	.4byte 0x7EE3987F
	.4byte 0xE3B4848E
	.4byte 0xAA85E54B
	.4byte 0x8CE6BE8E
	.4byte 0xE75693E8
	.4byte 0x4F95E87B
	.4byte 0x968A7503
	.4byte 0x83A34E88
	.4byte 0xE451996A
	.4byte 0x5B93865E
	.4byte 0x92EA6293
	.4byte 0x8A649D99
	.4byte 0x67968D69
	.4byte 0x9ED56B9F
	.4byte 0x6C6D9FB6
	.4byte 0x71E09078
	.4byte 0x8DEA7AE2
	.4byte 0x797B96A5
	.4byte 0x7C949481
	.4byte 0xE451868E
	.4byte 0x5C8A9261
	.4byte 0x92E7EC96
	.4byte 0xE8A69EEA
	.4byte 0x6A9FEA9C
	.4byte 0x0383A44F
	.4byte 0x98D35199
	.4byte 0x6B5399CB
	.4byte 0x5997645E
	.4byte 0x95F7609C
	.4byte 0xA1619CD9
	.4byte 0x629D5463
	.4byte 0x9D746692
	.4byte 0x676B9042
	.4byte 0x6C89AB6D
	.4byte 0xFB406E8F
	.4byte 0x8072E0B6
	.4byte 0x738BE876
	.4byte 0xE1A87AE2
	.4byte 0x7B7EE399
	.4byte 0x808FD183
	.4byte 0xE4B18891
	.4byte 0xB3898E8B
	.4byte 0x8BE6A992
	.4byte 0xE7F1938D
	.4byte 0xBD95E87C
	.4byte 0x998EF19B
	.4byte 0xE9B90383
	.4byte 0xA5518FE7
	.4byte 0x58919D5B
	.4byte 0x8F405E93
	.4byte 0x585F93BE
	.4byte 0x609CA262
	.4byte 0x8D526593
	.4byte 0x6C6688C3
	.4byte 0x6797D168
	.4byte 0x8D5B6A9F
	.4byte 0x406F8AC0
	.4byte 0x7898717A
	.4byte 0xE2787B8E
	.4byte 0x5A7C9165
	.4byte 0x85899288
	.4byte 0xE5D58994
	.4byte 0x609194AE
	.4byte 0x93919996
	.4byte 0xE8A799E9
	.4byte 0x639BE9BA
	.4byte 0x9E97ED03
	.4byte 0x83A64E98
	.4byte 0x6A4F98CC
	.4byte 0x508E5053
	.4byte 0x97D0559A
	.4byte 0x625B8AAF
	.4byte 0x5F9C7061
	.4byte 0xFAC66290
	.4byte 0xDC638C40
	.4byte 0x669DF669
	.4byte 0xFAEB6B9F
	.4byte 0x6B6E9FE3
	.4byte 0x7AE27A7B
	.4byte 0xE2AE7C94
	.4byte 0x53809549
	.4byte 0x89E64C8A
	.4byte 0x97558CE6
	.4byte 0xC09296C1
	.4byte 0x95E87D96
	.4byte 0xE8A5978F
	.4byte 0xE299E964
	.4byte 0x0383A74E
	.4byte 0x98695094
	.4byte 0xF5518ECA
	.4byte 0x559A5B59
	.4byte 0x96AD5B92
	.4byte 0x885F9C6F
	.4byte 0x619CD865
	.4byte 0x97BF66FA
	.4byte 0xDA6C8DB9
	.4byte 0x6D97DC70
	.4byte 0xE07471EA
	.4byte 0xA476E1AA
	.4byte 0x7BE2B77D
	.4byte 0x8C708295
	.4byte 0x878496D6
	.4byte 0x8593E388
	.4byte 0xE5D88BE6
	.4byte 0xAA8DE6E2
	.4byte 0x8EE75795
	.4byte 0xE87E968C
	.4byte 0x84998D81
	.4byte 0x0383A84F
	.4byte 0xFA715098
	.4byte 0xF9538CFA
	.4byte 0x558AAB5A
	.4byte 0x9B5A5B92
	.4byte 0xE85E8D4D
	.4byte 0x609C9E61
	.4byte 0x9CDD6494
	.4byte 0x51679687
	.4byte 0x6C9F8D75
	.4byte 0xE16B76E1
	.4byte 0xAB78E1EE
	.4byte 0x7BE2B27D
	.4byte 0x91B17FE3
	.4byte 0xB780E3EA
	.4byte 0x81958683
	.4byte 0xE4AD898A
	.4byte 0x6F8AE676
	.4byte 0x8BE6AB92
	.4byte 0x92B69392
	.4byte 0xC89DEA4C
	.4byte 0x0383A930
	.4byte 0x814A4E8D
	.4byte 0xB14F8B9F
	.4byte 0x5297CD59
	.4byte 0x9BAA5A95
	.4byte 0x515B88B6
	.4byte 0x609CA062
	.4byte 0x9D65638A
	.4byte 0x7C659DCD
	.4byte 0x689E8B69
	.4byte 0x90596C9F
	.4byte 0x8F6D9393
	.4byte 0x76FB7379
	.4byte 0xFB837C8F
	.4byte 0x6C7DE358
	.4byte 0x7EE39B80
	.4byte 0xE3E885E5
	.4byte 0x4C8F9068
	.4byte 0x92E7F396
	.4byte 0x8DDB0383
	.4byte 0xAA30814B
	.4byte 0x33876F4E
	.4byte 0x889F52FA
	.4byte 0x8554FA91
	.4byte 0x558AEC58
	.4byte 0x92C45B8B
	.4byte 0x585E957B
	.4byte 0x6294B265
	.4byte 0x8ECE6789
	.4byte 0xCA699ED4
	.4byte 0x6A9E776D
	.4byte 0x93C06E97
	.4byte 0xAD76FB71
	.4byte 0x7BE2B17D
	.4byte 0x918E7EE3
	.4byte 0x9C81968C
	.4byte 0x84956685
	.4byte 0xE54F8FE7
	.4byte 0x83918F58
	.4byte 0x92E7F096
	.4byte 0x8FE197E8
	.4byte 0xDF9FEA9D
	.4byte 0x0383AB30
	.4byte 0x81543387
	.4byte 0x704F88CB
	.4byte 0x51FA8155
	.4byte 0x8A85599B
	.4byte 0x425B95F3
	.4byte 0x5D9BD164
	.4byte 0xFACB669D
	.4byte 0xF7678E7D
	.4byte 0x689E8A6E
	.4byte 0x8D6175E1
	.4byte 0x6C79E254
	.4byte 0x7BE2AD7F
	.4byte 0xE3B6808A
	.4byte 0xCC819547
	.4byte 0x828EC58C
	.4byte 0x8A4C96FB
	.4byte 0xEB9EEA6C
	.4byte 0x9FE27303
	.4byte 0x83AC3081
	.4byte 0x55338771
	.4byte 0x4E98B155
	.4byte 0x9A6358FA
	.4byte 0x9D5F9C6E
	.4byte 0x6291F064
	.4byte 0x93B36B9F
	.4byte 0x6D74E0F7
	.4byte 0x76FB7277
	.4byte 0xE1D47BFB
	.4byte 0x887FE3B5
	.4byte 0x838ACE88
	.4byte 0xE5CF8A8C
	.4byte 0xEA8C92E5
	.4byte 0x8F8EAB99
	.4byte 0xFBFA0383
	.4byte 0xAD4E98B2
	.4byte 0x528CF753
	.4byte 0x8CB4559A
	.4byte 0x5F589AD0
	.4byte 0x5B8EC060
	.4byte 0x8CE5639D
	.4byte 0x7C659DCE
	.4byte 0x689E866E
	.4byte 0x9FF0718F
	.4byte 0x6E74FB6D
	.4byte 0x7A8C417B
	.4byte 0xE2AF7C88
	.4byte 0xBE7DE365
	.4byte 0x82E48C83
	.4byte 0xE4AF84E4
	.4byte 0xE587E5A4
	.4byte 0x8FE7849B
	.4byte 0xE9BB9E97
	.4byte 0xD90383AE
	.4byte 0x2581A14E
	.4byte 0x98B34F8B
	.4byte 0xA0518AA5
	.4byte 0x5289C153
	.4byte 0x99CC569A
	.4byte 0x88579AB5
	.4byte 0x5E9BF75F
	.4byte 0x9C716097
	.4byte 0x496397A9
	.4byte 0x66FADB67
	.4byte 0x9867689E
	.4byte 0x91699ED3
	.4byte 0x6A9EF972
	.4byte 0x8B5D77E1
	.4byte 0xD37DFB8D
	.4byte 0x81E45083
	.4byte 0xE4BA8A90
	.4byte 0xBD8C9589
	.4byte 0x95E88096
	.4byte 0x8942978B
	.4byte 0x669BE9BC
	.4byte 0x9FEA9E00
	.4byte 0x21000383
	.4byte 0xAF2581A0
	.4byte 0x30834033
	.4byte 0x87754E96
	.4byte 0x534F89BF
	.4byte 0x5C89AA5F
	.4byte 0x8CE4638D
	.4byte 0xCC6588B4
	.4byte 0x679E656C
	.4byte 0x96766FE0
	.4byte 0x557B8AC7
	.4byte 0x7CE2E77F
	.4byte 0xFB91808C
	.4byte 0xD284E4EE
	.4byte 0x89E64D8A
	.4byte 0xE6728C8D
	.4byte 0xE08EE759
	.4byte 0x00819130
	.4byte 0x83414E98
	.4byte 0xB451996E
	.4byte 0x5499F656
	.4byte 0x9458578D
	.4byte 0x435B8B71
	.4byte 0x5D9BD063
	.4byte 0x92546692
	.4byte 0xA8679095
	.4byte 0x688FBD6A
	.4byte 0x9EFB6C91
	.4byte 0xF26E88EC
	.4byte 0x72E0B774
	.4byte 0xE0E37CE2
	.4byte 0xE57DE361
	.4byte 0x808E8883
	.4byte 0xE4B087E5
	.4byte 0xA388E5D9
	.4byte 0x8C8D7691
	.4byte 0xE7CD958A
	.4byte 0xD6008192
	.4byte 0x0383B030
	.4byte 0x83425297
	.4byte 0xF2578A5F
	.4byte 0x599B455B
	.4byte 0x90E9608A
	.4byte 0xB3639D79
	.4byte 0x6A9EFC6F
	.4byte 0xE05475E1
	.4byte 0x6E78E1F0
	.4byte 0x7DE35B7F
	.4byte 0xE3B881E4
	.4byte 0x5386E56E
	.4byte 0x8AE6778D
	.4byte 0x8EEF8FE7
	.4byte 0x859093DF
	.4byte 0x958A7496
	.4byte 0x97D797E8
	.4byte 0xE20383B1
	.4byte 0x30834332
	.4byte 0x87854E8C
	.4byte 0xF051996C
	.4byte 0x549A4257
	.4byte 0x9AB759FA
	.4byte 0xA45B8EBA
	.4byte 0x6195AE64
	.4byte 0x9350658B
	.4byte 0xD26B9F6E
	.4byte 0x6FE0567C
	.4byte 0xE2E37F8C
	.4byte 0x5181E452
	.4byte 0x85E54586
	.4byte 0x946188E5
	.4byte 0xDB8A8CEB
	.4byte 0x918FDD93
	.4byte 0xFBE1958D
	.4byte 0x7D9DEA4D
	.4byte 0x005C0003
	.4byte 0x83B22281
	.4byte 0xDB308344
	.4byte 0x3287864E
	.4byte 0x88E55196
	.4byte 0xBB5399CE
	.4byte 0x5499F856
	.4byte 0x9A8B5991
	.4byte 0xC35B9747
	.4byte 0x6390DA64
	.4byte 0x9D9B6590
	.4byte 0xCB6E9FEE
	.4byte 0x75E16D77
	.4byte 0x95CB7C8A
	.4byte 0x9F8094EC
	.4byte 0x828A488A
	.4byte 0xE6749594
	.4byte 0xB499E965
	.4byte 0x9EEA6D00
	.4byte 0x7C000383
	.4byte 0xB3308345
	.4byte 0x3287874E
	.4byte 0x96925199
	.4byte 0x6D52FA86
	.4byte 0x5399CD5B
	.4byte 0x9B815CFA
	.4byte 0xAC5E9378
	.4byte 0x60897862
	.4byte 0xFAC86697
	.4byte 0xEF679E64
	.4byte 0x689AEB76
	.4byte 0xFB74798B
	.4byte 0x9A8288B0
	.4byte 0x85914589
	.4byte 0xE64F8AE6
	.4byte 0x7590964D
	.4byte 0x97E8E19E
	.4byte 0x949E0081
	.4byte 0x980383B4
	.4byte 0x30834632
	.4byte 0x8788558C
	.4byte 0x965E8DC0
	.4byte 0x609CA461
	.4byte 0x93B2638D
	.4byte 0x54659580
	.4byte 0x688CE669
	.4byte 0x9ED072E0
	.4byte 0xB874E0F8
	.4byte 0x7895C979
	.4byte 0xE2557C8F
	.4byte 0xCF899797
	.4byte 0x8AFBA68C
	.4byte 0x956E8F99
	.4byte 0x9F92FBCC
	.4byte 0x938A5A95
	.4byte 0xE88296E8
	.4byte 0xA900814E
	.4byte 0x0383B530
	.4byte 0x83473287
	.4byte 0x894E8B9C
	.4byte 0x51957953
	.4byte 0x907E5499
	.4byte 0xFC559A69
	.4byte 0x58966E59
	.4byte 0x96575C91
	.4byte 0x5A5F9C72
	.4byte 0x63908468
	.4byte 0x979C71E0
	.4byte 0x917CE2E8
	.4byte 0x7F914181
	.4byte 0x966383E4
	.4byte 0xBC85E549
	.4byte 0x8AE6718C
	.4byte 0x89DD8D90
	.4byte 0x968F999E
	.4byte 0x90E7B595
	.4byte 0xE88196E7
	.4byte 0xAC97E8E0
	.4byte 0x98959799
	.4byte 0x8A5D9A8D
	.4byte 0x9C9BE9BD
	.4byte 0x00630003
	.4byte 0x83B63083
	.4byte 0x4851996F
	.4byte 0x528F9553
	.4byte 0x895854FA
	.4byte 0x93559A67
	.4byte 0x5C8AE25F
	.4byte 0x959C6094
	.4byte 0x59618C65
	.4byte 0x63898664
	.4byte 0x9D9C679E
	.4byte 0x5F738ADF
	.4byte 0x7890D77A
	.4byte 0xE27C7F8B
	.4byte 0x60808CA8
	.4byte 0x81E45685
	.4byte 0x8E4686E5
	.4byte 0x6F89E64E
	.4byte 0x8C94CC9D
	.4byte 0xEA4E9EEA
	.4byte 0x6E006100
	.4byte 0x30834951
	.4byte 0x99705293
	.4byte 0x77559172
	.4byte 0x579AB85F
	.4byte 0x8F7A6088
	.4byte 0xAB63915B
	.4byte 0x6A9F4B6B
	.4byte 0x9F6F6E9F
	.4byte 0xE26FE059
	.4byte 0x78E1F279
	.4byte 0xE2577A8C
	.4byte 0x457B925C
	.4byte 0x80966283
	.4byte 0xE4AE8590
	.4byte 0x6486E570
	.4byte 0x8990658C
	.4byte 0xE6C38EE7
	.4byte 0x58908ED7
	.4byte 0x91E7D096
	.4byte 0xE8A898E9
	.4byte 0x439B968E
	.4byte 0x9EEA7000
	.4byte 0x81E13083
	.4byte 0x4A4E8B9D
	.4byte 0x4F9B4451
	.4byte 0x9971528D
	.4byte 0x85549A40
	.4byte 0x558B6958
	.4byte 0x9AD15C9B
	.4byte 0xAB5E8CC9
	.4byte 0x619CE062
	.4byte 0x94E2639D
	.4byte 0x7764958F
	.4byte 0x659DCF66
	.4byte 0x8E626B9F
	.4byte 0x706C9697
	.4byte 0x70FB5275
	.4byte 0x89757CE2
	.4byte 0xE67DE35F
	.4byte 0x82E48B83
	.4byte 0x949C858C
	.4byte 0x4F86E57A
	.4byte 0x87E5AC88
	.4byte 0x94ED8C8A
	.4byte 0xD18E9067
	.4byte 0x91E7CE97
	.4byte 0xE6919B8E
	.4byte 0x4C9DEA49
	.4byte 0x0081CA30
	.4byte 0x834B4E8B
	.4byte 0x9E508DC3
	.4byte 0x51937E52
	.4byte 0x99A05499
	.4byte 0xF9558BAA
	.4byte 0x57FA9859
	.4byte 0x93695C96
	.4byte 0xA65D9BD2
	.4byte 0x619CDB62
	.4byte 0x9DAB638B
	.4byte 0x64658E61
	.4byte 0x6A9F476D
	.4byte 0xFB4170E0
	.4byte 0x7871E092
	.4byte 0x728CA277
	.4byte 0x8F757D8E
	.4byte 0xF880E3ED
	.4byte 0x82E48E85
	.4byte 0x96F289E6
	.4byte 0x508A90E0
	.4byte 0x8C90D38E
	.4byte 0xE75A93E8
	.4byte 0x4D99946E
	.4byte 0x002D0030
	.4byte 0x834C4E92
	.4byte 0xE04F9699
	.4byte 0x50976252
	.4byte 0x99A15389
	.4byte 0x7D5E92EB
	.4byte 0x5F9C7364
	.4byte 0x94646592
	.4byte 0x66689E88
	.4byte 0x70925977
	.4byte 0x97C47B90
	.4byte 0xFB7CE2E4
	.4byte 0x7D88DB80
	.4byte 0xE3EB8294
	.4byte 0x6D84E4D8
	.4byte 0x8A93C78C
	.4byte 0xE6C28FE7
	.4byte 0x8692914B
	.4byte 0x93E84E95
	.4byte 0xE8839795
	.4byte 0xDA99E966
	.4byte 0x9AE98C9B
	.4byte 0x8DF89EEA
	.4byte 0x71005200
	.4byte 0x30834D4E
	.4byte 0x97BA4F95
	.4byte 0x8E5399CF
	.4byte 0x559A6456
	.4byte 0x9A8C589A
	.4byte 0xD65B8B7B
	.4byte 0x5D9BD35F
	.4byte 0x94F7619C
	.4byte 0xE1648E42
	.4byte 0x6695E969
	.4byte 0x9EC46A9E
	.4byte 0x8D6C9F9C
	.4byte 0x70E07B76
	.4byte 0x94E779E2
	.4byte 0x587A8B87
	.4byte 0x7CE2EC7D
	.4byte 0xE35A7FE3
	.4byte 0xBC8596F7
	.4byte 0x88E5D78C
	.4byte 0xE6C78FE3
	.4byte 0x909392C1
	.4byte 0x99E9679B
	.4byte 0x914E0081
	.4byte 0x5030834E
	.4byte 0x4F8CF252
	.4byte 0xFB77549A
	.4byte 0x5D658E7A
	.4byte 0x678CCD68
	.4byte 0x92F26B9F
	.4byte 0x716D8A55
	.4byte 0x6E9FE870
	.4byte 0xE0767294
	.4byte 0xC678E1F3
	.4byte 0x7A97717D
	.4byte 0xE3627FE3
	.4byte 0xB9808D6D
	.4byte 0x82906385
	.4byte 0x8F9286E5
	.4byte 0x7487E5A6
	.4byte 0x89E6518C
	.4byte 0x92998E8B
	.4byte 0xEB8FE787
	.4byte 0x90E7B691
	.4byte 0xE7CF96FB
	.4byte 0xEC98E944
	.4byte 0x9DE9F200
	.4byte 0x818B3083
	.4byte 0x4F4E98B5
	.4byte 0x51997553
	.4byte 0x99D0558B
	.4byte 0xF2579AB9
	.4byte 0x5B8DC964
	.4byte 0x90EF6590
	.4byte 0x56688A42
	.4byte 0x748AC276
	.4byte 0xE1AC77E1
	.4byte 0xD5799448
	.4byte 0x7AE27E7D
	.4byte 0xE36681E4
	.4byte 0x5785FB9E
	.4byte 0x86E57788
	.4byte 0xE5DC8A92
	.4byte 0x4E8C96E1
	.4byte 0x8EE75B8F
	.4byte 0x924393E8
	.4byte 0x4C96E8AC
	.4byte 0x9AE98D00
	.4byte 0x817D0383
	.4byte 0xBF308350
	.4byte 0x51997352
	.4byte 0x97E35C91
	.4byte 0xD06295F8
	.4byte 0x688DAB69
	.4byte 0x9EE16B9F
	.4byte 0x736C9F9D
	.4byte 0x6F936271
	.4byte 0x944D72FB
	.4byte 0x5B75E176
	.4byte 0x7B94A07C
	.4byte 0xE2EB7D8D
	.4byte 0x6A808D6E
	.4byte 0x8289D483
	.4byte 0x978988E5
	.4byte 0xDE8EE75D
	.4byte 0x8F904A90
	.4byte 0xE7B796E8
	.4byte 0xAA98E945
	.4byte 0x9BFC4400
	.4byte 0x32000383
	.4byte 0xC02581A3
	.4byte 0x30835150
	.4byte 0x98FC5199
	.4byte 0x7453FA8E
	.4byte 0x548DE758
	.4byte 0xFA9E599B
	.4byte 0x466094DF
	.4byte 0x618C9B63
	.4byte 0x8C666496
	.4byte 0x6F66FADC
	.4byte 0x699EC36B
	.4byte 0x9F726D89
	.4byte 0x746E9FEA
	.4byte 0x72E0BA73
	.4byte 0x97E67594
	.4byte 0xE67CE2EA
	.4byte 0x7D96D47F
	.4byte 0xE3BA8088
	.4byte 0xE7848A97
	.4byte 0x89E6528A
	.4byte 0x89DB8CE6
	.4byte 0xC58F945F
	.4byte 0x95897B96
	.4byte 0xE8AB9DEA
	.4byte 0x4F003300
	.4byte 0x0383C125
	.4byte 0x81A23083
	.4byte 0x524E98B6
	.4byte 0x50994251
	.4byte 0x9972538C
	.4byte 0xB5548A50
	.4byte 0x579AB658
	.4byte 0x95AD5B8A
	.4byte 0x515C8A78
	.4byte 0x5F93BF60
	.4byte 0x9C7B679E
	.4byte 0x6B689E80
	.4byte 0x6A9F466B
	.4byte 0x9F746C89
	.4byte 0xCD6FE053
	.4byte 0x70E07A73
	.4byte 0xE0DC75E1
	.4byte 0x707793B5
	.4byte 0x79E2597C
	.4byte 0xE2E98191
	.4byte 0x56829646
	.4byte 0x87E5AE89
	.4byte 0x8ACF8CE6
	.4byte 0xC68D91AB
	.4byte 0x97E8E399
	.4byte 0x92790081
	.4byte 0x4C0383C2
	.4byte 0x30835350
	.4byte 0x98FB518D
	.4byte 0xE152984A
	.4byte 0x569A8E5B
	.4byte 0x89835F92
	.4byte 0xA5609CAA
	.4byte 0x6392CD66
	.4byte 0x965C679E
	.4byte 0x69699ED6
	.4byte 0x6B89A376
	.4byte 0xE1AD7BE2
	.4byte 0xBC7D92D4
	.4byte 0x808DE684
	.4byte 0xFB99888C
	.4byte 0xD18C8B4D
	.4byte 0x91E7D296
	.4byte 0xE8AD97E8
	.4byte 0xE49993E9
	.4byte 0x9BE9BE9D
	.4byte 0x92DF0083
	.4byte 0xCA0383C3
	.4byte 0x3083544F
	.4byte 0x904E508D
	.4byte 0xC2519976
	.4byte 0x5299A35B
	.4byte 0x8FAA5E88
	.4byte 0xC1609CAE
	.4byte 0x6292EF63
	.4byte 0x9D7D689E
	.4byte 0x906B9269
	.4byte 0x6D9FBC6F
	.4byte 0xFB4C75E1
	.4byte 0x7278E1F1
	.4byte 0x7DE35C81
	.4byte 0xE45883E4
	.4byte 0xB788E5D2
	.4byte 0x90E7B891
	.4byte 0xE7D10081
	.4byte 0xF70383C4
	.4byte 0x3083554E
	.4byte 0x98B74F97
	.4byte 0xB55196E8
	.4byte 0x5399D155
	.4byte 0x8963569A
	.4byte 0x8D5B89C6
	.4byte 0x5C9BAD5E
	.4byte 0x8F8E6096
	.4byte 0xE36189AF
	.4byte 0x6789CB68
	.4byte 0x8A816E97
	.4byte 0x6E728FF3
	.4byte 0x77E1D67A
	.4byte 0xE2807FE3
	.4byte 0xBD86E573
	.4byte 0x8CE6C896
	.4byte 0xE8AE98E9
	.4byte 0x46008145
	.4byte 0x0383C530
	.4byte 0x8356508F
	.4byte 0x9D5197E2
	.4byte 0x5C9BAF5D
	.4byte 0x9BD65E8D
	.4byte 0x4E5FFABA
	.4byte 0x659DD067
	.4byte 0x9E676B9F
	.4byte 0x756E9FE5
	.4byte 0x76EA897D
	.4byte 0xFB8C8888
	.4byte 0xBF8C9483
	.4byte 0x8FE78892
	.4byte 0xE7F79697
	.4byte 0xEA008143
	.4byte 0x0383C630
	.4byte 0x83575499
	.4byte 0xF7589AD5
	.4byte 0x5B9B825C
	.4byte 0x8ADD5DFA
	.4byte 0xB45E9766
	.4byte 0x609CA766
	.4byte 0x9E41679E
	.4byte 0x6D6A9F45
	.4byte 0x6C95A66D
	.4byte 0x9FBF70E0
	.4byte 0x7975E174
	.4byte 0x76E1AE7B
	.4byte 0x94A27DE3
	.4byte 0x647FE3BE
	.4byte 0x81E45A82
	.4byte 0x8C7C848F
	.4byte 0xF68C91DD
	.4byte 0x90934091
	.4byte 0x8FF896E8
	.4byte 0xAF9A8A5B
	.4byte 0x9DEA539E
	.4byte 0xEA6F0031
	.4byte 0x000383C7
	.4byte 0x30835852
	.4byte 0x8CF8589A
	.4byte 0xCF599685
	.4byte 0x5B97655D
	.4byte 0xFAB55F93
	.4byte 0x4F629695
	.4byte 0x648A6865
	.4byte 0x95FB669D
	.4byte 0xF9679E73
	.4byte 0x689E8E6C
	.4byte 0x96FB6FE0
	.4byte 0x5770935F
	.4byte 0x71E09472
	.4byte 0xE0B97590
	.4byte 0x5D76E1AF
	.4byte 0x77E1D779
	.4byte 0xE25A7CE2
	.4byte 0xED7FE3BB
	.4byte 0x828BDA84
	.4byte 0xE4E385E5
	.4byte 0x568A94EE
	.4byte 0x92E7F693
	.4byte 0xE85095E8
	.4byte 0x8696E8B0
	.4byte 0x9BE9C19E
	.4byte 0x8D8D006F
	.4byte 0x000383C8
	.4byte 0x3083594E
	.4byte 0x906C589A
	.4byte 0xD259FAA5
	.4byte 0x5CFAAD5D
	.4byte 0x97E4619C
	.4byte 0xE9689E92
	.4byte 0x6B8E456C
	.4byte 0x9F9F6E93
	.4byte 0x4D7088D7
	.4byte 0x76E1B078
	.4byte 0x8A6D79E2
	.4byte 0x5B7A894D
	.4byte 0x7DE35980
	.4byte 0x947881E4
	.4byte 0x5E85E554
	.4byte 0x87978689
	.4byte 0xE6538DE6
	.4byte 0xE58F95D3
	.4byte 0x91E7D39D
	.4byte 0xEA549E96
	.4byte 0xCB0081E2
	.4byte 0x0383C930
	.4byte 0x835A538B
	.4byte 0x8E589AD4
	.4byte 0x598DC85C
	.4byte 0x9BAC629D
	.4byte 0x5A63917E
	.4byte 0x649DA367
	.4byte 0xFAE2699E
	.4byte 0xCE6A9F42
	.4byte 0x6B8A6B6C
	.4byte 0x8EA170FA
	.4byte 0x6273E0DE
	.4byte 0x77E1DB7D
	.4byte 0x925D82E4
	.4byte 0x8D84E4E8
	.4byte 0x87E5B18C
	.4byte 0x94EF8F92
	.4byte 0xD295E885
	.4byte 0x9690C79B
	.4byte 0xFC459DEA
	.4byte 0x529E9683
	.4byte 0x0383CA25
	.4byte 0x81A53083
	.4byte 0x5B5299A2
	.4byte 0x549A4456
	.4byte 0x9A905A9B
	.4byte 0x5B5C9BAE
	.4byte 0x5D9BD75F
	.4byte 0x9C746093
	.4byte 0x8962899F
	.4byte 0x649D9E65
	.4byte 0x8997669D
	.4byte 0xFC68938E
	.4byte 0x6B9F766C
	.4byte 0x8FC06D97
	.4byte 0xC175E175
	.4byte 0x77E1D978
	.4byte 0xE1F98491
	.4byte 0x938A8B62
	.4byte 0x8C935C8F
	.4byte 0x8D9E95E8
	.4byte 0x849694B9
	.4byte 0x99E9689A
	.4byte 0xE98E9E9B
	.4byte 0xF50383CB
	.4byte 0x2581A430
	.4byte 0x835C5199
	.4byte 0x775488F4
	.4byte 0x5A9B5F5D
	.4byte 0x9BD45F8B
	.4byte 0x4A609CAC
	.4byte 0x62928A65
	.4byte 0x8E7B6C9F
	.4byte 0x986E9FE7
	.4byte 0x73FB6074
	.4byte 0x8EA375E1
	.4byte 0x7377E1DA
	.4byte 0x798BD77C
	.4byte 0xE2EE7DE3
	.4byte 0x5E7F8948
	.4byte 0x81E45B82
	.4byte 0x89E883E4
	.4byte 0xCD87E5A8
	.4byte 0x89E6548C
	.4byte 0xE6C40383
	.4byte 0xCC30835D
	.4byte 0x508C5851
	.4byte 0xFA82528A
	.4byte 0x4E549A43
	.4byte 0x588DA459
	.4byte 0x8FA85A9B
	.4byte 0x5C5C9BB1
	.4byte 0x618AB663
	.4byte 0x9D81669D
	.4byte 0xFB699EC9
	.4byte 0x6C9F9E71
	.4byte 0xE09572FB
	.4byte 0x5C758EBE
	.4byte 0x78E1F879
	.4byte 0x89D17C90
	.4byte 0xB87D88BB
	.4byte 0x81E4598A
	.4byte 0xFBA78DE6
	.4byte 0xE48EE75E
	.4byte 0x95E8879E
	.4byte 0x9F800383
	.4byte 0xCD228799
	.4byte 0x30835E4F
	.4byte 0x95D65B8F
	.4byte 0x6866FADD
	.4byte 0x699EC66B
	.4byte 0x93616C89
	.4byte 0x886EFB4A
	.4byte 0x768E4D77
	.4byte 0xE1D87993
	.4byte 0xC37AE283
	.4byte 0x7D96C881
	.4byte 0x945E84E4
	.4byte 0xE488E5DD
	.4byte 0x89E6558A
	.4byte 0x92B28C96
	.4byte 0x668F9248
	.4byte 0x9E969B00
	.4byte 0x41000383
	.4byte 0xCE30835F
	.4byte 0x4E8F5952
	.4byte 0xFA875488
	.4byte 0xA3569A93
	.4byte 0x579AAF5B
	.4byte 0xFAA7639D
	.4byte 0x8367FAE4
	.4byte 0x6B9ACA6D
	.4byte 0x97846F8C
	.4byte 0x8373E0DF
	.4byte 0x798F477B
	.4byte 0x90DF7CE2
	.4byte 0xEF81E45C
	.4byte 0x87E5A989
	.4byte 0xE6568C89
	.4byte 0xEA91E7D4
	.4byte 0x96909D9A
	.4byte 0xE98F9BE9
	.4byte 0xBF004100
	.4byte 0x0383CF30
	.4byte 0x83604E90
	.4byte 0x6D5299A4
	.4byte 0x54956956
	.4byte 0x9A915895
	.4byte 0xC75A89C5
	.4byte 0x5E9BF864
	.4byte 0x9769659D
	.4byte 0xD3669DF8
	.4byte 0x6791C669
	.4byte 0x9EC76A9E
	.4byte 0xE86C8BB5
	.4byte 0x6F91F771
	.4byte 0xFB59788E
	.4byte 0xA5798E84
	.4byte 0x7BE2B97F
	.4byte 0x89A583E4
	.4byte 0xC584E4EB
	.4byte 0x85986D88
	.4byte 0x8DD98CE6
	.4byte 0xCA9088E8
	.4byte 0x91E7D596
	.4byte 0x8AE59994
	.4byte 0x9D9DEA51
	.4byte 0x00410030
	.4byte 0x83614E98
	.4byte 0xBC4F8C57
	.4byte 0x50994353
	.4byte 0x8E51549A
	.4byte 0x41569A8F
	.4byte 0x5A9B5E5B
	.4byte 0x8EE25E9B
	.4byte 0xF9629D63
	.4byte 0x649DA56A
	.4byte 0x9F446E9F
	.4byte 0xEF6FE051
	.4byte 0x728BB673
	.4byte 0x89CF75E1
	.4byte 0x6F76E1B1
	.4byte 0x7CE2F181
	.4byte 0xE45D8897
	.4byte 0xF48AE67A
	.4byte 0x8C98478D
	.4byte 0xE6E38F89
	.4byte 0x499DEA57
	.4byte 0x00410003
	.4byte 0x83D03083
	.4byte 0x624F91A3
	.4byte 0x52967553
	.4byte 0x99D2569A
	.4byte 0x92579ABA
	.4byte 0x5B9B835E
	.4byte 0x94705F90
	.4byte 0x53619CE7
	.4byte 0x6391B565
	.4byte 0x9DD1699E
	.4byte 0xCF6A9F43
	.4byte 0x6F945A71
	.4byte 0x945272E0
	.4byte 0xBB75E171
	.4byte 0x7694757A
	.4byte 0x8A968088
	.4byte 0xDD88E5DF
	.4byte 0x8C92C093
	.4byte 0xE85695E8
	.4byte 0x8A97E8E5
	.4byte 0x98E94800
	.4byte 0x41000383
	.4byte 0xD1308363
	.4byte 0x3387744E
	.4byte 0x98BA4F89
	.4byte 0xE25190A6
	.4byte 0x5499FA55
	.4byte 0x9A6D5B8A
	.4byte 0xF1639D89
	.4byte 0x659DD466
	.4byte 0x9E406795
	.4byte 0xBF688AFC
	.4byte 0x6C9F956E
	.4byte 0x9FE972E0
	.4byte 0xBD7AE282
	.4byte 0x7B94CD80
	.4byte 0xE3F28492
	.4byte 0x7E86E575
	.4byte 0x87E5AD88
	.4byte 0xE5E08AE6
	.4byte 0x788C9864
	.4byte 0x8F969896
	.4byte 0x975998E9
	.4byte 0x479991CA
	.4byte 0x9A90919D
	.4byte 0xEA509E89
	.4byte 0xA9004100
	.4byte 0x0383D230
	.4byte 0x8364508B
	.4byte 0xCD519978
	.4byte 0x5292BA55
	.4byte 0x9A6B589A
	.4byte 0xD75B93D0
	.4byte 0x5C9BB05F
	.4byte 0x954B608F
	.4byte 0xEE629253
	.4byte 0x649DA165
	.4byte 0x97B76B8B
	.4byte 0x426C9F9A
	.4byte 0x6D9FC66E
	.4byte 0x96C57595
	.4byte 0x6178E1FA
	.4byte 0x7AE2817C
	.4byte 0xE2F07FE3
	.4byte 0xC0828AA1
	.4byte 0x83909B88
	.4byte 0x91958EE7
	.4byte 0x5F8F9076
	.4byte 0x9689EB99
	.4byte 0x89770041
	.4byte 0x000383D3
	.4byte 0x25819F30
	.4byte 0x83654E98
	.4byte 0xBB518F79
	.4byte 0x579ABB59
	.4byte 0x9B475B96
	.4byte 0xA7609CAD
	.4byte 0x619CE862
	.4byte 0x9D5D639D
	.4byte 0x84659DD2
	.4byte 0x679E7568
	.4byte 0x9EB06B9F
	.4byte 0x776D9FC0
	.4byte 0x6FE05872
	.4byte 0xE0BC7696
	.4byte 0x7E78E1F5
	.4byte 0x7BE2BD7F
	.4byte 0xE3C18092
	.4byte 0x5F8189B0
	.4byte 0x84E4EC86
	.4byte 0xE57687E5
	.4byte 0xB08EE75C
	.4byte 0x9194CE93
	.4byte 0xFBE2968F
	.4byte 0x5797E8E6
	.4byte 0x98E94999
	.4byte 0x8BEC9BE9
	.4byte 0xC29DEA55
	.4byte 0x00430003
	.4byte 0x83D42581
	.4byte 0x9E308366
	.4byte 0x4E8B7752
	.4byte 0x97455499
	.4byte 0xF5559AA5
	.4byte 0x57FA9A58
	.4byte 0x92645B9B
	.4byte 0x845C9BB2
	.4byte 0x6093D561
	.4byte 0x8DA7629D
	.4byte 0x64649DA2
	.4byte 0x6693DC69
	.4byte 0xEAA06D9F
	.4byte 0xBD758FC7
	.4byte 0x77E1DC7A
	.4byte 0xE2857B95
	.4byte 0xD17DE35D
	.4byte 0x83FB9686
	.4byte 0x8ED687E5
	.4byte 0xAF8A926B
	.4byte 0x8C8E9191
	.4byte 0x8DD19588
	.4byte 0xC5968CD9
	.4byte 0x00450003
	.4byte 0x83D53083
	.4byte 0x67539694
	.4byte 0x5499FB56
	.4byte 0x9A9457FA
	.4byte 0x995E9BFA
	.4byte 0x619CE662
	.4byte 0x9D5F68FA
	.4byte 0x647097F3
	.4byte 0x71939573
	.4byte 0xE0DB7689
	.4byte 0x6D7AE27D
	.4byte 0x81E4648C
	.4byte 0xE6C98EE7
	.4byte 0x60918EDF
	.4byte 0x93E85997
	.4byte 0xE8E7998B
	.4byte 0xED004500
	.4byte 0x0383D630
	.4byte 0x83684FFA
	.4byte 0x61509940
	.4byte 0x51997952
	.4byte 0x95D7538D
	.4byte 0xB3548DC6
	.4byte 0x598E6F5A
	.4byte 0x8EB95B9B
	.4byte 0x855D9BD8
	.4byte 0x5E97F561
	.4byte 0x9CE4629D
	.4byte 0x66639D86
	.4byte 0x669DFA68
	.4byte 0x96C76C90
	.4byte 0xF26E9FE4
	.4byte 0x71E09773
	.4byte 0xFB6179E2
	.4byte 0x5C7B927A
	.4byte 0x81E45F84
	.4byte 0x977585E5
	.4byte 0x5386E578
	.4byte 0x91E7D696
	.4byte 0xE8B39B8C
	.4byte 0xEF004500
	.4byte 0x3083694E
	.4byte 0x8DA14F8F
	.4byte 0x72509941
	.4byte 0x538B7958
	.4byte 0x89F35E98
	.4byte 0x4C619CE3
	.4byte 0x629D6267
	.4byte 0x9541689E
	.4byte 0x97699ECC
	.4byte 0x6C949173
	.4byte 0x8E5874E0
	.4byte 0xF975E178
	.4byte 0x76897678
	.4byte 0xE1FB7AE2
	.4byte 0x867C8CD0
	.4byte 0x7D8BD97F
	.4byte 0xE3C2838B
	.4byte 0x6584E4E1
	.4byte 0x8C91AF8E
	.4byte 0x8ED4908D
	.4byte 0x7895E888
	.4byte 0x9BE9C000
	.4byte 0x45002581
	.4byte 0x9B30836A
	.4byte 0x4E89EE51
	.4byte 0x929C5397
	.4byte 0x46579684
	.4byte 0x598E6E5A
	.4byte 0x9B5D619C
	.4byte 0xEA6590F9
	.4byte 0x688AFB69
	.4byte 0x8D5C6B9F
	.4byte 0x786D97D2
	.4byte 0x6E8EA070
	.4byte 0xE07D78E1
	.4byte 0xF6798F48
	.4byte 0x7A97A77B
	.4byte 0xE2B87D94
	.4byte 0xEA848A57
	.4byte 0x86926087
	.4byte 0xE5A78A90
	.4byte 0xBF8DE6EB
	.4byte 0x8EE76191
	.4byte 0xE7D796E8
	.4byte 0xB297E8E8
	.4byte 0x00490030
	.4byte 0x836B5197
	.4byte 0xBD53916F
	.4byte 0x588FEB5A
	.4byte 0x8C995B95
	.4byte 0x785D8ADE
	.4byte 0x5F8AF561
	.4byte 0x9CE2629D
	.4byte 0x61659DD5
	.4byte 0x6992C66C
	.4byte 0x94E56D9F
	.4byte 0xC36E9FFC
	.4byte 0x7BE2BA7F
	.4byte 0x97828094
	.4byte 0x77838BDB
	.4byte 0x8A8AD08D
	.4byte 0xE6E98E8B
	.4byte 0x4F9197A2
	.4byte 0x95E88C96
	.4byte 0x8E939EEA
	.4byte 0x73004900
	.4byte 0x30836C33
	.4byte 0x87834E98
	.4byte 0xB94FFA73
	.4byte 0x5093AD51
	.4byte 0x93805299
	.4byte 0xA55394BD
	.4byte 0x5D9BD95F
	.4byte 0x9445619C
	.4byte 0xEC62948F
	.4byte 0x64918068
	.4byte 0x9E9E6991
	.4byte 0x846B95EA
	.4byte 0x7392BF75
	.4byte 0xE17776E1
	.4byte 0xB277E1DD
	.4byte 0x7AE28781
	.4byte 0xE46084E4
	.4byte 0xE7859795
	.4byte 0x868C758A
	.4byte 0xE6798CE6
	.4byte 0xDA8E8C52
	.4byte 0x918F6495
	.4byte 0xE88B96E8
	.4byte 0xB49E8B6F
	.4byte 0x00490025
	.4byte 0x819D3083
	.4byte 0x6D4E98B8
	.4byte 0x4F98D753
	.4byte 0x8EFB569A
	.4byte 0x95578FE9
	.4byte 0x64FACC67
	.4byte 0x9E74699E
	.4byte 0xCA6B9688
	.4byte 0x71E09972
	.4byte 0xE0BE73E0
	.4byte 0xDD7C9157
	.4byte 0x8091D983
	.4byte 0xE4C0868A
	.4byte 0x618C9147
	.4byte 0x8F8C7D90
	.4byte 0x98599196
	.4byte 0xEC96E8B1
	.4byte 0x9EEA7400
	.4byte 0x49002581
	.4byte 0x9C30836E
	.4byte 0x4E95A750
	.4byte 0x919C5E9B
	.4byte 0xFC629D5B
	.4byte 0x63956065
	.4byte 0x91B06794
	.4byte 0x9068FAE7
	.4byte 0x6DFB4270
	.4byte 0x894774E0
	.4byte 0xFA7AE288
	.4byte 0x7BE2BB7D
	.4byte 0x918D85E5
	.4byte 0x558897A0
	.4byte 0x8A907A8D
	.4byte 0xE6E68EFB
	.4byte 0xB29197CA
	.4byte 0x92E7F59A
	.4byte 0xE9909BE9
	.4byte 0xC39DEA56
	.4byte 0x9EEA7500
	.4byte 0x44003083
	.4byte 0x6F4F98DC
	.4byte 0x5988B75A
	.4byte 0x9B6B5B9B
	.4byte 0x875DFAB6
	.4byte 0x5E9BFB61
	.4byte 0x89F96289
	.4byte 0xFB6392F1
	.4byte 0x67965E69
	.4byte 0x9EC57197
	.4byte 0xD3728CCF
	.4byte 0x7894D684
	.4byte 0xE4EA85E5
	.4byte 0x5787E5AA
	.4byte 0x91E7D892
	.4byte 0xFBD293E8
	.4byte 0x58999293
	.4byte 0x9EEA7600
	.4byte 0x4E003083
	.4byte 0x704F98DA
	.4byte 0x508BA156
	.4byte 0x9A96589A
	.4byte 0xD9598CC6
	.4byte 0x60986662
	.4byte 0x9D59678A
	.4byte 0xB96A9F49
	.4byte 0x6D8F696E
	.4byte 0x8A8A78E1
	.4byte 0xF47989C8
	.4byte 0x7AFB847D
	.4byte 0x97CE81E4
	.4byte 0x61828991
	.4byte 0x8496AA8C
	.4byte 0x93F68F8B
	.4byte 0xDF918BE0
	.4byte 0x93934C96
	.4byte 0x8E4799E9
	.4byte 0x6D9AE991
	.4byte 0x9BE9C49E
	.4byte 0xFC4B004F
	.4byte 0x002181CB
	.4byte 0x30837152
	.4byte 0xE8D3579A
	.4byte 0xBD5B8AA6
	.4byte 0x5D9BDB62
	.4byte 0x8B91639D
	.4byte 0x87649DA0
	.4byte 0x659DD668
	.4byte 0x965F6B93
	.4byte 0xC56D9FC5
	.4byte 0x71E09672
	.4byte 0xE0BF73FB
	.4byte 0x6475E179
	.4byte 0x76E1B479
	.4byte 0x95627A9A
	.4byte 0xF27CE2F3
	.4byte 0x7D8F8F7F
	.4byte 0x8F4B82E4
	.4byte 0x9287E5BB
	.4byte 0x898A708A
	.4byte 0x97C88E8C
	.4byte 0xAC92964E
	.4byte 0x998BEE9B
	.4byte 0xE9C59E8D
	.4byte 0x95004F00
	.4byte 0x30837256
	.4byte 0x9A97579A
	.4byte 0xBE589AD8
	.4byte 0x5990A95B
	.4byte 0x8BF55D9B
	.4byte 0xDA5E8A66
	.4byte 0x609CA962
	.4byte 0x91F16790
	.4byte 0xF5699EC8
	.4byte 0x6A98456B
	.4byte 0x9F796C9F
	.4byte 0x976E9FE6
	.4byte 0x7AE28A81
	.4byte 0x919F8297
	.4byte 0xE88389D9
	.4byte 0x8C956F92
	.4byte 0xFBD6978A
	.4byte 0xD89AE992
	.4byte 0x9DEA5900
	.4byte 0x4F002181
	.4byte 0xCC308373
	.4byte 0x4E8E654F
	.4byte 0x98D5538F
	.4byte 0x66559A70
	.4byte 0x579ABC59
	.4byte 0x88CF5B9B
	.4byte 0x86629D55
	.4byte 0x649D5E67
	.4byte 0x8F5F689E
	.4byte 0x9F6B94E4
	.4byte 0x6E9FEB6F
	.4byte 0xE05D71E0
	.4byte 0x9874E0FB
	.4byte 0x758EA478
	.4byte 0xE1F77FE3
	.4byte 0xC48291DB
	.4byte 0x86E57B88
	.4byte 0xE5E18F95
	.4byte 0xD495E88E
	.4byte 0x9AE9939B
	.4byte 0xE9C99EEA
	.4byte 0x77004F00
	.4byte 0x3083744E
	.4byte 0x8E645096
	.4byte 0x6C5293AE
	.4byte 0x588D8860
	.4byte 0xFAC0689E
	.4byte 0xA16C9640
	.4byte 0x6D9FCA6E
	.4byte 0x9FEC6FE0
	.4byte 0x5B71898D
	.4byte 0x758DAD79
	.4byte 0xE25D7AE2
	.4byte 0x897DE38E
	.4byte 0x7FE3C385
	.4byte 0xE5588897
	.4byte 0x5492FBD4
	.4byte 0x95E88D96
	.4byte 0xE8B89989
	.4byte 0xED004F00
	.4byte 0x3083754E
	.4byte 0x91BC5099
	.4byte 0x445199C3
	.4byte 0x538EE657
	.4byte 0x9AC05A9B
	.4byte 0x645D9BDC
	.4byte 0x5E9C405F
	.4byte 0x9C756397
	.4byte 0x4B669E42
	.4byte 0x6BFAF473
	.4byte 0xFB6276E1
	.4byte 0xB37C939C
	.4byte 0x7DFB8E80
	.4byte 0xE3F4838F
	.4byte 0xD284E4ED
	.4byte 0x8A985F8D
	.4byte 0xE6E891E7
	.4byte 0xD993E851
	.4byte 0x95E88F96
	.4byte 0xE5AB9B8E
	.4byte 0x4900817E
	.4byte 0x3083764E
	.4byte 0x98BD4F91
	.4byte 0xAD5299A6
	.4byte 0x538EF356
	.4byte 0x9A98589A
	.4byte 0xDA5A9B61
	.4byte 0x5F8E7562
	.4byte 0x9D58658A
	.4byte 0xF8689EA5
	.4byte 0x6C9F9971
	.4byte 0xE093728B
	.4byte 0xE7769390
	.4byte 0x77E1DE82
	.4byte 0x956391FB
	.4byte 0xBB92FBD0
	.4byte 0x93E85200
	.4byte 0x4F003083
	.4byte 0x774E9574
	.4byte 0x4F98D850
	.4byte 0xFA7D528A
	.4byte 0xA8549A45
	.4byte 0x56996458
	.4byte 0x9ADC5BFA
	.4byte 0xA95F9659
	.4byte 0x609CAF62
	.4byte 0x8D53649D
	.4byte 0xA46792D1
	.4byte 0x689E9969
	.4byte 0x976C6B94
	.4byte 0xF96D9391
	.4byte 0x6FE05E75
	.4byte 0x93977994
	.4byte 0xE97CE2F2
	.4byte 0x7DE36781
	.4byte 0xE46383E4
	.4byte 0xC388E5E2
	.4byte 0x91934293
	.4byte 0xE8559593
	.4byte 0xAC99E96C
	.4byte 0x9A8D829E
	.4byte 0xE0D20055
	.4byte 0x00308378
	.4byte 0x4E90E552
	.4byte 0x96B1538F
	.4byte 0x96589ADB
	.4byte 0x599B4B5C
	.4byte 0x9BB35F96
	.4byte 0x5A6290D9
	.4byte 0x659DD866
	.4byte 0x8F8C6996
	.4byte 0x8A6C9FA2
	.4byte 0x6D9FC870
	.4byte 0xE0807291
	.4byte 0x5F75E17A
	.4byte 0x7AE28B80
	.4byte 0xE3F081E4
	.4byte 0x6282E49E
	.4byte 0x84E4E686
	.4byte 0x8A5E88E5
	.4byte 0xE392FBD1
	.4byte 0x9699D49A
	.4byte 0xFBFC9DEA
	.4byte 0x589E96D9
	.4byte 0x00550030
	.4byte 0x83794F98
	.4byte 0xDB5097BB
	.4byte 0x559A6A56
	.4byte 0x8EFA599B
	.4byte 0x4C5E9C43
	.4byte 0x608D9B63
	.4byte 0x9767649D
	.4byte 0x9F669E43
	.4byte 0x67974D68
	.4byte 0x92496A9F
	.4byte 0x4C6CFAF9
	.4byte 0x77E1DF78
	.4byte 0xE2417AE2
	.4byte 0x8C7D90FC
	.4byte 0x80E3F381
	.4byte 0xE46584E4
	.4byte 0xE989E657
	.4byte 0x8AE67B8C
	.4byte 0xE6CD8DE6
	.4byte 0xE78FE789
	.4byte 0x91FBBA00
	.4byte 0x55003083
	.4byte 0x7A4F98D9
	.4byte 0x51997A52
	.4byte 0xFA885394
	.4byte 0xBE568E6C
	.4byte 0x5B8AB05D
	.4byte 0x9BDD5E9C
	.4byte 0x44628FB5
	.4byte 0x638AB765
	.4byte 0x9DD76A8B
	.4byte 0xF96B96D1
	.4byte 0x6C9FA06F
	.4byte 0xE061728D
	.4byte 0x9D7592C9
	.4byte 0x7690B777
	.4byte 0x96B580E3
	.4byte 0xEE8289D5
	.4byte 0x86E5818A
	.4byte 0xE6878C8E
	.4byte 0x5E8DE6EA
	.4byte 0x8EE76290
	.4byte 0xE7BC91E7
	.4byte 0xDC969097
	.4byte 0x9894F299
	.4byte 0xE96A9B91
	.4byte 0xE29E91E1
	.4byte 0x00550030
	.4byte 0x837B51EA
	.4byte 0xA3559A6E
	.4byte 0x57945758
	.4byte 0x9ADE599B
	.4byte 0x495F899E
	.4byte 0x6090C962
	.4byte 0x9D606697
	.4byte 0x6A74895A
	.4byte 0x769F5877
	.4byte 0xE1E07A97
	.4byte 0xB37CE2F4
	.4byte 0x7DE36382
	.4byte 0xE49C838D
	.4byte 0xD884FA60
	.4byte 0x85E55B88
	.4byte 0x95E289E6
	.4byte 0x588A92B3
	.4byte 0x8C8E9291
	.4byte 0x8A9895E8
	.4byte 0x9096E8B6
	.4byte 0x97E8E998
	.4byte 0xE3CA9AFC
	.4byte 0x409EEA78
	.4byte 0xF9FBE900
	.4byte 0x59003083
	.4byte 0x7C4E8157
	.4byte 0x4F95DB51
	.4byte 0x8BC3528F
	.4byte 0x9F53FA8F
	.4byte 0x5B90515D
	.4byte 0x90EC5E9C
	.4byte 0x425F9C7A
	.4byte 0x62947166
	.4byte 0x9498679E
	.4byte 0x70699ECD
	.4byte 0x6C9F9B6E
	.4byte 0x91EA70E0
	.4byte 0x7E7AE28D
	.4byte 0x7BE2BE7D
	.4byte 0xE36880E3
	.4byte 0xF185E559
	.4byte 0x88E5E489
	.4byte 0xE6598D8B
	.4byte 0x9791906A
	.4byte 0x93E85799
	.4byte 0xE96B9EEA
	.4byte 0x7A005400
	.4byte 0x30837D4E
	.4byte 0x98BE5099
	.4byte 0x455299A7
	.4byte 0x5689F158
	.4byte 0x9AD35B9B
	.4byte 0x8B5D8F42
	.4byte 0x5FFABB60
	.4byte 0xFABF679E
	.4byte 0x6F699ED7
	.4byte 0x6A9F486D
	.4byte 0x9FC26E91
	.4byte 0xD873E0E2
	.4byte 0x75E17C76
	.4byte 0xE1B57C95
	.4byte 0xB37DE36A
	.4byte 0x80964582
	.4byte 0xE49A86E5
	.4byte 0x7C8AE686
	.4byte 0x8C8FDC90
	.4byte 0xFBB691FB
	.4byte 0xBC93FBE3
	.4byte 0x9AE9949E
	.4byte 0xEA790073
	.4byte 0x0030837E
	.4byte 0x4E98C04F
	.4byte 0x98D65295
	.4byte 0xE55399D5
	.4byte 0x559A6C57
	.4byte 0x88E6589A
	.4byte 0xE05B8E40
	.4byte 0x5E955F60
	.4byte 0x88D26893
	.4byte 0x8F6A9F4A
	.4byte 0x6B9F7A6F
	.4byte 0xE05A70E0
	.4byte 0x7C719A7A
	.4byte 0x7696BF79
	.4byte 0x91647AE8
	.4byte 0xED7C918C
	.4byte 0x81E46682
	.4byte 0xE4918393
	.4byte 0x7086E580
	.4byte 0x888DBE8A
	.4byte 0xFBA88DE6
	.4byte 0xEE8E93EE
	.4byte 0x91E7DA98
	.4byte 0x904899E9
	.4byte 0x699AE995
	.4byte 0x00610030
	.4byte 0x83805199
	.4byte 0x7B5299AB
	.4byte 0x5688F657
	.4byte 0x95755C93
	.4byte 0xBB5E8FB1
	.4byte 0x5F928960
	.4byte 0x9CA8628B
	.4byte 0x92649DA9
	.4byte 0x659DD966
	.4byte 0x9E44689E
	.4byte 0xA96F8D8A
	.4byte 0x71E09A72
	.4byte 0xE0C1738E
	.4byte 0xEC74E140
	.4byte 0x7A8FCD7B
	.4byte 0x8EC27C8D
	.4byte 0x667D92F7
	.4byte 0x7F908981
	.4byte 0xE46783E4
	.4byte 0xC887E5B4
	.4byte 0x8AE6838C
	.4byte 0x948592FB
	.4byte 0xD59EEA7B
	.4byte 0xFF819100
	.4byte 0x61003083
	.4byte 0x814EFA69
	.4byte 0x4F904D51
	.4byte 0x967D5389
	.4byte 0x625488F5
	.4byte 0x5A92845B
	.4byte 0x89C75C8B
	.4byte 0xAC5D8F84
	.4byte 0x5E9C4660
	.4byte 0x9CA6628A
	.4byte 0x676388AC
	.4byte 0x649DAA65
	.4byte 0x9DDA689E
	.4byte 0x9C6C9641
	.4byte 0x6D92576F
	.4byte 0x944772E0
	.4byte 0xC276E1B6
	.4byte 0x79E2607A
	.4byte 0xE28E7DE3
	.4byte 0x6D7FE3C5
	.4byte 0x808CD382
	.4byte 0xE48F8897
	.4byte 0xA18AE68B
	.4byte 0x8D90D590
	.4byte 0x8C5391E7
	.4byte 0xDB938BBE
	.4byte 0x95E8919B
	.4byte 0xE9CAFF81
	.4byte 0x92006100
	.4byte 0x30838252
	.4byte 0x90A85391
	.4byte 0x70549A4E
	.4byte 0x5B9B8A5E
	.4byte 0x9C456493
	.4byte 0x46658AF9
	.4byte 0x679E7169
	.4byte 0xFAEC6AFA
	.4byte 0xF26C9467
	.4byte 0x72E0C074
	.4byte 0x955A7597
	.4byte 0x9F7796EE
	.4byte 0x7AE28F7C
	.4byte 0xE2F58AE6
	.4byte 0x848C8CAB
	.4byte 0x8E935D8F
	.4byte 0xE78B90E7
	.4byte 0xB995E893
	.4byte 0x9697A398
	.4byte 0x8B5199E9
	.4byte 0x779AE996
	.4byte 0x9BE9C7FF
	.4byte 0x81CA0061
	.4byte 0x00308383
	.4byte 0x4E91E34F
	.4byte 0x96935099
	.4byte 0x485299A8
	.4byte 0x538CFB55
	.4byte 0x8E6B5692
	.4byte 0x63579AC1
	.4byte 0x5A9B605D
	.4byte 0x91835E9C
	.4byte 0x41609179
	.4byte 0x619CEE63
	.4byte 0x9D85649D
	.4byte 0xAC689EA6
	.4byte 0x6C8B8373
	.4byte 0xFB6374E1
	.4byte 0x4175E17B
	.4byte 0x768AC477
	.4byte 0xE1E179E2
	.4byte 0x617A8F76
	.4byte 0x81906282
	.4byte 0xE4908989
	.4byte 0xF08CE6CC
	.4byte 0x8DE6EF8E
	.4byte 0xE7639192
	.4byte 0xDE9693EF
	.4byte 0x9AE9979B
	.4byte 0xE9C6FF81
	.4byte 0x50006100
	.4byte 0x3083844E
	.4byte 0x97DF4F98
	.4byte 0xDD528BCE
	.4byte 0x538CC355
	.4byte 0x9A6F589A
	.4byte 0xDF5B9B88
	.4byte 0x5F9C7767
	.4byte 0x9E6E6AFA
	.4byte 0xF36D9FC9
	.4byte 0x6F9FB776
	.4byte 0x94D57994
	.4byte 0x897B93C4
	.4byte 0x7DE36980
	.4byte 0x88FB8593
	.4byte 0xA18694B8
	.4byte 0x8AE6808C
	.4byte 0xE6CB90E7
	.4byte 0xBA91FBBF
	.4byte 0x928F9B93
	.4byte 0xE85A9BE9
	.4byte 0xC8FFFA55
	.4byte 0x00610030
	.4byte 0x83854E88
	.4byte 0xC84F98DE
	.4byte 0x50994653
	.4byte 0x8BE5549A
	.4byte 0x46589ADD
	.4byte 0x5989575B
	.4byte 0x9B8C5D8D
	.4byte 0x486593FA
	.4byte 0x6C934471
	.4byte 0x918773E0
	.4byte 0xE076E1B7
	.4byte 0x77926D7A
	.4byte 0x93B67BE2
	.4byte 0xC380E3EF
	.4byte 0x8189E782
	.4byte 0x8EE185E5
	.4byte 0x5A8FE78A
	.4byte 0x91FBC093
	.4byte 0xE85495E8
	.4byte 0x929C92B9
	.4byte 0x9EEA7CFF
	.4byte 0x818F0061
	.4byte 0x00308386
	.4byte 0x518F8852
	.4byte 0x99A9549A
	.4byte 0x47598AAD
	.4byte 0x5A9B625B
	.4byte 0x9B895D8D
	.4byte 0xB6619CED
	.4byte 0x648E4365
	.4byte 0x9255669E
	.4byte 0x466D9FBE
	.4byte 0x718E5774
	.4byte 0x8AA27990
	.4byte 0x607AE290
	.4byte 0x7BE2C27F
	.4byte 0xE3C6828B
	.4byte 0xEA899047
	.4byte 0x8A92FA8C
	.4byte 0x958A8F89
	.4byte 0xDE919674
	.4byte 0x9AE9989D
	.4byte 0xEA5B0063
	.4byte 0x00308387
	.4byte 0x50916D51
	.4byte 0x91FA528A
	.4byte 0xA95B944A
	.4byte 0x5D8D4960
	.4byte 0x9C9C649D
	.4byte 0xA7658B8C
	.4byte 0x679E7668
	.4byte 0x9EA0699E
	.4byte 0xDF71E09C
	.4byte 0x74E14276
	.4byte 0xE1B87794
	.4byte 0x8A78E240
	.4byte 0x79E25E7A
	.4byte 0xFB857C97
	.4byte 0xC681E468
	.4byte 0x82929789
	.4byte 0xE65A8AE6
	.4byte 0x7E918BFA
	.4byte 0x92FBCF9C
	.4byte 0xE9E80065
	.4byte 0x00308388
	.4byte 0x5399D954
	.4byte 0x8FA3599B
	.4byte 0x485B9ECB
	.4byte 0x5C89E35D
	.4byte 0x8B905E9C
	.4byte 0x47608E53
	.4byte 0x658E7C69
	.4byte 0x9ED86A94
	.4byte 0xA56C928D
	.4byte 0x6D9FC478
	.4byte 0x96817D95
	.4byte 0xD28197D5
	.4byte 0x88E5E98D
	.4byte 0x8CD79095
	.4byte 0x9493E853
	.4byte 0x96894A9B
	.4byte 0x8C7E9EEA
	.4byte 0x7D006500
	.4byte 0x30838951
	.4byte 0x997D5392
	.4byte 0x40549689
	.4byte 0x5A9B635B
	.4byte 0x90525C9B
	.4byte 0xB45E9C48
	.4byte 0x639D8265
	.4byte 0x9181669E
	.4byte 0x47679E6C
	.4byte 0x728EEB74
	.4byte 0xE1437591
	.4byte 0x89778BE9
	.4byte 0x7992817B
	.4byte 0xE2BF7D8A
	.4byte 0xC97FE3C7
	.4byte 0x8395EC85
	.4byte 0x94CB86E5
	.4byte 0x7D8F93F4
	.4byte 0x92E7F898
	.4byte 0xE94A9C94
	.4byte 0xB5006500
	.4byte 0x30838A51
	.4byte 0x93E25391
	.4byte 0xFC5996C3
	.4byte 0x5C9BB96A
	.4byte 0x9F4D6C9F
	.4byte 0xA36D9FCB
	.4byte 0x738C5D76
	.4byte 0xE1B97A92
	.4byte 0x47818EA9
	.4byte 0x85E54D8C
	.4byte 0x8EBF8DE6
	.4byte 0xEC8FE78C
	.4byte 0x9295DD96
	.4byte 0x90E19A94
	.4byte 0xAF006500
	.4byte 0x30838B53
	.4byte 0x8BA9588E
	.4byte 0x6D599550
	.4byte 0x5B9B8D5D
	.4byte 0x9BDE5F89
	.4byte 0xF5699EE5
	.4byte 0x6B9F7C6D
	.4byte 0x88FA6F97
	.4byte 0x947AFB87
	.4byte 0x7F8AE382
	.4byte 0x93CF83E4
	.4byte 0xBF8AE67C
	.4byte 0x8DE6ED8E
	.4byte 0xE7668F94
	.4byte 0x97968EB4
	.4byte 0x98E94B9A
	.4byte 0xE99A9CE9
	.4byte 0xED006900
	.4byte 0x30838C51
	.4byte 0xFA83538F
	.4byte 0xA2589070
	.4byte 0x5BFAAA5E
	.4byte 0x9C49628A
	.4byte 0x87648B5B
	.4byte 0x658F7B67
	.4byte 0x9E6A6B9F
	.4byte 0x7B6D9FC1
	.4byte 0x6E9FF46F
	.4byte 0xE05C71E0
	.4byte 0x9B7293C6
	.4byte 0x78E1FC79
	.4byte 0xE25F7D96
	.4byte 0xC9849648
	.4byte 0x86E57E9C
	.4byte 0xE9E90069
	.4byte 0x0030838D
	.4byte 0x4E98BF50
	.4byte 0x99475199
	.4byte 0x7E5399DA
	.4byte 0x549A4C5C
	.4byte 0x9BB76290
	.4byte 0x406588AE
	.4byte 0x699EE371
	.4byte 0x9043728B
	.4byte 0xB77394C7
	.4byte 0x77925A7A
	.4byte 0xE2917B98
	.4byte 0x55818F4C
	.4byte 0x8695678A
	.4byte 0x97408C93
	.4byte 0x718F9352
	.4byte 0x908A7391
	.4byte 0xFBBD9289
	.4byte 0x7397E8EA
	.4byte 0x9899AA99
	.4byte 0xE96E9A95
	.4byte 0x459DEA5C
	.4byte 0x00690030
	.4byte 0x838E4E89
	.4byte 0xBC4F8F43
	.4byte 0x50994953
	.4byte 0x99D8549A
	.4byte 0x4B569A99
	.4byte 0x5891735B
	.4byte 0x97BE5D8D
	.4byte 0xB7629D68
	.4byte 0x638AF667
	.4byte 0x9E726890
	.4byte 0x586D9FCC
	.4byte 0x6FE06071
	.4byte 0x99D773E0
	.4byte 0xE174E144
	.4byte 0x7696DA77
	.4byte 0xE1E28498
	.4byte 0x408694D8
	.4byte 0x8A8E9091
	.4byte 0xFBBE9794
	.4byte 0x42989F5A
	.4byte 0x99E96F9A
	.4byte 0xE99B0069
	.4byte 0x002581FC
	.4byte 0x30838F4F
	.4byte 0x98EB5389
	.4byte 0xC2589AE1
	.4byte 0x5C95F562
	.4byte 0x9D6D649D
	.4byte 0xAD679E68
	.4byte 0x689EAA6B
	.4byte 0x9F7E6C9F
	.4byte 0xA16E9FFA
	.4byte 0x6F91F377
	.4byte 0x8BB87888
	.4byte 0xE97A925B
	.4byte 0x7CE2F77D
	.4byte 0x88DC80E3
	.4byte 0xF68389D8
	.4byte 0x86E58287
	.4byte 0xE5B28D98
	.4byte 0x488FE78D
	.4byte 0x9894D19A
	.4byte 0xE9999DEA
	.4byte 0x5D9EEA7E
	.4byte 0x00640030
	.4byte 0x83904E8B
	.4byte 0xC2519980
	.4byte 0x5391E456
	.4byte 0x8DA25890
	.4byte 0xBA5B9B8E
	.4byte 0x5C95F45E
	.4byte 0x9C4C5F9C
	.4byte 0xAB6091C4
	.4byte 0x669E486C
	.4byte 0x91D774E1
	.4byte 0x4675E182
	.4byte 0x798FCC7A
	.4byte 0xE2927F8A
	.4byte 0xCB838CD4
	.4byte 0x8CFBAD8F
	.4byte 0x8F719695
	.4byte 0xB59BE9CE
	.4byte 0x9CE9EAF8
	.4byte 0xA000006E
	.4byte 0x00308391
	.4byte 0x518A4D53
	.4byte 0x8EB65888
	.4byte 0xEB5D8CC8
	.4byte 0x5E9C4A5F
	.4byte 0x9C79609C
	.4byte 0xBB629D69
	.4byte 0x649DA665
	.4byte 0x9DDB6792
	.4byte 0x8C6C9F96
	.4byte 0x6D905B6F
	.4byte 0xE05F70E0
	.4byte 0x7773E0FC
	.4byte 0x74E14780
	.4byte 0xE3F78289
	.4byte 0x70839548
	.4byte 0x8AE68199
	.4byte 0xE9709AE9
	.4byte 0x9D9BE9CD
	.4byte 0xF8FD0000
	.4byte 0x6F003083
	.4byte 0x924E9287
	.4byte 0x528C4D53
	.4byte 0x8E6A5493
	.4byte 0x4E5688CD
	.4byte 0x5894845D
	.4byte 0x9BDF60FA
	.4byte 0xC26192A6
	.4byte 0x649DB166
	.4byte 0x8BC86890
	.4byte 0xB1699EDE
	.4byte 0x6DFB446E
	.4byte 0x9FF874E1
	.4byte 0x4575E184
	.4byte 0x7696D37C
	.4byte 0xE2F87DE3
	.4byte 0x6C83E4C9
	.4byte 0x87E5B388
	.4byte 0xE5EA9295
	.4byte 0x6596895F
	.4byte 0x97E8EC98
	.4byte 0x88F999E9
	.4byte 0x719BE9CC
	.4byte 0x9D9868F8
	.4byte 0xFE00006F
	.4byte 0x00308393
	.4byte 0x4F946F52
	.4byte 0x99AC5389
	.4byte 0x4556907D
	.4byte 0x5B9B905D
	.4byte 0x96A45E9C
	.4byte 0x4B60917A
	.4byte 0x628C9D66
	.4byte 0x89676796
	.4byte 0xF66B9F7D
	.4byte 0x6C896A6D
	.4byte 0x8F7E6FE0
	.4byte 0x4A75E185
	.4byte 0x7790CE7B
	.4byte 0xE2C87FE3
	.4byte 0xC8818E8A
	.4byte 0x82E49488
	.4byte 0x8FD68AE6
	.4byte 0x7D8D92B5
	.4byte 0x92929297
	.4byte 0x89B99C96
	.4byte 0x50F8FF00
	.4byte 0x006F0030
	.4byte 0x839450FA
	.4byte 0x7C578FFB
	.4byte 0x5D94625E
	.4byte 0x9C4D609C
	.4byte 0xB6619CF1
	.4byte 0x63898764
	.4byte 0x9DB0668D
	.4byte 0x58678EC4
	.4byte 0x6E934875
	.4byte 0x92737692
	.4byte 0xBC78E243
	.4byte 0x7CE2F97D
	.4byte 0x97FB8093
	.4byte 0xB7819276
	.4byte 0x82E49383
	.4byte 0xE4BD84E4
	.4byte 0xF188E5E8
	.4byte 0x89E65B8C
	.4byte 0xFBAE8FE7
	.4byte 0x8F9888B9
	.4byte 0x9AE99C9C
	.4byte 0x96C29EEA
	.4byte 0x80006F00
	.4byte 0x3083954F
	.4byte 0x95555099
	.4byte 0x4B519981
	.4byte 0x5299AD5B
	.4byte 0x929E5CFA
	.4byte 0xAE5D9BE0
	.4byte 0x5F944F62
	.4byte 0x9D6E63FA
	.4byte 0xC9669E49
	.4byte 0x678DF26D
	.4byte 0x95A36FFB
	.4byte 0x4D71E09D
	.4byte 0x73FB6688
	.4byte 0xFBA28D91
	.4byte 0x48909758
	.4byte 0x91E7DE97
	.4byte 0xE8EF9B88
	.4byte 0xB1006F00
	.4byte 0x3083964E
	.4byte 0x8C8F4F98
	.4byte 0xE6518BA5
	.4byte 0x538A9059
	.4byte 0x88A65B9B
	.4byte 0x8F5C9387
	.4byte 0x5E898460
	.4byte 0x9CB3619C
	.4byte 0xEF628E41
	.4byte 0x639D8864
	.4byte 0x9DAF6FE8
	.4byte 0x89749572
	.4byte 0x7A8BA37B
	.4byte 0xE2CC7CE2
	.4byte 0xFA83FB97
	.4byte 0x87E5B88A
	.4byte 0xFBAA91E7
	.4byte 0xDF9697EB
	.4byte 0x97E8EE9C
	.4byte 0x93CE9EEA
	.4byte 0x81008180
	.4byte 0x4E98C153
	.4byte 0x8D86559A
	.4byte 0x72578EB7
	.4byte 0x5892D95D
	.4byte 0x8D4A5E92
	.4byte 0xEC609CB4
	.4byte 0x619CE562
	.4byte 0x8D89669E
	.4byte 0x4A6D8DAC
	.4byte 0x6EE04272
	.4byte 0xE0C474E1
	.4byte 0x497BE2C9
	.4byte 0x83E4C685
	.4byte 0x8F9387E5
	.4byte 0xB98AE685
	.4byte 0x8F96C090
	.4byte 0x8BBD9697
	.4byte 0x8B9AE99E
	.4byte 0x9EEA8200
	.4byte 0x6F004F95
	.4byte 0xEE5193CA
	.4byte 0x5299AE53
	.4byte 0x8E695B90
	.4byte 0xA15E9C4E
	.4byte 0x5F9C7861
	.4byte 0x8C9C668F
	.4byte 0x916DFB43
	.4byte 0x6E9FF572
	.4byte 0x924B73E0
	.4byte 0xE774E148
	.4byte 0x76918A7A
	.4byte 0x995E7C8E
	.4byte 0x85808BB9
	.4byte 0x8691FB88
	.4byte 0x978789E6
	.4byte 0x5C8A8F94
	.4byte 0x8E8EB28F
	.4byte 0xE79E928B
	.4byte 0x9893FBE4
	.4byte 0x99E9739D
	.4byte 0xEA5A0075
	.4byte 0x0050994A
	.4byte 0x51899A52
	.4byte 0x99AF559A
	.4byte 0x77569A9A
	.4byte 0x57947C58
	.4byte 0x9AE3608E
	.4byte 0xE4669182
	.4byte 0x689EA869
	.4byte 0x9EDD6D9F
	.4byte 0xB9709642
	.4byte 0x71E09F72
	.4byte 0xE0C37A92
	.4byte 0x7C7FE3C9
	.4byte 0x82E49985
	.4byte 0xE55C86E5
	.4byte 0x8C878A49
	.4byte 0x88E5E58F
	.4byte 0xE79192FA
	.4byte 0x6596E8B9
	.4byte 0x9D91E99E
	.4byte 0xEA830075
	.4byte 0x004F89B4
	.4byte 0x518F6F52
	.4byte 0x8ED95399
	.4byte 0xDB549A4D
	.4byte 0x568CC557
	.4byte 0x8AEE589A
	.4byte 0xE25A9B65
	.4byte 0x5B8E9B5C
	.4byte 0x9BB65E8C
	.4byte 0x9A609CB7
	.4byte 0x619CF063
	.4byte 0x9768649D
	.4byte 0xB26589A0
	.4byte 0x66FADE68
	.4byte 0x8ABB6A9F
	.4byte 0x516D9FC7
	.4byte 0x6FE06475
	.4byte 0xE1837A8E
	.4byte 0xB17CE2FB
	.4byte 0x81E46982
	.4byte 0xE49585E5
	.4byte 0x618A8CBF
	.4byte 0x8CE6CF8F
	.4byte 0xE79292E7
	.4byte 0xFA9D8DEB
	.4byte 0x00750030
	.4byte 0x81454E94
	.4byte 0x435095C6
	.4byte 0x589AE459
	.4byte 0x88F75A9B
	.4byte 0x665C8F73
	.4byte 0x5D8AAA5E
	.4byte 0x89F45F9C
	.4byte 0x76609CBA
	.4byte 0x659DDF66
	.4byte 0xFA66678D
	.4byte 0xB86992CE
	.4byte 0x6A9F4E6D
	.4byte 0x935971E0
	.4byte 0x8E76E1BB
	.4byte 0x7988DA7C
	.4byte 0x8C6E7DE3
	.4byte 0x6B7F967C
	.4byte 0x81E46A82
	.4byte 0xE49883E4
	.4byte 0xD0859194
	.4byte 0x86E58887
	.4byte 0x8B618CE6
	.4byte 0xD08EE765
	.4byte 0x92FBD996
	.4byte 0x93649789
	.4byte 0x4399E972
	.4byte 0x9AE99F9E
	.4byte 0xEA840075
	.4byte 0x0030815B
	.4byte 0x4EFA6A57
	.4byte 0x8DE9589A
	.4byte 0xE55E9455
	.4byte 0x619CF466
	.4byte 0x99D66DFB
	.4byte 0x4571E09E
	.4byte 0x72985475
	.4byte 0xE18077E1
	.4byte 0xE37F9783
	.4byte 0x80E44581
	.4byte 0x895084E4
	.4byte 0xF888E5E7
	.4byte 0x8C8D778D
	.4byte 0xE6F08EE7
	.4byte 0x6491E7DD
	.4byte 0x928D7C98
	.4byte 0x8E949EEA
	.4byte 0x85007900
	.4byte 0x30815251
	.4byte 0x949F549A
	.4byte 0x4A559A75
	.4byte 0x568D9158
	.4byte 0x9AE65C9B
	.4byte 0xB55D9246
	.4byte 0x5F8D9A61
	.4byte 0x9CF3649D
	.4byte 0xB466915D
	.4byte 0x69918570
	.4byte 0xE0827294
	.4byte 0x8278E242
	.4byte 0x80945C83
	.4byte 0xE4C18890
	.4byte 0xBB8CE6CE
	.4byte 0x8E8C798F
	.4byte 0x92C79093
	.4byte 0x7398964F
	.4byte 0x9DEA5E9E
	.4byte 0xEA860074
	.4byte 0x00308153
	.4byte 0x4F98EA51
	.4byte 0x9982528C
	.4byte 0xF9559A74
	.4byte 0x5B91CE5D
	.4byte 0x8BD05E9C
	.4byte 0x4F619CF5
	.4byte 0x628F4564
	.4byte 0x8FEF6691
	.4byte 0x5C67968F
	.4byte 0x6E9FF66F
	.4byte 0xE06871FB
	.4byte 0x5A738CBB
	.4byte 0x75E17D76
	.4byte 0x8F827C8B
	.4byte 0x8A81E46B
	.4byte 0x85E56086
	.4byte 0x89E987E5
	.4byte 0xB788909E
	.4byte 0x8A91F88E
	.4byte 0xE767988F
	.4byte 0xFC007900
	.4byte 0x4FFA7652
	.4byte 0x96DC54FA
	.4byte 0x94569A9C
	.4byte 0x598E705B
	.4byte 0x8EF55E93
	.4byte 0xF95F9C7C
	.4byte 0x619CF262
	.4byte 0x9D5C6691
	.4byte 0xD6678A60
	.4byte 0x699EDB6E
	.4byte 0x9FDE71E0
	.4byte 0xA075E17E
	.4byte 0x7A8AC684
	.4byte 0xE4F08DE6
	.4byte 0xF391E7E1
	.4byte 0x92FBDC97
	.4byte 0x8BBF998F
	.4byte 0x78000000
	.4byte 0


.global lbl_80518468
lbl_80518468:
	# ROM: 0x514568
	.4byte 0x001B0039
	.4byte 0x00560075
	.4byte 0x008F00AB
	.4byte 0x00CC00E9
	.4byte 0x0107012B
	.4byte 0x014B016B
	.4byte 0x018501A4
	.4byte 0x01C201E2
	.4byte 0x02010221
	.4byte 0x02410262
	.4byte 0x028502A6
	.4byte 0x02C802E5
	.4byte 0x03040324
	.4byte 0x03450367
	.4byte 0x038303A0
	.4byte 0x03BB03E0
	.4byte 0x03FC0421
	.4byte 0x04380451
	.4byte 0x04650482
	.4byte 0x04A004BB
	.4byte 0x04D804F4
	.4byte 0x05170539
	.4byte 0x0558056E
	.4byte 0x058605A2
	.4byte 0x05BC05D6
	.4byte 0x05F40609
	.4byte 0x0624063B
	.4byte 0x065C0677
	.4byte 0x069D06BB
	.4byte 0x06D906FC
	.4byte 0x07160730
	.4byte 0x07530772
	.4byte 0x078F07AC
	.4byte 0x07C907E2
	.4byte 0x07FD0818
	.4byte 0x083B0854
	.4byte 0x08730893
	.4byte 0x08AD08CC
	.4byte 0x08ED0910
	.4byte 0x093C0959
	.4byte 0x097B0998
	.4byte 0x09B109C8
	.4byte 0x09E30A04
	.4byte 0x0A1E0A3C
	.4byte 0x0A580A77
	.4byte 0x0A960AB0
	.4byte 0x0ACF0AE8
	.4byte 0x0B060B26
	.4byte 0x0B430B5D
	.4byte 0x0B870BA8
	.4byte 0x0BC70BE1
	.4byte 0x0C020C1C
	.4byte 0x0C370C59
	.4byte 0x0C7B0C9D
	.4byte 0x0CB80CCC
	.4byte 0x0CE50D05
	.4byte 0x0D2B0D45
	.4byte 0x0D660D85
	.4byte 0x0DA40DC3
	.4byte 0x0DE10E03
	.4byte 0x0E220E3A
	.4byte 0x0E500E5E
	.4byte 0x0E760E8D
	.4byte 0x0EA80EC5
	.4byte 0x0EDE0EF5
	.4byte 0x0F140F34
	.4byte 0x0F4E0F65
	.4byte 0x0F790F98
	.4byte 0x0FB20FCF
	.4byte 0x0FF0100F
	.4byte 0x10281042
	.4byte 0x105B1074
	.4byte 0x108910A4
	.4byte 0x10C010DF
	.4byte 0x10F91110
	.4byte 0x112E1149
	.4byte 0x11641180
	.4byte 0x119C11B6
	.4byte 0x11D411ED
	.4byte 0x1202121B
	.4byte 0x12391250
	.4byte 0x126B1283
	.4byte 0x129C12B5
	.4byte 0x12CE12E7
	.4byte 0x13081323
	.4byte 0x13411364
	.4byte 0x138413A3
	.4byte 0x13C213E1
	.4byte 0x13FD1419
	.4byte 0x143B145E
	.4byte 0x147A1492
	.4byte 0x14AB14BF
	.4byte 0x14DE1502
	.4byte 0x151F153C
	.4byte 0x155B1576
	.4byte 0x159215A9
	.4byte 0x15C315E4
	.4byte 0x1600161D
	.4byte 0x163F165E
	.4byte 0x168416A4
	.4byte 0x16BB16DB
	.4byte 0x16F91718
	.4byte 0x17331754
	.4byte 0x176D1789
	.4byte 0x17A117BE
	.4byte 0x17DF17F9
	.4byte 0x1817182F
	.4byte 0x184B1861
	.4byte 0x188218A0
	.4byte 0x18BD18E0
	.4byte 0x1901191F
	.4byte 0x193E1960
	.4byte 0x198119A7
	.4byte 0x19C619EB
	.4byte 0x1A081A26
	.4byte 0x1A421A5E
	.4byte 0x1A771A93
	.4byte 0x1AA71ABF
	.4byte 0x1AD61AF4
	.4byte 0x1B121B30
	.4byte 0x1B4A1B65
	.4byte 0x1B861BA4
	.4byte 0x1BC31BDB
	.4byte 0x1BF71C11
	.4byte 0x1C2E1C4A
	.4byte 0x1C6C1C92
	.4byte 0x1CAB1CC6
	.4byte 0x1CE31CFB


.global lbl_80518668
lbl_80518668:
	# ROM: 0x514768
	.float 1.0
	.4byte 0


.global lbl_80518670
lbl_80518670:
	# ROM: 0x514770
	.4byte 0
	.4byte 0xFF0000FF
	.float 0.5
	.float 1.0


.global lbl_80518680
lbl_80518680:
	# ROM: 0x514780
	.float 1.0


.global lbl_80518684
lbl_80518684:
	# ROM: 0x514784
	.4byte 0xC61C4000


.global lbl_80518688
lbl_80518688:
	# ROM: 0x514788
	.4byte 0xC66A6000


.global lbl_8051868C
lbl_8051868C:
	# ROM: 0x51478C
	.float 10.0


.global lbl_80518690
lbl_80518690:
	.asciz "wt\\HomeButtonSe.wt"
	.balign 4


.global lbl_805186A4
lbl_805186A4:
	.asciz "wt\\HomeButtonSe.pcm"
	.4byte 0
	.float 10.0
	.4byte 0x41A00000
	.4byte 0


.global lbl_805186C8
lbl_805186C8:
	# ROM: 0x5147C8
	.4byte 0x000000FF
	.4byte 0


.global lbl_805186D0
lbl_805186D0:
	# ROM: 0x5147D0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000001


.global lbl_80518730
lbl_80518730:
	# ROM: 0x514830
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x00000013
	.4byte 0x00000005
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000014
	.4byte 0x00000006
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x00000007
	.4byte 0x00000009
	.4byte 0x00000004
	.4byte 0x00000009
	.4byte 0x00000007
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x0000000A
	.4byte 0x00000007
	.4byte 0x0000000B
	.4byte 0x00000005
	.4byte 0x0000000C
	.4byte 0x00000005
	.4byte 0x0000000D
	.4byte 0x00000006
	.4byte 0x0000000D
	.4byte 0x00000008
	.4byte 0x0000000E
	.4byte 0x0000000E
	.4byte 0x0000000E
	.4byte 0x00000006
	.4byte 0x0000000E
	.4byte 0x00000008
	.4byte 0x0000000F
	.4byte 0x00000005
	.4byte 0x00000010
	.4byte 0x00000006
	.4byte 0x00000010
	.4byte 0x0000000E
	.4byte 0x00000011
	.4byte 0x0000000B
	.4byte 0x00000011
	.4byte 0x0000000C
	.4byte 0x00000012
	.4byte 0x0000000B
	.4byte 0x00000012
	.4byte 0x0000000C
	.4byte 0x00000013
	.4byte 0x0000000D
	.4byte 0x00000014
	.4byte 0x0000000D
	.4byte 0x00000015
	.4byte 0x00000009
	.4byte 0x00000015
	.4byte 0x0000000A
	.4byte 0x00000016
	.4byte 0x00000009
	.4byte 0x00000016
	.4byte 0x0000000A
	.4byte 0x00000017
	.4byte 0x00000009
	.4byte 0x00000017
	.4byte 0x0000000A
	.4byte 0x00000018
	.4byte 0x00000009
	.4byte 0x00000018
	.4byte 0x0000000A
	.4byte 0x00000019
	.4byte 0x00000009
	.4byte 0x00000019
	.4byte 0x0000000A
	.4byte 0x0000001A
	.4byte 0x00000009
	.4byte 0x0000001A
	.4byte 0x0000000A
	.4byte 0x0000001B
	.4byte 0x00000009
	.4byte 0x0000001B
	.4byte 0x0000000A
	.4byte 0x0000001C
	.4byte 0x00000009
	.4byte 0x0000001C
	.4byte 0x0000000A
	.4byte 0x0000001D
	.4byte 0x00000009
	.4byte 0x0000001D
	.4byte 0x0000000A
	.4byte 0x0000001E
	.4byte 0x00000009
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0x0000001F
	.4byte 0x0000000F
	.4byte 0x0000001F
	.4byte 0x00000010
	.4byte 0x0000001F
	.4byte 0x00000011
	.4byte 0x0000001F
	.4byte 0x00000012
	.4byte 0x0000001F
	.4byte 0x00000015
	.4byte 0x00000020
	.4byte 0x0000000F
	.4byte 0x00000020
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x00000011
	.4byte 0x00000020
	.4byte 0x00000012
	.4byte 0x00000020
	.4byte 0x00000015
	.4byte 0x00000021
	.4byte 0x0000000F
	.4byte 0x00000021
	.4byte 0x00000010
	.4byte 0x00000021
	.4byte 0x00000011
	.4byte 0x00000021
	.4byte 0x00000012
	.4byte 0x00000021
	.4byte 0x00000015
	.4byte 0x00000022
	.4byte 0x0000000F
	.4byte 0x00000022
	.4byte 0x00000010
	.4byte 0x00000022
	.4byte 0x00000011
	.4byte 0x00000022
	.4byte 0x00000012
	.4byte 0x00000022
	.4byte 0x00000015
	.4byte 0x00000E10
	.4byte 0x00000DF2
	.4byte 0x00000005
	.4byte 0x00000064
	.4byte 0x00000002
	.4byte 0x40400000
	.4byte 0x41100000
	.4byte 0x0000001E
	.4byte 0x000000B4
	.4byte 0x3F99999A
	.4byte 0


.global lbl_805189AC
lbl_805189AC:
	# ROM: 0x514AAC
	.float 1.0
	.4byte 0x43300000
	.4byte 0
	.4byte 0x45610000
	.4byte 0x455F2000


.global lbl_805189C0
lbl_805189C0:
	# ROM: 0x514AC0
	.4byte 0xC47A0000
	.4byte 0xC61C4000
	.4byte 0x41F00000
	.4byte 0x3F666666
	.4byte 0x3DA14285
	.float 10.0
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0x40200000
	.float 0.5
	.4byte 0x41100000
	.4byte 0x43340000
	.4byte 0x47000000
	.4byte 0x414B3333


.global lbl_805189F8
lbl_805189F8:
	# ROM: 0x514AF8
	.4byte 0x447A0000
	.4byte 0x40A00000
	.4byte 0x41700000
	.4byte 0x3FB40000
	.4byte 0x44180000
	.4byte 0x43E40000
	.4byte 0xC3340000
	.4byte 0x40400000
	.4byte 0x00060000
	.4byte 0x0006F800
	.4byte 0x00000004
	.4byte 0x00000003


.global lbl_80518A28
lbl_80518A28:
	# ROM: 0x514B28
	.4byte 0xBA83126F


.global lbl_80518A2C
lbl_80518A2C:
	# ROM: 0x514B2C
	.4byte 0x3A83126F
	.float 1.0
	.4byte 0x40000000
	.4byte 0x40400000
	.4byte 0xC0000000


.global lbl_80518A40
lbl_80518A40:
	# ROM: 0x514B40
	.4byte 0


.global lbl_80518A44
lbl_80518A44:
	# ROM: 0x514B44
	.float 0.5


.global lbl_80518A48
lbl_80518A48:
	# ROM: 0x514B48
	.4byte 0


.global lbl_80518A4C
lbl_80518A4C:
	# ROM: 0x514B4C
	.float 1.0


.global lbl_80518A50
lbl_80518A50:
	# ROM: 0x514B50
	.4byte 0x43300000
	.4byte 0


.global lbl_80518A58
lbl_80518A58:
	# ROM: 0x514B58
	.4byte 0


.global lbl_80518A5C
lbl_80518A5C:
	# ROM: 0x514B5C
	.float 1.0


.global lbl_80518A60
lbl_80518A60:
	# ROM: 0x514B60
	.4byte 0


.global lbl_80518A64
lbl_80518A64:
	# ROM: 0x514B64
	.float 0.5


.global lbl_80518A68
lbl_80518A68:
	# ROM: 0x514B68
	.4byte 0
	.4byte 0
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.float 0.5


.global lbl_80518A7C
lbl_80518A7C:
	# ROM: 0x514B7C
	.4byte 0x3F360B61


.global lbl_80518A80
lbl_80518A80:
	# ROM: 0x514B80
	.4byte 0


.global lbl_80518A84
lbl_80518A84:
	# ROM: 0x514B84
	.float 1.0
	.4byte 0x40000000
	.4byte 0


.global lbl_80518A90
lbl_80518A90:
	# ROM: 0x514B90
	.4byte 0x43300000
	.4byte 0


.global lbl_80518A98
lbl_80518A98:
	# ROM: 0x514B98
	.4byte 0
	.float 1.0
	.4byte 0x3C8EFA35
	.4byte 0x3B808081
	.4byte 0x43300000
	.4byte 0


.global lbl_80518AB0
lbl_80518AB0:
	# ROM: 0x514BB0
	.float 0.5
	.4byte 0x3B808081


.global lbl_80518AB8
lbl_80518AB8:
	# ROM: 0x514BB8
	.4byte 0
	.4byte 0


.global lbl_80518AC0
lbl_80518AC0:
	# ROM: 0x514BC0
	.4byte 0
	.4byte 0


.global lbl_80518AC8
lbl_80518AC8:
	# ROM: 0x514BC8
	.4byte 0x43300000
	.4byte 0x80000000
	.float 0.5
	.float 1.0


.global lbl_80518AD8
lbl_80518AD8:
	# ROM: 0x514BD8
	.4byte 0
	.4byte 0


.global lbl_80518AE0
lbl_80518AE0:
	# ROM: 0x514BE0
	.4byte 0x43300000
	.4byte 0


.global lbl_80518AE8
lbl_80518AE8:
	# ROM: 0x514BE8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80518AF0
lbl_80518AF0:
	# ROM: 0x514BF0
	.4byte 0x47800000


.global lbl_80518AF4
lbl_80518AF4:
	# ROM: 0x514BF4
	.4byte 0
	.float 1.0
	.4byte 0x42000000
	.4byte 0x42800000
	.float -1.0
	.4byte 0xC2800000
	.4byte 0x43000000
	.4byte 0xC3000000
	.4byte 0


.global lbl_80518B18
lbl_80518B18:
	# ROM: 0x514C18
	.4byte 0


.global lbl_80518B1C
lbl_80518B1C:
	# ROM: 0x514C1C
	.float 1.0


.global lbl_80518B20
lbl_80518B20:
	# ROM: 0x514C20
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80518B28
lbl_80518B28:
	# ROM: 0x514C28
	.float 0.5
	.4byte 0


.global lbl_80518B30
lbl_80518B30:
	# ROM: 0x514C30
	.4byte 0x43300000
	.4byte 0


.global lbl_80518B38
lbl_80518B38:
	# ROM: 0x514C38
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80518B40
lbl_80518B40:
	# ROM: 0x514C40
	.4byte 0
	.4byte 0


.global lbl_80518B48
lbl_80518B48:
	# ROM: 0x514C48
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80518B50
lbl_80518B50:
	# ROM: 0x514C50
	.float 0.5
	.4byte 0


.global lbl_80518B58
lbl_80518B58:
	# ROM: 0x514C58
	.4byte 0x40000000
	.4byte 0
	.4byte 0x4C960000
	.4byte 0x447A0000
	.4byte 0x4C95FF6A
	.4byte 0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80518B78
lbl_80518B78:
	# ROM: 0x514C78
	.float 1.0


.global lbl_80518B7C
lbl_80518B7C:
	# ROM: 0x514C7C
	.4byte 0x46FA0000


.global lbl_80518B80
lbl_80518B80:
	# ROM: 0x514C80
	.4byte 0x43300000
	.4byte 0


.global lbl_80518B88
lbl_80518B88:
	# ROM: 0x514C88
	.4byte 0x47800000
	.4byte 0


.global lbl_80518B90
lbl_80518B90:
	# ROM: 0x514C90
	.4byte 0x49742400
	.4byte 0x47800000
	.4byte 0x42C00000
	.4byte 0x46FA0000
	.4byte 0x43300000
	.4byte 0
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0x467A0000
	.4byte 0

.global lbl_80518BB8
lbl_80518BB8:
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0
	.4byte 0


.global lbl_80518BC8
lbl_80518BC8:
	# ROM: 0x514CC8
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFF9A
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFF99
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFF8E
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFF97
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFF8C
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFF9B
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFF94
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFFF93
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFF95
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFFF92
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFF96
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFF8D
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFF98
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFF91
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFF8B
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFF8A
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFF89
	.4byte 0xFFFFFF80
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFEF
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFEE
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFED
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFEB
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFEA
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFE9
	.4byte 0xFFFFFFC0


.global lbl_80518D10
lbl_80518D10:
	# ROM: 0x514E10
	.4byte 0x0000CC01
	.4byte 0xD8011400
	.4byte 0xF0013C00
	.4byte 0x2800E401
	.4byte 0xA0016C00
	.4byte 0x7800B401
	.4byte 0x50009C01
	.4byte 0x88014400


.global lbl_80518D30
lbl_80518D30:
	.asciz "/shared2/sys"
	.balign 4


.global lbl_80518D40
lbl_80518D40:
	.asciz "/shared2/sys/SYSCONF"
	.balign 4


.global lbl_80518D58
lbl_80518D58:
	.asciz "/title/00000001/00000002/data/setting.txt"
	.balign 4
	.4byte 0

.global lbl_80518D88
lbl_80518D88:
	.4byte 0x3FECC000
	.4byte 0
	.4byte 0x3FECC000
	.4byte 0
	.4byte 0x3FECC000
	.4byte 0
	.4byte 0x3FECC000
	.4byte 0
	.4byte 0x3FF33000
	.4byte 0
	.4byte 0x3FF99000
	.4byte 0
	.4byte 0x40000000
	.4byte 0
	.4byte 0x40033000
	.4byte 0


.global lbl_80518DC8
lbl_80518DC8:
	# ROM: 0x514EC8
	.4byte 0x02000071
	.4byte 0x01006400
	.4byte 0xFE020000
	.4byte 0x71010096
	.4byte 0x00B40200
	.4byte 0x00710100
	.4byte 0xAA006402
	.4byte 0x00007101
	.4byte 0x00C80036
	.4byte 0x07000071
	.4byte 0x01007200
	.4byte 0x20000000


.global lbl_80518DF8
lbl_80518DF8:
	# ROM: 0x514EF8
	.4byte 0xFD05B304
	.4byte 0x63033503
	.4byte 0x1F030000
	.4byte 0


.global lbl_80518E08
lbl_80518E08:
	# ROM: 0x514F08
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF000000


.global lbl_80518E20
lbl_80518E20:
	.asciz "\nADXF/WII Ver.7.71 Build:Nov 13 2008 10:52:48\n"
	.asciz "Append: MW4199 WII30Jul2008Patch02\n"
	.balign 4
	.4byte 0


.global lbl_80518E78
lbl_80518E78:
	.asciz "E9040801:partition ID is range outside.(adxf_ChkPrmPt)"
	.asciz "E9040802:'ptinfo' is NULL.(adxf_ChkPrmPt)"
	.asciz "E20040917 : It is impossible to load AFS files in parallel."
	.asciz "E2005121504 : NULL pointer is passed."
	.asciz "E1110701:'tmpbuf' is null.(load partition)"
	.asciz "E1110702:'tbsize' <= 0.(load partition)"
	.asciz "E0042401:multi-load partition.(load partition)"
	.asciz "E9040804:can't open file.(load partition)"
	.asciz "E9040832:'adxf' is NULL.(adxf_GetStat)"
	.asciz "E0041303:illigal parameter 'ptid'.(adxf_GetPtStat)"
	.asciz "E0120401:'buf' isn't 32byte alignment.(adxf_ReadNw)"
	.asciz "AFS"
	.asciz "E0040701:Unacceptable format(not AFS).(adxf_GetPtStat)"
	.asciz "E0040702:Unacceptable number of file.(adxf_GetPtStat)"
	.asciz "E2122501:AFS file has 128MB or more of inside file.(adxf_GetPtStat)"
	.asciz "E04041201:not enough ADXF handle (adxf_CreateAdxFs)"
	.asciz "E02111001:can't create stm handle (adxf_CreateAdxFs)"
	.asciz "E9081901:illigal parameter fname=null.(adxf_SetFileInfoEx)"
	.asciz "E9040828:'adxf' is NULL.(adxf_GetFsizeSct)"
	.asciz "E2005121501 : NULL pointer is passed."
	.asciz "E2005121502 : NULL pointer is passed."
	.asciz "E2005121503 : NULL pointer is passed."
	.asciz "E9040811:'adxf' is NULL.(adxf_ReadSj32)"
	.asciz "E9040812:'nsct'is negative.(adxf_ReadSj32)"
	.asciz "E9040813:'sj'is NULL.(adxf_ReadSj32)"
	.asciz "E9040816:'adxf' is NULL.(adxf_ReadNw32)"
	.asciz "E9040817:'nsct' is negative.(adxf_ReadNw32)"
	.asciz "E2006080701:Buffer size must be less than 2GB."
	.asciz "E9040818:'buf' is NULL.(adxf_ReadNw32)"
	.asciz "E9040821:'sj' must be NULL.(adxf_ReadNw32)"
	.asciz "E9040822:'adxf' is NULL.(adxf_Stop)"
	.asciz "E9040823:'adxf->stm' is NULL.(adxf_Stop)"
	.asciz "E2092301:'adxf' is NULL.(adxf_StopNw)"
	.asciz "E2092302:'adxf->stm' is NULL.(adxf_StopNw)"
	.asciz "E9040825:'adxf' is NULL.(adxf_Seek)"
	.asciz "E9040826:'type' is illigal.(adxf_Seek)"
	.asciz "E9040827:'adxf' is NULL.(ADXF_Tell)"
	.asciz "E2005101910:'adxf' is NULL.(adxf_GetFsizeByte)"
	.asciz "E2005101911:'adxf' is NULL.(adxf_GetFsizeByte64)"
	.asciz "E9040830:'adxf' is NULL.(adxf_GetNumReqSct)"
	.asciz "E9040831:'adxf' is NULL.(adxf_GetNumReadSct)"
	.asciz "E9040828:Partition ID is out of range."
	.asciz "E2008110501:Loading of partition is not completed."
	.asciz "E9040828:File ID is out of range."
	.asciz "E0041201:state is reading(ADXF_SetReqRdSct)"
	.asciz "E2005072901: NULL pointer is passed."
	.balign 4
	.4byte 0


.global lbl_80519650
lbl_80519650:
	.asciz "\nADXT/WII Ver.10.67 Build:Nov 13 2008 10:52:50\n"
	.asciz "Append: MW4199 WII30Jul2008Patch02\n"
	.4byte 0


.global lbl_805196A8
lbl_805196A8:
	.asciz "adxt_exec_tsvr"
	.asciz "adxt_exec_fssvr"
	.asciz "adxt_exec_main_thrd"
	.asciz "E2006100201: ADXT_Finish function has been executed before initialization."
	.asciz "E2005041230: ADXT handle is still active."


.global lbl_80519750
lbl_80519750:
	.asciz "E03010901 ADXB_DecodeHeader: "
	.asciz "Can not decode this file format."
	.asciz "E07021901 adxsjd_decexec_start: "
	.asciz "8 or 4bit WAV file can't playback continuously."


.global lbl_805197E0
lbl_805197E0:
	.asciz "E02110501 adxstmf_stat_exec: can't open "
	.asciz "E05072801 adxstmf_stat_exec: can't open "
	.balign 4
	.4byte 0


.global lbl_80519838
lbl_80519838:
	.asciz "E02080811 adxt_StartAfs: parameter error"
	.asciz "E8101202 adxt_StartAfs: can't open "
	.asciz "E02080807 adxt_StartFnameRange: parameter error"
	.asciz "E02080809 adxt_StartMem2: parameter error"
	.asciz "E8101207: can't create sj (adxt_StartMem)"
	.asciz "E02080810 adxt_StartMemIdx: parameter error"
	.asciz "E8101207: can't create sj (adxt_StartMemIdx)"
	.balign 4
	.4byte 0


.global lbl_80519968
lbl_80519968:
	# ROM: 0x515A68
	.4byte 0x3F59999A
	.4byte 0


.global lbl_80519970
lbl_80519970:
	# ROM: 0x515A70
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0
	.4byte 0x447A0000
	.4byte 0x42700000
	.4byte 0xC2700000


.global lbl_80519988
lbl_80519988:
	# ROM: 0x515A88
	.float 100.0
	.float -1.0


.global lbl_80519990
lbl_80519990:
	.asciz "E02080804 adxt_Create: parameter error"
	.asciz "E03100801 adxt_Create: Too many handles."
	.asciz "E06022201 adxt_Create: Work size is too short."
	.asciz "E02080805 adxt_Destroy: parameter error"
	.asciz "E02080813 adxt_Stop: parameter error"
	.asciz "E02080812 adxt_StartSj: parameter error"
	.asciz "E02080814 adxt_GetStat: parameter error"
	.asciz "E02080837 adxt_GetNumSmplObuf: parameter error"
	.asciz "E02080815 adxt_GetTime: parameter error"
	.asciz "E02080817 adxt_GetNumSmpl: parameter error"
	.asciz "E02080819 adxt_GetSfreq: parameter error"
	.asciz "E02080820 adxt_GetNumChan: parameter error"
	.asciz "E02080822 adxt_GetHdrLen: parameter error"
	.asciz "E02080821 adxt_GetFmtBps: parameter error"
	.asciz "E02080825 adxt_SetOutPan: Null pointer is passed"
	.asciz "E07041801 adxt_SetOutPan: parameter error"
	.asciz "E8101208 adxt_SetOutPan: parameter error"
	.asciz "E02080826 adxt_GetOutPan: parameter error"
	.asciz "E02080870 adxt_SetOutBalance: parameter error"
	.asciz "E02080871 adxt_GetOutBalance: parameter error"
	.asciz "E02080823 adxt_SetOutVol: parameter error"
	.asciz "E02080824 adxt_GetOutVol: parameter error"
	.asciz "E02080840 adxt_SetSvrFreq: parameter error"
	.asciz "E02080838 adxt_SetReloadTime: parameter error"
	.asciz "E03111501 adxt_ResetReloadTime: parameter error"
	.asciz "E02080839 adxt_SetReloadSct: parameter error"
	.asciz "E02080834 adxt_GetNumSctIbuf: parameter error"
	.asciz "E02080835 adxt_GetIbufRemainTime: parameter error"
	.asciz "E02080836 ADXT_IsIbufSafety: parameter error"
	.asciz "E02080802 adxt_IsCompleted: parameter error"
	.asciz "E02080843 adxt_GetErrCode: parameter error"
	.asciz "E02080844 adxt_ClearErrCode: parameter error"
	.asciz "E02080829 adxt_GetLpCnt: parameter error"
	.asciz "E02080828 adxt_SetLpFlg: parameter error"
	.asciz "E02080833 adxt_GetInputSj: parameter error"
	.asciz "E02080830 adxt_SetWaitPlayStart: parameter error"
	.asciz "E02080831 adxt_IsReadyPlayStart: parameter error"
	.asciz "E02080846 adxt_Pause: parameter error"
	.asciz "E02080847 adxt_GetStatPause: parameter error"
	.asciz "E2005111601 : NULL pointer is passed."
	.asciz "E2006110200: Invalid values."
	.asciz "E02080818 adxt_GetDecNumSmpl: parameter error"
	.asciz "E04041901 adxt_GetDecDtLen: parameter error"
	.asciz "E04041902 ADXT_SetCbDec: parameter error"
	.asciz "E02080860 adxt_SetKeyString: parameter error"


.global lbl_8051A120
lbl_8051A120:
	.asciz "E8101201 adxt_trap_entry: not enough data"
	.asciz "E9081001 adxt_stat_decinfo: can't play this number of channels"
	.asciz "E02080842 adxt_ExecHndl: parameter error"
	.balign 4
	.4byte 0


.global lbl_8051A1B8
lbl_8051A1B8:
	.asciz "FORM"
	.asciz "AIFF"
	.2byte 0
	.4byte 0


.global lbl_8051A1C8
lbl_8051A1C8:
	# ROM: 0x5162C8
	.4byte 0x401B4021
	.4byte 0x4025402B
	.4byte 0x4031403F
	.4byte 0x40434045
	.4byte 0x405D4061
	.4byte 0x4067406D
	.4byte 0x40874091
	.4byte 0x40A340A9
	.4byte 0x40B140B7
	.4byte 0x40BD40DB
	.4byte 0x40DF40EB
	.4byte 0x40F740F9
	.4byte 0x4109410B
	.4byte 0x41114115
	.4byte 0x41214133
	.4byte 0x4135413B
	.4byte 0x413F4159
	.4byte 0x4165416B
	.4byte 0x4177417B
	.4byte 0x419341AB
	.4byte 0x41B741BD
	.4byte 0x41BF41CB
	.4byte 0x41E741EF
	.4byte 0x41F341F9
	.4byte 0x42054207
	.4byte 0x4219421F
	.4byte 0x42234229
	.4byte 0x422F4243
	.4byte 0x42534255
	.4byte 0x425B4261
	.4byte 0x4273427D
	.4byte 0x42834285
	.4byte 0x42894291
	.4byte 0x4297429D
	.4byte 0x42B542C5
	.4byte 0x42CB42D3
	.4byte 0x42DD42E3
	.4byte 0x42F14307
	.4byte 0x430F431F
	.4byte 0x43254327
	.4byte 0x43334337
	.4byte 0x4339434F
	.4byte 0x43574369
	.4byte 0x438B438D
	.4byte 0x439343A5
	.4byte 0x43A943AF
	.4byte 0x43B543BD
	.4byte 0x43C743CF
	.4byte 0x43E143E7
	.4byte 0x43EB43ED
	.4byte 0x43F143F9
	.4byte 0x4409440B
	.4byte 0x44174423
	.4byte 0x4429443B
	.4byte 0x443F4445
	.4byte 0x444B4451
	.4byte 0x44534459
	.4byte 0x4465446F
	.4byte 0x4483448F
	.4byte 0x44A144A5
	.4byte 0x44AB44AD
	.4byte 0x44BD44BF
	.4byte 0x44C944D7
	.4byte 0x44DB44F9
	.4byte 0x44FB4505
	.4byte 0x45114513
	.4byte 0x452B4531
	.4byte 0x45414549
	.4byte 0x45534555
	.4byte 0x45614577
	.4byte 0x457D457F
	.4byte 0x458F45A3
	.4byte 0x45AD45AF
	.4byte 0x45BB45C7
	.4byte 0x45D945E3
	.4byte 0x45EF45F5
	.4byte 0x45F74601
	.4byte 0x46034609
	.4byte 0x46134625
	.4byte 0x46274633
	.4byte 0x4639463D
	.4byte 0x46434645
	.4byte 0x465D4679
	.4byte 0x467B467F
	.4byte 0x4681468B
	.4byte 0x468D469D
	.4byte 0x46A946B1
	.4byte 0x46C746C9
	.4byte 0x46CF46D3
	.4byte 0x46D546DF
	.4byte 0x46E546F9
	.4byte 0x4705470F
	.4byte 0x47174723
	.4byte 0x4729472F
	.4byte 0x47354739
	.4byte 0x474B474D
	.4byte 0x4751475D
	.4byte 0x476F4771
	.4byte 0x477D4783
	.4byte 0x47874789
	.4byte 0x479947A5
	.4byte 0x47B147BF
	.4byte 0x47C347CB
	.4byte 0x47DD47E1
	.4byte 0x47ED47FB
	.4byte 0x48014807
	.4byte 0x480B4813
	.4byte 0x4819481D
	.4byte 0x4831483D
	.4byte 0x48474855
	.4byte 0x4859485B
	.4byte 0x486B486D
	.4byte 0x48794897
	.4byte 0x489B48A1
	.4byte 0x48B948CD
	.4byte 0x48E548EF
	.4byte 0x48F74903
	.4byte 0x490D4919
	.4byte 0x491F492B
	.4byte 0x4937493D
	.4byte 0x49454955
	.4byte 0x49634969
	.4byte 0x496D4973
	.4byte 0x499749AB
	.4byte 0x49B549D3
	.4byte 0x49DF49E1
	.4byte 0x49E549E7
	.4byte 0x4A034A0F
	.4byte 0x4A1D4A23
	.4byte 0x4A394A41
	.4byte 0x4A454A57
	.4byte 0x4A5D4A6B
	.4byte 0x4A7D4A81
	.4byte 0x4A874A89
	.4byte 0x4A8F4AB1
	.4byte 0x4AC34AC5
	.4byte 0x4AD54ADB
	.4byte 0x4AED4AEF
	.4byte 0x4B074B0B
	.4byte 0x4B0D4B13
	.4byte 0x4B1F4B25
	.4byte 0x4B314B3B
	.4byte 0x4B434B49
	.4byte 0x4B594B65
	.4byte 0x4B6D4B77
	.4byte 0x4B854BAD
	.4byte 0x4BB34BB5
	.4byte 0x4BBB4BBF
	.4byte 0x4BCB4BD9
	.4byte 0x4BDD4BDF
	.4byte 0x4BE34BE5
	.4byte 0x4BE94BF1
	.4byte 0x4BF74C01
	.4byte 0x4C074C0D
	.4byte 0x4C0F4C15
	.4byte 0x4C1B4C21
	.4byte 0x4C2D4C33
	.4byte 0x4C4B4C55
	.4byte 0x4C574C61
	.4byte 0x4C674C73
	.4byte 0x4C794C7F
	.4byte 0x4C8D4C93
	.4byte 0x4C994CCD
	.4byte 0x4CE14CE7
	.4byte 0x4CF14CF3
	.4byte 0x4CFD4D05
	.4byte 0x4D0F4D1B
	.4byte 0x4D274D29
	.4byte 0x4D2F4D33
	.4byte 0x4D414D51
	.4byte 0x4D594D65
	.4byte 0x4D6B4D81
	.4byte 0x4D834D8D
	.4byte 0x4D954D9B
	.4byte 0x4DB14DB3
	.4byte 0x4DC94DCF
	.4byte 0x4DD74DE1
	.4byte 0x4DED4DF9
	.4byte 0x4DFB4E05
	.4byte 0x4E0B4E17
	.4byte 0x4E194E1D
	.4byte 0x4E2B4E35
	.4byte 0x4E374E3D
	.4byte 0x4E4F4E53
	.4byte 0x4E5F4E67
	.4byte 0x4E794E85
	.4byte 0x4E8B4E91
	.4byte 0x4E954E9B
	.4byte 0x4EA14EAF
	.4byte 0x4EB34EB5
	.4byte 0x4EC14ECD
	.4byte 0x4ED14ED7
	.4byte 0x4EE94EFB
	.4byte 0x4F074F09
	.4byte 0x4F194F25
	.4byte 0x4F2D4F3F
	.4byte 0x4F494F63
	.4byte 0x4F674F6D
	.4byte 0x4F754F7B
	.4byte 0x4F814F85
	.4byte 0x4F874F91
	.4byte 0x4FA54FA9
	.4byte 0x4FAF4FB7
	.4byte 0x4FBB4FCF
	.4byte 0x4FD94FDB
	.4byte 0x4FFD4FFF
	.4byte 0x5003501B
	.4byte 0x501D5029
	.4byte 0x5035503F
	.4byte 0x50455047
	.4byte 0x50535071
	.4byte 0x50775083
	.4byte 0x5093509F
	.4byte 0x50A150B7
	.4byte 0x50C950D5
	.4byte 0x50E350ED
	.4byte 0x50EF50FB
	.4byte 0x5107510B
	.4byte 0x510D5111
	.4byte 0x51175123
	.4byte 0x51255135
	.4byte 0x51475149
	.4byte 0x51715179
	.4byte 0x5189518F
	.4byte 0x519751A1
	.4byte 0x51A351A7
	.4byte 0x51B951C1
	.4byte 0x51CB51D3
	.4byte 0x51DF51E3
	.4byte 0x51F551F7
	.4byte 0x52095213
	.4byte 0x52155219
	.4byte 0x521B521F
	.4byte 0x52275243
	.4byte 0x5245524B
	.4byte 0x5261526D
	.4byte 0x52735281
	.4byte 0x52935297
	.4byte 0x529D52A5
	.4byte 0x52AB52B1
	.4byte 0x52BB52C3
	.4byte 0x52C752C9
	.4byte 0x52DB52E5
	.4byte 0x52EB52FF
	.4byte 0x5315531D
	.4byte 0x53235341
	.4byte 0x53455347
	.4byte 0x534B535D
	.4byte 0x53635381
	.4byte 0x53835387
	.4byte 0x538F5395
	.4byte 0x5399539F
	.4byte 0x53AB53B9
	.4byte 0x53DB53E9
	.4byte 0x53EF53F3
	.4byte 0x53F553FB
	.4byte 0x53FF540D
	.4byte 0x54115413
	.4byte 0x54195435
	.4byte 0x5437543B
	.4byte 0x54415449
	.4byte 0x54535455
	.4byte 0x545F5461
	.4byte 0x546B546D
	.4byte 0x5471548F
	.4byte 0x5491549D
	.4byte 0x54A954B3
	.4byte 0x54C554D1
	.4byte 0x54DF54E9
	.4byte 0x54EB54F7
	.4byte 0x54FD5507
	.4byte 0x550D551B
	.4byte 0x5527552B
	.4byte 0x5539553D
	.4byte 0x554F5551
	.4byte 0x555B5563
	.4byte 0x5567556F
	.4byte 0x55795585
	.4byte 0x559755A9
	.4byte 0x55B155B7
	.4byte 0x55C955D9
	.4byte 0x55E755ED
	.4byte 0x55F355FD
	.4byte 0x560B560F
	.4byte 0x56155617
	.4byte 0x5623562F
	.4byte 0x56335639
	.4byte 0x563F564B
	.4byte 0x564D565D
	.4byte 0x565F566B
	.4byte 0x56715675
	.4byte 0x56835689
	.4byte 0x568D568F
	.4byte 0x569B56AD
	.4byte 0x56B156D5
	.4byte 0x56E756F3
	.4byte 0x56FF5701
	.4byte 0x57055707
	.4byte 0x570B5713
	.4byte 0x571F5723
	.4byte 0x5747574D
	.4byte 0x575F5761
	.4byte 0x576D5777
	.4byte 0x577D5789
	.4byte 0x57A157A9
	.4byte 0x57AF57B5
	.4byte 0x57C557D1
	.4byte 0x57D357E5
	.4byte 0x57EF5803
	.4byte 0x580D580F
	.4byte 0x58155827
	.4byte 0x582B582D
	.4byte 0x5855585B
	.4byte 0x585D586D
	.4byte 0x586F5873
	.4byte 0x587B588D
	.4byte 0x589758A3
	.4byte 0x58A958AB
	.4byte 0x58B558BD
	.4byte 0x58C158C7
	.4byte 0x58D358D5
	.4byte 0x58DF58F1
	.4byte 0x58F958FF
	.4byte 0x59035917
	.4byte 0x591B5921
	.4byte 0x5945594B
	.4byte 0x594D5957
	.4byte 0x595D5975
	.4byte 0x597B5989
	.4byte 0x5999599F
	.4byte 0x59B159B3
	.4byte 0x59BD59D1
	.4byte 0x59DB59E3
	.4byte 0x59E959ED
	.4byte 0x59F359F5
	.4byte 0x59FF5A01
	.4byte 0x5A0D5A11
	.4byte 0x5A135A17
	.4byte 0x5A1F5A29
	.4byte 0x5A2F5A3B
	.4byte 0x5A4D5A5B
	.4byte 0x5A675A77
	.4byte 0x5A7F5A85
	.4byte 0x5A955A9D
	.4byte 0x5AA15AA3
	.4byte 0x5AA95ABB
	.4byte 0x5AD35AE5
	.4byte 0x5AEF5AFB
	.4byte 0x5AFD5B01
	.4byte 0x5B0F5B19
	.4byte 0x5B1F5B25
	.4byte 0x5B2B5B3D
	.4byte 0x5B495B4B
	.4byte 0x5B675B79
	.4byte 0x5B875B97
	.4byte 0x5BA35BB1
	.4byte 0x5BC95BD5
	.4byte 0x5BEB5BF1
	.4byte 0x5BF35BFD
	.4byte 0x5C055C09
	.4byte 0x5C0B5C0F
	.4byte 0x5C1D5C29
	.4byte 0x5C2F5C33
	.4byte 0x5C395C47
	.4byte 0x5C4B5C4D
	.4byte 0x5C515C6F
	.4byte 0x5C755C77
	.4byte 0x5C7D5C87
	.4byte 0x5C895CA7
	.4byte 0x5CBD5CBF
	.4byte 0x5CC35CC9
	.4byte 0x5CD15CD7
	.4byte 0x5CDD5CED
	.4byte 0x5CF95D05
	.4byte 0x5D0B5D13
	.4byte 0x5D175D19
	.4byte 0x5D315D3D
	.4byte 0x5D415D47
	.4byte 0x5D4F5D55
	.4byte 0x5D5B5D65
	.4byte 0x5D675D6D
	.4byte 0x5D795D95
	.4byte 0x5DA35DA9
	.4byte 0x5DAD5DB9
	.4byte 0x5DC15DC7
	.4byte 0x5DD35DD7
	.4byte 0x5DDD5DEB
	.4byte 0x5DF15DFD
	.4byte 0x5E075E0D
	.4byte 0x5E135E1B
	.4byte 0x5E215E27
	.4byte 0x5E2B5E2D
	.4byte 0x5E315E39
	.4byte 0x5E455E49
	.4byte 0x5E575E69
	.4byte 0x5E735E75
	.4byte 0x5E855E8B
	.4byte 0x5E9F5EA5
	.4byte 0x5EAF5EB7
	.4byte 0x5EBB5ED9
	.4byte 0x5EFD5F09
	.4byte 0x5F115F27
	.4byte 0x5F335F35
	.4byte 0x5F3B5F47
	.4byte 0x5F575F5D
	.4byte 0x5F635F65
	.4byte 0x5F775F7B
	.4byte 0x5F955F99
	.4byte 0x5FA15FB3
	.4byte 0x5FBD5FC5
	.4byte 0x5FCF5FD5
	.4byte 0x5FE35FE7
	.4byte 0x5FFB6011
	.4byte 0x6023602F
	.4byte 0x60376053
	.4byte 0x605F6065
	.4byte 0x606B6073
	.4byte 0x60796085
	.4byte 0x609D60AD
	.4byte 0x60BB60BF
	.4byte 0x60CD60D9
	.4byte 0x60DF60E9
	.4byte 0x60F56109
	.4byte 0x610F6113
	.4byte 0x611B612D
	.4byte 0x6139614B
	.4byte 0x61556157
	.4byte 0x615B616F
	.4byte 0x61796187
	.4byte 0x618B6191
	.4byte 0x6193619D
	.4byte 0x61B561C7
	.4byte 0x61C961CD
	.4byte 0x61E161F1
	.4byte 0x61FF6209
	.4byte 0x6217621D
	.4byte 0x62216227
	.4byte 0x623B6241
	.4byte 0x624B6251
	.4byte 0x6253625F
	.4byte 0x62656283
	.4byte 0x628D6295
	.4byte 0x629B629F
	.4byte 0x62A562AD
	.4byte 0x62D562D7
	.4byte 0x62DB62DD
	.4byte 0x62E962FB
	.4byte 0x62FF6305
	.4byte 0x630D6317
	.4byte 0x631D632F
	.4byte 0x63416343
	.4byte 0x634F635F
	.4byte 0x6367636D
	.4byte 0x63716377
	.4byte 0x637D637F
	.4byte 0x63B363C1
	.4byte 0x63C563D9
	.4byte 0x63E963EB
	.4byte 0x63EF63F5
	.4byte 0x64016403
	.4byte 0x64096415
	.4byte 0x64216427
	.4byte 0x642B6439
	.4byte 0x64436449
	.4byte 0x644F645D
	.4byte 0x64676475
	.4byte 0x6485648D
	.4byte 0x6493649F
	.4byte 0x64A364AB
	.4byte 0x64C164C7
	.4byte 0x64C964DB
	.4byte 0x64F164F7
	.4byte 0x64F9650B
	.4byte 0x65116521
	.4byte 0x652F6539
	.4byte 0x653F654B
	.4byte 0x654D6553
	.4byte 0x6557655F
	.4byte 0x6571657D
	.4byte 0x658D658F
	.4byte 0x659365A1
	.4byte 0x65A565AD
	.4byte 0x65B965C5
	.4byte 0x65E365F3
	.4byte 0x65FB65FF
	.4byte 0x66016607
	.4byte 0x661D6629
	.4byte 0x6631663B
	.4byte 0x66416647
	.4byte 0x664D665B
	.4byte 0x66616673
	.4byte 0x667D6689
	.4byte 0x668B6695
	.4byte 0x6697669B
	.4byte 0x66B566B9
	.4byte 0x66C566CD
	.4byte 0x66D166E3
	.4byte 0x66EB66F5
	.4byte 0x67036713
	.4byte 0x6719671F
	.4byte 0x67276731
	.4byte 0x6737673F
	.4byte 0x67456751
	.4byte 0x675B676F
	.4byte 0x67796781
	.4byte 0x67856791
	.4byte 0x67AB67BD
	.4byte 0x67C167CD
	.4byte 0x67DF67E5
	.4byte 0x68036809
	.4byte 0x68116817
	.4byte 0x682D6839


.global lbl_8051A9C8
lbl_8051A9C8:
	.asciz "E04102501 adxsjd_decode_prep: "
	.asciz "The data alignment is illegal."
	.asciz "E1060101 ADXB_DecodeHeaderAdx: "
	.asciz "can't play AHX data by this handle"
	.asciz "E2005042701 : NULL pointer is passed."
	.asciz "%08X"
	.4byte 0

.global lbl_8051AA78
lbl_8051AA78:
	.asciz "fmt "
	.balign 4

.global lbl_8051AA80
lbl_8051AA80:
	.asciz "data"
	.balign 4


.global lbl_8051AA88
lbl_8051AA88:
	.asciz "RIFF"
	.asciz "WAVE"
	.2byte 0
	.4byte 0


.global lbl_8051AA98
lbl_8051AA98:
	# ROM: 0x516B98
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF


.global lbl_8051AAD8
lbl_8051AAD8:
	# ROM: 0x516BD8
	.float 6.2831853
	.4byte 0
	.4byte 0x40000000
	.4byte 0
	.float 1.0
	.4byte 0x45800000
	.4byte 0x40000000
	.4byte 0
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "(c)CRI"
	.balign 4


.global lbl_8051AB08
lbl_8051AB08:
	.asciz "Error"
	.byte 0x20, 0x00


.global lbl_8051AB10
lbl_8051AB10:
	.asciz "E2005092203 : NULL pointer is passed."
	.asciz "E2005092204 : Work area size is too short."
	.asciz "E2005092202 : AHXSJD_Create function failed."
	.asciz "E2005092205 : NULL pointer is passed."
	.4byte 0


.global lbl_8051ABB8
lbl_8051ABB8:
	# ROM: 0x516CB8
	.4byte 0
	.4byte 0


.global lbl_8051ABC0
lbl_8051ABC0:
	# ROM: 0x516CC0
	.4byte 0
	.4byte 0x4F000000
	.4byte 0xCF000000
	.4byte 0


.global lbl_8051ABD0
lbl_8051ABD0:
	.asciz "O"
	.4byte 0
	.2byte 0
.global lbl_8051ABD8
lbl_8051ABD8:
	.asciz "\nAHX/WII Ver.1.89 Build:Nov 13 2008 10:52:54\n"
	.balign 4


.global lbl_8051AC08
lbl_8051AC08:
	# ROM: 0x516D08
	.4byte lbl_8051ABD8
	.4byte 0


.global lbl_8051AC10
lbl_8051AC10:
	# ROM: 0x516D10
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x0000000F
	.4byte 0x0000001F
	.4byte 0x0000003F
	.4byte 0x0000007F
	.4byte 0x000000FF
	.4byte 0x000001FF
	.4byte 0x000003FF
	.4byte 0x000007FF
	.4byte 0x00000FFF
	.4byte 0x00001FFF
	.4byte 0x00003FFF
	.4byte 0x00007FFF
	.4byte 0x0000FFFF
	.4byte 0x0001FFFF
	.4byte 0x0003FFFF
	.4byte 0x0007FFFF
	.4byte 0x000FFFFF
	.4byte 0x001FFFFF
	.4byte 0x003FFFFF
	.4byte 0x007FFFFF
	.4byte 0x00FFFFFF
	.4byte 0x01FFFFFF
	.4byte 0x03FFFFFF
	.4byte 0x07FFFFFF
	.4byte 0x0FFFFFFF
	.4byte 0x1FFFFFFF
	.4byte 0x3FFFFFFF
	.4byte 0x7FFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0


.global lbl_8051AC98
lbl_8051AC98:
	# ROM: 0x516D98
	.4byte 0
	.4byte 0


.global lbl_8051ACA0
lbl_8051ACA0:
	# ROM: 0x516DA0
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8051ACA8
lbl_8051ACA8:
	.asciz "CRI-MW"
	.balign 4


.global lbl_8051ACB0
lbl_8051ACB0:
	.asciz "cvFsAddDev #1:illegal device name"
	.asciz "cvFsAddDev #2:illegal I/F func name"
	.asciz "cvFsAddDev #3:can not add device"
	.asciz "cvFsDelDev #1:illegal device name"
	.asciz "cvFsSetDefDev #1:illegal device name"
	.asciz "cvFsSetDefDev #2:unknown device name"
	.asciz "cvFsOpen #1:illegal file name"
	.asciz "cvFsOpen #3:can not allocate handle"
	.asciz "%s:%s"
	.asciz "cvFsOpen #2:illegal device name"
	.asciz "cvFsOpen #4:device not found"
	.asciz "cvFsOpen #5:vtbl error"
	.asciz "cvFsOpen #6:can not open file"
	.asciz "cvFsClose #1:handle error"
	.asciz "cvFsClose #2:vtbl error"
	.asciz "cvFsTell #1:handle error"
	.asciz "cvFsTell #2:vtbl error"
	.asciz "cvFsSeek #1:handle error"
	.asciz "cvFsSeek #2:vtbl error"
	.asciz "cvFsReqRd #1:handle error"
	.asciz "cvFsReqRd #2:vtbl error"
	.asciz "cvFsReqWr #1:handle error"
	.asciz "cvFsReqWr #2:vtbl error"
	.asciz "cvFsStopTr #1:handle error"
	.asciz "cvFsStopTr #2:vtbl error"
	.asciz "cvFsGetStat #1:handle error"
	.asciz "cvFsGetStat #2:vtbl error"
	.asciz "cvFsGetFileSize #1:illegal file name"
	.asciz "cvFsGetFileSize #2:illegal device name"
	.asciz "cvFsGetFileSize #3:device not found"
	.asciz "cvFsGetFileSize #4:vtbl error"
	.asciz "cvFsGetFileSizeEx #1:illegal file name"
	.asciz "cvFsGetFileSizeEx #2:illegal device name"
	.asciz "cvFsGetFileSizeEx #3:device not found"
	.asciz "cvFsGetFileSizeEx #4:vtbl error"
	.asciz "cvFsGetFileSizeByHndl #1:illegal file handle"
	.asciz "cvFsIsFileOpened #1:illegal file handle"
	.asciz "cvFsGetFreeSize #5:device not found"
	.asciz "cvFsGetFreeSize #6:vtbl error"
	.asciz "cvFsGetSctLen #1:handle error"
	.asciz "cvFsGetSctLen #2:vtbl error"
	.asciz "cvFsSetSctLen #3:handle error"
	.asciz "cvFsSetSctLen #4:vtbl error"
	.asciz "cvFsGetNumTr #1:handle error"
	.asciz "cvFsGetNumTr #2:vtbl error"
	.asciz "cvFsChangeDir #1:illegal directory name"
	.asciz "cvFsChangeDir #2:illegal device name"
	.asciz "cvFsChangeDir #3:device not found"
	.asciz "cvFsChangeDir #4:vtbl error"
	.asciz "cvFsIsExistFile #1:illegal file name"
	.asciz "cvFsIsExistFile #2:illegal device name"
	.asciz "cvFsIsExistFile #3:device not found"
	.asciz "cvFsIsExistFile #4:vtbl error"
	.asciz "cvFsGetMaxByteRate #1:handle error"
	.asciz "cvFsGetMaxByteRate #2:vtbl error"
	.asciz "cvFsMakeDir #1:illegal directory name"
	.asciz "cvFsMakeDir #2:illegal device name"
	.asciz "cvFsMakeDir #3:device not found"
	.asciz "cvFsMakeDir #4:vtbl error"
	.asciz "cvFsRemoveDir #1:illegal directory name"
	.asciz "cvFsRemoveDir #2:illegal device name"
	.asciz "cvFsRemoveDir #3:device not found"
	.asciz "cvFsRemoveDir #4:vtbl error"
	.asciz "cvFsDeleteFile #1:illegal file name"
	.asciz "cvFsDeleteFile #2:illegal device name"
	.asciz "cvFsDeleteFile #3:device not found"
	.asciz "cvFsDeleteFile #4:vtbl error"
	.asciz "cvFsGetDevName #1:vtbl error"
	.asciz "cvFsOptFn1 #1:handle error"
	.asciz "cvFsOptFn1 #2:vtbl error"
	.asciz "cvFsOptFn2 #1:handle error"
	.asciz "cvFsOptFn2 #2:vtbl error"
	.asciz "cvFsSetCurVolume #1:illegal device name"
	.asciz "cvFsSetCurVolume #2:illegal image handle"
	.asciz "cvFsSetCurVolume #3:device not found"
	.asciz "cvFsAddVolumeEx #1:illegal device name"
	.asciz "cvFsAddVolumeEx #2:illegal volume name"
	.asciz "cvFsAddVolumeEx #3:illegal image handle"
	.asciz "cvFsAddVolumeEx #3:device not found"
	.asciz "cvFsDelVolume #1:illegal device name"
	.asciz "cvFsDelVolume #2:illegal volume name"
	.asciz "cvFsDelVolume #3:device not found"
	.asciz "cvFsGetVolumeInfo #1:illegal device name"
	.asciz "cvFsGetVolumeInfo #2:illegal volume name"
	.asciz "cvFsGetVolumeInfo #3:device not found"
	.asciz "cvFsSetDefVol #1:illegal device name"
	.asciz "cvFsSetDefVol #2:illegal volume name"
	.asciz "cvFsSetDefVol #3:device not found"
	.asciz "cvFsReqClose #1:illegal file handle"
	.asciz "cvFsIsAvailableRetry #1:illegal file handle"
	.balign 4


.global lbl_8051B830
lbl_8051B830:
	.asciz "E0092901:fname is null.(gcCiGetFileSize)"
	.asciz "E0040201:can't open a file.(gcCiGetFileSize)"
	.asciz "E0040202:can't close a file.(gcCiGetFileSize)"
	.asciz "E0092908:fname is null.(gcCiOpen)"
	.asciz "E0092909:rw is illigal.(gcCiOpen)"
	.asciz "E0092910:not enough handle resource.(gcCiOpen)"
	.asciz "E0092911:DVDOpen fail.(gcCiOpen)"
	.asciz "E0092912:handl is null."
	.asciz "E0092913:nsct < 0.(gcCiReqRd)"
	.asciz "E0092914:buf is null.(gcCiReqRd)"
	.asciz "E0092917:DVDCancel failed."
	.asciz "E0092918:DVDCancel time out."
	.asciz "E0040301:handl is null."
	.asciz "E0040302:handl is null."
	.asciz "E0040303:invalidate size."
	.balign 4
	.4byte 0

.global lbl_8051BA28
lbl_8051BA28:
	.asciz "\nLSC/WII Ver.2.30 Build:Nov 13 2008 10:52:58\n"
	.balign 4


.global lbl_8051BA58
lbl_8051BA58:
	# ROM: 0x517B58
	.4byte lbl_8051BA28
	.4byte 0


.global lbl_8051BA60
lbl_8051BA60:
	.asciz "E0013: '%s' is different from entry file name.(LSC_ExecServer)\n"
	.asciz "E0007: lsc->fp=NULL\n"
	.balign 4


.global lbl_8051BAB8
lbl_8051BAB8:
	.asciz "E2005012801: Invalid parameter=sj (LSC_Create)\n"
	.asciz "E2005012802: Not enough instance (LSC_Create)\n"
	.asciz "E2005012807: Invalid parameter lsc=NULL\n"
	.asciz "E2005012805: Invalid parameter lsc=NULL\n"
	.asciz "E2005012803: Invalid parameter lsc=NULL\n"
	.asciz "E2005012804: Invalid parameter fname=%s\n"
	.asciz "E2005012806: Invalid parameter lsc=NULL\n"
	.asciz "E2005012808: Invalid parameter lsc=NULL\n"
	.asciz "E2005012809: Invalid parameter lsc=NULL\n"
	.asciz "E2005012810: Invalid parameter lsc=NULL\n"
	.asciz "E2005012811: Invalid parameter lsc=NULL\n"
	.asciz "E2005012812: Invalid parameter no=%d\n"
	.asciz "E2005012813: Invalid parameter lsc=NULL\n"
	.asciz "E2005012814: Can not find stream ID =%d\n"
	.asciz "E2005012815: Invalid parameter lsc=NULL\n"
	.asciz "E2005012816: Can not find stream ID =%d\n"
	.asciz "E2005012817: Invalid parameter lsc=NULL\n"
	.asciz "E2005012818: Can not find stream ID =%d\n"
	.asciz "E2005012819: Invalid parameter lsc=NULL\n"
	.asciz "E2005012820: Invalid parameter min_val=%d\n"
	.asciz "E2005012821: Invalid parameter lsc=NULL\n"
	.asciz "E2005012822: Invalid parameter lsc=NULL\n"
	.balign 4
	.4byte 0

.global lbl_8051BE50
lbl_8051BE50:
	.asciz "\nMFCI/WII Ver.1.23 Build:Nov 13 2008 10:52:58\n"
	.balign 4


.global lbl_8051BE80
lbl_8051BE80:
	# ROM: 0x517F80
	.4byte lbl_8051BE50


.global lbl_8051BE84
lbl_8051BE84:
	.asciz "E01100308:length of '%s' is over %d bytes.(mfci_get_adr_size)"
	.asciz "E01100301:fname is null.(mfCiOpen)"
	.asciz "E01100302:rw is illigal.(mfCiOpen)"
	.asciz "E01100303:not enough handle resource.(mfCiOpen)"
	.asciz "E0092912:handl is null."
	.asciz "E01100305:handl is null."
	.asciz "E01100306:handl is null."
	.asciz "E01100307:handl is null."
	.asciz "E01100308:nsct < 0.(mfCiReqRd)"
	.asciz "E01100309:buf is null.(mfCiReqRd)"
	.asciz "E0040301:handl is null."
	.asciz "E0040302:handl is null."
	.asciz "E1041001:invalid entry number.(mfCiOpenEntry)"
	.asciz "E1041002:rw is illigal.(mfCiOpenEntry)"
	.asciz "E1041002:not enough handle resource.(mfCiOpenEntry)"
	.balign 4


.global lbl_8051C098
lbl_8051C098:
	# ROM: 0x518198
	.4byte 0xDD9EEE41
	.4byte 0x167911D2
	.4byte 0x936C0060
	.4byte 0x089448BC


.global lbl_8051C0A8
lbl_8051C0A8:
	.asciz "SJMEM Error"
	.asciz " : NULL pointer is passed."
	.asciz "E2004090237"
	.asciz " : Specified handle is invalid."
	.asciz "E2004090238"
	.asciz "E2004090231"
	.asciz "E2004090232"
	.asciz "E2004090233"
	.asciz "E2004090234"
	.asciz "E2004090235"
	.asciz "E2004090236"
	.asciz "E2004090239"
	.asciz "E2004090240"
	.asciz "E2004090241"
	.asciz "E2004090242"
	.asciz "E2004090243"
	.asciz "E2004090244"
	.asciz "E2004090245"
	.asciz "E2004090246"
	.asciz "E2004090247"
	.asciz "E2004090248"
	.asciz "E2004090249"
	.asciz "E2004090250"
	.asciz "E2004090251"
	.asciz "E2004090252"
	.balign 4


.global lbl_8051C1F8
lbl_8051C1F8:
	# ROM: 0x5182F8
	.4byte 0x3B9A9E81
	.4byte 0x0DBB11D2
	.4byte 0xA6BF4445
	.4byte 0x53540000


.global lbl_8051C208
lbl_8051C208:
	.asciz "SJRBF Error"
	.asciz " : NULL pointer is passed."
	.asciz "E2005120201"
	.asciz " : Work area size is too short."
	.asciz "E2005120202"
	.asciz "E2005120203"
	.asciz "E2004090201"
	.asciz " : Specified handle is invalid."
	.asciz "E2004090202"
	.asciz "E2004090203"
	.asciz "E2004090204"
	.asciz "E2004090205"
	.asciz "E2004090206"
	.asciz "E2006120701"
	.asciz "E2006120702"
	.asciz "E2004090207"
	.asciz "E2004090208"
	.asciz "E2004090209"
	.asciz "E2004090210"
	.asciz "E2004090211"
	.asciz "E2004090212"
	.asciz " : Illegal buffer size."
	.asciz "E2004090219"
	.asciz "E2004090213"
	.asciz "E2004090214"
	.asciz "E2004090215"
	.asciz "E2004090216"
	.asciz "E2004090220"
	.asciz "E2004090217"
	.asciz "E2004090218"
	.asciz "E2004090221"
	.asciz "E2004090222"
	.asciz "E2004090223"
	.asciz "E2004090224"
	.asciz "E2004090225"
	.asciz "E2004090226"
	.asciz "E2004090227"
	.asciz "E2004090228"
	.asciz "E2004090229"
	.asciz "E2004090230"
	.balign 4
	.4byte 0


.global lbl_8051C430
lbl_8051C430:
	# ROM: 0x518530
	.4byte 0x2E534FA3
	.4byte 0xAF9711D2
	.4byte 0xA5270060
	.4byte 0x089448BC


.global lbl_8051C440
lbl_8051C440:
	.asciz "SJUNI Error"
	.asciz " : NULL pointer is passed."
	.asciz "E2004090261"
	.asciz " : Specified handle is invalid."
	.asciz "E2004090262"
	.asciz "E2004090263"
	.asciz "E2004090264"
	.asciz "E2004090265"
	.asciz "E2004090266"
	.asciz "E2004090267"
	.asciz "E2004090268"
	.asciz "E2004090269"
	.asciz "E2004090270"
	.asciz "E2004090271"
	.asciz "E2004090272"
	.asciz "E2004090273"
	.asciz "E2004090274"
	.asciz "E2004090275"
	.asciz "E2004090276"
	.asciz "E2004090277"
	.asciz "E2004090278"
	.asciz "E2004090279"
	.asciz "E2004090280"
	.asciz "E2004090281"
	.asciz "E2004090282"
	.balign 4


.global lbl_8051C590
lbl_8051C590:
	.asciz "2103102:SVM:svm_unlock:lock type miss match.(type org=%d, type now=%d)"
	.asciz "1071205:SVM_SetCbSvrId:illegal svtype"
	.asciz "Unknown"
	.asciz "1051001:SVM_SetCbSvr:too many server function"
	.asciz "1051002:SVM_DelCbSvr:illegal id"
	.asciz "1071206:SVM_SetCbSvrId:illegal svtype"
	.asciz "1071201:SVM_SetCbSvrId:illegal id"
	.asciz "1071202:SVM_SetCbSvrId:illegal svtype"
	.asciz "2100801:SVM_SetCbSvrId:over write callback function."
	.asciz "1071301:SVM_ExecSvrFuncId:illegal id"
	.asciz "1071302:SVM_ExecSvrFuncId:illegal svtype"
	.4byte 0


.global lbl_8051C748
lbl_8051C748:
	.asciz "SPSD"
	.balign 4


.global lbl_8051C750
lbl_8051C750:
	.asciz ".snd"
	.asciz ".sd"
	.4byte 0
	.byte 0x00, 0x00, 0x00
.global lbl_8051C760
lbl_8051C760:
	.asciz "\nAXRNA Ver.1.15 Build:Nov 13 2008 10:53:00\n"


.global lbl_8051C78C
lbl_8051C78C:
	# ROM: 0x51888C
	.4byte lbl_8051C760


.global lbl_8051C790
lbl_8051C790:
	.asciz "E1070301:Invalid parameter(maxnch<=0).\n"
	.asciz "E1070302:Invalid parameter(sj=null).\n"
	.asciz "E1070303:Invalid parameter(sj[]=null).\n"
	.asciz "E1070304:Not enough RNA handle.\n"
	.asciz "E1070306:Can't create SJ.\n"
	.asciz "E1070307:Can't acquire voice(AX).\n"
	.asciz "E2071701:DMA transfer(data) to A-RAM did not finish.\n"
	.asciz "E2071701:DMA transfer(flash) to A-RAM did not finish.\n"
	.asciz "E1070308:Invalid parameter(sw).\n"
	.asciz "E1070309:Invalid parameter(sw).\n"
	.asciz "E8020801:Invalid parameter(work=NULL).\n"
	.asciz "E8020802:Invalid parameter(size or max_unit_len).\n"
	.asciz "E8020803:ADXWII_InitTS() was not called.\n"
	.asciz "E8022501:Invalid parameter(60<=unit_len<=100).\n"
	.asciz "E8020804:Invalid parameter(work=NULL).\n"
	.asciz "E8020805:Invalid parameter(size or max_unit_len).\n"
	.asciz "E8020806:Invalid parameter(adxt=NULL).\n"
	.asciz "E8020807:Invalid parameter(adxt=NULL).\n"
	.asciz "E8020808:ADXWII_InitTS() was not called.\n"
	.asciz "E8020809:Invalid parameter(adxt=NULL).\n"
	.asciz "E8020811:Invalid parameter(unit_len<60 or unit_len>100).\n"
	.asciz "E8022001:ADXWII_AttachTS() was not called.\n"
	.asciz "E8022502:Invalid parameter(unit_len > max_unit_len).\n"
	.asciz "E8021902:ADXWII_InitTS() was not called.\n"
	.asciz "E8021903:Invalid parameter(adxt=NULL).\n"
	.asciz "E8022002:ADXWII_AttachTS() was not called.\n"
	.asciz "E8021901:Too many channels(Time Stretch is only mono).\n"
	.asciz "E8021902:TS output buffer is discontinuous.\n"
	.asciz "E6112701:Invalid sampling frequency(32028Hz).\n"
	.asciz "E8043001:Invalid parameter(wpadno<0 or wpadno>3).\n"
	.asciz "E8043002:Invalid parameter(wpadno<0 or wpadno>3).\n"
	.balign 4
	.4byte 0

.global lbl_8051CCE0
lbl_8051CCE0:
	.asciz "\nADXWII Ver.1.04 Build:Nov 13 2008 10:53:01\n"
	.balign 4


.global lbl_8051CD10
lbl_8051CD10:
	# ROM: 0x518E10
	.4byte lbl_8051CCE0


.global lbl_8051CD14
lbl_8051CD14:
	.asciz "1060102: Internal Error: adxm_goto_mwidle_border"
	.balign 4

.global lbl_8051CD48
lbl_8051CD48:
	.asciz "\nADXWIISDK Ver.30Jul2008Patch02 Build:Nov 13 2008 10:53:01\n"


.global lbl_8051CD84
lbl_8051CD84:
	# ROM: 0x518E84
	.4byte lbl_8051CD48


.global lbl_8051CD88
lbl_8051CD88:
	# ROM: 0x518E88
	.4byte 0x4D465300
	.4byte 0x47434400


.global lbl_8051CD90
lbl_8051CD90:
	.asciz "\nCRI CRW:STD/WII Ver.0.83 Build:Nov 13 2008 10:53:02\n"
	.asciz "Append: MW4199 WII30Jul2008Patch02\n"
	.balign 4
	.4byte 0


.global lbl_8051CDF0
lbl_8051CDF0:
	# ROM: 0x518EF0
	.4byte 0x3F950A85
	.float 0.5
	.4byte 0xBEC880BB
	.4byte 0x40011A55
	.4byte 0x3FCC4A9A
	.4byte 0xBF50147A
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0x437F0000
	.4byte 0x3F94FDF4
	.4byte 0x40011687
	.4byte 0xBEC8B439
	.4byte 0
	.4byte 0xBF5020C5
	.4byte 0x3FCC49BA
	.4byte 0x41800000
	.4byte 0x40145D17
	.4byte 0x437B0000
	.4byte 0x43300000
	.4byte 0
	.4byte 0xC1910A85
	.4byte 0x42880000
	.4byte 0x40945D17
	.4byte 0x43770000
	.4byte 0x401306EB
	.4byte 0


.global lbl_8051CE58
lbl_8051CE58:
	.asciz "\nCRI CFT/WII Ver.2.11 Build:Nov 13 2008 18:21:14\n"
	.asciz "Append: MW4199 WII30Jul2008Patch02\n"
	.balign 4


.global lbl_8051CEB0
lbl_8051CEB0:
	.asciz "E1122629 mwPlySetFrmSync: handle is invalid."
	.asciz "E2010801 mwPlyGetFrmSync: handle is invalid."
	.asciz "E410131 mwPlyGetFrm: handle is invalid."
	.asciz "E4110902 Don't use another type get/rel frame API together."
	.asciz "E1122614 mwPlyGetCurFrm: handle is invalid."
	.asciz "E1122618 mwPlyIsNextFrmReady: handle is invalid."
	.asciz "E05111910 mwl_convPtypeFromSFD : Invalid Ptype"
	.asciz "E201301 MWSFD: GetFps failed."
	.asciz "E301271 mwsffrm_DecideFrmType() : Invalid Pstruct"
	.asciz "E05111911 mwl_convPtypeToSFD : Invalid Ptype"
	.asciz "E410132 mwPlyRelFrm: handle is invalid."
	.asciz "E1122615 mwPlyRelCurFrm: handle is invalid."
	.asciz "E3122201 mwPlyGetNextPicUsr: handle is invalid."
	.asciz "E202231 mwPlyGetNumSkipDisp: handle is invalid."
	.asciz "E7060504 SFH_Create return NULL."
	.asciz "E7060505 SFH_Create return NULL."
	.asciz "E409171 mwPlyGetNumRemainFrm: handle is invalid."
	.asciz "E602201 mwPlyGetPlayingHdrInf: handle is invalid."


.global lbl_8051D1D0
lbl_8051D1D0:
	.asciz "E1122633 mwPlyEntryFname: handle is invalid."
	.asciz "E10915B mwPlyEntryFname: fname is NULL."
	.asciz "E204021: mwPlyEntryFname: Can't entry file'%s'"
	.asciz "E1122634 mwPlyStartSeamless: handle is invalid."
	.asciz "E1122642 mwPlyLinkStm: handle is invalid."
	.asciz "E1122641 mwPlySetLpFlg: handle is invalid."
	.asciz "E1122630 mwPlyStartFnameLp: handle is invalid."
	.asciz "E10915A mwPlyStartFnameLp: fname is NULL."
	.asciz "E1122631 mwPlyReleaseLp: handle is invalid."
	.asciz "E1122635 mwPlyReleaseSeamless: handle is invalid."
	.asciz "E1122636 mwPlyEntryAfs: handle is invalid."
	.asciz "E008311 mwPlyEntryAfs: can't entry pid=%d fid=%d"
	.asciz "E1122632 mwPlyStartAfsLp: handle is invalid."
	.asciz "E407023 mwPlyEntryFnameRange: handle is invalid."
	.asciz "E407024 mwPlyStartFnameRangeLp: handle is invalid."
	.asciz "E1122637 mwPlyGetSlFname: handle is invalid."
	.asciz "E10821B : Invalid value of stm_no : %d"
	.asciz "%08x.%08x"
	.asciz "E05080801 framerate of movie is invalid."
	.4byte 0


.global lbl_8051D508
lbl_8051D508:
	.asciz "E201184 MwsfdBufFmt value is invalid."
	.asciz "E301272 picture_structure is invalid."
	.asciz "E301273 chroma_format is invalid."
	.asciz "E301274 chromapos is invalid."
	.asciz "E2011911 mwPlyFxCnvFrmZ16: handle is invalid."
	.asciz "E2011912 mwPlyFxCnvFrmZ16: getfrm is failed."
	.asciz "E2011913 mwPlyFxCnvFrmZ32: handle is invalid."
	.asciz "E2011914 mwPlyFxCnvFrmZ32: getfrm is failed."
	.asciz "E201214 mwPlyFxSetCompoMode: handle is invalid."
	.asciz "E204011 mwPlyFxSetCompoMode: COMPO_Z needs setting in MWPLY Creation."
	.asciz "E204012 mwPlyFxSetCompoMode: COMPO_AUTO needs setting in MWPLY Creation."
	.asciz "E2011915 mwPlyFxGetCompoMode: handle is invalid."
	.asciz "E306091 MWSFSFX_SetOutBufSize: handle is invalid."
	.asciz "E307092 mwPlyFxGetOutBufPitchHeight: handle is invalid."
	.asciz "E2011918 mwPlyFxSetOutZscale: handle is invalid."
	.asciz "E2011919 mwPlyFxGetOutZscale: handle is invalid."
	.asciz "E2011920 mwPlyFxSetOutZoffset: handle is invalid."
	.asciz "E2011921 mwPlyFxGetOutZoffset: handle is invalid."
	.asciz "E201211 mwPlyCreate: can't create AddInfSJ"
	.asciz "SFXINFS"
	.asciz "SFXINFE"
	.asciz "CRITAGS"
	.asciz "CRITAGE"
	.asciz "W2121001 mwPlyAttachAddInfBuf(): bufsize is short."
	.asciz "E202283 MWSFD_MakeTblZ16: handle is invalid."
	.asciz "E202284 MWSFD_MakeTblZ16: getfrm is failed."
	.asciz "E202285 MWSFD_MakeTblZ32: handle is invalid."
	.asciz "E202286 MWSFD_MakeTblZ32: getfrm is failed."
	.asciz "E404010 mwPlySetCnvBottomUp: handle is invalid."
	.asciz "E404011 mwPlyGetCnvBottomUp: handle is invalid."
	.balign 4
	.4byte 0

.global lbl_8051DA00
lbl_8051DA00:
	.4byte lbl_805202A0
	.4byte lbl_805202D8
	.4byte lbl_80520320
	.4byte lbl_8051FEE0
	.4byte 0
	.4byte 0
	.4byte lbl_805206B0
	.4byte lbl_8051FF48
	.4byte lbl_80520678

.global lbl_8051DA24
lbl_8051DA24:
	.4byte lbl_805202A0
	.4byte 0
	.4byte lbl_80520320
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_805206B0
	.4byte 0
	.4byte 0

.global lbl_8051DA48
lbl_8051DA48:
	.4byte lbl_805202A0
	.4byte lbl_805202D8
	.4byte lbl_80520320
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte lbl_805206B0
	.4byte 0
	.4byte lbl_80520678


.global lbl_8051DA6C
lbl_8051DA6C:
	# ROM: 0x519B6C
	.float 0.5


.global lbl_8051DA70
lbl_8051DA70:
	# ROM: 0x519B70
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8051DA78
lbl_8051DA78:
	.asciz "E206011 MwsfdCrePrm: illigal buffmt."
	.asciz "E1122613 mwPlyCalcWorkCprmSfd: cprm is NULL."
	.asciz "E7092501 mwPlyCalcWorkCprmSfd: M4V is not support."
	.asciz "E7092502 mwPlyCalcWorkCprmSfd: H264 is not support."
	.asciz "E6081101 outer_frmpool_num error"
	.asciz "E6081102 outer_frmpool_size error"
	.asciz "E6081103 outer_frmpool_ptr error"
	.asciz "E20010703B MWSFCRE_SetSupplySj"
	.asciz "E2053002 not enough work"
	.asciz "E4041301 not enough work"
	.asciz "E20010703C mwPlyCreateSofdec: create error"
	.asciz "E20010703D mwPlyCreateSofdec: set errcb"
	.asciz "E410142 mwPlyCreateSofdec: can't skghn."
	.asciz "E02120501 Internal Error: mwsfcre_AttachPicUsrBuf()."
	.asciz "E02120502 mwsfcre_AttachPicUsrBuf(): usrdatbuf is short."
	.asciz "E02120503 mwPlyAttachPicUsrBuf(): bufsize is short."
	.asciz "E20010703E MWSFCRE_DestroySfd"
	.asciz "E0203261 MWSFCRE_ResetSfdHn: SFD_Stop() failed."
	.asciz "E0203262 MWSFCRE_ResetSfdHn: SFD_SetErrFn() failed."
	.asciz "%ld, %ld, %ld, %ld, %ld, %ld, %p, %ld, %ld, %d, %ld, %ld, %p"
	.asciz "E1122612 mwPlyCreateSofdec : cprm is NULL."
	.asciz "E3012102 Buffer format is invalid."
	.asciz "E4110901 Number of frame pool exceeds 14."
	.asciz "E4061801 mwPlyCreateSofdec: Number of MWPLY handles exceeds its maximum number."
	.asciz "E2053006 mwPlyCreateSofdec: Didn't set malloc/free func."
	.asciz "E2012 mwPlyCreate:can't create SFD"
	.asciz "E2013 mwPlyCreate:can't create SJ"
	.asciz "E08102901 mwPlyCreate:can't create uniSJ"
	.asciz "E201185 can't create SfxHn"
	.asciz "E201212 mwPlyCreate: can't set AddInfSJ"
	.asciz "E2053003 not enough work: sfx_wk"
	.asciz "E2053004 not enough work: ainfsj_buf"
	.asciz "E2053005 forgot free."
	.asciz "E410251 mwPlyGetHdrInfWithKey: parameter is illigal."
	.asciz "E204161 mwPlyGetHdrInf(): NULL pointer"
	.asciz "E204162 mwPlyGetHdrInf(): bufsize error"
	.asciz "E7060501 mwPlyGetHdrAudioDetail(): NULL pointer"
	.asciz "E7060502 mwPlyGetHdrAudioDetail(): bsize is too small."
	.asciz "E7060503 SFH_Create return NULL."
	.4byte 0


.global lbl_8051E0E0
lbl_8051E0E0:
	.asciz "\nMWSFD/WII Ver.4.75 Build:Nov 13 2008 18:21:20\n"
	.asciz "Append: MW4199 WII30Jul2008Patch02\n"

.global lbl_8051E134
lbl_8051E134:
	.4byte lbl_805202A0
	.4byte lbl_805202D8
	.4byte lbl_80520320
	.4byte lbl_805206B0
	.4byte lbl_8051FEE0
	.4byte lbl_8051FF48
	.4byte lbl_80520678
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8051E170
lbl_8051E170:
	# ROM: 0x51A270
	.4byte lbl_8051E134
	.4byte 0x0000EA24
	.4byte 0x00000670

.global lbl_8051E17C
lbl_8051E17C:
	.asciz "mwPlyInitSfdFx"
	.balign 4
	.asciz "mwPlyFinishSfdFx"
	.balign 4

.global lbl_8051E1A0
lbl_8051E1A0:
	.asciz "mwPlyCreateSofdec"
	.balign 4

.global lbl_8051E1B4
lbl_8051E1B4:
	.asciz "cpara_members"
	.balign 4

.global lbl_8051E1C4
lbl_8051E1C4:
	.asciz "mwply"
	.balign 4

.global lbl_8051E1CC
lbl_8051E1CC:
	.asciz "mwPlyDestroy"
	.balign 4
	.4byte 0

.global lbl_8051E1E0
lbl_8051E1E0:
	.asciz "mwPlyStartFname"

.global lbl_8051E1F0
lbl_8051E1F0:
	.asciz "fname"
	.balign 4
	.asciz "mwPlyStartFnameRange"
	.balign 4
	.asciz "offset_sct"
	.balign 4
	.asciz "range_sct"
	.balign 4
	.asciz "mwPlyStartMem"
	.balign 4
	.asciz "addr"
	.balign 4
	.asciz "len"
	.asciz "mwPlyStartSj"
	.balign 4
	.asciz "sji"
	.asciz "mwPlyStartAfs"
	.balign 4
	.asciz "patid"
	.balign 4
	.asciz "fid"

.global lbl_8051E274
lbl_8051E274:
	.asciz "mwPlyStartFnameLp"
	.balign 4

.global lbl_8051E288
lbl_8051E288:
	.asciz "mwPlyReleaseLp"
	.balign 4
	.asciz "mwPlyStartAfsLp"
	.asciz "mwPlyStartFnameRangeLp"
	.balign 4

.global lbl_8051E2C0
lbl_8051E2C0:
	.asciz "mwPlyEntryFname"

.global lbl_8051E2D0
lbl_8051E2D0:
	.asciz "mwPlyStartSeamless"
	.balign 4

.global lbl_8051E2E4
lbl_8051E2E4:
	.asciz "mwPlyReleaseSeamless"
	.balign 4

.global lbl_8051E2FC
lbl_8051E2FC:
	.asciz "mwPlySetSeamlessLp"
	.balign 4

.global lbl_8051E310
lbl_8051E310:
	.asciz "flag"
	.balign 4

.global lbl_8051E318
lbl_8051E318:
	.asciz "mwPlyStop"
	.balign 4
	.asciz "mwPlyRequestStop"
	.balign 4

.global lbl_8051E338
lbl_8051E338:
	.asciz "MWSFSVM_Error"
	.balign 4

.global lbl_8051E348
lbl_8051E348:
	.asciz "errstr"
	.balign 4

.global lbl_8051E350
lbl_8051E350:
	.asciz "MWSFSVM_GotoIdleBorder"
	.balign 4

.global lbl_8051E368
lbl_8051E368:
	.asciz "MWSFSVR_VsyncThrdProc"
	.balign 4

.global lbl_8051E380
lbl_8051E380:
	.asciz "remain_work_flag"
	.balign 4

.global lbl_8051E394
lbl_8051E394:
	.asciz "MWSFSVR_MainThrdProc"
	.balign 4

.global lbl_8051E3AC
lbl_8051E3AC:
	.asciz "MWSFSVR_IdleThrdProc"
	.balign 4

.global lbl_8051E3C4
lbl_8051E3C4:
	.asciz "MWSFSVR_DecodeServer"
	.balign 4

.global lbl_8051E3DC
lbl_8051E3DC:
	.asciz "mwsfd_ExecSvrHndl"
	.balign 4

.global lbl_8051E3F0
lbl_8051E3F0:
	.asciz "mwSfdVsync"
	.balign 4
	.float 0.5
	.4byte 0x447A0000


.global lbl_8051E404
lbl_8051E404:
	# ROM: 0x51A504
	.4byte 0x426FC28F


.global lbl_8051E408
lbl_8051E408:
	.asciz "E1122611 mwPlyInitSfdFx: iprm is NULL."
	.asciz "E2005 mwPlyInitSfdFx: can't init GSC"
	.asciz "ERR20010421A mwPlyInitSfdFx"
	.asciz "MWSFSVR_VsyncThrdProc"
	.asciz "MWSFSVR_MainThrdProc"
	.asciz "MWSFSVR_IdleThrdProc"
	.asciz "2.080"
	.asciz "E011081 mwPlySfdInit: Not compatible SFD Version."
	.asciz "DATA ERROR(%08X)"
	.asciz "SFD ERROR(%08X): 'max_width, max_height' of creation parameter is short. Increase this value."
	.asciz "SFD ERROR(%08X): 'max_width, max_height' of creation parameter is short. This movie size is %d x %d."
	.asciz "SFD ERROR(%08X): Read buffer is small. Increase 'max_bps' of creation parameter."
	.asciz "SFD ERROR(%08X): Frame pool size is incorrect. Set positive integer to 'nfrm_pool_wk' of creation parameter."
	.asciz "SFD ERROR(%08X): Number of ADXT handles exceeds its maximum number. MWPLY handle uses one ADXT handle(stereo) for MWSFD_FTYPE_SFD."
	.asciz "SFD ERROR(%08X): mwPlyRelFrm() was called twice to the same frame ID."
	.asciz "SFD ERROR(%08X): Decode picture error. For example, this library can't decode MPEG-2 video."
	.asciz "SFD ERROR(%08X)"
	.balign 4


.global lbl_8051E7B0
lbl_8051E7B0:
	# ROM: 0x51A8B0
	.4byte 0x3FE99999
	.4byte 0x9999999A


.global lbl_8051E7B8
lbl_8051E7B8:
	# ROM: 0x51A8B8
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8051E7C0
lbl_8051E7C0:
	.asciz "E20010703F mwPlySfdStandby"
	.asciz "E20010703G mwPlySfdStart"
	.asciz "E10821A : Invalid value of SFD_GetPaStat : %d"
	.asciz "E06083101 mwPlyTermSupply: can't term"
	.asciz "E0203263 mw_sfd_start_ex: RESET failed."
	.asciz "E201213 mw_sfd_start_ex: can't set AddInfSJ"
	.asciz "E08031101 mwPlyStartXX: can't link stream"
	.asciz "E2007 mwPlyPause; can't pause (%s)"
	.asciz "ON"
	.asciz "OFF"
	.asciz "E1122601 mwPlyStartFname: handle is invalid."
	.asciz "E10915C mwPlyStartFname: fname is NULL."
	.asciz "E211121 filename is longer."
	.asciz "E08111003 memory entry is over 16."
	.asciz "E08111002 failed to get file size form sofdec header."
	.asciz "E08111004 mwPlyStartMemSeamless: handle is invalid."
	.asciz "E08111005 mwPlyStartMemSeamless: can't play file type MPV. Use memory file system(MFS)."
	.asciz "E1122610 mwPlyStartMem: handle is invalid."
	.asciz "E4111701 mwPlyStartMem: can't play file type MPV. Use memory file system(MFS)."
	.asciz "E08111001 failed to get file size form sofdec header."
	.asciz "E1122609 mwply_StartSj: handle is invalid."
	.asciz "E2003 mwSfdStop:can't stop SFD"
	.asciz "E1122602 mwSfdStop: handle is invalid."
	.asciz "E11226041 mwPlyStepFrame; handle is invalid."
	.asciz "E1122604 mwPlyPause; handle is invalid."
	.asciz "E1110801 mwPlyControlVideoDecoding_ext; handle is invalid."
	.asciz "E1122638 mwPlyStartAfs: handle is invalid."
	.asciz "E211151 ADXF_GetFnameRangeEx() faild."
	.asciz "%08x.%08x"
	.asciz "E407021 mwPlyStartFnameRange: handle is invalid."
	.asciz "E407022 mwPlyStartFnameRange: fname is NULL."
	.asciz "E5090602 mwPlyRequestStop: handle is invalid."
	.asciz "E7021901 mwPlyStartIpicture: handle is invalid."
	.asciz "E7021901 mwPlyStartIpicture: parametar error."
	.asciz "E7021901 mwPlyStartIpicture: seekipic_tbl indicates that data is not only I picture."
	.balign 4
	.4byte 0


.global lbl_8051ED98
lbl_8051ED98:
	.asciz "E1122617 mwPlySetAudioSw: handle is invalid."
	.asciz "E6042001 mwPlySetVideoSw: handle is invalid."
	.asciz "E1122640 mwPlyGetSfdHn: handle is invalid."
	.asciz "E1122639 mwPlyGetAdxtHn: handle is invalid."
	.asciz "E202232 mwPlyGetNumDropFrm: handle is invalid."
	.asciz "E1122619 mwPlyGetNumSkipDec: handle is invalid."
	.asciz "E1122628 mwPlySetBpicSkip mwPlySetPpicSkip: handle is invalid."
	.asciz "E1122616 mwPlySetAudioCh: handle is invalid."
	.asciz "E10911A mwPlySetAudioCh: Invalid ch no."
	.asciz "E2080801 mwPlyGetNumAudioCh: handle is invalid."
	.asciz "E2080601 mwPlySetVideoCh: handle is invalid."
	.asciz "E2080602 mwPlySetVideoCh: Invalid ch no."
	.asciz "E2080802 mwPlyGetNumVideoCh: handle is invalid."
	.asciz "E1122625 mwPlySetLimitTime: handle is invalid."
	.asciz "E5090601 mwPlyGetLimitTime: handle is invalid."
	.asciz "W200401 mwPlyGetStat: handle is invalid"
	.asciz "E1122644 mwPlySetFrameOutputCycle: handle is invalid."
	.asciz "E1122626 mwPlySetSyncMode: handle is invalid."
	.asciz "E6020801 syncmode is invalid."
	.asciz "E2010802 mwPlyGetSyncMode: handle is invalid."
	.asciz "E1122621 mwPlyGetNumDecPool: handle is invalid."
	.asciz "E1121601 mwPlyGetNumDecPool"
	.asciz "E1122620 mwPlyGetNumTotalDec: handle is invalid."
	.asciz "E1122603 mwPlyGetTime; handle is invalid."
	.asciz "E200601 mwPlyGetTime; can't get time"
	.asciz "E1122605 mwPlySetOutVol: handle is invalid."
	.asciz "E1122606 mwPlyGetOutVol: handle is invalid."
	.asciz "E1122607 mwPlySetOutPan: handle is invalid."
	.asciz "E1122608 mwPlyGetOutPan: handle is invalid."
	.asciz "E1122623 mwPlyGetNumSkipEmptyB: handle is invalid."
	.asciz "E1122627 mwPlySetEmptyBpicSkip: handle is invalid."
	.asciz "E1122624 mwPlyGetInputSj: handle is invalid."
	.asciz "E202191 mwPlyGetPlyInf: handle is invalid."
	.asciz "E1122643 mwPlyGetFlowInf: handle is invalid."
	.asciz "E302251 mwPlySetSpeedRational: handle is invalid."
	.asciz "E302251 mwPlySetSpeed: handle is invalid."
	.asciz "E211051 mwPlySetFloatSpeed: handle is invalid."
	.asciz "E5060801 mwPlySetUpdateTimeAuto: handle is invalid."
	.balign 4


.global lbl_8051F450
lbl_8051F450:
	.asciz "E211141 MWSTM_ReqStart: can't start '%s'"
	.asciz "E1071901 mwPlyExecSvrHndl: NULL handle."
	.asciz "E2011101 MWSFSVR_IsSvrBdrHndl: handle is invalid."
	.asciz "E211142 mwPlyIsDecoderWaiting: can't use on multi thread."
	.balign 4


.global lbl_8051F510
lbl_8051F510:
	.asciz "E2053001 MWSFD_Malloc: cnt over."
	.balign 4
	.4byte 0


.global lbl_8051F538
lbl_8051F538:
	# ROM: 0x51B638
	.4byte 0xFFFF7FFF
	.4byte 0x3FFF1FFF
	.4byte 0x0FFF07FF
	.4byte 0x03FF01FF
	.4byte 0x00FF007F
	.4byte 0x003F001F
	.4byte 0x000F0007
	.4byte 0x00030001
	.4byte 0x00010810
	.4byte 0x0902030A
	.4byte 0x11182019
	.4byte 0x120B0405
	.4byte 0x0C131A21
	.4byte 0x28302922
	.4byte 0x1B140D06
	.4byte 0x070E151C
	.4byte 0x232A3138
	.4byte 0x39322B24
	.4byte 0x1D160F17
	.4byte 0x1E252C33
	.4byte 0x3A3B342D
	.4byte 0x261F272E
	.4byte 0x353C3D36
	.4byte 0x2F373E3F
	.4byte 0x08101316
	.4byte 0x1A1B1D22
	.4byte 0x10101618
	.4byte 0x1B1D2225
	.4byte 0x13161A1B
	.4byte 0x1D222226
	.4byte 0x16161A1B
	.4byte 0x1D222528
	.4byte 0x161A1B1D
	.4byte 0x20232830
	.4byte 0x1A1B1D20
	.4byte 0x2328303A
	.4byte 0x1A1B1D22
	.4byte 0x262E3845
	.4byte 0x1B1D2326
	.4byte 0x2E384553
	.4byte 0x05040303
	.4byte 0x02020202
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8051F5F8
lbl_8051F5F8:
	# ROM: 0x51B6F8
	.4byte func_803A401C
	.4byte func_803A44C4


.global lbl_8051F600
lbl_8051F600:
	.asciz "2.059"
	.balign 4


.global lbl_8051F608
lbl_8051F608:
	# ROM: 0x51B708
	.4byte 0x04030101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x00002040
	.4byte 0x00100080
	.4byte 0x08000000
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
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8051F708
lbl_8051F708:
	# ROM: 0x51B808
	.4byte 0x00000101
	.4byte 0x03030203
	.4byte 0x03040204
	.4byte 0x03050205
	.4byte 0x07070607
	.4byte 0x0B080A08
	.4byte 0x09080808
	.4byte 0x07080608
	.4byte 0x170A160A
	.4byte 0x150A140A
	.4byte 0x130A120A
	.4byte 0x230B220B
	.4byte 0x210B200B
	.4byte 0x1F0B1E0B
	.4byte 0x1D0B1C0B
	.4byte 0x1B0B1A0B
	.4byte 0x190B180B
	.4byte 0x0F0B080B


.global lbl_8051F750
lbl_8051F750:
	# ROM: 0x51B850
	.4byte 0
	.4byte func_803A477C
	.4byte func_803A4B64
	.4byte func_803A52DC
	.4byte 0
	.4byte 0


.global lbl_8051F768
lbl_8051F768:
	.asciz "IDCPREC"
	.asciz "STCCODE"


.global lbl_8051F778
lbl_8051F778:
	.asciz "\nCRI MPV/WII Ver.2.059 Build:Nov 13 2008 18:21:44\n"
	.asciz "Append: MW4199 WII30Jul2008Patch02\n"
	.balign 4


.global lbl_8051F7D0
lbl_8051F7D0:
	# ROM: 0x51B8D0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000003
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x5A5A5A5A


.global lbl_8051F814
lbl_8051F814:
	.asciz "2.059"
	.balign 4
	.4byte 0


.global lbl_8051F820
lbl_8051F820:
	# ROM: 0x51B920
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8051F830
lbl_8051F830:
	# ROM: 0x51B930
	.4byte 0x12011101
	.4byte 0x10010F01
	.4byte 0x03060210
	.4byte 0x020F020E
	.4byte 0x020D020C
	.4byte 0x020B011F
	.4byte 0x011E011D
	.4byte 0x011C011B
	.4byte 0x28002700
	.4byte 0x26002500
	.4byte 0x24002300
	.4byte 0x22002100
	.4byte 0x20000E01
	.4byte 0x0D010C01
	.4byte 0x0B010A01
	.4byte 0x09010801
	.4byte 0x1F001E00
	.4byte 0x1D001C00
	.4byte 0x1B001A00
	.4byte 0x19001800
	.4byte 0x17001600
	.4byte 0x15001400
	.4byte 0x13001200
	.4byte 0x11001000
	.4byte 0x020A0209
	.4byte 0x03050403
	.4byte 0x05020701
	.4byte 0x06010F00
	.4byte 0x0E000D00
	.4byte 0x0C00011A
	.4byte 0x01190118
	.4byte 0x01170116
	.4byte 0x0B000208
	.4byte 0x03040A00
	.4byte 0x04020207
	.4byte 0x01150114
	.4byte 0x09000113
	.4byte 0x01120501
	.4byte 0x03030800
	.4byte 0x02060111
	.4byte 0x01100205
	.4byte 0x07000302
	.4byte 0x0401010F
	.4byte 0x010E0204


.global lbl_8051F8E0
lbl_8051F8E0:
	# ROM: 0x51B9E0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8051F8F0
lbl_8051F8F0:
	# ROM: 0x51B9F0
	.4byte func_803AF010
	.4byte func_803B2650
	.4byte func_803B5C70
	.4byte 0


.global lbl_8051F900
lbl_8051F900:
	# ROM: 0x51BA00
	.4byte 0x3FD6A09E
	.4byte 0x667F3BCD
	.4byte 0x3FE00000
	.4byte 0
	.4byte 0x3FD921FB
	.4byte 0x54442D18
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_8051F920
lbl_8051F920:
	# ROM: 0x51BA20
	.4byte 0
	.4byte 0


.global lbl_8051F928
lbl_8051F928:
	# ROM: 0x51BA28
	.4byte 0x800100FF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x800101FF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xC8030201
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xC8030301
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xEC050403
	.4byte 0x020100FF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xEC050503
	.4byte 0x020100FF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFE070605
	.4byte 0x04030201
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFE070705
	.4byte 0x04030201
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x88020100
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xC8030101
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xC8030302
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xEC050303
	.4byte 0x020100FF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xEC050504
	.4byte 0x020100FF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFE070505
	.4byte 0x04030201
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFE070706
	.4byte 0x04030201
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x06050403
	.4byte 0x0201FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xC8030100
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xC8030302
	.4byte 0x01FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xEC050302
	.4byte 0x020100FF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xEC050504
	.4byte 0x030100FF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFE070504
	.4byte 0x04030201
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFE070706
	.4byte 0x05030201
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080706
	.4byte 0x06050403
	.4byte 0x0201FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07050403
	.4byte 0x0201FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xCC040302
	.4byte 0x0100FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xEC050302
	.4byte 0x010100FF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xEC050504
	.4byte 0x030200FF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFE070504
	.4byte 0x03030201
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFE070706
	.4byte 0x05040201
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080706
	.4byte 0x05050403
	.4byte 0x0201FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07060403
	.4byte 0x0201FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07070605
	.4byte 0x0403FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xEC050302
	.4byte 0x010000FF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xEC050504
	.4byte 0x030201FF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFE070504
	.4byte 0x03020201
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFE070706
	.4byte 0x05040301
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080706
	.4byte 0x05040403
	.4byte 0x0201FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07060503
	.4byte 0x0201FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07060605
	.4byte 0x0403FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07070705
	.4byte 0x0403FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xEE060504
	.4byte 0x03020100
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFE070504
	.4byte 0x03020101
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFE070706
	.4byte 0x05040302
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080706
	.4byte 0x05040303
	.4byte 0x0201FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07060504
	.4byte 0x0201FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07060505
	.4byte 0x0403FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07070706
	.4byte 0x0403FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07070707
	.4byte 0x0605FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFE070504
	.4byte 0x03020100
	.4byte 0x00FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFE070706
	.4byte 0x05040302
	.4byte 0x01FFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080706
	.4byte 0x05040302
	.4byte 0x0201FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07060504
	.4byte 0x0301FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07060504
	.4byte 0x0403FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07070706
	.4byte 0x0503FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07070706
	.4byte 0x0605FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07070707
	.4byte 0x0705FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080706
	.4byte 0x05040302
	.4byte 0x0100FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080706
	.4byte 0x05040302
	.4byte 0x0101FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07060504
	.4byte 0x0302FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07060504
	.4byte 0x0303FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07070706
	.4byte 0x0504FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07070706
	.4byte 0x0505FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07070707
	.4byte 0x0706FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFF080707
	.4byte 0x07070707
	.4byte 0x0707FFFF
	.4byte 0xFFFFFFFF
	.4byte func_803BAC0C
	.4byte func_803BAC08
	.4byte func_803BAD98
	.4byte func_803BAD20
	.4byte func_803BAF1C
	.4byte func_803BAEC8
	.4byte func_803BB5B4
	.4byte func_803BB508
	.4byte func_803BB0BC
	.4byte func_803BB040
	.4byte func_803BB5B4
	.4byte func_803BB508
	.4byte func_803BB5B4
	.4byte func_803BB508
	.4byte func_803BB5B4
	.4byte func_803BB508
	.4byte func_803BB238
	.4byte func_803BB1F0
	.4byte func_803BB5B4
	.4byte func_803BB508
	.4byte func_803BB3D4
	.4byte func_803BB370
	.4byte func_803BB5B4
	.4byte func_803BB508
	.4byte func_803BB5B4
	.4byte func_803BB508
	.4byte func_803BB5B4
	.4byte func_803BB508
	.4byte func_803BB5B4
	.4byte func_803BB508
	.4byte func_803BB5B4
	.4byte func_803BB508
	.4byte 0x7FF7BFFB
	.4byte 0xDFFDEFFE
	.4byte 0x3FD6A09E
	.4byte 0x667F3BCD
	.4byte 0x3FDF6297
	.4byte 0xCFF75CB0
	.4byte 0x3FDD906B
	.4byte 0xCF328D46
	.4byte 0x3FDA9B66
	.4byte 0x290EA1A3
	.4byte 0x3FD6A09E
	.4byte 0x667F3BCD
	.4byte 0x3FD1C73B
	.4byte 0x39AE68C8
	.4byte 0x3FC87DE2
	.4byte 0xA6AEA963
	.4byte 0x3FB8F8B8
	.4byte 0x3C69A60B
	.4byte 0x0000000B
	.4byte 0x00000010
	.4byte 0x00000010
	.4byte 0
	.4byte 0x3FE00000
	.4byte 0
	.float 8.0
	.4byte 0
	.4byte 0x41400000
	.4byte 0
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0x41500000
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_8051FE30
lbl_8051FE30:
	.asciz "\nCRI DCT/WII Ver.2.034 Build:Nov 13 2008 18:21:26\n"
	.asciz "Append: MW4199 WII30Jul2008Patch02\n"
	.balign 4


.global lbl_8051FE88
lbl_8051FE88:
	.asciz "\nCRI MPS/WII Ver.2.064 Build:Nov 13 2008 18:21:29\n"
	.asciz "Append: MW4199 WII30Jul2008Patch02\n"
	.balign 4


.global lbl_8051FEE0
lbl_8051FEE0:
	# ROM: 0x51BFE0
	.4byte func_803BD4B4
	.4byte func_803BD4F0
	.4byte func_803BD524
	.4byte func_803BE044
	.4byte func_803BE514
	.4byte func_803BE5F8
	.4byte func_803BE600
	.4byte func_803BE660
	.4byte func_803BE68C
	.4byte func_803BE7BC
	.4byte lbl_803BE7C8
	.4byte lbl_803BE7D4
	.4byte lbl_803BE7E0
	.4byte func_803BE7EC
.global lbl_8051FF18
lbl_8051FF18:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x44D8677D
	.4byte 0x3C23D70A
	.float 0.5
	.4byte 0x43300000
	.4byte 0x80000000
	.asciz "(c)CRI"
	.balign 4

.global lbl_8051FF48
lbl_8051FF48:
	.4byte func_803BEA38
	.4byte func_803BEA40
	.4byte func_803BEA48
	.4byte func_803BEAFC
	.4byte func_803BEB48
	.4byte func_803BEB50
	.4byte func_803BEB78
	.4byte func_803BEBE4
	.4byte func_803BEC50
	.4byte func_803BECC8
	.4byte lbl_803BECD4
	.4byte lbl_803BECE0
	.4byte lbl_803BECEC
	.4byte lbl_803BECF8


.global lbl_8051FF80
lbl_8051FF80:
	.asciz "\nCRI SFD/WII Ver.2.080 Build:Nov 13 2008 18:21:32\n"
	.asciz "Append: MW4199 WII30Jul2008Patch02\n"
	.balign 4

.global lbl_8051FFD8
lbl_8051FFD8:
	.asciz "SFD_Init"
	.balign 4

.global lbl_8051FFE4
lbl_8051FFE4:
	.asciz "vsync_mhz"
	.balign 4

.global lbl_8051FFF0
lbl_8051FFF0:
	.asciz "sfd_errcode"

.global lbl_8051FFFC
lbl_8051FFFC:
	.asciz "SFD_Create"
	.balign 4

.global lbl_80520008
lbl_80520008:
	.asciz "cpara_members"
	.balign 4

.global lbl_80520018
lbl_80520018:
	.asciz "sfdhn"
	.balign 4

.global lbl_80520020
lbl_80520020:
	.asciz "SFD_Destroy"

.global lbl_8052002C
lbl_8052002C:
	.asciz "SFD_Start"
	.balign 4

.global lbl_80520038
lbl_80520038:
	.asciz "SFD_Stop"
	.balign 4
	.4byte 0

.global lbl_80520048
lbl_80520048:
	.asciz "SFD_RequestStop"

.global lbl_80520058
lbl_80520058:
	.asciz "SFD_TermSupply"
	.balign 4

.global lbl_80520068
lbl_80520068:
	.asciz "SFD_GetFrm"
	.balign 4

.global lbl_80520074
lbl_80520074:
	.asciz "frminf"
	.balign 4

.global lbl_8052007C
lbl_8052007C:
	.asciz "time"
	.balign 4

.global lbl_80520084
lbl_80520084:
	.asciz "ptype"
	.balign 4

.global lbl_8052008C
lbl_8052008C:
	.asciz "SFD_RelFrm"
	.balign 4

.global lbl_80520098
lbl_80520098:
	.asciz "SFD_ExecOne"

.global lbl_805200A4
lbl_805200A4:
	.asciz "SFLIB_SetErr"
	.balign 4

.global lbl_805200B4
lbl_805200B4:
	.asciz "SFMPS_ExecServer"
	.balign 4

.global lbl_805200C8
lbl_805200C8:
	.asciz "supplied"
	.balign 4

.global lbl_805200D4
lbl_805200D4:
	.asciz "consumed"
	.balign 4

.global lbl_805200E0
lbl_805200E0:
	.asciz "discarded"
	.balign 4

.global lbl_805200EC
lbl_805200EC:
	.asciz "SFMPV_ExecServer"
	.balign 4

.global lbl_80520100
lbl_80520100:
	.asciz "SFADXT_ExecServer"
	.balign 4

.global lbl_80520114
lbl_80520114:
	.asciz "sfmpv_DecodePicAtr"
	.balign 4

.global lbl_80520128
lbl_80520128:
	.asciz "mpvhn"
	.balign 4

.global lbl_80520130
lbl_80520130:
	.asciz "flowcnt"

.global lbl_80520138
lbl_80520138:
	.asciz "rsiz"
	.balign 4

.global lbl_80520140
lbl_80520140:
	.asciz "mpverr"
	.balign 4

.global lbl_80520148
lbl_80520148:
	.asciz "sfderr"
	.balign 4

.global lbl_80520150
lbl_80520150:
	.asciz "sfmpv_DecodeFrm"

.global lbl_80520160
lbl_80520160:
	.asciz "goporder"
	.balign 4

.global lbl_8052016C
lbl_8052016C:
	.asciz "disp_order_in_gop"
	.balign 4

.global lbl_80520180
lbl_80520180:
	.asciz "errcnt"
	.balign 4

.global lbl_80520188
lbl_80520188:
	.asciz "rcvcnt"
	.balign 4

.global lbl_80520190
lbl_80520190:
	.asciz "num_slices"
	.balign 4

.global lbl_8052019C
lbl_8052019C:
	.asciz "sfmpv_DecodePicAtr_ret"
	.balign 4

.global lbl_805201B4
lbl_805201B4:
	.asciz "dec_ttu.time"
	.balign 4

.global lbl_805201C4
lbl_805201C4:
	.asciz "sfply_AdjustPrepEnd"

.global lbl_805201D8
lbl_805201D8:
	.asciz "vplay"
	.balign 4

.global lbl_805201E0
lbl_805201E0:
	.asciz "aplay"
	.balign 4

.global lbl_805201E8
lbl_805201E8:
	.asciz "sync_mode"
	.balign 4

.global lbl_805201F4
lbl_805201F4:
	.asciz "etrg"
	.balign 4

.global lbl_805201FC
lbl_805201FC:
	.asciz "sfd_isSkip"
	.balign 4

.global lbl_80520208
lbl_80520208:
	.asciz "reason"
	.balign 4

.global lbl_80520210
lbl_80520210:
	.asciz "sfd_waitSupply"
	.balign 4

.global lbl_80520220
lbl_80520220:
	.asciz "sfd_waitRelFrm"
	.balign 4

.global lbl_80520230
lbl_80520230:
	.asciz "sfmpv_ConcatSub"

.global lbl_80520240
lbl_80520240:
	.asciz "concat_cnt"
	.balign 4

.global lbl_8052024C
lbl_8052024C:
	.asciz "add_time"
	.balign 4

.global lbl_80520258
lbl_80520258:
	.asciz "concat_time"

.global lbl_80520264
lbl_80520264:
	.asciz "concat_framecount"
	.balign 4

.global lbl_80520278
lbl_80520278:
	.asciz "sftim_UpdateTime"
	.balign 4

.global lbl_8052028C
lbl_8052028C:
	.asciz "vtime"
	.balign 4

.global lbl_80520294
lbl_80520294:
	.asciz "vtunit"
	.balign 4
	.4byte 0

.global lbl_805202A0
lbl_805202A0:
	.4byte lbl_803C0E40
	.4byte func_803C0E48
	.4byte func_803C0E50
	.4byte func_803C0E7C
	.4byte func_803C0E84
	.4byte func_803C0E8C
	.4byte func_803C0E94
	.4byte func_803C0E9C
	.4byte func_803C0EA4
	.4byte func_803C0EAC
	.4byte lbl_803C0EB8
	.4byte lbl_803C0ED0
	.4byte lbl_803C0EDC
	.4byte lbl_803C0EE8

.global lbl_805202D8
lbl_805202D8:
	.4byte func_803C0F7C
	.4byte func_803C0FD4
	.4byte func_803C0FF8
	.4byte func_803C2AE4
	.4byte func_803C2CBC
	.4byte func_803C2D10
	.4byte func_803C2D18
	.4byte func_803C2D20
	.4byte func_803C2D28
	.4byte func_803C2D30
	.4byte lbl_803C2D3C
	.4byte lbl_803C2D48
	.4byte lbl_803C2D54
	.4byte func_803C2D60


.global lbl_80520310
lbl_80520310:
	# ROM: 0x51C410
	.4byte func_803C1D9C
	.4byte func_803C1F30
	.4byte func_803C214C
	.4byte func_803C23A0


.global lbl_80520320
lbl_80520320:
	# ROM: 0x51C420
	.4byte func_803C3078
	.4byte func_803C312C
	.4byte func_803C3150
	.4byte func_803C73D0
	.4byte func_803C7788
	.4byte func_803C780C
	.4byte func_803C7848
	.4byte func_803C7850
	.4byte func_803C7858
	.4byte func_803C7860
	.4byte lbl_803C786C
	.4byte lbl_803C7878
	.4byte func_803C79F0
	.4byte func_803C79F4


.global lbl_80520358
lbl_80520358:
	# ROM: 0x51C458
	.4byte 0
	.4byte 0x00000018
	.4byte 0x00000018
	.4byte 0x00000019
	.4byte 0x0000001E
	.4byte 0x0000001E
	.4byte 0x00000032
	.4byte 0x0000003C
	.4byte 0x0000003C
	.4byte 0
	.4byte 0x0001A574
	.4byte 0x0000463E
	.4byte 0x00000708
	.4byte 0x00000706
	.4byte 0x0000001C
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0x00000002
	.4byte 0x00034AE8
	.4byte 0x00008C7C
	.4byte 0x00000E10
	.4byte 0x00000E0C
	.4byte 0x00000038
	.4byte 0x0000003C
	.4byte 0x0000000A
	.4byte 0x00000004


.global lbl_805203C0
lbl_805203C0:
	.asciz "before seek time"
	.asciz "ptype"
	.asciz "empty B"
	.asciz "defect"
	.asciz "late"
	.byte 0x00
	.4byte 0


.global lbl_805203F0
lbl_805203F0:
	# ROM: 0x51C4F0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000001
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte 0xFFFFFFFC
	.4byte 0x00000001
	.4byte 0
	.4byte 0x00000004
	.4byte 0x00001000
	.4byte 0
	.4byte 0x00000001
	.4byte 0x0000003C
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0
	.4byte 0xFFFF8AD0
	.4byte 0xFFFFC950
	.4byte 0x00001F40
	.4byte 0x0000EA24
	.4byte 0x00000FA0
	.4byte 0x00000FA0
	.4byte 0x00000029
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000005
	.4byte 0
	.4byte 0x00000005
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x7FFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0000412B
	.4byte 0x00030D40
	.4byte 0
	.4byte 0
	.4byte 0x00000001
	.4byte 0x000104AC
	.4byte 0x00020958
	.4byte 0x0007D000
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0x00000004
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
	.4byte 0x5A5A5A5A
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80520584
lbl_80520584:
	# ROM: 0x51C684
	.4byte 0


.global lbl_80520588
lbl_80520588:
	.asciz "%p, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %ld, %d, %p, %ld"
	.4byte 0


.global lbl_805205D8
lbl_805205D8:
	# ROM: 0x51C6D8
	.4byte 0x00000001
	.4byte 0x00005DA8
	.4byte 0x00005DC0
	.4byte 0x000061A8
	.4byte 0x00007512
	.4byte 0x00007530
	.4byte 0x0000C350
	.4byte 0x0000EA24
	.4byte 0x0000EA60
	.4byte 0


.global lbl_80520600
lbl_80520600:
	# ROM: 0x51C700
	.4byte 0
	.4byte 0
	.4byte func_803CD7A8
	.4byte func_803CD938
	.4byte func_803CD72C
	.4byte func_803CD72C
	.4byte func_803CD72C
	.4byte func_803CD72C
	.4byte func_803CD82C
	.4byte func_803CD9EC
	.4byte func_803CD72C
	.4byte func_803CD72C
	.4byte func_803CD72C
	.4byte func_803CD72C
	.4byte func_803CD8B0
	.4byte func_803CDAA0
	.4byte func_803CD72C
	.4byte func_803CD72C

.global lbl_80520648
lbl_80520648:
	.4byte 0x3ECCCCCD
	.float 0.5
	.float 1.0
	.float 0.75
	.4byte 0x3F8CCCCD
	.float 1.5
	.4byte 0x400CCCCD
	.4byte 0x401CCCCD
	.4byte 0x40300000
	.4byte 0x40600000
	.4byte 0x43300000
	.4byte 0x80000000

.global lbl_80520678
lbl_80520678:
	.4byte func_803CEB14
	.4byte func_803CEB1C
	.4byte func_803CEB24
	.4byte func_803CEBBC
	.4byte func_803CEC3C
	.4byte func_803CEC44
	.4byte func_803CEC4C
	.4byte func_803CEC54
	.4byte func_803CEC5C
	.4byte func_803CEC64
	.4byte lbl_803CEC70
	.4byte lbl_803CEC7C
	.4byte lbl_803CEC88
	.4byte lbl_803CEC94

.global lbl_805206B0
lbl_805206B0:
	.4byte func_803CEC9C
	.4byte func_803CECA4
	.4byte func_803CECAC
	.4byte func_803CED98
	.4byte func_803CEDA0
	.4byte func_803CEDA8
	.4byte func_803CEDB0
	.4byte func_803CEDB8
	.4byte func_803CEDC0
	.4byte func_803CEDC8
	.4byte lbl_803CEDD4
	.4byte func_803CEDE0
	.4byte func_803CEE44
	.4byte lbl_803CEE58


.global lbl_805206E8
lbl_805206E8:
	.asciz "%p, %ld, %ld, 0x%08lX%08lX, %ld, %ld, %ld, %ld,   %ld, %ld,   %ld, %ld, %ld, %ld,   %ld, %ld,   %ld, %ld, %ld, %ld, %ld,   %ld, %ld,   %ld \n"
	.balign 4


.global lbl_80520778
lbl_80520778:
	.asciz "before seeki"
	.asciz "after seeki"
	.balign 4
	.4byte 0


.global lbl_80520798
lbl_80520798:
	.asciz "(nbyte > 0) && (nbyte < 5)"
	.asciz "sfh_local.c"
	.asciz "(nbyte > 0) && (nbyte < 9)"
	.asciz "(size > 0) && (size < 9)"
	.balign 4
	.4byte 0


.global lbl_805207F8
lbl_805207F8:
	.asciz "SofdecStream            "
	.asciz "Ver."
	.2byte 0


.global lbl_80520818
lbl_80520818:
	.asciz "SofdecStream2           "
	.asciz "Ver."
	.2byte 0


.global lbl_80520838
lbl_80520838:
	.asciz "TMR_CH"
	.balign 4


.global lbl_80520840
lbl_80520840:
	.asciz "SFXZ"
	.asciz "SFXINFE"
	.balign 4


.global lbl_80520850
lbl_80520850:
	# ROM: 0x51C950
	.float 0.5


.global lbl_80520854
lbl_80520854:
	# ROM: 0x51C954
	.4byte 0x3F94FDF4


.global lbl_80520858
lbl_80520858:
	# ROM: 0x51C958
	.4byte 0x43300000
	.4byte 0x80000000


.global lbl_80520860
lbl_80520860:
	.asciz "E201312: sfxcnv_IsCnvUpHalf : compo is invalid."
	.asciz "E201311: sfxcnv_MakeTable : compo is not support."
	.asciz "E202282: SFX_MakeTblZ16 : zclip is not set."
	.asciz "E202281: SFX_MakeTblZ32 : zclip is not set."
	.asciz "COMPO"
	.asciz "E4111902: sfxcnv_ChkCompoByCbFunc : compo is not support."
	.asciz "E05070806: please set pitch by mwPlyFxSetOutBufPitchHeight()."
	.asciz "E4111901: sfxcnv_MakeCftSrcBuf : frame format is invalid."
	.asciz "E05070807: please set pitch by mwPlyFxSetOutBufPitchHeight()."
	.asciz "E4011801: sfxcnv_ExecCopyAlphaByCbFunc : frame format is invalid."
	.asciz "E05070809: please set pitch by mwPlyFxSetOutBufPitchHeight()."


.global lbl_80520A90
lbl_80520A90:
	.asciz "\nCRI SFX/WII Ver.2.48 Build:Nov 13 2008 18:22:09\n"
	.balign 4


.global lbl_80520AC4
lbl_80520AC4:
	.asciz "E201194: sfx_InitHn: work size is short."
	.asciz "E201281: SfxZHn: can't create."
	.asciz "E202011: SfxAHn: can't create."
	.balign 4
	.4byte 0


.global lbl_80520B30
lbl_80520B30:
	# ROM: 0x51CC30
	.4byte 0


.global lbl_80520B34
lbl_80520B34:
	# ROM: 0x51CC34
	.4byte 0x3F94FDF4


.global lbl_80520B38
lbl_80520B38:
	# ROM: 0x51CC38
	.4byte 0x43300000
	.4byte 0x80000000
	.4byte 0x3FF00000
	.4byte 0
	.4byte 0x40EFFFE0
	.4byte 0
	.4byte 0x41DFFFFF
	.4byte 0xFFC00000
	.4byte 0x43300000
	.4byte 0
	.4byte 0x416FFFFF
	.4byte 0xE0000000
	.4byte 0xC1600000


.global lbl_80520B6C
lbl_80520B6C:
	.asciz "ZMHDR"
	.asciz "SFXINFE"
	.asciz "ZMVFRM"
	.asciz "ZMFSIZE"
	.asciz "%lx"
	.asciz "ZMFDATA"
	.asciz "%lx %lx %lx"
	.asciz "E201314: SFXZ_SetZclip : zclip is invalid."
	.asciz "COMPO"
	.asciz "E201315: sfxcnv_CnvFrmZcmn : zclip is not set."
	.asciz "E201191: SFX_CnvFrmZcmn : frmfmt is not support."
	.asciz "E05070810: please set pitch by mwPlyFxSetOutBufPitchHeight()."
	.asciz "E05070811: please set pitch by mwPlyFxSetOutBufPitchHeight()."
	.asciz "E201313: sfxcnv_CnvZbitToCft : zbit is invalid."
	.asciz "E05070812: please set pitch by mwPlyFxSetOutBufPitchHeight()."
	.asciz "E05070813: please set pitch by mwPlyFxSetOutBufPitchHeight()."
	.balign 4
	.4byte 0


.global lbl_80520D60
lbl_80520D60:
	.asciz "\nCRI SUD/WII Ver.0.05 Build:Nov 13 2008 18:22:10\n"
	.balign 4


.global lbl_80520D94
lbl_80520D94:
	.asciz "<SUDPS_>"
	.asciz "<%06X>"
	.asciz "02"
	.byte 0x0A
	.4byte 0x00440043
	.4byte 0x00490050
	.4byte 0x0041003C
	.4byte 0


.global lbl_80520DB8
lbl_80520DB8:
	# ROM: 0x51CEB8
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000006


.global lbl_80520DD8
lbl_80520DD8:
	# ROM: 0x51CED8
	.4byte 0x000000A0
	.4byte 0x000000A0
	.4byte 0x000000C0
	.4byte 0x000000C0
	.4byte 0x00000100
	.4byte 0x00000100
	.4byte 0x00000120
	.4byte 0x00000120
	.4byte 0x00000160
	.4byte 0x00000160
	.4byte 0x00000180
	.4byte 0x00000180
	.4byte 0x000001C0
	.4byte 0x000001C0
	.4byte 0x000001E0
	.4byte 0x000001E0


.global lbl_80520E18
lbl_80520E18:
	# ROM: 0x51CF18
	.4byte func_803DF9F0
	.4byte func_803DFB00
	.4byte func_803DFA94
	.4byte func_803DFBE8
	.4byte func_803DFA08
	.4byte func_803DFC84
	.4byte func_803DFB40
	.4byte func_803DFD1C


.global lbl_80520E38
lbl_80520E38:
	# ROM: 0x51CF38
	.4byte 0x0000000A
	.asciz "AnmObjVis"
	.balign 4


.global lbl_80520E48
lbl_80520E48:
	# ROM: 0x51CF48
	.4byte 0x0000000D
	.asciz "AnmObjMatClr"
	.balign 4
	.4byte 0


.global lbl_80520E60
lbl_80520E60:
	# ROM: 0x51CF60
	.4byte 0x00000010
	.asciz "AnmObjMatClrRes"
	.4byte 0


.global lbl_80520E78
lbl_80520E78:
	# ROM: 0x51CF78
	.4byte 0x0000000D
	.asciz "AnmObjTexPat"
	.balign 4
	.4byte 0


.global lbl_80520E90
lbl_80520E90:
	# ROM: 0x51CF90
	.4byte 0x00000010
	.asciz "AnmObjTexPatRes"
	.4byte 0


.global lbl_80520EA8
lbl_80520EA8:
	# ROM: 0x51CFA8
	.4byte 0x0000000D
	.asciz "AnmObjTexSrt"
	.balign 4
	.4byte 0


.global lbl_80520EC0
lbl_80520EC0:
	# ROM: 0x51CFC0
	.4byte 0x00000010
	.asciz "AnmObjTexSrtRes"
	.4byte 0


.global lbl_80520ED8
lbl_80520ED8:
	# ROM: 0x51CFD8
	.4byte 0x0000000A
	.asciz "AnmObjChr"
	.balign 4


.global lbl_80520EE8
lbl_80520EE8:
	# ROM: 0x51CFE8
	.4byte 0x0000000E
	.asciz "AnmObjChrNode"
	.balign 4


.global lbl_80520EFC
lbl_80520EFC:
	# ROM: 0x51CFFC
	.4byte 0x0000000F
	.asciz "AnmObjChrBlend"
	.balign 4


.global lbl_80520F10
lbl_80520F10:
	# ROM: 0x51D010
	.4byte 0x0000000D
	.asciz "AnmObjChrRes"
	.balign 4
	.4byte 0


.global lbl_80520F28
lbl_80520F28:
	# ROM: 0x51D028
	.4byte 0x0000000A
	.asciz "AnmObjShp"
	.balign 4


.global lbl_80520F38
lbl_80520F38:
	# ROM: 0x51D038
	.4byte 0x00000007
	.asciz "AnmScn"
	.balign 4
	.4byte 0


.global lbl_80520F48
lbl_80520F48:
	# ROM: 0x51D048
	.4byte 0x0000000A
	.asciz "AnmScnRes"
	.balign 4


.global lbl_80520F58
lbl_80520F58:
	# ROM: 0x51D058
	.4byte 0x00000007
	.asciz "G3dObj"
	.balign 4
	.4byte 0


.global lbl_80520F68
lbl_80520F68:
	# ROM: 0x51D068
	.4byte 0x00000007
	.asciz "AnmObj"
	.balign 4
	.4byte 0


.global lbl_80520F78
lbl_80520F78:
	# ROM: 0x51D078
	.float 0.5
	.4byte 0
	.4byte 0
	.float 0.5
	.4byte 0
	.4byte 0xBF000000
	.4byte 0
	.float 0.5
	.4byte 0
	.4byte 0
	.4byte 0
	.float 1.0
.global lbl_80520FA8
lbl_80520FA8:
	.4byte 0
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000003


.global lbl_80520FB8
lbl_80520FB8:
	# ROM: 0x51D0B8
	.4byte 0
	.4byte func_803EC57C
	.4byte func_803EC7D4
	.4byte func_803ECB24
	.4byte func_803ECE28
	.4byte func_803ED218
	.4byte func_803ED4F8
	.4byte 0


.global lbl_80520FD8
lbl_80520FD8:
	# ROM: 0x51D0D8
	.4byte func_803F239C
	.4byte func_803F229C
	.4byte func_803F234C
	.4byte func_803F21A8
	.4byte func_803F21E0
	.4byte func_803F2114
	.4byte func_803F20DC


.global lbl_80520FF4
lbl_80520FF4:
	# ROM: 0x51D0F4
	.4byte func_803F29C4
	.4byte func_803F27DC
	.4byte func_803F293C
	.4byte func_803F2620
	.4byte func_803F2648
	.4byte func_803F24F0
	.4byte func_803F2478


.global lbl_80521010
lbl_80521010:
	# ROM: 0x51D110
	.4byte func_803F304C
	.4byte func_803F2F34
	.4byte func_803F2FFC
	.4byte func_803F2E5C
	.4byte func_803F2E94
	.4byte func_803F2DD4
	.4byte func_803F2D9C


.global lbl_8052102C
lbl_8052102C:
	# ROM: 0x51D12C
	.4byte func_803F35B0
	.4byte func_803F33FC
	.4byte func_803F3528
	.4byte func_803F329C
	.4byte func_803F32C0
	.4byte func_803F318C
	.4byte func_803F3114


.global lbl_80521048
lbl_80521048:
	# ROM: 0x51D148
	.4byte func_803F3C60
	.4byte func_803F3B3C
	.4byte func_803F3C08
	.4byte func_803F3A50
	.4byte func_803F3A88
	.4byte func_803F39A4
	.4byte func_803F395C


.global lbl_80521064
lbl_80521064:
	# ROM: 0x51D164
	.4byte func_803F420C
	.4byte func_803F4038
	.4byte func_803F4178
	.4byte func_803F3ED0
	.4byte func_803F3EF4
	.4byte func_803F3DAC
	.4byte func_803F3D2C


.global lbl_80521080
lbl_80521080:
	# ROM: 0x51D180
	.4byte 0x00000007
	.asciz "ScnObj"
	.balign 4
	.4byte 0


.global lbl_80521090
lbl_80521090:
	# ROM: 0x51D190
	.4byte 0x00000008
	.asciz "ScnLeaf"
	.4byte 0


.global lbl_805210A0
lbl_805210A0:
	# ROM: 0x51D1A0
	.4byte 0x00000009
	.asciz "ScnGroup"
	.balign 4


.global lbl_805210B0
lbl_805210B0:
	# ROM: 0x51D1B0
	.4byte 0x00000008
	.asciz "ScnRoot"
	.4byte 0


.global lbl_805210C0
lbl_805210C0:
	# ROM: 0x51D1C0
	.4byte 0x0000000D
	.asciz "ScnMdlSimple"
	.balign 4
	.4byte 0


.global lbl_805210D8
lbl_805210D8:
	# ROM: 0x51D1D8
	.4byte 0x00000007
	.asciz "ScnMdl"
	.balign 4
	.4byte 0


.global lbl_805210E8
lbl_805210E8:
	# ROM: 0x51D1E8
	.4byte 0x0000000D
	.asciz "ScnMdlExpand"
	.balign 4
	.4byte 0


.global lbl_80521100
lbl_80521100:
	# ROM: 0x51D200
	.4byte 0x00000008
	.asciz "ScnProc"
	.4byte 0


.global lbl_80521110
lbl_80521110:
	# ROM: 0x51D210
	.4byte 0
	.float 1.0
	.4byte 0x3CC90A35
	.4byte 0xB99DCF89
	.4byte 0x3CC90A35
	.4byte 0x3F7FEC46
	.4byte 0x3CC8EAC0
	.4byte 0xBA6CB74E
	.4byte 0x3D48FB87
	.4byte 0x3F7FB107
	.4byte 0x3CC8ADEF
	.4byte 0xBAC5436C
	.4byte 0x3D96A93F
	.4byte 0x3F7F4E66
	.4byte 0x3CC851A8
	.4byte 0xBB0A04D1
	.4byte 0x3DC8BD23
	.4byte 0x3F7EC472
	.4byte 0x3CC7D5ED
	.4byte 0xBB31465F
	.4byte 0x3DFAB29E
	.4byte 0x3F7E132B
	.4byte 0x3CC73ABD
	.4byte 0xBB587725
	.4byte 0x3E164064
	.4byte 0x3F7D3AB4
	.4byte 0x3CC68017
	.4byte 0xBB7F865D
	.4byte 0x3E2F10AA
	.4byte 0x3F7C3B2E
	.4byte 0x3CC5A815
	.4byte 0xBB9331A1
	.4byte 0x3E47C5AC
	.4byte 0x3F7B14BA
	.4byte 0x3CC4B2B7
	.4byte 0xBBA68F4B
	.4byte 0x3E605C03
	.4byte 0x3F79C79B
	.4byte 0x3CC39DE5
	.4byte 0xBBB9D3CC
	.4byte 0x3E78CFC0
	.4byte 0x3F7853F4
	.4byte 0x3CC26BB5
	.4byte 0xBBCCF6BE
	.4byte 0x3E888E9B
	.4byte 0x3F76BA06
	.4byte 0x3CC11A11
	.4byte 0xBBE00086
	.4byte 0x3E94A03C
	.4byte 0x3F74FA05
	.4byte 0x3CBFAB11
	.4byte 0xBBF2E05D
	.4byte 0x3EA09AED
	.4byte 0x3F731444
	.4byte 0x3CBE1EB4
	.4byte 0xBC02CF53
	.4byte 0x3EAC7CD9
	.4byte 0x3F710907
	.4byte 0x3CBC74FB
	.4byte 0xBC0C197E
	.4byte 0x3EB84428
	.4byte 0x3F6ED8A1
	.4byte 0x3CBAADE6
	.4byte 0xBC154EB1
	.4byte 0x3EC3EF07
	.4byte 0x3F6C8366
	.4byte 0x3CB8CB8E
	.4byte 0xBC1E6EEB
	.4byte 0x3ECF7BC0
	.4byte 0x3F6A09AB
	.4byte 0x3CB6CBDA
	.4byte 0xBC2771C9
	.4byte 0x3EDAE87D
	.4byte 0x3F676BD3
	.4byte 0x3CB4AEC9
	.4byte 0xBC305FAF
	.4byte 0x3EE6336A
	.4byte 0x3F64AA54
	.4byte 0x3CB27675
	.4byte 0xBC393038
	.4byte 0x3EF15AF3
	.4byte 0x3F61C593
	.4byte 0x3CB022DD
	.4byte 0xBC41E365
	.4byte 0x3EFC5D20
	.4byte 0x3F5EBE06
	.4byte 0x3CADB61C
	.4byte 0xBC4A7935
	.4byte 0x3F039C41
	.4byte 0x3F5B9421
	.4byte 0x3CAB2BFE
	.4byte 0xBC52F1AA
	.4byte 0x3F08F5A1
	.4byte 0x3F58485A
	.4byte 0x3CA888B5
	.4byte 0xBC5B4891
	.4byte 0x3F0E39D6
	.4byte 0x3F54DB38
	.4byte 0x3CA5CA2A
	.4byte 0xBC637DE9
	.4byte 0x3F136827
	.4byte 0x3F514D40
	.4byte 0x3CA2F273
	.4byte 0xBC6B8D82
	.4byte 0x3F187FBB
	.4byte 0x3F4D9F0A
	.4byte 0x3CA00193
	.4byte 0xBC737B8D
	.4byte 0x3F1D7FD8
	.4byte 0x3F49D10B
	.4byte 0x3C9CF9A0
	.4byte 0xBC7B43D9
	.4byte 0x3F226794
	.4byte 0x3F45E3FC
	.4byte 0x3C99D884
	.4byte 0xBC817332
	.4byte 0x3F273659
	.4byte 0x3F41D873
	.4byte 0x3C969E3D
	.4byte 0xBC852F7F
	.4byte 0x3F2BEB4A
	.4byte 0x3F3DAEF7
	.4byte 0x3C934EFD
	.4byte 0xBC88D6D4
	.4byte 0x3F3085C2
	.4byte 0x3F396840
	.4byte 0x3C8FE692
	.4byte 0xBC8C692F
	.4byte 0x3F3504F7
	.4byte 0x3F3504F7
	.4byte 0x3C8C692F
	.4byte 0xBC8FE692
	.4byte 0x3F396840
	.4byte 0x3F3085C2
	.4byte 0x3C88D6D4
	.4byte 0xBC934EFD
	.4byte 0x3F3DAEF7
	.4byte 0x3F2BEB4A
	.4byte 0x3C852F7F
	.4byte 0xBC969E3D
	.4byte 0x3F41D873
	.4byte 0x3F273659
	.4byte 0x3C817332
	.4byte 0xBC99D884
	.4byte 0x3F45E3FC
	.4byte 0x3F226794
	.4byte 0x3C7B43D9
	.4byte 0xBC9CF9A0
	.4byte 0x3F49D10B
	.4byte 0x3F1D7FD8
	.4byte 0x3C737B8D
	.4byte 0xBCA00193
	.4byte 0x3F4D9F0A
	.4byte 0x3F187FBB
	.4byte 0x3C6B8D82
	.4byte 0xBCA2F273
	.4byte 0x3F514D40
	.4byte 0x3F136827
	.4byte 0x3C637DE9
	.4byte 0xBCA5CA2A
	.4byte 0x3F54DB38
	.4byte 0x3F0E39D6
	.4byte 0x3C5B4891
	.4byte 0xBCA888B5
	.4byte 0x3F58485A
	.4byte 0x3F08F5A1
	.4byte 0x3C52F1AA
	.4byte 0xBCAB2BFE
	.4byte 0x3F5B9421
	.4byte 0x3F039C41
	.4byte 0x3C4A7935
	.4byte 0xBCADB61C
	.4byte 0x3F5EBE06
	.4byte 0x3EFC5D20
	.4byte 0x3C41E365
	.4byte 0xBCB022DD
	.4byte 0x3F61C593
	.4byte 0x3EF15AF3
	.4byte 0x3C393038
	.4byte 0xBCB27675
	.4byte 0x3F64AA54
	.4byte 0x3EE6336A
	.4byte 0x3C305FAF
	.4byte 0xBCB4AEC9
	.4byte 0x3F676BD3
	.4byte 0x3EDAE87D
	.4byte 0x3C2771C9
	.4byte 0xBCB6CBDA
	.4byte 0x3F6A09AB
	.4byte 0x3ECF7BC0
	.4byte 0x3C1E6EEB
	.4byte 0xBCB8CB8E
	.4byte 0x3F6C8366
	.4byte 0x3EC3EF07
	.4byte 0x3C154EB1
	.4byte 0xBCBAADE6
	.4byte 0x3F6ED8A1
	.4byte 0x3EB84428
	.4byte 0x3C0C197E
	.4byte 0xBCBC74FB
	.4byte 0x3F710907
	.4byte 0x3EAC7CD9
	.4byte 0x3C02CF53
	.4byte 0xBCBE1EB4
	.4byte 0x3F731444
	.4byte 0x3EA09AED
	.4byte 0x3BF2E05D
	.4byte 0xBCBFAB11
	.4byte 0x3F74FA05
	.4byte 0x3E94A03C
	.4byte 0x3BE00086
	.4byte 0xBCC11A11
	.4byte 0x3F76BA06
	.4byte 0x3E888E9B
	.4byte 0x3BCCF6BE
	.4byte 0xBCC26BB5
	.4byte 0x3F7853F4
	.4byte 0x3E78CFC0
	.4byte 0x3BB9D3CC
	.4byte 0xBCC39DE5
	.4byte 0x3F79C79B
	.4byte 0x3E605C03
	.4byte 0x3BA68F4B
	.4byte 0xBCC4B2B7
	.4byte 0x3F7B14BA
	.4byte 0x3E47C5AC
	.4byte 0x3B9331A1
	.4byte 0xBCC5A815
	.4byte 0x3F7C3B2E
	.4byte 0x3E2F10AA
	.4byte 0x3B7F865D
	.4byte 0xBCC68017
	.4byte 0x3F7D3AB4
	.4byte 0x3E164064
	.4byte 0x3B587725
	.4byte 0xBCC73ABD
	.4byte 0x3F7E132B
	.4byte 0x3DFAB29E
	.4byte 0x3B31465F
	.4byte 0xBCC7D5ED
	.4byte 0x3F7EC472
	.4byte 0x3DC8BD23
	.4byte 0x3B0A04D1
	.4byte 0xBCC851A8
	.4byte 0x3F7F4E66
	.4byte 0x3D96A93F
	.4byte 0x3AC5436C
	.4byte 0xBCC8ADEF
	.4byte 0x3F7FB107
	.4byte 0x3D48FB87
	.4byte 0x3A6CB74E
	.4byte 0xBCC8EAC0
	.4byte 0x3F7FEC46
	.4byte 0x3CC90A35
	.4byte 0x399DCF89
	.4byte 0xBCC90A35
	.float 1.0
	.4byte 0
	.4byte 0xB99DCF89
	.4byte 0xBCC90A35
	.4byte 0x3F7FEC46
	.4byte 0xBCC90A35
	.4byte 0xBA6CB74E
	.4byte 0xBCC8EAC0
	.4byte 0x3F7FB107
	.4byte 0xBD48FB87
	.4byte 0xBAC5436C
	.4byte 0xBCC8ADEF
	.4byte 0x3F7F4E66
	.4byte 0xBD96A93F
	.4byte 0xBB0A04D1
	.4byte 0xBCC851A8
	.4byte 0x3F7EC472
	.4byte 0xBDC8BD23
	.4byte 0xBB31465F
	.4byte 0xBCC7D5ED
	.4byte 0x3F7E132B
	.4byte 0xBDFAB29E
	.4byte 0xBB587725
	.4byte 0xBCC73ABD
	.4byte 0x3F7D3AB4
	.4byte 0xBE164064
	.4byte 0xBB7F865D
	.4byte 0xBCC68017
	.4byte 0x3F7C3B2E
	.4byte 0xBE2F10AA
	.4byte 0xBB9331A1
	.4byte 0xBCC5A815
	.4byte 0x3F7B14BA
	.4byte 0xBE47C5AC
	.4byte 0xBBA68F4B
	.4byte 0xBCC4B2B7
	.4byte 0x3F79C79B
	.4byte 0xBE605C03
	.4byte 0xBBB9D3CC
	.4byte 0xBCC39DE5
	.4byte 0x3F7853F4
	.4byte 0xBE78CFC0
	.4byte 0xBBCCF6BE
	.4byte 0xBCC26BB5
	.4byte 0x3F76BA06
	.4byte 0xBE888E9B
	.4byte 0xBBE00086
	.4byte 0xBCC11A11
	.4byte 0x3F74FA05
	.4byte 0xBE94A03C
	.4byte 0xBBF2E05D
	.4byte 0xBCBFAB11
	.4byte 0x3F731444
	.4byte 0xBEA09AED
	.4byte 0xBC02CF53
	.4byte 0xBCBE1EB4
	.4byte 0x3F710907
	.4byte 0xBEAC7CD9
	.4byte 0xBC0C197E
	.4byte 0xBCBC74FB
	.4byte 0x3F6ED8A1
	.4byte 0xBEB84428
	.4byte 0xBC154EB1
	.4byte 0xBCBAADE6
	.4byte 0x3F6C8366
	.4byte 0xBEC3EF07
	.4byte 0xBC1E6EEB
	.4byte 0xBCB8CB8E
	.4byte 0x3F6A09AB
	.4byte 0xBECF7BC0
	.4byte 0xBC2771C9
	.4byte 0xBCB6CBDA
	.4byte 0x3F676BD3
	.4byte 0xBEDAE87D
	.4byte 0xBC305FAF
	.4byte 0xBCB4AEC9
	.4byte 0x3F64AA54
	.4byte 0xBEE6336A
	.4byte 0xBC393038
	.4byte 0xBCB27675
	.4byte 0x3F61C593
	.4byte 0xBEF15AF3
	.4byte 0xBC41E365
	.4byte 0xBCB022DD
	.4byte 0x3F5EBE06
	.4byte 0xBEFC5D20
	.4byte 0xBC4A7935
	.4byte 0xBCADB61C
	.4byte 0x3F5B9421
	.4byte 0xBF039C41
	.4byte 0xBC52F1AA
	.4byte 0xBCAB2BFE
	.4byte 0x3F58485A
	.4byte 0xBF08F5A1
	.4byte 0xBC5B4891
	.4byte 0xBCA888B5
	.4byte 0x3F54DB38
	.4byte 0xBF0E39D6
	.4byte 0xBC637DE9
	.4byte 0xBCA5CA2A
	.4byte 0x3F514D40
	.4byte 0xBF136827
	.4byte 0xBC6B8D82
	.4byte 0xBCA2F273
	.4byte 0x3F4D9F0A
	.4byte 0xBF187FBB
	.4byte 0xBC737B8D
	.4byte 0xBCA00193
	.4byte 0x3F49D10B
	.4byte 0xBF1D7FD8
	.4byte 0xBC7B43D9
	.4byte 0xBC9CF9A0
	.4byte 0x3F45E3FC
	.4byte 0xBF226794
	.4byte 0xBC817332
	.4byte 0xBC99D884
	.4byte 0x3F41D873
	.4byte 0xBF273659
	.4byte 0xBC852F7F
	.4byte 0xBC969E3D
	.4byte 0x3F3DAEF7
	.4byte 0xBF2BEB4A
	.4byte 0xBC88D6D4
	.4byte 0xBC934EFD
	.4byte 0x3F396840
	.4byte 0xBF3085C2
	.4byte 0xBC8C692F
	.4byte 0xBC8FE692
	.4byte 0x3F3504F7
	.4byte 0xBF3504F7
	.4byte 0xBC8FE692
	.4byte 0xBC8C692F
	.4byte 0x3F3085C2
	.4byte 0xBF396840
	.4byte 0xBC934EFD
	.4byte 0xBC88D6D4
	.4byte 0x3F2BEB4A
	.4byte 0xBF3DAEF7
	.4byte 0xBC969E3D
	.4byte 0xBC852F7F
	.4byte 0x3F273659
	.4byte 0xBF41D873
	.4byte 0xBC99D884
	.4byte 0xBC817332
	.4byte 0x3F226794
	.4byte 0xBF45E3FC
	.4byte 0xBC9CF9A0
	.4byte 0xBC7B43D9
	.4byte 0x3F1D7FD8
	.4byte 0xBF49D10B
	.4byte 0xBCA00193
	.4byte 0xBC737B8D
	.4byte 0x3F187FBB
	.4byte 0xBF4D9F0A
	.4byte 0xBCA2F273
	.4byte 0xBC6B8D82
	.4byte 0x3F136827
	.4byte 0xBF514D40
	.4byte 0xBCA5CA2A
	.4byte 0xBC637DE9
	.4byte 0x3F0E39D6
	.4byte 0xBF54DB38
	.4byte 0xBCA888B5
	.4byte 0xBC5B4891
	.4byte 0x3F08F5A1
	.4byte 0xBF58485A
	.4byte 0xBCAB2BFE
	.4byte 0xBC52F1AA
	.4byte 0x3F039C41
	.4byte 0xBF5B9421
	.4byte 0xBCADB61C
	.4byte 0xBC4A7935
	.4byte 0x3EFC5D20
	.4byte 0xBF5EBE06
	.4byte 0xBCB022DD
	.4byte 0xBC41E365
	.4byte 0x3EF15AF3
	.4byte 0xBF61C593
	.4byte 0xBCB27675
	.4byte 0xBC393038
	.4byte 0x3EE6336A
	.4byte 0xBF64AA54
	.4byte 0xBCB4AEC9
	.4byte 0xBC305FAF
	.4byte 0x3EDAE87D
	.4byte 0xBF676BD3
	.4byte 0xBCB6CBDA
	.4byte 0xBC2771C9
	.4byte 0x3ECF7BC0
	.4byte 0xBF6A09AB
	.4byte 0xBCB8CB8E
	.4byte 0xBC1E6EEB
	.4byte 0x3EC3EF07
	.4byte 0xBF6C8366
	.4byte 0xBCBAADE6
	.4byte 0xBC154EB1
	.4byte 0x3EB84428
	.4byte 0xBF6ED8A1
	.4byte 0xBCBC74FB
	.4byte 0xBC0C197E
	.4byte 0x3EAC7CD9
	.4byte 0xBF710907
	.4byte 0xBCBE1EB4
	.4byte 0xBC02CF53
	.4byte 0x3EA09AED
	.4byte 0xBF731444
	.4byte 0xBCBFAB11
	.4byte 0xBBF2E05D
	.4byte 0x3E94A03C
	.4byte 0xBF74FA05
	.4byte 0xBCC11A11
	.4byte 0xBBE00086
	.4byte 0x3E888E9B
	.4byte 0xBF76BA06
	.4byte 0xBCC26BB5
	.4byte 0xBBCCF6BE
	.4byte 0x3E78CFC0
	.4byte 0xBF7853F4
	.4byte 0xBCC39DE5
	.4byte 0xBBB9D3CC
	.4byte 0x3E605C03
	.4byte 0xBF79C79B
	.4byte 0xBCC4B2B7
	.4byte 0xBBA68F4B
	.4byte 0x3E47C5AC
	.4byte 0xBF7B14BA
	.4byte 0xBCC5A815
	.4byte 0xBB9331A1
	.4byte 0x3E2F10AA
	.4byte 0xBF7C3B2E
	.4byte 0xBCC68017
	.4byte 0xBB7F865D
	.4byte 0x3E164064
	.4byte 0xBF7D3AB4
	.4byte 0xBCC73ABD
	.4byte 0xBB587725
	.4byte 0x3DFAB29E
	.4byte 0xBF7E132B
	.4byte 0xBCC7D5ED
	.4byte 0xBB31465F
	.4byte 0x3DC8BD23
	.4byte 0xBF7EC472
	.4byte 0xBCC851A8
	.4byte 0xBB0A04D1
	.4byte 0x3D96A93F
	.4byte 0xBF7F4E66
	.4byte 0xBCC8ADEF
	.4byte 0xBAC5436C
	.4byte 0x3D48FB87
	.4byte 0xBF7FB107
	.4byte 0xBCC8EAC0
	.4byte 0xBA6CB74E
	.4byte 0x3CC90A35
	.4byte 0xBF7FEC46
	.4byte 0xBCC90A35
	.4byte 0xB99DCF89
	.4byte 0
	.float -1.0
	.4byte 0xBCC90A35
	.4byte 0x399DCF89
	.4byte 0xBCC90A35
	.4byte 0xBF7FEC46
	.4byte 0xBCC8EAC0
	.4byte 0x3A6CB74E
	.4byte 0xBD48FB87
	.4byte 0xBF7FB107
	.4byte 0xBCC8ADEF
	.4byte 0x3AC5436C
	.4byte 0xBD96A93F
	.4byte 0xBF7F4E66
	.4byte 0xBCC851A8
	.4byte 0x3B0A04D1
	.4byte 0xBDC8BD23
	.4byte 0xBF7EC472
	.4byte 0xBCC7D5ED
	.4byte 0x3B31465F
	.4byte 0xBDFAB29E
	.4byte 0xBF7E132B
	.4byte 0xBCC73ABD
	.4byte 0x3B587725
	.4byte 0xBE164064
	.4byte 0xBF7D3AB4
	.4byte 0xBCC68017
	.4byte 0x3B7F865D
	.4byte 0xBE2F10AA
	.4byte 0xBF7C3B2E
	.4byte 0xBCC5A815
	.4byte 0x3B9331A1
	.4byte 0xBE47C5AC
	.4byte 0xBF7B14BA
	.4byte 0xBCC4B2B7
	.4byte 0x3BA68F4B
	.4byte 0xBE605C03
	.4byte 0xBF79C79B
	.4byte 0xBCC39DE5
	.4byte 0x3BB9D3CC
	.4byte 0xBE78CFC0
	.4byte 0xBF7853F4
	.4byte 0xBCC26BB5
	.4byte 0x3BCCF6BE
	.4byte 0xBE888E9B
	.4byte 0xBF76BA06
	.4byte 0xBCC11A11
	.4byte 0x3BE00086
	.4byte 0xBE94A03C
	.4byte 0xBF74FA05
	.4byte 0xBCBFAB11
	.4byte 0x3BF2E05D
	.4byte 0xBEA09AED
	.4byte 0xBF731444
	.4byte 0xBCBE1EB4
	.4byte 0x3C02CF53
	.4byte 0xBEAC7CD9
	.4byte 0xBF710907
	.4byte 0xBCBC74FB
	.4byte 0x3C0C197E
	.4byte 0xBEB84428
	.4byte 0xBF6ED8A1
	.4byte 0xBCBAADE6
	.4byte 0x3C154EB1
	.4byte 0xBEC3EF07
	.4byte 0xBF6C8366
	.4byte 0xBCB8CB8E
	.4byte 0x3C1E6EEB
	.4byte 0xBECF7BC0
	.4byte 0xBF6A09AB
	.4byte 0xBCB6CBDA
	.4byte 0x3C2771C9
	.4byte 0xBEDAE87D
	.4byte 0xBF676BD3
	.4byte 0xBCB4AEC9
	.4byte 0x3C305FAF
	.4byte 0xBEE6336A
	.4byte 0xBF64AA54
	.4byte 0xBCB27675
	.4byte 0x3C393038
	.4byte 0xBEF15AF3
	.4byte 0xBF61C593
	.4byte 0xBCB022DD
	.4byte 0x3C41E365
	.4byte 0xBEFC5D20
	.4byte 0xBF5EBE06
	.4byte 0xBCADB61C
	.4byte 0x3C4A7935
	.4byte 0xBF039C41
	.4byte 0xBF5B9421
	.4byte 0xBCAB2BFE
	.4byte 0x3C52F1AA
	.4byte 0xBF08F5A1
	.4byte 0xBF58485A
	.4byte 0xBCA888B5
	.4byte 0x3C5B4891
	.4byte 0xBF0E39D6
	.4byte 0xBF54DB38
	.4byte 0xBCA5CA2A
	.4byte 0x3C637DE9
	.4byte 0xBF136827
	.4byte 0xBF514D40
	.4byte 0xBCA2F273
	.4byte 0x3C6B8D82
	.4byte 0xBF187FBB
	.4byte 0xBF4D9F0A
	.4byte 0xBCA00193
	.4byte 0x3C737B8D
	.4byte 0xBF1D7FD8
	.4byte 0xBF49D10B
	.4byte 0xBC9CF9A0
	.4byte 0x3C7B43D9
	.4byte 0xBF226794
	.4byte 0xBF45E3FC
	.4byte 0xBC99D884
	.4byte 0x3C817332
	.4byte 0xBF273659
	.4byte 0xBF41D873
	.4byte 0xBC969E3D
	.4byte 0x3C852F7F
	.4byte 0xBF2BEB4A
	.4byte 0xBF3DAEF7
	.4byte 0xBC934EFD
	.4byte 0x3C88D6D4
	.4byte 0xBF3085C2
	.4byte 0xBF396840
	.4byte 0xBC8FE692
	.4byte 0x3C8C692F
	.4byte 0xBF3504F7
	.4byte 0xBF3504F7
	.4byte 0xBC8C692F
	.4byte 0x3C8FE692
	.4byte 0xBF396840
	.4byte 0xBF3085C2
	.4byte 0xBC88D6D4
	.4byte 0x3C934EFD
	.4byte 0xBF3DAEF7
	.4byte 0xBF2BEB4A
	.4byte 0xBC852F7F
	.4byte 0x3C969E3D
	.4byte 0xBF41D873
	.4byte 0xBF273659
	.4byte 0xBC817332
	.4byte 0x3C99D884
	.4byte 0xBF45E3FC
	.4byte 0xBF226794
	.4byte 0xBC7B43D9
	.4byte 0x3C9CF9A0
	.4byte 0xBF49D10B
	.4byte 0xBF1D7FD8
	.4byte 0xBC737B8D
	.4byte 0x3CA00193
	.4byte 0xBF4D9F0A
	.4byte 0xBF187FBB
	.4byte 0xBC6B8D82
	.4byte 0x3CA2F273
	.4byte 0xBF514D40
	.4byte 0xBF136827
	.4byte 0xBC637DE9
	.4byte 0x3CA5CA2A
	.4byte 0xBF54DB38
	.4byte 0xBF0E39D6
	.4byte 0xBC5B4891
	.4byte 0x3CA888B5
	.4byte 0xBF58485A
	.4byte 0xBF08F5A1
	.4byte 0xBC52F1AA
	.4byte 0x3CAB2BFE
	.4byte 0xBF5B9421
	.4byte 0xBF039C41
	.4byte 0xBC4A7935
	.4byte 0x3CADB61C
	.4byte 0xBF5EBE06
	.4byte 0xBEFC5D20
	.4byte 0xBC41E365
	.4byte 0x3CB022DD
	.4byte 0xBF61C593
	.4byte 0xBEF15AF3
	.4byte 0xBC393038
	.4byte 0x3CB27675
	.4byte 0xBF64AA54
	.4byte 0xBEE6336A
	.4byte 0xBC305FAF
	.4byte 0x3CB4AEC9
	.4byte 0xBF676BD3
	.4byte 0xBEDAE87D
	.4byte 0xBC2771C9
	.4byte 0x3CB6CBDA
	.4byte 0xBF6A09AB
	.4byte 0xBECF7BC0
	.4byte 0xBC1E6EEB
	.4byte 0x3CB8CB8E
	.4byte 0xBF6C8366
	.4byte 0xBEC3EF07
	.4byte 0xBC154EB1
	.4byte 0x3CBAADE6
	.4byte 0xBF6ED8A1
	.4byte 0xBEB84428
	.4byte 0xBC0C197E
	.4byte 0x3CBC74FB
	.4byte 0xBF710907
	.4byte 0xBEAC7CD9
	.4byte 0xBC02CF53
	.4byte 0x3CBE1EB4
	.4byte 0xBF731444
	.4byte 0xBEA09AED
	.4byte 0xBBF2E05D
	.4byte 0x3CBFAB11
	.4byte 0xBF74FA05
	.4byte 0xBE94A03C
	.4byte 0xBBE00086
	.4byte 0x3CC11A11
	.4byte 0xBF76BA06
	.4byte 0xBE888E9B
	.4byte 0xBBCCF6BE
	.4byte 0x3CC26BB5
	.4byte 0xBF7853F4
	.4byte 0xBE78CFC0
	.4byte 0xBBB9D3CC
	.4byte 0x3CC39DE5
	.4byte 0xBF79C79B
	.4byte 0xBE605C03
	.4byte 0xBBA68F4B
	.4byte 0x3CC4B2B7
	.4byte 0xBF7B14BA
	.4byte 0xBE47C5AC
	.4byte 0xBB9331A1
	.4byte 0x3CC5A815
	.4byte 0xBF7C3B2E
	.4byte 0xBE2F10AA
	.4byte 0xBB7F865D
	.4byte 0x3CC68017
	.4byte 0xBF7D3AB4
	.4byte 0xBE164064
	.4byte 0xBB587725
	.4byte 0x3CC73ABD
	.4byte 0xBF7E132B
	.4byte 0xBDFAB29E
	.4byte 0xBB31465F
	.4byte 0x3CC7D5ED
	.4byte 0xBF7EC472
	.4byte 0xBDC8BD23
	.4byte 0xBB0A04D1
	.4byte 0x3CC851A8
	.4byte 0xBF7F4E66
	.4byte 0xBD96A93F
	.4byte 0xBAC5436C
	.4byte 0x3CC8ADEF
	.4byte 0xBF7FB107
	.4byte 0xBD48FB87
	.4byte 0xBA6CB74E
	.4byte 0x3CC8EAC0
	.4byte 0xBF7FEC46
	.4byte 0xBCC90A35
	.4byte 0xB99DCF89
	.4byte 0x3CC90A35
	.float -1.0
	.4byte 0x80000000
	.4byte 0x399DCF89
	.4byte 0x3CC90A35
	.4byte 0xBF7FEC46
	.4byte 0x3CC90A35
	.4byte 0x3A6CB74E
	.4byte 0x3CC8EAC0
	.4byte 0xBF7FB107
	.4byte 0x3D48FB87
	.4byte 0x3AC5436C
	.4byte 0x3CC8ADEF
	.4byte 0xBF7F4E66
	.4byte 0x3D96A93F
	.4byte 0x3B0A04D1
	.4byte 0x3CC851A8
	.4byte 0xBF7EC472
	.4byte 0x3DC8BD23
	.4byte 0x3B31465F
	.4byte 0x3CC7D5ED
	.4byte 0xBF7E132B
	.4byte 0x3DFAB29E
	.4byte 0x3B587725
	.4byte 0x3CC73ABD
	.4byte 0xBF7D3AB4
	.4byte 0x3E164064
	.4byte 0x3B7F865D
	.4byte 0x3CC68017
	.4byte 0xBF7C3B2E
	.4byte 0x3E2F10AA
	.4byte 0x3B9331A1
	.4byte 0x3CC5A815
	.4byte 0xBF7B14BA
	.4byte 0x3E47C5AC
	.4byte 0x3BA68F4B
	.4byte 0x3CC4B2B7
	.4byte 0xBF79C79B
	.4byte 0x3E605C03
	.4byte 0x3BB9D3CC
	.4byte 0x3CC39DE5
	.4byte 0xBF7853F4
	.4byte 0x3E78CFC0
	.4byte 0x3BCCF6BE
	.4byte 0x3CC26BB5
	.4byte 0xBF76BA06
	.4byte 0x3E888E9B
	.4byte 0x3BE00086
	.4byte 0x3CC11A11
	.4byte 0xBF74FA05
	.4byte 0x3E94A03C
	.4byte 0x3BF2E05D
	.4byte 0x3CBFAB11
	.4byte 0xBF731444
	.4byte 0x3EA09AED
	.4byte 0x3C02CF53
	.4byte 0x3CBE1EB4
	.4byte 0xBF710907
	.4byte 0x3EAC7CD9
	.4byte 0x3C0C197E
	.4byte 0x3CBC74FB
	.4byte 0xBF6ED8A1
	.4byte 0x3EB84428
	.4byte 0x3C154EB1
	.4byte 0x3CBAADE6
	.4byte 0xBF6C8366
	.4byte 0x3EC3EF07
	.4byte 0x3C1E6EEB
	.4byte 0x3CB8CB8E
	.4byte 0xBF6A09AB
	.4byte 0x3ECF7BC0
	.4byte 0x3C2771C9
	.4byte 0x3CB6CBDA
	.4byte 0xBF676BD3
	.4byte 0x3EDAE87D
	.4byte 0x3C305FAF
	.4byte 0x3CB4AEC9
	.4byte 0xBF64AA54
	.4byte 0x3EE6336A
	.4byte 0x3C393038
	.4byte 0x3CB27675
	.4byte 0xBF61C593
	.4byte 0x3EF15AF3
	.4byte 0x3C41E365
	.4byte 0x3CB022DD
	.4byte 0xBF5EBE06
	.4byte 0x3EFC5D20
	.4byte 0x3C4A7935
	.4byte 0x3CADB61C
	.4byte 0xBF5B9421
	.4byte 0x3F039C41
	.4byte 0x3C52F1AA
	.4byte 0x3CAB2BFE
	.4byte 0xBF58485A
	.4byte 0x3F08F5A1
	.4byte 0x3C5B4891
	.4byte 0x3CA888B5
	.4byte 0xBF54DB38
	.4byte 0x3F0E39D6
	.4byte 0x3C637DE9
	.4byte 0x3CA5CA2A
	.4byte 0xBF514D40
	.4byte 0x3F136827
	.4byte 0x3C6B8D82
	.4byte 0x3CA2F273
	.4byte 0xBF4D9F0A
	.4byte 0x3F187FBB
	.4byte 0x3C737B8D
	.4byte 0x3CA00193
	.4byte 0xBF49D10B
	.4byte 0x3F1D7FD8
	.4byte 0x3C7B43D9
	.4byte 0x3C9CF9A0
	.4byte 0xBF45E3FC
	.4byte 0x3F226794
	.4byte 0x3C817332
	.4byte 0x3C99D884
	.4byte 0xBF41D873
	.4byte 0x3F273659
	.4byte 0x3C852F7F
	.4byte 0x3C969E3D
	.4byte 0xBF3DAEF7
	.4byte 0x3F2BEB4A
	.4byte 0x3C88D6D4
	.4byte 0x3C934EFD
	.4byte 0xBF396840
	.4byte 0x3F3085C2
	.4byte 0x3C8C692F
	.4byte 0x3C8FE692
	.4byte 0xBF3504F7
	.4byte 0x3F3504F7
	.4byte 0x3C8FE692
	.4byte 0x3C8C692F
	.4byte 0xBF3085C2
	.4byte 0x3F396840
	.4byte 0x3C934EFD
	.4byte 0x3C88D6D4
	.4byte 0xBF2BEB4A
	.4byte 0x3F3DAEF7
	.4byte 0x3C969E3D
	.4byte 0x3C852F7F
	.4byte 0xBF273659
	.4byte 0x3F41D873
	.4byte 0x3C99D884
	.4byte 0x3C817332
	.4byte 0xBF226794
	.4byte 0x3F45E3FC
	.4byte 0x3C9CF9A0
	.4byte 0x3C7B43D9
	.4byte 0xBF1D7FD8
	.4byte 0x3F49D10B
	.4byte 0x3CA00193
	.4byte 0x3C737B8D
	.4byte 0xBF187FBB
	.4byte 0x3F4D9F0A
	.4byte 0x3CA2F273
	.4byte 0x3C6B8D82
	.4byte 0xBF136827
	.4byte 0x3F514D40
	.4byte 0x3CA5CA2A
	.4byte 0x3C637DE9
	.4byte 0xBF0E39D6
	.4byte 0x3F54DB38
	.4byte 0x3CA888B5
	.4byte 0x3C5B4891
	.4byte 0xBF08F5A1
	.4byte 0x3F58485A
	.4byte 0x3CAB2BFE
	.4byte 0x3C52F1AA
	.4byte 0xBF039C41
	.4byte 0x3F5B9421
	.4byte 0x3CADB61C
	.4byte 0x3C4A7935
	.4byte 0xBEFC5D20
	.4byte 0x3F5EBE06
	.4byte 0x3CB022DD
	.4byte 0x3C41E365
	.4byte 0xBEF15AF3
	.4byte 0x3F61C593
	.4byte 0x3CB27675
	.4byte 0x3C393038
	.4byte 0xBEE6336A
	.4byte 0x3F64AA54
	.4byte 0x3CB4AEC9
	.4byte 0x3C305FAF
	.4byte 0xBEDAE87D
	.4byte 0x3F676BD3
	.4byte 0x3CB6CBDA
	.4byte 0x3C2771C9
	.4byte 0xBECF7BC0
	.4byte 0x3F6A09AB
	.4byte 0x3CB8CB8E
	.4byte 0x3C1E6EEB
	.4byte 0xBEC3EF07
	.4byte 0x3F6C8366
	.4byte 0x3CBAADE6
	.4byte 0x3C154EB1
	.4byte 0xBEB84428
	.4byte 0x3F6ED8A1
	.4byte 0x3CBC74FB
	.4byte 0x3C0C197E
	.4byte 0xBEAC7CD9
	.4byte 0x3F710907
	.4byte 0x3CBE1EB4
	.4byte 0x3C02CF53
	.4byte 0xBEA09AED
	.4byte 0x3F731444
	.4byte 0x3CBFAB11
	.4byte 0x3BF2E05D
	.4byte 0xBE94A03C
	.4byte 0x3F74FA05
	.4byte 0x3CC11A11
	.4byte 0x3BE00086
	.4byte 0xBE888E9B
	.4byte 0x3F76BA06
	.4byte 0x3CC26BB5
	.4byte 0x3BCCF6BE
	.4byte 0xBE78CFC0
	.4byte 0x3F7853F4
	.4byte 0x3CC39DE5
	.4byte 0x3BB9D3CC
	.4byte 0xBE605C03
	.4byte 0x3F79C79B
	.4byte 0x3CC4B2B7
	.4byte 0x3BA68F4B
	.4byte 0xBE47C5AC
	.4byte 0x3F7B14BA
	.4byte 0x3CC5A815
	.4byte 0x3B9331A1
	.4byte 0xBE2F10AA
	.4byte 0x3F7C3B2E
	.4byte 0x3CC68017
	.4byte 0x3B7F865D
	.4byte 0xBE164064
	.4byte 0x3F7D3AB4
	.4byte 0x3CC73ABD
	.4byte 0x3B587725
	.4byte 0xBDFAB29E
	.4byte 0x3F7E132B
	.4byte 0x3CC7D5ED
	.4byte 0x3B31465F
	.4byte 0xBDC8BD23
	.4byte 0x3F7EC472
	.4byte 0x3CC851A8
	.4byte 0x3B0A04D1
	.4byte 0xBD96A93F
	.4byte 0x3F7F4E66
	.4byte 0x3CC8ADEF
	.4byte 0x3AC5436C
	.4byte 0xBD48FB87
	.4byte 0x3F7FB107
	.4byte 0x3CC8EAC0
	.4byte 0x3A6CB74E
	.4byte 0xBCC90A35
	.4byte 0x3F7FEC46
	.4byte 0x3CC90A35
	.4byte 0x399DCF89
	.4byte 0x80000000
	.float 1.0
	.4byte 0x3CC90A35
	.4byte 0xB99DCF89


.global lbl_80522120
lbl_80522120:
	# ROM: 0x51E220
	.4byte 0x3AB37566
	.4byte 0x3AB383B8
	.4byte 0xC391371B
	.4byte 0x6E36371B
	.4byte 0x8BF8CA8C
	.4byte 0x33C7678D
	.4byte 0x33C79428
	.4byte 0xD07830B0
	.4byte 0x616130B0
	.4byte 0x9C32D582
	.4byte 0x2DD25BA5
	.4byte 0x2DD2A40C
	.4byte 0xD9CF2B27
	.4byte 0x564E2B27
	.4byte 0xABAEDD7D
	.4byte 0x28A95152
	.4byte 0x28A9B316
	.4byte 0xE0A32654
	.4byte 0x4CA82654
	.4byte 0xBA45E355
	.4byte 0x24254849
	.4byte 0x2425C13A
	.4byte 0xE5A22217
	.4byte 0x442F2217
	.4byte 0xC7F8E797
	.4byte 0x20294051
	.4byte 0x2029CE7F
	.4byte 0xE93E1E57
	.4byte 0x3CAD1E57
	.4byte 0xD4D3EAA2
	.4byte 0x1C9F393D
	.4byte 0x1C9FDAF5
	.4byte 0xEBC81AFF
	.4byte 0x35FD1AFF
	.4byte 0xE0E6ECB9
	.4byte 0x197532EB
	.4byte 0x1975E6AA
	.4byte 0xED781801
	.4byte 0x30021801
	.4byte 0xEC40EE0B
	.4byte 0x16A02D40
	.4byte 0x16A0F1AB
	.4byte 0xEE771552
	.4byte 0x2AA41552
	.4byte 0xF6EDEEBE
	.4byte 0x1415282A
	.4byte 0x1415FC05
	.4byte 0xEEE512E8
	.4byte 0x25D012E8
	.4byte 0x00F6EEEE
	.4byte 0x11CB2396
	.4byte 0x11CB05C1
	.4byte 0xEEDB10BD
	.4byte 0x217A10BD
	.4byte 0x0A65EEB0
	.4byte 0x0FBD1F79
	.4byte 0x0FBD0EE5
	.4byte 0xEE6D0ECA
	.4byte 0x1D930ECA
	.4byte 0x1341EE17
	.4byte 0x0DE31BC7
	.4byte 0x0DE3177A
	.4byte 0xEDAD0D09
	.4byte 0x1A130D09
	.4byte 0x1B90ED33
	.4byte 0x0C3B1876
	.4byte 0x0C3B1F85
	.4byte 0xECA90B78
	.4byte 0x16EF0B78
	.4byte 0x2358EC12
	.4byte 0x0ABF157E
	.4byte 0x0ABF270B
	.4byte 0xEB6E0A10
	.4byte 0x14210A10
	.4byte 0x2A9DEABF
	.4byte 0x096B12D7
	.4byte 0x096B2E11
	.4byte 0xEA0608D0
	.4byte 0x119F08D0
	.4byte 0x3166E945
	.4byte 0x083D107A
	.4byte 0x083D349D
	.4byte 0xE87C07B2
	.4byte 0x0F6507B2
	.4byte 0x37B7E7AD
	.4byte 0x07300E60
	.4byte 0x07303AB4
	.4byte 0xE6D806B5
	.4byte 0x0D6A06B5
	.4byte 0x3D95E5FF
	.4byte 0x06420C83
	.4byte 0x0642405B
	.4byte 0xE52205D5
	.4byte 0x0BAA05D5
	.4byte 0x4306E443
	.4byte 0x056F0ADF
	.4byte 0x056F4598
	.4byte 0xE3610510
	.4byte 0x0A1F0510
	.4byte 0x4810E27E
	.4byte 0x04B6096C
	.4byte 0x04B64A70
	.4byte 0xE19B0462
	.4byte 0x08C40462
	.4byte 0x4CB8E0B7
	.4byte 0x04130826
	.4byte 0x04134EE9
	.4byte 0xDFD303C9
	.4byte 0x079303C9
	.4byte 0x5104DEF1
	.4byte 0x03840709
	.4byte 0x03845309
	.4byte 0xDE100344
	.4byte 0x06880344
	.4byte 0x54F8DD31
	.4byte 0x03080610
	.4byte 0x030856D4
	.4byte 0xDC5402D0
	.4byte 0x059F02D0
	.4byte 0x589CDB7A
	.4byte 0x029B0537
	.4byte 0x029B5A51
	.4byte 0xDAA3026B
	.4byte 0x04D5026B
	.4byte 0x5BF4D9CF
	.4byte 0x023D047A
	.4byte 0x023D5D85
	.4byte 0xD8FE0213
	.4byte 0x04260213
	.4byte 0x5F06D831
	.4byte 0x01EB03D7
	.4byte 0x01EB6076
	.4byte 0xD76801C7
	.4byte 0x038D01C7
	.4byte 0x61D6D6A3
	.4byte 0x01A50349
	.4byte 0x01A56327
	.4byte 0xD5E20185
	.4byte 0x030A0185
	.4byte 0x646AD526
	.4byte 0x016802CF
	.4byte 0x0168659F
	.4byte 0xD46D014C
	.4byte 0x0299014C
	.4byte 0x66C6D3BA
	.4byte 0x01330266
	.4byte 0x013367E1
	.4byte 0xD30A011C
	.4byte 0x0237011C
	.4byte 0x68EFD25F
	.4byte 0x0106020C
	.4byte 0x010669F1
	.4byte 0xD1B900F2
	.4byte 0x01E400F2
	.4byte 0x6AE9D117
	.4byte 0x00DF01BE
	.4byte 0x00DF6BD5
	.4byte 0xD07A00CE
	.4byte 0x019C00CE
	.4byte 0x6CB7CFE1
	.4byte 0x00BE017C
	.4byte 0x00BE6D8F
	.4byte 0xCF4D00AF
	.4byte 0x015E00AF
	.4byte 0x6E5DCEBD
	.4byte 0x00A10143
	.4byte 0x00A16F23
	.4byte 0xCE310095
	.4byte 0x012A0095
	.4byte 0x6FE0CDAA
	.4byte 0x00890112
	.4byte 0x00897094
	.4byte 0xCD27007E
	.4byte 0x00FD007E
	.4byte 0x7140CCA8
	.4byte 0x007400E9
	.4byte 0x007471E5
	.4byte 0xCC2E006B
	.4byte 0x00D6006B
	.4byte 0x7283CBB7
	.4byte 0x006300C5
	.4byte 0x00637319
	.4byte 0xCB44005B
	.4byte 0x00B6005B
	.4byte 0x73A9CAD5
	.4byte 0x005400A7
	.4byte 0x00547433
	.4byte 0xCA6A004D
	.4byte 0x009A004D
	.4byte 0x74B7CA03
	.4byte 0x0047008E
	.4byte 0x00477534
	.4byte 0xC99F0041
	.4byte 0x00820041
	.4byte 0x75ACC93F
	.4byte 0x003C0078
	.4byte 0x003C761F
	.4byte 0xC8E20037
	.4byte 0x006E0037
	.4byte 0x768DC889
	.4byte 0x00330066
	.4byte 0x003376F6
	.4byte 0xC833002F
	.4byte 0x005D002F
	.4byte 0x775AC7E0
	.4byte 0x002B0056
	.4byte 0x002B77BA
	.4byte 0xC7900027
	.4byte 0x004F0027
	.4byte 0x7816C743
	.4byte 0x00240049
	.4byte 0x0024786E
	.4byte 0xC6F80021
	.4byte 0x00430021
	.4byte 0x78C2C6B1
	.4byte 0x001F003D
	.4byte 0x001F7912
	.4byte 0xC66C001C
	.4byte 0x0038001C
	.4byte 0x795FC62A
	.4byte 0x001A0034
	.4byte 0x001A79A8
	.4byte 0xC5EA0018
	.4byte 0x00300018
	.4byte 0x79EEC5AD
	.4byte 0x0016002C
	.4byte 0x00167A31
	.4byte 0xC5720014
	.4byte 0x00280014
	.4byte 0x7A71C53A
	.4byte 0x00120025
	.4byte 0x00127AAE
	.4byte 0xC5030011
	.4byte 0x00220011
	.4byte 0x7AE9C4CF
	.4byte 0x0010001F
	.4byte 0x00107B21
	.4byte 0xC49D000E
	.4byte 0x001D000E
	.4byte 0x7B57C46D
	.4byte 0x000D001A
	.4byte 0x000D7B8A
	.4byte 0xC43E000C
	.4byte 0x0018000C
	.4byte 0x7BBBC412
	.4byte 0x000B0016
	.4byte 0x000B7BEA
	.4byte 0xC3E7000A
	.4byte 0x0014000A
	.4byte 0x7C17C3BE
	.4byte 0x00090013
	.4byte 0x00097C42
	.4byte 0xC3960009
	.4byte 0x00110009
	.4byte 0x7C6BC371
	.4byte 0x00080010
	.4byte 0x00087C92
	.4byte 0xC34C0007
	.4byte 0x000E0007
	.4byte 0x7CB8C329
	.4byte 0x0007000D
	.4byte 0x00077CDC
	.4byte 0xC3080006
	.4byte 0x000C0006
	.4byte 0x7CFEC2E8
	.4byte 0x0006000B
	.4byte 0x00067D1F
	.4byte 0xC2C90005
	.4byte 0x000A0005
	.4byte 0x7D3FC2AB
	.4byte 0x00050009
	.4byte 0x00057D5D
	.4byte 0xC28F0004
	.4byte 0x00090004
	.4byte 0x7D7AC274
	.4byte 0x00040008
	.4byte 0x00047D96
	.4byte 0xC25A0004
	.4byte 0x00070004
	.4byte 0x7DB0C241


.global lbl_80522580
lbl_80522580:
	# ROM: 0x51E680
	.4byte 0x3BB58895
	.4byte 0x3BB57E7B
	.4byte 0xC17F3BAD
	.4byte 0x88A63BAD
	.4byte 0x7E69C18F
	.4byte 0x3BA588B6
	.4byte 0x3BA57E57
	.4byte 0xC1A13B9C
	.4byte 0x88C83B9C
	.4byte 0x7E44C1B3
	.4byte 0x3B9388DA
	.4byte 0x3B937E30
	.4byte 0xC1C63B89
	.4byte 0x88ED3B89
	.4byte 0x7E1CC1DA
	.4byte 0x3B7F8901
	.4byte 0x3B7F7E06
	.4byte 0xC1EE3B75
	.4byte 0x89163B75
	.4byte 0x7DF0C204
	.4byte 0x3B6A892C
	.4byte 0x3B6A7DD8
	.4byte 0xC21A3B5F
	.4byte 0x89423B5F
	.4byte 0x7DBFC232
	.4byte 0x3B53895A
	.4byte 0x3B537DA6
	.4byte 0xC24A3B47
	.4byte 0x89733B47
	.4byte 0x7D8BC264
	.4byte 0x3B3A898D
	.4byte 0x3B3A7D6F
	.4byte 0xC27E3B2C
	.4byte 0x89A83B2C
	.4byte 0x7D51C29A
	.4byte 0x3B1E89C4
	.4byte 0x3B1E7D33
	.4byte 0xC2B73B10
	.4byte 0x89E13B10
	.4byte 0x7D13C2D5
	.4byte 0x3B008A00
	.4byte 0x3B007CF1
	.4byte 0xC2F43AF0
	.4byte 0x8A203AF0
	.4byte 0x7CCEC315
	.4byte 0x3AE08A41
	.4byte 0x3AE07CA9
	.4byte 0xC3373ACE
	.4byte 0x8A643ACE
	.4byte 0x7C83C35A
	.4byte 0x3ABC8A88
	.4byte 0x3ABC7C5B
	.4byte 0xC37F3AA9
	.4byte 0x8AAE3AA9
	.4byte 0x7C31C3A6
	.4byte 0x3A958AD6
	.4byte 0x3A957C05
	.4byte 0xC3CE3A81
	.4byte 0x8AFF3A81
	.4byte 0x7BD8C3F8
	.4byte 0x3A6B8B2A
	.4byte 0x3A6B7BA8
	.4byte 0xC4233A55
	.4byte 0x8B573A55
	.4byte 0x7B76C451
	.4byte 0x3A3D8B86
	.4byte 0x3A3D7B42
	.4byte 0xC4803A25
	.4byte 0x8BB73A25
	.4byte 0x7B0BC4B1
	.4byte 0x3A0B8BEA
	.4byte 0x3A0B7AD2
	.4byte 0xC4E439F0
	.4byte 0x8C1F39F0
	.4byte 0x7A96C519
	.4byte 0x39D58C57
	.4byte 0x39D57A58
	.4byte 0xC55039B8
	.4byte 0x8C9139B8
	.4byte 0x7A16C58A
	.4byte 0x39998CCD
	.4byte 0x399979D2
	.4byte 0xC5C6397A
	.4byte 0x8D0C397A
	.4byte 0x798BC604
	.4byte 0x39598D4E
	.4byte 0x39597940
	.4byte 0xC6453937
	.4byte 0x8D933937
	.4byte 0x78F2C688
	.4byte 0x39138DDA
	.4byte 0x391378A0
	.4byte 0xC6CE38ED
	.4byte 0x8E2538ED
	.4byte 0x784AC716
	.4byte 0x38C78E73
	.4byte 0x38C777F1
	.4byte 0xC762389E
	.4byte 0x8EC4389E
	.4byte 0x7793C7B0
	.4byte 0x38748F19
	.4byte 0x38747731
	.4byte 0xC8023847
	.4byte 0x8F713847
	.4byte 0x76CBC856
	.4byte 0x38198FCD
	.4byte 0x38197660
	.4byte 0xC8AE37E9
	.4byte 0x902D37E9
	.4byte 0x75F0C909
	.4byte 0x37B79091
	.4byte 0x37B7757A
	.4byte 0xC9683783
	.4byte 0x90F93783
	.4byte 0x74FFC9CA
	.4byte 0x374D9166
	.4byte 0x374D747F
	.4byte 0xCA2F3714
	.4byte 0x91D73714
	.4byte 0x73F8CA98
	.4byte 0x36D9924D
	.4byte 0x36D9736B
	.4byte 0xCB05369C
	.4byte 0x92C8369C
	.4byte 0x72D8CB76
	.4byte 0x365C9348
	.4byte 0x365C723E
	.4byte 0xCBEB3619
	.4byte 0x93CD3619
	.4byte 0x719CCC64
	.4byte 0x35D49458
	.4byte 0x35D470F3
	.4byte 0xCCE1358C
	.4byte 0x94E9358C
	.4byte 0x7042CD63
	.4byte 0x3540957F
	.4byte 0x35406F89
	.4byte 0xCDE834F2
	.4byte 0x961C34F2
	.4byte 0x6EC7CE73
	.4byte 0x34A096BF
	.4byte 0x34A06DFB
	.4byte 0xCF01344B
	.4byte 0x9769344B
	.4byte 0x6D27CF94
	.4byte 0x33F3981A
	.4byte 0x33F36C48
	.4byte 0xD02C3397
	.4byte 0x98D23397
	.4byte 0x6B5FD0C9
	.4byte 0x33379992
	.4byte 0x33376A6A
	.4byte 0xD16A32D4
	.4byte 0x9A5932D4
	.4byte 0x696AD210
	.4byte 0x326C9B28
	.4byte 0x326C685E
	.4byte 0xD2BB3200
	.4byte 0x9BFF3200
	.4byte 0x6746D36B
	.4byte 0x31909CDF
	.4byte 0x31906620
	.4byte 0xD41F311C
	.4byte 0x9DC8311C
	.4byte 0x64ECD4D9
	.4byte 0x30A39EBA
	.4byte 0x30A363A9
	.4byte 0xD5973025
	.4byte 0x9FB63025
	.4byte 0x6258D65A
	.4byte 0x2FA3A0BB
	.4byte 0x2FA360F6
	.4byte 0xD7212F1B
	.4byte 0xA1CA2F1B
	.4byte 0x5F83D7EE
	.4byte 0x2E8EA2E4
	.4byte 0x2E8E5DFF
	.4byte 0xD8BE2DFC
	.4byte 0xA4092DFC
	.4byte 0x5C68D993
	.4byte 0x2D64A539
	.4byte 0x2D645ABE
	.4byte 0xDA6D2CC6
	.4byte 0xA6742CC6
	.4byte 0x58FFDB4A
	.4byte 0x2C22A7BB
	.4byte 0x2C22572B
	.4byte 0xDC2B2B79
	.4byte 0xA90E2B79
	.4byte 0x5541DD10
	.4byte 0x2AC9AA6E
	.4byte 0x2AC9533F
	.4byte 0xDDF82A12
	.4byte 0xABDC2A12
	.4byte 0x5125DEE3
	.4byte 0x2955AD56
	.4byte 0x29554EF0
	.4byte 0xDFD12891
	.4byte 0xAEDF2891
	.4byte 0x4CA1E0C0
	.4byte 0x27C5B075
	.4byte 0x27C54A34
	.4byte 0xE1B126F3
	.4byte 0xB21B26F3
	.4byte 0x47AAE2A4
	.4byte 0x2618B3CF
	.4byte 0x26184500
	.4byte 0xE3962536
	.4byte 0xB5932536
	.4byte 0x4234E489
	.4byte 0x244CB768
	.4byte 0x244C3F45
	.4byte 0xE57A235A
	.4byte 0xB94D235A
	.4byte 0x3C31E669
	.4byte 0x225FBB43
	.4byte 0x225F38F6
	.4byte 0xE756215B
	.4byte 0xBD4A215B
	.4byte 0x3591E83E
	.4byte 0x204EBF64
	.4byte 0x204E3200
	.4byte 0xE9201F38
	.4byte 0xC1911F38
	.4byte 0x2E40E9FC
	.4byte 0x1E17C3D1
	.4byte 0x1E172A4E
	.4byte 0xEACF1CED
	.4byte 0xC6251CED
	.4byte 0x2628EB97
	.4byte 0x1BB9C88E
	.4byte 0x1BB921C8
	.4byte 0xEC521A7A
	.4byte 0xCB0B1A7A
	.4byte 0x1D2DECFD
	.4byte 0x1930CD9F
	.4byte 0x19301850
	.4byte 0xED9617DC
	.4byte 0xD04917DC
	.4byte 0x132EEE18
	.4byte 0x167BD30A
	.4byte 0x167B0DC1
	.4byte 0xEE800000


.global lbl_8052294C
lbl_8052294C:
	# ROM: 0x51EA4C
	.4byte 0x2EFA0000
	.4byte 0xD10621D7
	.4byte 0x1DF42E8F
	.4byte 0x0000D171
	.4byte 0x22AD1D1E
	.4byte 0x2E240000
	.4byte 0xD1DC2381
	.4byte 0x1C492DBA
	.4byte 0x0000D246
	.4byte 0x24551B74
	.4byte 0x2D500000
	.4byte 0xD2B02527
	.4byte 0x1AA12CE7
	.4byte 0x0000D319
	.4byte 0x25F919CE
	.4byte 0x2C7E0000
	.4byte 0xD38226CB
	.4byte 0x18FC2C15
	.4byte 0x0000D3EB
	.4byte 0x279C182A
	.4byte 0x2BAD0000
	.4byte 0xD453286C
	.4byte 0x17592B44
	.4byte 0x0000D4BC
	.4byte 0x293C1689
	.4byte 0x2ADD0000
	.4byte 0xD5232A0B
	.4byte 0x15B92A75
	.4byte 0x0000D58B
	.4byte 0x2ADA14EA
	.4byte 0x2A0D0000
	.4byte 0xD5F32BA8
	.4byte 0x141A29A6
	.4byte 0x0000D65A
	.4byte 0x2C76134C
	.4byte 0x293F0000
	.4byte 0xD6C12D43
	.4byte 0x127D28D8
	.4byte 0x0000D728
	.4byte 0x2E1111AF
	.4byte 0x28710000
	.4byte 0xD78F2EDE
	.4byte 0x10E2280A
	.4byte 0x0000D7F6
	.4byte 0x2FAA1014
	.4byte 0x27A40000
	.4byte 0xD85C3076
	.4byte 0x0F47273D
	.4byte 0x0000D8C3
	.4byte 0x31420E7A
	.4byte 0x26D70000
	.4byte 0xD929320E
	.4byte 0x0DAE2671
	.4byte 0x0000D98F
	.4byte 0x32DA0CE2
	.4byte 0x260B0000
	.4byte 0xD9F533A5
	.4byte 0x0C1625A5
	.4byte 0x0000DA5B
	.4byte 0x34700B4A
	.4byte 0x253F0000
	.4byte 0xDAC1353A
	.4byte 0x0A7E24DA
	.4byte 0x0000DB26
	.4byte 0x360509B3
	.4byte 0x24740000
	.4byte 0xDB8C36CF
	.4byte 0x08E8240F
	.4byte 0x0000DBF1
	.4byte 0x3799081D
	.4byte 0x23A90000
	.4byte 0xDC573863
	.4byte 0x07532344
	.4byte 0x0000DCBC
	.4byte 0x392C0689
	.4byte 0x22DF0000
	.4byte 0xDD2139F5
	.4byte 0x05BF227B
	.4byte 0x0000DD85
	.4byte 0x3ABE04F5
	.4byte 0x22160000
	.4byte 0xDDEA3B86
	.4byte 0x042C21B1
	.4byte 0x0000DE4F
	.4byte 0x3C4F0363
	.4byte 0x214D0000
	.4byte 0xDEB33D17
	.4byte 0x029A20E9
	.4byte 0x0000DF17
	.4byte 0x3DDE01D1
	.4byte 0x20850000
	.4byte 0xDF7B3EA6
	.4byte 0x01092021
	.4byte 0x0000DFDF
	.4byte 0x3F6D0041
	.4byte 0x1FBD0000
	.4byte 0xE0434033
	.4byte 0xFF7A1F59
	.4byte 0x0000E0A7
	.4byte 0x40FAFEB3
	.4byte 0x1EF60000
	.4byte 0xE10A41C0
	.4byte 0xFDEC1E93
	.4byte 0x0000E16D
	.4byte 0x4285FD25
	.4byte 0x1E300000
	.4byte 0xE1D0434A
	.4byte 0xFC5F1DCD
	.4byte 0x0000E233
	.4byte 0x440FFB9A
	.4byte 0x1D6A0000
	.4byte 0xE29644D4
	.4byte 0xFAD41D08
	.4byte 0x0000E2F8
	.4byte 0x4597FA10
	.4byte 0x1CA60000
	.4byte 0xE35A465B
	.4byte 0xF94B1C44
	.4byte 0x0000E3BC
	.4byte 0x471EF887
	.4byte 0x1BE20000
	.4byte 0xE41E47E1
	.4byte 0xF7C41B80
	.4byte 0x0000E480
	.4byte 0x48A3F701
	.4byte 0x1B1F0000
	.4byte 0xE4E14964
	.4byte 0xF63F1ABE
	.4byte 0x0000E542
	.4byte 0x4A25F57D
	.4byte 0x1A5E0000
	.4byte 0xE5A24AE6
	.4byte 0xF4BB19FD
	.4byte 0x0000E603
	.4byte 0x4BA6F3FA
	.4byte 0x199D0000
	.4byte 0xE6634C65
	.4byte 0xF33A193D
	.4byte 0x0000E6C3
	.4byte 0x4D24F27A
	.4byte 0x18DD0000
	.4byte 0xE7234DE3
	.4byte 0xF1BB187E
	.4byte 0x0000E782
	.4byte 0x4EA0F0FC
	.4byte 0x181F0000
	.4byte 0xE7E14F5E
	.4byte 0xF03E17C0
	.4byte 0x0000E840
	.4byte 0x501AEF81
	.4byte 0x17620000
	.4byte 0xE89E50D6
	.4byte 0xEEC41704
	.4byte 0x0000E8FC
	.4byte 0x5192EE07
	.4byte 0x16A60000
	.4byte 0xE95A524D
	.4byte 0xED4C1648
	.4byte 0x0000E9B8
	.4byte 0x5307EC91
	.4byte 0x15EB0000
	.4byte 0xEA1553C0
	.4byte 0xEBD6158E
	.4byte 0x0000EA72
	.4byte 0x5479EB1C
	.4byte 0x15320000
	.4byte 0xEACE5532
	.4byte 0xEA6314D5
	.4byte 0x0000EB2B
	.4byte 0x55EAE9AB
	.4byte 0x14790000
	.4byte 0xEB8756A1
	.4byte 0xE8F3141E
	.4byte 0x0000EBE2
	.4byte 0x5757E83B
	.4byte 0x13C20000
	.4byte 0xEC3E580D
	.4byte 0xE7851367
	.4byte 0x0000EC99
	.4byte 0x58C2E6CE
	.4byte 0x130D0000
	.4byte 0xECF35977
	.4byte 0xE61912B2
	.4byte 0x0000ED4E
	.4byte 0x5A2BE564
	.4byte 0x12580000
	.4byte 0xEDA85ADE
	.4byte 0xE4B011FE
	.4byte 0x0000EE02
	.4byte 0x5B91E3FC
	.4byte 0x11A50000
	.4byte 0xEE5B5C43
	.4byte 0xE349114B
	.4byte 0x0000EEB5
	.4byte 0x5CF5E297
	.4byte 0x10F20000
	.4byte 0xEF0E5DA6
	.4byte 0xE1E5109A
	.4byte 0x0000EF66
	.4byte 0x5E56E134
	.4byte 0x10410000
	.4byte 0xEFBF5F06
	.4byte 0xE0830FE9
	.4byte 0x0000F017
	.4byte 0x5FB6DFD3
	.4byte 0x0F910000
	.4byte 0xF06F6065
	.4byte 0xDF230F3A
	.4byte 0x0000F0C6
	.4byte 0x6113DE74
	.4byte 0x0EE20000
	.4byte 0xF11E61C1
	.4byte 0xDDC50E8B
	.4byte 0x0000F175
	.4byte 0x626FDD16
	.4byte 0x0E340000
	.4byte 0xF1CC631C
	.4byte 0xDC690DDE
	.4byte 0x0000F222
	.4byte 0x63C8DBBB
	.4byte 0x0D870000
	.4byte 0xF2796475
	.4byte 0xDB0E0D31
	.4byte 0x0000F2CF
	.4byte 0x6520DA61
	.4byte 0x0CDA0000
	.4byte 0xF32665CC
	.4byte 0xD9B50C84
	.4byte 0x0000F37C
	.4byte 0x6677D909
	.4byte 0x0C2F0000
	.4byte 0xF3D16722
	.4byte 0xD85D0BD9
	.4byte 0x0000F427
	.4byte 0x67CDD7B2
	.4byte 0x0B830000
	.4byte 0xF47D6878
	.4byte 0xD7060B2D
	.4byte 0x0000F4D3
	.4byte 0x6922D65B
	.4byte 0x0AD80000
	.4byte 0xF52869CC
	.4byte 0xD5B00A82
	.4byte 0x0000F57E
	.4byte 0x6A77D505
	.4byte 0x0A2D0000
	.4byte 0xF5D36B21
	.4byte 0xD45A09D7
	.4byte 0x0000F629
	.4byte 0x6BCBD3AF
	.4byte 0x09820000
	.4byte 0xF67E6C75
	.4byte 0xD304092C
	.4byte 0x0000F6D4
	.4byte 0x6D1FD259
	.4byte 0x08D70000
	.4byte 0xF7296DCA
	.4byte 0xD1AE0881
	.4byte 0x0000F77F
	.4byte 0x6E74D102
	.4byte 0x082B0000
	.4byte 0xF7D56F1F
	.4byte 0xD05607D5
	.4byte 0x0000F82B
	.4byte 0x6FCACFAA
	.4byte 0x077F0000
	.4byte 0xF8817076
	.4byte 0xCEFE0729
	.4byte 0x0000F8D7
	.4byte 0x7122CE51
	.4byte 0x06D20000
	.4byte 0xF92E71CE
	.4byte 0xCDA4067B
	.4byte 0x0000F985
	.4byte 0x727BCCF6
	.4byte 0x06240000
	.4byte 0xF9DC7329
	.4byte 0xCC4805CC
	.4byte 0x0000FA34
	.4byte 0x73D7CB98
	.4byte 0x05740000
	.4byte 0xFA8C7487
	.4byte 0xCAE8051C
	.4byte 0x0000FAE4
	.4byte 0x7537CA38
	.4byte 0x04C30000
	.4byte 0xFB3D75E7
	.4byte 0xC986046A
	.4byte 0x0000FB96
	.4byte 0x7699C8D3
	.4byte 0x04100000
	.4byte 0xFBF0774C
	.4byte 0xC81F03B5
	.4byte 0x0000FC4B
	.4byte 0x7800C76A
	.4byte 0x035A0000
	.4byte 0xFCA678B6
	.4byte 0xC6B402FE
	.4byte 0x0000FD02
	.4byte 0x796DC5FC
	.4byte 0x02A20000
	.4byte 0xFD5E7A25
	.4byte 0xC5430244
	.4byte 0x0000FDBC
	.4byte 0x7ADFC488


.global lbl_80522E10
lbl_80522E10:
	# ROM: 0x51EF10
	.4byte 0x2F040000
	.4byte 0xD0FC21DE
	.4byte 0x1E082E99
	.4byte 0x0000D167
	.4byte 0x22B31D32
	.4byte 0x2E2F0000
	.4byte 0xD1D12386
	.4byte 0x1C5D2DC5
	.4byte 0x0000D23B
	.4byte 0x24591B89
	.4byte 0x2D5B0000
	.4byte 0xD2A5252B
	.4byte 0x1AB62CF2
	.4byte 0x0000D30E
	.4byte 0x25FD19E4
	.4byte 0x2C890000
	.4byte 0xD37726CE
	.4byte 0x19122C20
	.4byte 0x0000D3E0
	.4byte 0x279E1841
	.4byte 0x2BB80000
	.4byte 0xD448286D
	.4byte 0x17702B50
	.4byte 0x0000D4B0
	.4byte 0x293C16A0
	.4byte 0x2AE80000
	.4byte 0xD5182A0B
	.4byte 0x15D02A80
	.4byte 0x0000D580
	.4byte 0x2AD91500
	.4byte 0x2A190000
	.4byte 0xD5E72BA7
	.4byte 0x143129B1
	.4byte 0x0000D64F
	.4byte 0x2C741363
	.4byte 0x294A0000
	.4byte 0xD6B62D41
	.4byte 0x129428E3
	.4byte 0x0000D71D
	.4byte 0x2E0E11C6
	.4byte 0x287C0000
	.4byte 0xD7842EDA
	.4byte 0x10F82815
	.4byte 0x0000D7EB
	.4byte 0x2FA6102A
	.4byte 0x27AF0000
	.4byte 0xD8513072
	.4byte 0x0F5D2748
	.4byte 0x0000D8B8
	.4byte 0x313E0E90
	.4byte 0x26E10000
	.4byte 0xD91F3209
	.4byte 0x0DC3267B
	.4byte 0x0000D985
	.4byte 0x32D40CF6
	.4byte 0x26140000
	.4byte 0xD9EC339F
	.4byte 0x0C2925AE
	.4byte 0x0000DA52
	.4byte 0x346A0B5C
	.4byte 0x25480000
	.4byte 0xDAB83535
	.4byte 0x0A8F24E1
	.4byte 0x0000DB1F
	.4byte 0x35FF09C3
	.4byte 0x247B0000
	.4byte 0xDB8536CA
	.4byte 0x08F62415
	.4byte 0x0000DBEB
	.4byte 0x3794082A
	.4byte 0x23AF0000
	.4byte 0xDC51385E
	.4byte 0x075D2349
	.4byte 0x0000DCB7
	.4byte 0x39280691
	.4byte 0x22E20000
	.4byte 0xDD1E39F3
	.4byte 0x05C5227C
	.4byte 0x0000DD84
	.4byte 0x3ABD04F8
	.4byte 0x22160000
	.4byte 0xDDEA3B86
	.4byte 0x042C21B0
	.4byte 0x0000DE50
	.4byte 0x3C50035F
	.4byte 0x21490000
	.4byte 0xDEB73D1A
	.4byte 0x029320E3
	.4byte 0x0000DF1D
	.4byte 0x3DE401C6
	.4byte 0x207D0000
	.4byte 0xDF833EAE
	.4byte 0x00F92016
	.4byte 0x0000DFEA
	.4byte 0x3F78002C
	.4byte 0x1FB00000
	.4byte 0xE0504042
	.4byte 0xFF5F1F49
	.4byte 0x0000E0B7
	.4byte 0x410CFE92
	.4byte 0x1EE20000
	.4byte 0xE11E41D7
	.4byte 0xFDC41E7B
	.4byte 0x0000E185
	.4byte 0x42A1FCF7
	.4byte 0x1E140000
	.4byte 0xE1EC436C
	.4byte 0xFC291DAD
	.4byte 0x0000E253
	.4byte 0x4436FB5B
	.4byte 0x1D460000
	.4byte 0xE2BA4501
	.4byte 0xFA8C1CDF
	.4byte 0x0000E321
	.4byte 0x45CDF9BD
	.4byte 0x1C770000
	.4byte 0xE3894698
	.4byte 0xF8EE1C0F
	.4byte 0x0000E3F1
	.4byte 0x4764F81E
	.4byte 0x1BA70000
	.4byte 0xE4594831
	.4byte 0xF74D1B3E
	.4byte 0x0000E4C2
	.4byte 0x48FDF67C
	.4byte 0x1AD50000
	.4byte 0xE52B49CB
	.4byte 0xF5AB1A6C
	.4byte 0x0000E594
	.4byte 0x4A99F4D8
	.4byte 0x1A030000
	.4byte 0xE5FD4B67
	.4byte 0xF4051998
	.4byte 0x0000E668
	.4byte 0x4C37F331
	.4byte 0x192E0000
	.4byte 0xE6D24D07
	.4byte 0xF25C18C3
	.4byte 0x0000E73D
	.4byte 0x4DD8F186
	.4byte 0x18570000
	.4byte 0xE7A94EAA
	.4byte 0xF0AF17EB
	.4byte 0x0000E815
	.4byte 0x4F7DEFD6
	.4byte 0x177E0000
	.4byte 0xE8825051
	.4byte 0xEEFC1710
	.4byte 0x0000E8F0
	.4byte 0x5127EE21
	.4byte 0x16A20000
	.4byte 0xE95E51FE
	.4byte 0xED441632
	.4byte 0x0000E9CE
	.4byte 0x52D7EC65
	.4byte 0x15C20000
	.4byte 0xEA3E53B2
	.4byte 0xEB841550
	.4byte 0x0000EAB0
	.4byte 0x548EEAA1
	.4byte 0x14DE0000
	.4byte 0xEB22556D
	.4byte 0xE9BC146A
	.4byte 0x0000EB96
	.4byte 0x564EE8D4
	.4byte 0x13F50000
	.4byte 0xEC0B5731
	.4byte 0xE7E9137E
	.4byte 0x0000EC82
	.4byte 0x5817E6FC
	.4byte 0x13060000
	.4byte 0xECFA5900
	.4byte 0xE60B128C
	.4byte 0x0000ED74
	.4byte 0x59EDE517
	.4byte 0x12100000
	.4byte 0xEDF05ADC
	.4byte 0xE41F1192
	.4byte 0x0000EE6E
	.4byte 0x5BD0E323
	.4byte 0x11110000
	.4byte 0xEEEF5CC8
	.4byte 0xE223108F
	.4byte 0x0000EF71
	.4byte 0x5DC4E11E
	.4byte 0x100A0000
	.4byte 0xEFF65EC5
	.4byte 0xE0130F82
	.4byte 0x0000F07E
	.4byte 0x5FCBDF04
	.4byte 0x0EF70000
	.4byte 0xF10960D7
	.4byte 0xDDEE0E69
	.4byte 0x0000F197
	.4byte 0x61E9DCD1
	.4byte 0x0DD70000
	.4byte 0xF2296301
	.4byte 0xDBAE0D41
	.4byte 0x0000F2BF
	.4byte 0x6421DA83
	.4byte 0x0CA80000
	.4byte 0xF3586549
	.4byte 0xD94F0C09
	.4byte 0x0000F3F7
	.4byte 0x6679D813
	.4byte 0x0B660000
	.4byte 0xF49A67B3
	.4byte 0xD6CD0ABE
	.4byte 0x0000F542
	.4byte 0x68F6D57C
	.4byte 0x0A100000
	.4byte 0xF5F06A45
	.4byte 0xD420095B
	.4byte 0x0000F6A5
	.4byte 0x6B9FD2B7
	.4byte 0x08A00000
	.4byte 0xF7606D06
	.4byte 0xD14107DE
	.4byte 0x0000F822
	.4byte 0x6E7BCFBC
	.4byte 0x07140000
	.4byte 0xF8EC6FFF
	.4byte 0xCE270640
	.4byte 0x0000F9C0
	.4byte 0x7195CC81
	.4byte 0x05640000
	.4byte 0xFA9C733C
	.4byte 0xCAC7047D
	.4byte 0x0000FB83
	.4byte 0x74F7C8F9
	.4byte 0x038A0000
	.4byte 0xFC7676C8
	.4byte 0xC7140000


.global lbl_805231B4
lbl_805231B4:
	# ROM: 0x51F2B4
	.4byte 0x3F420000
	.4byte 0xC0BE0136
	.4byte 0x3E833E8A
	.4byte 0x0000C176
	.4byte 0x02A33D14
	.4byte 0x3DD90000
	.4byte 0xC2270401
	.4byte 0x3BB33D2F
	.4byte 0x0000C2D1
	.4byte 0x05533A5E
	.4byte 0x3C8B0000
	.4byte 0xC3750699
	.4byte 0x39163BEC
	.4byte 0x0000C414
	.4byte 0x07D537D7
	.4byte 0x3B510000
	.4byte 0xC4AF0907
	.4byte 0x36A23ABB
	.4byte 0x0000C545
	.4byte 0x0A313576
	.4byte 0x3A280000
	.4byte 0xC5D80B53
	.4byte 0x3451399A
	.4byte 0x0000C666
	.4byte 0x0C6D3333
	.4byte 0x390E0000
	.4byte 0xC6F20D81
	.4byte 0x321C3885
	.4byte 0x0000C77B
	.4byte 0x0E8F310B
	.4byte 0x37FF0000
	.4byte 0xC8010F97
	.4byte 0x2FFF377C
	.4byte 0x0000C884
	.4byte 0x109B2EF7
	.4byte 0x36FA0000
	.4byte 0xC906119A
	.4byte 0x2DF5367B
	.4byte 0x0000C985
	.4byte 0x12942CF6
	.4byte 0x35FE0000
	.4byte 0xCA02138B
	.4byte 0x2BFB3582
	.4byte 0x0000CA7E
	.4byte 0x147E2B04
	.4byte 0x35080000
	.4byte 0xCAF8156E
	.4byte 0x2A0F348F
	.4byte 0x0000CB71
	.4byte 0x165B291E
	.4byte 0x34170000
	.4byte 0xCBE91745
	.4byte 0x282F33A1
	.4byte 0x0000CC5F
	.4byte 0x182D2742
	.4byte 0x332C0000
	.4byte 0xCCD41913
	.4byte 0x265732B7
	.4byte 0x0000CD49
	.4byte 0x19F6256F
	.4byte 0x32440000
	.4byte 0xCDBC1AD7
	.4byte 0x248831D1
	.4byte 0x0000CE2F
	.4byte 0x1BB723A2
	.4byte 0x315F0000
	.4byte 0xCEA11C95
	.4byte 0x22BE30EE
	.4byte 0x0000CF12
	.4byte 0x1D7221DC
	.4byte 0x307D0000
	.4byte 0xCF831E4D
	.4byte 0x20FA300C
	.4byte 0x0000CFF4
	.4byte 0x1F282019
	.4byte 0x2F9C0000
	.4byte 0xD0642001
	.4byte 0x1F392F2D
	.4byte 0x0000D0D3
	.4byte 0x20D91E59
	.4byte 0x2EBD0000
	.4byte 0xD14321B1
	.4byte 0x1D7A2E4E
	.4byte 0x0000D1B2
	.4byte 0x22881C9C
	.4byte 0x2DDF0000
	.4byte 0xD221235E
	.4byte 0x1BBE2D70
	.4byte 0x0000D290
	.4byte 0x24341AE0
	.4byte 0x2D010000
	.4byte 0xD2FF250A
	.4byte 0x1A022C92
	.4byte 0x0000D36E
	.4byte 0x25DF1923
	.4byte 0x2C230000
	.4byte 0xD3DD26B4
	.4byte 0x18452BB3
	.4byte 0x0000D44D
	.4byte 0x27891767
	.4byte 0x2B440000
	.4byte 0xD4BC285E
	.4byte 0x16882AD4
	.4byte 0x0000D52C
	.4byte 0x293415A8
	.4byte 0x2A640000
	.4byte 0xD59C2A09
	.4byte 0x14C829F4
	.4byte 0x0000D60C
	.4byte 0x2ADF13E8
	.4byte 0x29830000
	.4byte 0xD67D2BB6
	.4byte 0x13062912
	.4byte 0x0000D6EE
	.4byte 0x2C8D1224
	.4byte 0x28A00000
	.4byte 0xD7602D64
	.4byte 0x1140282E
	.4byte 0x0000D7D2
	.4byte 0x2E3C105C
	.4byte 0x27BB0000
	.4byte 0xD8452F15
	.4byte 0x0F762747
	.4byte 0x0000D8B9
	.4byte 0x2FF00E8E
	.4byte 0x26D30000
	.4byte 0xD92D30CB
	.4byte 0x0DA5265D
	.4byte 0x0000D9A3
	.4byte 0x31A70CBB
	.4byte 0x25E70000
	.4byte 0xDA193285
	.4byte 0x0BCE2570
	.4byte 0x0000DA90
	.4byte 0x33640AE0
	.4byte 0x24F70000
	.4byte 0xDB093445
	.4byte 0x09EF247E
	.4byte 0x0000DB82
	.4byte 0x352808FC
	.4byte 0x24030000
	.4byte 0xDBFD360C
	.4byte 0x08062387
	.4byte 0x0000DC79
	.4byte 0x36F3070D
	.4byte 0x23090000
	.4byte 0xDCF737DC
	.4byte 0x0612228A
	.4byte 0x0000DD76
	.4byte 0x38C80513
	.4byte 0x22080000
	.4byte 0xDDF839B6
	.4byte 0x04112185
	.4byte 0x0000DE7B
	.4byte 0x3AA8030B
	.4byte 0x21000000
	.4byte 0xDF003B9D
	.4byte 0x02012079
	.4byte 0x0000DF87
	.4byte 0x3C9500F2
	.4byte 0x1FF00000
	.4byte 0xE0103D91
	.4byte 0xFFDF1F63
	.4byte 0x0000E09D
	.4byte 0x3E91FEC7
	.4byte 0x1ED50000
	.4byte 0xE12B3F96
	.4byte 0xFDA91E43
	.4byte 0x0000E1BD
	.4byte 0x409FFC85
	.4byte 0x1DAE0000
	.4byte 0xE25241AE
	.4byte 0xFB5B1D15
	.4byte 0x0000E2EB
	.4byte 0x42C3FA2A
	.4byte 0x1C790000
	.4byte 0xE38743DE
	.4byte 0xF8F21BD9
	.4byte 0x0000E427
	.4byte 0x44FFF7B1
	.4byte 0x1B340000
	.4byte 0xE4CC4628
	.4byte 0xF6681A8B
	.4byte 0x0000E575
	.4byte 0x4759F515
	.4byte 0x19DC0000
	.4byte 0xE6244893
	.4byte 0xF3B81928
	.4byte 0x0000E6D8
	.4byte 0x49D6F250
	.4byte 0x186E0000
	.4byte 0xE7924B24
	.4byte 0xF0DC17AD
	.4byte 0x0000E853
	.4byte 0x4C7DEF5A
	.4byte 0x16E50000
	.4byte 0xE91B4DE3
	.4byte 0xEDCA1615
	.4byte 0x0000E9EB
	.4byte 0x4F56EC2A
	.4byte 0x153D0000
	.4byte 0xEAC350D7
	.4byte 0xEA79145A
	.4byte 0x0000EBA6
	.4byte 0x526AE8B5
	.4byte 0x136E0000
	.4byte 0xEC92540E
	.4byte 0xE6DC1276
	.4byte 0x0000ED8A
	.4byte 0x55C6E4EC
	.4byte 0x11720000
	.4byte 0xEE8E5794
	.4byte 0xE2E3105F
	.4byte 0x0000EFA1
	.4byte 0x597AE0BE
	.4byte 0x0F3D0000
	.4byte 0xF0C35B7B
	.4byte 0xDE7A0E0A
	.4byte 0x0000F1F6
	.4byte 0x5D9BDC14
	.4byte 0x0CC30000
	.4byte 0xF33D5FDC
	.4byte 0xD9870B67
	.4byte 0x0000F499
	.4byte 0x6242D6CF
	.4byte 0x09F30000
	.4byte 0xF60D64D3
	.4byte 0xD3E70864
	.4byte 0x0000F79C
	.4byte 0x6793D0C8
	.4byte 0x06B60000
	.4byte 0xF94A6A89
	.4byte 0xCD6C0000


.global lbl_80523558
lbl_80523558:
	# ROM: 0x51F658
	.4byte 0xFD2DFD2E
	.4byte 0xFD2FFD75
	.4byte 0xFDA7FDCE
	.4byte 0xFDEEFE09
	.4byte 0xFE20FE34
	.4byte 0xFE46FE57
	.4byte 0xFE66FE74
	.4byte 0xFE81FE8D
	.4byte 0xFE98FEA3
	.4byte 0xFEADFEB6
	.4byte 0xFEBFFEC7
	.4byte 0xFECFFED7
	.4byte 0xFEDFFEE6
	.4byte 0xFEECFEF3
	.4byte 0xFEF9FEFF
	.4byte 0xFF05FF0B
	.4byte 0xFF11FF16
	.4byte 0xFF1BFF20
	.4byte 0xFF25FF2A
	.4byte 0xFF2EFF33
	.4byte 0xFF37FF3C
	.4byte 0xFF40FF44
	.4byte 0xFF48FF4C
	.4byte 0xFF50FF53
	.4byte 0xFF57FF5B
	.4byte 0xFF5EFF62
	.4byte 0xFF65FF68
	.4byte 0xFF6BFF6F
	.4byte 0xFF72FF75
	.4byte 0xFF78FF7B
	.4byte 0xFF7EFF81
	.4byte 0xFF83FF86
	.4byte 0xFF89FF8C
	.4byte 0xFF8EFF91
	.4byte 0xFF93FF96
	.4byte 0xFF99FF9B
	.4byte 0xFF9DFFA0
	.4byte 0xFFA2FFA5
	.4byte 0xFFA7FFA9
	.4byte 0xFFABFFAE
	.4byte 0xFFB0FFB2
	.4byte 0xFFB4FFB6
	.4byte 0xFFB8FFBA
	.4byte 0xFFBCFFBE
	.4byte 0xFFC0FFC2
	.4byte 0xFFC4FFC6
	.4byte 0xFFC8FFCA
	.4byte 0xFFCCFFCE
	.4byte 0xFFCFFFD1
	.4byte 0xFFD3FFD5
	.4byte 0xFFD6FFD8
	.4byte 0xFFDAFFDC
	.4byte 0xFFDDFFDF
	.4byte 0xFFE1FFE2
	.4byte 0xFFE4FFE5
	.4byte 0xFFE7FFE9
	.4byte 0xFFEAFFEC
	.4byte 0xFFEDFFEF
	.4byte 0xFFF0FFF2
	.4byte 0xFFF3FFF5
	.4byte 0xFFF6FFF8
	.4byte 0xFFF9FFFA
	.4byte 0xFFFCFFFD
	.4byte 0xFFFF0000


.global lbl_80523658
lbl_80523658:
	# ROM: 0x51F758
	.4byte 0x3F7FCCB8
	.4byte 0x3F7F9947
	.4byte 0x3F7F65AD
	.4byte 0x3F7F31E9
	.4byte 0x3F7EFDFA
	.4byte 0x3F7EC9E1
	.4byte 0x3F7E959D
	.4byte 0x3F7E612F
	.4byte 0x3F7E2C94
	.4byte 0x3F7DF7CF
	.4byte 0x3F7DC2DD
	.4byte 0x3F7D8DBF
	.4byte 0x3F7D5873
	.4byte 0x3F7D22FD
	.4byte 0x3F7CED57
	.4byte 0x3F7CB784
	.4byte 0x3F7C8183
	.4byte 0x3F7C4B54
	.4byte 0x3F7C14F7
	.4byte 0x3F7BDE6A
	.4byte 0x3F7BA7AD
	.4byte 0x3F7B70C2
	.4byte 0x3F7B39A4
	.4byte 0x3F7B0258
	.4byte 0x3F7ACADB
	.4byte 0x3F7A932B
	.4byte 0x3F7A5B4B
	.4byte 0x3F7A2338
	.4byte 0x3F79EAF3
	.4byte 0x3F79B27C
	.4byte 0x3F7979D1
	.4byte 0x3F7940F1
	.4byte 0x3F7907DE
	.4byte 0x3F78CE97
	.4byte 0x3F78951A
	.4byte 0x3F785B69
	.4byte 0x3F782181
	.4byte 0x3F77E762
	.4byte 0x3F77AD0F
	.4byte 0x3F777282
	.4byte 0x3F7737C0
	.4byte 0x3F76FCC4
	.4byte 0x3F76C190
	.4byte 0x3F768622
	.4byte 0x3F764A7B
	.4byte 0x3F760E9C
	.4byte 0x3F75D281
	.4byte 0x3F75962A
	.4byte 0x3F755999
	.4byte 0x3F751CCB
	.4byte 0x3F74DFC1
	.4byte 0x3F74A27A
	.4byte 0x3F7464F5
	.4byte 0x3F742732
	.4byte 0x3F73E930
	.4byte 0x3F73AAEF
	.4byte 0x3F736C6D
	.4byte 0x3F732DAD
	.4byte 0x3F72EEAA
	.4byte 0x3F72AF65
	.4byte 0x3F726FDF
	.4byte 0x3F723015
	.4byte 0x3F71F009
	.4byte 0x3F71AFB8
	.4byte 0x3F716F22
	.4byte 0x3F712E47
	.4byte 0x3F70ED26
	.4byte 0x3F70ABBE
	.4byte 0x3F706A10
	.4byte 0x3F702818
	.4byte 0x3F6FE5D8
	.4byte 0x3F6FA34E
	.4byte 0x3F6F607B
	.4byte 0x3F6F1D5B
	.4byte 0x3F6ED9F2
	.4byte 0x3F6E963A
	.4byte 0x3F6E5237
	.4byte 0x3F6E0DE5
	.4byte 0x3F6DC944
	.4byte 0x3F6D8454
	.4byte 0x3F6D3F12
	.4byte 0x3F6CF981
	.4byte 0x3F6CB39C
	.4byte 0x3F6C6D65
	.4byte 0x3F6C26DA
	.4byte 0x3F6BDFFB
	.4byte 0x3F6B98C5
	.4byte 0x3F6B5139
	.4byte 0x3F6B0956
	.4byte 0x3F6AC11C
	.4byte 0x3F6A7887
	.4byte 0x3F6A2F98
	.4byte 0x3F69E64C
	.4byte 0x3F699CA6
	.4byte 0x3F6952A2
	.4byte 0x3F69083F
	.4byte 0x3F68BD7E
	.4byte 0x3F68725B
	.4byte 0x3F6826D8
	.4byte 0x3F67DAF0
	.4byte 0x3F678EA6
	.4byte 0x3F6741F5
	.4byte 0x3F66F4E0
	.4byte 0x3F66A763
	.4byte 0x3F66597C
	.4byte 0x3F660B2D
	.4byte 0x3F65BC70
	.4byte 0x3F656D49
	.4byte 0x3F651DB3
	.4byte 0x3F63DAF7
	.4byte 0x3F61E90B
	.4byte 0x3F603C9A
	.4byte 0x3F5E82FB
	.4byte 0x3F5D178D
	.4byte 0x3F5A8424
	.4byte 0x3F57D016
	.4byte 0x3F542004
	.4byte 0x3F509DEF
	.4byte 0x3F4CDB09
	.4byte 0x3F472F5A
	.4byte 0x3F4166CF
	.4byte 0x3F3965FE
	.4byte 0x3F2ECD8C
	.4byte 0x3F2206D8
	.4byte 0x3F0F289E
	.4byte 0x3EE90841
	.4byte 0x3EA8E5A3
	.4byte 0


.global lbl_80523858
lbl_80523858:
	# ROM: 0x51F958
	.4byte 0x00060C13
	.4byte 0x191F252B
	.4byte 0x31363C41
	.4byte 0x474C5155
	.4byte 0x5A5E6266
	.4byte 0x6A6D7073
	.4byte 0x75787A7B
	.4byte 0x7D7E7E7F
	.4byte 0x7F000000
	.4byte 0

.global lbl_80523880
lbl_80523880:
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte func_8041C0E8
	.4byte 0
	.4byte 0


.global lbl_805238A8
lbl_805238A8:
	# ROM: 0x51F9A8
	.float 1.0
	.4byte 0x3F879C7D
	.4byte 0x3F8FACD6
	.4byte 0x3F9837F0
	.4byte 0x3FA14518
	.4byte 0x3FAADC08
	.float 1.4142135
	.4byte 0x3FBFC887
	.4byte 0x3FCB2FF5
	.4byte 0x3FD744FD
	.4byte 0x3FE411F0
	.4byte 0x3FF1A1BF


.global lbl_805238D8
lbl_805238D8:
	# ROM: 0x51F9D8
	.float 1.0
	.4byte 0x3F800765
	.4byte 0x3F800ECA
	.4byte 0x3F801630
	.4byte 0x3F801D96
	.4byte 0x3F8024FD
	.4byte 0x3F802C64
	.4byte 0x3F8033CC
	.4byte 0x3F803B34
	.4byte 0x3F80429C
	.4byte 0x3F804A05
	.4byte 0x3F80516E
	.4byte 0x3F8058D8
	.4byte 0x3F806042
	.4byte 0x3F8067AC
	.4byte 0x3F806F17
	.4byte 0x3F807683
	.4byte 0x3F807DEF
	.4byte 0x3F80855B
	.4byte 0x3F808CC8
	.4byte 0x3F809435
	.4byte 0x3F809BA2
	.4byte 0x3F80A310
	.4byte 0x3F80AA7E
	.4byte 0x3F80B1ED
	.4byte 0x3F80B95D
	.4byte 0x3F80C0CC
	.4byte 0x3F80C83C
	.4byte 0x3F80CFAD
	.4byte 0x3F80D71E
	.4byte 0x3F80DE8F
	.4byte 0x3F80E601
	.4byte 0x3F80ED73
	.4byte 0x3F80F4E6
	.4byte 0x3F80FC59
	.4byte 0x3F8103CD
	.4byte 0x3F810B41
	.4byte 0x3F8112B5
	.4byte 0x3F811A2A
	.4byte 0x3F81219F
	.4byte 0x3F812915
	.4byte 0x3F81308B
	.4byte 0x3F813802
	.4byte 0x3F813F79
	.4byte 0x3F8146F0
	.4byte 0x3F814E68
	.4byte 0x3F8155E0
	.4byte 0x3F815D59
	.4byte 0x3F8164D2
	.4byte 0x3F816C4C
	.4byte 0x3F8173C6
	.4byte 0x3F817B40
	.4byte 0x3F8182BB
	.4byte 0x3F818A36
	.4byte 0x3F8191B2
	.4byte 0x3F81992E
	.4byte 0x3F81A0AB
	.4byte 0x3F81A828
	.4byte 0x3F81AFA5
	.4byte 0x3F81B723
	.4byte 0x3F81BEA1
	.4byte 0x3F81C620
	.4byte 0x3F81CD9F
	.4byte 0x3F81D51F
	.4byte 0x3F81DC9F
	.4byte 0x3F81E420
	.4byte 0x3F81EBA1
	.4byte 0x3F81F322
	.4byte 0x3F81FAA4
	.4byte 0x3F820226
	.4byte 0x3F8209A9
	.4byte 0x3F82112C
	.4byte 0x3F8218AF
	.4byte 0x3F822033
	.4byte 0x3F8227B8
	.4byte 0x3F822F3C
	.4byte 0x3F8236C2
	.4byte 0x3F823E47
	.4byte 0x3F8245CE
	.4byte 0x3F824D54
	.4byte 0x3F8254DB
	.4byte 0x3F825C63
	.4byte 0x3F8263EB
	.4byte 0x3F826B73
	.4byte 0x3F8272FC
	.4byte 0x3F827A85
	.4byte 0x3F82820E
	.4byte 0x3F828998
	.4byte 0x3F829123
	.4byte 0x3F8298AE
	.4byte 0x3F82A039
	.4byte 0x3F82A7C5
	.4byte 0x3F82AF51
	.4byte 0x3F82B6DE
	.4byte 0x3F82BE6B
	.4byte 0x3F82C5F9
	.4byte 0x3F82CD87
	.4byte 0x3F82D515
	.4byte 0x3F82DCA4
	.4byte 0x3F82E433
	.4byte 0x3F82EBC3
	.4byte 0x3F82F353
	.4byte 0x3F82FAE4
	.4byte 0x3F830275
	.4byte 0x3F830A06
	.4byte 0x3F831198
	.4byte 0x3F83192A
	.4byte 0x3F8320BD
	.4byte 0x3F832850
	.4byte 0x3F832FE4
	.4byte 0x3F833778
	.4byte 0x3F833F0D
	.4byte 0x3F8346A2
	.4byte 0x3F834E37
	.4byte 0x3F8355CD
	.4byte 0x3F835D63
	.4byte 0x3F8364FA
	.4byte 0x3F836C91
	.4byte 0x3F837429
	.4byte 0x3F837BC1
	.4byte 0x3F838359
	.4byte 0x3F838AF2
	.4byte 0x3F83928C
	.4byte 0x3F839A25
	.4byte 0x3F83A1C0
	.4byte 0x3F83A95A
	.4byte 0x3F83B0F5
	.4byte 0x3F83B891
	.4byte 0x3F83C02D
	.4byte 0x3F83C7C9
	.4byte 0x3F83CF66
	.4byte 0x3F83D704
	.4byte 0x3F83DEA1
	.4byte 0x3F83E640
	.4byte 0x3F83EDDE
	.4byte 0x3F83F57D
	.4byte 0x3F83FD1D
	.4byte 0x3F8404BD
	.4byte 0x3F840C5D
	.4byte 0x3F8413FE
	.4byte 0x3F841B9F
	.4byte 0x3F842341
	.4byte 0x3F842AE3
	.4byte 0x3F843286
	.4byte 0x3F843A29
	.4byte 0x3F8441CC
	.4byte 0x3F844970
	.4byte 0x3F845115
	.4byte 0x3F8458B9
	.4byte 0x3F84605F
	.4byte 0x3F846804
	.4byte 0x3F846FAA
	.4byte 0x3F847751
	.4byte 0x3F847EF8
	.4byte 0x3F84869F
	.4byte 0x3F848E47
	.4byte 0x3F8495F0
	.4byte 0x3F849D98
	.4byte 0x3F84A542
	.4byte 0x3F84ACEB
	.4byte 0x3F84B495
	.4byte 0x3F84BC40
	.4byte 0x3F84C3EB
	.4byte 0x3F84CB96
	.4byte 0x3F84D342
	.4byte 0x3F84DAEF
	.4byte 0x3F84E29B
	.4byte 0x3F84EA49
	.4byte 0x3F84F1F6
	.4byte 0x3F84F9A4
	.4byte 0x3F850153
	.4byte 0x3F850902
	.4byte 0x3F8510B1
	.4byte 0x3F851861
	.4byte 0x3F852012
	.4byte 0x3F8527C2
	.4byte 0x3F852F74
	.4byte 0x3F853725
	.4byte 0x3F853ED7
	.4byte 0x3F85468A
	.4byte 0x3F854E3D
	.4byte 0x3F8555F0
	.4byte 0x3F855DA4
	.4byte 0x3F856558
	.4byte 0x3F856D0D
	.4byte 0x3F8574C2
	.4byte 0x3F857C78
	.4byte 0x3F85842E
	.4byte 0x3F858BE5
	.4byte 0x3F85939C
	.4byte 0x3F859B53
	.4byte 0x3F85A30B
	.4byte 0x3F85AAC3
	.4byte 0x3F85B27C
	.4byte 0x3F85BA35
	.4byte 0x3F85C1EF
	.4byte 0x3F85C9A9
	.4byte 0x3F85D164
	.4byte 0x3F85D91F
	.4byte 0x3F85E0DA
	.4byte 0x3F85E896
	.4byte 0x3F85F052
	.4byte 0x3F85F80F
	.4byte 0x3F85FFCC
	.4byte 0x3F86078A
	.4byte 0x3F860F48
	.4byte 0x3F861707
	.4byte 0x3F861EC6
	.4byte 0x3F862685
	.4byte 0x3F862E45
	.4byte 0x3F863606
	.4byte 0x3F863DC7
	.4byte 0x3F864588
	.4byte 0x3F864D4A
	.4byte 0x3F86550C
	.4byte 0x3F865CCE
	.4byte 0x3F866491
	.4byte 0x3F866C55
	.4byte 0x3F867419
	.4byte 0x3F867BDD
	.4byte 0x3F8683A2
	.4byte 0x3F868B67
	.4byte 0x3F86932D
	.4byte 0x3F869AF3
	.4byte 0x3F86A2BA
	.4byte 0x3F86AA81
	.4byte 0x3F86B249
	.4byte 0x3F86BA11
	.4byte 0x3F86C1D9
	.4byte 0x3F86C9A2
	.4byte 0x3F86D16B
	.4byte 0x3F86D935
	.4byte 0x3F86E0FF
	.4byte 0x3F86E8CA
	.4byte 0x3F86F095
	.4byte 0x3F86F861
	.4byte 0x3F87002D
	.4byte 0x3F8707F9
	.4byte 0x3F870FC6
	.4byte 0x3F871794
	.4byte 0x3F871F62
	.4byte 0x3F872730
	.4byte 0x3F872EFF
	.4byte 0x3F8736CE
	.4byte 0x3F873E9E
	.4byte 0x3F87466E
	.4byte 0x3F874E3E
	.4byte 0x3F87560F
	.4byte 0x3F875DE1
	.4byte 0x3F8765B3
	.4byte 0x3F876D85
	.4byte 0x3F877558
	.4byte 0x3F877D2B
	.4byte 0x3F8784FF
	.4byte 0x3F878CD3
	.4byte 0x3F8794A8


.global lbl_80523CD8
lbl_80523CD8:
	# ROM: 0x51FDD8
	.4byte 0
	.4byte 0x380021F4
	.4byte 0x38019DD8
	.4byte 0x38031E07
	.4byte 0x3804A2B9
	.4byte 0x38062BED
	.4byte 0x3807B9A4
	.4byte 0x38094BF9
	.4byte 0x380AE2EC
	.4byte 0x380C7E98
	.4byte 0x380E1F19
	.4byte 0x380FC46F
	.4byte 0x38116E9A
	.4byte 0x38131DB6
	.4byte 0x3814D1C1
	.4byte 0x38168AF5
	.4byte 0x38184934
	.4byte 0x381A0C9B
	.4byte 0x381BD544
	.4byte 0x381DA331
	.4byte 0x381F767C
	.4byte 0x38214F40
	.4byte 0x38232D64
	.4byte 0x3825111C
	.4byte 0x3826FA6A
	.4byte 0x3828E969
	.4byte 0x382ADE18
	.4byte 0x382CD8B0
	.4byte 0x382ED8F8
	.4byte 0x3830DF5F
	.4byte 0x3832EBAE
	.4byte 0x3834FE00
	.4byte 0x3837168C
	.4byte 0x38393538
	.4byte 0x383B5A54
	.4byte 0x383D85AB
	.4byte 0x383FB773
	.4byte 0x3841EFC8
	.4byte 0x38442EAA
	.4byte 0x38467434
	.4byte 0x3848C081
	.4byte 0x384B1393
	.4byte 0x384D6D9F
	.4byte 0x384FCE8A
	.4byte 0x3852368B
	.4byte 0x3854A5BE
	.4byte 0x38571C08
	.4byte 0x385999BA
	.4byte 0x385C1EB9
	.4byte 0x385EAB3C
	.4byte 0x38613F5F
	.4byte 0x3863DB06
	.4byte 0x38667E84
	.4byte 0x386929BD
	.4byte 0x386BDCE8
	.4byte 0x386E9820
	.4byte 0x38715B66
	.4byte 0x387426D5
	.4byte 0x3876FAA5
	.4byte 0x3879D6B8
	.4byte 0x387CBB63
	.4byte 0x387FA889
	.4byte 0x38814F31
	.4byte 0x3882CE85
	.4byte 0x3884523F
	.4byte 0x3885DA7C
	.4byte 0x38876749
	.4byte 0x3888F8B4
	.4byte 0x388A8EAF
	.4byte 0x388C2972
	.4byte 0x388DC8EE
	.4byte 0x388F6D3F
	.4byte 0x38911665
	.4byte 0x3892C47B
	.4byte 0x38947790
	.4byte 0x38962FA2
	.4byte 0x3897ECDD
	.4byte 0x3899AF3E
	.4byte 0x389B76C7
	.4byte 0x389D43A1
	.4byte 0x389F15D9
	.4byte 0x38A0ED61
	.4byte 0x38A2CA72
	.4byte 0x38A4AD09
	.4byte 0x38A69529
	.4byte 0x38A882F9
	.4byte 0x38AA7688
	.4byte 0x38AC6FD6
	.4byte 0x38AE6EFD
	.4byte 0x38B0740D
	.4byte 0x38B27F20
	.4byte 0x38B49043
	.4byte 0x38B6A786
	.4byte 0x38B8C4F5
	.4byte 0x38BAE8AC
	.4byte 0x38BD12B9
	.4byte 0x38BF4338
	.4byte 0x38C17A27
	.4byte 0x38C3B7B1
	.4byte 0x38C5FBE4
	.4byte 0x38C846CC
	.4byte 0x38CA9878
	.4byte 0x38CCF103
	.4byte 0x38CF5089
	.4byte 0x38D1B717
	.4byte 0x38D424CA
	.4byte 0x38D69977
	.4byte 0x38D915A8
	.4byte 0x38DB995D
	.4byte 0x38DE240D
	.4byte 0x38E0B6CB
	.4byte 0x38E3510C
	.4byte 0x38E5F2D2
	.4byte 0x38E89C1C
	.4byte 0x38EB4DFD
	.4byte 0x38EE0763
	.4byte 0x38F0C8D5
	.4byte 0x38F392DF
	.4byte 0x38F664F7
	.4byte 0x38F93F1C
	.4byte 0x38FC21D8
	.4byte 0x38FF0DB4
	.4byte 0x390100CF
	.4byte 0x39027F10
	.4byte 0x39040225
	.4byte 0x39058941
	.4byte 0x39071533
	.4byte 0x3908A5B4
	.4byte 0x390A3AC6
	.4byte 0x390BD468
	.4byte 0x390D72DF
	.4byte 0x390F162A
	.4byte 0x3910BE4B
	.4byte 0x39126B86
	.4byte 0x39141D95
	.4byte 0x3915D479
	.4byte 0x391790BC
	.4byte 0x39195218
	.4byte 0x391B188F
	.4byte 0x391CE463
	.4byte 0x391EB551
	.4byte 0x39208BE2
	.4byte 0x392267D2
	.4byte 0x39244920
	.4byte 0x39263011
	.4byte 0x39281CEA
	.4byte 0x392A0F21
	.4byte 0x392C0741
	.4byte 0x392E0548
	.4byte 0x393008F2
	.4byte 0x393212C8
	.4byte 0x393422CC
	.4byte 0x393638B7
	.4byte 0x393854CE
	.4byte 0x393A7757
	.4byte 0x393CA00D
	.4byte 0x393ECF33
	.4byte 0x394104CB
	.4byte 0x39434119
	.4byte 0x394583D8
	.4byte 0x3947CD4D
	.4byte 0x394A1D79
	.4byte 0x394C749E
	.4byte 0x394ED2BF
	.4byte 0x395137DA
	.4byte 0x3953A435
	.4byte 0x3956178A
	.4byte 0x3958921F
	.4byte 0x395B1438
	.4byte 0x395D9D91
	.4byte 0x39602E6D
	.4byte 0x3962C713
	.4byte 0x3965673C
	.4byte 0x39680F2F
	.4byte 0x396ABF2F
	.4byte 0x396D76F8
	.4byte 0x39703713
	.4byte 0x3972FEF7
	.4byte 0x3975CF72
	.4byte 0x3978A7FB
	.4byte 0x397B891A
	.4byte 0x397E72D1
	.4byte 0x3980B28F
	.4byte 0x39823002
	.4byte 0x3983B204
	.4byte 0x39853852
	.4byte 0x3986C353
	.4byte 0x398852C2
	.4byte 0x3989E6E3
	.4byte 0x398B7FB7
	.4byte 0x398D1D1B
	.4byte 0x398EBF76
	.4byte 0x399066A6
	.4byte 0x399212AB
	.4byte 0x3993C3A8
	.4byte 0x399579BE
	.4byte 0x399734CC
	.4byte 0x3998F515
	.4byte 0x399ABA78
	.4byte 0x399C8518
	.4byte 0x399E5515
	.4byte 0x39A02A71
	.4byte 0x39A2054E
	.4byte 0x39A3E589
	.4byte 0x39A5CB67
	.4byte 0x39A7B6E9
	.4byte 0x39A9A80D
	.4byte 0x39AB9EF7
	.4byte 0x39AD9BA7
	.4byte 0x39AF9E3E
	.4byte 0x39B1A6DF
	.4byte 0x39B3B58B
	.4byte 0x39B5CA41
	.4byte 0x39B7E523
	.4byte 0x39BA0632
	.4byte 0x39BC2DB2
	.4byte 0x39BE5B81
	.4byte 0x39C08FC1
	.4byte 0x39C2CA95
	.4byte 0x39C50BFD
	.4byte 0x39C7541B
	.4byte 0x39C9A310
	.4byte 0x39CBF8BC
	.4byte 0x39CE5563
	.4byte 0x39D0B904
	.4byte 0x39D323C3
	.4byte 0x39D5959E
	.4byte 0x39D80EDB
	.4byte 0x39DA8F36
	.4byte 0x39DD1737
	.4byte 0x39DFA699
	.4byte 0x39E23D80
	.4byte 0x39E4DC30
	.4byte 0x39E78286
	.4byte 0x39EA30E9
	.4byte 0x39ECE716
	.4byte 0x39EFA550
	.4byte 0x39F26BBA
	.4byte 0x39F53A54
	.4byte 0x39F81141
	.4byte 0x39FAF0A2
	.4byte 0x39FDD877
	.4byte 0x3A006483
	.4byte 0x3A01E116
	.4byte 0x3A036217
	.4byte 0x3A04E797
	.4byte 0x3A067185
	.4byte 0x3A080014
	.4byte 0x3A099334
	.4byte 0x3A0B2B06
	.4byte 0x3A0CC79C
	.4byte 0x3A0E68E4
	.4byte 0x3A100F12
	.4byte 0x3A11BA16
	.4byte 0x3A136A11
	.4byte 0x3A151F14
	.4byte 0x3A16D920
	.4byte 0x3A189845
	.4byte 0x3A1A5CA7
	.4byte 0x3A1C2633
	.4byte 0x3A1DF51E
	.4byte 0x3A1FC956
	.4byte 0x3A21A2FD
	.4byte 0x3A238226
	.4byte 0x3A2566CF
	.4byte 0x3A27511B
	.4byte 0x3A29411B
	.4byte 0x3A2B36E1
	.4byte 0x3A2D325B
	.4byte 0x3A2F33CE
	.4byte 0x3A313B29
	.4byte 0x3A33488F
	.4byte 0x3A355BFE
	.4byte 0x3A37759A
	.4byte 0x3A399574
	.4byte 0x3A3BBB8B
	.4byte 0x3A3DE814
	.4byte 0x3A401B0E
	.4byte 0x3A425479
	.4byte 0x3A449489
	.4byte 0x3A46DB4F
	.4byte 0x3A4928BA
	.4byte 0x3A4B7D0E
	.4byte 0x3A4DD84C
	.4byte 0x3A503A73
	.4byte 0x3A52A3B8
	.4byte 0x3A55142A
	.4byte 0x3A578BCB
	.4byte 0x3A5A0ABD
	.4byte 0x3A5C9110
	.4byte 0x3A5F1EE7
	.4byte 0x3A61B454
	.4byte 0x3A645168
	.4byte 0x3A66F633
	.4byte 0x3A69A2D8
	.4byte 0x3A6C5768
	.4byte 0x3A6F1406
	.4byte 0x3A71D8B1
	.4byte 0x3A74A59E
	.4byte 0x3A777ADC
	.4byte 0x3A7A587F
	.4byte 0x3A7D3E96
	.4byte 0x3A8016A2
	.4byte 0x3A819256
	.4byte 0x3A83126F
	.4byte 0x3A8496F5
	.4byte 0x3A862004
	.4byte 0x3A87AD9A
	.4byte 0x3A893FD2
	.4byte 0x3A8AD6AB
	.4byte 0x3A8C7236
	.4byte 0x3A8E128E
	.4byte 0x3A8FB7B2
	.4byte 0x3A9161BD
	.4byte 0x3A9310AD
	.4byte 0x3A94C4A6
	.4byte 0x3A967DA8
	.4byte 0x3A983BC3
	.4byte 0x3A99FF09
	.4byte 0x3A9BC782
	.4byte 0x3A9D9549
	.4byte 0x3A9F686E
	.4byte 0x3AA140FA
	.4byte 0x3AA31EFE
	.4byte 0x3AA50283
	.4byte 0x3AA6EBAB
	.4byte 0x3AA8DA7F
	.4byte 0x3AAACF07
	.4byte 0x3AACC95D
	.4byte 0x3AAEC98A
	.4byte 0x3AB0CFB0
	.4byte 0x3AB2DBCF
	.4byte 0x3AB4EE00
	.4byte 0x3AB70656
	.4byte 0x3AB924E9
	.4byte 0x3ABB49BA
	.4byte 0x3ABD74EB
	.4byte 0x3ABFA685
	.4byte 0x3AC1DEA1
	.4byte 0x3AC41D59
	.4byte 0x3AC662AE
	.4byte 0x3AC8AEC1
	.4byte 0x3ACB01AD
	.4byte 0x3ACD5B71
	.4byte 0x3ACFBC2F
	.4byte 0x3AD223FA
	.4byte 0x3AD492EA
	.4byte 0x3AD70911
	.4byte 0x3AD98680
	.4byte 0x3ADC0B51
	.4byte 0x3ADE979D
	.4byte 0x3AE12B6D
	.4byte 0x3AE3C6ED
	.4byte 0x3AE66A24
	.4byte 0x3AE91524
	.4byte 0x3AEBC818
	.4byte 0x3AEE8309
	.4byte 0x3AF1460F
	.4byte 0x3AF41146
	.4byte 0x3AF6E4C6
	.4byte 0x3AF9C0A9
	.4byte 0x3AFCA502
	.4byte 0x3AFF91F1
	.4byte 0x3B0143C4
	.4byte 0x3B02C2F1
	.4byte 0x3B044690
	.4byte 0x3B05CEAE
	.4byte 0x3B075B54
	.4byte 0x3B08EC92
	.4byte 0x3B0A8276
	.4byte 0x3B0C1D0D
	.4byte 0x3B0DBC67
	.4byte 0x3B0F608E
	.4byte 0x3B110993
	.4byte 0x3B12B781
	.4byte 0x3B146A6C
	.4byte 0x3B162263
	.4byte 0x3B17DF70
	.4byte 0x3B19A1A3
	.4byte 0x3B1B690E
	.4byte 0x3B1D35BD
	.4byte 0x3B1F07C3
	.4byte 0x3B20DF2F
	.4byte 0x3B22BC0F
	.4byte 0x3B249E74
	.4byte 0x3B268674
	.4byte 0x3B287417
	.4byte 0x3B2A6772
	.4byte 0x3B2C6093
	.4byte 0x3B2E5F8F
	.4byte 0x3B306477
	.4byte 0x3B326F58
	.4byte 0x3B34804B
	.4byte 0x3B36975B
	.4byte 0x3B38B49F
	.4byte 0x3B3AD825
	.4byte 0x3B3D0207
	.4byte 0x3B3F324E
	.4byte 0x3B416912
	.4byte 0x3B43A66A
	.4byte 0x3B45EA63
	.4byte 0x3B483512
	.4byte 0x3B4A868C
	.4byte 0x3B4CDEE7
	.4byte 0x3B4F3E39
	.4byte 0x3B51A48D
	.4byte 0x3B541204
	.4byte 0x3B5686A8
	.4byte 0x3B590294
	.4byte 0x3B5B85DE
	.4byte 0x3B5E10A0
	.4byte 0x3B60A2E5
	.4byte 0x3B633CCC
	.4byte 0x3B65DE67
	.4byte 0x3B6887CF
	.4byte 0x3B6B391A
	.4byte 0x3B6DF266
	.4byte 0x3B70B3BF
	.4byte 0x3B737D43
	.4byte 0x3B764F0D
	.4byte 0x3B792932
	.4byte 0x3B7C0BCC
	.4byte 0x3B7EF6F0
	.4byte 0x3B80F560
	.4byte 0x3B8273A7
	.4byte 0x3B83F65A
	.4byte 0x3B857D89
	.4byte 0x3B87093E
	.4byte 0x3B88998A
	.4byte 0x3B8A2E77
	.4byte 0x3B8BC815
	.4byte 0x3B8D6672
	.4byte 0x3B8F0999
	.4byte 0x3B90B19C
	.4byte 0x3B925E89
	.4byte 0x3B94106C
	.4byte 0x3B95C756
	.4byte 0x3B978354
	.4byte 0x3B994477
	.4byte 0x3B9B0ACF
	.4byte 0x3B9CD667
	.4byte 0x3B9EA753
	.4byte 0x3BA07DA0
	.4byte 0x3BA25960
	.4byte 0x3BA43AA1
	.4byte 0x3BA62176
	.4byte 0x3BA80DEF
	.4byte 0x3BAA0019
	.4byte 0x3BABF80B
	.4byte 0x3BADF5D0
	.4byte 0x3BAFF97E
	.4byte 0x3BB20323
	.4byte 0x3BB412D5
	.4byte 0x3BB628A2
	.4byte 0x3BB8449B
	.4byte 0x3BBA66D7
	.4byte 0x3BBC8F66
	.4byte 0x3BBEBE5B
	.4byte 0x3BC0F3CA
	.4byte 0x3BC32FC2
	.4byte 0x3BC5725D
	.4byte 0x3BC7BBA9
	.4byte 0x3BCA0BBD
	.4byte 0x3BCC62AB
	.4byte 0x3BCEC089
	.4byte 0x3BD1256C
	.4byte 0x3BD39166
	.4byte 0x3BD60491
	.4byte 0x3BD87EFB
	.4byte 0x3BDB00C0
	.4byte 0x3BDD89F4
	.4byte 0x3BE01AAA
	.4byte 0x3BE2B2FE
	.4byte 0x3BE55301
	.4byte 0x3BE7FACC
	.4byte 0x3BEAAA76
	.4byte 0x3BED6219
	.4byte 0x3BF021C6
	.4byte 0x3BF2E99B
	.4byte 0x3BF5B9AF
	.4byte 0x3BF8921A
	.4byte 0x3BFB72F3
	.4byte 0x3BFE5C54
	.4byte 0x3C00A72B
	.4byte 0x3C02248A
	.4byte 0x3C03A654
	.4byte 0x3C052C95
	.4byte 0x3C06B75B
	.4byte 0x3C0846B4
	.4byte 0x3C09DAAB
	.4byte 0x3C0B7351
	.4byte 0x3C0D10B3
	.4byte 0x3C0EB2DC
	.4byte 0x3C1059DF
	.4byte 0x3C1205C6
	.4byte 0x3C13B6A2
	.4byte 0x3C156C81
	.4byte 0x3C172773
	.4byte 0x3C18E786
	.4byte 0x3C1AACC9
	.4byte 0x3C1C774B
	.4byte 0x3C1E471D
	.4byte 0x3C201C4D
	.4byte 0x3C21F6EC
	.4byte 0x3C23D70A
	.4byte 0x3C25BCB8
	.4byte 0x3C27A805
	.4byte 0x3C299903
	.4byte 0x3C2B8FC1
	.4byte 0x3C2D8C52
	.4byte 0x3C2F8EC7
	.4byte 0x3C319730
	.4byte 0x3C33A5A1
	.4byte 0x3C35BA2A
	.4byte 0x3C37D4DE
	.4byte 0x3C39F5CE
	.4byte 0x3C3C1D0D
	.4byte 0x3C3E4AAF
	.4byte 0x3C407EC7
	.4byte 0x3C42B965
	.4byte 0x3C44FAA0
	.4byte 0x3C47428A
	.4byte 0x3C499137
	.4byte 0x3C4BE6BA
	.4byte 0x3C4E4329
	.4byte 0x3C50A697
	.4byte 0x3C53111B
	.4byte 0x3C5582C7
	.4byte 0x3C57FBB2
	.4byte 0x3C5A7BF1
	.4byte 0x3C5D039B
	.4byte 0x3C5F92C3
	.4byte 0x3C622984
	.4byte 0x3C64C7F0
	.4byte 0x3C676E1E
	.4byte 0x3C6A1C28
	.4byte 0x3C6CD224
	.4byte 0x3C6F9028
	.4byte 0x3C72564E
	.4byte 0x3C7524AC
	.4byte 0x3C77FB5C
	.4byte 0x3C7ADA77
	.4byte 0x3C7DC214
	.4byte 0x3C805927
	.4byte 0x3C81D59F
	.4byte 0x3C83567E
	.4byte 0x3C84DBD3
	.4byte 0x3C8665A9
	.4byte 0x3C87F40F
	.4byte 0x3C898712
	.4byte 0x3C8B1EC0
	.4byte 0x3C8CBB26
	.4byte 0x3C8E5C53
	.4byte 0x3C900254
	.4byte 0x3C91AD39
	.4byte 0x3C935D0F
	.4byte 0x3C9511E5
	.4byte 0x3C96CBC9
	.4byte 0x3C988ACC
	.4byte 0x3C9A4EFC
	.4byte 0x3C9C1868
	.4byte 0x3C9DE721
	.4byte 0x3C9FBB34
	.4byte 0x3CA194B4
	.4byte 0x3CA373AF
	.4byte 0x3CA55836
	.4byte 0x3CA74259
	.4byte 0x3CA9322A
	.4byte 0x3CAB27B7
	.4byte 0x3CAD2314
	.4byte 0x3CAF2451
	.4byte 0x3CB12B7F
	.4byte 0x3CB338B0
	.4byte 0x3CB54BF6
	.4byte 0x3CB76562
	.4byte 0x3CB98509
	.4byte 0x3CBBAAFA
	.4byte 0x3CBDD74A
	.4byte 0x3CC00A0B
	.4byte 0x3CC24350
	.4byte 0x3CC4832C
	.4byte 0x3CC6C9B4
	.4byte 0x3CC916FA
	.4byte 0x3CCB6B13
	.4byte 0x3CCDC613
	.4byte 0x3CD0280F
	.4byte 0x3CD2911B
	.4byte 0x3CD5014D
	.4byte 0x3CD778B8
	.4byte 0x3CD9F773
	.4byte 0x3CDC7D93
	.4byte 0x3CDF0B2F
	.4byte 0x3CE1A05D
	.4byte 0x3CE43D32
	.4byte 0x3CE6E1C6
	.4byte 0x3CE98E30
	.4byte 0x3CEC4286
	.4byte 0x3CEEFEE1
	.4byte 0x3CF1C358
	.4byte 0x3CF49003
	.4byte 0x3CF764FA
	.4byte 0x3CFA4257
	.4byte 0x3CFD2831
	.4byte 0x3D000B51
	.4byte 0x3D0186E3
	.4byte 0x3D0306D9
	.4byte 0x3D048B41
	.4byte 0x3D061429
	.4byte 0x3D07A19D
	.4byte 0x3D0933AC
	.4byte 0x3D0ACA63
	.4byte 0x3D0C65CF
	.4byte 0x3D0E05FE
	.4byte 0x3D0FAB00
	.4byte 0x3D1154E1
	.4byte 0x3D1303B1
	.4byte 0x3D14B77E
	.4byte 0x3D167057
	.4byte 0x3D182E4B
	.4byte 0x3D19F168
	.4byte 0x3D1BB9BF
	.4byte 0x3D1D875F
	.4byte 0x3D1F5A57
	.4byte 0x3D2132B8
	.4byte 0x3D231090
	.4byte 0x3D24F3F1
	.4byte 0x3D26DCEB
	.4byte 0x3D28CB8F
	.4byte 0x3D2ABFEC
	.4byte 0x3D2CBA15
	.4byte 0x3D2EBA1B
	.4byte 0x3D30C00E
	.4byte 0x3D32CC01
	.4byte 0x3D34DE05
	.4byte 0x3D36F62B
	.4byte 0x3D391488
	.4byte 0x3D3B392C
	.4byte 0x3D3D642A
	.4byte 0x3D3F9596
	.4byte 0x3D41CD81
	.4byte 0x3D440C01
	.4byte 0x3D465127
	.4byte 0x3D489D08
	.4byte 0x3D4AEFB8
	.4byte 0x3D4D494A
	.4byte 0x3D4FA9D4
	.4byte 0x3D52116A
	.4byte 0x3D548021
	.4byte 0x3D56F60D
	.4byte 0x3D597345
	.4byte 0x3D5BF7DE
	.4byte 0x3D5E83ED
	.4byte 0x3D611789
	.4byte 0x3D63B2C9
	.4byte 0x3D6655C3
	.4byte 0x3D69008E
	.4byte 0x3D6BB340
	.4byte 0x3D6E6DF2
	.4byte 0x3D7130BC
	.4byte 0x3D73FBB4
	.4byte 0x3D76CEF4
	.4byte 0x3D79AA94
	.4byte 0x3D7C8EAC
	.4byte 0x3D7F7B57
	.4byte 0x3D813856
	.4byte 0x3D82B764
	.4byte 0x3D843AE0
	.4byte 0x3D85C2DA
	.4byte 0x3D874F5D
	.4byte 0x3D88E078
	.4byte 0x3D8A7638
	.4byte 0x3D8C10AB
	.4byte 0x3D8DAFDE
	.4byte 0x3D8F53E0
	.4byte 0x3D90FCBF
	.4byte 0x3D92AA8A
	.4byte 0x3D945D4F
	.4byte 0x3D96151C
	.4byte 0x3D97D202
	.4byte 0x3D99940E
	.4byte 0x3D9B5B50
	.4byte 0x3D9D27D8
	.4byte 0x3D9EF9B4
	.4byte 0x3DA0D0F6
	.4byte 0x3DA2ADAD
	.4byte 0x3DA48FE9
	.4byte 0x3DA677BB
	.4byte 0x3DA86532
	.4byte 0x3DAA5860
	.4byte 0x3DAC5156
	.4byte 0x3DAE5025
	.4byte 0x3DB054DE
	.4byte 0x3DB25F93
	.4byte 0x3DB47056
	.4byte 0x3DB68738
	.4byte 0x3DB8A44B
	.4byte 0x3DBAC7A2
	.4byte 0x3DBCF150
	.4byte 0x3DBF2167
	.4byte 0x3DC157FB
	.4byte 0x3DC3951E
	.4byte 0x3DC5D8E3
	.4byte 0x3DC82360
	.4byte 0x3DCA74A7
	.4byte 0x3DCCCCCD
	.4byte 0x3DCF2BE6
	.4byte 0x3DD19206
	.4byte 0x3DD3FF43
	.4byte 0x3DD673B1
	.4byte 0x3DD8EF67
	.4byte 0x3DDB7279
	.4byte 0x3DDDFCFD
	.4byte 0x3DE08F09
	.4byte 0x3DE328B4
	.4byte 0x3DE5CA15
	.4byte 0x3DE87341
	.4byte 0x3DEB2451
	.4byte 0x3DEDDD5B
	.4byte 0x3DF09E78
	.4byte 0x3DF367BF
	.4byte 0x3DF63948
	.4byte 0x3DF9132C
	.4byte 0x3DFBF584
	.4byte 0x3DFEE068
	.4byte 0x3E00E9F9
	.4byte 0x3E02681E
	.4byte 0x3E03EAB0
	.4byte 0x3E0571BC
	.4byte 0x3E06FD4F
	.4byte 0x3E088D77
	.4byte 0x3E0A2241
	.4byte 0x3E0BBBBA
	.4byte 0x3E0D59F2
	.4byte 0x3E0EFCF5
	.4byte 0x3E10A4D3
	.4byte 0x3E125199
	.4byte 0x3E140356
	.4byte 0x3E15BA19
	.4byte 0x3E1775F0
	.4byte 0x3E1936EC
	.4byte 0x3E1AFD1A
	.4byte 0x3E1CC88A
	.4byte 0x3E1E994C
	.4byte 0x3E206F70
	.4byte 0x3E224B06
	.4byte 0x3E242C1E
	.4byte 0x3E2612C7
	.4byte 0x3E27FF14
	.4byte 0x3E29F113
	.4byte 0x3E2BE8D7
	.4byte 0x3E2DE670
	.4byte 0x3E2FE9F0
	.4byte 0x3E31F368
	.4byte 0x3E3402EA
	.4byte 0x3E361887
	.4byte 0x3E383452
	.4byte 0x3E3A565E
	.4byte 0x3E3C7EBC
	.4byte 0x3E3EAD7F
	.4byte 0x3E40E2BB
	.4byte 0x3E431E82
	.4byte 0x3E4560E9
	.4byte 0x3E47AA02
	.4byte 0x3E49F9E1
	.4byte 0x3E4C509B
	.4byte 0x3E4EAE43
	.4byte 0x3E5112EF
	.4byte 0x3E537EB4
	.4byte 0x3E55F1A5
	.4byte 0x3E586BD9
	.4byte 0x3E5AED65
	.4byte 0x3E5D765E
	.4byte 0x3E6006DC
	.4byte 0x3E629EF3
	.4byte 0x3E653EBB
	.4byte 0x3E67E64B
	.4byte 0x3E6A95B9
	.4byte 0x3E6D4D1C
	.4byte 0x3E700C8D
	.4byte 0x3E72D424
	.4byte 0x3E75A3F7
	.4byte 0x3E787C21
	.4byte 0x3E7B5CB9
	.4byte 0x3E7E45D8
	.4byte 0x3E809BCC
	.4byte 0x3E82190A
	.4byte 0x3E839AB1
	.4byte 0x3E8520D0
	.4byte 0x3E86AB73
	.4byte 0x3E883AA8
	.4byte 0x3E89CE7C
	.4byte 0x3E8B66FE
	.4byte 0x3E8D043A
	.4byte 0x3E8EA63F
	.4byte 0x3E904D1C
	.4byte 0x3E91F8DE
	.4byte 0x3E93A994
	.4byte 0x3E955F4D
	.4byte 0x3E971A17
	.4byte 0x3E98DA02
	.4byte 0x3E9A9F1C
	.4byte 0x3E9C6976
	.4byte 0x3E9E391F
	.4byte 0x3EA00E26
	.4byte 0x3EA1E89B
	.4byte 0x3EA3C88F
	.4byte 0x3EA5AE11
	.4byte 0x3EA79933
	.4byte 0x3EA98A05
	.4byte 0x3EAB8097
	.4byte 0x3EAD7CFB
	.4byte 0x3EAF7F42
	.4byte 0x3EB1877E
	.4byte 0x3EB395C0
	.4byte 0x3EB5AA1A
	.4byte 0x3EB7C49E
	.4byte 0x3EB9E55E
	.4byte 0x3EBC0C6D
	.4byte 0x3EBE39DE
	.4byte 0x3EC06DC3
	.4byte 0x3EC2A82F
	.4byte 0x3EC4E937
	.4byte 0x3EC730ED
	.4byte 0x3EC97F65
	.4byte 0x3ECBD4B4
	.4byte 0x3ECE30ED
	.4byte 0x3ED09426
	.4byte 0x3ED2FE72
	.4byte 0x3ED56FE7
	.4byte 0x3ED7E89B
	.4byte 0x3EDA68A1
	.4byte 0x3EDCF012
	.4byte 0x3EDF7F01
	.4byte 0x3EE21586
	.4byte 0x3EE4B3B6
	.4byte 0x3EE759AA
	.4byte 0x3EEA0777
	.4byte 0x3EECBD35
	.4byte 0x3EEF7AFB
	.4byte 0x3EF240E2
	.4byte 0x3EF50F01
	.4byte 0x3EF7E571
	.4byte 0x3EFAC44A
	.4byte 0x3EFDABA6
	.4byte 0x3F004DCE
	.4byte 0x3F01CA25
	.4byte 0x3F034AE2
	.4byte 0x3F04D014
	.4byte 0x3F0659C8
	.4byte 0x3F07E80B
	.4byte 0x3F097AEA
	.4byte 0x3F0B1274
	.4byte 0x3F0CAEB6
	.4byte 0x3F0E4FBE
	.4byte 0x3F0FF59A
	.4byte 0x3F11A058
	.4byte 0x3F135008
	.4byte 0x3F1504B7
	.4byte 0x3F16BE75
	.4byte 0x3F187D50
	.4byte 0x3F1A4158
	.4byte 0x3F1C0A9C
	.4byte 0x3F1DD92C
	.4byte 0x3F1FAD16
	.4byte 0x3F21866C
	.4byte 0x3F23653C
	.4byte 0x3F254998
	.4byte 0x3F273390
	.4byte 0x3F292335
	.4byte 0x3F2B1896
	.4byte 0x3F2D13C6
	.4byte 0x3F2F14D5
	.4byte 0x3F311BD6
	.4byte 0x3F3328D8
	.4byte 0x3F353BEF
	.4byte 0x3F37552D
	.4byte 0x3F3974A3
	.4byte 0x3F3B9A63
	.4byte 0x3F3DC682
	.4byte 0x3F3FF911
	.4byte 0x3F423224
	.4byte 0x3F4471CD
	.4byte 0x3F46B822
	.4byte 0x3F490534
	.4byte 0x3F4B5918
	.4byte 0x3F4DB3E3
	.4byte 0x3F5015A9
	.4byte 0x3F527E7F
	.4byte 0x3F54EE78
	.4byte 0x3F5765AC
	.4byte 0x3F59E42F
	.4byte 0x3F5C6A16
	.4byte 0x3F5EF778
	.4byte 0x3F618C6B
	.4byte 0x3F642905
	.4byte 0x3F66CD5E
	.4byte 0x3F69798B
	.4byte 0x3F6C2DA4
	.4byte 0x3F6EE9C1
	.4byte 0x3F71ADF9
	.4byte 0x3F747A65
	.4byte 0x3F774F1C
	.4byte 0x3F7A2C38
	.4byte 0x3F7D11D1
	.float 1.0
	.4byte 0x3F817B70
	.4byte 0x3F82FB44
	.4byte 0x3F847F8A
	.4byte 0x3F86084F
	.4byte 0x3F8795A0
	.4byte 0x3F89278B
	.4byte 0x3F8ABE1E
	.4byte 0x3F8C5966
	.4byte 0x3F8DF971
	.4byte 0x3F8F9E4D
	.4byte 0x3F914809
	.4byte 0x3F92F6B3
	.4byte 0x3F94AA59
	.4byte 0x3F96630B
	.4byte 0x3F9820D7
	.4byte 0x3F99E3CD
	.4byte 0x3F9BABFC
	.4byte 0x3F9D7972
	.4byte 0x3F9F4C41
	.4byte 0x3FA12478
	.4byte 0x3FA30226
	.4byte 0x3FA4E55C
	.4byte 0x3FA6CE2B
	.4byte 0x3FA8BCA3
	.4byte 0x3FAAB0D5
	.4byte 0x3FACAAD1
	.4byte 0x3FAEAAA9
	.4byte 0x3FB0B06E
	.4byte 0x3FB2BC33
	.4byte 0x3FB4CE08
	.4byte 0x3FB6E5FF
	.4byte 0x3FB9042C
	.4byte 0x3FBB289F
	.4byte 0x3FBD536C
	.4byte 0x3FBF84A6
	.4byte 0x3FC1BC60
	.4byte 0x3FC3FAAD
	.4byte 0x3FC63F9F
	.4byte 0x3FC88B4D
	.4byte 0x3FCADDC8
	.4byte 0x3FCD3725
	.4byte 0x3FCF9779
	.4byte 0x3FD1FED8
	.4byte 0x3FD46D58
	.4byte 0x3FD6E30D
	.4byte 0x3FD9600C
	.4byte 0x3FDBE46C
	.4byte 0x3FDE7042
	.4byte 0x3FE103A4
	.4byte 0x3FE39EA9
	.4byte 0x3FE64167
	.4byte 0x3FE8EBF5
	.4byte 0x3FEB9E6B
	.4byte 0x3FEE58DF
	.4byte 0x3FF11B6A
	.4byte 0x3FF3E623
	.4byte 0x3FF6B923
	.4byte 0x3FF99482
	.4byte 0x3FFC7859
	.4byte 0x3FFF64C1

.global lbl_80524BEC
lbl_80524BEC:
	.float 1.0
	.4byte 0x3F7F7FE0
	.4byte 0x3F7EFF80
	.4byte 0x3F7E7EDE
	.4byte 0x3F7DFDFC
	.4byte 0x3F7D7CD8
	.4byte 0x3F7CFB72
	.4byte 0x3F7C79CA
	.4byte 0x3F7BF7DF
	.4byte 0x3F7B75B1
	.4byte 0x3F7AF340
	.4byte 0x3F7A708B
	.4byte 0x3F79ED91
	.4byte 0x3F796A52
	.4byte 0x3F78E6CE
	.4byte 0x3F786305
	.4byte 0x3F77DEF6
	.4byte 0x3F775AA0
	.4byte 0x3F76D603
	.4byte 0x3F76511E
	.4byte 0x3F75CBF2
	.4byte 0x3F75467E
	.4byte 0x3F74C0C0
	.4byte 0x3F743ABA
	.4byte 0x3F73B46A
	.4byte 0x3F732DCF
	.4byte 0x3F72A6EA
	.4byte 0x3F721FBA
	.4byte 0x3F71983E
	.4byte 0x3F711076
	.4byte 0x3F708862
	.4byte 0x3F700000
	.4byte 0x3F6F7751
	.4byte 0x3F6EEE53
	.4byte 0x3F6E6507
	.4byte 0x3F6DDB6B
	.4byte 0x3F6D517F
	.4byte 0x3F6CC744
	.4byte 0x3F6C3CB7
	.4byte 0x3F6BB1D9
	.4byte 0x3F6B26A9
	.4byte 0x3F6A9B26
	.4byte 0x3F6A0F50
	.4byte 0x3F698327
	.4byte 0x3F68F6A9
	.4byte 0x3F6869D6
	.4byte 0x3F67DCAE
	.4byte 0x3F674F2F
	.4byte 0x3F66C15A
	.4byte 0x3F66332E
	.4byte 0x3F65A4A9
	.4byte 0x3F6515CC
	.4byte 0x3F648695
	.4byte 0x3F63F704
	.4byte 0x3F636719
	.4byte 0x3F62D6D3
	.4byte 0x3F624630
	.4byte 0x3F61B531
	.4byte 0x3F6123D4
	.4byte 0x3F609219
	.4byte 0x3F600000
	.4byte 0x3F5F6D87
	.4byte 0x3F5EDAAE
	.4byte 0x3F5E4773
	.4byte 0x3F5DB3D7
	.4byte 0x3F5D1FD9
	.4byte 0x3F5C8B77
	.4byte 0x3F5BF6B1
	.4byte 0x3F5B6186
	.4byte 0x3F5ACBF5
	.4byte 0x3F5A35FE
	.4byte 0x3F599FA0
	.4byte 0x3F5908D9
	.4byte 0x3F5871A9
	.4byte 0x3F57DA10
	.4byte 0x3F57420B
	.4byte 0x3F56A99B
	.4byte 0x3F5610BF
	.4byte 0x3F557775
	.4byte 0x3F54DDBC
	.4byte 0x3F544395
	.4byte 0x3F53A8FD
	.4byte 0x3F530DF3
	.4byte 0x3F527278
	.4byte 0x3F51D689
	.4byte 0x3F513A26
	.4byte 0x3F509D4E
	.4byte 0x3F500000
	.4byte 0x3F4F623A
	.4byte 0x3F4EC3FC
	.4byte 0x3F4E2545
	.4byte 0x3F4D8613
	.4byte 0x3F4CE665
	.4byte 0x3F4C463A
	.4byte 0x3F4BA592
	.4byte 0x3F4B046A
	.4byte 0x3F4A62C2
	.4byte 0x3F49C098
	.4byte 0x3F491DEC
	.4byte 0x3F487ABC
	.4byte 0x3F47D706
	.4byte 0x3F4732CA
	.4byte 0x3F468E06
	.4byte 0x3F45E8B9
	.4byte 0x3F4542E1
	.4byte 0x3F449C7E
	.4byte 0x3F43F58D
	.4byte 0x3F434E0D
	.4byte 0x3F42A5FE
	.4byte 0x3F41FD5C
	.4byte 0x3F415428
	.4byte 0x3F40AA5F
	.float 0.75
	.4byte 0x3F3F5509
	.4byte 0x3F3EA979
	.4byte 0x3F3DFD4E
	.4byte 0x3F3D5087
	.4byte 0x3F3CA321
	.4byte 0x3F3BF51B
	.4byte 0x3F3B4673
	.4byte 0x3F3A9728
	.4byte 0x3F39E738
	.4byte 0x3F3936A1
	.4byte 0x3F388560
	.4byte 0x3F37D375
	.4byte 0x3F3720DD
	.4byte 0x3F366D96
	.4byte 0x3F35B99E
	.float 0.70710678
	.4byte 0x3F344F93
	.4byte 0x3F33997C
	.4byte 0x3F32E2AC
	.4byte 0x3F322B20
	.4byte 0x3F3172D6
	.4byte 0x3F30B9CC
	.4byte 0x3F300000
	.4byte 0x3F2F456F
	.4byte 0x3F2E8A16
	.4byte 0x3F2DCDF3
	.4byte 0x3F2D1104
	.4byte 0x3F2C5345
	.4byte 0x3F2B94B5
	.4byte 0x3F2AD550
	.4byte 0x3F2A1514
	.4byte 0x3F2953FD
	.4byte 0x3F28920A
	.4byte 0x3F27CF36
	.4byte 0x3F270B7F
	.4byte 0x3F2646E1
	.4byte 0x3F25815A
	.4byte 0x3F24BAE7
	.4byte 0x3F23F383
	.4byte 0x3F232B2B
	.4byte 0x3F2261DC
	.4byte 0x3F219792
	.4byte 0x3F20CC4A
	.4byte 0x3F200000
	.4byte 0x3F1F32AF
	.4byte 0x3F1E6455
	.4byte 0x3F1D94EC
	.4byte 0x3F1CC471
	.4byte 0x3F1BF2DF
	.4byte 0x3F1B2032
	.4byte 0x3F1A4C65
	.4byte 0x3F197774
	.4byte 0x3F18A15A
	.4byte 0x3F17CA11
	.4byte 0x3F16F196
	.4byte 0x3F1617E3
	.4byte 0x3F153CF2
	.4byte 0x3F1460BE
	.4byte 0x3F138341
	.4byte 0x3F12A476
	.4byte 0x3F11C456
	.4byte 0x3F10E2DC
	.4byte 0x3F100000
	.4byte 0x3F0F1BBD
	.4byte 0x3F0E360B
	.4byte 0x3F0D4EE4
	.4byte 0x3F0C6641
	.4byte 0x3F0B7C1A
	.4byte 0x3F0A9067
	.4byte 0x3F09A320
	.4byte 0x3F08B43D
	.4byte 0x3F07C3B6
	.4byte 0x3F06D182
	.4byte 0x3F05DD98
	.4byte 0x3F04E7EE
	.4byte 0x3F03F07B
	.4byte 0x3F02F734
	.4byte 0x3F01FC10
	.4byte 0x3F00FF02
	.float 0.5
	.4byte 0x3EFDFDFC
	.4byte 0x3EFBF7DF
	.4byte 0x3EF9ED91
	.4byte 0x3EF7DEF6
	.4byte 0x3EF5CBF2
	.4byte 0x3EF3B46A
	.4byte 0x3EF1983E
	.4byte 0x3EEF7751
	.4byte 0x3EED517F
	.4byte 0x3EEB26A9
	.4byte 0x3EE8F6A9
	.4byte 0x3EE6C15A
	.4byte 0x3EE48695
	.4byte 0x3EE24630
	.4byte 0x3EE00000
	.4byte 0x3EDDB3D7
	.4byte 0x3EDB6186
	.4byte 0x3ED908D9
	.4byte 0x3ED6A99B
	.4byte 0x3ED44395
	.4byte 0x3ED1D689
	.4byte 0x3ECF623A
	.4byte 0x3ECCE665
	.4byte 0x3ECA62C2
	.4byte 0x3EC7D706
	.4byte 0x3EC542E1
	.4byte 0x3EC2A5FE
	.4byte 0x3EC00000
	.4byte 0x3EBD5087
	.4byte 0x3EBA9728
	.4byte 0x3EB7D375
	.4byte 0x3EB504F3
	.4byte 0x3EB22B20
	.4byte 0x3EAF456F
	.4byte 0x3EAC5345
	.4byte 0x3EA953FD
	.4byte 0x3EA646E1
	.4byte 0x3EA32B2B
	.4byte 0x3EA00000
	.4byte 0x3E9CC471
	.4byte 0x3E997774
	.4byte 0x3E9617E3
	.4byte 0x3E92A476
	.4byte 0x3E8F1BBD
	.4byte 0x3E8B7C1A
	.4byte 0x3E87C3B6
	.4byte 0x3E83F07B
	.float 0.25
	.4byte 0x3E77DEF6
	.4byte 0x3E6F7751
	.4byte 0x3E66C15A
	.4byte 0x3E5DB3D7
	.4byte 0x3E544395
	.4byte 0x3E4A62C2
	.4byte 0x3E400000
	.4byte 0x3E3504F3
	.4byte 0x3E2953FD
	.4byte 0x3E1CC471
	.4byte 0x3E0F1BBD
	.float 0.125
	.4byte 0x3DDDB3D7
	.4byte 0x3DB504F3
	.4byte 0x3D800000
	.4byte 0

.global lbl_80524FF0
lbl_80524FF0:
	.float 1.0
	.4byte 0x3F7FFEC4
	.4byte 0x3F7FFB11
	.4byte 0x3F7FF4E6
	.4byte 0x3F7FEC43
	.4byte 0x3F7FE129
	.4byte 0x3F7FD398
	.4byte 0x3F7FC38F
	.4byte 0x3F7FB10F
	.4byte 0x3F7F9C18
	.4byte 0x3F7F84AB
	.4byte 0x3F7F6AC7
	.4byte 0x3F7F4E6D
	.4byte 0x3F7F2F9D
	.4byte 0x3F7F0E58
	.4byte 0x3F7EEA9D
	.4byte 0x3F7EC46D
	.4byte 0x3F7E9BC9
	.4byte 0x3F7E70B0
	.4byte 0x3F7E4323
	.4byte 0x3F7E1324
	.4byte 0x3F7DE0B1
	.4byte 0x3F7DABCC
	.4byte 0x3F7D7474
	.4byte 0x3F7D3AAC
	.4byte 0x3F7CFE73
	.4byte 0x3F7CBFC9
	.4byte 0x3F7C7EB0
	.4byte 0x3F7C3B28
	.4byte 0x3F7BF531
	.4byte 0x3F7BACCD
	.4byte 0x3F7B61FC
	.4byte 0x3F7B14BE
	.4byte 0x3F7AC516
	.4byte 0x3F7A7302
	.4byte 0x3F7A1E84
	.4byte 0x3F79C79D
	.4byte 0x3F796E4E
	.4byte 0x3F791298
	.4byte 0x3F78B47B
	.4byte 0x3F7853F8
	.4byte 0x3F77F110
	.4byte 0x3F778BC5
	.4byte 0x3F772417
	.4byte 0x3F76BA07
	.4byte 0x3F764D97
	.4byte 0x3F75DEC6
	.4byte 0x3F756D97
	.4byte 0x3F74FA0B
	.4byte 0x3F748422
	.4byte 0x3F740BDD
	.4byte 0x3F73913F
	.4byte 0x3F731447
	.4byte 0x3F7294F8
	.4byte 0x3F721352
	.4byte 0x3F718F57
	.4byte 0x3F710908
	.4byte 0x3F708066
	.4byte 0x3F6FF573
	.4byte 0x3F6F6830
	.4byte 0x3F6ED89E
	.4byte 0x3F6E46BE
	.4byte 0x3F6DB293
	.4byte 0x3F6D1C1D
	.4byte 0x3F6C835E
	.4byte 0x3F6BE858
	.4byte 0x3F6B4B0C
	.4byte 0x3F6AAB7B
	.4byte 0x3F6A09A7
	.4byte 0x3F696591
	.4byte 0x3F68BF3C
	.4byte 0x3F6816A8
	.4byte 0x3F676BD8
	.4byte 0x3F66BECC
	.4byte 0x3F660F88
	.4byte 0x3F655E0B
	.4byte 0x3F64AA59
	.4byte 0x3F63F473
	.4byte 0x3F633C5A
	.4byte 0x3F628210
	.4byte 0x3F61C598
	.4byte 0x3F6106F2
	.4byte 0x3F604621
	.4byte 0x3F5F8327
	.4byte 0x3F5EBE05
	.4byte 0x3F5DF6BE
	.4byte 0x3F5D2D53
	.4byte 0x3F5C61C7
	.4byte 0x3F5B941A
	.4byte 0x3F5AC450
	.4byte 0x3F59F26A
	.4byte 0x3F591E6A
	.4byte 0x3F584853
	.4byte 0x3F577026
	.4byte 0x3F5695E5
	.4byte 0x3F55B993
	.4byte 0x3F54DB31
	.4byte 0x3F53FAC3
	.4byte 0x3F531849
	.4byte 0x3F5233C6
	.4byte 0x3F514D3D
	.4byte 0x3F5064AF
	.4byte 0x3F4F7A1F
	.4byte 0x3F4E8D90
	.4byte 0x3F4D9F02
	.4byte 0x3F4CAE79
	.4byte 0x3F4BBBF8
	.4byte 0x3F4AC77F
	.4byte 0x3F49D112
	.4byte 0x3F48D8B3
	.4byte 0x3F47DE65
	.4byte 0x3F46E22A
	.4byte 0x3F45E403
	.4byte 0x3F44E3F5
	.4byte 0x3F43E200
	.4byte 0x3F42DE29
	.4byte 0x3F41D870
	.4byte 0x3F40D0DA
	.4byte 0x3F3FC767
	.4byte 0x3F3EBC1B
	.4byte 0x3F3DAEF9
	.4byte 0x3F3CA003
	.4byte 0x3F3B8F3B
	.4byte 0x3F3A7CA4
	.4byte 0x3F396842
	.4byte 0x3F385216
	.4byte 0x3F373A23
	.4byte 0x3F36206C
	.float 0.70710678
	.4byte 0x3F33E7BC
	.4byte 0x3F32C8C9
	.4byte 0x3F31A81D
	.4byte 0x3F3085BB
	.4byte 0x3F2F61A5
	.4byte 0x3F2E3BDE
	.4byte 0x3F2D1469
	.4byte 0x3F2BEB4A
	.4byte 0x3F2AC082
	.4byte 0x3F299415
	.4byte 0x3F286605
	.4byte 0x3F273656
	.4byte 0x3F26050A
	.4byte 0x3F24D225
	.4byte 0x3F239DA9
	.4byte 0x3F226799
	.4byte 0x3F212FF9
	.4byte 0x3F1FF6CB
	.4byte 0x3F1EBC12
	.4byte 0x3F1D7FD1
	.4byte 0x3F1C420C
	.4byte 0x3F1B02C6
	.4byte 0x3F19C200
	.4byte 0x3F187FC0
	.4byte 0x3F173C07
	.4byte 0x3F15F6D9
	.4byte 0x3F14B039
	.4byte 0x3F13682A
	.4byte 0x3F121EB0
	.4byte 0x3F10D3CD
	.4byte 0x3F0F8784
	.4byte 0x3F0E39DA
	.4byte 0x3F0CEAD0
	.4byte 0x3F0B9A6B
	.4byte 0x3F0A48AD
	.4byte 0x3F08F59B
	.4byte 0x3F07A136
	.4byte 0x3F064B82
	.4byte 0x3F04F484
	.4byte 0x3F039C3D
	.4byte 0x3F0242B1
	.4byte 0x3F00E7E4
	.4byte 0x3EFF17B2
	.4byte 0x3EFC5D27
	.4byte 0x3EF9A02D
	.4byte 0x3EF6E0CB
	.4byte 0x3EF41F07
	.4byte 0x3EF15AEA
	.4byte 0x3EEE9479
	.4byte 0x3EEBCBBB
	.4byte 0x3EE900B7
	.4byte 0x3EE63375
	.4byte 0x3EE363FA
	.4byte 0x3EE0924F
	.4byte 0x3EDDBE79
	.4byte 0x3EDAE880
	.4byte 0x3ED8106B
	.4byte 0x3ED53641
	.4byte 0x3ED25A09
	.4byte 0x3ECF7BCA
	.4byte 0x3ECC9B8B
	.4byte 0x3EC9B953
	.4byte 0x3EC6D529
	.4byte 0x3EC3EF15
	.4byte 0x3EC1071E
	.4byte 0x3EBE1D4A
	.4byte 0x3EBB31A0
	.4byte 0x3EB8442A
	.4byte 0x3EB554EC
	.4byte 0x3EB263EF
	.4byte 0x3EAF713A
	.4byte 0x3EAC7CD4
	.4byte 0x3EA986C4
	.4byte 0x3EA68F12
	.4byte 0x3EA395C5
	.4byte 0x3EA09AE5
	.4byte 0x3E9D9E78
	.4byte 0x3E9AA086
	.4byte 0x3E97A117
	.4byte 0x3E94A031
	.4byte 0x3E919DDD
	.4byte 0x3E8E9A22
	.4byte 0x3E8B9507
	.4byte 0x3E888E93
	.4byte 0x3E8586CE
	.4byte 0x3E827DC0
	.4byte 0x3E7EE6E1
	.4byte 0x3E78CFCC
	.4byte 0x3E72B651
	.4byte 0x3E6C9A7F
	.4byte 0x3E667C66
	.4byte 0x3E605C13
	.4byte 0x3E5A3997
	.4byte 0x3E541501
	.4byte 0x3E4DEE60
	.4byte 0x3E47C5C2
	.4byte 0x3E419B37
	.4byte 0x3E3B6ECF
	.4byte 0x3E354098
	.4byte 0x3E2F10A2
	.4byte 0x3E28DEFC
	.4byte 0x3E22ABB6
	.4byte 0x3E1C76DE
	.4byte 0x3E164083
	.4byte 0x3E1008B7
	.4byte 0x3E09CF86
	.4byte 0x3E039502
	.4byte 0x3DFAB273
	.4byte 0x3DEE3876
	.4byte 0x3DE1BC2E
	.4byte 0x3DD53DB9
	.4byte 0x3DC8BD36
	.4byte 0x3DBC3AC3
	.4byte 0x3DAFB680
	.4byte 0x3DA3308C
	.4byte 0x3D96A905
	.4byte 0x3D8A200A
	.4byte 0x3D7B2B74
	.4byte 0x3D621468
	.4byte 0x3D48FB2F
	.4byte 0x3D2FE007
	.4byte 0x3D16C32C
	.4byte 0x3CFB49B9
	.4byte 0x3CC90AB0
	.4byte 0x3C96C9B6
	.4byte 0x3C490E90
	.4byte 0x3BC90F89
	.4byte 0

.global lbl_805253F4
lbl_805253F4:
	.float 1.0
	.4byte 0x3F7F0000
	.4byte 0x3F7E0000
	.4byte 0x3F7D0000
	.4byte 0x3F7C0000
	.4byte 0x3F7B0000
	.4byte 0x3F7A0000
	.4byte 0x3F790000
	.4byte 0x3F780000
	.4byte 0x3F770000
	.4byte 0x3F760000
	.4byte 0x3F750000
	.4byte 0x3F740000
	.4byte 0x3F730000
	.4byte 0x3F720000
	.4byte 0x3F710000
	.4byte 0x3F700000
	.4byte 0x3F6F0000
	.4byte 0x3F6E0000
	.4byte 0x3F6D0000
	.4byte 0x3F6C0000
	.4byte 0x3F6B0000
	.4byte 0x3F6A0000
	.4byte 0x3F690000
	.4byte 0x3F680000
	.4byte 0x3F670000
	.4byte 0x3F660000
	.4byte 0x3F650000
	.4byte 0x3F640000
	.4byte 0x3F630000
	.4byte 0x3F620000
	.4byte 0x3F610000
	.4byte 0x3F600000
	.4byte 0x3F5F0000
	.4byte 0x3F5E0000
	.4byte 0x3F5D0000
	.4byte 0x3F5C0000
	.4byte 0x3F5B0000
	.4byte 0x3F5A0000
	.4byte 0x3F590000
	.4byte 0x3F580000
	.4byte 0x3F570000
	.4byte 0x3F560000
	.4byte 0x3F550000
	.4byte 0x3F540000
	.4byte 0x3F530000
	.4byte 0x3F520000
	.4byte 0x3F510000
	.4byte 0x3F500000
	.4byte 0x3F4F0000
	.4byte 0x3F4E0000
	.4byte 0x3F4D0000
	.4byte 0x3F4C0000
	.4byte 0x3F4B0000
	.4byte 0x3F4A0000
	.4byte 0x3F490000
	.4byte 0x3F480000
	.4byte 0x3F470000
	.4byte 0x3F460000
	.4byte 0x3F450000
	.4byte 0x3F440000
	.4byte 0x3F430000
	.4byte 0x3F420000
	.4byte 0x3F410000
	.float 0.75
	.4byte 0x3F3F0000
	.4byte 0x3F3E0000
	.4byte 0x3F3D0000
	.4byte 0x3F3C0000
	.4byte 0x3F3B0000
	.4byte 0x3F3A0000
	.4byte 0x3F390000
	.4byte 0x3F380000
	.4byte 0x3F370000
	.4byte 0x3F360000
	.4byte 0x3F350000
	.4byte 0x3F340000
	.4byte 0x3F330000
	.4byte 0x3F320000
	.4byte 0x3F310000
	.4byte 0x3F300000
	.4byte 0x3F2F0000
	.4byte 0x3F2E0000
	.4byte 0x3F2D0000
	.4byte 0x3F2C0000
	.4byte 0x3F2B0000
	.4byte 0x3F2A0000
	.4byte 0x3F290000
	.4byte 0x3F280000
	.4byte 0x3F270000
	.4byte 0x3F260000
	.4byte 0x3F250000
	.4byte 0x3F240000
	.4byte 0x3F230000
	.4byte 0x3F220000
	.4byte 0x3F210000
	.4byte 0x3F200000
	.4byte 0x3F1F0000
	.4byte 0x3F1E0000
	.4byte 0x3F1D0000
	.4byte 0x3F1C0000
	.4byte 0x3F1B0000
	.4byte 0x3F1A0000
	.4byte 0x3F190000
	.4byte 0x3F180000
	.4byte 0x3F170000
	.4byte 0x3F160000
	.4byte 0x3F150000
	.4byte 0x3F140000
	.4byte 0x3F130000
	.4byte 0x3F120000
	.4byte 0x3F110000
	.4byte 0x3F100000
	.4byte 0x3F0F0000
	.4byte 0x3F0E0000
	.4byte 0x3F0D0000
	.4byte 0x3F0C0000
	.4byte 0x3F0B0000
	.4byte 0x3F0A0000
	.4byte 0x3F090000
	.4byte 0x3F080000
	.4byte 0x3F070000
	.4byte 0x3F060000
	.4byte 0x3F050000
	.4byte 0x3F040000
	.4byte 0x3F030000
	.4byte 0x3F020000
	.4byte 0x3F010000
	.float 0.5
	.4byte 0x3EFE0000
	.4byte 0x3EFC0000
	.4byte 0x3EFA0000
	.4byte 0x3EF80000
	.4byte 0x3EF60000
	.4byte 0x3EF40000
	.4byte 0x3EF20000
	.4byte 0x3EF00000
	.4byte 0x3EEE0000
	.4byte 0x3EEC0000
	.4byte 0x3EEA0000
	.4byte 0x3EE80000
	.4byte 0x3EE60000
	.4byte 0x3EE40000
	.4byte 0x3EE20000
	.4byte 0x3EE00000
	.4byte 0x3EDE0000
	.4byte 0x3EDC0000
	.4byte 0x3EDA0000
	.4byte 0x3ED80000
	.4byte 0x3ED60000
	.4byte 0x3ED40000
	.4byte 0x3ED20000
	.4byte 0x3ED00000
	.4byte 0x3ECE0000
	.4byte 0x3ECC0000
	.4byte 0x3ECA0000
	.4byte 0x3EC80000
	.4byte 0x3EC60000
	.4byte 0x3EC40000
	.4byte 0x3EC20000
	.4byte 0x3EC00000
	.4byte 0x3EBE0000
	.4byte 0x3EBC0000
	.4byte 0x3EBA0000
	.4byte 0x3EB80000
	.4byte 0x3EB60000
	.4byte 0x3EB40000
	.4byte 0x3EB20000
	.4byte 0x3EB00000
	.4byte 0x3EAE0000
	.4byte 0x3EAC0000
	.4byte 0x3EAA0000
	.4byte 0x3EA80000
	.4byte 0x3EA60000
	.4byte 0x3EA40000
	.4byte 0x3EA20000
	.4byte 0x3EA00000
	.4byte 0x3E9E0000
	.4byte 0x3E9C0000
	.4byte 0x3E9A0000
	.4byte 0x3E980000
	.4byte 0x3E960000
	.4byte 0x3E940000
	.4byte 0x3E920000
	.4byte 0x3E900000
	.4byte 0x3E8E0000
	.4byte 0x3E8C0000
	.4byte 0x3E8A0000
	.4byte 0x3E880000
	.4byte 0x3E860000
	.4byte 0x3E840000
	.4byte 0x3E820000
	.float 0.25
	.4byte 0x3E7C0000
	.4byte 0x3E780000
	.4byte 0x3E740000
	.4byte 0x3E700000
	.4byte 0x3E6C0000
	.4byte 0x3E680000
	.4byte 0x3E640000
	.4byte 0x3E600000
	.4byte 0x3E5C0000
	.4byte 0x3E580000
	.4byte 0x3E540000
	.4byte 0x3E500000
	.4byte 0x3E4C0000
	.4byte 0x3E480000
	.4byte 0x3E440000
	.4byte 0x3E400000
	.4byte 0x3E3C0000
	.4byte 0x3E380000
	.4byte 0x3E340000
	.4byte 0x3E300000
	.4byte 0x3E2C0000
	.4byte 0x3E280000
	.4byte 0x3E240000
	.4byte 0x3E200000
	.4byte 0x3E1C0000
	.4byte 0x3E180000
	.4byte 0x3E140000
	.4byte 0x3E100000
	.4byte 0x3E0C0000
	.4byte 0x3E080000
	.4byte 0x3E040000
	.float 0.125
	.4byte 0x3DF80000
	.4byte 0x3DF00000
	.4byte 0x3DE80000
	.4byte 0x3DE00000
	.4byte 0x3DD80000
	.4byte 0x3DD00000
	.4byte 0x3DC80000
	.4byte 0x3DC00000
	.4byte 0x3DB80000
	.4byte 0x3DB00000
	.4byte 0x3DA80000
	.4byte 0x3DA00000
	.4byte 0x3D980000
	.4byte 0x3D900000
	.4byte 0x3D880000
	.4byte 0x3D800000
	.4byte 0x3D700000
	.4byte 0x3D600000
	.4byte 0x3D500000
	.4byte 0x3D400000
	.4byte 0x3D300000
	.4byte 0x3D200000
	.4byte 0x3D100000
	.4byte 0x3D000000
	.4byte 0x3CE00000
	.4byte 0x3CC00000
	.4byte 0x3CA00000
	.4byte 0x3C800000
	.4byte 0x3C400000
	.4byte 0x3C000000
	.4byte 0x3B800000
	.4byte 0


.global lbl_805257F8
lbl_805257F8:
	# ROM: 0x5218F8
	.4byte 0x387C70F7
	.4byte 0x387C8144
	.4byte 0xC13E3549
	.4byte 0x6A933549
	.4byte 0x88E9C7F2
	.4byte 0x31C46389
	.4byte 0x31C49211
	.4byte 0xCE952E7C
	.4byte 0x5CF92E7C
	.4byte 0x9B3ED422
	.4byte 0x2B6F56DE
	.4byte 0x2B6FA44C
	.4byte 0xD8C72899
	.4byte 0x51332899
	.4byte 0xAD24DCA7
	.4byte 0x25F74BEE
	.4byte 0x25F7B5BA
	.4byte 0xDFE42384
	.4byte 0x47092384
	.4byte 0xBE07E294
	.4byte 0x213D427A
	.4byte 0x213DC608
	.4byte 0xE4CE1F1D
	.4byte 0x3E3A1F1D
	.4byte 0xCDBCE6A2
	.4byte 0x1D223A44
	.4byte 0x1D22D525
	.4byte 0xE81D1B48
	.4byte 0x36901B48
	.4byte 0xDC45E94C
	.4byte 0x198D331A
	.4byte 0x198DE31D
	.4byte 0xEA3917EE
	.4byte 0x2FDC17EE
	.4byte 0xE9B0EAEC
	.4byte 0x16692CD2
	.4byte 0x1669F001
	.4byte 0xEB6C14FD
	.4byte 0x29F914FD
	.4byte 0xF613EBBE
	.4byte 0x13A7274D
	.4byte 0x13A7FBE7
	.4byte 0xEBE91265
	.4byte 0x24CB1265
	.4byte 0x0180EBF1
	.4byte 0x11382270
	.4byte 0x113806E2
	.4byte 0xEBD9101C
	.4byte 0x2039101C
	.4byte 0x0C0DEBA6
	.4byte 0x0F121E24
	.4byte 0x0F121104
	.4byte 0xEB5A0E18
	.4byte 0x1C300E18
	.4byte 0x15C9EAF8
	.4byte 0x0D2D1A59
	.4byte 0x0D2D1A5D
	.4byte 0xEA840C50
	.4byte 0x189F0C50
	.4byte 0x1EC3E9FE
	.4byte 0x0B801700
	.4byte 0x0B8022FC
	.4byte 0xE9690ABD
	.4byte 0x15790ABD
	.4byte 0x270AE8C7
	.4byte 0x0A05140B
	.4byte 0x0A052AED
	.4byte 0xE81A0959
	.4byte 0x12B30959
	.4byte 0x2EA9E763
	.4byte 0x08B81170
	.4byte 0x08B8323D
	.4byte 0xE6A30820
	.4byte 0x10410820
	.4byte 0x35ACE5DD
	.4byte 0x07920F25
	.4byte 0x079238F6
	.4byte 0xE510070D
	.4byte 0x0E1A070D
	.4byte 0x3C1DE43E
	.4byte 0x06900D21
	.4byte 0x06903F23
	.4byte 0xE369061B
	.4byte 0x0C37061B
	.4byte 0x4208E290
	.4byte 0x05AE0B5C
	.4byte 0x05AE44CD
	.4byte 0xE1B60548
	.4byte 0x0A900548
	.4byte 0x4774E0DA
	.4byte 0x04E809D0
	.4byte 0x04E849FE
	.4byte 0xDFFD048F
	.4byte 0x091E048F
	.4byte 0x4C6CDF20
	.4byte 0x043B0877
	.4byte 0x043B4EBF
	.4byte 0xDE4403ED
	.4byte 0x07DB03ED
	.4byte 0x50F8DD69
	.4byte 0x03A50749
	.4byte 0x03A55317
	.4byte 0xDC900361
	.4byte 0x06C20361
	.4byte 0x551FDBB8
	.4byte 0x03220643
	.4byte 0x03225710
	.4byte 0xDAE302E7
	.4byte 0x05CE02E7
	.4byte 0x58EADA11
	.4byte 0x02B00560
	.4byte 0x02B05AAF
	.4byte 0xD941027D
	.4byte 0x04FA027D
	.4byte 0x5C60D875
	.4byte 0x024E049B
	.4byte 0x024E5DFE
	.4byte 0xD7AD0222
	.4byte 0x04430222
	.4byte 0x5F88D6E8
	.4byte 0x01F903F1
	.4byte 0x01F96101
	.4byte 0xD62701D3
	.4byte 0x03A501D3
	.4byte 0x6269D56A
	.4byte 0x01AF035F
	.4byte 0x01AF63C0
	.4byte 0xD4B1018F
	.4byte 0x031D018F
	.4byte 0x6507D3FC
	.4byte 0x017002E1
	.4byte 0x01706640
	.4byte 0xD34C0154
	.4byte 0x02A80154
	.4byte 0x676AD2A0
	.4byte 0x013A0274
	.4byte 0x013A6887
	.4byte 0xD1F90122
	.4byte 0x02440122
	.4byte 0x6996D156
	.4byte 0x010C0217
	.4byte 0x010C6A99
	.4byte 0xD0B700F7
	.4byte 0x01EE00F7
	.4byte 0x6B90D01D
	.4byte 0x00E401C7
	.4byte 0x00E46C7C
	.4byte 0xCF8700D2
	.4byte 0x01A400D2
	.4byte 0x6D5DCEF6
	.4byte 0x00C20183
	.4byte 0x00C26E33
	.4byte 0xCE6900B2
	.4byte 0x016500B2
	.4byte 0x6F00CDE0
	.4byte 0x00A40149
	.4byte 0x00A46FC3
	.4byte 0xCD5C0098
	.4byte 0x012F0098
	.4byte 0x707DCCDC
	.4byte 0x008C0117
	.4byte 0x008C712F
	.4byte 0xCC600081
	.4byte 0x01010081
	.4byte 0x71D9CBE7
	.4byte 0x007600ED
	.4byte 0x0076727A
	.4byte 0xCB73006D
	.4byte 0x00DA006D
	.4byte 0x7315CB03
	.4byte 0x006400C9
	.4byte 0x006473A8
	.4byte 0xCA97005C
	.4byte 0x00B9005C
	.4byte 0x7434CA2E
	.4byte 0x005500AA
	.4byte 0x005574BB
	.4byte 0xC9C9004E
	.4byte 0x009C004E
	.4byte 0x753BC967
	.4byte 0x00480090
	.4byte 0x004875B5
	.4byte 0xC9090042
	.4byte 0x00840042
	.4byte 0x7629C8AF
	.4byte 0x003D007A
	.4byte 0x003D7699
	.4byte 0xC8570038
	.4byte 0x00700038
	.4byte 0x7703C803
	.4byte 0x00330067
	.4byte 0x00337768
	.4byte 0xC7B1002F
	.4byte 0x005F002F
	.4byte 0x77C9C763
	.4byte 0x002C0057
	.4byte 0x002C7826
	.4byte 0xC7180028
	.4byte 0x00500028
	.4byte 0x787EC6CF
	.4byte 0x0025004A
	.4byte 0x002578D2
	.4byte 0xC6890022
	.4byte 0x00440022
	.4byte 0x7923C646
	.4byte 0x001F003E
	.4byte 0x001F7970
	.4byte 0xC606001D
	.4byte 0x0039001D
	.4byte 0x79B9C5C7
	.4byte 0x001A0034
	.4byte 0x001A7A00
	.4byte 0xC58C0018
	.4byte 0x00300018
	.4byte 0x7A43C552
	.4byte 0x0016002C
	.4byte 0x00167A83
	.4byte 0xC51B0014
	.4byte 0x00290014
	.4byte 0x7AC0C4E6
	.4byte 0x00130025
	.4byte 0x00137AFB
	.4byte 0xC4B30011
	.4byte 0x00220011
	.4byte 0x7B32C482
	.4byte 0x00100020
	.4byte 0x00107B68
	.4byte 0xC452000E
	.4byte 0x001D000E
	.4byte 0x7B9BC425
	.4byte 0x000D001B
	.4byte 0x000D7BCC
	.4byte 0xC3FA000C
	.4byte 0x0018000C
	.4byte 0x7BFAC3D0
	.4byte 0x000B0016
	.4byte 0x000B7C27
	.4byte 0xC3A8000A
	.4byte 0x0015000A
	.4byte 0x7C52C381
	.4byte 0x00090013
	.4byte 0x00097C7A
	.4byte 0xC35C0009
	.4byte 0x00110009
	.4byte 0x7CA1C339
	.4byte 0x00080010
	.4byte 0x00087CC7
	.4byte 0xC3170007
	.4byte 0x000F0007
	.4byte 0x7CEAC2F6
	.4byte 0x0007000D
	.4byte 0x00077D0C
	.4byte 0xC2D70006
	.4byte 0x000C0006
	.4byte 0x7D2DC2B9
	.4byte 0x0006000B
	.4byte 0x00067D4C
	.4byte 0xC29C0005
	.4byte 0x000A0005
	.4byte 0x7D6AC280
	.4byte 0x0005000A
	.4byte 0x00057D86
	.4byte 0xC2650004
	.4byte 0x00090004
	.4byte 0x7DA1C24C
	.4byte 0x00040008
	.4byte 0x00047DBB
	.4byte 0xC2340004
	.4byte 0x00070004
	.4byte 0x7DD4C21C
	.4byte 0x00030007
	.4byte 0x00037DEC
	.4byte 0xC2060003
	.4byte 0x00060003
	.4byte 0x7E03C1F0
	.4byte 0x00030006
	.4byte 0x00037E19
	.4byte 0xC1DB0003
	.4byte 0x00050003
	.4byte 0x7E2EC1C8
	.4byte 0x00020005
	.4byte 0x00027E42
	.4byte 0xC1B50002
	.4byte 0x00040002
	.4byte 0x7E55C1A2
	.4byte 0x00020004
	.4byte 0x00027E67
	.4byte 0xC1910002
	.4byte 0x00040002
	.4byte 0x7E79C180
	.4byte 0x00020003
	.4byte 0x00027E89
	.4byte 0xC1700002
	.4byte 0x00030002
	.4byte 0x7E99C161
	.4byte 0x00010003
	.4byte 0x00017EA9
	.4byte 0xC1520001
	.4byte 0x00030001
	.4byte 0x7EB7C144
	.4byte 0x00010002
	.4byte 0x00017EC5
	.4byte 0xC1360001
	.4byte 0x00020001
	.4byte 0x7ED3C129
	.4byte 0x00010002
	.4byte 0x00017EE0
	.4byte 0xC11D0001
	.4byte 0x00020001
	.4byte 0x7EECC111
	.4byte 0x00010002
	.4byte 0x00017EF8
	.4byte 0xC1050001
	.4byte 0x00020001
	.4byte 0x7F03C0FA
	.4byte 0x00010001
	.4byte 0x00017F0E
	.4byte 0xC0F00001
	.4byte 0x00010001
	.4byte 0x7F18C0E6


.global lbl_80525CF8
lbl_80525CF8:
	# ROM: 0x521DF8
	.4byte 0x00500064
	.4byte 0x008000A0
	.4byte 0x00C80100
	.4byte 0x01400190
	.4byte 0x01F40280
	.4byte 0x032003E8
	.4byte 0x05000640
	.4byte 0x07D00A00
	.4byte 0x0C800FA0
	.4byte 0x14001900
	.4byte 0x1F402800
	.4byte 0x32003E80


.global lbl_80525D28
lbl_80525D28:
	#"プログラム領域残り %x / 最大 %x\n"
	.4byte 0x8376838D
	.4byte 0x834F8389
	.4byte 0x838097CC
	.4byte 0x88E68E63
	.4byte 0x82E82025
	.4byte 0x78202F20
	.4byte 0x8DC591E5
	.asciz " %x\n"

	#"プログラム領域が限界を超えました"
	.byte 0x83, 0x76, 0x83
	.4byte 0x8D834F83
	.4byte 0x89838097
	.4byte 0xCC88E682
	.4byte 0xAA8CC08A
	.4byte 0x4582F092
	.4byte 0xB482A682
	.4byte 0xDC82B582
	.2byte 0xBD00
	.2byte 0
	.4byte 0


.global lbl_80525D70
lbl_80525D70:
	.asciz "."
	.4byte 0
	.2byte 0
.global lbl_80525D78
lbl_80525D78:
	.asciz "WorkThreadSystem"
	.balign 4

.global lbl_80525D8C
lbl_80525D8C:
	.asciz "CMsgParam<8>"
	.balign 4

.global lbl_80525D9C
lbl_80525D9C:
	.asciz "reslist<CWorkThread *>"
	.balign 4

.global lbl_80525DB4
lbl_80525DB4:
	.asciz "_reslist_base<CWorkThread *>"
	.balign 4
	.4byte 0


.global lbl_80525DD8
lbl_80525DD8:
	.asciz " "
	.4byte 0
	.2byte 0
.global lbl_80525DE0
lbl_80525DE0:
	.asciz "reslist<unsigned long>"
	.balign 4

.global lbl_80525DF8
lbl_80525DF8:
	.asciz "_reslist_base<unsigned long>"
	.balign 4


.global lbl_80525E18
lbl_80525E18:
	.asciz "(View)"
	.balign 4

.global lbl_80525E20
lbl_80525E20:
	.asciz "CProcRoot"
	.balign 4


.global lbl_80525E2C
lbl_80525E2C:
	.asciz "CDesktop"
	.asciz "CProcRoot"
	.balign 4

.global lbl_80525E40
lbl_80525E40:
	.asciz "CRsrcData"
	.balign 4


.global lbl_80525E4C
lbl_80525E4C:
	.asciz "CRsrcData"
	.balign 4

.global lbl_80525E58
lbl_80525E58:
	.asciz "CScriptCode"


.global lbl_80525E64
lbl_80525E64:
	.asciz "CScriptCode"


.global lbl_80525E70
lbl_80525E70:
	# ROM: 0x521F70
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00000002
	.4byte 0

.global lbl_80525EA0
lbl_80525EA0:
	.asciz "@unnamed@CTaskManager_cpp@::CRootProc"
	.balign 4

.global lbl_80525EC8
lbl_80525EC8:
	.asciz "CTTask<@unnamed@CTaskManager_cpp@::CRootProc>"
	.balign 4

.global lbl_80525EF8
lbl_80525EF8:
	.asciz "CMsgParam<10>"
	.balign 4

.global lbl_80525F08
lbl_80525F08:
	.asciz "reslist<IWorkEvent *>"
	.balign 4

.global lbl_80525F20
lbl_80525F20:
	.asciz "_reslist_base<IWorkEvent *>"

.global lbl_80525F3C
lbl_80525F3C:
	.asciz "CFontLayer"
	.balign 4


.global lbl_80525F48
lbl_80525F48:
	# ROM: 0x522048

	#"ログアウトに失敗しました"
.global lbl_80525F48
lbl_80525F48:
	.4byte 0x838D834F
	.4byte 0x83418345
	.4byte 0x836782C9
	.4byte 0x8EB89473
	.4byte 0x82B582DC
	.4byte 0x82B582BD
	.byte 0x00

	.4byte 0
	.byte 0x00, 0x00, 0x00
.global lbl_80525F68
lbl_80525F68:
	.asciz "CViewFrame"
	.balign 4
	.4byte 0

.global lbl_80525F78
lbl_80525F78:
	.asciz "CViewRoot"
	.balign 4


.global lbl_80525F84
lbl_80525F84:
	.asciz "CViewRoot"
	.balign 4

.global lbl_80525F90
lbl_80525F90:
	.asciz "CWorkControl"
	.balign 4


.global lbl_80525FA0
lbl_80525FA0:
	.asciz "CWorkFlowTvMode"
	.asciz "CWorkFlowSetup"
	.asciz "CWorkFlowShutdownAll"
	.asciz "CWorkFlowWiiMenu"
	.asciz "CWorkFlowWiiReset"
	.asciz "CWorkFlowWiiPowerOff"
	.asciz "CWorkControl"
	.balign 4
	.4byte 0

.global lbl_80526020
lbl_80526020:
	.asciz "CWorkFlowSetup"
	.balign 4

.global lbl_80526030
lbl_80526030:
	.asciz "@unnamed@CWorkRoot_cpp@::CWorkRootThread"
	.balign 4


.global lbl_8052605C
lbl_8052605C:
	.asciz "CWorkRoot"
	.asciz "exit wii menu\n"
	.asciz "exit wii reset\n"
	.asciz "exit wii power off\n"
	.asciz "exit prog end\n"

.global lbl_805260A8
lbl_805260A8:
	.asciz "CWorkSystem"


.global lbl_805260B4
lbl_805260B4:
	.asciz "exit wii power off\n"
	.asciz "exit wii reset\n"
	.asciz "CWorkSystemMem"
	.asciz "CWorkSystemCache"
	.asciz "CWorkSystemPack"
	#"ログアウトに失敗しました"
	.4byte 0x838D834F
	.4byte 0x83418345
	.4byte 0x836782C9
	.4byte 0x8EB89473
	.4byte 0x82B582DC
	.4byte 0x82B582BD
	.byte 0x00
	.asciz "CWorkSystem"
	.balign 4

.global lbl_80526130
lbl_80526130:
	.asciz "CWorkSystemMem"
	.balign 4

.global lbl_80526140
lbl_80526140:
	.asciz "TChildListHeader<CProcess>"
	.balign 4
	.4byte 0

.global lbl_80526160
lbl_80526160:
	.asciz "TChildListHeader<CChildListNode>"
	.balign 4
	.4byte 0


.global lbl_80526188
lbl_80526188:
	# ROM: 0x522288
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x00000800
	.4byte 0x00000010
	.4byte 0x00000400
	.4byte 0x00000020
	.4byte 0x00000200
	.4byte 0x00000040
	.4byte 0x00000100
	.4byte 0x00000080
	.4byte 0x00008000
	.4byte 0x00000100
	.4byte 0x00000010
	.4byte 0x00000200
	.4byte 0x00001000
	.4byte 0x00000400
	.4byte 0x00002000
	.4byte 0x00001000
	.4byte 0x00004000
	.4byte 0x00000800
	.4byte 0
	.4byte 0


.global lbl_805261F8
lbl_805261F8:
	# ROM: 0x5222F8
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00008000
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x00004000
	.4byte 0x00000008
	.4byte 0x00000800
	.4byte 0x00000100
	.4byte 0x00000400
	.4byte 0x00000200
	.4byte 0x00001000
	.4byte 0x00000400
	.4byte 0x00000010
	.4byte 0x00200000
	.4byte 0x00000040
	.4byte 0x00400000
	.4byte 0x00000008
	.4byte 0x00800000
	.4byte 0x00000020
	.4byte 0x01000000
	.4byte 0x00002000
	.4byte 0x02000000
	.4byte 0x00000200
	.4byte 0x04000000
	.4byte 0x00000080
	.4byte 0x08000000
	.4byte 0x00000004
	.4byte 0x10000000
	.4byte 0
	.4byte 0

.global lbl_80526278
lbl_80526278:
	.asciz "CDeviceRemotePad"
	.balign 4

.global lbl_8052628C
lbl_8052628C:
	.asciz "CDeviceBase"

.global lbl_80526298
lbl_80526298:
	.asciz "CDeviceSC"
	.balign 4
	.4byte 0


.global lbl_805262A8
lbl_805262A8:
	# ROM: 0x5223A8
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x0000000B
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x0000000E
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0x00000011
	.4byte 0x00000012
	.4byte 0x00000013
	.4byte 0x00000014
	.4byte 0x00000015
	.4byte 0x00000016
	.4byte 0x00000017
	.4byte 0x00000018
	.4byte 0x00000019
	.4byte 0x0000001A
	.4byte 0x0000001B
	.4byte 0x0000001C
	.4byte 0x0000001D
	.4byte 0x0000001E

.global lbl_80526320
lbl_80526320:
	.asciz "CDeviceVI"
	.balign 4

.global lbl_8052632C
lbl_8052632C:
	.asciz "reslist<CDeviceVICb *>"
	.balign 4

.global lbl_80526344
lbl_80526344:
	.asciz "_reslist_base<CDeviceVICb *>"
	.balign 4
	.4byte 0

.global lbl_80526368
lbl_80526368:
	.asciz "CDeviceVICb"
	.4byte 0

.global lbl_80526378
lbl_80526378:
	.asciz "CGXCache"
	.balign 4

.global lbl_80526384
lbl_80526384:
	.asciz "CMsgParam<32>"
	.balign 4

.global lbl_80526394
lbl_80526394:
	.asciz "IStateCache"

.global lbl_805263A0
lbl_805263A0:
	.asciz "DeviceSystem1"
	.balign 4

.global lbl_805263B0
lbl_805263B0:
	.asciz "DeviceSystem2"
	.balign 4

.global lbl_805263C0
lbl_805263C0:
	.asciz "@unnamed@CDevice_cpp@::CDeviceException"


.global lbl_805263E8
lbl_805263E8:
	.asciz "CDeviceVI"
	.asciz "CDeviceGX"
	.asciz "CDeviceRemotePAD"
	.asciz "CDeviceClock"
	.asciz "CDeviceSC"
	.asciz "CDeviceFont"
	.asciz "CDeviceFile"
	.asciz "CLibCri"
	.asciz "CDeviceException"
	.asciz "CDevice"
	.balign 4

.global lbl_80526460
lbl_80526460:
	.asciz "CDeviceClock"
	.balign 4

.global lbl_80526470
lbl_80526470:
	.asciz "reslist<IDeviceClockFrame *>"
	.balign 4

.global lbl_80526490
lbl_80526490:
	.asciz "_reslist_base<IDeviceClockFrame *>"
	.balign 4
	.4byte 0

.global lbl_805264B8
lbl_805264B8:
	.asciz "CDeviceFile"

.global lbl_805264C4
lbl_805264C4:
	.asciz "reslist<CFileHandle *>"
	.balign 4

.global lbl_805264DC
lbl_805264DC:
	.asciz "_reslist_base<CFileHandle *>"
	.balign 4


.global lbl_805264FC
lbl_805264FC:
	.asciz "USBKEY"
	.asciz "CDeviceFileJobReadDvd"
	.asciz "/"
	.asciz "CDeviceFileJobValidPathDvd"
	.asciz "CDeviceFileJobValidPathCri"
	.asciz "CDeviceFileJobValidFileDvd"
	.asciz "CDeviceFileJobValidFileCri"
	.asciz "CDeviceFileDvd"
	.asciz "CDeviceFileCri"
	.balign 4

.global lbl_805265A8
lbl_805265A8:
	.asciz "CDeviceFileCri"
	.balign 4


.global lbl_805265B8
lbl_805265B8:
	.asciz "/"
	.4byte 0
	.2byte 0
.global lbl_805265C0
lbl_805265C0:
	.asciz "CDeviceFileDvd"
	.balign 4


.global lbl_805265D0
lbl_805265D0:
	# ROM: 0x5226D0

	#An error has occured?
	#"エラーが発生しました。"
.global lbl_805265D0
lbl_805265D0:
	.4byte 0x83478389
	.4byte 0x815B82AA
	.4byte 0x94AD90B6
	.4byte 0x82B582DC
	.4byte 0x82B582BD
	.2byte 0x8142
	.byte 0x00

	#Please insert the Bionis disc.
	#"巨神のディスクをセットしてください。"
	.byte 0x8B
	.4byte 0x90905F82
	.4byte 0xCC836683
	.4byte 0x42835883
	.4byte 0x4E82F083
	.4byte 0x5A836283
	.4byte 0x6782B582
	.4byte 0xC482AD82
	.4byte 0xBE82B382
	.4byte 0xA2814200

	#The motor is stopping.
	#"モーターが止まっています。"
	.4byte 0x8382815B
	.4byte 0x835E815B
	.4byte 0x82AA8E7E
	.4byte 0x82DC82C1
	.4byte 0x82C482A2
	.4byte 0x82DC82B7
	.2byte 0x8142
	.byte 0x00

	#"ディスクを読めませんでした。詳しくは・・・"
	.byte 0x83
	.4byte 0x66834283
	.4byte 0x58834E82
	.4byte 0xF093C782
	.4byte 0xDF82DC82
	.4byte 0xB982F182
	.4byte 0xC582B582
	.4byte 0xBD81428F
	.4byte 0xDA82B582
	.4byte 0xAD82CD81
	.4byte 0x45814581
	.2byte 0x4500

	.2byte 0
	.4byte 0

.global lbl_80526658
lbl_80526658:
	.asciz "CDeviceFileJob"
	.balign 4

.global lbl_80526668
lbl_80526668:
	.asciz "CDeviceFileJobReadDvd"
	.balign 4

.global lbl_80526680
lbl_80526680:
	.asciz "font/MenuFont.brfna"

.global lbl_80526694
lbl_80526694:
	.asciz "font/CapFont.brfna"
	.balign 4

.global lbl_805266A8
lbl_805266A8:
	.asciz "CDeviceFont"

.global lbl_805266B4
lbl_805266B4:
	.asciz "reslist<IDeviceFontInfo *>"
	.balign 4

.global lbl_805266D0
lbl_805266D0:
	.asciz "_reslist_base<IDeviceFontInfo *>"
	.balign 4


.global lbl_805266F4
lbl_805266F4:
	.asciz "CDeviceFontLayer"
	.asciz "CDeviceFontLoader"
	.balign 4

.global lbl_80526718
lbl_80526718:
	.asciz "CDeviceFontInfoExt"
	.balign 4
	.4byte 0

.global lbl_80526730
lbl_80526730:
	.asciz "IDeviceFontInfo"

.global lbl_80526740
lbl_80526740:
	.asciz "CDeviceFontInfoRom"
	.balign 4
	.4byte 0

.global lbl_80526758
lbl_80526758:
	.asciz "CDeviceFontLayer"
	.balign 4

.global lbl_8052676C
lbl_8052676C:
	.asciz "reslist<const CDeviceFontLayer::LAYER_QUE *>"
	.balign 4

.global lbl_8052679C
lbl_8052679C:
	.asciz "_reslist_base<const CDeviceFontLayer::LAYER_QUE *>"
	.balign 4

.global lbl_805267D0
lbl_805267D0:
	.asciz "CDeviceFontLoader"
	.balign 4
	.4byte 0

.global lbl_805267E8
lbl_805267E8:
	.asciz "CDeviceGX"
	.balign 4
	.4byte 0

.global lbl_805267F8
lbl_805267F8:
	.asciz "@unnamed@CDesktop_cpp@::CDesktopException"
	.balign 4

.global lbl_80526824
lbl_80526824:
	.asciz "@unnamed@CDesktop_cpp@::CDesktopBackGround"
	.balign 4

.global lbl_80526850
lbl_80526850:
	.asciz "CDesktop"
	.balign 4


.global lbl_8052685C
lbl_8052685C:
	.asciz "CDesktopBackGround"
	.asciz "CDesktopException"
	.balign 4
	.4byte 0

.global lbl_80526888
lbl_80526888:
	.asciz "CException"
	.balign 4


.global lbl_80526894
lbl_80526894:
	.asciz "CException"
	.asciz "&"
	.byte 0x00, 0x00, 0x00
	.4byte 0


.global lbl_805268A8
lbl_805268A8:
	.asciz "CLibHbm"
	.asciz "CLibG3d"
	.asciz "CLibLayout"
	.asciz "CLibVM"
	.asciz "CLibStaticData"
	#"ログアウトに失敗しました"
	.byte 0x83, 0x8D, 0x83
	.4byte 0x4F834183
	.4byte 0x45836782
	.4byte 0xC98EB894
	.4byte 0x7382B582
	.4byte 0xDC82B582
	.4byte 0xBD00434C
	.4byte 0x69620000


.global lbl_805268F8
lbl_805268F8:
	.asciz ".ahx"
	.asciz "CLibCriMoviePlay"
	.asciz "CLibCriStreamingPlay"
	.balign 4
	.4byte 0

.global lbl_80526928
lbl_80526928:
	.asciz "CLibCriMoviePlay"
	.balign 4


.global lbl_8052693C
lbl_8052693C:
	# ROM: 0x522A3C
	#"停止中"
.global lbl_8052693C
lbl_8052693C:
	.4byte 0x92E28E7E
	.2byte 0x9286
	.byte 0x00

	#"再生準備中"
	.byte 0x8D
	.4byte 0xC490B68F
	.4byte 0x8094F592
	.2byte 0x8600

	#"再生中"
	.2byte 0x8DC4
	.4byte 0x90B69286
	.byte 0x00

	#"再生終了"
	.4byte 0x8DC490B6
	.4byte 0x8F4997B9
	.byte 0x00

	#"エラー発生"
	.2byte 0x8347
	.4byte 0x8389815B
	.4byte 0x94AD90B6
	.byte 0x00

	.byte 0x00, 0x00, 0x00
	.4byte 0


.global lbl_80526970
lbl_80526970:
	# ROM: 0x522A70
	.4byte 0x00000064
	.4byte 0
	.4byte 0x00000046
	.4byte 0xFFFFFFE2
	.4byte 0x00000032
	.4byte 0xFFFFFFC4
	.4byte 0x00000028
	.4byte 0xFFFFFFA6
	.4byte 0x0000001E
	.4byte 0xFFFFFF88
	.4byte 0x00000014
	.4byte 0xFFFFFF60
	.4byte 0x0000000A
	.4byte 0xFFFFFF38
	.4byte 0x00000005
	.4byte 0xFFFFFED4
	.4byte 0
	.4byte 0xFFFFFC40
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF

.global lbl_805269C0
lbl_805269C0:
	.asciz "CLibCriStreamingPlay"
	.balign 4


.global lbl_805269D8
lbl_805269D8:
	# ROM: 0x522AD8
	
	#"停止中"
.global lbl_805269D8
lbl_805269D8:
	.4byte 0x92E28E7E
	.2byte 0x9286
	.byte 00
	
	#"ADX のヘッダ情報取得中"
	.byte 0x41
	.4byte 0x44582082
	.4byte 0xCC837783
	.4byte 0x62835F8F
	.4byte 0xEE95F18E
	.4byte 0xE693BE92
	.2byte 0x8600
	
	#"生準備中"
	.2byte 0x8DC4
	.4byte 0x90B68F80
	.4byte 0x94F59286
	.byte 0x00

	#"デコード＆再生中"
	.byte 0x83,0x66,0x83
	.4byte 0x52815B83
	.4byte 0x6881958D
	.4byte 0xC490B692
	.2byte 0x8600

	#"デコード終了"
	.2byte 0x8366
	.4byte 0x8352815B
	.4byte 0x83688F49
	.2byte 0x97B9
	.byte 0x00

	#"再生終了"
	.byte 0x8D
	.4byte 0xC490B68F
	.4byte 0x4997B900

	#"エラー発生"
	.4byte 0x83478389
	.4byte 0x815B94AD
	.2byte 0x90B6
	.byte 0x00
	
	.byte 0
	.4byte 0


.global lbl_80526A38
lbl_80526A38:
	.asciz "hbm.arc"
	.asciz "hbm/homeBtn.arc"
	.asciz "hbm/SpeakerSe.arc"
	.asciz "hbm/HomeButtonSe.arc"
	.asciz "hbm/home.csv"
	.asciz "hbm/config.txt"
	.balign 4
	.4byte 0

.global lbl_80526A98
lbl_80526A98:
	.asciz "CLibHbmControl"
	.balign 4


.global lbl_80526AA8
lbl_80526AA8:
	.asciz "exit wii menu\n"
	.asciz "exit wii reset\n"
	.asciz "CLibHbmControl"
	.balign 4

.global lbl_80526AD8
lbl_80526AD8:
	.asciz "CLibLayout"
	.balign 4


.global lbl_80526AE4
lbl_80526AE4:
	.asciz "Layout Mem"
	.asciz "LAYOUT"
	.balign 4

.global lbl_80526AF8
lbl_80526AF8:
	.asciz "CLibStaticData"
	.balign 4

.global lbl_80526B08
lbl_80526B08:
	.asciz "CLibStaticData::CItem"
	.balign 4


.global lbl_80526B20
lbl_80526B20:
	.asciz "invalid distance too far back"
	.asciz "invalid distance code"
	.asciz "invalid literal/length code"

.global lbl_80526B70
lbl_80526B70:
	.4byte 0x60070000
	.4byte 0x00080050
	.4byte 0x00080010
	.4byte 0x14080073
	.4byte 0x1207001F
	.4byte 0x00080070
	.4byte 0x00080030
	.4byte 0x000900C0
	.4byte 0x1007000A
	.4byte 0x00080060
	.4byte 0x00080020
	.4byte 0x000900A0
	.4byte 0x00080000
	.4byte 0x00080080
	.4byte 0x00080040
	.4byte 0x000900E0
	.4byte 0x10070006
	.4byte 0x00080058
	.4byte 0x00080018
	.4byte 0x00090090
	.4byte 0x1307003B
	.4byte 0x00080078
	.4byte 0x00080038
	.4byte 0x000900D0
	.4byte 0x11070011
	.4byte 0x00080068
	.4byte 0x00080028
	.4byte 0x000900B0
	.4byte 0x00080008
	.4byte 0x00080088
	.4byte 0x00080048
	.4byte 0x000900F0
	.4byte 0x10070004
	.4byte 0x00080054
	.4byte 0x00080014
	.4byte 0x150800E3
	.4byte 0x1307002B
	.4byte 0x00080074
	.4byte 0x00080034
	.4byte 0x000900C8
	.4byte 0x1107000D
	.4byte 0x00080064
	.4byte 0x00080024
	.4byte 0x000900A8
	.4byte 0x00080004
	.4byte 0x00080084
	.4byte 0x00080044
	.4byte 0x000900E8
	.4byte 0x10070008
	.4byte 0x0008005C
	.4byte 0x0008001C
	.4byte 0x00090098
	.4byte 0x14070053
	.4byte 0x0008007C
	.4byte 0x0008003C
	.4byte 0x000900D8
	.4byte 0x12070017
	.4byte 0x0008006C
	.4byte 0x0008002C
	.4byte 0x000900B8
	.4byte 0x0008000C
	.4byte 0x0008008C
	.4byte 0x0008004C
	.4byte 0x000900F8
	.4byte 0x10070003
	.4byte 0x00080052
	.4byte 0x00080012
	.4byte 0x150800A3
	.4byte 0x13070023
	.4byte 0x00080072
	.4byte 0x00080032
	.4byte 0x000900C4
	.4byte 0x1107000B
	.4byte 0x00080062
	.4byte 0x00080022
	.4byte 0x000900A4
	.4byte 0x00080002
	.4byte 0x00080082
	.4byte 0x00080042
	.4byte 0x000900E4
	.4byte 0x10070007
	.4byte 0x0008005A
	.4byte 0x0008001A
	.4byte 0x00090094
	.4byte 0x14070043
	.4byte 0x0008007A
	.4byte 0x0008003A
	.4byte 0x000900D4
	.4byte 0x12070013
	.4byte 0x0008006A
	.4byte 0x0008002A
	.4byte 0x000900B4
	.4byte 0x0008000A
	.4byte 0x0008008A
	.4byte 0x0008004A
	.4byte 0x000900F4
	.4byte 0x10070005
	.4byte 0x00080056
	.4byte 0x00080016
	.4byte 0x40080000
	.4byte 0x13070033
	.4byte 0x00080076
	.4byte 0x00080036
	.4byte 0x000900CC
	.4byte 0x1107000F
	.4byte 0x00080066
	.4byte 0x00080026
	.4byte 0x000900AC
	.4byte 0x00080006
	.4byte 0x00080086
	.4byte 0x00080046
	.4byte 0x000900EC
	.4byte 0x10070009
	.4byte 0x0008005E
	.4byte 0x0008001E
	.4byte 0x0009009C
	.4byte 0x14070063
	.4byte 0x0008007E
	.4byte 0x0008003E
	.4byte 0x000900DC
	.4byte 0x1207001B
	.4byte 0x0008006E
	.4byte 0x0008002E
	.4byte 0x000900BC
	.4byte 0x0008000E
	.4byte 0x0008008E
	.4byte 0x0008004E
	.4byte 0x000900FC
	.4byte 0x60070000
	.4byte 0x00080051
	.4byte 0x00080011
	.4byte 0x15080083
	.4byte 0x1207001F
	.4byte 0x00080071
	.4byte 0x00080031
	.4byte 0x000900C2
	.4byte 0x1007000A
	.4byte 0x00080061
	.4byte 0x00080021
	.4byte 0x000900A2
	.4byte 0x00080001
	.4byte 0x00080081
	.4byte 0x00080041
	.4byte 0x000900E2
	.4byte 0x10070006
	.4byte 0x00080059
	.4byte 0x00080019
	.4byte 0x00090092
	.4byte 0x1307003B
	.4byte 0x00080079
	.4byte 0x00080039
	.4byte 0x000900D2
	.4byte 0x11070011
	.4byte 0x00080069
	.4byte 0x00080029
	.4byte 0x000900B2
	.4byte 0x00080009
	.4byte 0x00080089
	.4byte 0x00080049
	.4byte 0x000900F2
	.4byte 0x10070004
	.4byte 0x00080055
	.4byte 0x00080015
	.4byte 0x10080102
	.4byte 0x1307002B
	.4byte 0x00080075
	.4byte 0x00080035
	.4byte 0x000900CA
	.4byte 0x1107000D
	.4byte 0x00080065
	.4byte 0x00080025
	.4byte 0x000900AA
	.4byte 0x00080005
	.4byte 0x00080085
	.4byte 0x00080045
	.4byte 0x000900EA
	.4byte 0x10070008
	.4byte 0x0008005D
	.4byte 0x0008001D
	.4byte 0x0009009A
	.4byte 0x14070053
	.4byte 0x0008007D
	.4byte 0x0008003D
	.4byte 0x000900DA
	.4byte 0x12070017
	.4byte 0x0008006D
	.4byte 0x0008002D
	.4byte 0x000900BA
	.4byte 0x0008000D
	.4byte 0x0008008D
	.4byte 0x0008004D
	.4byte 0x000900FA
	.4byte 0x10070003
	.4byte 0x00080053
	.4byte 0x00080013
	.4byte 0x150800C3
	.4byte 0x13070023
	.4byte 0x00080073
	.4byte 0x00080033
	.4byte 0x000900C6
	.4byte 0x1107000B
	.4byte 0x00080063
	.4byte 0x00080023
	.4byte 0x000900A6
	.4byte 0x00080003
	.4byte 0x00080083
	.4byte 0x00080043
	.4byte 0x000900E6
	.4byte 0x10070007
	.4byte 0x0008005B
	.4byte 0x0008001B
	.4byte 0x00090096
	.4byte 0x14070043
	.4byte 0x0008007B
	.4byte 0x0008003B
	.4byte 0x000900D6
	.4byte 0x12070013
	.4byte 0x0008006B
	.4byte 0x0008002B
	.4byte 0x000900B6
	.4byte 0x0008000B
	.4byte 0x0008008B
	.4byte 0x0008004B
	.4byte 0x000900F6
	.4byte 0x10070005
	.4byte 0x00080057
	.4byte 0x00080017
	.4byte 0x40080000
	.4byte 0x13070033
	.4byte 0x00080077
	.4byte 0x00080037
	.4byte 0x000900CE
	.4byte 0x1107000F
	.4byte 0x00080067
	.4byte 0x00080027
	.4byte 0x000900AE
	.4byte 0x00080007
	.4byte 0x00080087
	.4byte 0x00080047
	.4byte 0x000900EE
	.4byte 0x10070009
	.4byte 0x0008005F
	.4byte 0x0008001F
	.4byte 0x0009009E
	.4byte 0x14070063
	.4byte 0x0008007F
	.4byte 0x0008003F
	.4byte 0x000900DE
	.4byte 0x1207001B
	.4byte 0x0008006F
	.4byte 0x0008002F
	.4byte 0x000900BE
	.4byte 0x0008000F
	.4byte 0x0008008F
	.4byte 0x0008004F
	.4byte 0x000900FE
	.4byte 0x60070000
	.4byte 0x00080050
	.4byte 0x00080010
	.4byte 0x14080073
	.4byte 0x1207001F
	.4byte 0x00080070
	.4byte 0x00080030
	.4byte 0x000900C1
	.4byte 0x1007000A
	.4byte 0x00080060
	.4byte 0x00080020
	.4byte 0x000900A1
	.4byte 0x00080000
	.4byte 0x00080080
	.4byte 0x00080040
	.4byte 0x000900E1
	.4byte 0x10070006
	.4byte 0x00080058
	.4byte 0x00080018
	.4byte 0x00090091
	.4byte 0x1307003B
	.4byte 0x00080078
	.4byte 0x00080038
	.4byte 0x000900D1
	.4byte 0x11070011
	.4byte 0x00080068
	.4byte 0x00080028
	.4byte 0x000900B1
	.4byte 0x00080008
	.4byte 0x00080088
	.4byte 0x00080048
	.4byte 0x000900F1
	.4byte 0x10070004
	.4byte 0x00080054
	.4byte 0x00080014
	.4byte 0x150800E3
	.4byte 0x1307002B
	.4byte 0x00080074
	.4byte 0x00080034
	.4byte 0x000900C9
	.4byte 0x1107000D
	.4byte 0x00080064
	.4byte 0x00080024
	.4byte 0x000900A9
	.4byte 0x00080004
	.4byte 0x00080084
	.4byte 0x00080044
	.4byte 0x000900E9
	.4byte 0x10070008
	.4byte 0x0008005C
	.4byte 0x0008001C
	.4byte 0x00090099
	.4byte 0x14070053
	.4byte 0x0008007C
	.4byte 0x0008003C
	.4byte 0x000900D9
	.4byte 0x12070017
	.4byte 0x0008006C
	.4byte 0x0008002C
	.4byte 0x000900B9
	.4byte 0x0008000C
	.4byte 0x0008008C
	.4byte 0x0008004C
	.4byte 0x000900F9
	.4byte 0x10070003
	.4byte 0x00080052
	.4byte 0x00080012
	.4byte 0x150800A3
	.4byte 0x13070023
	.4byte 0x00080072
	.4byte 0x00080032
	.4byte 0x000900C5
	.4byte 0x1107000B
	.4byte 0x00080062
	.4byte 0x00080022
	.4byte 0x000900A5
	.4byte 0x00080002
	.4byte 0x00080082
	.4byte 0x00080042
	.4byte 0x000900E5
	.4byte 0x10070007
	.4byte 0x0008005A
	.4byte 0x0008001A
	.4byte 0x00090095
	.4byte 0x14070043
	.4byte 0x0008007A
	.4byte 0x0008003A
	.4byte 0x000900D5
	.4byte 0x12070013
	.4byte 0x0008006A
	.4byte 0x0008002A
	.4byte 0x000900B5
	.4byte 0x0008000A
	.4byte 0x0008008A
	.4byte 0x0008004A
	.4byte 0x000900F5
	.4byte 0x10070005
	.4byte 0x00080056
	.4byte 0x00080016
	.4byte 0x40080000
	.4byte 0x13070033
	.4byte 0x00080076
	.4byte 0x00080036
	.4byte 0x000900CD
	.4byte 0x1107000F
	.4byte 0x00080066
	.4byte 0x00080026
	.4byte 0x000900AD
	.4byte 0x00080006
	.4byte 0x00080086
	.4byte 0x00080046
	.4byte 0x000900ED
	.4byte 0x10070009
	.4byte 0x0008005E
	.4byte 0x0008001E
	.4byte 0x0009009D
	.4byte 0x14070063
	.4byte 0x0008007E
	.4byte 0x0008003E
	.4byte 0x000900DD
	.4byte 0x1207001B
	.4byte 0x0008006E
	.4byte 0x0008002E
	.4byte 0x000900BD
	.4byte 0x0008000E
	.4byte 0x0008008E
	.4byte 0x0008004E
	.4byte 0x000900FD
	.4byte 0x60070000
	.4byte 0x00080051
	.4byte 0x00080011
	.4byte 0x15080083
	.4byte 0x1207001F
	.4byte 0x00080071
	.4byte 0x00080031
	.4byte 0x000900C3
	.4byte 0x1007000A
	.4byte 0x00080061
	.4byte 0x00080021
	.4byte 0x000900A3
	.4byte 0x00080001
	.4byte 0x00080081
	.4byte 0x00080041
	.4byte 0x000900E3
	.4byte 0x10070006
	.4byte 0x00080059
	.4byte 0x00080019
	.4byte 0x00090093
	.4byte 0x1307003B
	.4byte 0x00080079
	.4byte 0x00080039
	.4byte 0x000900D3
	.4byte 0x11070011
	.4byte 0x00080069
	.4byte 0x00080029
	.4byte 0x000900B3
	.4byte 0x00080009
	.4byte 0x00080089
	.4byte 0x00080049
	.4byte 0x000900F3
	.4byte 0x10070004
	.4byte 0x00080055
	.4byte 0x00080015
	.4byte 0x10080102
	.4byte 0x1307002B
	.4byte 0x00080075
	.4byte 0x00080035
	.4byte 0x000900CB
	.4byte 0x1107000D
	.4byte 0x00080065
	.4byte 0x00080025
	.4byte 0x000900AB
	.4byte 0x00080005
	.4byte 0x00080085
	.4byte 0x00080045
	.4byte 0x000900EB
	.4byte 0x10070008
	.4byte 0x0008005D
	.4byte 0x0008001D
	.4byte 0x0009009B
	.4byte 0x14070053
	.4byte 0x0008007D
	.4byte 0x0008003D
	.4byte 0x000900DB
	.4byte 0x12070017
	.4byte 0x0008006D
	.4byte 0x0008002D
	.4byte 0x000900BB
	.4byte 0x0008000D
	.4byte 0x0008008D
	.4byte 0x0008004D
	.4byte 0x000900FB
	.4byte 0x10070003
	.4byte 0x00080053
	.4byte 0x00080013
	.4byte 0x150800C3
	.4byte 0x13070023
	.4byte 0x00080073
	.4byte 0x00080033
	.4byte 0x000900C7
	.4byte 0x1107000B
	.4byte 0x00080063
	.4byte 0x00080023
	.4byte 0x000900A7
	.4byte 0x00080003
	.4byte 0x00080083
	.4byte 0x00080043
	.4byte 0x000900E7
	.4byte 0x10070007
	.4byte 0x0008005B
	.4byte 0x0008001B
	.4byte 0x00090097
	.4byte 0x14070043
	.4byte 0x0008007B
	.4byte 0x0008003B
	.4byte 0x000900D7
	.4byte 0x12070013
	.4byte 0x0008006B
	.4byte 0x0008002B
	.4byte 0x000900B7
	.4byte 0x0008000B
	.4byte 0x0008008B
	.4byte 0x0008004B
	.4byte 0x000900F7
	.4byte 0x10070005
	.4byte 0x00080057
	.4byte 0x00080017
	.4byte 0x40080000
	.4byte 0x13070033
	.4byte 0x00080077
	.4byte 0x00080037
	.4byte 0x000900CF
	.4byte 0x1107000F
	.4byte 0x00080067
	.4byte 0x00080027
	.4byte 0x000900AF
	.4byte 0x00080007
	.4byte 0x00080087
	.4byte 0x00080047
	.4byte 0x000900EF
	.4byte 0x10070009
	.4byte 0x0008005F
	.4byte 0x0008001F
	.4byte 0x0009009F
	.4byte 0x14070063
	.4byte 0x0008007F
	.4byte 0x0008003F
	.4byte 0x000900DF
	.4byte 0x1207001B
	.4byte 0x0008006F
	.4byte 0x0008002F
	.4byte 0x000900BF
	.4byte 0x0008000F
	.4byte 0x0008008F
	.4byte 0x0008004F
	.4byte 0x000900FF
.global lbl_80527370
lbl_80527370:
	.4byte 0x10050001
	.4byte 0x17050101
	.4byte 0x13050011
	.4byte 0x1B051001
	.4byte 0x11050005
	.4byte 0x19050401
	.4byte 0x15050041
	.4byte 0x1D054001
	.4byte 0x10050003
	.4byte 0x18050201
	.4byte 0x14050021
	.4byte 0x1C052001
	.4byte 0x12050009
	.4byte 0x1A050801
	.4byte 0x16050081
	.4byte 0x40050000
	.4byte 0x10050002
	.4byte 0x17050181
	.4byte 0x13050019
	.4byte 0x1B051801
	.4byte 0x11050007
	.4byte 0x19050601
	.4byte 0x15050061
	.4byte 0x1D056001
	.4byte 0x10050004
	.4byte 0x18050301
	.4byte 0x14050031
	.4byte 0x1C053001
	.4byte 0x1205000D
	.4byte 0x1A050C01
	.4byte 0x160500C1
	.4byte 0x40050000


.global lbl_805273F0
lbl_805273F0:
	# ROM: 0x5234F0
	.4byte 0x00100011
	.4byte 0x00120000
	.4byte 0x00080007
	.4byte 0x00090006
	.4byte 0x000A0005
	.4byte 0x000B0004
	.4byte 0x000C0003
	.4byte 0x000D0002
	.4byte 0x000E0001
	.4byte 0x000F0000


.global lbl_80527418
lbl_80527418:
	.asciz "1.2.3"
	.asciz "incorrect header check"
	.asciz "unknown compression method"
	.asciz "invalid window size"
	.asciz "invalid block type"
	.asciz "invalid stored block lengths"
	.asciz "too many length or distance symbols"
	.asciz "invalid code lengths set"
	.asciz "invalid bit length repeat"
	.asciz "invalid literal/lengths set"
	.asciz "invalid distances set"
	.asciz "invalid literal/length code"
	.asciz "invalid distance code"
	.asciz "invalid distance too far back"
	.asciz "incorrect data check"
	.balign 4
	.4byte 0


.global lbl_80527588
lbl_80527588:
	# ROM: 0x523688
	.4byte 0x00030004
	.4byte 0x00050006
	.4byte 0x00070008
	.4byte 0x0009000A
	.4byte 0x000B000D
	.4byte 0x000F0011
	.4byte 0x00130017
	.4byte 0x001B001F
	.4byte 0x0023002B
	.4byte 0x0033003B
	.4byte 0x00430053
	.4byte 0x00630073
	.4byte 0x008300A3
	.4byte 0x00C300E3
	.4byte 0x01020000
	.4byte 0


.global lbl_805275C8
lbl_805275C8:
	# ROM: 0x5236C8
	.4byte 0x00100010
	.4byte 0x00100010
	.4byte 0x00100010
	.4byte 0x00100010
	.4byte 0x00110011
	.4byte 0x00110011
	.4byte 0x00120012
	.4byte 0x00120012
	.4byte 0x00130013
	.4byte 0x00130013
	.4byte 0x00140014
	.4byte 0x00140014
	.4byte 0x00150015
	.4byte 0x00150015
	.4byte 0x001000C9
	.4byte 0x00C40000


.global lbl_80527608
lbl_80527608:
	# ROM: 0x523708
	.4byte 0x00010002
	.4byte 0x00030004
	.4byte 0x00050007
	.4byte 0x0009000D
	.4byte 0x00110019
	.4byte 0x00210031
	.4byte 0x00410061
	.4byte 0x008100C1
	.4byte 0x01010181
	.4byte 0x02010301
	.4byte 0x04010601
	.4byte 0x08010C01
	.4byte 0x10011801
	.4byte 0x20013001
	.4byte 0x40016001
	.4byte 0


.global lbl_80527648
lbl_80527648:
	# ROM: 0x523748
	.4byte 0x00100010
	.4byte 0x00100010
	.4byte 0x00110011
	.4byte 0x00120012
	.4byte 0x00130013
	.4byte 0x00140014
	.4byte 0x00150015
	.4byte 0x00160016
	.4byte 0x00170017
	.4byte 0x00180018
	.4byte 0x00190019
	.4byte 0x001A001A
	.4byte 0x001B001B
	.4byte 0x001C001C
	.4byte 0x001D001D
	.4byte 0x00400040

.global lbl_80527688
lbl_80527688:
	.asciz "CTaskLOD"
	.balign 4

.global lbl_80527694
lbl_80527694:
	.asciz "CTTask<CTaskLOD>"
	.balign 4

.global lbl_805276A8
lbl_805276A8:
	.asciz "LOD::LODMemMan"
	.balign 4


.global lbl_805276B8
lbl_805276B8:
	# ROM: 0x5237B8
	.4byte 0
	.4byte 0

.global lbl_805276C0
lbl_805276C0:
	.asciz "mpfsys::MPFDrawDisplayList"
	.balign 4
	.4byte 0

.global lbl_805276E0
lbl_805276E0:
	.asciz "mpfsys::MPFDraw"

.global lbl_805276F0
lbl_805276F0:
	.asciz "mpfsys::MPFDrawMdlColor"

.global lbl_80527708
lbl_80527708:
	.asciz "mpfsys::MPFDrawMdlNoColor"
	.balign 4
	.4byte 0
.global lbl_80527728
lbl_80527728:
	.4byte 0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000003
.global lbl_80527738
lbl_80527738:
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0

.global lbl_80527748
lbl_80527748:
	.asciz "mpfsys::MPFDrawBillLayTex"
	.balign 4

.global lbl_80527764
lbl_80527764:
	.asciz "mpfsys::MPFDrawCross"
	.balign 4

.global lbl_8052777C
lbl_8052777C:
	.asciz "mpfsys::MPFDrawBillboard"
	.balign 4

.global lbl_80527798
lbl_80527798:
	.asciz "CScnItemCameraNw4r"
	.balign 4

.global lbl_805277AC
lbl_805277AC:
	.asciz "CScnItemCamera"
	.balign 4
	.4byte 0

.global lbl_805277C0
lbl_805277C0:
	.asciz "CScnItemId"
	.balign 4
	.4byte 0

.global lbl_805277D0
lbl_805277D0:
	.asciz "CScnItemLight"
	.balign 4

.global lbl_805277E0
lbl_805277E0:
	.asciz "CScnItemLightNw4r"
	.balign 4


.global lbl_805277F4
lbl_805277F4:
	.asciz "Global(%d)"
	.balign 4

.global lbl_80527800
lbl_80527800:
	.asciz "nw4r::g3d::IScnObjCallback"
	.balign 4

.global lbl_8052781C
lbl_8052781C:
	.asciz "nw4r::g3d::ICalcWorldCallback"
	.balign 4
	.4byte 0

.global lbl_80527840
lbl_80527840:
	.asciz "CScnItemPool"
	.balign 4

.global lbl_80527850
lbl_80527850:
	.asciz "reslist<CScnItem *>"

.global lbl_80527864
lbl_80527864:
	.asciz "_reslist_base<CScnItem *>"
	.balign 4

.global lbl_80527880
lbl_80527880:
	.asciz "CScnLightMan"
	.balign 4

.global lbl_80527890
lbl_80527890:
	.asciz "shadowTex_I4"
	.balign 4


.global lbl_805278A0
lbl_805278A0:
	# ROM: 0x5239A0
	.float 1.0
	.asciz "?333?333?"
	.balign 4
	.float 0.5
	.4byte 0x3F333333
	.4byte 0x3F333333


.global lbl_805278BC
lbl_805278BC:
	# ROM: 0x5239BC
	.4byte 0x53484100


.global lbl_805278C0
lbl_805278C0:
	.asciz "CScnMem"

.global lbl_805278C8
lbl_805278C8:
	.asciz "CScnNw4r"
	.balign 4

.global lbl_805278D4
lbl_805278D4:
	.asciz "CTTask<CScn>"
	.balign 4
	.4byte 0

.global lbl_805278E8
lbl_805278E8:
	.asciz "CScnRoot"
	.balign 4
	.4byte 0

.global lbl_805278F8
lbl_805278F8:
	.asciz "CScnRootNw4r"
	.balign 4


.global lbl_80527908
lbl_80527908:
	.asciz "NW4R Mem"
	.asciz "NW4R Mem(P)"
	.asciz "NW4R Mem(S)"
	.asciz "NW4R Mem(A)"
	.balign 4

.global lbl_80527938
lbl_80527938:
	.asciz "CScnTexWorkMan"
	.balign 4


.global lbl_80527948
lbl_80527948:
	.asciz "CScnTexWorkMan"
	.balign 4

.global lbl_80527958
lbl_80527958:
	.asciz "CScnVirtualLight"
	.balign 4


.global lbl_8052796C
lbl_8052796C:
	.asciz "VLGT Mem"
	.balign 4

.global lbl_80527978
lbl_80527978:
	.asciz "CVirtualLightAmb"
	.balign 4

.global lbl_8052798C
lbl_8052798C:
	.asciz "CVirtualLightObj"
	.balign 4

.global lbl_805279A0
lbl_805279A0:
	.asciz "CVirtualLightDir"
	.balign 4
	.4byte 0


.global lbl_805279B8
lbl_805279B8:
	.asciz "%s(%s)"
	.asciz "CScn"
	.4byte 0

.global lbl_805279C8
lbl_805279C8:
	.asciz "CScnBlend"
	.balign 4

.global lbl_805279D4
lbl_805279D4:
	.asciz "CScnFilter"
	.balign 4

.global lbl_805279E0
lbl_805279E0:
	.asciz "CScnBloom"
	.balign 4

.global lbl_805279EC
lbl_805279EC:
	.asciz "CScnBloomBase"
	.balign 4
	.4byte 0

.global lbl_80527A00
lbl_80527A00:
	.asciz "camset %d %v3 %v3 %f %f %f %f"
	.balign 4

.global lbl_80527A20
lbl_80527A20:
	.asciz "CScnCameraMan"
	.balign 4

.global lbl_80527A30
lbl_80527A30:
	.asciz "CScnEffectActNw4r"
	.balign 4

.global lbl_80527A44
lbl_80527A44:
	.asciz "IEffectAct"
	.balign 4

.global lbl_80527A50
lbl_80527A50:
	.asciz "CScnFadeMan"
	.4byte 0

.global lbl_80527A60
lbl_80527A60:
	.asciz "CScnFilterMan"
	.balign 4

.global lbl_80527A70
lbl_80527A70:
	.asciz "reslist<_reslist_iterator<CScnFilter *, CScnFilter *&, CScnFilter **>>"
	.balign 4

.global lbl_80527AB8
lbl_80527AB8:
	.asciz "_reslist_base<_reslist_iterator<CScnFilter *, CScnFilter *&, CScnFilter **>>"
	.balign 4

.global lbl_80527B08
lbl_80527B08:
	.asciz "reslist<CScnFilter *>"
	.balign 4

.global lbl_80527B20
lbl_80527B20:
	.asciz "_reslist_base<CScnFilter *>"
	.4byte 0

.global lbl_80527B40
lbl_80527B40:
	.asciz "CScnFogMan"
	.balign 4
	.4byte 0

.global lbl_80527B50
lbl_80527B50:
	.asciz "CScnFrame"
	.balign 4
	.4byte 0

.global lbl_80527B60
lbl_80527B60:
	.asciz "CScnIdMan"
	.balign 4
	.4byte 0

.global lbl_80527B70
lbl_80527B70:
	.asciz "CScnItemAnim"
	.balign 4


.global lbl_80527B80
lbl_80527B80:
	.asciz "Camera%d"
	.balign 4
	.4byte 0

.global lbl_80527B90
lbl_80527B90:
	.asciz "CONST_I_W"
	.balign 4

.global lbl_80527B9C
lbl_80527B9C:
	.asciz "POOL_INT"
	.balign 4

.global lbl_80527BA8
lbl_80527BA8:
	.asciz "POOL_INT_W"
	.balign 4

.global lbl_80527BB4
lbl_80527BB4:
	.asciz "POOL_FIXED"
	.balign 4

.global lbl_80527BC0
lbl_80527BC0:
	.asciz "POOL_FIXED_W"
	.balign 4

.global lbl_80527BD0
lbl_80527BD0:
	.asciz "POOL_STR"
	.balign 4

.global lbl_80527BDC
lbl_80527BDC:
	.asciz "POOL_STR_W"
	.balign 4

.global lbl_80527BE8
lbl_80527BE8:
	.asciz "ST_ARG_OMIT"

.global lbl_80527BF4
lbl_80527BF4:
	.asciz "LD_ARG_0"
	.balign 4

.global lbl_80527C00
lbl_80527C00:
	.asciz "LD_ARG_1"
	.balign 4

.global lbl_80527C0C
lbl_80527C0C:
	.asciz "LD_ARG_2"
	.balign 4

.global lbl_80527C18
lbl_80527C18:
	.asciz "LD_ARG_3"
	.balign 4

.global lbl_80527C24
lbl_80527C24:
	.asciz "ST_ARG_0"
	.balign 4

.global lbl_80527C30
lbl_80527C30:
	.asciz "ST_ARG_1"
	.balign 4

.global lbl_80527C3C
lbl_80527C3C:
	.asciz "ST_ARG_2"
	.balign 4

.global lbl_80527C48
lbl_80527C48:
	.asciz "ST_ARG_3"
	.balign 4

.global lbl_80527C54
lbl_80527C54:
	.asciz "LD_STATIC"
	.balign 4

.global lbl_80527C60
lbl_80527C60:
	.asciz "LD_STATIC_W"

.global lbl_80527C6C
lbl_80527C6C:
	.asciz "ST_STATIC"
	.balign 4

.global lbl_80527C78
lbl_80527C78:
	.asciz "ST_STATIC_W"

.global lbl_80527C84
lbl_80527C84:
	.asciz "LD_FALSE"
	.balign 4

.global lbl_80527C90
lbl_80527C90:
	.asciz "LD_FUNC_W"
	.balign 4

.global lbl_80527C9C
lbl_80527C9C:
	.asciz "LD_PLUGIN"
	.balign 4

.global lbl_80527CA8
lbl_80527CA8:
	.asciz "LD_PLUGIN_W"

.global lbl_80527CB4
lbl_80527CB4:
	.asciz "LD_FUNC_FAR"

.global lbl_80527CC0
lbl_80527CC0:
	.asciz "LD_FUNC_FAR_W"
	.balign 4

.global lbl_80527CD0
lbl_80527CD0:
	.asciz "CALL_IND"
	.balign 4

.global lbl_80527CDC
lbl_80527CDC:
	.asciz "PLUGIN_W"
	.balign 4

.global lbl_80527CE8
lbl_80527CE8:
	.asciz "CALL_FAR"
	.balign 4

.global lbl_80527CF4
lbl_80527CF4:
	.asciz "CALL_FAR_W"
	.balign 4

.global lbl_80527D00
lbl_80527D00:
	.asciz "GET_OC_W"
	.balign 4

.global lbl_80527D0C
lbl_80527D0C:
	.asciz "GETTER_W"
	.balign 4

.global lbl_80527D18
lbl_80527D18:
	.asciz "SETTER_W"
	.balign 4



.global lbl_80527D24
lbl_80527D24:
	.asciz "function"
	.balign 4


.global lbl_80527D30
lbl_80527D30:
	.asciz "CColiObjCall"
	.balign 4

.global lbl_80527D40
lbl_80527D40:
	.asciz "CColiResCall"
	.balign 4

.global lbl_80527D50
lbl_80527D50:
	.asciz "CTaskColiManager"
	.balign 4

.global lbl_80527D64
lbl_80527D64:
	.asciz "CTTask<CTaskColiManager>"
	.balign 4

.global lbl_80527D80
lbl_80527D80:
	.asciz "CColiManCall"
	.balign 4

.global lbl_80527D90
lbl_80527D90:
	.asciz "reslist<IScnEnvCtl *>"
	.balign 4

.global lbl_80527DA8
lbl_80527DA8:
	.asciz "_reslist_base<IScnEnvCtl *>"
	.4byte 0

.global lbl_80527DC8
lbl_80527DC8:
	.asciz "CScnEnvLgtCtrl"
	.balign 4

.global lbl_80527DD8
lbl_80527DD8:
	.asciz "IScnEnvCtl"
	.balign 4
	.4byte 0


.global lbl_80527DE8
lbl_80527DE8:
	# ROM: 0x523EE8
	.4byte 0x00000004
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0


.global lbl_80527DF8
lbl_80527DF8:
	# ROM: 0x523EF8
	.4byte 0x00000004
	.4byte 0x00000008
	.4byte 0x00000010
	.4byte 0x00000020


.global lbl_80527E08
lbl_80527E08:
	.asciz "CEffectHeap"
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80527E20
lbl_80527E20:
	# ROM: 0x523F20
	.4byte 0xFF010001
	.4byte 0x010001FF
	.4byte 0x00FFFF00
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0


.global lbl_80527E40
lbl_80527E40:
	# ROM: 0x523F40
	.4byte 0xFFFF0001
	.4byte 0xFF000101
	.4byte 0x00FF0100
	.4byte 0

.global lbl_80527E50
lbl_80527E50:
	.asciz "reslist<CETrail::POINT>"

.global lbl_80527E68
lbl_80527E68:
	.asciz "_reslist_base<CETrail::POINT>"
	.balign 4

.global lbl_80527E88
lbl_80527E88:
	.asciz "CWorkSystemCache"
	.balign 4

.global lbl_80527E9C
lbl_80527E9C:
	.asciz "reslist<CCacheItem *>"
	.balign 4

.global lbl_80527EB4
lbl_80527EB4:
	.asciz "_reslist_base<CCacheItem *>"

.global lbl_80527ED0
lbl_80527ED0:
	.asciz "CNReqtask"
	.balign 4


.global lbl_80527EDC
lbl_80527EDC:
	.asciz "%s/%s"
	.balign 4
	.4byte 0

.global lbl_80527EE8
lbl_80527EE8:
	.asciz "CNRequest"
	.balign 4
	.4byte 0

.global lbl_80527EF8
lbl_80527EF8:
	.asciz "CNReqtaskSave"
	.balign 4


.global lbl_80527F08
lbl_80527F08:
	.asciz "%s%s"
	.balign 4

.global lbl_80527F10
lbl_80527F10:
	.asciz "CNReqtaskLoad"
	.balign 4

.global lbl_80527F20
lbl_80527F20:
	.asciz "CNReqtaskReaddir"
	.balign 4
	.4byte 0

.global lbl_80527F38
lbl_80527F38:
	.asciz "CNReqtaskRemove"

.global lbl_80527F48
lbl_80527F48:
	.asciz "CNReqtaskCheck"
	.balign 4

.global lbl_80527F58
lbl_80527F58:
	.asciz "CERandomizerSimple"
	.balign 4

.global lbl_80527F6C
lbl_80527F6C:
	.asciz "IRandomizer"

.global lbl_80527F78
lbl_80527F78:
	.asciz "CERandomizer"
	.balign 4

.global lbl_80527F88
lbl_80527F88:
	.asciz "CWorkSystemPack"

.global lbl_80527F98
lbl_80527F98:
	.asciz "reslist<CArcItem *>"

.global lbl_80527FAC
lbl_80527FAC:
	.asciz "_reslist_base<CArcItem *>"
	.balign 4

.global lbl_80527FC8
lbl_80527FC8:
	.asciz "reslist<CPackItem *>"
	.balign 4

.global lbl_80527FE0
lbl_80527FE0:
	.asciz "_reslist_base<CPackItem *>"
	.balign 4

.global lbl_80527FFC
lbl_80527FFC:
	.asciz "CPackItem"
	.balign 4

.global lbl_80528008
lbl_80528008:
	.asciz "CArcItem"
	.balign 4


.global lbl_80528014
lbl_80528014:
	.asciz "adx"
	.asciz "ahx"
	.asciz ".pkb"
	.balign 4
	.4byte 0

.global lbl_80528028
lbl_80528028:
	.asciz "CSchedule"
	.balign 4
	.4byte 0

.global lbl_80528038
lbl_80528038:
	.asciz "ScheduleList"
	.balign 4

.global lbl_80528048
lbl_80528048:
	.asciz "reslist<CSchedule *>"
	.balign 4

.global lbl_80528060
lbl_80528060:
	.asciz "_reslist_base<CSchedule *>"
	.balign 4

.global lbl_8052807C
lbl_8052807C:
	.asciz "IScheduleContainer"
	.balign 4

.global lbl_80528090
lbl_80528090:
	.asciz "CMdlMaterial"
	.balign 4

.global lbl_805280A0
lbl_805280A0:
	.asciz "mtIris03"
	.balign 4


.global lbl_805280AC
lbl_805280AC:
	# ROM: 0x5241AC
	.4byte 0
	.float 0.25
	.float 0.5
.global lbl_805280B8
lbl_805280B8:
	.asciz "CMdlMouth"
	.balign 4
	.4byte 0

.global lbl_805280C8
lbl_805280C8:
	.asciz "CMdlAnmUV"
	.balign 4


.global lbl_805280D4
lbl_805280D4:
	.asciz "%s%d%d"
	.balign 4
	.4byte 0


.global lbl_805280E0
lbl_805280E0:
	# ROM: 0x5241E0
	.4byte 0
	.4byte 0x3EAC0831
	.4byte 0x3F2C0831


.global lbl_805280EC
lbl_805280EC:
	# ROM: 0x5241EC
	.4byte 0
	.4byte 0xBE000000
	.4byte 0xBE800000

.global lbl_805280F8
lbl_805280F8:
	.asciz "CMdlAnmEye"
	.balign 4
	.4byte 0

.global lbl_80528108
lbl_80528108:
	.asciz "CMdlLook"
	.balign 4


.global lbl_80528114
lbl_80528114:
	.asciz "JUspA"
	.asciz "JUhead"
	.asciz "move"
	.2byte 0
.global lbl_80528128
lbl_80528128:
	.asciz "CMdlDynamics"
	.balign 4


.global lbl_80528138
lbl_80528138:
	.asciz "Dwet"
	.asciz "Ddmp"
	.asciz "Dsta"
	.asciz "Dbld"
	.asciz "Dlrx"
	.asciz "Dlry"
	.asciz "Dlrz"
	.asciz "Dlink"
	.asciz "Dllen"
	.byte 0x00


.global lbl_80528168
lbl_80528168:
	.asciz "exit wii reset\n"
	.asciz " in \"%s\" on line %d.\n"
	.balign 4

.global lbl_80528190
lbl_80528190:
	.asciz "banner.bin"
	.balign 4

.global lbl_8052819C
lbl_8052819C:
	.asciz "CNReqtaskSaveBanner"


.global lbl_805281B0
lbl_805281B0:
	.asciz "%s%s"
	.balign 4

.global lbl_805281B8
lbl_805281B8:
	.asciz "CNBanner"
	.balign 4

.global lbl_805281C4
lbl_805281C4:
	.4byte 0