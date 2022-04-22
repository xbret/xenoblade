TEXT_O_FILES :=\
	$(BUILD_DIR)/asm/Dolphin/memcpy.o \
	$(BUILD_DIR)/asm/Dolphin/mem_TRK.o \
	$(BUILD_DIR)/asm/Dolphin/__mem.o \
	$(BUILD_DIR)/asm/Dolphin/__exception.o \
	$(BUILD_DIR)/asm/text_main.o \
	$(BUILD_DIR)/asm/main.o \
	$(BUILD_DIR)/asm/text.o \
	$(BUILD_DIR)/asm/sbss.o \
	$(BUILD_DIR)/asm/text_2.o \
	$(BUILD_DIR)/src/Dolphin/__start.o \
	$(BUILD_DIR)/asm/sbss_1.o \
	$(BUILD_DIR)/asm/Dolphin/__ppc_eabi_init.o \
	$(BUILD_DIR)/asm/text_3.o \
	$(BUILD_DIR)/asm/text/printf.o \
	$(BUILD_DIR)/asm/text_4.o \
	$(BUILD_DIR)/asm/text_5.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdfs.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvd.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdqueue.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvderror.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdidutils.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdFatal.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvdDeviceError.o \
	$(BUILD_DIR)/asm/Dolphin/dvd/dvd_broadway.o \
	$(BUILD_DIR)/asm/text_5_1.o \
	$(BUILD_DIR)/asm/Dolphin/OSInterrupt.o \
	$(BUILD_DIR)/asm/text_6.o \
	$(BUILD_DIR)/asm/text_7.o \
	$(BUILD_DIR)/asm/nw4r/math/math_arithmetic.o \
	$(BUILD_DIR)/asm/nw4r/math/math_triangular.o \
	$(BUILD_DIR)/asm/nw4r/math/math_types.o \
	$(BUILD_DIR)/asm/nw4r/math/math_geometry.o \
	$(BUILD_DIR)/asm/nw4r/snd/snd_AxManager.o \
	$(BUILD_DIR)/asm/text_8.o \
	$(BUILD_DIR)/asm/text_9.o

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