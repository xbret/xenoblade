#pragma once

#include "types.h"
#include "monolib/util.hpp"
#include "monolib/math.hpp"


//Some type of view frustum?
struct COccCulling_UnkStruct1 {
    void init(const ml::CVec3& r4, const ml::CVec3& r5, const ml::CVec3& r6, UNKWORD r7){
        unk0 = r4;
        unkC = r5;

        ml::CVec3 r1_8 = ml::CVec3(r6.x, r6.y, 1);

        unk18 = r1_8;
        unk120 = true;
        unkC0 = 1;
        unkC4 = 1;
        unkC8 = 1;
        unkCC = 1;
        unk12C = 1;
        unk130 = r7;
    }

    ml::CVec3 unk0;
    ml::CVec3 unkC;
    ml::CVec3 unk18;
    u8 unk24[0xC0 - 0x24];
    //Maybe another CPlane or CQuat?
    float unkC0;
    float unkC4;
    float unkC8;
    float unkCC;
    ml::CPlane unkD0;
    ml::CPlane unkE0;
    ml::CPlane unkF0;
    ml::CPlane unk100;
    ml::CPlane unk110;
    bool unk120;
    u8 unk121[0x12C - 0x121];
    u32 unk12C;
    u32 unk130;
};


class COccCulling {
public:
    COccCulling();
    virtual ~COccCulling();
    void func_801A06F8(u32 r4, int size);
    DECOMP_DONT_INLINE void func_801A0794();
    int func_801A0850(const ml::CVec3& r4, const ml::CVec3& r5, const ml::CVec3& r6, UNKWORD r7);
    void func_801A097C(COccCulling_UnkStruct1* r4);
    u8 func_801A0F04(u32 r4);
    void func_801A1188(COccCulling_UnkStruct1* r4);
    bool func_801A1444(const ml::CVec3& vec) const;
    bool func_801A1550(const ml::CVec3& rayStartPos, const ml::CVec3& rayEndPos, UNKWORD r6) const;

    //0x0: vtable
    resvector<COccCulling_UnkStruct1*> unk4;
    resvector<COccCulling_UnkStruct1*> unk14;
    u32 unk24;
    mtl::ALLOC_HANDLE unk28;
    u8 unk2C;
    u8 unk2D;
    u8 unk2E;

private:
    static ml::CVec3 lbl_80578FE8[];
};
