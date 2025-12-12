#pragma once

#include <types.h>
#include "kyoshin/cf/object/CfObjectModel.hpp"

namespace cf {
    //min size: 0x715
    class CfObjectMove : public CfObjectModel {
    public:
        CfObjectMove();
        //vtable 1 (CfObject)
        virtual ~CfObjectMove();
        //vtable 1 (CfObjectMove)
        virtual void CfObjectMove_UnkVirtualFunc1();  //0x1C8
        virtual void CfObjectMove_UnkVirtualFunc2();  //0x1CC
        virtual void CfObjectMove_UnkVirtualFunc3();  //0x1D0
        virtual void CfObjectMove_UnkVirtualFunc4();  //0x1D4
        virtual void CfObjectMove_UnkVirtualFunc5();  //0x1D8
        virtual void CfObjectMove_UnkVirtualFunc6();  //0x1DC
        virtual void CfObjectMove_UnkVirtualFunc7();  //0x1E0
        virtual void CfObjectMove_UnkVirtualFunc8();  //0x1E4
        virtual void CfObjectMove_UnkVirtualFunc9();  //0x1E8
        virtual void CfObjectMove_UnkVirtualFunc10(); //0x1EC
        virtual void CfObjectMove_UnkVirtualFunc11(); //0x1F0
        virtual void CfObjectMove_UnkVirtualFunc12(); //0x1F4
        virtual void CfObjectMove_UnkVirtualFunc13(); //0x1F8
        virtual void CfObjectMove_UnkVirtualFunc14(); //0x1FC
        virtual void CfObjectMove_UnkVirtualFunc15(); //0x200
        virtual void CfObjectMove_UnkVirtualFunc16(); //0x204
        virtual void CfObjectMove_UnkVirtualFunc17(); //0x208
        virtual void CfObjectMove_UnkVirtualFunc18(); //0x20C
        virtual void CfObjectMove_UnkVirtualFunc19(); //0x210
        virtual void CfObjectMove_UnkVirtualFunc20(); //0x214
        virtual void CfObjectMove_UnkVirtualFunc21(); //0x218
        virtual void CfObjectMove_UnkVirtualFunc22(); //0x21C
        virtual void CfObjectMove_UnkVirtualFunc23(); //0x220

        //0x0: vtable
        //0x0-BE: CfObjectModel
        u8 unkBE_3[0x657];
        u8 unk715[3]; //might not belong here
    };
}
