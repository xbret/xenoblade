#pragma once

#include <types.h>
#include <nw4r/lyt/lyt_layout.h>
#include <nw4r/lyt/lyt_drawInfo.h>
#include <nw4r/lyt/lyt_resourceAccessor.h>
#include <nw4r/lyt/lyt_animation.h>
#include "monolib/math/MTRand.hpp"
#include "kyoshin/code_80135FDC.hpp"

class CMCCylinderGauge {
public:
    CMCCylinderGauge(nw4r::lyt::ArcResourceAccessor* arg);
    virtual ~CMCCylinderGauge();
    void func_80221EF4();
    void func_80221FE0();
    void func_80222070(nw4r::lyt::DrawInfo*);
    void func_80222090();
    bool func_802220F0();
    void func_802220F8();
    void func_80222118();
    void func_802221A4(f32);
    void func_80222234();
    u8 func_80222258();
    void func_802222A4(u8);
    DECOMP_DONT_INLINE void func_802222C4();
    DECOMP_DONT_INLINE void func_80222318();
    DECOMP_DONT_INLINE void func_8022246C();
    DECOMP_DONT_INLINE void func_802224B0();
    DECOMP_DONT_INLINE void func_80222520();
    DECOMP_DONT_INLINE void func_802225A8();
    DECOMP_DONT_INLINE void func_80222630();
    DECOMP_DONT_INLINE void func_802226B8();

    nw4r::lyt::ArcResourceAccessor* pArcResourceAccessor;   // 0x04
    nw4r::lyt::Layout* mLayout;                 // 0x08
    nw4r::lyt::AnimTransform* pAnimTrans_0x0C;  // 0x0C
    nw4r::lyt::AnimTransform* pAnimTrans_0x10;  // 0x10
    nw4r::lyt::AnimTransform* pAnimTrans_0x14;  // 0x14
    nw4r::lyt::AnimTransform* pAnimTrans_0x18;  // 0x18
    bool bool_0x1c;                             // 0x1c
    u32 unk_0x20;                               // 0x20
    bool bool_0x24;                             // 0x24
    u8 unk_0x25;                                // 0x25
    f32 float_0x28;                             // 0x28
};
