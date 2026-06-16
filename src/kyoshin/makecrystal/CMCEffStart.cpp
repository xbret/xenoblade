#include "kyoshin/makecrystal/CMCEffStart.hpp"

#include "kyoshin/cf/CfBdat.hpp"
#include "kyoshin/code_80135FDC.hpp"
#include "monolib/device/CDeviceFont.hpp"

#include "nw4r/lyt/lyt_pane.h"

extern u32 func_80137444(nw4r::lyt::AnimTransform*, float);
extern void func_80138078(u32);
extern u32 func_801355BC();
extern void func_80124270(nw4r::lyt::Pane*, u32);
extern u32 func_801355A0();

CMCEffStart::CMCEffStart(nw4r::lyt::ArcResourceAccessor* arcResourceAccessor)
    : unk4(0), unk5(1), mArcResourceAccessor(arcResourceAccessor), mLayout(nullptr), mAnimTrans(nullptr), unk14(0) {}

CMCEffStart::~CMCEffStart() {}

void CMCEffStart::func_80223DB0() {
    func_80136E84(&mLayout, mArcResourceAccessor, "mf10_cry06_start.brlyt");
    func_80136F08(mLayout, &mAnimTrans, mArcResourceAccessor, "mf10_cry06_start_in.brlan");
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
    func_80136E84(&mLayout, mArcResourceAccessor, "mf10_cry02_prt00.brlyt");
    func_80136F08(mLayout, &mAnimTrans, mArcResourceAccessor, "mf10_cry02_prt00_in.brlan");
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
    func_80136E84(&mLayout, mArcResourceAccessor, "mf10_cry02_prt01.brlyt");
    func_80136F08(mLayout, &mAnimTrans, mArcResourceAccessor, "mf10_cry02_prt01_in.brlan");
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
    func_80136E84(&mLayout, mArcResourceAccessor, "mf10_cry02_prt02.brlyt");
    func_80136F08(mLayout, &mAnimTrans, mArcResourceAccessor, "mf10_cry02_prt02_in.brlan");
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
CMCEffUpPrm::CMCEffUpPrm(nw4r::lyt::ArcResourceAccessor* pArcResourceAccessor) : unk4(1), mArcResourceAccessor(pArcResourceAccessor) {
    UnkStruct* i = (UnkStruct*)((u8*)this + 0xc);
    do {
        i->layout = nullptr;
        i->animTrans = nullptr;
        i->unk8 = 0;
        i += 1;
    } while(i < (UnkStruct*)((u8*)this + 0x6c));
    unk6c = 0;
}

CMCEffUpPrm::~CMCEffUpPrm() {}

void CMCEffUpPrm::func_802243B4() {
    for(u8 i = 0; i < 8; ++i) {
        UnkStruct* unkStructure = &unkStruct[i];
        func_80136E84(&unkStructure->layout, mArcResourceAccessor, "mf10_cry02_prt03.brlyt");
        func_80136F08(unkStructure->layout, &unkStructure->animTrans, mArcResourceAccessor, "mf10_cry02_prt03_in.brlan");
        nw4r::lyt::Pane* rootPane = unkStructure->layout->GetRootPane();
        func_8013676C(rootPane, func_801355BC());
        unkStructure->layout->SetAnimationEnable(unkStructure->animTrans, true);
        unkStructure->layout->Animate(0);
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
    func_80136E84(&mLayout, mArcResourceAccessor, "mf10_cry06_fail.brlyt");
    func_80136F08(mLayout, &mAnimTrans, mArcResourceAccessor, "mf10_cry06_fail_in.brlan");
    mLayout->SetAnimationEnable(mAnimTrans, true);
    mLayout->Animate(false);
    unk14 = 1;
}
/******************************************************************************
 *
 * CMCEffCrystal
 *
 ******************************************************************************/
CMCEffCrystal::CMCEffCrystal(nw4r::lyt::ArcResourceAccessor* pArcResourceAccessor)
    : unk4(0),
      unk5(1),
      mArcResourceAccessor(pArcResourceAccessor),
      mLayoutC(nullptr),
      mAnimTrans10(nullptr),
      mAnimTrans14(nullptr),
      mLayout18(nullptr),
      mAnimTrans1c(nullptr),
      mAnimTrans20(nullptr),
      mAnimTrans24(nullptr),
      mAnimTrans28(nullptr),
      mLayout2c(nullptr),
      mAnimTrans30(nullptr),
      unk34(0),
      unk36(0),
      unk38(0) {}

CMCEffCrystal::~CMCEffCrystal() {}

void CMCEffCrystal::func_80224CE4() {
    func_80136E84(&mLayoutC, mArcResourceAccessor, "mf10_cry02_trc.brlyt");
    func_80136F08(mLayoutC, &mAnimTrans10, mArcResourceAccessor, "mf10_cry02_trc_in.brlan");
    func_80136F08(mLayoutC, &mAnimTrans14, mArcResourceAccessor, "mf10_cry02_trc_out.brlan");
    func_80136E84(&mLayout18, mArcResourceAccessor, "mf10_cry03_crys.brlyt");
    func_80136F08(mLayout18, &mAnimTrans1c, mArcResourceAccessor, "mf10_cry03_crys_in.brlan");
    func_80136F08(mLayout18, &mAnimTrans20, mArcResourceAccessor, "mf10_cry03_crys_change.brlan");
    func_80136F08(mLayout18, &mAnimTrans24, mArcResourceAccessor, "mf10_cry03_crys_spl.brlan");
    func_80136F08(mLayout18, &mAnimTrans28, mArcResourceAccessor, "mf10_cry03_crys_out.brlan");

    nw4r::lyt::Pane* rootPane = mLayout18->GetRootPane();
    void* something = CDeviceFont::func_80452C10(1, mLayout18);
    //TODO It would help to have CDeviceFont return type and not void*
    u32 result = 0; //something -> someCall at 0x24
    func_8013676C(rootPane, result);
    func_80136E84(&mLayout2c, mArcResourceAccessor, "mf10_cry04_lst.brlyt");
    func_80136F08(mLayout2c, &mAnimTrans30, mArcResourceAccessor, "mf10_cry04_lst_roop.brlan");
    func_802256E0();
    func_802257F0();
    func_80225A10();
    unk34 = 1;
}

void CMCEffCrystal::func_80224E1C() {
    if(unk34 == 0) return;
    switch(unk4) {
        case 1:
            func_802254C4();
            break;
        case 2:
            func_80225514();
            break;
        case 4:
            func_80225560();
            break;
        case 5:
            func_802255CC();
            break;
        case 6:
            func_80225694();
            break;
        default:
            break;
    }
    func_80137444(mAnimTrans30, 1.0f);
    mLayoutC->Animate(0);
    mLayout18->Animate(0);
    mLayout2c->Animate(0);
}

void CMCEffCrystal::func_80224EF8(nw4r::lyt::DrawInfo* drawInfo) {
    if(unk34 == 0) return;
    func_80137038(mLayoutC, drawInfo, 0, 1);
    func_80137038(mLayout18, drawInfo, 0, 1);
    if(unk4 != 2 && unk4 != 3) {
        if(unk4 != 5) {
            return;
        }
    }
    func_80137038(mLayout2c, drawInfo, 0, 1);
}

void CMCEffCrystal::func_80224F84() {
    unk34 = 0;
    if(mLayoutC != nullptr) {
        delete mLayoutC;
        mLayoutC = nullptr;
    }
    if(mLayout18 != nullptr) {
        delete mLayout18;
        mLayout18 = nullptr;
    }
    if(mLayout2c != nullptr) {
        delete mLayout2c;
        mLayout2c = nullptr;
    }
}

u8 CMCEffCrystal::func_8022503C() {
    return unk5;
}

void CMCEffCrystal::func_80225044() {
    if(unk4 == 0) {
        unk4 = 1;
        func_802256E0();
        mAnimTrans10->SetFrame(0.0f);
        func_802257F0();
        mAnimTrans1c->SetFrame(0.0f);
        unk5 = 0;
        func_80124270(mLayout2c->GetRootPane(), 1);
    }
}

void CMCEffCrystal::func_802250BC() {
    if(unk4 == 3) {
        unk4 = 4;
        func_80225768();
        mAnimTrans14->SetFrame(0.0f);
        func_80225988();
        if(mLayout2c->GetRootPane()->GetFlag() & 0x1) {
            mAnimTrans28->SetFrame(0.0f);
        } else {
            mAnimTrans28->SetFrame(mAnimTrans28->GetFrameSize() - 1);
        }
        unk5 = 0;
    }
}

void CMCEffCrystal::func_80225170() {
    if(unk4 == 3) {
        unk4 = 5;
        func_80225878();
        mAnimTrans20->SetFrame(0.0f);
        unk5 = 0;
    }
}

void CMCEffCrystal::func_802251C4() {
    if(unk4 == 3) {
        unk4 = 6;
        func_80225900();
        mAnimTrans24->SetFrame(0.0f);
        unk5 = 0;
        func_80124270(mLayout2c->GetRootPane(), 0);
    }
}

void CMCEffCrystal::func_80225228(u32 arg1) {
    func_80124270(mLayoutC->GetRootPane()->FindPaneByName("nul_trc01", true), arg1);
}

void CMCEffCrystal::func_80225280(u16 arg1, u8 arg2) {
    unk36 = arg1;
    unk38 = arg2;
    char* name = func_8013639C(cf::CfBdat::spBtlSkillListFileData, "name", arg1);
    char* itemName = func_80136190("MNU_item", "name", 0x1e - (arg2 - 1));
    char buffer[0x20];
    sprintf(buffer, "%s%s", name, itemName);
    func_80136A1C(mLayout18, "txt_listname01", buffer, 0);
    void* resource = nullptr;
    u8 result = func_801361E8(cf::CfBdat::spBtlSkillListFileData, "atr_type", arg1);
    switch(result) {
        case 0:
            resource = mArcResourceAccessor->GetResource(mArcResourceAccessor->RES_TYPE_TEXTURE, "mf00_com00_dmy.tpl", 0);
            break;
        case 4:
            resource = mArcResourceAccessor->GetResource(mArcResourceAccessor->RES_TYPE_TEXTURE, "mf10_cry00_crys01.tpl", 0);
            break;
        case 5:
            resource = mArcResourceAccessor->GetResource(mArcResourceAccessor->RES_TYPE_TEXTURE, "mf10_cry00_crys02.tpl", 0);
            break;
        case 6:
            resource = mArcResourceAccessor->GetResource(mArcResourceAccessor->RES_TYPE_TEXTURE, "mf10_cry00_crys03.tpl", 0);
            break;
        case 7:
            resource = mArcResourceAccessor->GetResource(mArcResourceAccessor->RES_TYPE_TEXTURE, "mf10_cry00_crys04.tpl", 0);
            break;
        case 8:
            resource = mArcResourceAccessor->GetResource(mArcResourceAccessor->RES_TYPE_TEXTURE, "mf10_cry00_crys05.tpl", 0);
            break;
        case 9:
            resource = mArcResourceAccessor->GetResource(mArcResourceAccessor->RES_TYPE_TEXTURE, "mf10_cry00_crys06.tpl", 0);
            break;
        default:
            break;
    }
    if(resource != nullptr) {
        func_80137E7C(mLayout18, "pic_crs", resource);
        func_80137E7C(mLayout18, "pic_crs01", resource);
    }
}

void CMCEffCrystal::func_802254C4() {
    func_80137444(mAnimTrans1c, 1.0f);
    if(func_80137444(mAnimTrans10, 1.0f) != 0) {
        unk4 = 2;
    }
}

void CMCEffCrystal::func_80225514() {
    if(func_80137444(mAnimTrans1c, 1.0f) != 0) {
        unk4 = 3;
        unk5 = 1;
    }
}

void CMCEffCrystal::func_80225560() {
    u32 unk1 = func_80137444(mAnimTrans14, 1.0f);
    u32 unk2 = func_80137444(mAnimTrans28, 1.0f);
    if(unk1 != 0 && unk2 != 0) {
        unk4 = 0;
        unk5 = 1;
    }
}

void CMCEffCrystal::func_802255CC() {
    if(func_80137444(mAnimTrans20, 1.0f)) {
        unk4 = 3;
        unk5 = 1;
    }
    if(mAnimTrans20->GetFrame() >= 5.0f) {
        char* name = func_8013639C(cf::CfBdat::spBtlSkillListFileData, "name", unk36);
        char* itemName = func_80136190("MNU_item", "name", 0x1e - unk38);
        char buffer[0x20];
        sprintf(buffer, "%s%s", name, itemName);
        func_80136A1C(mLayout18, "txt_listname01", buffer, 0);
    }
}

void CMCEffCrystal::func_80225694() {
    if(func_80137444(mAnimTrans24, 1.0f)) {
        unk4 = 3;
        unk5 = 1;
    }
}

void CMCEffCrystal::func_802256E0() {
    mLayoutC->UnbindAllAnimation();
    mLayoutC->BindAnimation(mAnimTrans10);
    mLayoutC->SetAnimationEnable(mAnimTrans10, true);
    mLayoutC->Animate(0);
}

void CMCEffCrystal::func_80225768() {
    mLayoutC->UnbindAllAnimation();
    mLayoutC->BindAnimation(mAnimTrans14);
    mLayoutC->SetAnimationEnable(mAnimTrans14, true);
    mLayoutC->Animate(0);
}

void CMCEffCrystal::func_802257F0() {
    mLayout18->UnbindAllAnimation();
    mLayout18->BindAnimation(mAnimTrans1c);
    mLayout18->SetAnimationEnable(mAnimTrans1c, true);
    mLayout18->Animate(0);
}

void CMCEffCrystal::func_80225878() {
    mLayout18->UnbindAllAnimation();
    mLayout18->BindAnimation(mAnimTrans20);
    mLayout18->SetAnimationEnable(mAnimTrans20, true);
    mLayout18->Animate(0);
}

void CMCEffCrystal::func_80225900() {
    mLayout18->UnbindAllAnimation();
    mLayout18->BindAnimation(mAnimTrans24);
    mLayout18->SetAnimationEnable(mAnimTrans24, true);
    mLayout18->Animate(0);
}

void CMCEffCrystal::func_80225988() {
    mLayout18->UnbindAllAnimation();
    mLayout18->BindAnimation(mAnimTrans28);
    mLayout18->SetAnimationEnable(mAnimTrans28, true);
    mLayout18->Animate(0);
}

void CMCEffCrystal::func_80225A10() {
    mLayout2c->UnbindAllAnimation();
    mLayout2c->BindAnimation(mAnimTrans30);
    mLayout2c->SetAnimationEnable(mAnimTrans30, true);
    mLayout2c->Animate(0);
}
/******************************************************************************
 *
 * CMCEffUpRank
 *
 ******************************************************************************/
CMCEffUpRank::CMCEffUpRank(nw4r::lyt::ArcResourceAccessor* pArcResourceAccessor) : CMCEffStart(pArcResourceAccessor) {}

CMCEffUpRank::~CMCEffUpRank() {}

void CMCEffUpRank::func_80225B14() {
    func_80136E84(&mLayout, mArcResourceAccessor, "mf10_cry05_rank.brlyt");
    func_80136F08(mLayout, &mAnimTrans, mArcResourceAccessor, "mf10_cry05_rank_in.brlan");
    mLayout->SetAnimationEnable(mAnimTrans, true);
    mLayout->Animate(0);
    unk14 = 1;
}

void CMCEffUpRank::func_80225BA4() {
    func_80223F24();
    func_80138078(0x8d);
}
/******************************************************************************
 *
 * CMCEffDivide
 *
 ******************************************************************************/
CMCEffDivide::CMCEffDivide(nw4r::lyt::ArcResourceAccessor* pArcResourceAccessor) : CMCEffStart(pArcResourceAccessor) {}

CMCEffDivide::~CMCEffDivide() {}

void CMCEffDivide::func_80225C48() {
    func_80136E84(&mLayout, mArcResourceAccessor, "mf10_cry05_spl.brlyt");
    func_80136F08(mLayout, &mAnimTrans, mArcResourceAccessor, "mf10_cry05_spl_in.brlan");
    mLayout->SetAnimationEnable(mAnimTrans, true);
    mLayout->Animate(0);
    unk14 = 1;
}

void CMCEffDivide::func_80225CD8() {
    func_80223F24();
    func_80138078(0x8d);
}
/******************************************************************************
 *
 * CMCEffCylinder
 *
 ******************************************************************************/
CMCEffCylinder::CMCEffCylinder(nw4r::lyt::ArcResourceAccessor* pArcResourceAccessor)
    : unk4(0),
      unk5(1),
      mArcResourceAccessor(pArcResourceAccessor),
      mLayout(nullptr),
      mAnimTrans10(nullptr),
      mAnimTrans14(nullptr),
      mAnimTrans18(nullptr),
      unk1c(0) {}

CMCEffCylinder::~CMCEffCylinder() {}

void CMCEffCylinder::func_80225D78() {
    func_80136E84(&mLayout, mArcResourceAccessor, "mf10_cry06_chn.brlyt");
    func_80136F08(mLayout, &mAnimTrans10, mArcResourceAccessor, "mf10_cry06_chn_in.brlan");
    func_80136F08(mLayout, &mAnimTrans14, mArcResourceAccessor, "mf10_cry06_chn_change.brlan");
    func_80136F08(mLayout, &mAnimTrans18, mArcResourceAccessor, "mf10_cry06_chn_out.brlan");
    u32 ul = func_801355A0();
    if(ul) {
        func_801368C0(mLayout, "txt_num", ul);
    }
    func_80226120();
    unk1c = 1;
}

void CMCEffCylinder::func_80225E20() {
    if(unk1c == 0) return;
    switch(unk4) {
        case 1:
            func_8022603C();
            break;
        case 3:
            func_80226088();
            break;
        case 4:
            func_802260D4();
            break;
        default:
            break;
    }
    mLayout->Animate(0);
}

void CMCEffCylinder::func_80225EA0(nw4r::lyt::DrawInfo* drawInfo) {
    if(unk1c == 0) return;
    func_80137038(mLayout, drawInfo, 0, 1);
}

void CMCEffCylinder::func_80225EC0() {
    unk1c = 0;
    if(mLayout != nullptr) {
        delete mLayout;
        mLayout = nullptr;
    }
}

u8 CMCEffCylinder::func_80225F20() {
    return unk5;
}

void CMCEffCylinder::func_80225F28() {
    if(unk4 == 0) {
        unk4 = 1;
        func_80226120();
        mAnimTrans10->SetFrame(0.0f);
        unk5 = 0;
    }
}

void CMCEffCylinder::func_80225F7C() {
    if(unk4 == 2) {
        unk4 = 3;
        func_80226230();
        mAnimTrans18->SetFrame(0.0f);
        unk5 = 0;
    }
}

void CMCEffCylinder::func_80225FD0() {
    if(unk4 == 2) {
        unk4 = 4;
        func_802261A8();
        mAnimTrans14->SetFrame(0.0f);
        unk5 = 0;
    }
}

void CMCEffCylinder::func_80226024(u8 arg) {
    func_80136910(mLayout, "txt_num", arg);
}

void CMCEffCylinder::func_8022603C() {
    if(func_80137444(mAnimTrans10, 1.0f)) {
        unk4 = 2;
        unk5 = 1;
    }
}

void CMCEffCylinder::func_80226088() {
    if(func_80137444(mAnimTrans18, 1.0f)) {
        unk4 = 0;
        unk5 = 1;
    }
}

void CMCEffCylinder::func_802260D4() {
    if(func_80137444(mAnimTrans14, 1.0f)) {
        unk4 = 2;
        unk5 = 1;
    }
}

void CMCEffCylinder::func_80226120() {
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(mAnimTrans10);
    mLayout->SetAnimationEnable(mAnimTrans10, true);
    mLayout->Animate(0);
}

void CMCEffCylinder::func_802261A8() {
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(mAnimTrans14);
    mLayout->SetAnimationEnable(mAnimTrans14, true);
    mLayout->Animate(0);
}

void CMCEffCylinder::func_80226230() {
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(mAnimTrans18);
    mLayout->SetAnimationEnable(mAnimTrans18, true);
    mLayout->Animate(0);
}