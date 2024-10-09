#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/object/CfObjectActor.hpp"

extern UNKTYPE* func_800B708C(BOOL r3);
extern UNKTYPE* func_800AD860(UNKTYPE* r3);
extern UNKTYPE* func_800C1228(UNKTYPE* r3);

namespace cf {
    //size: 0x45C0
    class CfObjectPc : public CfObjectActor {
    public:
        virtual ~CfObjectPc();
        virtual void func_800BFF20(); //0x5D4
        virtual void func_800C0080(); //0x5D8
        virtual void func_800C0524(); //0x5DC
        virtual void func_800BFFEC(); //0x5E0
        virtual void func_800C00C0(); //0x5E4
        virtual void func_800C0174(); //0x5E8
        virtual void func_800C02C4(); //0x5EC
        virtual void func_800C02EC(); //0x5F0
        virtual void func_800C032C(); //0x5F4
        virtual void func_800C03A8(); //0x5F8
        virtual void func_800C0474(); //0x5FC
        virtual void func_800C0504(); //0x600
        virtual void func_800C0514(); //0x604
        virtual void func_800C11CC(); //0x608

        inline UNKTYPE* unkInline1(){
            BOOL thing = CObjectParam_vtableFunc5();
            UNKTYPE* idk = func_800B708C(thing);
            return func_800AD860(idk);
        }

        inline UNKTYPE* unkInline2(){
            BOOL thing2 = CObjectParam_vtableFunc5();
            UNKTYPE* idk2 = func_800B708C(thing2);
            return func_800C1228(idk2);
        }

        //0x0: vtable
        //0x0-45BC: CfObjectActor
        u8 unk45BC[0x4];
    };
}
