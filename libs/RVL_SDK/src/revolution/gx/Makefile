GX_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/gx/GXInit.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/gx/GXFifo.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/gx/GXAttr.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/gx/GXMisc.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/gx/GXGeometry.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/gx/GXFrameBuf.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/gx/GXLight.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/gx/GXTexture.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/gx/GXBump.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/gx/GXTev.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/gx/GXPixel.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/gx/GXDisplayList.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/gx/GXTransform.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/gx/GXPerf.o\

DEPENDS += $(GX_FILES:.o=.d)

#GXBump.c needs 1.0 for one function
$(BUILD_DIR)/libs/RVL_SDK/src/revolution/gx/GXBump.o: MWCC_VERSION := 1.0a

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/gx/gx.a: $(GX_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(GX_FILES) > build/GX_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/GX_ofiles
