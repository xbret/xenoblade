#include <nw4r/g3d.h>
#include <nw4r/math.h>

#include <algorithm>
#include <cstddef>

namespace nw4r {
namespace g3d {

/******************************************************************************
 *
 * LightObj
 *
 ******************************************************************************/
LightObj::LightObj(const LightObj& rLightObj){
    mFlag = rLightObj.mFlag;
    detail::Copy32ByteBlocks(&mObj, &rLightObj.mObj, sizeof(GXLightObj));
}

LightObj& LightObj::operator=(const LightObj& rOther) {
    if (this != &rOther) {
        mFlag = rOther.mFlag;
        detail::Copy32ByteBlocks(&mObj, &rOther.mObj, sizeof(GXLightObj));
    }

    return *this;
}

//Whoever programmed this should feel bad ngl
bool LightObj::operator!=(const LightObj& rOther) const {
    bool result = false;
    
    if(mFlag != rOther.mFlag
        ||mObj.dummy[0] != rOther.mObj.dummy[0]
        ||mObj.dummy[1] != rOther.mObj.dummy[1]
        ||mObj.dummy[2] != rOther.mObj.dummy[2]
        ||mObj.dummy[3] != rOther.mObj.dummy[3]
        ||mObj.dummy[4] != rOther.mObj.dummy[4]
        ||mObj.dummy[5] != rOther.mObj.dummy[5]
        ||mObj.dummy[6] != rOther.mObj.dummy[6]
        ||mObj.dummy[7] != rOther.mObj.dummy[7]
        ||mObj.dummy[8] != rOther.mObj.dummy[8]
        ||mObj.dummy[9] != rOther.mObj.dummy[9]
        ||mObj.dummy[10] != rOther.mObj.dummy[10]
        ||mObj.dummy[11] != rOther.mObj.dummy[11]
        ||mObj.dummy[12] != rOther.mObj.dummy[12]
        ||mObj.dummy[13] != rOther.mObj.dummy[13]
        ||mObj.dummy[14] != rOther.mObj.dummy[14]
        ||mObj.dummy[15] != rOther.mObj.dummy[15]) result = true;
 
    return result;
}

void LightObj::Clear() {
    mFlag = 0;
    detail::ZeroMemory32ByteBlocks(&mObj, sizeof(GXLightObj));
}

void LightObj::InitLightColor(GXColor color) {
    GXInitLightColor(&mObj, color);
}

void LightObj::InitLightPos(f32 x, f32 y, f32 z) {
    GXInitLightPos(&mObj, x, y, z);
    mFlag &= ~FLAG_SPECULAR;
}

void LightObj::InitLightDir(f32 nx, f32 ny, f32 nz) {
    GXInitLightDir(&mObj, nx, ny, nz);
    mFlag &= ~FLAG_SPECULAR;
    mFlag |= FLAG_SPOT;
}

void LightObj::InitLightSpot(f32 cutoff, GXSpotFn spotFn) {
    GXInitLightSpot(&mObj, cutoff, spotFn);
    mFlag &= ~FLAG_SPECULAR;
    mFlag |= FLAG_SPOT;
}

void LightObj::InitLightAttnA(f32 aa, f32 ab, f32 ac) {
    GXInitLightAttnA(&mObj, aa, ab, ac);
    mFlag &= ~FLAG_SPECULAR;
    mFlag |= FLAG_SPOT;
}

void LightObj::InitLightDistAttn(f32 distance, f32 brightness,
                                 GXDistAttnFn distAttnFn) {
    GXInitLightDistAttn(&mObj, distance, brightness, distAttnFn);
    mFlag &= ~FLAG_SPECULAR;
    mFlag |= FLAG_SPOT;
}

void LightObj::InitLightAttnK(f32 ka, f32 kb, f32 kc) {
    GXInitLightAttnK(&mObj, ka, kb, kc);
    mFlag &= ~FLAG_SPECULAR;
    mFlag |= FLAG_SPOT;
}

void LightObj::InitSpecularDir(f32 nx, f32 ny, f32 nz) {
    GXInitLightDir(&mObj, nx, ny, nz);
    mFlag &= ~FLAG_SPOT;
    mFlag |= FLAG_SPECULAR;
    mFlag |= FLAG_SPECULAR_DIR;
}

void LightObj::InitLightShininess(f32 shininess) {
    GXInitLightAttn(&mObj, 0.0f, 0.0f, 1.0f, shininess / 2.0f, 0.0f,
                    1.0f - shininess / 2.0f);
    mFlag &= ~FLAG_SPOT;
    mFlag |= FLAG_SPECULAR;
}

void LightObj::GetLightPos(math::VEC3* pPos) const {
    if (!pPos) {
        return;
    }

    GXGetLightPos(&mObj, &pPos->x, &pPos->y, &pPos->z);
}

void LightObj::GetLightDir(math::VEC3* pDir) const {
    if (!pDir) {
        return;
    }

    GXGetLightDir(&mObj, &pDir->x, &pDir->y, &pDir->z);
}

void LightObj::ApplyViewMtx(const math::MTX34& rCamera) {
    math::VEC3 dir;
    GetLightDir(&dir);
    math::VEC3TransformNormal(&dir, &rCamera, &dir);

    if (IsSpecularDir()) {
        GXInitSpecularDir(&mObj, dir.x, dir.y, dir.z);
    } else {
        math::VEC3 pos;
        GetLightPos(&pos);
        math::VEC3Transform(&pos, &rCamera, &pos);

        GXInitLightPos(&mObj, pos.x, pos.y, pos.z);
        GXInitLightDir(&mObj, dir.x, dir.y, dir.z);
    }
}

/******************************************************************************
 *
 * LightSetting
 *
 ******************************************************************************/
LightSetting::LightSetting(LightObj* pLightObjArray,
                           AmbLightObj* pAmbLightObjArray, u32 numLight,
                           LightSetData* pLightSetDataArray, u32 numLightSet)
    : mNumLight(numLight),
      mNumLightSet(numLightSet),
      mpLightObjArray(pLightObjArray),
      mpAmbLightObjArray(pAmbLightObjArray),
      mpLightSetDataArray(pLightSetDataArray) {

    for (u32 i = 0; i < mNumLightSet; i++) {
        LightSetData& rData = mpLightSetDataArray[i];
        rData.idxAmbLight = LightSetData::IDX_INVALID_LIGHT;

        for (u32 j = 0; j < G3DState::NUM_LIGHT_IN_LIGHT_SET; j++) {
            rData.idxLight[j] = LightSetData::IDX_INVALID_LIGHT;
        }
    }

    mpLightSetDataArray[0].idxLight[0] = 0;
    mpLightSetDataArray[0].idxLight[1] = 2;
    mpLightSetDataArray[0].idxAmbLight = LightSetData::IDX_INVALID_LIGHT;

    GXColor white = {255, 255, 255, 255};
    AmbLightObj ambWhite = {255, 255, 255, 255};

    LightObj lobj0, lobj1, lobj2, lobj3;

    lobj0.Clear();
    lobj1.Clear();
    lobj2.Clear();
    lobj3.Clear();

    lobj0.InitLightColor(white);
    lobj0.InitLightPos(4000000.0f, 4000000.0f, 4000000.0f);
    lobj0.InitLightDir(0.0f, -1.0f, 0.0f);
    lobj0.InitLightSpot(90.0f, GX_SP_OFF);
    lobj0.InitLightDistAttn(10.0f, 0.5f, GX_DA_OFF);
    lobj0.Enable();

    lobj1.InitLightColor(white);
    lobj1.InitLightPos(4000000.0f, 4000000.0f, 4000000.0f);
    lobj1.Enable();

    lobj2.InitLightColor(white);
    lobj2.InitLightPos(4000000.0f, 4000000.0f, 4000000.0f);
    lobj2.InitSpecularDir(0.0f, -1.0f, 0.0f);
    lobj2.InitLightShininess(16.0f);
    lobj2.Enable();

    lobj3.Disable();

    if (mNumLight > 0) {
        mpLightObjArray[0] = lobj0;
        mpAmbLightObjArray[0] = ambWhite;
    }
    if (mNumLight > 1) {
        mpLightObjArray[1] = lobj1;
        mpAmbLightObjArray[1] = ambWhite;
    }
    if (mNumLight > 2) {
        mpLightObjArray[2] = lobj2;
        mpAmbLightObjArray[2] = ambWhite;
    }

    for (u32 i = 3; i < mNumLight; i++) {
        mpLightObjArray[i] = lobj3;
        mpAmbLightObjArray[i] = ambWhite;
    }
}

bool LightSetting::Import(const LightSetting& rSetting) {
    if (mNumLight < rSetting.mNumLight ||
        mNumLightSet < rSetting.mNumLightSet) {
        return false;
    }

    for (u32 i = 0; i < rSetting.mNumLight; i++) {
        if (rSetting.mpLightObjArray[i].IsEnable()) {
            mpLightObjArray[i] = rSetting.mpLightObjArray[i];
        } else {
            mpLightObjArray[i].Disable();
        }

        mpAmbLightObjArray[i] = rSetting.mpAmbLightObjArray[i];
    }

    for (u32 i = 0; i < rSetting.mNumLightSet; i++) {
        mpLightSetDataArray[i] = rSetting.mpLightSetDataArray[i];
    }

    return true;
}

void LightSetting::ApplyViewMtx(const math::MTX34& rCamera, u32 numLight) {
    numLight = std::max<u32>(numLight, mNumLight);

    for (u32 i = 0; i < numLight; i++) {
        if (mpLightObjArray[i].IsEnable()) {
            mpLightObjArray[i].ApplyViewMtx(rCamera);
        }
    }
}

/******************************************************************************
 *
 * LightSet
 *
 ******************************************************************************/
LightObj* LightSet::GetLightObj(u32 lightIdx){
    if (IsValid() && lightIdx < G3DState::NUM_LIGHT_IN_LIGHT_SET) {
        s8 lightObjIdx = mpLightSetData->idxLight[lightIdx];
        if(lightObjIdx >= 0){
            return &mpSetting->GetLightObjArray()[lightObjIdx];
        }
    }

    return NULL;
}

AmbLightObj* LightSet::GetAmbLightObj(){
    if (IsValid() &&  mpLightSetData->idxAmbLight >= 0) {
        return &mpSetting->GetAmbLightObjArray()[mpLightSetData->idxAmbLight];
    }

    return NULL;
}

bool LightSet::SelectLightObj(u32 lightIdx, int lightObjIdx) {
    if (IsValid() && lightIdx < G3DState::NUM_LIGHT_IN_LIGHT_SET) {
        if (lightObjIdx < 0) {
            mpLightSetData->idxLight[lightIdx] =
                LightSetData::IDX_INVALID_LIGHT;

            return true;
        }

        if (lightObjIdx < static_cast<int>(mpSetting->GetNumLightObj())) {
            mpLightSetData->idxLight[lightIdx] = lightObjIdx;
            return true;
        }
    }

    return false;
}

bool LightSet::SelectAmbLightObj(int lightObjIdx) {
    if (IsValid()) {
        if (lightObjIdx < 0) {
            mpLightSetData->idxAmbLight = LightSetData::IDX_INVALID_LIGHT;
            return true;
        }

        if (lightObjIdx < static_cast<int>(mpSetting->GetNumLightObj())) {
            mpLightSetData->idxAmbLight = lightObjIdx;
            return true;
        }
    }

    return false;
}

} // namespace g3d
} // namespace nw4r
