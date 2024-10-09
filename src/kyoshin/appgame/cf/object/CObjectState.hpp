#pragma once

#include "types.h"

namespace cf {
    //min size: 0x10
    class CObjectState {
    public:
        virtual void CObjectState_vtableFunc1();  //0x8
        virtual void CObjectState_vtableFunc2();  //0xC
        virtual void CObjectState_vtableFunc3();  //0x10
        virtual void CObjectState_vtableFunc4();  //0x14
        virtual void CObjectState_vtableFunc5();  //0x18
        virtual void CObjectState_vtableFunc6();  //0x1C
        virtual void CObjectState_vtableFunc7();  //0x20
        virtual void CObjectState_vtableFunc8();  //0x24
        virtual void CObjectState_vtableFunc9();  //0x28
        virtual void CObjectState_vtableFunc10(); //0x2C
        virtual void CObjectState_vtableFunc11(); //0x30
        virtual void CObjectState_vtableFunc12(); //0x34
        virtual void CObjectState_vtableFunc13(); //0x38

        //0x0: vtable
        u8 unk4_3[0xC];
    };
}
