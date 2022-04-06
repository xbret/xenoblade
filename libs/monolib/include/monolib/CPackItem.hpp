#pragma once

#include "types.h"
#include "monolib/IWorkEvent.hpp"
#include <cstring>

struct PackHeader{
        u32 unk0;
        u32 unk4;
        u32 mFileHashTableOffset; //0x8
        u32 mPkhFilesize; //0xC
        u32 mFiles; //0x10
        u8 unk14[0x20];
        u32 mHashValTableLength; //0x34
        u8 mHashValTable[0x40]; //0x38
        //might be a struct?
        u64 mFileHashTable[]; //0x78
};

struct UnkStruct{
    int unk0;
    void* unk4; //maybe PackHeader*?
};

class CPackItem : IWorkEvent{
public:
    virtual ~CPackItem();
    virtual BOOL IWorkEvent_WorkEvent1();
    virtual BOOL OnFileEvent(UnkStruct*);//IWorkEvent::OnFileEvent
    virtual BOOL IWorkEvent_WorkEvent3();
    virtual BOOL IWorkEvent_WorkEvent4();
    virtual void IWorkEvent_WorkEvent5();
    virtual BOOL IWorkEvent_WorkEvent6();
    virtual BOOL IWorkEvent_WorkEvent7();
    virtual BOOL IWorkEvent_WorkEvent8();
    virtual BOOL IWorkEvent_WorkEvent9();
    virtual BOOL IWorkEvent_WorkEvent10();
    virtual BOOL IWorkEvent_WorkEvent11();
    virtual BOOL IWorkEvent_WorkEvent12();
    virtual BOOL IWorkEvent_WorkEvent13();
    virtual BOOL IWorkEvent_WorkEvent14();
    virtual BOOL IWorkEvent_WorkEvent15();
    virtual BOOL IWorkEvent_WorkEvent16();
    virtual BOOL IWorkEvent_WorkEvent17();
    virtual BOOL IWorkEvent_WorkEvent18();
    virtual BOOL IWorkEvent_WorkEvent19();
    virtual BOOL IWorkEvent_WorkEvent20();
    virtual BOOL IWorkEvent_WorkEvent21();
    virtual BOOL IWorkEvent_WorkEvent22();
    virtual BOOL IWorkEvent_WorkEvent23();
    virtual BOOL IWorkEvent_WorkEvent24();
    virtual BOOL IWorkEvent_WorkEvent25();
    virtual BOOL IWorkEvent_WorkEvent26();
    virtual BOOL IWorkEvent_WorkEvent27();
    virtual BOOL IWorkEvent_WorkEvent28();
    virtual BOOL IWorkEvent_WorkEvent29();
    virtual BOOL IWorkEvent_WorkEvent30();
    virtual void IWorkEvent_WorkEvent31();

    u8 unk4[0x4C-0x4];
    void* unk4C;
    PackHeader* mPackHeader; //0x50
    u32 unk54;
    u64* mFileHashTable; //0x58
    u16* unk5C; //0x5C
    u16* unk60; //0x60
    u8 unk64[8];
    u32 mHashLowerHalf; //0x6c
    u32 mHashUpperHalf; //0x70
    int unk74;
    u8 unk78;
    u8 unk79;
    u8 unk7A;

    bool func_804DE920();
    bool CalculatePackFileHash(const char*);
    void func_804DE948();
};
