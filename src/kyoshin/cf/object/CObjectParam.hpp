#pragma once

#include <types.h>
#include "kyoshin/cf/object/CObjectState.hpp"

namespace cf {
    //min size: 0x38
    class CObjectParam : public CObjectState {
    public:
        virtual void CObjectParam_UnkVirtualFunc1(); //0x3C
        virtual void CObjectParam_UnkVirtualFunc2(); //0x40
        virtual void CObjectParam_UnkVirtualFunc3(); //0x44
        virtual void CObjectParam_UnkVirtualFunc4(); //0x48
        virtual BOOL CObjectParam_UnkVirtualFunc5(); //0x4C
        virtual void CObjectParam_UnkVirtualFunc6(); //0x50

        //0x0: vtable
        //0x0-10: CObjectState
        u8 unk10_3[0x28];
    };
}
