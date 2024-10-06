#include "kyoshin/appgame/cf/CBattleManager.hpp"
#include "kyoshin/appgame/UnkClass_805764CC.hpp"
#include "monolib/MemManager.hpp"
#include "monolib/work/CWorkSystem.hpp"

namespace cf{
    CBattleManager::CBattleManager() : unk84(0) {
        int heapIndex = WorkThreadSystem::getHeapIndex();
        mActorList1.initList(64, heapIndex);
        mActorList2.initList(8, heapIndex);
        mActorList3.initList(56, heapIndex);
        mBattleEventList.initList(4, heapIndex);
        UnkClass_805764CC* classPtr = UnkClass_805764CC::func_800B07E8();
        classPtr->func_800B8804(this);
        mVision.unk261C4.unk74 = 0;
    }

    CBattleManager::~CBattleManager(){
        UnkClass_805764CC* classPtr = UnkClass_805764CC::func_800B07E8();
        classPtr->func_800B88E0(this);
    }

    CBattleManager* CBattleManager::getInstance(){
        return instance;
    }

    void CBattleManager::func_800D9190(){
        instance = new (mtl::MemManager::getMem2RegionIndex()) CBattleManager();
    }

    void CBattleManager::func_800D91D0(){
        if(instance != nullptr){
            delete instance;
            instance = nullptr;
        }
    }

    void CBattleManager::func_800D9218(){
        mActorList1.clear();
        mActorList2.clear();
        mActorList3.clear();
        mVision.func_801A380C();
        unk19C.__ct__80192C10();
        mChain.func_8027728C();
        unk20C8.func_8027D1A4();
        mSuddenCommu.func_801BA1DC();
        mSuddenCommu.unk28 = 0;
        mSuddenCommu.unk2C = 0;
        unk88 = 0;
        unk8C = 0;
        unk90 = 0;
        mVision.unk261C4.unk70 = 0;
        std::memset(unk94.unk0, 0, sizeof(unk94.unk0));
        func_80085220(2, 0);
    }

    void CBattleManager::FactoryEvent2(){
    }

}
