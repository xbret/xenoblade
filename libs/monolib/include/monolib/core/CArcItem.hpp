#pragma once

#include <types.h>
#include "monolib/monolib_types.hpp"
#include "monolib/work.hpp"
#include "monolib/util.hpp"
#include <revolution/ARC.h>

class CArcItem : public IWorkEvent {
public:
    CArcItem(const char* pFilename);
    virtual ~CArcItem();
    virtual bool OnFileEvent(CEventFile* pEventFile);
    void func_804DEC30();
    bool func_804DEC6C(const char* pPath, void** pOutStartAddr, u32* pOutLength);

    ml::FixStr<32> unk4;
    CFileHandle* unk28;
    int unk2C;
    u8 unk30;
    const char* unk34;
    void* unk38;
    ARCHandle mArcHandle; //0x3C
};
