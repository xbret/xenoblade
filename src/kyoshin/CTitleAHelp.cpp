#include "kyoshin/CTitleAHelp.hpp"

#include "kyoshin/CUICfManager.hpp"
#include "kyoshin/cf/CfGameManager.hpp"
#include "kyoshin/code_80135FDC.hpp"
#include "monolib/device/CDeviceFile.hpp"
#include "monolib/device/CDeviceFont.hpp"
#include "monolib/device/CFileHandle.hpp"
#include "monolib/lib/CLibLayout.hpp"
#include "monolib/work/CEventFile.hpp"
#include "revolution/gx/GXTypes.h"

#include <nw4r/lyt.h>
#include <nw4r/ut.h>

extern void func_80124270(nw4r::lyt::Pane*, u32);
extern void func_80127BD8(nw4r::math::VEC3*, nw4r::math::VEC3*);

static GXColorS10 lbl_80666D58; //light orange
static GXColorS10 lbl_80666D60;

static GXColorS10 lbl_80666D68; //light blue
static GXColorS10 lbl_80666D70;

static u16 lbl_80537618[120][7]; //unsure of this lbl, it seems to work, could be a struct tho

CTitleAHelp::CTitleAHelp(char* arg1, u8 arg2)
    : mFileHandle(nullptr),
      mArcResourceAccessor(nullptr),
      mLayout(nullptr),
      mAnimTrans20(nullptr),
      mAnimTrans24(nullptr),
      unk28(0),
      unk2c(nullptr),
      mName(arg1),
      unk34(arg2),
      unk35(0),
      unk36(1),
      unk37(0) {}

CTitleAHelp::~CTitleAHelp() {}

void CTitleAHelp::CTitleAHelp_load() {
    u32 allocHandle = mtl::MemManager::getHandleMEM2();
    mFileHandle = CDeviceFile::readFile(allocHandle, "/menu/TitleAHelp.arc", this, 0, 0);
    CDeviceFile::setHandleFlag1(mFileHandle);
}

void CTitleAHelp::func_801C3FF0() {
    if(unk28 == 0) return;
    switch(unk2c) {
        case 1:
            func_801C477C();
            break;
        case 2:
            func_801C47F8();
            break;
        case 4:
            func_801C484C();
            break;
        case 5:
            func_801C48E0();
            break;
        default:
            break;
    }
    mLayout->Animate(0);
}

void CTitleAHelp::func_801C4080(nw4r::lyt::DrawInfo* drawInfo) {
    if(unk28 == 0) return;
    func_80137038(mLayout, drawInfo, 0, 1);
}

void CTitleAHelp::func_801C40A0() {
    func_801390E0(&mFileHandle);
    unk28 = 0;
    if(mLayout != nullptr) {
        delete mLayout;
        mLayout = nullptr;
    }
    func_80139124(mArcResourceAccessor);
    unk4.func_8045F778();
}

u8 CTitleAHelp::func_801C4114() {
    return unk35;
}

u8 CTitleAHelp::func_801C411C() {
    return unk28;
}

u8 CTitleAHelp::func_801C4124() {
    return unk36;
}

void CTitleAHelp::func_801C412C() {
    if(unk2c == 0) {
        unk2c = 1;
        unk36 = 0;
    }
}

void CTitleAHelp::func_801C414C() {
    if(unk2c == 3) {
        unk2c = 4;
        unk36 = 0;
    }
}

void CTitleAHelp::func_801C416C() {
    if(unk37 != 0 && unk2c == 4) {
        unk2c = 2;
        unk36 = 0;
    }
}

void CTitleAHelp::func_801C4198() {
    if(unk2c == 3) {
        unk2c = 4;
        unk36 = 0;
        unk37 = 1;
    }
}

void CTitleAHelp::func_801C41C0(char* arg) {
    if(mLayout == nullptr) return;
    func_80136B4C(mLayout, "txt_tit", arg, 0);
}

