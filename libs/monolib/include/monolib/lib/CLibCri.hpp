#pragma once

#include "monolib/device/CDeviceVICb.hpp"
#include "monolib/work/CWorkUtil.hpp"
#include "monolib/work/CWorkThread.hpp"
#include "monolib/util/CErrorWii.hpp"

//size: 0x1d0
class CLibCri : public CWorkThread, public CDeviceVICb, public IErrorWii {
public:
    CLibCri(const char* pName, CWorkThread* pWorkThread);
    static CLibCri* getInstance();
    virtual void errorWiiCB();

    static inline CLibCri* create(const char* pName, CWorkThread* pWorkThread){
        CLibCri* lib = new (CWorkThreadSystem::getWorkMem()) CLibCri(pName, pWorkThread);
        CWorkUtil::entryWork(lib, pWorkThread, false);
        return lib;
    }

    //0x0: vtable
    //0x0-1c4: CWorkThread
    //0x1c4-1c8: CDeviceVICb
    //0x1c8-1cc: UnkClass_80447FDC
    u32 unk1D0;
};
