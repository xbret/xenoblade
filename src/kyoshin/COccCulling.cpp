#include "kyoshin/COccCulling.hpp"

using namespace ml;

CVec3 COccCulling::lbl_80578FE8[] = {
    CVec3(-0.5f, 0, 0),
    CVec3(0.5f, 0, 0),
    CVec3(0.5f, 1, 0),
    CVec3(-0.5f, 1, 0)
};

COccCulling::COccCulling() : 
mFrustumList1(mtl::INVALID_HANDLE),
mFrustumList2(mtl::INVALID_HANDLE),
unk24(nullptr),
unk28(mtl::INVALID_HANDLE),
unk2C(0),
unk2D(0),
unk2E(0){
}

COccCulling::~COccCulling(){
    func_801A0794();

    //This function gets automatically called later in the dtor for both variables :p
    mFrustumList1.destroy();
    mFrustumList2.destroy();

    mtl::MemManager::erase(unk28);
}

void COccCulling::func_801A06F8(mtl::ALLOC_HANDLE handle, int size){
#pragma unused(handle)
    unk28 = mtl::MemManager::create(mtl::MemManager::getHandleMEM2(), size, "OCC_CULL");
    mFrustumList1.reserve(unk28, 128);
    mFrustumList2.reserve(unk28, 128);
}

void COccCulling::func_801A0794(){
    mFrustumList1.clearList();
    mFrustumList2.clearList();
    //Why not put this in destroy??
    mFrustumList1.resetCount();
    mFrustumList2.resetCount();
}

int COccCulling::addFrustum(const CVec3& pos, const CVec3& rot, const CVec3& scale, u32 flags){
    //TODO: this seems like another type of new operator plus a ctor
    CCullFrustum* frustum = (CCullFrustum*)mtl::MemManager::allocate_head(unk28, sizeof(CCullFrustum), 4);
    frustum->init(pos, rot, scale, flags);
    setFrustum(frustum);

    if(flags & CCullFrustum::FLAGS_01){
        //Push to the second list
        frustum->mInFirstList = false;
        mFrustumList2.push_back(frustum);
        return mFrustumList2.size() + 255;
    }else{
        //Push to the first list
        mFrustumList1.push_back(frustum);
        return mFrustumList1.size() - 1;
    }
}

void COccCulling::setFrustum(CCullFrustum* pFrustum){
    float xScale = pFrustum->mScale.x;
    float yScale = pFrustum->mScale.y;
    CMat34 rotMat;
    pFrustum->mMat.setScale(CVec3(xScale, yScale, 1));
    rotMat.setRotXYZ(pFrustum->mRot);

    CMat34::mul(rotMat, pFrustum->mMat, pFrustum->mMat);

    pFrustum->mMat.addTranslation(pFrustum->mPos);
    pFrustum->mMat.invert(&pFrustum->mMatInv);

    pFrustum->unk24.set(0, 0, 1);
    nw4r::math::VEC3TransformNormal(pFrustum->unk24, pFrustum->mMat, pFrustum->unk24);
    pFrustum->unk24.normalizeSub();

    pFrustum->unk124 = 0;
    pFrustum->unk128 = 0;

    for(int i = 0; i < ARRAY_SIZE(lbl_80578FE8); i++){
        pFrustum->mMat.mul(pFrustum->unk90[i], lbl_80578FE8[i]);

        float magnitude = nw4r::math::VEC3LenSq(pFrustum->mPos - pFrustum->unk90[i]);

        if(pFrustum->unk128 < magnitude){
            pFrustum->unk128 = magnitude;
        }
    }

    pFrustum->unk128 = math::sqrt(pFrustum->unk128);

    if(pFrustum->mFlags & CCullFrustum::FLAGS_01){
        pFrustum->mPlane0.set(pFrustum->unk90[0], pFrustum->unk90[1], pFrustum->unk90[2]);
    }

    pFrustum->mPlane1.set(pFrustum->unk90[0], pFrustum->unk90[1]);
    pFrustum->mPlane2.set(pFrustum->unk90[1], pFrustum->unk90[2]);
    pFrustum->mPlane3.set(pFrustum->unk90[2], pFrustum->unk90[3]);
    pFrustum->mPlane4.set(pFrustum->unk90[3], pFrustum->unk90[0]);
}

u8 COccCulling::func_801A0F04(u32 r4){
    return 0;
}

