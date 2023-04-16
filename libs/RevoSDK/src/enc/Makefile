ENC_FILES:=\
	$(BUILD_DIR)/libs/RevoSDK/asm/enc/encutility.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/enc/encjapanese.o\

DEPENDS += $(ENC_FILES:.o=.d)

$(BUILD_DIR)/libs/RevoSDK/src/enc/enc.a: $(ENC_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(ENC_FILES) > build/ENC_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/ENC_ofiles
