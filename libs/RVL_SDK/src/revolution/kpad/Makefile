KPAD_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/kpad/KPAD.o\

DEPENDS += $(KPAD_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/kpad/kpad.a: $(KPAD_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(KPAD_FILES) > build/KPAD_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/KPAD_ofiles
