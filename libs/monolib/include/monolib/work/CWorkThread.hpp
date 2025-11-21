#pragma once

#include "types.h"
#include "monolib/MemManager.hpp"
#include "monolib/IWorkEvent.hpp"
#include "monolib/FixStr.hpp"
#include "monolib/reslist.hpp"
#include "monolib/CMsgParam.hpp"

 /* Enum used to keep track of the type of this work thread, which is useful when casting
 from a generic instance of CWorkThread. Most classes inheriting from CWorkThread have a
 unique value reserved, but not all do. If a custom value isn't set, derived classes will
 default to the value for CWorkThread. */
 enum WorkThreadType {
     WORKTHREAD_CWORKTHREAD = 0,
     WORKTHREAD_CWORKCONTROL = 1,
     WORKTHREAD_CWORKSYSTEM = 2,
     WORKTHREAD_03 = 3,
     WORKTHREAD_04 = 4,
     WORKTHREAD_05,
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
class CWorkThread : public IWorkEvent {
public:

    enum ThreadFlags {
        THREAD_FLAG_0 = 1 << 0,
        THREAD_FLAG_1 = 1 << 1,
        THREAD_FLAG_2 = 1 << 2,
        THREAD_FLAG_3 = 1 << 3,
        THREAD_FLAG_4 = 1 << 4,
        THREAD_FLAG_5 = 1 << 5,
        THREAD_FLAG_6 = 1 << 6,
        THREAD_FLAG_7 = 1 << 7,
        THREAD_FLAG_8 = 1 << 8,
        THREAD_FLAG_9 = 1 << 9,
        THREAD_FLAG_10 = 1 << 10,
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
    u32 mWorkID; //0x4C
    WorkThreadType mType; //0x50
    mtl::ALLOC_HANDLE mAllocHandle; //0x54
    CWorkThread* mParent; //0x58
    reslist<CWorkThread*> mChildren; //0x5C
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
