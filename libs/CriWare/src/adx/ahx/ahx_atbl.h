#ifndef AHX_ATBL_H
#define AHX_ATBL_H

#include "types.h"

typedef struct ATblSubEntry{
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    float unk10;
    float unk14;
} ATblSubEntry;

typedef struct ATblEntry{
    ATblSubEntry entries[16];
} ATblEntry;

void AHXTBL_GetAtblInfo(ATblEntry** array_ptr, s32* size_ptr);
void AHXTBL_GetMtblInfo(float** array_ptr, s32* size_ptr);

#endif
