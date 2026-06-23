#include "kyoshin/CBgTex.hpp"

#include "kyoshin/cf/CfBdat.hpp"
#include "kyoshin/code_80135FDC.hpp"
#include "monolib/lib/CLibLayout.hpp"
#include "monolib/util/MemManager.hpp"

#include "nw4r/lyt/lyt_pane.h"

extern void func_80124270(nw4r::lyt::Pane*, u32);

static s32 lbl_80666D50;
static nw4r::lyt::ArcResourceAccessor* lbl_80666D54;

CBgTex::CBgTex(u8 arg) : mFileHandle(nullptr), mLayout(nullptr), unk1c(0), unk1d(0), unk1e(arg) {}

CBgTex::~CBgTex() {}

void CBgTex::func_801C3A24() {
    u32 handle = mtl::MemManager::getHandleMEM2();
    unkClass.createRegion(handle, 0x2000, "CBgTexLyt", 1);
    Class_8045F858 unusedVar = Class_8045F858(&unkClass);
    mtl::MemManager::func_80434A4C(false);

    u8 lbl_80666_a74 = cf::CfBdat::lbl_80666A74;
    if(lbl_80666_a74 == 0x19) {
        func_80136E84(&mLayout, lbl_80666D54, "mf00_reg_bg06.brlyt");
    } else if(lbl_80666_a74 == 0x1a) {
        func_80136E84(&mLayout, lbl_80666D54, "mf00_reg_bg07.brlyt");
    } else {
        switch(func_801372B4(lbl_80666_a74)) {
            case 1:
                func_80136E84(&mLayout, lbl_80666D54, "mf00_reg_bg01.brlyt");
                break;
            case 2:
                func_80136E84(&mLayout, lbl_80666D54, "mf00_reg_bg02.brlyt");
                break;
            case 3:
                func_80136E84(&mLayout, lbl_80666D54, "mf00_reg_bg03.brlyt");
                break;
            case 4:
                func_80136E84(&mLayout, lbl_80666D54, "mf00_reg_bg04.brlyt");
                break;
            case 5:
                func_80136E84(&mLayout, lbl_80666D54, "mf00_reg_bg05.brlyt");
                break;
            case 0:
                func_80136E84(&mLayout, lbl_80666D54, "mf00_reg_bg01.brlyt");
                break;
            default:
                break;
        }
    }
    nw4r::lyt::Pane* pane = mLayout->GetRootPane()->FindPaneByName("pic_ptm00", true);
    func_80124270(pane, !unk1e);
    pane = mLayout->GetRootPane()->FindPaneByName("pic_ptm01", true);
    func_80124270(pane, !unk1e);
    func_801C3E3C();
    unkClass.func_8045F810();
}

bool CBgTex::func_801C3C14() {
    lbl_80666D50 += 1;
    if(lbl_80666D54 != nullptr) return true;
    char* file = nullptr;

    u8 lbl_80666_a74 = cf::CfBdat::lbl_80666A74;
    if(lbl_80666_a74 == 0x19) {
        file = "/menu/BgTex06.arc";
    } else if(lbl_80666_a74 == 0x1a) {
        file = "/menu/BgTex07.arc";
    } else {
        switch(func_801372B4(lbl_80666_a74)) {
            case 1:
                file = "/menu/BgTex01.arc";
                break;
            case 2:
                file = "/menu/BgTex02.arc";
                break;
            case 3:
                file = "/menu/BgTex03.arc";
                break;
            case 4:
                file = "/menu/BgTex04.arc";
                break;
            case 5:
                file = "/menu/BgTex05.arc";
                break;
            case 0:
                file = "/menu/BgTex01.arc";
                break;
        }
    }
    u32 allocHandle = mtl::MemManager::getHandleMEM2();
    mFileHandle = CDeviceFile::readFile(allocHandle, file, this, 0, 0);
    CDeviceFile::setHandleFlag1(mFileHandle);
    return false;
}

void CBgTex::func_801C3D54() {
    if(unk1c == 0) return;
    mLayout->Animate(0);
}

void CBgTex::func_801C3D7C(nw4r::lyt::DrawInfo* drawInfo) {
    if(unk1c == 0) return;
    func_80137038(mLayout, drawInfo, 0, 1);
}

void CBgTex::func_801C3D9C() {
    lbl_80666D50 -= 1;
    func_801390E0(&mFileHandle);
    unk1c = 0;
    CDeviceVI::waitForDrawDone();
    if(mLayout != nullptr) {
        delete mLayout;
        mLayout = nullptr;
    }
    if(lbl_80666D50 <= 0) {
        func_80139124(lbl_80666D54);
        lbl_80666D54 = nullptr;
    }
    unkClass.func_8045F778();
}

u8 CBgTex::func_801C3E34() {
    return unk1d;
}

void CBgTex::func_801C3E3C() {
    if(mLayout == nullptr) return;
    unk1d = 1;
    unk1c = 1;
}

bool CBgTex::OnFileEvent(CEventFile* pEventFile) {
    if(mFileHandle == pEventFile->mFileHandle) {
        void* pArchive = mFileHandle->getData();
        lbl_80666D54 = CLibLayout::createArcResourceAccessor();
        lbl_80666D54->Attach(pArchive, "arc");
        mFileHandle = nullptr;
        func_801C3A24();
        return true;
    }
    return false;
}