void CTitleAHelp::func_801C41E8(u8 arg) {
    if(mLayout == nullptr) return;

    u16* u16Table = lbl_80537618[arg];
    for(u8 i = 0; i < 6; i++) {
        char buffer1[0x20];
        sprintf(buffer1, "pic_btn%02d", i);
        char buffer2[0x20];
        sprintf(buffer2, "txt_hlp%02d", i);

        u16 tableValue = u16Table[i];
        if(tableValue != 0) {
            func_80124270(mLayout->GetRootPane()->FindPaneByName(buffer1, true), true);
            func_80124270(mLayout->GetRootPane()->FindPaneByName(buffer2, true), true);

            char* fileID = "fileID_1";
            if(cf::CfGameManager::func_80086F9C(-1) != 0) fileID = "fileID_2";

            u16 unknownU16 = func_8013606C("MNU_kyeassign", fileID, tableValue);
            char* name = func_80138F78(unknownU16);
            nw4r::lyt::ArcResourceAccessor* resourceAccessor = CUICfManager::func_801355F4();
            void* resource = resourceAccessor->GetResource(resourceAccessor->RES_TYPE_TEXTURE, name, 0);

            if(resource != nullptr) {
                func_80137E7C(mLayout, buffer1, resource);
                nw4r::lyt::Pane* somePane = mLayout->GetRootPane()->FindPaneByName(buffer1, true);

                if(somePane != nullptr) {
                    //resource size is assigned to pane, this is ugly tho :c
                    void* pVoid = *(void**)((u8*)resource + 0x8);
                    void* Size = *(void**)pVoid;
                    u16 height = *(u16*)((u8*)Size + 0x0);
                    u16 width = *(u16*)((u8*)Size + 0x2);
                    somePane->SetSize(nw4r::lyt::Size(width, height));
                }
            }
            char* helpText = func_80136190("MNU_kyeassign", "help", tableValue);
            func_80136B4C(mLayout, buffer2, helpText, 0);
        } else {
            func_80124270(mLayout->GetRootPane()->FindPaneByName(buffer1, true), false);
            func_80124270(mLayout->GetRootPane()->FindPaneByName(buffer2, true), false);
        }
    }

    u16 someWidth = 0;
    nw4r::math::VEC3 oldVec;
    for(u32 i = 0; i < 6; i++) {
        char buffer3[0x20];

        sprintf(buffer3, "txt_hlp%02d", (u8)i);
        nw4r::lyt::Pane* aPane = mLayout->GetRootPane()->FindPaneByName(buffer3, true);

        if(func_801C4648(aPane) == 0) return;
        if((u8)i == 0) {
            nw4r::math::VEC3* translate = (nw4r::math::VEC3*)&aPane->GetTranslate();
            func_80127BD8(&oldVec, translate);
        }
        nw4r::math::VEC3 newVec = oldVec;
        newVec.x -= (float)someWidth;

        func_80127BD8((nw4r::math::VEC3*)&aPane->GetTranslate(), &newVec);

        nw4r::ut::Font* font = (nw4r::ut::Font*)((nw4r::lyt::TextBox*)aPane)->GetFont();
        const wchar_t* string = ((nw4r::lyt::TextBox*)aPane)->GetString();

        u8 j = 0;
        while(string[j] != 0) {
            someWidth += (u16)font->GetCharWidth(string[j]);
            j++;
        }
        someWidth -= 4;

        char buffer4[0x20];
        sprintf(buffer4, "pic_btn%02d", (u8)i);
        nw4r::lyt::Pane* selectedPane = mLayout->GetRootPane()->FindPaneByName(buffer4, true);

        func_80127BD8(&newVec, &oldVec);
        newVec.x -= (float)someWidth;
        func_80127BD8((nw4r::math::VEC3*)&selectedPane->GetTranslate(), &newVec);

        someWidth += selectedPane->GetSize().width;
        if((u8)i < 5) {
            sprintf(buffer3, "txt_hlp%02d", (u8)i + 1);
            selectedPane = (nw4r::lyt::TextBox*)mLayout->GetRootPane()->FindPaneByName(buffer3, true);
            if(func_801C4648(selectedPane) == 0) return;

            const wchar_t* text = ((nw4r::lyt::TextBox*)selectedPane)->GetString();
            wchar_t firstChar = text[0];
            if(firstChar != 0x2b && firstChar != 0xff0b) { //0x2b = "+" ; 0xff0b = "＋"
                someWidth += 0x10;
            }
        } else {
            someWidth += 0x10;
        }
    }
}

void CTitleAHelp::func_801C4654(u32 arg) {
    if(mLayout == nullptr) return;
    nw4r::lyt::Pane* pane = mLayout->GetRootPane()->FindPaneByName("nul_ttl", true);
    func_80124270(pane, arg);
}

void CTitleAHelp::func_801C46B4(char* arg) {
    if(mLayout == nullptr) return;
    func_80136B4C(mLayout, "txt_caution", arg, 0);
}