void COccCulling::func_801A1188(CCullFrustum* pFrustum){
    pFrustum->mInFirstList = true;

    if(!(pFrustum->mFlags & CCullFrustum::FLAGS_01)){
        //r0 = 5
        //r6 = 16

        for(int i = 0; i < 5; i++){
            COccCulling_UnkStruct2* r0 = unk24;
            CPlane* plane = &r0->unk248[i + 1];

            bool b = true;

            for(int j = 0; j < 4; j++){
                if(plane->isOnPositiveSide(pFrustum->unk90[j])){
                    b = false;
                    break;
                }
            }

            if(b) return;

        }
    }

    pFrustum->mInFirstList = false;

    CVec3 r1_20;
    unk24->unkCC.mul(r1_20, pFrustum->mPos);
    pFrustum->unk124 = -r1_20.z;
    float dot = CVec3::dot(pFrustum->unk24, unk24->unk10C - pFrustum->mPos);

    if(dot < 0){
        pFrustum->mPlane0.set(pFrustum->unk90[0], pFrustum->unk90[1], pFrustum->unk90[2]);
        pFrustum->mPlane1.set(unk24->unk10C, pFrustum->unk90[0], pFrustum->unk90[1]);
        pFrustum->mPlane2.set(unk24->unk10C, pFrustum->unk90[1], pFrustum->unk90[2]);
        pFrustum->mPlane3.set(unk24->unk10C, pFrustum->unk90[2], pFrustum->unk90[3]);
        pFrustum->mPlane4.set(unk24->unk10C, pFrustum->unk90[3], pFrustum->unk90[0]);
    }else{
        pFrustum->mPlane0.set(pFrustum->unk90[2], pFrustum->unk90[1], pFrustum->unk90[0]);
        pFrustum->mPlane1.set(unk24->unk10C, pFrustum->unk90[1], pFrustum->unk90[0]);
        pFrustum->mPlane2.set(unk24->unk10C, pFrustum->unk90[2], pFrustum->unk90[1]);
        pFrustum->mPlane3.set(unk24->unk10C, pFrustum->unk90[3], pFrustum->unk90[2]);
        pFrustum->mPlane4.set(unk24->unk10C, pFrustum->unk90[0], pFrustum->unk90[3]);
    }
}

bool COccCulling::func_801A1444(const CVec3& intersectPoint, float distance) {
    CCullFrustum* frustum;

    for(CCullFrustum** it = mFrustumList1.begin(); it != mFrustumList1.end(); it++){
        frustum = *it;

        if(frustum->mInFirstList) continue;

        if(!frustum->mPlane1.isWithinDistance(intersectPoint, distance) && !frustum->mPlane2.isWithinDistance(intersectPoint, distance)
        && !frustum->mPlane3.isWithinDistance(intersectPoint, distance) && !frustum->mPlane4.isWithinDistance(intersectPoint, distance)
        && !frustum->mPlane0.isWithinDistance(intersectPoint, distance)){
            return true;
        }
    }

    return false;
}

bool COccCulling::func_801A1550(const CVec3& rayStartPos, const CVec3& rayEndPos, UNKWORD r6) const {
    CVec3 rayDir = rayEndPos - rayStartPos;
    
    //Looks like the normalize inline but isn't?
    if(rayDir.isZero()) return false;
    rayDir.normalizeSub();
    
    //Iterate through all entries of the second list
    for(CCullFrustum** it = mFrustumList2.begin(); it != mFrustumList2.end(); it++){
        CCullFrustum* frustum = *it;
        if(frustum->mFlags & r6){
            //Check if the ray intersects the plane (start/end point are on opposide sides)
            if(frustum->mPlane0.isDifferentSide(rayStartPos, rayEndPos)){
                //TODO: Why does this use two CVec3 variables? Maybe used an inline?
                CVec3 intersectPoint;
                CVec3 r1_14;
                //Find the intersection point of the first plane
                CPlane::getCross(r1_14, frustum->mPlane0, rayStartPos, rayDir);
                intersectPoint = r1_14;

                //If the point is in front of all four other planes of the current entry, return true?
                if(frustum->mPlane1.isOnNegativeSide(intersectPoint) || frustum->mPlane2.isOnNegativeSide(intersectPoint)
                || frustum->mPlane3.isOnNegativeSide(intersectPoint) || frustum->mPlane4.isOnNegativeSide(intersectPoint)){
                    continue;
                }

                return true;
            }      
        }
    }
    
    return false;
}
