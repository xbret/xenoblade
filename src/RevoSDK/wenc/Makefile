WENC_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/wenc/wenc.o\

DEPENDS += $(WENC_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/wenc/wenc.a: $(WENC_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(WENC_FILES) > build/WENC_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/WENC_ofiles