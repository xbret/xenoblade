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

    static CProc* convertToProc(CWorkThread* pThread);
    static CView* convertToView(CWorkThread* pThread);
    void func_804391A8();
    inline ml::CRect16& pssMakeClientRect(ml::CRect16& rect) const;
    void pssDetachView();
    void pssAttachView(CView* pView);
    CView* pssCreateView(const char* pName, CWorkThread* pThread2, int r6);

    //0x0: vtable
    //0x0-1c4: CWorkThread
    reslist<WORK_ID> mViewIDList; //0x1C4
    u32 unk1E4;
    u32 unk1E8;
};
