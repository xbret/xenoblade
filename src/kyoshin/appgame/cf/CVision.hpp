#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/object/IObjectInfo.hpp"

namespace cf{
    class UnkClass_801A36D0 {
    public:
        ~UnkClass_801A36D0(){}

        u8 unk0[0x4818];
    };

    class UnkClass_801A3728 {
    public:
        ~UnkClass_801A3728(){}

        u8 unk0[0x70];
        u16 unk70;
        u8 unk72[2];
        float unk74;
    };

    //size: 0x2623C
    class CVision : public IObjectInfo {
    public:
        CVision();
        virtual ~CVision();
        virtual void IObjectInfo_UnkVirtualFunc1();
        void func_801A380C();
        void func_801A929C(u32 r4);

        //0x0: vtable
        //0x0-4: IObjectInfo
        u8 unk4[0x20D4 - 0x4];
        UnkClass_801A36D0 unk20D4[8]; //0x20D4
        u8 unk26194[0x261C4 - 0x26194]; //0x26194
        UnkClass_801A3728 unk261C4; //0x261C4
    };

}
