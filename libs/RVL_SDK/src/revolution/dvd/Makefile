DVD_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/dvd/dvdfs.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/dvd/dvd.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/dvd/dvdqueue.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/dvd/dvderror.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/dvd/dvdidutils.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/dvd/dvdFatal.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/dvd/dvdDeviceError.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/dvd/dvd_broadway.o\

DEPENDS += $(DVD_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/dvd/dvd.a: $(DVD_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(DVD_FILES) > build/DVD_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/DVD_ofiles
