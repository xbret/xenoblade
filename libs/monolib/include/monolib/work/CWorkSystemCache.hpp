#pragma once

#include "monolib/work/CWorkThread.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"

class CWorkSystemCache : public CWorkThread {
public:
    CWorkSystemCache(const char* pName, CWorkThread* pParent);

    DECL_WORKTHREAD_CREATE(CWorkSystemCache);

    //inline CWorkSystemCache* create(){
    //    return new (CWorkThreadSystem::getWorkMem()) CWorkSystemCache()
    //}

    //0x0: vtable
    //0x0-1c4: CWorkThread
    u8 unk1E8[0x1E8 - 0x1C4];
};
