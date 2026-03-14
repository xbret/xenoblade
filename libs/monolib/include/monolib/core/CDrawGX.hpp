#pragma once

#include <types.h>
#include "monolib/math.hpp"
#include "revolution/GX.h"

enum DrawPrim{
    PRIM_INVALID = -1,
    PRIM_0,
    PRIM_1,
    PRIM_2,
    PRIM_3,
    PRIM_4,
    PRIM_5,
    PRIM_6,
    PRIM_7,
    PRIM_8,
    PRIM_9,
    PRIM_10
};

//Unofficial name
class CDrawGX {
public:
    CDrawGX();
    ~CDrawGX();

    void clear();
    void setMatrix(const ml::CMat34& mat);
    void setPerspective(const ml::CMat34& mat, float f1, float f2, float f3);
    void setCol(const ml::CCol3& col);
    void setCol(const ml::CCol4& col);
    void func_80456570(int r4);
    void func_8045657C(int r4);
    void setTex(GXTexObj* pTexObj, u16 r5, u16 r6);
    void begin(u32 primType, u32 r5);
    void add(const ml::CRect16& r4, const ml::CRect16& r5);
    void add(const ml::CRect16& r4);
    void add(s16 x, s16 y, s16 r6, s16 r7);
    void add(const ml::CVec3& vec);
    void add(s16 x, s16 y, const ml::CCol4& r6);
    void add(s16 x, s16 y);
    void end();
    void renderRect(const ml::CRect16& r4);
    void renderCube(const ml::CVec3& r4, const ml::CVec3& r5);
    void renderCircle(const ml::CVec3& pos, int verts, float r);

    void setFlag4(){
        setFlag(FLAG_4, true);
    }

    void setFlag(u32 flag, bool state){
        if(state == true) mFlags |= flag;
        else mFlags &= ~flag;
    }

    bool checkFlag(u32 flag){
        return mFlags & flag;
    }

private:
    enum Flags{
        FLAG_0 = (1 << 0),
        FLAG_1 = (1 << 1),
        FLAG_INITIALIZED = (1 << 2),
        FLAG_3 = (1 << 3),
        FLAG_4 = (1 << 4),
        FLAG_5 = (1 << 5),
        FLAG_6 = (1 << 6),
        FLAG_7 = (1 << 7),
        FLAG_8 = (1 << 8),
        FLAG_9 = (1 << 9),
        FLAG_10 = (1 << 10),
        FLAG_11 = (1 << 11),
        FLAG_12 = (1 << 12),
        FLAG_13 = (1 << 13),
        FLAG_14 = (1 << 14),
        FLAG_15 = (1 << 15),
        FLAG_16 = (1 << 16),
        FLAG_LINES = (1 << 17),
        FLAG_DIRECT_COLOR = (1 << 18),
        FLAG_19 = (1 << 19),
        FLAG_20 = (1 << 20)
    };

    inline void setPrimType(u32 primType);
    inline void setupGX();

    u32 mFlags; //0x0
    ml::CCol4 mCol; //0x4
    float mOpacity; //0x14
    u32 mDrawPrim; //0x18
    u32 unk1C;
    u32 mVerts; //0x20
    float unk24;
    float unk28;
    float unk2C;
    ml::CMat34 unk30;
    ml::CMat34 unk60;
    ml::CMat34 unk90;
    u32 mVertCount; //0xC0
    u32 mLineWidth; //0xC4
    u32 mZPos; //0xC8
    u8 mPrimitive; //0xCC

    static const int LINE_WIDTH = 6;
};
