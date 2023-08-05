EUART_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/euart/euart.o\

DEPENDS += $(EUART_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/euart/euart.a: $(EUART_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(EUART_FILES) > build/EUART_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/EUART_ofiles
