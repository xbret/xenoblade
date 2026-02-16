#pragma once

#include <types.h>
#include "monolib/work.hpp"
#include "monolib/math.hpp"
#include "monolib/util.hpp"
#include "monolib/core/CViewFrame.hpp"

//size: 0x4
class CFontLayer {
    CFontLayer();
    virtual ~CFontLayer();
};

struct CView_UnkStruct1 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s16 unkC;
    s16 unkE;
    s16 unk10;
    s16 unk12;
};

//size: 0x470
class CView : public CWorkThread, public CFontLayer {
public:
    CView(const char* pName, CWorkThread* pParent);
    virtual ~CView();
    
    DECL_WORKTHREAD_CREATE(CView);

    virtual void func_8043FBC4();
    virtual void func_8043FB68();
    virtual void detachRenderWork(CWorkThread* pThread);
    virtual void func_8043D9E8();
    virtual void func_8043DD20();
    virtual void func_8043FB60();
    virtual void func_8043FB58();
    virtual void func_8043C9B8();
    virtual void func_8043EAD0();
    virtual void func_8043EAC8();

    void setRect(const ml::CRect16& rect16);
    void attachRenderWork(CWorkThread* pThread);

    //0x0: vtable 1
    //0x4-1C4: CWorkThread
    //0x1C4: vtable 2
    CView_UnkStruct1 unk1C8;
    CViewFrame unk1DC;
    u8 unk238[0x400 - 0x238];
    ml::FixStr<64> unk400;
    ml::CVec4 unk444;
    u8 unk454[0x470 - 0x454];
};
