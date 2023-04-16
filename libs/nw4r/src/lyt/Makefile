NW4R_LYT_FILES:=\
	$(BUILD_DIR)/libs/nw4r/src/lyt/lyt_init.o\
	$(BUILD_DIR)/libs/nw4r/asm/lyt/lyt_pane.o\
	$(BUILD_DIR)/libs/nw4r/asm/lyt/lyt_group.o\
	$(BUILD_DIR)/libs/nw4r/asm/lyt/lyt_layout.o\
	$(BUILD_DIR)/libs/nw4r/asm/lyt/lyt_picture.o\
	$(BUILD_DIR)/libs/nw4r/asm/lyt/lyt_textBox.o\
	$(BUILD_DIR)/libs/nw4r/asm/lyt/lyt_window.o\
	$(BUILD_DIR)/libs/nw4r/asm/lyt/lyt_bounding.o\
	$(BUILD_DIR)/libs/nw4r/asm/lyt/lyt_material.o\
	$(BUILD_DIR)/libs/nw4r/asm/lyt/lyt_texMap.o\
	$(BUILD_DIR)/libs/nw4r/src/lyt/lyt_drawInfo.o\
	$(BUILD_DIR)/libs/nw4r/asm/lyt/lyt_animation.o\
	$(BUILD_DIR)/libs/nw4r/src/lyt/lyt_resourceAccessor.o\
	$(BUILD_DIR)/libs/nw4r/asm/lyt/lyt_arcResourceAccessor.o\
	$(BUILD_DIR)/libs/nw4r/asm/lyt/lyt_common.o\
	$(BUILD_DIR)/libs/nw4r/asm/lyt/lyt_util.o\

DEPENDS += $(NW4R_LYT_FILES:.o=.d)

#NW4R uses GC 3.0
$(NW4R_LYT_FILES): MWCC_VERSION := 3.0
$(NW4R_LYT_FILES): CONSOLE := GC

$(BUILD_DIR)/libs/nw4r/src/lyt/libnw4r_lyt.a: $(NW4R_LYT_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(NW4R_LYT_FILES) > build/NW4R_LYT_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/NW4R_LYT_ofiles
