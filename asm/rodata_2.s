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