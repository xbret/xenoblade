#pragma once

#include "monolib/work/IWorkEvent.hpp"

#include <nw4r/lyt/lyt_arcResourceAccessor.h>
#include <nw4r/lyt/lyt_drawInfo.h>
#include <nw4r/lyt/lyt_layout.h>

char* func_80136190(char*, char*, u32);
u32 func_801361E8(void*, char*, u32);
char* func_8013639C(void*, char*);
void func_8013676C(nw4r::lyt::Pane*, void*);
void func_801368C0(nw4r::lyt::Layout*, char*, u32);
void func_80136910(nw4r::lyt::Layout*, char*, u8);
void func_80136B4C(nw4r::lyt::Layout*, char*, char*, u32);
void func_80136E84(nw4r::lyt::Layout**, nw4r::lyt::ArcResourceAccessor*, const char*);
void func_80136F08(nw4r::lyt::Layout*, nw4r::lyt::AnimTransform**, nw4r::lyt::ArcResourceAccessor*, char*);
void func_80137038(nw4r::lyt::Layout*, nw4r::lyt::DrawInfo*, int, int);
void func_80137250(nw4r::lyt::DrawInfo*);
void func_80137924(IWorkEvent*, nw4r::lyt::Pane*, nw4r::lyt::Pane*, nw4r::lyt::Pane*);
void func_80137E7C(nw4r::lyt::Layout*, char*, void*);
void func_801390E0(CFileHandle**);
void func_80139124(nw4r::lyt::ArcResourceAccessor*);
u32 func_801392E4(u16);
u32 func_80139358(u16);
void func_801397AC(nw4r::lyt::Pane*, u32);
void func_80139A18(nw4r::lyt::Layout*, char*, u32, u32);
