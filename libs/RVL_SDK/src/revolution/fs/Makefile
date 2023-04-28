FS_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/fs/fs.o\

DEPENDS += $(FS_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/fs/fs.a: $(FS_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(FS_FILES) > build/FS_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/FS_ofiles
