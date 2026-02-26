#include "kyoshin/cf/CTaskCulling.hpp"
#include "kyoshin/cf/UnkClass_8007DAE0.hpp"
#include "monolib/util/MemManager.hpp"

namespace cf{
    CTaskCulling* CTaskCulling::spInstance;

    //unused
    ml::CVec3 CTaskCulling::lbl_80579018_0 = ml::CVec3(5,30,50);
    ml::CVec3 CTaskCulling::lbl_80579018_C = ml::CVec3(5,30,50);
    ml::CVec3 CTaskCulling::lbl_80579018_18 = ml::CVec3(5,30,0);
    ml::CVec4 CTaskCulling::lbl_80579018_28 = ml::CVec4(0,1,0,0.2f);

    CTaskCulling::CTaskCulling(UNKTYPE* r4):
    unk90(r4),
    unk94(nullptr),
    unk98(0),
    unkD8(0),
    unkDC(0),
    unk11C(0),
    unk120(0){
        spInstance = this;

        *(ICulling**)((u8*)r4 + 0xB4) = this;

        unk94 = mtl::MemManager::allocate_head(mtl::MemManager::getHandleMEM2(), 0x1000, 4);
    }

    CTaskCulling::~CTaskCulling(){
        spInstance = nullptr;
    }

    bool CTaskCulling::ICulling_UnkVirtualFunc1(COccCulling_UnkStruct2* r4){
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

        *(ICulling**)((u8*)unk90 + 0xB4) = nullptr;
        //???
        if(spInstance != nullptr) spInstance->mOccCulling.func_801A0794();

        DELETE_OBJ(unk94);
    }
    void CTaskCulling::Move(){}
    void CTaskCulling::Draw(){}

    void CTaskCulling::IScnRender_UnkVirtualFunc1(){}

    CTaskCulling* CTaskCulling::create(CProcess* pParent, UNKTYPE* r4){
        CTaskCulling* taskCulling = new (CWorkThreadSystem::getWorkMem()) CTaskCulling(r4);
        taskCulling->Regist(pParent, false);
        return taskCulling;
    }

} //namespace cf
