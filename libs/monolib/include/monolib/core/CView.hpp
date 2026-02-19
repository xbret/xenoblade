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

    virtual void CView_UnkVirtualFunc1();
    virtual void detachRenderWork(CWorkThread* pThread);
    virtual void CView_UnkVirtualFunc3();
    virtual void CView_UnkVirtualFunc4();
    virtual void CView_UnkVirtualFunc5();
    virtual void CView_UnkVirtualFunc6();
    virtual void CView_UnkVirtualFunc7();
    virtual void CView_UnkVirtualFunc8();
    virtual void CView_UnkVirtualFunc9();

    void setRect(const ml::CRect16& rect);
    void attachRenderWork(CWorkThread* pThread);
    void setDisp(bool r4, bool r5);
    void setCurrent();

    //Tries to cast the given thread to CView.
    static CView* convertToView(CWorkThread* pThread) {
        if(pThread == nullptr){
            return nullptr;
        }

        int type = pThread->mType;

        //Check if the thread's type is in the CView range
        if(THREAD_CVIEW > type || type >= THREAD_CVIEW_MAX) return nullptr;
        return static_cast<CView*>(pThread);
    }

    
    void getRect(ml::CRect16& rect){
        ml::CRect16 tempRect;
        getFrame2ViewOffset(tempRect, &unk1DC);

        rect.mPos.x = tempRect.mPos.x + unk1DC.unk54;
        rect.mPos.y = tempRect.mPos.y + unk1DC.unk56;
        rect.mSize.x = unk1C8.unk0;
        rect.mSize.y = unk1C8.unk2;
    }

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
