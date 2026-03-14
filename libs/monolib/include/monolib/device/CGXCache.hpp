#pragma once

#include <types.h>
#include "monolib/monolib_types.hpp"
#include "monolib/work/CMsgParam.hpp"
#include "revolution/GX.h"

//size: 0x4
class IStateCache {
public:
    virtual ~IStateCache();
};

//size: 0x51c
class CGXCache : public IStateCache {
public:
    CGXCache();
    virtual ~CGXCache();
    void func_8044B294(u32 r4);
    void func_8044B4B8(GXTexObj* pTexObj, u16 r5, u16 r6);
    ml::CCol4* func_8044B5B4();
    void func_8044B660();
    bool func_8044BE38();
    void func_8044BFC0();
    void func_8044A94C(int r4, int r5);
    void func_8044AA7C(int r4, int r5);
    void func_8044ACDC(UNKTYPE* r4, int r5);
    void func_8044AE8C(UNKTYPE* r4, int r5);
    void func_8044B03C(int r4);
    void func_8044B168(int r4);
    void func_8044A6C8(int r4, int r5);
    void func_8044B8CC(float f1, float f2, float f3);
    u32 func_8044BD74(UNKWORD r3);

    //0x0: vtable
    //0x0-0x4: IStateCache
    CMsgParam<32> unk4;
    u8 unk4A0[0x50C - 0x4A0];
    u32 unk50C;
    u8 unk510[0xC];
};
