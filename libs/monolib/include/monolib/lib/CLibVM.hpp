#pragma once

#include <types.h>
#include "monolib/work/CWorkThread.hpp"

class CLibVM : public CWorkThread {
public:
    CLibVM(const char* pName, CWorkThread* pParent);

    DECL_WORKTHREAD_CREATE(CLibVM);

    static bool isInitialized();
    static CLibVM* getInstance();

    static void setCallbacks(void (*callback1)(), void (*callback2)());

    //0x0: vtable
    //0x0-1c4: CWorkThread
    u32 unk1C4;
};
