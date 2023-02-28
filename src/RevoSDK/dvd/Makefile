DVD_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvdfs.o\
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvd.o\
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvdqueue.o\
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvderror.o\
	$(BUILD_DIR)/src/RevoSDK/dvd/dvdidutils.o\
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvdFatal.o\
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvdDeviceError.o\
	$(BUILD_DIR)/asm/RevoSDK/dvd/dvd_broadway.o\

DEPENDS += $(DVD_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/dvd/dvd.a: $(DVD_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(DVD_FILES) > build/DVD_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/DVD_ofiles