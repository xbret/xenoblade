#pragma once

#include "types.h"
#include "monolib/IWorkEvent.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/reslist.hpp"
#include "monolib/CMsgParam.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"
#include "monolib/work/wroot.hpp"

class CWorkThread : public IWorkEvent {
public:
    /*
    Work thread event
    */
    enum EVT {
        EVT_0,
    };

public:
    CWorkThread(const char* name, CWorkThread* parent, int capacity);
    virtual ~CWorkThread();
    virtual void wkUpdate();
    virtual void wkRender() {}
    virtual void wkRenderAfter() {}
    // TODO(kiwi) are these wkStandbyLogin/wkStandbyLogout?
    virtual bool wkStartup();
    virtual bool wkShutdown();
    virtual bool wkException(WORK_ID wid) { return true; }

    CWorkThread* wkGetChild() {
        return mChildren.front();
    }
    CWorkThread* wkGetChild() const {
        return mChildren.front();
    }

    void wkReplaceHasChild(int capacity);
    void wkEntryChild(CWorkThread* parent, bool imTheParent);
    void wkRemoveChild(CWorkThread* child);
    void wkSetEvent(EVT evt);

    void func_80437EF0(u32);
    void func_80438BD8(CWorkThread* r4, u32 r5);
    u32 func_80457CA4(UNKTYPE* r4, u32 r5);

    bool wkIsCurrent() const;
    static CWorkThread* getWorkThread(WORK_ID wid);
    void func_804385CC(u32);
    void wkStandby();

    CWorkThread* findThreadByName(const char* name);
    const char* getName() const;

    inline bool CWorkThread_inline1() const {
        bool r0_1 = (mFlags & 0x10) ? true : (mMsgParam.someInline() >= 0);
        return (!r0_1 && (unk48 == 2 || unk48 == 3));
    }

    ml::FixStr<64> mName; //0x4
    int unk48;
    WORK_ID mWorkID; //0x4C
    u32 unk50;
    mtl::ALLOC_HANDLE mAllocHandle; //0x54
    CWorkThread* mParent; //0x58
    reslist<CWorkThread*> mChildren; //0x5C
    u32 mFlags; //0x7C
    CMsgParam<8> mMsgParam; //0x80
    u32 unk1BC;
    u32 unk1C0;
};

u32 func_804385A8(u32 r3);
