#include "kyoshin/makecrystal/CMCEffStart.hpp"

#include "kyoshin/code_80135FDC.hpp"

#include "nw4r/lyt/lyt_pane.h"

extern u32 func_80137444(nw4r::lyt::AnimTransform*, float);
extern void func_80138078(u32);
extern void* func_801355BC();

CMCEffStart::CMCEffStart(nw4r::lyt::ArcResourceAccessor* arcResourceAccessor)
    : unk4(0), unk5(1), mArcResourceAccessor(arcResourceAccessor), mLayout(nullptr), mAnimTrans(nullptr), unk14(0) {}

CMCEffStart::~CMCEffStart() {}

void CMCEffStart::func_80223DB0() {
    char* string = "mf10_cry06_start.brlyt";
    func_80136E84(&mLayout, mArcResourceAccessor, string);
    char* string2 = "mf10_cry06_start_in.brlan";
    func_80136F08(mLayout, &mAnimTrans, mArcResourceAccessor, string2);
    mLayout->SetAnimationEnable(mAnimTrans, true);
    mLayout->Animate(false);
    unk14 = 1;
}

void CMCEffStart::func_80223E40() {
    if(unk14) {
        if((s8)unk4 == 1) {
            func_80223F44();
        }
        mLayout->Animate(false);
    }
}

void CMCEffStart::func_80223E9C(nw4r::lyt::DrawInfo* drawInfo) {
    if(!unk14) {
        return;
    }
    func_80137038(mLayout, drawInfo, 0, 1);
}

void CMCEffStart::func_80223EBC() {
    unk14 = 0;
    if(mLayout != nullptr) {
        delete mLayout;
        mLayout = nullptr;
    }
}

u8 CMCEffStart::func_80223F1C() {
    return unk5;
}

void CMCEffStart::func_80223F24() {
    unk4 = 1;
    mAnimTrans->SetFrame(0.0f);
    unk5 = 0;
}

void CMCEffStart::func_80223F44() {
    if(func_80137444(mAnimTrans, 1.0f)) {
        unk4 = 0;
        unk5 = 1;
    }
}
/******************************************************************************
 *
 * CMCEffUpRed
 *
 ******************************************************************************/
CMCEffUpRed::CMCEffUpRed(nw4r::lyt::ArcResourceAccessor* pArcResourceAccessor) : CMCEffStart(pArcResourceAccessor) {}

CMCEffUpRed::~CMCEffUpRed() {}

void CMCEffUpRed::func_8022400C() {
    char* string = "mf10_cry02_prt00.brlyt";
    func_80136E84(&mLayout, mArcResourceAccessor, string);
    char* string2 = "mf10_cry02_prt00_in.brlan";
    func_80136F08(mLayout, &mAnimTrans, mArcResourceAccessor, string2);
    mLayout->SetAnimationEnable(mAnimTrans, true);
    mLayout->Animate(false);
    unk14 = 1;
}

void CMCEffUpRed::func_8022409C() {
    func_80223F24();
    func_80138078(0x8c); //140 Dec
}
/******************************************************************************
 *
 * CMCEffUpBlue
 *
 ******************************************************************************/
CMCEffUpBlue::CMCEffUpBlue(nw4r::lyt::ArcResourceAccessor* pArcResourceAccessor) : CMCEffStart(pArcResourceAccessor) {}

CMCEffUpBlue::~CMCEffUpBlue() {}

void CMCEffUpBlue::func_80224140() {
    char* string = "mf10_cry02_prt01.brlyt";
    func_80136E84(&mLayout, mArcResourceAccessor, string);
    char* string2 = "mf10_cry02_prt01_in.brlan";
    func_80136F08(mLayout, &mAnimTrans, mArcResourceAccessor, string2);
    mLayout->SetAnimationEnable(mAnimTrans, true);
    mLayout->Animate(false);
    unk14 = 1;
}

void CMCEffUpBlue::func_802241D0() {
    func_80223F24();
    func_80138078(0x8c); //140 Dec
}
/******************************************************************************
 *
 * CMCEffUpGreen
 *
 ******************************************************************************/
