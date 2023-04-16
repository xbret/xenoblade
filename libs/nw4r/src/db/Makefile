NW4R_DB_FILES:=\
	$(BUILD_DIR)/libs/nw4r/asm/db/db_console.o\
	$(BUILD_DIR)/libs/nw4r/asm/db/db_assert.o\

DEPENDS += $(NW4R_DB_FILES:.o=.d)

$(BUILD_DIR)/libs/nw4r/src/db/libnw4r_db.a: $(NW4R_DB_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(NW4R_DB_FILES) > build/NW4R_DB_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/NW4R_DB_ofiles
