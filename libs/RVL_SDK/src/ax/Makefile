AX_FILES:=\
	$(BUILD_DIR)/libs/RVL_SDK/asm/ax/AX.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/ax/AXAlloc.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/ax/AXAux.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/ax/AXCL.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/ax/AXOut.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/ax/AXSPB.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/ax/AXVPB.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/ax/AXProf.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/ax/AXComp.o\
	$(BUILD_DIR)/libs/RVL_SDK/asm/ax/DSPCode.o\

DEPENDS += $(AX_FILES:.o=.d)

$(BUILD_DIR)/libs/RVL_SDK/src/ax/ax.a: $(AX_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(AX_FILES) > build/AX_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/AX_ofiles
