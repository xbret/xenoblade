#pragma once

#include <types.h>

#include "monolib/lib/UnkClass_8045F564.hpp"
#include "monolib/work/IWorkEvent.hpp"
#include "revolution/gx/GXTypes.h"

#include "nw4r/lyt/lyt_arcResourceAccessor.h"
#include <nw4r/lyt/lyt_layout.h>

class CTitleAHelp : public IWorkEvent {
public:
    CTitleAHelp(char*, u8);
    virtual ~CTitleAHelp();
    void CTitleAHelp_load();
    void func_801C3FF0();
    void func_801C4080(nw4r::lyt::DrawInfo*);
    void func_801C40A0();
    u8 func_801C4114();
    u8 func_801C411C();
    u8 func_801C4124();
    void func_801C412C();
    void func_801C414C();
    void func_801C416C();
    void func_801C4198();
    void func_801C41C0(char*);
    void func_801C41E8(u8);
    void func_801C4654(u32);
    void func_801C46B4(char*);
    void func_801C46DC(u32);
    void func_801C473C(u8);
    void func_801C4744();
    void func_801C4760();
    void func_801C477C();
    void func_801C47F8();
    void func_801C484C();
    void func_801C48E0();
    virtual bool OnFileEvent(CEventFile* pEventFile) override;

    UnkClass_8045F564 unk4;
    CFileHandle* mFileHandle;                             //0x14
    nw4r::lyt::ArcResourceAccessor* mArcResourceAccessor; //0x18
    nw4r::lyt::Layout* mLayout;                           //0x1c
    nw4r::lyt::AnimTransform* mAnimTrans20;
    nw4r::lyt::AnimTransform* mAnimTrans24;
    u8 unk28;
    s32 unk2c;
    char* mName; //0x30
    u8 unk34;
    u8 unk35;
    u8 unk36;
    u8 unk37;
};

bool func_801C4648(nw4r::lyt::Pane*);
void func_801C4B60(GXColorS10*, s16, s16, s16, s16);
