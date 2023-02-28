WPAD_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/wpad/WPAD.o\
	$(BUILD_DIR)/asm/RevoSDK/wpad/WPADHIDParser.o\
	$(BUILD_DIR)/asm/RevoSDK/wpad/WPADEncrypt.o\
	$(BUILD_DIR)/asm/RevoSDK/wpad/WPADMem.o\
	$(BUILD_DIR)/asm/RevoSDK/wpad/debug_msg.o\

DEPENDS += $(WPAD_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/wpad/wpad.a: $(WPAD_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(WPAD_FILES) > build/WPAD_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/WPAD_ofiles