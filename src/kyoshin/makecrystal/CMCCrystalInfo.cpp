#include "kyoshin/makecrystal/CMCCrystalInfo.hpp"

#include "kyoshin/code_80135FDC.hpp"
#include "monolib/lib/CLibLayout.hpp"
#include "monolib/work/IWorkEvent.hpp"
#include "stddef.h"

#include "nw4r/lyt/lyt_pane.h"

extern u32 func_801355BC();
extern u32 func_80137510(nw4r::lyt::AnimTransform*, float);
extern u32 func_80137444(nw4r::lyt::AnimTransform*, float);
extern void func_801D1E0C(void*, void*);

CMCCrystalInfo::CMCCrystalInfo()
    : mFileHandle24(nullptr),
      mFileHandle28(nullptr),
      mArcResourceAccessor2c(nullptr),
      mArcResourceAccessor30(nullptr),
      mLayout(nullptr),
      mAnimTrans38(nullptr),
      mAnimTrans3c(nullptr),
      mAnimTrans40(nullptr),
      mAnimTrans44(nullptr),
      unk48(0),
      unk4c(0),
      unk50(0),
      unk51(1) {}

CMCCrystalInfo::~CMCCrystalInfo() {}

void CMCCrystalInfo::func_8021A718() {
    u32 allocHandle = mtl::MemManager::getHandleMEM2();
    mFileHandle24 = CDeviceFile::readFile(allocHandle, "/menu/McCrystalInfo.arc", this, 0, 0);

    u32 allocHandle2 = mtl::MemManager::getHandleMEM2();
    mFileHandle28 = CDeviceFile::readFile(allocHandle2, "/menu/tpl/CrystalIcon.arc", this, 0, 0);
}

void CMCCrystalInfo::func_8021A780() {
    if(unk48 <= 0) return;
    switch((s32)unk4c) {
        case 1:
            func_8021AF74();
            break;
        case 2:
            func_8021AFC0();
            break;
        case 4:
            func_8021B00C();
            break;
        case 5:
            func_8021B058();
            break;
        case 6:
            func_8021B0A4();
            break;
        case 7:
            func_8021B0F0();
            break;
        case 8:
            func_8021B13C();
            break;
    }
    mLayout->Animate(0);
}

void CMCCrystalInfo::func_8021A840(nw4r::lyt::DrawInfo* drawInfo) {
    if(unk48 == 0) return;
    func_80137038(mLayout, drawInfo, 0, 1);
}

void CMCCrystalInfo::func_8021A860() {
    func_801390E0(&mFileHandle24);
    func_801390E0(&mFileHandle28);
    unk48 = 0;
    if(mLayout != nullptr) {
        delete mLayout;
        mLayout = nullptr;
    }
    func_80139124(mArcResourceAccessor2c);
    func_80139124(mArcResourceAccessor30);
    unk4.func_8045F778();
    unk14.func_8045F778();
}

u8 CMCCrystalInfo::func_8021A8EC() {
    return unk50;
}

void CMCCrystalInfo::func_8021A8F4() {
    if(unk4c == 0) {
        unk4c = 1;
        unk51 = 0;
        func_8021B52C();
    }
}

void CMCCrystalInfo::func_8021A918() {
    if((s32)unk4c == 3) {
        unk4c = 4;
        unk51 = 0;
        func_8021B5B4();
    }
}
void CMCCrystalInfo::func_8021A93C() {
    if((s32)unk4c == 3) {
        unk4c = 6;
        unk51 = 0;
        func_8021B6C4();
    }
}
void CMCCrystalInfo::func_8021A960() {
    if((s32)unk4c == 3) {
        unk4c = 7;
        unk51 = 0;
        func_8021B63C();
    }
}
void CMCCrystalInfo::func_8021A984() {
    if((s32)unk4c == 3) {
        unk4c = 8;
        unk51 = 0;
        func_8021B63C();
    }
}

void CMCCrystalInfo::func_8021A9A8(u32 arg1, void* arg2) {
    void* pVoid;
    if(arg2 != nullptr) {
        pVoid = arg2;
    } else {
        pVoid = nullptr;
    }
    u32 ul1;
    if(pVoid != nullptr) {
        //Todo, simplify when arg2 type is found
        ul1 = *(u32*)pVoid >> 20;
    } else {
        ul1 = arg1;
    }
    u32 unknownUl2 = func_801392E4((u16)ul1);
    if(pVoid != nullptr && *(u32*)pVoid != 0) {
        bool isValid = false;
        //Todo, simplify when arg2 type is found
        u8 unkU8 = (*(u32*)pVoid >> 16) & 0xF;
        if(unkU8 == 9) {
            if((u16)(((u8*)pVoid)[0x07] & 3) == 2) {
                isValid = true;
            }
        }
        if(!isValid) { //line 0x84
            isValid = false;
            if(unkU8 == 9 && (u16)(((u8*)pVoid)[0x07] & 3) == 3) {
                isValid = true;
            }
            if(!isValid) {
                goto end;
            }
        }
        unknownUl2 = 9;
    }
end:
    if((s32)(u16)unknownUl2 == 9) {
        func_8021B2E0((u16)ul1, arg2);
    } else {
        func_8021B42C();
    }
}

