MTX_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/mtx/mtx.o\
	$(BUILD_DIR)/asm/RevoSDK/mtx/mtxvec.o\
	$(BUILD_DIR)/asm/RevoSDK/mtx/mtx44.o\
	$(BUILD_DIR)/asm/RevoSDK/mtx/vec.o\
	$(BUILD_DIR)/asm/RevoSDK/mtx/quat.o\

DEPENDS += $(MTX_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/mtx/mtx.a: $(MTX_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(MTX_FILES) > build/MTX_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/MTX_ofiles