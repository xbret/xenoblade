#include "kyoshin/cf/CTaskCulling.hpp"
#include "kyoshin/cf/UnkClass_8007DAE0.hpp"
#include "kyoshin/code_8007C0F8.hpp"
#include "kyoshin/code_800AA008.hpp"
#include <cstring>

namespace cf{
    CTaskCulling* CTaskCulling::spInstance;

    //unused
    ml::CVec3 CTaskCulling::lbl_80579018_0 = ml::CVec3(5,30,50);
    ml::CVec3 CTaskCulling::lbl_80579018_C = ml::CVec3(5,30,50);
    ml::CVec3 CTaskCulling::lbl_80579018_18 = ml::CVec3(5,30,0);
    ml::CVec4 CTaskCulling::lbl_80579018_28 = ml::CVec4(0,1,0,0.2f);

    CTaskCulling::CTaskCulling(CScn* pScene):
    mpScene(pScene),
    unk94(nullptr),
    unk98(),
    unkDC(),
    unk120(0){
        spInstance = this;
        pScene->unkB4 = this;
        unk94 = mtl::MemManager::allocate_head(mtl::MemManager::getHandleMEM2(), 0x1000, 4);
    }

    CTaskCulling::~CTaskCulling(){
        spInstance = nullptr;
    }

    void CTaskCulling::func_801A2BD0(u32 r3){
        CTaskCulling* instance = spInstance;
        
        if(instance != nullptr){
            if(r3 != 0){
                instance->unk120 |= 8;
            }else{
                instance->unk120 &= ~8;
            }
        }
    }

    UNKTYPE* CTaskCulling::func_801A2C04(){
        CTaskCulling* instance = spInstance;

        if(instance == nullptr) return nullptr;
        return instance->unk94;
    }

    bool CTaskCulling::ICulling_UnkVirtualFunc1(ml::CFrustum* r4){
        if(spInstance == nullptr) return false;
        return mOccCulling.func_801A0F04(r4);
    }

    bool CTaskCulling::ICulling_UnkVirtualFunc2(const ml::CVec3& r4, float r5){
        if(spInstance == nullptr) return false;
        return (unk120 & 8) ? false : mOccCulling.func_801A1444(r4, r5);
    }

    bool CTaskCulling::ICulling_UnkVirtualFunc3(const ml::CVec3& r4, const ml::CVec3& r5, int r6){
        if(spInstance == nullptr) return false;
        return mOccCulling.func_801A1550(r4, r5, r6);
    }

    void CTaskCulling::func_801A2C94(){
        CTaskCulling* instance = spInstance;

        if(spInstance != nullptr){
            spInstance->mOccCulling.func_801A0794();
        }
    }

    void CTaskCulling::func_801A2CAC(){
        if(spInstance == nullptr) return;

        func_801A2C94();

        UNKTYPE* r3 = func_80083298();
        u32 r4, r5, r6, r7;

        func_800AA318(*(UNKTYPE**)((u32)r3 + 0x70), &r4, &r5, &r6, &r7);
        func_800AA33C(spInstance->unk98, *(UNKTYPE**)((u32)r3 + 0x70), 0, 0);
        func_800AA33C(spInstance->unkDC, *(UNKTYPE**)((u32)r3 + 0x70), 1, 0);

        spInstance->unkDC.unkInline1("\\");

        int r29 = 0;
        void* r27 = spInstance->unk94;

        if(std::strcmp("occ", (const char*)r27) == 0){
            ml::CVec3* r28_1 = (ml::CVec3*)((u32)r27 + 0x10);
            r29 = 0;

            while(r29 < *(u16*)((u32)r27 + 6)){
                u32 r7_1 = *(u32*)((u32)r28_1 + 0x24);

                if(spInstance != nullptr){
                    spInstance->mOccCulling.addFrustum(r28_1[0], r28_1[1], r28_1[2], r7_1);
                }

                r29++;
                r28_1 = (ml::CVec3*)((u32)r28_1 + 0x34);
            }
        }
    }

    CTaskCulling* CTaskCulling::getInstance(){
        return spInstance;
    }

    void CTaskCulling::Init(){
        UnkClass_8007DAE0::spScene->addRenderCB(this, 1, 0);
        mOccCulling.func_801A06F8(mtl::MemManager::getHandleMEM2(), 0x8000);
    }
    void CTaskCulling::Term(){
        CScnNw4r* scene = UnkClass_8007DAE0::spScene;
        if(scene != nullptr){
            scene->removeRenderCB(this);
        }

        mpScene->unkB4 = nullptr;
        //???
        if(spInstance != nullptr) spInstance->mOccCulling.func_801A0794();

        DELETE_OBJ(unk94);
    }
    void CTaskCulling::Move(){}
    void CTaskCulling::Draw(){}

    void CTaskCulling::cbRenderBefore(){}

    CTaskCulling* CTaskCulling::create(CProcess* pParent, CScn* pScene){
        CTaskCulling* taskCulling = new (CWorkThreadSystem::getWorkMem()) CTaskCulling(pScene);
        taskCulling->Regist(pParent, false);
        return taskCulling;
    }

} //namespace cf
