#pragma once

#include <types.h>
#include "monolib/work/CWorkThread.hpp"
#include "monolib/util.hpp"

//size: 0x1ec
class CProc : public CWorkThread {
public:
    CProc(const char* pName, CWorkThread* pWorkThread, s16 capacity);
    virtual ~CProc();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();

    void pssDetachView();

    static CWorkThread* func_8043917C(CWorkThread* pThread);
    void func_804391A8();

    //0x0: vtable
    //0x0-1c4: CWorkThread
    reslist<u32> unk1C4;
    u32 unk1E4;
    u32 unk1E8;
};
