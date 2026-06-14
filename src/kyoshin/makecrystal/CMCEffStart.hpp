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