#pragma once

#include "types.h"
#include "monolib/util.hpp"
#include "monolib/math.hpp"


//Some type of view frustum?
struct CCullFrustum {
    enum Flags{
        FLAG_0 = 1 << 0,
        FLAG_1 = 1 << 1,
        FLAGS_01 = (FLAG_0 | FLAG_1) 
    };

    void init(const ml::CVec3& pos, const ml::CVec3& rot, const ml::CVec3& scale, u32 flags){
        mPos = pos;
        mRot = rot;
        mScale = ml::CVec3(scale.x, scale.y, 1);
        mInFirstList = true;
        unkC0[0] = 1;
        unkC0[1] = 1;
        unkC0[2] = 1;
        unkC0[3] = 1;
        unk12C = 1;
        mFlags = flags;
    }

    ml::CVec3 mPos; //0x0
    ml::CVec3 mRot; //0xC
    ml::CVec3 mScale; //0x18
    ml::CVec3 unk24;
    ml::CMat34 mMat; //0x30
    ml::CMat34 mMatInv; //0x60
    ml::CVec3 unk90[4]; //0x90
    float unkC0[4];
    ml::CPlane mPlane0; //0xD0
    ml::CPlane mPlane1; //0xE0
    ml::CPlane mPlane2; //0xF0
    ml::CPlane mPlane3; //0x100
    ml::CPlane mPlane4; //0x110
    bool mInFirstList; //0x120
    float unk124;
    float unk128;
    u32 unk12C;
    u32 mFlags; //0x130
};

struct COccCulling_UnkStruct2{
    u8 unk0[0xCC];
    ml::CMat34 unkCC;
    u8 unkFC[0x10];
    ml::CVec3 unk10C;
    u8 unk118[0x258 - 0x118];
    ml::CPlane unk248[6];
};

class COccCulling {
public:
    COccCulling();
    virtual ~COccCulling();
    void func_801A06F8(u32 r4, int size);
    DECOMP_DONT_INLINE void func_801A0794();
    int addFrustum(const ml::CVec3& r4, const ml::CVec3& r5, const ml::CVec3& r6, u32 flags);
    void setFrustum(CCullFrustum* r4);
    u8 func_801A0F04(u32 r4);
    void func_801A1188(CCullFrustum* r4);
    bool func_801A1444(const ml::CVec3& vec, float distance);
    bool func_801A1550(const ml::CVec3& rayStartPos, const ml::CVec3& rayEndPos, UNKWORD r6) const;

    //0x0: vtable
    resvector<CCullFrustum*> mFrustumList1; //0x4
    resvector<CCullFrustum*> mFrustumList2; //0x14
    COccCulling_UnkStruct2* unk24;
    mtl::ALLOC_HANDLE unk28;
    u8 unk2C;
    u8 unk2D;
    u8 unk2E;

private:
    static ml::CVec3 lbl_80578FE8[];
};