CMCEffUpGreen::CMCEffUpGreen(nw4r::lyt::ArcResourceAccessor* pArcResourceAccessor) : CMCEffStart(pArcResourceAccessor) {}

CMCEffUpGreen::~CMCEffUpGreen() {}

void CMCEffUpGreen::func_80224274() {
    char* string = "mf10_cry02_prt02.brlyt";
    func_80136E84(&mLayout, mArcResourceAccessor, string);
    char* string2 = "mf10_cry02_prt02_in.brlan";
    func_80136F08(mLayout, &mAnimTrans, mArcResourceAccessor, string2);
    mLayout->SetAnimationEnable(mAnimTrans, true);
    mLayout->Animate(false);
    unk14 = 1;
}

void CMCEffUpGreen::func_80224304() {
    func_80223F24();
    func_80138078(0x8c); //140 Dec
}
/******************************************************************************
 *
 * CMCEffUpPrm
 *
 ******************************************************************************/
//todo
CMCEffUpPrm::CMCEffUpPrm(nw4r::lyt::ArcResourceAccessor* arg) {
    unk4 = 1;
    mArcResourceAccessor = arg;

    for(u16 i = 0; i < 8; i++) {
        unkStruct[i].layout = nullptr;
        unkStruct[i].animTrans = nullptr;
        unkStruct[i].unk8 = 0;
    }
    unk6c = 0;
}

CMCEffUpPrm::~CMCEffUpPrm() {}

//todo some tweaks needed
void CMCEffUpPrm::func_802243B4() {
    for(u16 i = 0; i < 8; ++i) {
        func_80136E84(&unkStruct[i].layout, mArcResourceAccessor, "mf10_cry02_prt03.brlyt");
        func_80136F08(unkStruct[i].layout, &unkStruct[i].animTrans, mArcResourceAccessor, "mf10_cry02_prt03_in.brlan");
        nw4r::lyt::Pane* rootPane = unkStruct[i].layout->GetRootPane();
        void* pVoid = func_801355BC();
        func_8013676C(rootPane, pVoid);
        unkStruct[i].layout->SetAnimationEnable(unkStruct[i].animTrans, true);
        unkStruct[i].layout->Animate(0);
    }
    unk6c = 1;
}

void CMCEffUpPrm::func_8022447C() {
    if(unk6c == 0) {
        return;
    }
    for(u8 i = 0; i < 8; ++i) {
        if((s8)unkStruct[i].unk8 == 1 && func_80137444(unkStruct[i].animTrans, 1.0f) != 0) {
            unkStruct[i].unk8 = 0;
        }
        unkStruct[i].layout->Animate(0);
    }
}

void CMCEffUpPrm::func_80224514(nw4r::lyt::DrawInfo* drawInfo) {
    if(unk6c == 0) {
        return;
    }
    for(u16 i = 0; i < 8; ++i) {
        func_80137038(unkStruct[(u8)i].layout, drawInfo, 0, 1);
    }
}

void CMCEffUpPrm::func_8022457C() {
    unk6c = 0;
    for(u8 i = 0; i < 8; i++) {
        UnkStruct* unk_struct = &unkStruct[i];
        if(unk_struct->layout != nullptr) {
            delete unk_struct->layout;
            unk_struct->layout = nullptr;
        }
    }
}

void CMCEffUpPrm::func_802245F0(u32 arg) {
    for(u8 i = 0; i < 8; ++i) {
        unkStruct[i].unk8 = 0;
        unkStruct[i].animTrans->SetFrame(0.0f);
        unkStruct[i].layout->Animate(0);
        if(i < arg) {
            unkStruct[i].unk8 = 1;
        }
    }
}

void CMCEffUpPrm::func_80224690(u32 arg1, nw4r::math::VEC3 arg2) {
    if(arg1 >= 8) {
        return;
    }
    unkStruct[arg1].layout->GetRootPane()->SetTranslate(arg2);
}

