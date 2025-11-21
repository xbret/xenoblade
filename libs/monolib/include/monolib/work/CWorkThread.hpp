#pragma once

#include "types.h"

#include "monolib/CMsgParam.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/IWorkEvent.hpp"
#include "monolib/Math.hpp"
#include "monolib/MemManager.hpp"
#include "monolib/reslist.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"

/* Enum used to keep track of the type of this work thread, which is useful when
 casting from a generic instance of CWorkThread. Most classes inheriting from
 CWorkThread have a unique value reserved, but not all do. If a custom value
 isn't set, derived classes will default to the value for CWorkThread. */
enum WorkThreadType{
    WORKTHREAD_CWORKTHREAD = 0,
    WORKTHREAD_CWORKCONTROL = 1,
    WORKTHREAD_CWORKSYSTEM = 2,
    WORKTHREAD_03 = 3,
    WORKTHREAD_04 = 4,
    WORKTHREAD_05 = 5,
    WORKTHREAD_CWORKSYSTEMCACHE = 6,
    WORKTHREAD_CWORKSYSTEMPACK = 7,
    WORKTHREAD_08 = 8,
    WORKTHREAD_09 = 9,
    WORKTHREAD_CDEVICE = 10,
    WORKTHREAD_CLIB = 11,
    WORKTHREAD_CLIBG3D = 12,
    WORKTHREAD_CLIBHBM = 13,
    WORKTHREAD_CLIBLAYOUT = 14,
    WORKTHREAD_CLIBCRI = 15,
    WORKTHREAD_CLIBCRIMOVIEPLAY = 16,
    WORKTHREAD_CLIBCRISTREAMINGPLAY = 17,
    WORKTHREAD_CLIBVM = 18,
    WORKTHREAD_CLIBSTATICDATA = 19,
    WORKTHREAD_20 = 20,
    WORKTHREAD_CPROCROOT = 21,
    WORKTHREAD_CVIEWROOT = 22,
    WORKTHREAD_CPROC = 23,
    WORKTHREAD_CDESKTOP = 24,
    WORKTHREAD_CEXCEPTION = 25,
    WORKTHREAD_CLIBHBMCONTROL = 45,
    WORKTHREAD_CVIEW = 48,
    WORKTHREAD_CRSRCDATA = 56,
    WORKTHREAD_CSCRIPTCODE = 59,
    WORKTHREAD_CDEVICEFONTLAYER = 63,
    WORKTHREAD_CDEVICEFONTLOADER = 64,
    WORKTHREAD_CDEVICEFILEJOB = 65,
    WORKTHREAD_CDEVICEFILEJOBREADDVD = 68
};

//size: 0x1C4
class CWorkThread : public IWorkEvent{
public:
    enum EVT{
        EVT_NONE,
        EVT_1,
        EVT_EXCEPTION,
        EVT_3,
        EVT_4,
        EVT_PAUSE,
        EVT_UNPAUSE,
        EVT_7,
        EVT_8,
        EVT_9,
        EVT_10,
        EVT_11,
    };

    enum ThreadFlags{
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

    enum ThreadState{
        THREAD_STATE_NONE,
        THREAD_STATE_INIT,
        THREAD_STATE_LOGIN,
        THREAD_STATE_RUN,
        THREAD_STATE_LOGOUT,
        THREAD_STATE_SHUTDOWN,
    };

public:
    CWorkThread(const char* pName, CWorkThread* pParent, int capacity);
    virtual ~CWorkThread();
    virtual void wkUpdate();                //0x88
    virtual void wkRender(){}              //0x8C
    virtual void wkRenderAfter(){}         //0x90
    virtual bool wkStartup();               //0x94
    virtual bool wkShutdown();              //0x98
    virtual bool wkException(WORK_ID wid){ //0x9C
        return true;
    }

    void wkReplaceHasChild(int capacity);
    void wkEntryChild(CWorkThread* pChild, bool dontNotify);
    void wkRemoveChild(CWorkThread* pChild);

    void wkSetEvent(EVT evt);
    void wkSetEventChild(EVT evt);

    bool wkCheckTimeout(u32 arg0, bool arg1, const char* pName);
    bool wkIsCurrent() const;
    void func_804385CC(u32);

    void wkTimeoutInit();
    void wkStandby();

    static CWorkThread* getWorkThread(WORK_ID wid);
    CWorkThread* getWorkThread(const char* name);

    CWorkThread* wkGetChild(){
        return mChildren.front();
    }
    CWorkThread* wkGetChild() const{
        return mChildren.front();
    }

    bool isRunning() const{
        return (!isException() && (mState == THREAD_STATE_LOGIN || mState == THREAD_STATE_RUN));
    }

    bool isException() const{
        return (mFlags & THREAD_FLAG_EXCEPTION) ? true : mMsgQueue.find(EVT_EXCEPTION) >= 0;
    }

    bool CWorkThread_inline2() const{
        return (mFlags & THREAD_FLAG_5) ? true : mMsgQueue.find(EVT_3) >= 0;
    }

    //0x0: vtable
    ml::FixStr<64> mName;            //0x4
    ThreadState mState;              //0x48
    WORK_ID mWorkID;                 //0x4C
    WorkThreadType mType;            //0x50
    mtl::ALLOC_HANDLE mAllocHandle;  //0x54
    CWorkThread* mParent;            //0x58
    reslist<CWorkThread*> mChildren; //0x5C
    u32 mFlags;                      //0x7C
    CMsgParam<8> mMsgQueue;          //0x80
    u32 unk1BC;
    WORK_ID mExceptionWorkID; //0x1C0

private:
    bool wkStandbyInit();
    bool wkStandbyRun();
    bool wkStandbyShutdown();
};
