BTE_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/bte/gki_buffer.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/gki_time.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/gki_ppc.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/hcisu_h2.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/uusb_ppc.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bte_hcisu.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bte_init.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bte_logmsg.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bte_main.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/btu_task1.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bd.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_sys_conn.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_sys_main.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/ptim.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/utl.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_dm_act.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_dm_api.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_dm_main.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_dm_pm.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_hh_act.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_hh_api.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_hh_main.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/bta_hh_utils.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_acl.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_dev.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_devctl.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_discovery.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_inq.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_main.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_pm.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_sco.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/btm_sec.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/btu_hcif.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/btu_init.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/wbt_ext.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/gap_api.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/gap_conn.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/gap_utils.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/hcicmds.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/hidd_api.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/hidd_conn.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/hidd_mgmt.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/hidd_pm.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/hidh_api.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/hidh_conn.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/l2c_api.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/l2c_csm.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/l2c_link.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/l2c_main.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/l2c_utils.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/port_api.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/port_rfc.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/port_utils.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/rfc_l2cap_if.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/rfc_mx_fsm.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/rfc_port_fsm.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/rfc_port_if.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/rfc_ts_frames.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/rfc_utils.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/sdp_api.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/sdp_db.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/sdp_discovery.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/sdp_main.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/sdp_server.o\
	$(BUILD_DIR)/asm/RevoSDK/bte/sdp_utils.o\

DEPENDS += $(BTE_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/bte/bte.a: $(BTE_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(BTE_FILES) > build/BTE_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/BTE_ofiles