void CMCEffUpPrm::func_802246C4(u32 arg1, u8 arg2) {
    if(arg1 >= 8) {
        return;
    }
    func_80136910(unkStruct[arg1].layout, "txt_bns", arg2);
}
/******************************************************************************
 *
 * CMCEffSuccess
 *
 ******************************************************************************/
CMCEffSuccess::CMCEffSuccess(nw4r::lyt::ArcResourceAccessor* pArcResourceAccessor)
    : unk4(0),
      unk5(1),
      mArcResourceAccessor(pArcResourceAccessor),
      mLayout(nullptr),
      mAnimTrans10(nullptr),
      mAnimTrans14(nullptr),
      unk18(0) {}

CMCEffSuccess::~CMCEffSuccess() {}

void CMCEffSuccess::func_80224760() {
    func_80136E84(&mLayout, mArcResourceAccessor, "mf10_cry06_comp.brlyt");
    func_80136F08(mLayout, &mAnimTrans10, mArcResourceAccessor, "mf10_cry06_comp_in.brlan");
    func_80136F08(mLayout, &mAnimTrans14, mArcResourceAccessor, "mf10_cry06_comp_out.brlan");
    func_80224A30();
    mLayout->Animate(0);
    unk18 = 1;
}

void CMCEffSuccess::func_802247F0() {
    if(!unk18) {
        return;
    }
    switch(unk4) {
        case 1:
            func_80224998();
            break;
        case 3:
            func_802249E4();
            break;
        default:
    }
    mLayout->Animate(0);
}

void CMCEffSuccess::func_80224860(nw4r::lyt::DrawInfo* drawInfo) {
    if(!unk18) {
        return;
    }
    func_80137038(mLayout, drawInfo, 0, 1);
}

void CMCEffSuccess::func_80224880() {
    unk18 = 0;
    if(mLayout != nullptr) {
        delete mLayout;
        mLayout = nullptr;
    }
}

u8 CMCEffSuccess::func_802248E0() {
    return unk5;
}

void CMCEffSuccess::func_802248E8() {
    if(unk4 != nullptr) {
        return;
    }
    unk4 = 1;
    func_80224A30();
    mAnimTrans10->SetFrame(0.0f);
    unk5 = 0;
    func_80138078(0x91);
}

void CMCEffSuccess::func_80224944() {
    if(unk4 == 2) {
        unk4 = 3;
        func_80224AB8();
        mAnimTrans14->SetFrame(0.0f);
        unk5 = 0;
    }
}

void CMCEffSuccess::func_80224998() {
    if(func_80137444(mAnimTrans10, 1.0f) != 0) {
        unk4 = 2;
        unk5 = 1;
    }
}

void CMCEffSuccess::func_802249E4() {
    if(func_80137444(mAnimTrans14, 1.0f) != 0) {
        unk4 = 0;
        unk5 = 1;
    }
}

void CMCEffSuccess::func_80224A30() {
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(mAnimTrans10);
    mLayout->SetAnimationEnable(mAnimTrans10, true);
    mLayout->Animate(0);
}

void CMCEffSuccess::func_80224AB8() {
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(mAnimTrans14);
    mLayout->SetAnimationEnable(mAnimTrans14, true);
    mLayout->Animate(0);
}
/******************************************************************************
 *
 * CMCEffFailure
 *
 ******************************************************************************/
CMCEffFailure::CMCEffFailure(nw4r::lyt::ArcResourceAccessor* pArcResourceAccessor) : CMCEffStart(pArcResourceAccessor) {}

CMCEffFailure::~CMCEffFailure() {}

void CMCEffFailure::func_80224BBC() {
    char* string = "mf10_cry06_fail.brlyt";
    func_80136E84(&mLayout, mArcResourceAccessor, string);
    char* string2 = "mf10_cry06_fail_in.brlan";
    func_80136F08(mLayout, &mAnimTrans, mArcResourceAccessor, string2);
    mLayout->SetAnimationEnable(mAnimTrans, true);
    mLayout->Animate(false);
    unk14 = 1;
}