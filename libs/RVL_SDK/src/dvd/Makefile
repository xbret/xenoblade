DVD_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/dvd/dvdfs.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/dvd/dvd.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/dvd/dvdqueue.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/dvd/dvderror.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/dvd/dvdidutils.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/dvd/dvdFatal.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/dvd/dvdDeviceError.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/dvd/dvd_broadway.o\

DEPENDS += $(DVD_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/dvd/dvd.a: $(DVD_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(DVD_FILES) > build/DVD_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/DVD_ofiles
