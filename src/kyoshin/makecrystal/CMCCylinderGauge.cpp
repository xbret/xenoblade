#include "kyoshin/makecrystal/CMCCylinderGauge.hpp"

#include "kyoshin/code_80135FDC.hpp"
#include "monolib/math/MTRand.hpp"

extern u32 func_801355A0();
extern void func_80138078(u32);
extern void func_8013B428(u32);

CMCCylinderGauge::CMCCylinderGauge(nw4r::lyt::ArcResourceAccessor* arg) {
    mArcResourceAccessor = arg;
    mLayout = nullptr;
    mAnimTransC = nullptr;
    mAnimTrans10 = nullptr;
    mAnimTrans14 = nullptr;
    mAnimTrans18 = nullptr;
    unk1c = false;
    unk20 = 0;
    unk24 = true;
    unk25 = 1;
    unk28 = 0.0f;
}

CMCCylinderGauge::~CMCCylinderGauge() {}

void CMCCylinderGauge::func_80221EF4() {
    func_80136E84(&mLayout, mArcResourceAccessor, "mf10_cry01_gage.brlyt");

    func_80136F08(mLayout, &mAnimTransC, mArcResourceAccessor, "mf10_cry01_gage_in.brlan");
    func_80136F08(mLayout, &mAnimTrans10, mArcResourceAccessor, "mf10_cry01_gage_up.brlan");
    func_80136F08(mLayout, &mAnimTrans14, mArcResourceAccessor, "mf10_cry01_gage_full.brlan");
    func_80136F08(mLayout, &mAnimTrans18, mArcResourceAccessor, "mf10_cry01_gage_out.brlan");

    func_801368C0(mLayout, "txt_sylinder", func_801355A0());
    func_80136910(mLayout, "txt_sylinder", unk25);

    unk28 = 0.0f;
    func_80222520();
    mLayout->Animate(0);
    unk1c = true;
}

void CMCCylinderGauge::func_80221FE0() {
    if(unk1c == 0) {
        return;
    }
    switch((s32)unk20) {
        case 1:
            func_802222C4();
            break;
        case 2:
            func_80222318();
            break;
        case 3:
            func_8022246C();
            break;
        case 4:
            func_802224B0();
            break;
    }
    mLayout->Animate(0);
}

void CMCCylinderGauge::func_80222070(nw4r::lyt::DrawInfo* pDrawInfo) {
    if(unk1c != 0) {
        func_80137038(mLayout, pDrawInfo, 0, 1);
    }
}

void CMCCylinderGauge::func_80222090() {
    unk1c = false;
    if(mLayout != nullptr) {
        delete mLayout;
        mLayout = nullptr;
    }
}

bool CMCCylinderGauge::func_802220F0() {
    return unk24;
}

void CMCCylinderGauge::func_802220F8() {
    if(unk20 == 0) {
        unk20 = 1;
        unk24 = false;
    }
}

void CMCCylinderGauge::func_80222118() {
    unk20 = 3;
    unk24 = false;
    if(unk28 > 0.0f) {
        unk25 = (u8)((float)unk25 + unk28);
        if(unk25 > 9) {
            unk25 = 9;
        }
        unk28 = 0.0f;
    }
    func_802226B8();
}

//Optimization level is reduced to ensure the remainder is naively computed
#pragma push
#pragma optimization_level 1
void CMCCylinderGauge::func_802221A4(float arg) {
    s32 random = (s32)ml::MTRand::getInstance()->rand31();

    s32 divisor = 0x29;
    s32 remainder = random % divisor;

    float temp = (float)remainder;
    temp += 30.0f;
    temp += arg;
    temp *= 0.01f;
    unk28 += temp;
}
#pragma pop

void CMCCylinderGauge::func_80222234() {
    unk25 -= 1;
    func_80136910(mLayout, "txt_sylinder", unk25);
}

u8 CMCCylinderGauge::func_80222258() {
    u8 result = (u8)(unk25 + unk28);
    if(result > 9) {
        result = 9;
    }
    return result;
}

void CMCCylinderGauge::func_802222A4(u8 arg) {
    unk25 = arg;
    func_80136910(mLayout, "txt_sylinder", unk25);
}

void CMCCylinderGauge::func_802222C4() {
    if(func_80137444(mAnimTransC, 1.0f) == 0) {
        return;
    }
    unk24 = true;
    unk20 = 2;
    func_802225A8();
}

void CMCCylinderGauge::func_80222318() {
    float fVar1 = unk28;
    if(fVar1 > 1.0f) {
        fVar1 = 1.0f;
    }
    float fVar2 = 1.0f + mAnimTrans10->GetFrame();
    u16 frameSize = mAnimTrans10->GetFrameSize();
    float fVar3 = fVar1 * ((float)frameSize - 1.0f);
    if(fVar2 > fVar3) {
        fVar2 = fVar3;
        if(unk28 >= 1.0f) {
            if(unk25 < 9) {
                unk25++;
                func_80136910(mLayout, "txt_sylinder", unk25);
                unk28--;
                if(unk28 < 0.0f) {
                    unk28 = 0.0f;
                }
                unk20 = 4;
                func_80222630();
                mAnimTrans14->SetFrame(0.0f);
                func_80138078(0xb1);
            } else {
                unk28 = 1.0f;
                func_8013B428(0x80);
            }
        }
    }
    mAnimTrans10->SetFrame(fVar2);
    mLayout->Animate(0);
}

void CMCCylinderGauge::func_8022246C() {
    if(func_80137444(mAnimTrans18, 1.0f) == 0) {
        return;
    }
    unk24 = true;
}

void CMCCylinderGauge::func_802224B0() {
    if(func_80137444(mAnimTrans14, 1.0f) == 0) {
        return;
    }
    unk20 = 2;
    func_802225A8();
    mAnimTrans10->SetFrame(0.0f);
    mLayout->Animate(0);
}

void CMCCylinderGauge::func_80222520() {
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(mAnimTransC);
    mLayout->SetAnimationEnable(mAnimTransC, true);
    mLayout->Animate(0);
}

void CMCCylinderGauge::func_802225A8() {
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(mAnimTrans10);
    mLayout->SetAnimationEnable(mAnimTrans10, true);
    mLayout->Animate(0);
}

void CMCCylinderGauge::func_80222630() {
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(mAnimTrans14);
    mLayout->SetAnimationEnable(mAnimTrans14, true);
    mLayout->Animate(0);
}

void CMCCylinderGauge::func_802226B8() {
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(mAnimTrans18);
    mLayout->SetAnimationEnable(mAnimTrans18, true);
    mLayout->Animate(0);
}
