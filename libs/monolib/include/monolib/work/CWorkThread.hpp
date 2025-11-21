#pragma once

#include "monolib/CMsgParam.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/IWorkEvent.hpp"
#include "monolib/reslist.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"
#include "types.h"

class CWorkThread : public IWorkEvent {
public:
    /*
    Work thread event
    */
    enum EVT {
        EVT_NONE,
        EVT_1,
        EVT_EXCEPTION,
        EVT_3,
        EVT_4,
        EVT_5,
        EVT_6,
        EVT_7,
        EVT_8,
        EVT_9,
        EVT_10,
        EVT_11,
    };

    enum Unk50_Values { UNK50_10 = 10, UNK50_25 = 25 };

    enum ThreadFlags {
        THREAD_FLAG_0 = 1 << 0,
        THREAD_FLAG_1 = 1 << 1,
        THREAD_FLAG_2 = 1 << 2,
        THREAD_FLAG_3 = 1 << 3,
        THREAD_FLAG_EXCEPTION = 1 << 4,
        THREAD_FLAG_5 = 1 << 5,
        THREAD_FLAG_6 = 1 << 6,
        THREAD_FLAG_7 = 1 << 7,
        THREAD_FLAG_8 = 1 << 8,
        THREAD_FLAG_9 = 1 << 9,
        THREAD_FLAG_10 = 1 << 10,
    };

    enum ThreadState {
        THREAD_STATE_NONE,
        THREAD_STATE_INIT,
        THREAD_STATE_LOGIN,
        THREAD_STATE_RUN,
        THREAD_STATE_LOGOUT,
        THREAD_STATE_SHUTDOWN,
    };

public:
    CWorkThread(const char* name, CWorkThread* parent, int capacity);
    virtual ~CWorkThread();
    virtual void wkUpdate();
    virtual void wkRender() {}
    virtual void wkRenderAfter() {}
    virtual bool wkStartup();
    virtual bool wkShutdown();
    virtual bool wkException(WORK_ID wid) {
        return true;
    }

    void wkReplaceHasChild(int capacity);
    void wkEntryChild(CWorkThread* parent, bool dontNotify);
    void wkRemoveChild(CWorkThread* child);

    void wkSetEvent(EVT evt);
    void wkSetEventChild(EVT evt);

    bool wkCheckTimeout(u32 timeOut, bool arg1, const char* pName);
    bool wkIsCurrent() const;
    static CWorkThread* getWorkThread(WORK_ID wid);
    void func_804385CC(u32);

    void wkTimeoutInit();
    bool wkStandbyInit();
    bool wkStandbyRun();
    bool wkStandbyShutdown();
    void wkStandby();

    CWorkThread* getWorkThread(const char* name);

    void func_80438BD8(CWorkThread* r4, u32 r5);

    CWorkThread* wkGetChild() {
        return mChildren.front();
    }
    CWorkThread* wkGetChild() const {
        return mChildren.front();
    }

    bool IsRunning() const {
        return (!IsException() &&
                (mState == THREAD_STATE_LOGIN || mState == THREAD_STATE_RUN));
    }

    bool IsException() const {
        return (mFlags & THREAD_FLAG_EXCEPTION)
                   ? true
                   : mMsgQueue.find(EVT_EXCEPTION) >= 0;
    }

    bool CWorkThread_inline2() const {
        return (mFlags & THREAD_FLAG_5) ? true : (mMsgQueue.find(EVT_3) >= 0);
    }

    ml::FixStr<64> mName; // 0x4
    ThreadState mState;   // 0x48
    WORK_ID mWorkID;      // 0x4C
    int unk50;
    mtl::ALLOC_HANDLE mAllocHandle;  // 0x54
    CWorkThread* mParent;            // 0x58
    reslist<CWorkThread*> mChildren; // 0x5C
    u32 mFlags;                      // 0x7C
    CMsgParam<8> mMsgQueue;          // 0x80
    u32 unk1BC;
    WORK_ID mExceptionWorkID; // 0x1C0
};

u32 func_804385A8(u32 r3);
