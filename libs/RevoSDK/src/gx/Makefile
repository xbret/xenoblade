GX_FILES:=\
	$(BUILD_DIR)/libs/RevoSDK/asm/gx/GXInit.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/gx/GXFifo.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/gx/GXAttr.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/gx/GXMisc.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/gx/GXGeometry.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/gx/GXFrameBuf.o\
	$(BUILD_DIR)/libs/RevoSDK/src/gx/GXLight.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/gx/GXTexture.o\
	$(BUILD_DIR)/libs/RevoSDK/src/gx/GXBump.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/gx/GXTev.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/gx/GXPixel.o\
	$(BUILD_DIR)/libs/RevoSDK/src/gx/GXDisplayList.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/gx/GXTransform.o\
	$(BUILD_DIR)/libs/RevoSDK/asm/gx/GXPerf.o\

DEPENDS += $(GX_FILES:.o=.d)

#GXBump.c needs 1.0 for one function
$(BUILD_DIR)/libs/RevoSDK/src/gx/GXBump.o: MWCC_VERSION := 1.0

$(BUILD_DIR)/libs/RevoSDK/src/gx/gx.a: $(GX_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(GX_FILES) > build/GX_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/GX_ofiles
