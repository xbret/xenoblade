#pragma once

#include <types.h>

namespace cf {
    //min size: 0x10
    class CObjectState {
    public:
        virtual void CObjectState_UnkVirtualFunc1();  //0x8
        virtual void CObjectState_UnkVirtualFunc2();  //0xC
        virtual void CObjectState_UnkVirtualFunc3();  //0x10
        virtual void CObjectState_UnkVirtualFunc4();  //0x14
        virtual void CObjectState_UnkVirtualFunc5();  //0x18
        virtual void CObjectState_UnkVirtualFunc6();  //0x1C
        virtual void CObjectState_UnkVirtualFunc7();  //0x20
        virtual void CObjectState_UnkVirtualFunc8();  //0x24
        virtual void CObjectState_UnkVirtualFunc9();  //0x28
        virtual void CObjectState_UnkVirtualFunc10(); //0x2C
        virtual void CObjectState_UnkVirtualFunc11(); //0x30
        virtual void CObjectState_UnkVirtualFunc12(); //0x34
        virtual void CObjectState_UnkVirtualFunc13(); //0x38

        //0x0: vtable
        u8 unk4_3[0xC];
    };
}
