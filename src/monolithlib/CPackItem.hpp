#pragma once

#include "types.h"
#include "stl/string.h"
#include "kyoshin/"

struct PackHeader{
        u32 unk0;
        u32 unk4;
        u32 fileHashTableOffset; //0x8
        u32 pkhFilesize; //0xC
        u32 files; //0x10
        u8 unk14[0x20];
        u32 hashValTableLength; //0x34
        u8 hashValTable[0x40]; //0x38
        //might be a struct?
        u64 fileHashTable[]; //0x78
};

struct UnkStruct{
    int unk0;
    void* unk4; //maybe PackHeader*?
};

class CPackItem : IWorkEvent{
public:
    virtual ~CPackItem();
    virtual u32 IWorkEvent_80039E28();
    virtual void func_804DE990();//IWorkEvent_80039E20
    virtual u32 IWorkEvent_80039E18();
    virtual u32 IWorkEvent_80039E10();
    virtual void IWorkEvent_80039E0C();
    virtual u32 IWorkEvent_80039E04();
    virtual u32 IWorkEvent_80039DFC();
    virtual u32 IWorkEvent_80039DF4();
    virtual u32 IWorkEvent_80039DEC();
    virtual u32 IWorkEvent_80039DE4();
    virtual u32 IWorkEvent_80039DDC();
    virtual u32 IWorkEvent_80039DD4();
    virtual u32 IWorkEvent_80039DCC();
    virtual u32 IWorkEvent_80039DC4();
    virtual u32 IWorkEvent_80039DBC();
    virtual u32 IWorkEvent_80039DB4();
    virtual u32 IWorkEvent_80039DAC();
    virtual u32 IWorkEvent_80039DA4();
    virtual u32 IWorkEvent_80039D9C();
    virtual u32 IWorkEvent_80039D94();
    virtual u32 IWorkEvent_80039D8C();
    virtual u32 IWorkEvent_80039D84();
    virtual u32 IWorkEvent_80039D7C();
    virtual u32 IWorkEvent_80039D74();
    virtual u32 IWorkEvent_80039D6C();
    virtual u32 IWorkEvent_80039D64();
    virtual u32 IWorkEvent_80039D5C();
    virtual u32 IWorkEvent_80039D54();
    virtual u32 IWorkEvent_80039D4C();
    virtual u32 IWorkEvent_80039D44();
    virtual void IWorkEvent_80039D40();

    u8 unk4[0x4C-0x4];
    void* unk4C;
    PackHeader* packHeader; //0x50
    u32 unk54;
    u64* fileHashTablePtr; //0x58
    u16* unk5C; //0x5C
    u16* unk60; //0x60
    u8 unk64[8];
    u32 hashLowerHalf; //0x6c
    u32 hashUpperHalf; //0x70
    int unk74;
    u8 unk78;
    u8 unk79;
    u8 unk7A;

    bool func_804DE920();
    bool func_804DE990(UnkStruct*);
    bool CalculatePackFileHash(const char*);
    void func_804DE948();
};