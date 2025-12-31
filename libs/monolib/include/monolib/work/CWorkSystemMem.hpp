#pragma once

#include "monolib/work/CWorkThread.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"

class CWorkSystemMem : public CWorkThread {
public:
    CWorkSystemMem(const char* pName, CWorkThread* pParent);

    DECL_WORKTHREAD_CREATE(CWorkSystemMem);

    //inline CWorkSystemMem* create(){
    //    return new (CWorkThreadSystem::getWorkMem()) CWorkSystemMem()
    //}

    //0x0: vtable
    //0x0-1c4: CWorkThread
    u8 unk1C8[0x1C8 - 0x1C4];
};
