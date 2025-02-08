#pragma once

#include "types.h"
#include "monolib/CChildListNode.hpp"

/*
Instance of a game task.

Processes can contain child sub-processes,
and somewhat maintain a priority system.

Each process can implement specific behavior
for its initialization/termination,
and for the update ("Move") and render ("Draw") game events.
*/
class CProcess : public CChildListNode {
    friend class CProcessMgr;

public:
    CProcess();
    virtual ~CProcess();

    virtual void Init() = 0;
    virtual void Term() = 0;

    virtual void Move() = 0;
    virtual void Draw() = 0;
    virtual void Tail() {}

    void Regist(CProcess* parent, bool insertTop);
    void Remove();

private:
    bool mIsRegist; //0x38
    bool mIsRemove; //0x39
    bool mIsDisableMove; //0x3A
    bool mIsDisableDraw; //0x3B
};

/*
Process manager.

Responsible for dispatching all process events every tick,
and for maintaining the lists of both root-level processes and released processes.
*/
class CProcessMgr {
public:
    static void Reset();

    static void Init();
    static void Term();
    
    static void Move();
    static void Draw();
    static void Tail();

    static TChildListHeader<CProcess>& GetFreeProcessList() {
        return sFreeProcessList;
    }
    static TChildListHeader<CProcess>& GetRootProcessList() {
        return sRootProcessList;
    }

private:
    static void MoveImpl(CProcess* proc);
    static void DrawImpl(CProcess* proc);
    static void TailImpl(CProcess* proc);

    static bool Remove(CProcess* proc);

    static void Delete();
    static void DeleteList(TChildListHeader<CProcess>& list);
    static void DeleteImpl(CProcess* proc);

    static bool sIsInitialized;
    static TChildListHeader<CProcess> sFreeProcessList;
    static TChildListHeader<CProcess> sRootProcessList;
};
