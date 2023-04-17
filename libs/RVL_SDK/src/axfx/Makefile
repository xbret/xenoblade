AXFX_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/axfx/AXFXReverbHi.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/axfx/AXFXReverbHiExp.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/axfx/AXFXDelayExp.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/axfx/AXFXDelayExpDpl2.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/axfx/AXFXReverbStdExp.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/axfx/AXFXReverbStdExpDpl2.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/axfx/AXFXChorusExp.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/axfx/AXFXChorusExpDpl2.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/axfx/AXFXLfoTable.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/axfx/AXFXSrcCoef.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/axfx/AXFXHooks.o\

DEPENDS += $(AXFX_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/axfx/axfx.a: $(AXFX_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(AXFX_FILES) > build/AXFX_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/AXFX_ofiles
