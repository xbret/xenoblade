WPAD_FILES:=\
	$(BUILD_DIR)/libs/RevoSDK/asm/wpad/WPAD.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/wpad/WPADHIDParser.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/wpad/WPADEncrypt.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/wpad/WPADMem.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/wpad/debug_msg.o\

DEPENDS += $(WPAD_FILES:.o=.d)

$(BUILD_DIR)/libs/RevoSDK/src/wpad/wpad.a: $(WPAD_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(WPAD_FILES) > build/WPAD_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/WPAD_ofiles
