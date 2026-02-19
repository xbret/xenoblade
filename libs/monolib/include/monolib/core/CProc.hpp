#pragma once

#include <types.h>
#include "monolib/monolib_types.hpp"
#include "monolib/work/CWorkThread.hpp"
#include "monolib/util.hpp"

struct CProc_UnkStruct1 {
    _reslist_node<u32>* unk0;
    _reslist_node<u32>* unk4;
    _reslist_node<u32>* unk8;
    _reslist_node<u32>* unkC;
};

//size: 0x1ec
class CProc : public CWorkThread {
public:
    CProc(const char* pName, CWorkThread* pWorkThread, s16 capacity);
    virtual ~CProc();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();

    CView* pssGetView(WORK_ID id) const;
    static CProc* pssGetRoot(CProc* pProc);
    void pssSetFocus();
    bool pssDetachView(WORK_ID id);
    void pssDetachView();
    void pssAttachView(CView* pView);
    DECOMP_INLINE ml::CRect16& pssMakeClientRect(ml::CRect16& rect) const;
    CView* pssCreateView(const char* pName, CWorkThread* pThread2, int r6);

    CWorkThread* pssGetParent() const {
        return mParent;
    }

    //Tries to cast the given thread to CProc.
    static CProc* convertToProc(CWorkThread* pThread) {
        if(pThread == nullptr){
            return nullptr;
        }

        int type = pThread->mType;

        //Check if the thread's type is in the CProc range
        if(THREAD_CPROC > type || type >= THREAD_CPROC_MAX) return nullptr;
        return static_cast<CProc*>(pThread);
    }

    WORK_ID getFirstViewID() const {
        return mViewIDList.front();
    }

    //0x0: vtable
    //0x0-1c4: CWorkThread
    reslist<WORK_ID> mViewIDList; //0x1C4
    u32 unk1E4;
    u32 unk1E8;
};
