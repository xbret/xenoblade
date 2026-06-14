#pragma once

#include <types.h>

#include <nw4r/lyt/lyt_animation.h>
#include <nw4r/lyt/lyt_drawInfo.h>
#include <nw4r/lyt/lyt_layout.h>

#include <decomp.h>
/******************************************************************************
 *
 * CMCEffStart
 *
 ******************************************************************************/
class CMCEffStart {
public:
    CMCEffStart(nw4r::lyt::ArcResourceAccessor*);
    virtual ~CMCEffStart();
    void func_80223DB0();
    void func_80223E40();
    void func_80223E9C(nw4r::lyt::DrawInfo*);
    void func_80223EBC();
    u8 func_80223F1C();
    DECOMP_DONT_INLINE void func_80223F24();
    DECOMP_DONT_INLINE void func_80223F44();

    u8 unk4;
    u8 unk5;
    nw4r::lyt::ArcResourceAccessor* mArcResourceAccessor; //0x8
    nw4r::lyt::Layout* mLayout;                           //0xc
    nw4r::lyt::AnimTransform* mAnimTrans;                 //0x10
    u8 unk14;
};
/******************************************************************************
 *
 * CMCEffUpRed
 *
 ******************************************************************************/
class CMCEffUpRed : CMCEffStart {
public:
    CMCEffUpRed(nw4r::lyt::ArcResourceAccessor*);
    virtual ~CMCEffUpRed();
    void func_8022400C();
    void func_8022409C();
};
/******************************************************************************
 *
 * CMCEffUpBlue
 *
 ******************************************************************************/
class CMCEffUpBlue : CMCEffStart {
public:
    CMCEffUpBlue(nw4r::lyt::ArcResourceAccessor*);
    virtual ~CMCEffUpBlue();
    void func_80224140();
    void func_802241D0();
};
/******************************************************************************
 *
 * CMCEffUpGreen
 *
 ******************************************************************************/
class CMCEffUpGreen : CMCEffStart {
public:
    CMCEffUpGreen(nw4r::lyt::ArcResourceAccessor*);
    virtual ~CMCEffUpGreen();
    void func_80224274();
    void func_80224304();
};
/******************************************************************************
 *
 * CMCEffUpPrm
 *
 ******************************************************************************/
struct UnkStruct {
    nw4r::lyt::Layout* layout;           //0x0
    nw4r::lyt::AnimTransform* animTrans; //0x4
    u8 unk8;
};

class CMCEffUpPrm {
public:
    CMCEffUpPrm(nw4r::lyt::ArcResourceAccessor*);
    virtual ~CMCEffUpPrm();
    void func_802243B4();
    void func_8022447C();
    void func_80224514(nw4r::lyt::DrawInfo*);
    void func_8022457C();
    void func_802245F0(u32);
    void func_80224690(u32, nw4r::math::VEC3);
    void func_802246C4(u32, u8);

    u8 unk4;
    nw4r::lyt::ArcResourceAccessor* mArcResourceAccessor; //0x8
    UnkStruct unkStruct[8];                               //0xc
    u8 unk6c;
};