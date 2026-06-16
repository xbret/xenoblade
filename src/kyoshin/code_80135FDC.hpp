#pragma once

#include <nw4r/lyt/lyt_arcResourceAccessor.h>
#include <nw4r/lyt/lyt_drawInfo.h>
#include <nw4r/lyt/lyt_layout.h>

char* func_8013639C(void*, char*, u16);
void func_8013676C(nw4r::lyt::Pane*, u32);
void func_80136A1C(nw4r::lyt::Layout*, char*, char*, u32);
void func_80136E84(nw4r::lyt::Layout**, nw4r::lyt::ArcResourceAccessor*, const char*);
void func_80137038(nw4r::lyt::Layout* pLayout, nw4r::lyt::DrawInfo* pDrawInfo, int r5, int r6);
void func_80137250(nw4r::lyt::DrawInfo* pDrawInfo);
void func_80139124(nw4r::lyt::ArcResourceAccessor*);