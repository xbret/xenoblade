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
    void func_80223F24();
    void func_80223F44();

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
/******************************************************************************
 *
 * CMCEffSuccess
 *
 ******************************************************************************/
class CMCEffSuccess {
public:
    CMCEffSuccess(nw4r::lyt::ArcResourceAccessor*);
    virtual ~CMCEffSuccess();
    void func_80224760();
    void func_802247F0();
    void func_80224860(nw4r::lyt::DrawInfo*);
    void func_80224880();
    u8 func_802248E0();
    void func_802248E8();
    void func_80224944();
    void func_80224998();
    void func_802249E4();
    void func_80224A30();
    void func_80224AB8();

    u8 unk4;
    u8 unk5;
    nw4r::lyt::ArcResourceAccessor* mArcResourceAccessor; //0x8
    nw4r::lyt::Layout* mLayout;                           //0xc
    nw4r::lyt::AnimTransform* mAnimTrans10;
    nw4r::lyt::AnimTransform* mAnimTrans14;
    u8 unk18;
};
/******************************************************************************
 *
 * CMCEffFailure
 *
 ******************************************************************************/
class CMCEffFailure : CMCEffStart {
public:
    CMCEffFailure(nw4r::lyt::ArcResourceAccessor*);
    virtual ~CMCEffFailure();
    void func_80224BBC();
};
/******************************************************************************
 *
 * CMCEffCrystal
 *
 ******************************************************************************/
class CMCEffCrystal {
public:
    CMCEffCrystal(nw4r::lyt::ArcResourceAccessor*);
    virtual ~CMCEffCrystal();
    void func_80224CE4();
    void func_80224E1C();
    void func_80224EF8(nw4r::lyt::DrawInfo*);
    void func_80224F84();
    u8 func_8022503C();
    void func_80225044();
    void func_802250BC();
    void func_80225170();
    void func_802251C4();
    void func_80225228(u32);
    void func_80225280(u16, u8);
    void func_802254C4();
    void func_80225514();
    void func_80225560();
    void func_802255CC();
    void func_80225694();
    void func_802256E0();
    void func_80225768();
    void func_802257F0();
    void func_80225878();
    void func_80225900();
    void func_80225988();
    void func_80225A10();

    u8 unk4;
    u8 unk5;
    nw4r::lyt::ArcResourceAccessor* mArcResourceAccessor; //0x8
    nw4r::lyt::Layout* mLayoutC;
    nw4r::lyt::AnimTransform* mAnimTrans10;
    nw4r::lyt::AnimTransform* mAnimTrans14;
    nw4r::lyt::Layout* mLayout18;
    nw4r::lyt::AnimTransform* mAnimTrans1c;
    nw4r::lyt::AnimTransform* mAnimTrans20;
    nw4r::lyt::AnimTransform* mAnimTrans24;
    nw4r::lyt::AnimTransform* mAnimTrans28;
    nw4r::lyt::Layout* mLayout2c;
    nw4r::lyt::AnimTransform* mAnimTrans30;
    u8 unk34;
    u16 unk36;
    u8 unk38;
};
/******************************************************************************
 *
 * CMCEffUpRank
 *
 ******************************************************************************/
class CMCEffUpRank : CMCEffStart {
public:
    CMCEffUpRank(nw4r::lyt::ArcResourceAccessor*);
    virtual ~CMCEffUpRank();
    void func_80225B14();
    void func_80225BA4();
};
/******************************************************************************
 *
 * CMCEffDivide
 *
 ******************************************************************************/
class CMCEffDivide : CMCEffStart {
public:
    CMCEffDivide(nw4r::lyt::ArcResourceAccessor*);
    virtual ~CMCEffDivide();
    void func_80225C48();
    void func_80225CD8();
};
/******************************************************************************
 *
 * CMCEffCylinder
 *
 ******************************************************************************/
class CMCEffCylinder {
public:
    CMCEffCylinder(nw4r::lyt::ArcResourceAccessor*);
    virtual ~CMCEffCylinder();
    void func_80225D78();
    void func_80225E20();
    void func_80225EA0(nw4r::lyt::DrawInfo*);
    void func_80225EC0();
    u8 func_80225F20();
    void func_80225F28();
    void func_80225F7C();
    void func_80225FD0();
    void func_80226024(u8);
    void func_8022603C();
    void func_80226088();
    void func_802260D4();
    void func_80226120();
    void func_802261A8();
    void func_80226230();

    u8 unk4;
    u8 unk5;
    nw4r::lyt::ArcResourceAccessor* mArcResourceAccessor; //0x8
    nw4r::lyt::Layout* mLayout;                           //0xc
    nw4r::lyt::AnimTransform* mAnimTrans10;
    nw4r::lyt::AnimTransform* mAnimTrans14;
    nw4r::lyt::AnimTransform* mAnimTrans18;
    u8 unk1c;
};