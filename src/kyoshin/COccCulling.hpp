#pragma once

#include "types.h"
#include "monolib/util.hpp"
#include "monolib/math.hpp"

class COccCulling {
public:
    COccCulling();
    virtual ~COccCulling();
    void func_801A06F8(u32 r4, int size);
    DECOMP_DONT_INLINE void func_801A0794();

    //0x0: vtable
    resvector<UNKTYPE*> unk4;
    resvector<UNKTYPE*> unk14;
    u32 unk24;
    mtl::ALLOC_HANDLE unk28;
    u8 unk2C;
    u8 unk2D;
    u8 unk2E;

private:
    static ml::CVec3 lbl_80578FE8[];
};
