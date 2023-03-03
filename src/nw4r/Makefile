NW4R_FILES:=\
	$(BUILD_DIR)/src/nw4r/db/libnw4r_db.a\
	$(BUILD_DIR)/src/nw4r/g3d/libnw4r_g3d.a\
	$(BUILD_DIR)/src/nw4r/lyt/libnw4r_lyt.a\
	$(BUILD_DIR)/src/nw4r/math/libnw4r_math.a\
	$(BUILD_DIR)/src/nw4r/snd/libnw4r_snd.a\
	$(BUILD_DIR)/src/nw4r/ut/libnw4r_ut.a\


#NW4R uses GC 3.0
#$(NW4R_FILES): MWCC_VERSION := 3.0
#$(NW4R_FILES): CONSOLE := GC


$(BUILD_DIR)/src/nw4r/nw4r.a: $(NW4R_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(NW4R_FILES) > build/NW4R_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/NW4R_ofiles
