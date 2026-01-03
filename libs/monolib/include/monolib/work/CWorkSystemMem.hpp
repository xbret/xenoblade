#pragma once

#include "monolib/work/CWorkThread.hpp"
#include "monolib/util.hpp"

class CWorkSystemMem : public CWorkThread {
public:
    CWorkSystemMem(const char* pName, CWorkThread* pParent);
    virtual ~CWorkSystemMem();

    DECL_WORKTHREAD_CREATE(CWorkSystemMem);

    static mtl::ALLOC_HANDLE getHandle();

    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();

private:
    //0x0: vtable
    //0x0-1c4: CWorkThread
    mtl::ALLOC_HANDLE mHandle; //0x1C4

    static const u32 REGION_SIZE = 0x1000 - sizeof(mtl::MemBlock);

    static CWorkSystemMem* spInstance;
};
