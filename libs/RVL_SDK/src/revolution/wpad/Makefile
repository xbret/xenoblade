WPAD_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/wpad/WPAD.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/wpad/WPADHIDParser.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/wpad/WPADEncrypt.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/wpad/WPADMem.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/wpad/debug_msg.o\

DEPENDS += $(WPAD_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/wpad/wpad.a: $(WPAD_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(WPAD_FILES) > build/WPAD_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/WPAD_ofiles
