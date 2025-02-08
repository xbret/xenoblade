#include "monolib/CProcess.hpp"

bool CProcessMgr::sIsInitialized = false;

TChildListHeader<CProcess> CProcessMgr::sFreeProcessList;
TChildListHeader<CProcess> CProcessMgr::sRootProcessList;

CProcess::CProcess() :
    mIsRegist(false),
    mIsRemove(false),
    mIsDisableMove(false),
    mIsDisableDraw(false) {

    CProcessMgr::GetFreeProcessList().InsertEnd(this);
}

CProcess::~CProcess() {
    CProcess* prev;

    //Delete child processes, in reverse order of creation
    for (CProcess* iter = static_cast<CProcess*>(mChildren.End());
        iter != NULL; iter = prev) {

        prev = mChildren.IterPrev(iter);
        delete iter;
    }

    //Remove from process lists
    if (mParent == NULL) {
        TChildListHeader<CProcess>& list = !mIsRegist
            ? CProcessMgr::GetFreeProcessList()
            : CProcessMgr::GetRootProcessList();

        list.Remove(this);
    }
    else {
        mParent->GetChildren().Remove(this);
    }
}

void CProcess::Regist(CProcess* parent, bool insertTop) {
    if (mIsRegist) {
        return;
    }

    CProcessMgr::GetFreeProcessList().Remove(this);

    //NULL parent registers to a root list
    if (parent == NULL) {
        if (insertTop) {
            CProcessMgr::GetRootProcessList().InsertTop(this);
        }
        else {
            CProcessMgr::GetRootProcessList().InsertEnd(this);
        }
    }
    else {
        if (insertTop) {
            parent->mChildren.InsertTop(this);
        }
        else {
            parent->mChildren.InsertEnd(this);
        }
    }

    SetParent(parent);
    Init();
    mIsRegist = true;
}

void CProcess::Remove() {
    if (mIsRegist != true) {
        return;
    }

    //Unregister children
    for (CProcess* proc = static_cast<CProcess*>(mChildren.Begin());
        proc != NULL; proc = static_cast<CProcess*>(mChildren.Begin())) {

        proc->Remove();
    }

    Term();

    //Remove parent
    if (mParent == NULL) {
        CProcessMgr::GetRootProcessList().Remove(this);
    }
    else {
        mParent->GetChildren().Remove(this);
    }

    CProcessMgr::GetFreeProcessList().InsertEnd(this);
    SetParent(NULL);
    mIsRegist = false;
}

void CProcessMgr::Init() {
    if (!sIsInitialized) {
        sIsInitialized = true;
    }
}

void CProcessMgr::Term() {
    if (sIsInitialized == true) {
        Reset();
        sIsInitialized = false;
    }
}

void CProcessMgr::Reset() {
    CProcess* proc;

    //Terminate all processes
    while (proc = sRootProcessList.End()) {
        proc->Remove();
    }

    //Then delete all processes 
    while (proc = sFreeProcessList.End()) {
        delete proc;
    }
}

void CProcessMgr::Move() {
    const TChildListHeader<CProcess>& list = GetRootProcessList();
    CProcess* proc;

    for (proc = list.End(); proc != NULL; proc = list.IterPrev(proc)) {
        MoveImpl(proc);
    }

    for (proc = list.End(); proc != NULL; proc = list.IterPrev(proc)) {
        Remove(proc);
    }
}

void CProcessMgr::MoveImpl(CProcess* proc) {
    if (!proc->mIsDisableMove && !proc->mIsRemove) {
        proc->Move();

        //Recurse through child processes
        for (CProcess* iter = static_cast<CProcess*>(proc->mChildren.End());
            iter != NULL; iter = proc->mChildren.IterPrev(iter)) {

            MoveImpl(iter);
        }
    }
}

bool CProcessMgr::Remove(CProcess* proc) {
    if (proc->mIsRegist == true && proc->mIsRemove == true) {
        proc->Remove();
        return true;
    }

    //Recurse through child processes
    while (true) {
        bool removedOne = false;

        for (CProcess* iter = static_cast<CProcess*>(proc->mChildren.End());
            iter != NULL; iter = proc->mChildren.IterPrev(iter)) {

            if (Remove(iter)) {
                removedOne = true;
                break;
            }
        }

        if (!removedOne) {
            break;
        }
    };
    
    return false;
}

void CProcessMgr::Draw() {
    const TChildListHeader<CProcess>& list = GetRootProcessList();
    CProcess* proc;

    for (proc = list.End(); proc != NULL; proc = list.IterPrev(proc)) {
        DrawImpl(proc);
    }

    for (proc = list.End(); proc != NULL; proc = list.IterPrev(proc)) {
        TailImpl(proc);
    }
}

void CProcessMgr::DrawImpl(CProcess* proc) {
    if (!proc->mIsDisableDraw && !proc->mIsRemove) {
        proc->Draw();

        //Recurse through child processes
        for (CProcess* iter = static_cast<CProcess*>(proc->mChildren.End());
            iter != NULL; iter = proc->mChildren.IterPrev(iter)) {

            DrawImpl(iter);
        }
    }
}

void CProcessMgr::Tail() {
    const TChildListHeader<CProcess>& list = GetRootProcessList();

    for (CProcess* proc = list.End(); proc != NULL; proc = list.IterPrev(proc)) {
        TailImpl(proc);
    }
}

void CProcessMgr::TailImpl(CProcess* proc) {
    if (!proc->mIsDisableDraw && !proc->mIsRemove) {
        proc->Tail();

        //Recurse through child processes
        for (CProcess* iter = static_cast<CProcess*>(proc->mChildren.End());
            iter != NULL; iter = proc->mChildren.IterPrev(iter)) {

            TailImpl(iter);
        }
    }
}

void CProcessMgr::Delete() {
    CProcess* proc;
    CProcess* prev;

    for (proc = sFreeProcessList.End(); proc != NULL; proc = prev) {
        prev = sFreeProcessList.IterPrev(proc);
        
        if (proc->mIsRemove == true) {
            delete proc;
        } else {
            DeleteImpl(proc);
        }
    }

    for (proc = sRootProcessList.End(); proc != NULL; proc = prev) {
        prev = sRootProcessList.IterPrev(proc);

        if (proc->mIsRemove == true) {
            delete proc;
        } else {
            DeleteImpl(proc);
        }
    }
}

void CProcessMgr::DeleteImpl(CProcess* proc) {
    CProcess* prev;
    
    //Recurse through child processes
    for (CProcess* iter = static_cast<CProcess*>(proc->mChildren.End());
        iter != NULL; iter = prev) {

        prev = proc->mChildren.IterPrev(iter);

        if (iter->mIsRemove == true) {
            delete iter;
        } else {
            DeleteImpl(iter);
        }
    }
}
