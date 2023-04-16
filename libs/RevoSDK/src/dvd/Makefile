DVD_FILES:=\
	$(BUILD_DIR)/libs/RevoSDK/asm/dvd/dvdfs.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/dvd/dvd.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/dvd/dvdqueue.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/dvd/dvderror.o\
	$(BUILD_DIR)/libs/RevoSDK/src/dvd/dvdidutils.o\
	$(BUILD_DIR)/libs/RevoSDK/src/dvd/dvdFatal.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/dvd/dvdDeviceError.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/dvd/dvd_broadway.o\

DEPENDS += $(DVD_FILES:.o=.d)

$(BUILD_DIR)/libs/RevoSDK/src/dvd/dvd.a: $(DVD_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(DVD_FILES) > build/DVD_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/DVD_ofiles
