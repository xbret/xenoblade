#pragma once 

#include "types.h"
#include "monolib/work/CWorkThread.hpp"

class IGameException {
public:
    virtual void func08() = 0;
    virtual bool func0C(u32 r4) = 0;
};

class CException : public CWorkThread {
public:
    bool func_80457C8C();

    u8 unk1C4[0x200 - 0x1C4];
    IGameException* mException; //0x200
    u32 unk204;
};
