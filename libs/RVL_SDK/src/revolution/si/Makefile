SI_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/si/SIBios.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/si/SISamplingRate.o\

DEPENDS += $(SI_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/si/si.a: $(SI_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(SI_FILES) > build/SI_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/SI_ofiles
