#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/object/CfObjectMove.hpp"
#include "kyoshin/appgame/cf/object/CAIAction.hpp"
#include "kyoshin/appgame/cf/object/CActorParam.hpp"

namespace cf {
    //min size: 0x45BC
    class CfObjectActor : public CActorParam, public CAIAction, public CfObjectMove {
    public:
        CfObjectActor();
        //vtable 4 (CfObjectActor)
        virtual ~CfObjectActor();                  //0x5A0
        virtual void CfObjectActor_vtableFunc2();  //0x5A4
        virtual void CfObjectActor_vtableFunc3();  //0x5A8
        virtual void CfObjectActor_vtableFunc4();  //0x5AC
        virtual void CfObjectActor_vtableFunc5();  //0x5B0
        virtual void CfObjectActor_vtableFunc6();  //0x5B4
        virtual void CfObjectActor_vtableFunc7();  //0x5B8
        virtual void CfObjectActor_vtableFunc8();  //0x5BC
        virtual void CfObjectActor_vtableFunc9();  //0x5C0
        virtual void CfObjectActor_vtableFunc10(); //0x5C4
        virtual void CfObjectActor_vtableFunc11(); //0x5C8
        virtual void CfObjectActor_vtableFunc12(); //0x5CC
        virtual void CfObjectActor_vtableFunc13(); //0x5D0

        //0x0: vtable 1
        //0x0-3380: CActorParam
        //0x3380: vtable 2
        //0x3380-3e9c: CAIAction
        //0x3e9c: vtable 3
        //0x3e9c-45b4: CfObjectMove
        u8 unk45B4[0x8];
    };
}
