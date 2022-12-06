
#include "NdevExi2A/exi2.h"

#include "RevoSDK/exi/EXIBios.h"
#include "RevoSDK/exi/EXICommon.h"
#include "RevoSDK/os/OSInterrupt.h"

static BOOL __EXI2Select(void) {
    u32 temp = EXI_CD006800[EXI_CHAN_2].WORD_0x0;
    EXI_CD006800[EXI_CHAN_2].WORD_0x0 = ((temp & 0x405) | 0xC0);
    return TRUE;
}

static BOOL __EXI2Deselect(void) {
    u32 temp = EXI_CD006800[EXI_CHAN_2].WORD_0x0;
    EXI_CD006800[EXI_CHAN_2].WORD_0x0 = temp & 0x405;
    return TRUE;
}

static BOOL __EXI2Sync(void) {
    while (EXI_CD006800[EXI_CHAN_2].WORD_0xC & 0x1) {
    }
    return TRUE;
}

BOOL __EXI2Imm(void* mem, int size, EXIType type) {
    int i;

    if (type != EXI_READ) {
        u32 val = 0;

        for (i = 0; i < size; i++) {
            const u8* bmem = (const u8*)mem;
            val |= bmem[i] << (3 - i) * 8;
        }

        EXI_CD006800[EXI_CHAN_2].WORD_0x10 = val;
    }

    EXI_CD006800[EXI_CHAN_2].WORD_0xC = type << 2 | 1 | (size - 1) * 16;
    __EXI2Sync();

    if (type == EXI_READ) {
        u32 val = EXI_CD006800[EXI_CHAN_2].WORD_0x10;

        u8* bmem = (u8*)mem;
        for (i = 0; i < size; i++, bmem++) {
            *bmem = val >> (3 - i) * 8;
        }
    }

    return TRUE;
}

void __DBEXIInit(void) {
    u32 val0, val1;

    __OSMaskInterrupts(0x18000);
    while ((EXI_CD006800[EXI_CHAN_2].WORD_0xC & 1) == 1U) {
    }
    EXI_CD006800[EXI_CHAN_2].WORD_0x0 = 0;

    val0 = 0xB4000000;
    val1 = 0xD4000000;

    __EXI2Select();
    __EXI2Imm(&val0, 4, EXI_WRITE);
    __EXI2Sync();

    __EXI2Imm(&val1, 4, EXI_WRITE);
    __EXI2Sync();
    __EXI2Deselect();
}

BOOL __DBEXIReadReg(u32 val, void* mem, s32 size) {
    BOOL error = FALSE;
    u32 read_val = 0;

    error = error | !__EXI2Select();
    error = error | !__EXI2Imm(&val, sizeof(val), EXI_WRITE);
    error = error | !__EXI2Sync();
    error = error | !__EXI2Imm(&read_val, sizeof(read_val), EXI_READ);
    error = error | !__EXI2Sync();
    error = error | !__EXI2Deselect();

    switch (size) {
    case 1:
        *(u8*)mem = read_val >> 24;
        break;
    case 2:
        *(u16*)mem = read_val >> 24 | read_val >> 8 & 0xFF00;
        break;
    default:
        *(u32*)mem = __EXISwap32(read_val);
        break;
    }

    return error == FALSE;
}

BOOL __DBEXIWriteReg(u32 val, const void* mem, s32 size) {
    BOOL error = FALSE;
    u32 write_val = 0;

    switch (size) {
    case 1:
        write_val = *(u8*)mem << 24;
        break;
    case 2:
        write_val = *(u16*)mem << 24 | (*(u16*)mem & 0xFF00) << 8;
        break;
    default:
        write_val = __EXISwap32(*(u32*)mem);
        break;
    }

    error = error | !__EXI2Select();
    error = error | !__EXI2Imm(&val, sizeof(val), EXI_WRITE);
    error = error | !__EXI2Sync();
    error = error | !__EXI2Imm(&write_val, sizeof(write_val), EXI_WRITE);
    error = error | !__EXI2Sync();
    error = error | !__EXI2Deselect();

    return error == FALSE;
}

BOOL __DBEXIReadRam(u32 val, void* mem, s32 size) {
    BOOL error = FALSE;
    u32 read_val;
    u32* lmem = (u32*)mem;

    error = error | !__EXI2Select();
    error = error | !__EXI2Imm(&val, sizeof(val), EXI_WRITE);
    error = error | !__EXI2Sync();

    for (; size > 0; size -= 4) {
        error = error | !__EXI2Imm(&read_val, sizeof(read_val), EXI_READ);
        error = error | !__EXI2Sync();
        *lmem++ = read_val;
    }

    error = error | !__EXI2Deselect();

    return error == FALSE;
}

BOOL __DBEXIWriteRam(u32 val, const void* mem, s32 size) {
    BOOL error = FALSE;
    u32* lmem = (u32*)mem;

    error = error | !__EXI2Select();
    error = error | !__EXI2Imm(&val, sizeof(val), EXI_WRITE);
    error = error | !__EXI2Sync();

    for (; size > 0; size -= 4) {
        u32 write_val = *lmem++;
        error = error | !__EXI2Imm(&write_val, sizeof(write_val), EXI_WRITE);
        error = error | !__EXI2Sync();
    }

    error = error | !__EXI2Deselect();

    return error == FALSE;
}