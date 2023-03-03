AX_FILES:=\
	$(BUILD_DIR)/asm/RevoSDK/ax/AX.o\
	$(BUILD_DIR)/asm/RevoSDK/ax/AXAlloc.o\
	$(BUILD_DIR)/asm/RevoSDK/ax/AXAux.o\
	$(BUILD_DIR)/asm/RevoSDK/ax/AXCL.o\
	$(BUILD_DIR)/asm/RevoSDK/ax/AXOut.o\
	$(BUILD_DIR)/asm/RevoSDK/ax/AXSPB.o\
	$(BUILD_DIR)/asm/RevoSDK/ax/AXVPB.o\
	$(BUILD_DIR)/asm/RevoSDK/ax/AXProf.o\
	$(BUILD_DIR)/asm/RevoSDK/ax/AXComp.o\
	$(BUILD_DIR)/asm/RevoSDK/ax/DSPCode.o\

DEPENDS += $(AX_FILES:.o=.d)

$(BUILD_DIR)/src/RevoSDK/ax/ax.a: $(AX_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(AX_FILES) > build/AX_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/AX_ofiles
