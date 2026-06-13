#pragma once

#include <types.h>

#include "kyoshin/cf/CfBdat.hpp"
#include "monolib/lib/UnkClass_8045F564.hpp"

#include <nw4r/lyt/lyt_animation.h>
#include <nw4r/lyt/lyt_arcResourceAccessor.h>
#include <nw4r/lyt/lyt_drawInfo.h>
#include <nw4r/lyt/lyt_layout.h>

#include <decomp.h>

/*
 * Todo
 * - Decomp CTitleAHelp and CItemBoxGrid to find what the lbl are
 * - Find the type of the void* in func_8021A9A8(u32, void*) to simplify notation
 * - Decomp Citem (CItem_initItemImplInstances) to easily manage func_8021B188 and func_8021B2E0
 */
class CMCCrystalInfo : public IWorkEvent {
public:
    CMCCrystalInfo();
    virtual ~CMCCrystalInfo();
    void func_8021A718();
    void func_8021A780();
    void func_8021A840(nw4r::lyt::DrawInfo*);
    void func_8021A860();
    u8 func_8021A8EC();
    void func_8021A8F4();
    void func_8021A918();
    void func_8021A93C();
    void func_8021A960();
    void func_8021A984();
    void func_8021A9A8(u32, void*);
    void func_8021AA9C(u32, u32, u8, u32);
    DECOMP_DONT_INLINE void func_8021ADC4();
    void func_8021AED0(CMCCrystalInfo*, u32);
    DECOMP_DONT_INLINE void func_8021AF74();
    DECOMP_DONT_INLINE void func_8021AFC0();
    DECOMP_DONT_INLINE void func_8021B00C();
    DECOMP_DONT_INLINE void func_8021B058();
    DECOMP_DONT_INLINE void func_8021B0A4();
    DECOMP_DONT_INLINE void func_8021B0F0();
    DECOMP_DONT_INLINE void func_8021B13C();
    void func_8021B188(void*, u32, void*);
    DECOMP_DONT_INLINE void func_8021B2E0(u32, void*);
    DECOMP_DONT_INLINE void func_8021B42C();
    DECOMP_DONT_INLINE void func_8021B500();
    DECOMP_DONT_INLINE void func_8021B52C();
    DECOMP_DONT_INLINE void func_8021B5B4();
    DECOMP_DONT_INLINE void func_8021B63C();
    DECOMP_DONT_INLINE void func_8021B6C4();
    virtual bool OnFileEvent(CEventFile* pEventFile) override;

    //todo init those with
    //./kyoshin/CTitleAHelp.s:1316:.fn func_801C4B60, global
    //./kyoshin/CTitleAHelp.s:1322:.endfn func_801C4B60
    //./kyoshin/CItemBoxGrid.s:18989:.fn func_801D1F9C, global
    //./kyoshin/CItemBoxGrid.s:18999:.endfn func_801D1F9C
    static u32 lbl_80666FC8;
    static u32 lbl_80666FD0;
    static u32 lbl_80666FD8;
    static u32 lbl_80666FE0;
    static u32 lbl_80666FE8;
    static u32 lbl_80666FF0;
    static u32 lbl_80666FF8;
    static u32 lbl_80667000;

    UnkClass_8045F564 unk4;
    UnkClass_8045F564 unk14;
    CFileHandle* mFileHandle24;
    CFileHandle* mFileHandle28;
    nw4r::lyt::ArcResourceAccessor* mArcResourceAccessor2c;
    nw4r::lyt::ArcResourceAccessor* mArcResourceAccessor30;
    nw4r::lyt::Layout* mLayout; //0x34
    nw4r::lyt::AnimTransform* mAnimTrans38;
    nw4r::lyt::AnimTransform* mAnimTrans3c;
    nw4r::lyt::AnimTransform* mAnimTrans40;
    nw4r::lyt::AnimTransform* mAnimTrans44;
    u8 unk48;
    u32 unk4c;
    u8 unk50;
    u8 unk51;
};
