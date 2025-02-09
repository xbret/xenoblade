#include "monolib/CProcess.hpp"

bool CProcessMan::sIsInitialized = false;

TChildListHeader<CProcess> CProcessMan::sFreeProcessList;
TChildListHeader<CProcess> CProcessMan::sRootProcessList;

CProcess::CProcess() :
    mIsRegist(false),
    mIsRemove(false),
    mIsDisableMove(false),
    mIsDisableDraw(false) {

    CProcessMan::GetFreeProcessList().InsertEnd(this);
}

CProcess::~CProcess() {
    //Delete child processes
    CProcess* iter;
    CProcess* next;
    for (iter = static_cast<CProcess*>(mChildren.Begin());
        iter != nullptr; iter = next) {

        next = static_cast<CProcess*>(mChildren.IterNext(iter));
        delete iter;
    }

    //Remove from process lists
    if (mParent == nullptr) {
        TChildListHeader<CProcess>& list = !mIsRegist
            ? CProcessMan::GetFreeProcessList()
            : CProcessMan::GetRootProcessList();

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

    CProcessMan::GetFreeProcessList().Remove(this);

    //NULL parent registers to a root list
    if (parent == nullptr) {
        if (insertTop) {
            CProcessMan::GetRootProcessList().InsertTop(this);
        }
        else {
            CProcessMan::GetRootProcessList().InsertEnd(this);
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
        proc != nullptr; proc = static_cast<CProcess*>(mChildren.End())) {

        proc->Remove();
    }

    Term();

    //Remove parent
    if (mParent == nullptr) {
        CProcessMan::GetRootProcessList().Remove(this);
    }
    else {
        mParent->GetChildren().Remove(this);
    }

    CProcessMan::GetFreeProcessList().InsertEnd(this);
    SetParent(nullptr);
    mIsRegist = false;
}

void CProcessMan::Init() {
    if (!sIsInitialized) {
        sIsInitialized = true;
    }
}

void CProcessMan::Term() {
    if (sIsInitialized == true) {
        Reset();
        sIsInitialized = false;
    }
}

void CProcessMan::Reset() {
    CProcess* proc;

    //Terminate all processes
    while ((proc = sRootProcessList.Begin())) {
        proc->Remove();
    }

    //Then delete all processes 
    while ((proc = sFreeProcessList.Begin())) {
        delete proc;
    }
}

void CProcessMan::Move() {
    TChildListHeader<CProcess>& list = GetRootProcessList();
    CProcess* proc;

    for (proc = list.Begin(); proc != nullptr; proc = list.IterNext(proc)) {
        MoveImpl(proc);
    }

    for (proc = list.Begin(); proc != nullptr; proc = list.IterNext(proc)) {
        Remove(proc);
    }
}

void CProcessMan::MoveImpl(CProcess* proc) {
    if (!proc->mIsDisableMove && !proc->mIsRemove) {
        proc->Move();

        //Recurse through child processes
        TChildListHeader<CChildListNode>& children = proc->GetChildren();

        for (CProcess* iter = static_cast<CProcess*>(children.Begin());
            iter != nullptr;
            iter = static_cast<CProcess*>(children.IterNext(iter))) {

            MoveImpl(iter);
        }
    }
}

bool CProcessMan::Remove(CProcess* proc) {
    if (proc->mIsRegist == true && proc->mIsRemove == true) {
        proc->Remove();
        return true;
    }

    //Recurse through child processes
    while (true) {
        bool removedOne = false;
        TChildListHeader<CChildListNode>& children = proc->GetChildren();

        for (CProcess* iter = static_cast<CProcess*>(children.Begin());
            iter != nullptr;
            iter = static_cast<CProcess*>(children.IterNext(iter))) {

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

void CProcessMan::Draw() {
    TChildListHeader<CProcess>& list = GetRootProcessList();
    CProcess* proc;

    for (proc = list.Begin(); proc != nullptr; proc = list.IterNext(proc)) {
        DrawImpl(proc);
    }

    for (proc = list.Begin(); proc != nullptr; proc = list.IterNext(proc)) {
        TailImpl(proc);
    }
}

void CProcessMan::DrawImpl(CProcess* proc) {
    if (!proc->mIsDisableDraw && !proc->mIsRemove) {
        proc->Draw();

        //Recurse through child processes
        TChildListHeader<CChildListNode>& children = proc->GetChildren();

        for (CProcess* iter = static_cast<CProcess*>(children.Begin());
            iter != nullptr;
            iter = static_cast<CProcess*>(children.IterNext(iter))) {

            DrawImpl(iter);
        }
    }
}

void CProcessMan::Tail() {
    TChildListHeader<CProcess>& list = GetRootProcessList();

    for (CProcess* proc = list.Begin(); proc != nullptr; proc = list.IterNext(proc)) {
        TailImpl(proc);
    }
}

void CProcessMan::TailImpl(CProcess* proc) {
    if (!proc->mIsDisableDraw && !proc->mIsRemove) {
        proc->Tail();

        //Recurse through child processes
        TChildListHeader<CChildListNode>& children = proc->GetChildren();

        for (CProcess* iter = static_cast<CProcess*>(children.Begin());
            iter != nullptr;
            iter = static_cast<CProcess*>(children.IterNext(iter))) {

            TailImpl(iter);
        }
    }
}

void CProcessMan::Delete() {
    DeleteList(sFreeProcessList);
    DeleteList(sRootProcessList);
}

void CProcessMan::DeleteList(TChildListHeader<CProcess>& list) {
    CProcess* proc;
    CProcess* next;
    for (proc = list.Begin(); proc != nullptr; proc = next) {
        next = list.IterNext(proc);

        if (proc->mIsRemove == true) {
            delete proc;
        } else {
            DeleteImpl(proc);
        }
    }
}

void CProcessMan::DeleteImpl(CProcess* proc) {   
    //Recurse through child processes
    TChildListHeader<CChildListNode>& children = proc->GetChildren();

    CProcess* iter;
    CProcess* next;
    for (iter = static_cast<CProcess*>(children.Begin());
        iter != nullptr; iter = next) {

        next = static_cast<CProcess*>(children.IterNext(iter));

        if (iter->mIsRemove == true) {
            delete iter;
        } else {
            DeleteImpl(iter);
        }
    }
}
