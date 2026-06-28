#pragma once

#include "monolib/device/CFileHandle.hpp"
#include "monolib/work/IWorkEvent.hpp"

#include "revolution/gx/GXTypes.h"

#include <nw4r/lyt.h>

u16 func_8013606C(char*, char*, u16);
char* func_80136190(char*, char*, u32);
u32 func_801361E8(void*, char*, u32);
char* func_8013639C(void*, char*, u16);
void func_8013676C(nw4r::lyt::Pane*, u32);
void func_801368C0(nw4r::lyt::Layout*, char*, u32);
void func_80136910(nw4r::lyt::Layout*, char*, u8);
void func_80136A1C(nw4r::lyt::Layout*, char*, char*, u32);
void func_80136B4C(nw4r::lyt::Layout*, char*, char*, u32);
void func_80136E84(nw4r::lyt::Layout**, nw4r::lyt::ArcResourceAccessor*, const char*);
void func_80136F08(nw4r::lyt::Layout*, nw4r::lyt::AnimTransform**, nw4r::lyt::ArcResourceAccessor*, char*);
void func_80137038(nw4r::lyt::Layout* pLayout, nw4r::lyt::DrawInfo* pDrawInfo, int r5, int r6);
void func_80137250(nw4r::lyt::DrawInfo* pDrawInfo);
u8 func_801372B4(u32);
u32 func_80137444(nw4r::lyt::AnimTransform*, float);
u32 func_80137510(nw4r::lyt::AnimTransform*, float);
void func_80137E7C(nw4r::lyt::Layout*, char*, void*);
char* func_80138F78(u16);
void func_801390E0(CFileHandle**);
void func_80139124(nw4r::lyt::ArcResourceAccessor*);
void func_80139A18(nw4r::lyt::Layout*, char*, GXColorS10*, GXColorS10*);
