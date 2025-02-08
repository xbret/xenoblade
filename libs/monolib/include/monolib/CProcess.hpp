#pragma once

#include "types.h"
#include "monolib/CChildListNode.hpp"

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

class CProcessMgr {
public:
    static void Init();
    static void Term();
    static void Reset();

    static void Move();
    static void Draw();
    static void Tail();

    static TChildListHeader<CProcess>& GetTermProcessList() {
        return sTermProcessList;
    }
    static TChildListHeader<CProcess>& GetRootProcessList() {
        return sRootProcessList;
    }

private:
    static void MoveImpl(CProcess* proc);
    static void DrawImpl(CProcess* proc);
    static void TailImpl(CProcess* proc);

    static bool Remove(CProcess* proc) DECOMP_DONT_INLINE;

    static void Delete();
    static void DeleteImpl(CProcess* proc);

    static bool sIsInitialized;
    static TChildListHeader<CProcess> sTermProcessList;
    static TChildListHeader<CProcess> sRootProcessList;
};
