#!/bin/bash

OBJDUMP="$DEVKITPPC/bin/powerpc-eabi-objdump -Dz -bbinary -EB -mpowerpc -M gekko"
CFLAGS="-O4,p -nodefaults -fp hard -enum int -use_lmw_stmw on -proc gekko -func_align 4 -inline off -str pool,readonly,reuse -RTTI on -enc SJIS"
INCLUDES="-I- -i include/ -i libs/RVL_SDK/include/ -i libs/PowerPC_EABI_Support/include/std -i libs/nw4r/include/ -i libs/monolib/include/ -i src/ -i libs/NdevExi2A/include/ -i libs/PowerPC_EABI_Support/include/"
MWCC="tools/mwcc_compiler/$1/$2/mwcceppc.exe $CFLAGS $INCLUDES"

wine $MWCC -S $3
