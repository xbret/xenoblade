AXFX_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/axfx/AXFXReverbHi.o\
	$(BUILD_DIR)/asm/RevoSDK/axfx/AXFXReverbHiExp.o\
	$(BUILD_DIR)/asm/RevoSDK/axfx/AXFXDelayExp.o\
	$(BUILD_DIR)/asm/RevoSDK/axfx/AXFXDelayExpDpl2.o\
	$(BUILD_DIR)/asm/RevoSDK/axfx/AXFXReverbStdExp.o\
	$(BUILD_DIR)/asm/RevoSDK/axfx/AXFXReverbStdExpDpl2.o\
	$(BUILD_DIR)/asm/RevoSDK/axfx/AXFXChorusExp.o\
	$(BUILD_DIR)/asm/RevoSDK/axfx/AXFXChorusExpDpl2.o\
	$(BUILD_DIR)/src/RevoSDK/axfx/AXFXLfoTable.o\
	$(BUILD_DIR)/src/RevoSDK/axfx/AXFXSrcCoef.o\
	$(BUILD_DIR)/src/RevoSDK/axfx/AXFXHooks.o\

DEPENDS += $(AXFX_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/axfx/axfx.a: $(AXFX_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(AXFX_FILES) > build/AXFX_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/AXFX_ofiles
