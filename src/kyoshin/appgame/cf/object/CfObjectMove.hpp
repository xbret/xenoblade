#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/object/CfObjectModel.hpp"

namespace cf {
    //min size: 0x715
    class CfObjectMove : public CfObjectModel {
    public:
        //vtable 1 (CfObject)
        virtual ~CfObjectMove();
        //vtable 1 (CfObjectMove)
        virtual void CfObjectMove_vtableFunc1();  //0x1C8
        virtual void CfObjectMove_vtableFunc2();  //0x1CC
        virtual void CfObjectMove_vtableFunc3();  //0x1D0
        virtual void CfObjectMove_vtableFunc4();  //0x1D4
        virtual void CfObjectMove_vtableFunc5();  //0x1D8
        virtual void CfObjectMove_vtableFunc6();  //0x1DC
        virtual void CfObjectMove_vtableFunc7();  //0x1E0
        virtual void CfObjectMove_vtableFunc8();  //0x1E4
        virtual void CfObjectMove_vtableFunc9();  //0x1E8
        virtual void CfObjectMove_vtableFunc10(); //0x1EC
        virtual void CfObjectMove_vtableFunc11(); //0x1F0
        virtual void CfObjectMove_vtableFunc12(); //0x1F4
        virtual void CfObjectMove_vtableFunc13(); //0x1F8
        virtual void CfObjectMove_vtableFunc14(); //0x1FC
        virtual void CfObjectMove_vtableFunc15(); //0x200
        virtual void CfObjectMove_vtableFunc16(); //0x204
        virtual void CfObjectMove_vtableFunc17(); //0x208
        virtual void CfObjectMove_vtableFunc18(); //0x20C
        virtual void CfObjectMove_vtableFunc19(); //0x210
        virtual void CfObjectMove_vtableFunc20(); //0x214
        virtual void CfObjectMove_vtableFunc21(); //0x218
        virtual void CfObjectMove_vtableFunc22(); //0x21C
        virtual void CfObjectMove_vtableFunc23(); //0x220

        //0x0: vtable
        //0x0-BE: CfObjectModel
        u8 unkBE_3[0x657];
        u8 unk715[3]; //might not belong here
    };
}
