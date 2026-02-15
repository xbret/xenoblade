#pragma once

#include <types.h>
#include "monolib/work.hpp"
#include "monolib/math.hpp"
#include "monolib/util.hpp"

class CFontLayer {
    CFontLayer();
    virtual ~CFontLayer();
};

class CView : public CWorkThread, public CFontLayer {
public:
    CView(const char* pName, CWorkThread* pParent);
    virtual ~CView();

    virtual void func_8043FBC4();
    virtual void func_8043FB68();
    virtual void func_8043EAD8(CWorkThread* pThread);
    virtual void func_8043D9E8();
    virtual void func_8043DD20();
    virtual void func_8043FB60();
    virtual void func_8043FB58();
    virtual void func_8043C9B8();
    virtual void func_8043EAD0();
    virtual void func_8043EAC8();

    void func_8043CB7C(const ml::CRect16& rect16);

    //0x0: vtable 1
    //0x4-1C4: CWorkThread
    //0x1C4: vtable 2
    u8 unk1C4[0x400 - 0x1C8];
    ml::FixStr<64> unk400;
    ml::CVec4 unk444;
};
