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


int COccCulling::func_801A0850(const CVec3& r4, const CVec3& r5, const CVec3& r6, UNKWORD r7){
    //TODO: this seems like another type of new operator plus a ctor
    COccCulling_UnkStruct1* r3 = (COccCulling_UnkStruct1*)mtl::MemManager::allocate_head(unk28, sizeof(COccCulling_UnkStruct1), 4);
    r3->init(r4, r5, r6, r7);

    func_801A097C(r3);

    if((r7 & 3)){
        //Push to the second list
        r3->unk120 = false;
        unk14.push_back(r3);
        return unk14.size() + 255;
    }else{
        //Push to the first list
        unk4.push_back(r3);
        return unk4.size() - 1;
    }
}

void func_801A097C(COccCulling_UnkStruct1* r4){
    
}


u8 COccCulling::func_801A0F04(u32 r4){
    return 0;
}

void func_801A1188(COccCulling_UnkStruct1* r4){
}

bool COccCulling::func_801A1444(const CVec3& vec) const {
    return false;
}

bool COccCulling::func_801A1550(const CVec3& rayStartPos, const CVec3& rayEndPos, UNKWORD r6) const {
    CVec3 rayDir = rayEndPos - rayStartPos;
    
    //Looks like the normalize inline but isn't?
    if(rayDir.isZero()) return false;
    rayDir.normalizeSub();
    
    //Iterate through all entries of the second list
    for(COccCulling_UnkStruct1** it = unk14.begin(); it != unk14.end(); it++){
        COccCulling_UnkStruct1* entry = *it;
        if(entry->unk130 & r6){
            if(entry->unkD0.isSameSide(rayStartPos, rayEndPos)){
                //TODO: Why does this use two CVec3 variables? Maybe used an inline?
                CVec3 intersectPoint;
                CVec3 r1_14;
                //Find the intersection point of the first plane
                CPlane::getCross(r1_14, entry->unkD0, rayStartPos, rayDir);
                intersectPoint = r1_14;

                //If the point is behind all four other planes of the current entry, return true?
                if(!entry->unkE0.getSide(intersectPoint) && !entry->unkF0.getSide(intersectPoint)
                && !entry->unk100.getSide(intersectPoint) && !entry->unk110.getSide(intersectPoint)){
                    return true;
                }
            }      
        }
    }
    
    return false;
}
