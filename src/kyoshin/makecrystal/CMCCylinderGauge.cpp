#include "kyoshin/makecrystal/CMCCylinderGauge.hpp"

extern void func_80136F08(nw4r::lyt::Layout*, nw4r::lyt::AnimTransform**, nw4r::lyt::ArcResourceAccessor*, char*);
extern u32 func_801355A0();
extern void func_801368C0(nw4r::lyt::Layout*, char*, u32);
extern void func_80136910(nw4r::lyt::Layout*, char*, u8);
extern u32 func_80137444(nw4r::lyt::AnimTransform*, f32);
extern void func_80138078(u32);
extern void func_8013B428(u32);

CMCCylinderGauge::CMCCylinderGauge(nw4r::lyt::ArcResourceAccessor* arg){
    pArcResourceAccessor = arg;
    mLayout = nullptr;
    pAnimTrans_0x0C = nullptr;
    pAnimTrans_0x10 = nullptr;
    pAnimTrans_0x14 = nullptr;
    pAnimTrans_0x18 = nullptr;
    bool_0x1c = false;
    unk_0x20 = 0;
    bool_0x24 = true;
    unk_0x25 = 1;
    float_0x28 = 0;
}

CMCCylinderGauge::~CMCCylinderGauge(){
}

void CMCCylinderGauge::func_80221EF4(){
    func_80136E84(&mLayout, pArcResourceAccessor, "mf10_cry01_gage.brlyt");

    func_80136F08(mLayout, &pAnimTrans_0x0C, pArcResourceAccessor, "mf10_cry01_gage_in.brlan");
    func_80136F08(mLayout, &pAnimTrans_0x10, pArcResourceAccessor, "mf10_cry01_gage_up.brlan");
    func_80136F08(mLayout, &pAnimTrans_0x14, pArcResourceAccessor, "mf10_cry01_gage_full.brlan");
    func_80136F08(mLayout, &pAnimTrans_0x18, pArcResourceAccessor, "mf10_cry01_gage_out.brlan");
    
    func_801368C0(mLayout, "txt_sylinder",func_801355A0());
    func_80136910(mLayout, "txt_sylinder", unk_0x25);
    
    float_0x28=0.0f;
    this->func_80222520();
    mLayout->Animate(0);
    bool_0x1c = true;
}

void CMCCylinderGauge::func_80221FE0(){
    if (bool_0x1c == 0){
        return;
    }
    switch ((s32)unk_0x20) {
        case 1: 
            this->func_802222C4(); 
            break;
        case 2:
            this->func_80222318();
            break;
        case 3:
            this->func_8022246C();
            break;
        case 4:
            this->func_802224B0();
            break;
    }
    mLayout->Animate(0);
}

void CMCCylinderGauge::func_80222070(nw4r::lyt::DrawInfo* pDrawInfo){
    if (bool_0x1c != 0){
        func_80137038(mLayout, pDrawInfo, 0, 1);
    }
}

void CMCCylinderGauge::func_80222090(){
    bool_0x1c = false;
    if(mLayout != nullptr){
        delete mLayout;
        mLayout = nullptr;
    }
}

bool CMCCylinderGauge::func_802220F0(){
    return bool_0x24;
}

void CMCCylinderGauge::func_802220F8(){
    if(unk_0x20 == 0){
        unk_0x20 = 1;
        bool_0x24 = false;
    }
}

void CMCCylinderGauge::func_80222118(){
    unk_0x20 = 3;
    bool_0x24 = false;
    if (float_0x28 > 0.0f){
        unk_0x25 = (u8)((f32)unk_0x25 + float_0x28);
        if (unk_0x25 > 9){
            unk_0x25 = 9;
        }
        float_0x28 = 0.0f;
    }
    this->func_802226B8();
}

void CMCCylinderGauge::func_802221A4(f32 arg){
    // not fully matching yet, behaviour seems ok though.
    // I struggle with assembly optimization
    u32 random = ml::MTRand::getInstance()->rand31();
    u32 div = random / 41;
    u32 mod = random - (div * 41);

    f32 fVar = (f32)mod + 30.0f;
    fVar += arg;
    fVar *= 0.01f;
    float_0x28 += fVar;
}

void CMCCylinderGauge::func_80222234(){
    unk_0x25 -= 1;
    func_80136910(mLayout, "txt_sylinder", unk_0x25);
}

u8 CMCCylinderGauge::func_80222258(){
    u8 result = (u8)(unk_0x25 + float_0x28);
    if (result > 9){
        result = 9;
    }
    return result;
}

void CMCCylinderGauge::func_802222A4(u8 arg){
    unk_0x25 = arg;
    func_80136910(mLayout, "txt_sylinder", unk_0x25);
}

void CMCCylinderGauge::func_802222C4(){
    if(func_80137444(pAnimTrans_0x0C, 1.0f) == 0){
        return;
    }
    bool_0x24 = true;
    unk_0x20 = 2;
    func_802225A8();
}

void CMCCylinderGauge::func_80222318(){
    f32 fVar1 = float_0x28;
    if (fVar1 > 1.0f){
        fVar1 = 1.0f;
    }
    f32 fVar2 = 1.0f + pAnimTrans_0x10->GetFrame();
    u16 frameSize = pAnimTrans_0x10->GetFrameSize();
    f32 fVar3 = fVar1 * ((f32)frameSize - 1.0f);
    if(fVar2 > fVar3){
        fVar2 = fVar3;
        if(!(float_0x28 >= 1.0f)){
            if(unk_0x25 >= 9){
                unk_0x25++;
                func_80136910(mLayout, "txt_sylinder", unk_0x25);
                float_0x28--;
                if(float_0x28<0.0f){
                    float_0x28=0.0f;
                }
                unk_0x20=4;
                this->func_80222630();
                pAnimTrans_0x14->SetFrame(0.0f);
                func_80138078(0xb1);
            } else{
                float_0x28 = 1.0f;
                func_8013B428(0x80);
            }
        }
    }
    pAnimTrans_0x10->SetFrame(fVar2);
    mLayout->Animate(0);
}

void CMCCylinderGauge::func_8022246C(){
    if(func_80137444(pAnimTrans_0x18, 1.0f) == 0){
        return;
    }
    bool_0x24 = true;
}

void CMCCylinderGauge::func_802224B0(){
    if(func_80137444(pAnimTrans_0x14, 1.0f) == 0){
        return;
    }
    unk_0x20 = 2;
    this->func_802225A8();
    pAnimTrans_0x10->SetFrame(0.0f);
    mLayout->Animate(0);
}

void CMCCylinderGauge::func_80222520(){
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(pAnimTrans_0x0C);
    mLayout->SetAnimationEnable(pAnimTrans_0x0C, true);
    mLayout->Animate(0);
}

void CMCCylinderGauge::func_802225A8(){
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(pAnimTrans_0x10);
    mLayout->SetAnimationEnable(pAnimTrans_0x10, true);
    mLayout->Animate(0);
}

void CMCCylinderGauge::func_80222630(){
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(pAnimTrans_0x14);
    mLayout->SetAnimationEnable(pAnimTrans_0x14, true);
    mLayout->Animate(0);
}

void CMCCylinderGauge::func_802226B8(){
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(pAnimTrans_0x18);
    mLayout->SetAnimationEnable(pAnimTrans_0x18, true);
    mLayout->Animate(0);
}
