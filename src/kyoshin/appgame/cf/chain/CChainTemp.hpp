#pragma once

#include "types.h"
#include <cstring>

namespace cf {
    //size: 0x68
    class CChainTemp {
    public:
        u8 unk0[0x60];
        bool unk60; //0x60
        //0x64: vtable

        CChainTemp(){
            std::memset(unk0, 0, sizeof(unk0));
            unk60 = false;
        }
        virtual ~CChainTemp(){}
        virtual void CChainTemp_UnkVirtualFunc1(); //0
    };
}
