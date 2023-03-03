ENC_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/enc/encutility.o\
	$(BUILD_DIR)/asm/RevoSDK/enc/encjapanese.o\

DEPENDS += $(ENC_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/enc/enc.a: $(ENC_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(ENC_FILES) > build/ENC_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/ENC_ofiles
