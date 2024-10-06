#pragma once

#include "types.h"
#include "kyoshin/appgame/cf/IFactoryEvent.hpp"
#include "kyoshin/appgame/cf/object/CfObjectActor.hpp"
#include "kyoshin/appgame/cf/IBattleEvent.hpp"
#include "kyoshin/appgame/cf/chain/CChain.hpp"
#include "kyoshin/appgame/cf/chain/UnkClass_800D8DBC.hpp"
#include "kyoshin/appgame/cf/CVision.hpp"
#include "kyoshin/appgame/cf/CSuddenCommu.hpp"
#include "monolib/reslist.hpp"
#include <cstring>

namespace cf{
    class UnkClass_8018C5FC {
    public:
        UnkClass_8018C5FC();
        
        u8 unk0[8];
    };

    class UnkClass_80192BF4 {
    public:
        UnkClass_80192BF4();
        void __ct__80192C10();

        u8 unk0[0xC];
    };

    struct CBattleManager_Struct1 {
        u32 unk0[64];

        CBattleManager_Struct1(){
            u32* r31 = (u32*)((u32)unk0 + sizeof(unk0));
            u32* r30 = unk0;
            do{
                std::memset(r30, 0, sizeof(u32) * 2);
                r30 += 2;
            } while(r30 < r31);
            std::memset(unk0, 0, sizeof(unk0));
        }
    };

    //size: 0x283D8
    class CBattleManager : public IFactoryEvent {
    public:
        CBattleManager();
        virtual ~CBattleManager(); //0x8
        virtual void FactoryEvent2(); //0x10
        virtual void func_80085220(u32 r4, u32 r5); //0x1C
        virtual void func_800E2584(); //0x20
        virtual void func_800F42A0(); //0x24
        virtual void func_800885F0(); //0x28
        virtual void func_800EA410(); //0x2C
        virtual void func_800EA420(); //0x30
        virtual void func_800EA460(); //0x34
        virtual void func_800EA470(); //0x38
        virtual void func_800EA998(); //0x3C

        static CBattleManager* getInstance();
        static void func_800D9190();
        static void func_800D91D0();
        void func_800D9218();

        //0x0: vtable
        //0x0-4: IFactoryEvent
        reslist<CfObjectActor*> mActorList1; //0x4
        reslist<CfObjectActor*> mActorList2; //0x24
        reslist<CfObjectActor*> mActorList3; //0x44
        reslist<IBattleEvent*> mBattleEventList; //0x64
        u32 unk84; //0x84
        float unk88;
        u32 unk8C;
        float unk90;
        CBattleManager_Struct1 unk94;
        UnkClass_8018C5FC unk194; //0x194
        UnkClass_80192BF4 unk19C; //0x19C
        CChain mChain; //0x1A8
        UnkClass_800D8DBC unk20C8; //0x20C8
        CSuddenCommu mSuddenCommu; //0x216C
        CVision mVision; //0x219C

        static u32 lbl_804F8228[];

    protected:
        static CBattleManager* instance;
    };
}
