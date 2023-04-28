AX_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/ax/AX.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/ax/AXAlloc.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/ax/AXAux.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/ax/AXCL.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/ax/AXOut.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/ax/AXSPB.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/revolution/ax/AXVPB.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/ax/AXProf.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/ax/AXComp.o\
	$(BUILD_DIR)/libs/RVL_SDK/src/revolution/ax/DSPCode.o\

DEPENDS += $(AX_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/revolution/ax/ax.a: $(AX_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(AX_FILES) > build/AX_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/AX_ofiles
