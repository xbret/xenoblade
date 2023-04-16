NW4R_UT_FILES:=\
	$(BUILD_DIR)/libs/nw4r/src/ut/ut_LinkList.o\
	$(BUILD_DIR)/libs/nw4r/src/ut/ut_binaryFileFormat.o\
	$(BUILD_DIR)/libs/nw4r/src/ut/ut_CharStrmReader.o\
	$(BUILD_DIR)/libs/nw4r/src/ut/ut_TagProcessorBase.o\
	$(BUILD_DIR)/libs/nw4r/src/ut/ut_IOStream.o\
	$(BUILD_DIR)/libs/nw4r/src/ut/ut_FileStream.o\
	$(BUILD_DIR)/libs/nw4r/asm/ut/ut_DvdFileStream.o\
	$(BUILD_DIR)/libs/nw4r/src/ut/ut_LockedCache.o\
	$(BUILD_DIR)/libs/nw4r/src/ut/ut_Font.o\
	$(BUILD_DIR)/libs/nw4r/asm/ut/ut_ResFontBase.o\
	$(BUILD_DIR)/libs/nw4r/src/ut/ut_ResFont.o\
	$(BUILD_DIR)/libs/nw4r/asm/ut/ut_ArchiveFontBase.o\
	$(BUILD_DIR)/libs/nw4r/asm/ut/ut_PackedFont.o\
	$(BUILD_DIR)/libs/nw4r/asm/ut/ut_CharWriter.o\
	$(BUILD_DIR)/libs/nw4r/asm/ut/ut_TextWriterBase.o\


DEPENDS += $(NW4R_UT_FILES:.o=.d)

#NW4R uses GC 3.0
$(NW4R_UT_FILES): MWCC_VERSION := 3.0
$(NW4R_UT_FILES): CONSOLE := GC

$(BUILD_DIR)/libs/nw4r/src/ut/libnw4r_ut.a: $(NW4R_UT_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(NW4R_UT_FILES) > build/NW4R_UT_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/NW4R_UT_ofiles
