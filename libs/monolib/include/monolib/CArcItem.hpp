#pragma once

#include "types.h"
#include "monolib/IWorkEvent.hpp"

class CArcItem : IWorkEvent {
public:
    CArcItem(int param);
    virtual ~CArcItem();
    virtual bool OnFileEvent();

    int unk4;
    u8 unk8[0x24 - 0x8];
    void* unk24;
    char* unk28;
    int unk2C;
    u8 unk30;
};
