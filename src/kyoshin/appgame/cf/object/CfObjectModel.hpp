#pragma once

#include <types.h>
#include "kyoshin/appgame/cf/object/CfObject.hpp"

namespace cf {
    //min size: 0xbe
    class CfObjectModel : public CfObject {
    public:
        //vtable 1 (CfObject)
        virtual ~CfObjectModel();
        //vtable 1 (CfObjectModel)
        virtual void CfObjectModel_UnkVirtualFunc1();  //0x178
        virtual void CfObjectModel_UnkVirtualFunc2();  //0x17C
        virtual void CfObjectModel_UnkVirtualFunc3();  //0x180
        virtual void CfObjectModel_UnkVirtualFunc4();  //0x184
        virtual void CfObjectModel_UnkVirtualFunc5();  //0x188
        virtual void CfObjectModel_UnkVirtualFunc6();  //0x18C
        virtual void CfObjectModel_UnkVirtualFunc7();  //0x190
        virtual void CfObjectModel_UnkVirtualFunc8();  //0x194
        virtual void CfObjectModel_UnkVirtualFunc9();  //0x198
        virtual void CfObjectModel_UnkVirtualFunc10(); //0x19C
        virtual void CfObjectModel_UnkVirtualFunc11(); //0x1A0
        virtual void CfObjectModel_UnkVirtualFunc12(); //0x1A4
        virtual void CfObjectModel_UnkVirtualFunc13(); //0x1A8
        virtual void CfObjectModel_UnkVirtualFunc14(); //0x1AC
        virtual void CfObjectModel_UnkVirtualFunc15(); //0x1B0
        virtual void CfObjectModel_UnkVirtualFunc16(); //0x1B4
        virtual void CfObjectModel_UnkVirtualFunc17(); //0x1B8
        virtual void CfObjectModel_UnkVirtualFunc18(); //0x1BC
        virtual void CfObjectModel_UnkVirtualFunc19(); //0x1C0
        virtual void CfObjectModel_UnkVirtualFunc20(); //0x1C4

        //0x0: vtable
        //0x0-70: CfObject
        u8 unk70_3[0x1C];
        u16 unk8C_3;
        u8 unk8E_3[0x30];
    };
}