//todo use of lbl_xxxxxxxx
void CMCCrystalInfo::func_8021AA9C(u32 arg1, u32 arg2, u8 arg3, u32 arg4) {
    char buffer[0x24];
    char* name = func_8013639C(cf::CfBdat::spItmCrystalListFileData, "name");
    u32 r29 = arg1 + 1;
    sprintf(buffer, "txt_listname%02d", r29);
    func_80136B4C(mLayout, buffer, name, 0);

    u32 lbl1 = 0;
    if(arg4 != 0) {
        lbl1 = lbl_80666FD0;
    } else {
        lbl1 = lbl_80666FC8;
    }

    u32 lbl2 = lbl_80666FD8;
    if(arg4 != 0) {
        lbl2 = lbl_80666FC8;
    }

    func_80139A18(mLayout, buffer, lbl2, lbl1);

    sprintf(buffer, "txt_listvalue%02d", r29);
    func_80136910(mLayout, buffer, arg3);
    if(arg4 != 0) {
        lbl1 = lbl_80666FF0;
    } else {
        lbl1 = lbl_80667000;
    }
    lbl2 = lbl_80666FE8;
    if(arg4 != 0) {
        lbl2 = lbl_80666FF8;
    }
    func_80139A18(mLayout, buffer, lbl2, lbl1);

    sprintf(buffer, "txt_listpara%02d", r29);
    char* MnuItemName = func_80136190("MNU_item", "name", 0x21);
    func_80136910(mLayout, buffer, arg3);
    func_80136B4C(mLayout, buffer, MnuItemName, 0);
    if(arg4 != 0) {
        //load lbl_80666FD0
    } else {
        //load lbl_80666FE0
    }
    if(arg4 != 0) {
        //load lbl_80666FC8
    } else {
        //load lbl_80666FD8
    }
    func_80139A18(mLayout, buffer, nullptr, nullptr);

    u8 atrType = func_801361E8(cf::CfBdat::spBtlSkillListFileData, "atr_type", arg2);
    if(arg4 != 0) {
        void* resource;
        switch(atrType) {
            case 4:
                resource = mArcResourceAccessor30->GetResource(0x74696d67, "mf00_reg30_crys00.tpl", nullptr);
                break;
            case 5:
                resource = mArcResourceAccessor30->GetResource(0x74696d67, "mf00_reg30_crys01.tpl", nullptr);
                break;
            case 6:
                resource = mArcResourceAccessor30->GetResource(0x74696d67, "mf00_reg30_crys02.tpl", nullptr);
                break;
            case 7:
                resource = mArcResourceAccessor30->GetResource(0x74696d67, "mf00_reg30_crys03.tpl", nullptr);
                break;
            case 8:
                resource = mArcResourceAccessor30->GetResource(0x74696d67, "mf00_reg30_crys04.tpl", nullptr);
                break;
            case 9:
                resource = mArcResourceAccessor30->GetResource(0x74696d67, "mf00_reg30_crys05.tpl", nullptr);
                break;
            case 0:
                resource = mArcResourceAccessor30->GetResource(0x74696d67, "mf00_reg30_crys06.tpl", nullptr);
                break;
        }
        if(resource != nullptr) {
            sprintf(buffer, "pic_ethcol%02d", r29);
            func_80137E7C(mLayout, buffer, resource);
        }
    }
}

