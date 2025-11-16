#include "kyoshin/appgame/cf/CBattleManager.hpp"
#include "kyoshin/appgame/UnkClass_805764CC.hpp"
#include "kyoshin/appgame/cf/object/CfObjectPc.hpp"
#include "kyoshin/appgame/cf/object/CfObjectEne.hpp"
#include "kyoshin/appgame/cf/CfSoundMan.hpp"
#include "monolib/MemManager.hpp"
#include "monolib/work/CWorkSystem.hpp"

extern UNKTYPE* func_8009EC9C(u16 r3);
extern void func_8009D7E4(UNKTYPE* r3, u32 r4);

namespace cf{
    u32 CBattleManager::lbl_804F8228[] = {
        0,
        0x1AD,
        0x1AA,
        0x1B0,
        0x1B6,
        0x1BA,
        0x1B5,
        0x1B7,
        0x1B8,
        0x1B9
    };

    //Plays attack sound effects when a player character hits an enemy?
    void func_800D7A04(CfObjectPc* pObjectPc, CfObjectEne* pObjectEne){
        CActorParam_UnkStruct1* r3 = pObjectPc->CActorParam_vtableFunc129();
        u32 flags = r3->mFlagsArray[0].flags;

        if(flags & CActorParam_UnkStruct1::FLAG_BIT_1){
            CfSoundMan::func_801BFC38(0, 0x192, 0, 0, 0.6f);
            CfSoundMan::func_801BFC38(0, 0x191, 0, 0, 0.6f);
        }else if(flags & 0x2000){
            CfSoundMan::func_801BFC38(0, 0x1C5, 0, 0, 0.6f);
        }else{
            CActorParam_UnkStruct2* r30 = r3->unk50;

            if(r30 != nullptr){
                if(r30->unk78 & CActorParam_UnkStruct1::FLAG_BIT_24){
                    if(pObjectEne->CActorParam_vtableFunc19() == 1 ||
                    pObjectEne->CActorParam_vtableFunc19() == 2){
                        if(!(r30->unk78 & CActorParam_UnkStruct1::FLAG_BIT_9)){
                            CfSoundMan::func_801BFC38(0, 0x1B4, 0, 0, 0.6f);
                            return;
                        }
                    }else if(!(r30->unk78 & CActorParam_UnkStruct1::FLAG_BIT_9)){
                        CfSoundMan::func_801BFC38(0, 0x1B5, 0, 0, 0.6f);
                        return;
                    }
                }else if((r30->unk78 & CActorParam_UnkStruct1::FLAG_BIT_25)
                && !(r30->unk78 & CActorParam_UnkStruct1::FLAG_BIT_9)){
                    CfSoundMan::func_801BFC38(0, 0x1B5, 0, 0, 0.6f);
                    return;
                }
                
                if((s32)r30->unk40 == 1){
                    if(flags & CActorParam_UnkStruct1::FLAG_BIT_8){
                        CfSoundMan::func_801BFC38(0, 0x1AF, 0, 0, 0.6f);
                    }else{
                        //likely an inline
                        if(pObjectEne != nullptr && pObjectEne->unk64 & 0x2){
                            UNKTYPE* r3_1 = func_8009EC9C(pObjectEne->unk8C_3);
                            func_8009D7E4((UNKTYPE*)((u32)r3_1 + 0x1C), 1);
                        }

                        if(pObjectEne->CActorParam_vtableFunc19() == 1 ||
                        pObjectEne->CActorParam_vtableFunc19() == 2){
                            CfSoundMan::func_801BFC38(0, 0x1AE, 0, 0, 0.6f);
                        }else{
                            CfSoundMan::func_801BFC38(0, 0x1AD, 0, 0, 0.6f);
                        }
                    }
                }else if((s32)r30->unk40 == 2){
                    if(flags & CActorParam_UnkStruct1::FLAG_BIT_8){
                        CfSoundMan::func_801BFC38(0, 0x1AC, 0, 0, 0.6f);
                    }else{
                        //likely an inline
                        if(pObjectEne != nullptr && pObjectEne->unk64 & 0x2){
                            UNKTYPE* r3_1 = func_8009EC9C(pObjectEne->unk8C_3);
                            func_8009D7E4((UNKTYPE*)((u32)r3_1 + 0x1C), 1);
                        }

                        if(pObjectEne->CActorParam_vtableFunc19() == 1 ||
                        pObjectEne->CActorParam_vtableFunc19() == 2){
                            CfSoundMan::func_801BFC38(0, 0x1AB, 0, 0, 0.6f);
                        }else{
                            CfSoundMan::func_801BFC38(0, 0x1AA, 0, 0, 0.6f);
                        }
                    }
                }else{
                    u32 r4 = CBattleManager::lbl_804F8228[r30->unk40];
                    CfSoundMan::func_801BFC38(0, r4, 0, 0, 0.6f);
                }
            }
        }
    }

    CBattleManager::CBattleManager() : unk84(0) {
        int heapIndex = WorkThreadSystem::getHeapHandle();
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
        return sInstance;
    }

    void CBattleManager::func_800D9190(){
        sInstance = new (mtl::MemManager::getHandleMEM2()) CBattleManager();
    }

    void CBattleManager::func_800D91D0(){
        if(sInstance != nullptr){
            delete sInstance;
            sInstance = nullptr;
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
        unk94.clear();
        func_80085220(2, 0);
    }

    void CBattleManager::FactoryEvent2(){
    }

}
