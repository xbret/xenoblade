#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/object/CfObject.hpp"

namespace cf {
    //min size: 0xbe
    class CfObjectModel : public CfObject {
    public:
        //vtable 1 (CfObject)
        virtual ~CfObjectModel();
        //vtable 1 (CfObjectModel)
        virtual void CfObjectModel_vtableFunc1();  //0x178
        virtual void CfObjectModel_vtableFunc2();  //0x17C
        virtual void CfObjectModel_vtableFunc3();  //0x180
        virtual void CfObjectModel_vtableFunc4();  //0x184
        virtual void CfObjectModel_vtableFunc5();  //0x188
        virtual void CfObjectModel_vtableFunc6();  //0x18C
        virtual void CfObjectModel_vtableFunc7();  //0x190
        virtual void CfObjectModel_vtableFunc8();  //0x194
        virtual void CfObjectModel_vtableFunc9();  //0x198
        virtual void CfObjectModel_vtableFunc10(); //0x19C
        virtual void CfObjectModel_vtableFunc11(); //0x1A0
        virtual void CfObjectModel_vtableFunc12(); //0x1A4
        virtual void CfObjectModel_vtableFunc13(); //0x1A8
        virtual void CfObjectModel_vtableFunc14(); //0x1AC
        virtual void CfObjectModel_vtableFunc15(); //0x1B0
        virtual void CfObjectModel_vtableFunc16(); //0x1B4
        virtual void CfObjectModel_vtableFunc17(); //0x1B8
        virtual void CfObjectModel_vtableFunc18(); //0x1BC
        virtual void CfObjectModel_vtableFunc19(); //0x1C0
        virtual void CfObjectModel_vtableFunc20(); //0x1C4

        //0x0: vtable
        //0x0-70: CfObject
        u8 unk70_3[0x1C];
        u16 unk8C_3;
        u8 unk8E_3[0x30];
    };
}
