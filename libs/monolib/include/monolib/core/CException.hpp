#pragma once 

#include <types.h>
#include "monolib/work.hpp"

class IGameException {
public:
    virtual ~IGameException(){}
    virtual bool IGameException_UnkVirtualFunc1(u32 r4) = 0;
};

class CException : public CWorkThread {
public:
    bool func_80457C8C();

    u8 unk1C4[0x200 - 0x1C4];
    IGameException* mException; //0x200
    u32 unk204;
};
