#pragma once

#include "types.h"
#include "monolib/IWorkEvent.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/reslist.hpp"
#include "monolib/CMsgParam.hpp"

//size: 0x1C4
class CWorkThread : public IWorkEvent {
public:

    enum Unk50_Values {
        UNK50_10 = 10,
        UNK50_25 = 25
    };

    enum ThreadFlags {
        THREAD_FLAG_0 = 1 << 0,
        THREAD_FLAG_4 = 1 << 4
    };

    CWorkThread(const char* name, CWorkThread* workThread, int r6);
    virtual ~CWorkThread();
    virtual void wkUpdate(); //0x88
    virtual void wkRender(){} //0x8C
    virtual void wkRenderAfter(){} //0x90
    virtual bool wkStartup(); //0x94
    virtual bool wkShutdown(); //0x98
    virtual bool wkException(u32 wid){ return true; } //0x9C

    void func_80437EF0(u32);
    void func_80438BD8(CWorkThread* r4, u32 r5);

    inline bool CWorkThread_inline1() const {
        bool r0_1 = (mFlags & THREAD_FLAG_4) ? true : (mThreadMsgParam.someInline() >= 0);
        return (!r0_1 && (unk48 == 2 || unk48 == 3));
    }

    //0x0: vtable
    ml::FixStr<64> mName; //0x4
    int unk48;
    u32 unk4C;
    int unk50;
    u32 unk54;
    UNKTYPE* unk58;
    reslist<CWorkThread*> mChildThreads; //0x5C
    u32 mFlags; //0x7C
    //Message param entry format:
    //0x0: id
    //0x4: address
    //0x8: address
    //0xC: code address
    //0x10: value
    //0x14: address
    //0x18: address
    //0x1C: address
    //0x20: address (pointer to string?)
    CMsgParam<8> mThreadMsgParam; //0x80
    u32 unk1BC;
    u32 unk1C0; //Work id value that gets used in calls of the wkException callback
};

CWorkThread* CWorkThreadSystem_getWorkThread(u32 wid);
