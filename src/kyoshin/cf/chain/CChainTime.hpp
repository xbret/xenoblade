#pragma once

#include <types.h>
#include "kyoshin/cf/chain/CChainEffect.hpp"

namespace cf {
    //size: 0x18
    class CChainTime {
    public:
        u8 unk0[8];
        CChainEffect mChainEffect; //0x8
        //0x14: vtable

        CChainTime(){}
        virtual ~CChainTime(){
            func_8027CE30();
        }
        
        void func_8027CE30();
    };
}
