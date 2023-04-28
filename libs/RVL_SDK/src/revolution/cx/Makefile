CX_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/cx/CXStreamingUncompression.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/cx/CXUncompression.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/cx/CXSecureUncompression.o\


DEPENDS += $(CX_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/cx/cx.a: $(CX_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(CX_FILES) > build/CX_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/CX_ofiles