void CTitleAHelp::func_801C46DC(u32 arg) {
    if(mLayout == nullptr) return;
    nw4r::lyt::Pane* pane = mLayout->GetRootPane()->FindPaneByName("nul_caution", true);
    func_80124270(pane, arg);
}

void CTitleAHelp::func_801C473C(u8 arg) {
    unk28 = arg;
}

void CTitleAHelp::func_801C4744() {
    func_80139A18(mLayout, "txt_tit", &lbl_80666D58, &lbl_80666D60);
}

void CTitleAHelp::func_801C4760() {
    func_80139A18(mLayout, "txt_tit", &lbl_80666D68, &lbl_80666D70);
}

void CTitleAHelp::func_801C477C() {
    if(func_80137444(mAnimTrans20, 1.0f)) {
        mLayout->SetAnimationEnable(mAnimTrans20, 0);
        mLayout->SetAnimationEnable(mAnimTrans24, 1);
        unk2c = 2;
    }
}

void CTitleAHelp::func_801C47F8() {
    if(func_80137444(mAnimTrans24, 1.0f)) {
        unk2c = 3;
        unk36 = 1;
        unk37 = 0;
    }
}

void CTitleAHelp::func_801C484C() {
    if(func_80137510(mAnimTrans24, 1.0f)) {
        if(unk37 == 0) {
            mLayout->SetAnimationEnable(mAnimTrans24, 0);
            mLayout->SetAnimationEnable(mAnimTrans20, 1);
            unk2c = 5;
        } else {
            unk36 = 1;
        }
    }
}

void CTitleAHelp::func_801C48E0() {
    if(func_80137510(mAnimTrans20, 1.0f)) {
        unk2c = 0;
        unk36 = 1;
    }
}

bool CTitleAHelp::OnFileEvent(CEventFile* pEventFile) {
    if(mFileHandle == pEventFile->mFileHandle) {
        u32 allocHandle = mtl::MemManager::getHandleMEM2();
        unk4.createRegion(allocHandle, 0x3200, "CTitleAHelp", 1);

        Class_8045F858 unkClass8045F858(&unk4);
        void* data = mFileHandle->getData();
        mtl::MemManager::func_80434A4C(false);

        mArcResourceAccessor = CLibLayout::createArcResourceAccessor();
        mArcResourceAccessor->Attach(data, "arc");

        func_80136E84(&mLayout, mArcResourceAccessor, "mf00_hlp_tit.brlyt");
        func_80136F08(mLayout, &mAnimTrans20, mArcResourceAccessor, "mf00_hlp_tit_in.brlan");
        func_80136F08(mLayout, &mAnimTrans24, mArcResourceAccessor, "mf00_hlp_tit_change.brlan");

        nw4r::lyt::Pane* rootPane = mLayout->GetRootPane();

        void* something = CDeviceFont::func_80452C10(1, mLayout);
        u32 result = 0; //something -> someCall at 0x24

        func_8013676C(rootPane, result);

        mLayout->SetAnimationEnable(mAnimTrans24, false);
        mLayout->SetAnimationEnable(mAnimTrans20, true);
        mLayout->Animate(0);

        nw4r::lyt::Pane* nulCautionPane = mLayout->GetRootPane()->FindPaneByName("nul_caution", true);
        func_80124270(nulCautionPane, 0);

        func_801C41C0(mName);
        func_801C41E8(unk34);
        unk35 = 1;
        unk28 = 1;
        mFileHandle = nullptr;

        unk4.func_8045F810();
        return true;
    }
    return false;
}

/******************************************************************************
 *
 * Utility functions
 *
 ******************************************************************************/
bool func_801C4648(nw4r::lyt::Pane* pane) {
    return pane->IsVisible();
}

void sinit_801C4AE4() {
    func_801C4B60(&lbl_80666D58, 0xa8, 0x52, 0x08, 0x00);
    func_801C4B60(&lbl_80666D60, 0xa8, 0x52, 0x08, 0xff);

    func_801C4B60(&lbl_80666D68, 0x05, 0x80, 0xa6, 0x00);
    func_801C4B60(&lbl_80666D70, 0x05, 0x80, 0xa6, 0xff);
}

void func_801C4B60(GXColorS10* color, s16 r, s16 g, s16 b, s16 a) {
    color->a = a;
    color->b = b;
    color->g = g;
    color->r = r;
}
