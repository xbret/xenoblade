#pragma once

#include <types.h>
#include "monolib/work/CWorkThread.hpp"
#include <nw4r/lyt/lyt_arcResourceAccessor.h>

class CLibLayout : public CWorkThread {
public:
    CLibLayout(const char* pName, CWorkThread* pParent);

    DECL_WORKTHREAD_CREATE(CLibLayout);

    static bool isInitialized();
    static CLibLayout* getInstance();
    static nw4r::lyt::ArcResourceAccessor* createArcResourceAccessor();

    //0x0: vtable
    //0x0-1c4: CWorkThread
    u32 unk1C4;
    u8 unk1C8[0x2C0 - 0x1C8];
};
