#include "monolib/work.hpp"
#include "monolib/core.hpp"
#include "monolib/util.hpp"

extern void func_8043FC68(ml::CRect16& rect, CViewFrame* r4);

CProc::CProc(const char* pName, CWorkThread* pWorkThread, s16 capacity) :
CWorkThread(pName, pWorkThread, capacity),
unk1E4(-1){
    unk1E8 = 2;
    mType = THREAD_CPROC;
    mViewIDList.reserve(mAllocHandle, 16);
}

CProc::~CProc(){
    //Empty loop. Maybe had stubbed code?
    for(reslist<u32>::iterator it = mViewIDList.begin(); it != mViewIDList.end(); it++){
    }
}

//Utility functions for safely converting CWorkThread to CProc/CView.

CProc* CProc::convertToProc(CWorkThread* pThread) {
    if(pThread == nullptr){
        return nullptr;
    }

    int type = pThread->mType;

    //Check if the thread's type is in the CProc range
    if(THREAD_CPROC <= type && type < THREAD_CPROC_MAX) return static_cast<CProc*>(pThread);
    return nullptr;
}

CView* CProc::convertToView(CWorkThread* pThread) {
    if(pThread == nullptr){
        return nullptr;
    }

    int type = pThread->mType;

    //Check if the thread's type is in the CView range
    if(THREAD_CVIEW <= type && type < THREAD_CVIEW_MAX) return static_cast<CView*>(pThread);
    return nullptr;
}

//TODO: According to XCX's symbol, this shouldn't have a parameter, but XC1 and XCX's code suggest otherwise
ml::CRect16& CProc::pssMakeClientRect(ml::CRect16& rect) const {
    /*
    Idk why but mwcc/monolith devs do this for every instance of .size??? Weird??
    _reslist_node<WORK_ID>* node = parentProc->mViewIDList.mStartNodePtr;
    CProc_UnkStruct1 r1_8;
    u32 r4 = 0;
    r1_8.unk0 = node;
    r1_8.unk8 = node;
    r1_8.unk4 = node->mNext;
    r1_8.unkC = node->mNext;

    while(r1_8.unkC != r1_8.unk8){
        r4++;
        r1_8.unkC = r1_8.unkC->mNext;
    }
    */

    u32 length = mViewIDList.size();

    if(mViewIDList.size() == 0){
        rect.set(0, 0, 0, 0);
        return rect;
    }else{
        CView* view; //r30

        //???
        if(mViewIDList.size() == 0){
            view = nullptr;
            //goto 244
        }else{
            CWorkThread* thread = CWorkUtil::getWorkThread(mViewIDList.front());
            view = convertToView(thread);
        }

        ml::CRect16 rect_40;

        u32 numChildren = view->mChildren.size();
        func_8043FC68(rect_40, &view->unk1DC);

        float someX = view->unk1C8.unk0;
        float someY = view->unk1C8.unk2;
        s16 anotherX = (someX*0.6f - someX)/2;
        s16 anotherY = (someY*0.6f - someY)/2;
        rect.mPos.x = ((view->unk1DC.unk54 + rect_40.mPos.x) - anotherX) + numChildren * 20;
        rect.mPos.y = ((view->unk1DC.unk56 + rect_40.mPos.y) - anotherY) + numChildren * 20;
        rect.mSize.x = view->unk1C8.unk0 + anotherX*2;
        rect.mSize.y = view->unk1C8.unk2 + anotherY*2;

        return rect;
    }
}

void CProc::pssDetachView(){
    for(reslist<u32>::iterator it = mViewIDList.begin(); it != mViewIDList.end(); it++){
        u32 value = *it;
        CView* view = CViewRoot::getView(value);
        view->detachRenderWork(this);
    }

    mViewIDList.clear();
}

void CProc::pssAttachView(CView* pView){
    pView->attachRenderWork(this);

    //Add the new view's id to the list
    WORK_ID viewID = pView->mWorkID;
    mViewIDList.push_back(viewID);
}

CView* CProc::pssCreateView(const char* pName, CWorkThread* pThread, int param3){
    //this = r30, view = r29, r6 = r28, pThread = r27, pName = r26
    //stack = r31

    //Add "(View)" before the parent class name for the name of the associated view
    ml::FixStr<64> viewName = "(View)";
    viewName += pName;
    CView* view = CView::create(viewName.c_str(), pThread);
    view->wkReplaceHasChild(0); //Set the view's max child count to 0
    pssAttachView(view);

    //If this CProc instance has a CProc parent, update the view rect based on its view
    CWorkThread* parent = mParent;

    if(parent->mType == THREAD_CPROC){
        //Is it really CProc though?? Gotta be sure...
        CProc* parentProc = convertToProc(parent);
        ml::CRect16 rect; //0x48(r1)
        view->setRect(parentProc->pssMakeClientRect(rect));
    }

    return view;
}

bool CProc::wkStandbyLogin(){
    //Kind of strange that it just calls this function. Maybe there was code here that got stubbed?
    return CWorkThread::wkStandbyLogin();
}

bool CProc::wkStandbyLogout(){
    pssDetachView();
    CViewRoot::destroyProc(this);
    return CWorkThread::wkStandbyLogout();
}
