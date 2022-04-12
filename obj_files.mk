INIT_O_FILES :=\
	$(BUILD_DIR)/asm/init.o \
	$(BUILD_DIR)/asm/Dolphin/mem_TRK.o \
	$(BUILD_DIR)/asm/Dolphin/__mem.o \
	$(BUILD_DIR)/asm/Dolphin/__exception.o \
	$(BUILD_DIR)/asm/sbss.o \
	$(BUILD_DIR)/src/Dolphin/__start.o \
	$(BUILD_DIR)/asm/sbss_1.o \
	$(BUILD_DIR)/asm/Dolphin/__ppc_eabi_init.o

TEXT_O_FILES :=\
	$(BUILD_DIR)/asm/text.o \
	$(BUILD_DIR)/asm/text_2.o \
	$(BUILD_DIR)/asm/text_3.o

EXTAB_O_FILES :=\
	$(BUILD_DIR)/asm/extab.o

EXTABINDEX_O_FILES :=\
	$(BUILD_DIR)/asm/extabindex.o

CTORS_O_FILES :=\
	$(BUILD_DIR)/asm/ctors.o

DTORS_O_FILES :=\
	$(BUILD_DIR)/asm/dtors.o

RODATA_O_FILES :=\
	$(BUILD_DIR)/asm/rodata.o

DATA_O_FILES :=\
	$(BUILD_DIR)/asm/data.o

BSS_O_FILES :=\
	$(BUILD_DIR)/asm/bss.o

SDATA_O_FILES :=\
    $(BUILD_DIR)/asm/sdata.o

SBSS_O_FILES :=

SDATA2_O_FILES :=\
    $(BUILD_DIR)/asm/sdata2.o

SBSS2_O_FILES :=\
    $(BUILD_DIR)/asm/sbss2.o