void CMCCrystalInfo::func_8021ADC4() {
    char buffer[0x20];
    for(u8 i = 1; i <= 8; i++) {
        sprintf(buffer, "txt_listname%02d", i);
        func_80136B4C(mLayout, buffer, "", 0);

        sprintf(buffer, "txt_listvalue%02d", i);
        func_80136B4C(mLayout, buffer, "", 0);

        sprintf(buffer, "txt_listpara%02d", i);
        func_80136B4C(mLayout, buffer, "", 0);

        void* resource = mArcResourceAccessor2c->GetResource(0x74696d67, "mf00_com00_dmy.tpl", nullptr);
        if(resource != nullptr) {
            sprintf(buffer, "pic_ethcol%02d", i);
            func_80137E7C(mLayout, buffer, resource);
        }
    }
}
void CMCCrystalInfo::func_8021AED0(CMCCrystalInfo* other, u32 arg2) {
    char buffer[0x28];
    sprintf(buffer, "nul_list%02d", arg2 + 1);

    nw4r::lyt::Pane* pane1 = other->mLayout->GetRootPane()->FindPaneByName(buffer, true);
    nw4r::lyt::Pane* pane2 = other->mLayout->GetRootPane()->FindPaneByName("nul_proportion", true);
    func_80137924((IWorkEvent*)this, pane1, pane2, other->mLayout->GetRootPane());
}
void CMCCrystalInfo::func_8021AF74() {
    if(func_80137444(mAnimTrans38, 1.0f) != 0) {
        unk4c = 2;
        func_8021B5B4();
    };
}
void CMCCrystalInfo::func_8021AFC0() {
    if(func_80137444(mAnimTrans3c, 1.0f) != 0) {
        unk4c = 3;
        unk51 = 1;
    };
}
void CMCCrystalInfo::func_8021B00C() {
    if(func_80137510(mAnimTrans3c, 1.0f) != 0) {
        unk4c = 5;
        func_8021B52C();
    };
}
void CMCCrystalInfo::func_8021B058() {
    if(func_80137510(mAnimTrans38, 1.0f) != 0) {
        unk4c = 0;
        unk51 = 1;
    };
}
void CMCCrystalInfo::func_8021B0A4() {
    if(func_80137444(mAnimTrans44, 1.0f) != 0) {
        unk51 = 1;
        unk4c = 0;
    };
}
void CMCCrystalInfo::func_8021B0F0() {
    if(func_80137444(mAnimTrans40, 1.0f) != 0) {
        unk51 = 1;
        unk4c = 3;
    };
}
void CMCCrystalInfo::func_8021B13C() {
    if(func_80137510(mAnimTrans40, 1.0f) != 0) {
        unk51 = 1;
        unk4c = 3;
    }
}

//use of CItem
void CMCCrystalInfo::func_8021B188(void* arg1, u32 arg2, void* arg3) {
    //string 0x6b : "MNU_item"
    //string 0x32 : "name"
}
void CMCCrystalInfo::func_8021B2E0(u32 arg1, void* arg2) {
    //string 0x156 "txt_value30"
    //string 0x162 "txt_para%02d"
    //string 0x16f "txt_value%02d"
    //string 0x162 "txt_para%02d"
    //string 0x6b "MNU_item"
    //string 0x32 "name"
}

void CMCCrystalInfo::func_8021B42C() {
    char buffer[0x28];
    func_80136B4C(mLayout, "txt_value30", "", 0);
    u32 i2 = 0;
    for(u32 i = 0; i < 4; i++) {
        i2 = (u8)i * 2;
        sprintf(buffer, "txt_para%02d", i2 + 0x1f);
        func_80136B4C(mLayout, buffer, "", 0);

        sprintf(buffer, "txt_value%02d", (u8)i + 0x1f);
        func_80136B4C(mLayout, buffer, "", 0);

        sprintf(buffer, "txt_para%02d", i2 + 0x20);
        func_80136B4C(mLayout, buffer, "", 0);
    }
}

void CMCCrystalInfo::func_8021B500() {
    if(mLayout == nullptr || mArcResourceAccessor30 == nullptr) {
        return;
    }
    unk50 = 1;
    unk48 = 1;
}

void CMCCrystalInfo::func_8021B52C() {
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(mAnimTrans38);
    mLayout->SetAnimationEnable(mAnimTrans38, true);
    mLayout->Animate(0);
}

