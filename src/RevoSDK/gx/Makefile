GX_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXInit.o\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXFifo.o\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXAttr.o\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXMisc.o\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXGeometry.o\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXFrameBuf.o\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXLight.o\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXTexture.o\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXBump.o\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXTev.o\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXPixel.o\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXDisplayList.o\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXTransform.o\
	$(BUILD_DIR)/asm/RevoSDK/gx/GXPerf.o\

DEPENDS += $(GX_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/gx/gx.a: $(GX_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(GX_FILES) > build/GX_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/GX_ofiles
