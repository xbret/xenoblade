NDEV_FILES:=\
	$(BUILD_DIR)/libs/NdevExi2A/src/DebuggerDriver.o\
	$(BUILD_DIR)/libs/NdevExi2A/src/exi2.o\

$(NDEV_FILES): INCLUDES += -i libs/NdevExi2A/include/
$(NDEV_FILES): CFLAGS += -inline auto -ipa file -func_align 4
#Ndev uses GC 3.0
$(NDEV_FILES): MWCC_VERSION := 3.0a5.2
$(NDEV_FILES): CONSOLE := GC

ifeq ($(NON_MATCHING),1)
CFLAGS += -DNON_MATCHING
endif

DEPENDS += $(NDEV_FILES:.o=.d)

$(BUILD_DIR)/libs/NdevExi2A/NdevExi2A.a: $(NDEV_FILES)
	@echo Linking... $@
	$(QUIET) mkdir -p $(dir $@)
	@echo $(NDEV_FILES) > build/NDEV_ofiles
	$(QUIET) $(LD) -library $(LIBRARY_LDFLAGS) -o $@ -lcf ldscript.lcf @build/NDEV_ofiles
