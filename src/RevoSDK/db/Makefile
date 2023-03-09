DB_FILES:=\
	$(BUILD_DIR)/src/RevoSDK/db/db.o\


DEPENDS += $(DB_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/db/db.a: $(DB_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(DB_FILES) > build/DB_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/DB_ofiles
