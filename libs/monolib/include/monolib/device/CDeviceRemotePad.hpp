#pragma once

#include <types.h>
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/core/CPadManager.hpp"

//size: 0x1f0
class CDeviceRemotePad : public CDeviceBase {
public:
    CDeviceRemotePad(const char* pName, CWorkThread* pParent);
    ~CDeviceRemotePad();
    static CDeviceRemotePad* getInstance();

    DECL_WORKTHREAD_CREATE(CDeviceRemotePad);

    virtual void wkUpdate();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();

    static bool func_804479C4(u32 index);
    static u32 func_804479DC(u32 index);
    static u32 func_804479F4(u32 index);
    static CPad* getGCPad();
    static CPad* getPadData(u32 index);
    static CWpadStatus* func_80447A30(u32 index);

    //0x0: vtable
    //0x0-1c8: CDeviceBase
    PadUpdateCallback unk1C8;
    CPad* unk1CC[8];
    u32 unk1EC;

private:
    static const int MAX_CHILD = 0;

    static CDeviceRemotePad* spInstance;
};
