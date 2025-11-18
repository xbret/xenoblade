#pragma once

#include "types.h"
#include "monolib/IWorkEvent.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/reslist.hpp"
#include "monolib/CMsgParam.hpp"

//size: 0x1C4
class CWorkThread : public IWorkEvent {
public:
    enum Unk50Values {
        UNK50_10 = 10,
        UNK50_25 = 25
    };

    enum Unk7CFlags {
        UNK7C_FLAG_0 = 1 << 0,
        UNK7C_FLAG_4 = 1 << 4
    };

    CWorkThread(const char* name, CWorkThread* workThread, int r6);
    virtual ~CWorkThread();
    virtual void wkUpdate(); //0x88
    virtual void wkRender(){} //0x8C
    virtual void wkRenderAfter(){} //0x90
    virtual bool wkStartup(); //0x94
    virtual bool wkShutdown(); //0x98
    virtual bool WorkThreadEvent6(u32 r4){ return true; } //0x9C

    void func_80437EF0(u32);
    void func_80438BD8(CWorkThread* r4, u32 r5);
    u32 func_80457CA4(UNKTYPE* r4, u32 r5);

    inline bool CWorkThread_inline1() const {
        bool r0_1 = (unk7C & UNK7C_FLAG_4) ? true : (unk80.someInline() >= 0);
        return (!r0_1 && (unk48 == 2 || unk48 == 3));
    }

    //0x0: vtable
    ml::FixStr<64> mName; //0x4
    int unk48;
    u32 unk4C;
    int unk50;
    u32 unk54;
    u32 unk58;
    reslist<CWorkThread*> mWorkThreadList; //0x5C
    u32 unk7C;
    //8093ebd0
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
    CMsgParam<8> unk80;
    u32 unk1BC;
    u32 unk1C0; //This value gets used in calls of the WorkThreadEvent6 callback
};

CWorkThread* CWorkThreadSystem_getWorkThread(u32 r3);
