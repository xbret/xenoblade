#include "kyoshin/makecrystal/CMCEffStart.hpp"

#include "kyoshin/code_80135FDC.hpp"

extern u32 func_80137444(nw4r::lyt::AnimTransform*, float);

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