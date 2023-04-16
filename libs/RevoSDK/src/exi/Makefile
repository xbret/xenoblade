EXI_FILES:=\
	$(BUILD_DIR)/libs/RevoSDK/asm/exi/EXIBios.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/exi/EXIUart.o\
	$(BUILD_DIR)/libs/RevoSDK/src/exi/EXICommon.o\

DEPENDS += $(EXI_FILES:.o=.d)

$(BUILD_DIR)/libs/RevoSDK/src/exi/exi.a: $(EXI_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(EXI_FILES) > build/EXI_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/EXI_ofiles
