#include "kyoshin/COccCulling.hpp"

using namespace ml;

CVec3 COccCulling::lbl_80578FE8[] = {
    CVec3(-0.5f, 0, 0),
    CVec3(0.5f, 0, 0),
    CVec3(0.5f, 1, 0),
    CVec3(-0.5f, 1, 0)
};

COccCulling::COccCulling() : 
unk4(mtl::INVALID_HANDLE),
unk14(mtl::INVALID_HANDLE),
unk24(0),
unk28(mtl::INVALID_HANDLE),
unk2C(0),
unk2D(0),
unk2E(0){
}

COccCulling::~COccCulling(){
    func_801A0794();

    //This function gets automatically called later in the dtor for both variables :p
    unk4.destroy();
    unk14.destroy();

    mtl::MemManager::erase(unk28);
}

void COccCulling::func_801A06F8(mtl::ALLOC_HANDLE handle, int size){
#pragma unused(handle)
    unk28 = mtl::MemManager::create(mtl::MemManager::getHandleMEM2(), size, "OCC_CULL");
    unk4.reserve(unk28, 128);
    unk14.reserve(unk28, 128);
}

void COccCulling::func_801A0794(){
    unk4.clearList();
    unk14.clearList();
    //Why not put this in destroy??
    unk4.resetCount();
    unk14.resetCount();
}
