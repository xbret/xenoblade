MTX_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/mtx/mtx.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/mtx/mtxvec.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/mtx/mtx44.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/mtx/vec.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/mtx/quat.o\

DEPENDS += $(MTX_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/mtx/mtx.a: $(MTX_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(MTX_FILES) > build/MTX_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/MTX_ofiles
