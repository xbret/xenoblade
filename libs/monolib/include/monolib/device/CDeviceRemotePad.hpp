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

    static bool isConnected(u32 index);
    static u32 getHeldButtonFlags(u32 index);
    static u32 getPressedButtonFlags(u32 index);
    static CPad* getMainGCPad();
    static CPad* getPadData(u32 index);
    static CWpadStatus* getWpadStatus(u32 index);

    static int getFirstConnectedWpadPort(){
        for(int i = 0; i < WPAD_MAX_CONTROLLERS; i++){
            if(isConnected(i)){
                return i;
            }
        }

        return WPAD_CHAN_INVALID;
    }

    //0x0: vtable
    //0x0-1c8: CDeviceBase
    PadUpdateFunc mPadUpdateFunc; //0x1C8
    CPad* mpPads[8]; //0x1CC
    u32 unk1EC;

private:
    static const int MAX_CHILD = 0;

    static CDeviceRemotePad* spInstance;
};
