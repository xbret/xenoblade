AXFX_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/axfx/AXFXReverbHi.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/axfx/AXFXReverbHiExp.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/axfx/AXFXDelayExp.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/axfx/AXFXDelayExpDpl2.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/axfx/AXFXReverbStdExp.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/axfx/AXFXReverbStdExpDpl2.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/axfx/AXFXChorusExp.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/axfx/AXFXChorusExpDpl2.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/axfx/AXFXLfoTable.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/axfx/AXFXSrcCoef.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/axfx/AXFXHooks.o\

DEPENDS += $(AXFX_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/axfx/axfx.a: $(AXFX_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(AXFX_FILES) > build/AXFX_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/AXFX_ofiles
