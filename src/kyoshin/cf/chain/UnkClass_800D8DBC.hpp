#pragma once

#include <types.h>
#include "kyoshin/cf/chain/CChainTemp.hpp"
#include "kyoshin/cf/chain/CChainTime.hpp"
#include "kyoshin/cf/chain/CChainTimer.hpp"
#include "kyoshin/cf/object/CfObjectActor.hpp"
#include "kyoshin/cf/util/Flusher.hpp"

namespace cf {
    //size: 0xA4
    class UnkClass_800D8DBC {
    public:
        UnkClass_800D8DBC();
        ~UnkClass_800D8DBC(){}
        void func_8027D1A4();

        u16 unk0;
        u8 unk2[2];
        u32 unk4;
        u32 unk8;
        u32 unkC;
        Flusher<CfObjectActor> mObjectActorFlusher; //0x10
        CChainTemp mChainTemp; //0x1C
        CChainTime mChainTime; //0x84
        CChainTimer mChainTimer; //0x9C
    };
}
