CRIWARE_FILES :=\
	$(BUILD_DIR)/src/CriWare/adx/libadxwii.a\
	$(BUILD_DIR)/src/CriWare/sofdec/libmwsfdwii.a\

$(BUILD_DIR)/src/CriWare/CriWare.a: $(CRIWARE_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(CRIWARE_FILES) > build/CRIWARE_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/CRIWARE_ofiles
