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
    CProcess* next;

    //Delete child processes
    for (CProcess* iter = static_cast<CProcess*>(mChildren.Begin());
        iter != NULL; iter = next) {

        next = static_cast<CProcess*>(mChildren.IterNext(iter));
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
    for (CProcess* proc = static_cast<CProcess*>(mChildren.End());
        proc != NULL; proc = static_cast<CProcess*>(mChildren.End())) {

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
    while (proc = sRootProcessList.Begin()) {
        proc->Remove();
    }

    //Then delete all processes 
    while (proc = sFreeProcessList.Begin()) {
        delete proc;
    }
}

void CProcessMgr::Move() {
    const TChildListHeader<CProcess>& list = GetRootProcessList();
    CProcess* proc;

    for (proc = list.Begin(); proc != NULL; proc = list.IterNext(proc)) {
        MoveImpl(proc);
    }

    for (proc = list.Begin(); proc != NULL; proc = list.IterNext(proc)) {
        Remove(proc);
    }
}

void CProcessMgr::MoveImpl(CProcess* proc) {
    if (!proc->mIsDisableMove && !proc->mIsRemove) {
        proc->Move();

        //Recurse through child processes
        for (CProcess* iter = static_cast<CProcess*>(proc->mChildren.Begin());
            iter != NULL;
            iter = static_cast<CProcess*>(proc->mChildren.IterNext(iter))) {

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

        for (CProcess* iter = static_cast<CProcess*>(proc->mChildren.Begin());
            iter != NULL;
            iter = static_cast<CProcess*>(proc->mChildren.IterNext(iter))) {

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

    for (proc = list.Begin(); proc != NULL; proc = list.IterNext(proc)) {
        DrawImpl(proc);
    }

    for (proc = list.Begin(); proc != NULL; proc = list.IterNext(proc)) {
        TailImpl(proc);
    }
}

void CProcessMgr::DrawImpl(CProcess* proc) {
    if (!proc->mIsDisableDraw && !proc->mIsRemove) {
        proc->Draw();

        //Recurse through child processes
        for (CProcess* iter = static_cast<CProcess*>(proc->mChildren.Begin());
            iter != NULL;
            iter = static_cast<CProcess*>(proc->mChildren.IterNext(iter))) {

            DrawImpl(iter);
        }
    }
}

void CProcessMgr::Tail() {
    const TChildListHeader<CProcess>& list = GetRootProcessList();

    for (CProcess* proc = list.Begin(); proc != NULL; proc = list.IterNext(proc)) {
        TailImpl(proc);
    }
}

void CProcessMgr::TailImpl(CProcess* proc) {
    if (!proc->mIsDisableDraw && !proc->mIsRemove) {
        proc->Tail();

        //Recurse through child processes
        for (CProcess* iter = static_cast<CProcess*>(proc->mChildren.Begin());
            iter != NULL;
            iter = static_cast<CProcess*>(proc->mChildren.IterNext(iter))) {

            TailImpl(iter);
        }
    }
}

void CProcessMgr::Delete() {
    CProcess* proc;
    CProcess* next;

    for (proc = sFreeProcessList.Begin(); proc != NULL; proc = next) {
        next = sFreeProcessList.IterNext(proc);
        
        if (proc->mIsRemove == true) {
            delete proc;
        } else {
            DeleteImpl(proc);
        }
    }

    for (proc = sRootProcessList.Begin(); proc != NULL; proc = next) {
        next = sRootProcessList.IterNext(proc);

        if (proc->mIsRemove == true) {
            delete proc;
        } else {
            DeleteImpl(proc);
        }
    }
}

void CProcessMgr::DeleteImpl(CProcess* proc) {
    CProcess* next;
    
    //Recurse through child processes
    for (CProcess* iter = static_cast<CProcess*>(proc->mChildren.Begin());
        iter != NULL; iter = next) {

        next = static_cast<CProcess*>(proc->mChildren.IterNext(iter));

        if (iter->mIsRemove == true) {
            delete iter;
        } else {
            DeleteImpl(iter);
        }
    }
}
