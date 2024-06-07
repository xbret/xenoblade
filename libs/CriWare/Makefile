CRIWARE_FILES :=\
	$(BUILD_DIR)/libs/CriWare/src/adx/libadxwii.a\
	$(BUILD_DIR)/libs/CriWare/src/sofdec/libmwsfdwii.a\

#CriWare doesn't use the sdata sections
$(CRIWARE_FILES): CFLAGS += -sdata 0 -sdata2 0 -Cpp_exceptions off

$(CRIWARE_FILES): INCLUDES += -i libs/CriWare/src/

$(BUILD_DIR)/libs/CriWare/CriWare.a: $(CRIWARE_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(CRIWARE_FILES) > build/CRIWARE_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/CRIWARE_ofiles