void CMCCrystalInfo::func_8021B5B4() {
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(mAnimTrans3c);
    mLayout->SetAnimationEnable(mAnimTrans3c, true);
    mLayout->Animate(0);
}
void CMCCrystalInfo::func_8021B63C() {
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(mAnimTrans40);
    mLayout->SetAnimationEnable(mAnimTrans40, true);
    mLayout->Animate(0);
}
void CMCCrystalInfo::func_8021B6C4() {
    mLayout->UnbindAllAnimation();
    mLayout->BindAnimation(mAnimTrans44);
    mLayout->SetAnimationEnable(mAnimTrans44, true);
    mLayout->Animate(0);
}
//todo use of lbl_xxxxxxxx
bool CMCCrystalInfo::OnFileEvent(CEventFile* pEventFile) {
    if(mFileHandle24 == pEventFile->mFileHandle) {
        unk4.createRegion(mtl::MemManager::getHandleMEM2(), (0x2 << 16) - 0x8000, "CMCCrystalInfo", 0);
        Class_8045F858 class8045F858_1 = Class_8045F858(&unk4);
        void* mData = mFileHandle24->mData;
        mFileHandle24->mData = nullptr;
        mtl::MemManager::func_80434A4C(false);
        mArcResourceAccessor2c = CLibLayout::createArcResourceAccessor();
        mArcResourceAccessor2c->Attach(mData, "arc");
        func_80136E84(&mLayout, mArcResourceAccessor2c, "mf10_cry00_inf00.brlyt");
        func_80136F08(mLayout, &mAnimTrans38, mArcResourceAccessor2c, "mf10_cry00_inf00_in.brlan");
        func_80136F08(mLayout, &mAnimTrans3c, mArcResourceAccessor2c, "mf10_cry00_inf00_info_in.brlan");
        func_80136F08(mLayout, &mAnimTrans40, mArcResourceAccessor2c, "mf10_cry00_inf00_box.brlan");
        func_80136F08(mLayout, &mAnimTrans44, mArcResourceAccessor2c, "mf10_cry00_inf00_out.brlan");

        void* pSomething = CDeviceFont::func_80452C10(1, mLayout);
        //pSsomething-> somecall() at 0x24

        func_8013676C(mLayout->GetRootPane(), nullptr /*return of somecall()*/);
        u32 unknownUl1 = func_801355BC();
        if(unknownUl1 != 0) {
            func_801368C0(mLayout, "txt_value30", unknownUl1);
            func_801368C0(mLayout, "txt_value31", unknownUl1);
            func_801368C0(mLayout, "txt_value32", unknownUl1);
            func_801368C0(mLayout, "txt_value33", unknownUl1);
            func_801368C0(mLayout, "txt_value34", unknownUl1);
            func_801368C0(mLayout, "txt_para32", unknownUl1);
            func_801368C0(mLayout, "txt_para34", unknownUl1);
            func_801368C0(mLayout, "txt_para36", unknownUl1);
            func_801368C0(mLayout, "txt_para38", unknownUl1);

            char* buffer;
            for(u8 i = 1; i <= 8; i++) {
                sprintf(buffer, "txt_listvalue%02d", i);
                func_801368C0(mLayout, buffer, unknownUl1);
                sprintf(buffer, "txt_listpara%02d", i);
                func_801368C0(mLayout, buffer, unknownUl1);
            }
        }

        func_8021B52C();
        mLayout->Animate(0);

        char* itemName = func_80136190("MNU_item", "name", 0x18);
        func_80136B4C(mLayout, "txt_para30", itemName, 0);

        char* crystalInfo2c = func_80136190("MNU_crystal", "info", 0x2c);
        func_80136B4C(mLayout, "txt_listname00", crystalInfo2c, 0);

        char* crystalInfo2d = func_80136190("MNU_crystal", "info", 0x2d);
        func_80136B4C(mLayout, "txt_listvalue00", crystalInfo2d, 0);

        func_8021ADC4();

        //todo with lbl initialized, this could (should?) clarify itself
        nw4r::lyt::Pane* rootPane = mLayout->GetRootPane();
        nw4r::lyt::Pane* listNamePane = rootPane->FindPaneByName("txt_listname01", true);
        func_801397AC(rootPane, 0);
        func_801D1E0C(nullptr, nullptr);
        func_801397AC(rootPane, 1);
        func_801D1E0C(nullptr, nullptr);

        nw4r::lyt::Pane* listValuePane = mLayout->GetRootPane()->FindPaneByName("txt_listvalue01", 1);
        func_801397AC(rootPane, 0);
        func_801D1E0C(nullptr, nullptr);
        func_801397AC(rootPane, 1);
        func_801D1E0C(nullptr, nullptr);
        
        func_8021B500();
        mFileHandle24 = nullptr;

        unk14.func_8045F810();
        return true;
    } else if(mFileHandle28 == pEventFile->mFileHandle) {
        u32 allocHandle = mtl::MemManager::getHandleMEM2();
        unk14.createRegion(allocHandle, 0x100, "CItemBoxInfoTex", 0);
        Class_8045F858 class8045F858_2 = Class_8045F858(&unk14);
        void* mData = mFileHandle28->mData;
        mFileHandle28->mData = nullptr;
        mtl::MemManager::func_80434A4C(false);
        mArcResourceAccessor30 = CLibLayout::createArcResourceAccessor();
        mArcResourceAccessor30->Attach(mData, "arc");
        func_8021B500();
        mFileHandle28 = nullptr;
        unk14.func_8045F810();
        return true;
    }

    return false;
}
