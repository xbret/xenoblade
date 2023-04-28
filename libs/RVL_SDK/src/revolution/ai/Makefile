AI_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/ai/ai.o\

DEPENDS += $(AI_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/ai/ai.a: $(AI_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(AI_FILES) > build/AI_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/AI_ofiles
