VI_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/vi/vi.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/vi/i2c.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/vi/vi3in1.o\

DEPENDS += $(VI_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/vi/vi.a: $(VI_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(VI_FILES) > build/VI_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/VI_ofiles
