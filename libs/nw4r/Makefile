NW4R_FILES:=\
	$(BUILD_DIR)/libs/nw4r/src/db/libnw4r_db.a\
	$(BUILD_DIR)/libs/nw4r/src/g3d/libnw4r_g3d.a\
	$(BUILD_DIR)/libs/nw4r/src/lyt/libnw4r_lyt.a\
	$(BUILD_DIR)/libs/nw4r/src/math/libnw4r_math.a\
	$(BUILD_DIR)/libs/nw4r/src/snd/libnw4r_snd.a\
	$(BUILD_DIR)/libs/nw4r/src/ut/libnw4r_ut.a\


#NW4R uses GC 3.0
#$(NW4R_FILES): MWCC_VERSION := 3.0a5.2
#$(NW4R_FILES): CONSOLE := GC

#$(NW4R_FILES): INCLUDES += -i libs/nw4r/include/
$(NW4R_FILES): CFLAGS += -inline auto -use_lmw_stmw on -fp_contract off -func_align 4


$(BUILD_DIR)/libs/nw4r/nw4r.a: $(NW4R_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(NW4R_FILES) > build/NW4R_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/NW4R_ofiles
