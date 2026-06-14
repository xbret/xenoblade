#include "kyoshin/makecrystal/CMCEffStart.hpp"

#include "kyoshin/code_80135FDC.hpp"

extern u32 func_80137444(nw4r::lyt::AnimTransform*, float);
extern void func_80138078(u32);

CMCEffStart::CMCEffStart(nw4r::lyt::ArcResourceAccessor* arcResourceAccessor)
    : unk4(0), unk5(1), mArcResourceAccessor(arcResourceAccessor), mLayout(nullptr), mAnimTrans(nullptr), unk14(0) {}

CMCEffStart::~CMCEffStart() {}

void CMCEffStart::func_80223DB0() {
    char* string = "mf10_cry06_start";
    func_80136E84(&mLayout, mArcResourceAccessor, string);
    char* string2 = "mf10";
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
    char* string = "mf10_cry02_prt00";
    func_80136E84(&mLayout, mArcResourceAccessor, string);
    char* string2 = "mf10_cry02_prt00_in";
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
    char* string = "mf10_cry02_prt01";
    func_80136E84(&mLayout, mArcResourceAccessor, string);
    char* string2 = "mf10_cry02_prt01_in";
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
    char* string = "mf10_cry02_prt02";
    func_80136E84(&mLayout, mArcResourceAccessor, string);
    char* string2 = "mf10_cry02_prt02_in";
    func_80136F08(mLayout, &mAnimTrans, mArcResourceAccessor, string2);
    mLayout->SetAnimationEnable(mAnimTrans, true);
    mLayout->Animate(false);
    unk14 = 1;
}

void CMCEffUpGreen::func_80224304() {
    func_80223F24();
    func_80138078(0x8c); //140 Dec
}