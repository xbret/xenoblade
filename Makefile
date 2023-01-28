ifneq ($(findstring MINGW,$(shell uname)),)
  WINDOWS := 1
endif
ifneq ($(findstring MSYS,$(shell uname)),)
  WINDOWS := 1
endif

NON_MATCHING ?= 0

# If 0, tells the console to chill out. (Quiets the make process.)
VERBOSE ?= 0

# If MAPGENFLAG set to 1, tells LDFLAGS to generate a mapfile, which makes linking take several minutes.
MAPGENFLAG ?= 1

ifeq ($(VERBOSE),0)
  QUIET := @
endif

#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------

NAME := xenoblade
VERSION ?= 1
VERSION := jp

BUILD_DIR := build/$(NAME).$(VERSION)
ifeq ($(EPILOGUE_PROCESS),1)
EPILOGUE_DIR := epilogue/$(NAME).$(VERSION)
endif

# Inputs
S_FILES := $(wildcard asm/*.s)
C_FILES := $(wildcard src/*.c)
CPP_FILES := $(wildcard src/*.cpp)
CPP_FILES += $(wildcard src/*.cp)
LDSCRIPT_DOL := ldscript.lcf

# Outputs
DOL     := $(BUILD_DIR)/main.dol
ELF     := $(DOL:.dol=.elf)
MAP     := $(BUILD_DIR)/$(NAME).$(VERSION).MAP


ifeq ($(MAPGENFLAG),1)
  MAPGEN := -map $(MAP)
endif

include obj_files.mk
ifeq ($(EPILOGUE_PROCESS),1)
include e_files.mk
endif

O_FILES :=  $(GAME_O_FILES) $(MW_O_FILES) $(NDEV_O_FILES) $(RVL_SDK_O_FILES) \
		   $(CRIWARE_O_FILES) $(NW4R_O_FILES) $(UTILS_O_FILES) \
		   $(MM_O_FILES) $(MONOLITHLIB_O_FILES)

#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

# Could also be 1.0?
MWCC_VERSION := 1.1
MWLD_VERSION := 1.1
CONSOLE := Wii

#Ndev uses GC 3.0
$(NDEV_O_FILES): MWCC_VERSION := 3.0
$(NDEV_O_FILES): CONSOLE := GC

# Programs
ifeq ($(WINDOWS),1)
  WINE :=
  AS      := $(DEVKITPPC)/bin/powerpc-eabi-as.exe
  CPP     := $(DEVKITPPC)/bin/powerpc-eabi-cpp.exe -P
  PYTHON  := python
else
  WIBO   := $(shell command -v wibo 2> /dev/null)
  ifdef WIBO
    WINE ?= wibo
  else
    WINE ?= wine
  endif
  # Disable wine debug output for cleanliness
  export WINEDEBUG ?= -all
  # Default devkitPPC path
  DEVKITPPC ?= /opt/devkitpro/devkitPPC
  DEPENDS   := $(DEPENDS:.d=.d.unix)
  AS      := $(DEVKITPPC)/bin/powerpc-eabi-as
  CPP     := $(DEVKITPPC)/bin/powerpc-eabi-cpp -P
  PYTHON  := python3
endif
CC      := $(WINE) tools/mwcc_compiler/$(CONSOLE)/$(MWCC_VERSION)/mwcceppc.exe
LD      := $(WINE) tools/mwcc_compiler/$(CONSOLE)/$(MWLD_VERSION)/mwldeppc.exe
DTK     := build/dtk
ELF2DOL := $(DTK) elf2dol
SHASUM  := $(DTK) shasum

# Options
INCLUDES := -i include/ -i src/
ASM_INCLUDES := -I include/

ASFLAGS := -mgekko $(ASM_INCLUDES)
ifeq ($(VERBOSE),1)
# this set of LDFLAGS outputs warnings.
LDFLAGS := $(MAPGEN) -fp hard -nodefaults
endif
ifeq ($(VERBOSE),0)
# this set of LDFLAGS generates no warnings.
LDFLAGS := $(MAPGEN) -fp hard -nodefaults -w off
endif

ifeq ($(VERBOSE),0)
# this set of ASFLAGS generates no warnings.
ASFLAGS += -W
endif

#Compiler flags
#TODO: clean this up

CFLAGS   = -enum int -inline on -use_lmw_stmw on -proc gekko -fp hard -O4,p -nodefaults -func_align 4 $(INCLUDES)

$(GAME_O_FILES): CFLAGS += -ipa file -str pool,readonly,reuse -RTTI on -enc SJIS
$(MM_O_FILES): CFLAGS += -ipa file -str pool,readonly,reuse -RTTI on -enc SJIS
$(MONOLITHLIB_O_FILES): CFLAGS += -ipa file -str pool,readonly,reuse -RTTI on -enc SJIS

$(NDEV_O_FILES): CFLAGS = -Cpp_exceptions off -enum int -inline auto -ipa file -proc gekko -fp hard -O4,p -nodefaults $(INCLUDES)
#All the functions in the Wii SDK except for bte are aligned to 16 bytes, so this is necessary.
$(RVL_SDK_O_FILES): CFLAGS += -Cpp_exceptions off -func_align 16
$(MW_O_FILES): CFLAGS += -Cpp_exceptions off

#arc.c doesn't use -use_lmw_stmw on, and uses -ipa file and (maybe rest of wii sdk too?)
$(BUILD_DIR)/src/RevoSDK/arc/arc.o: CFLAGS = -Cpp_exceptions off -enum int -inline auto -ipa file -proc gekko -fp hard -O4,p -nodefaults $(INCLUDES)
#Runtime has defaults and exceptions turned on
$(BUILD_DIR)/src/PowerPC_EABI_Support/Runtime/%.o: CFLAGS = -use_lmw_stmw on -inline on -proc gekko -fp hard -O4,p -func_align 4 $(INCLUDES)

ifeq ($(NON_MATCHING),1)
CFLAGS += -DNON_MATCHING
endif

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

### Default target ###

default: all

all: $(DOL)

ALL_DIRS := $(sort $(dir $(O_FILES)))

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

# ifeq ($(EPILOGUE_PROCESS),1)
# Make sure profile directory exists before compiling anything
# DUMMY != mkdir -p $(EPI_DIRS)
# endif

.PHONY: tools

$(DOL): $(ELF) | $(DTK)
	$(QUIET) $(ELF2DOL) $< $@
	$(QUIET) $(SHASUM) -c sha1/$(NAME).$(VERSION).sha1
ifneq ($(findstring -map,$(LDFLAGS)),)
	$(QUIET) $(PYTHON) tools/calcprogress.py $@ $(MAP)
endif

clean:
	rm -f -d -r build
	rm -f -d -r epilogue
	find . -name '*.o' -exec rm {} +
	find . -name 'ctx.c' -exec rm {} +
	find ./include -name "*.s" -type f -delete
	$(MAKE) -C tools clean
tools:
	$(MAKE) -C tools

$(DTK): tools/dtk_version
	@echo "Downloading $@"
	$(QUIET) $(PYTHON) tools/download_dtk.py $< $@

# ELF creation makefile instructions
ifeq ($(EPILOGUE_PROCESS),1)
	@echo Linking ELF $@
$(ELF): $(O_FILES) $(E_FILES) $(LDSCRIPT_DOL)
	$(QUIET) @echo $(O_FILES) > build/o_files
	$(QUIET) $(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT_DOL) @build/o_files
else
$(ELF): $(O_FILES) $(LDSCRIPT_DOL)
	@echo Linking ELF $@
	$(QUIET) @echo $(O_FILES) > build/o_files
	$(QUIET) $(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT_DOL) @build/o_files
endif

$(BUILD_DIR)/%.o: %.s | $(DTK)
	@echo Assembling $<
	$(QUIET) $(AS) $(ASFLAGS) -o $@ $<
	$(QUIET) $(DTK) elf fixup $@ $@

$(BUILD_DIR)/%.o: %.c
	@echo "Compiling " $<
	$(QUIET) $(CC) $(CFLAGS) -lang=c99 -c -o $@ $<
	
$(BUILD_DIR)/%.o: %.cpp
	@echo "Compiling " $<
	$(QUIET) $(CC) $(CFLAGS) -lang=c++ -c -o $@ $<

### Debug Print ###

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true