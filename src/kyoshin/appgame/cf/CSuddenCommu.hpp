#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/object/IObjectInfo.hpp"

namespace cf{
    //size: 0x30?
    class CSuddenCommu : public IObjectInfo {
    public:
        CSuddenCommu();
        virtual ~CSuddenCommu(){}
        virtual void IObjectInfo_vtableFunc1();

        //0x0: vtable
        //0x0-4: IObjectInfo?
        u8 unk4[0x30 - 0x4];
    };
}
