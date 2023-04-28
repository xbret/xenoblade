ENC_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/enc/encutility.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/enc/encjapanese.o\

DEPENDS += $(ENC_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/enc/enc.a: $(ENC_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(ENC_FILES) > build/ENC_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/ENC_ofiles
