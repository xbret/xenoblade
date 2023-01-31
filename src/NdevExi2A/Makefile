NDEV_FILES:=\
	$(BUILD_DIR)/asm/NdevExi2A/DebuggerDriver.o\
	$(BUILD_DIR)/asm/NdevExi2A/exi2.o\

$(NDEV_FILES): CFLAGS += -sym on

DEPENDS += $(NDEV_FILES:.o=.d)

$(BUILD_DIR)/src/NdevExi2A/NdevExi2A.a: $(NDEV_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(NDEV_FILES) > build/NDEV_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/NDEV_ofiles