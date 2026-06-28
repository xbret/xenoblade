#pragma once

#include <types.h>

#include "monolib/lib/UnkClass_8045F564.hpp"
#include "monolib/work/IWorkEvent.hpp"

#include <nw4r/lyt.h>

class CBgTex : IWorkEvent {
public:
    CBgTex(u8);
    ~CBgTex();
    void func_801C3A24();
    bool func_801C3C14();
    void func_801C3D54();
    void func_801C3D7C(nw4r::lyt::DrawInfo*);
    void func_801C3D9C();
    u8 func_801C3E34();
    void func_801C3E3C();
    bool OnFileEvent(CEventFile* pEventFile) override;

    UnkClass_8045F564 unkClass; //0x04
    CFileHandle* mFileHandle;   //0x14
    nw4r::lyt::Layout* mLayout; //0x18
    u8 unk1c;
    u8 unk1d;
    u8 unk1e;
};
