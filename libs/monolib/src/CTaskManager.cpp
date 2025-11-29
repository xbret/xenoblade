#include "monolib/CTaskManager.hpp"
#include "monolib/CTTask.hpp"
#include "monolib/CProcess.hpp"
#include "monolib/work.hpp"
#include "monolib/device.hpp"

namespace {

/*
Root (top-level) process.

Serves as an empty parent process for children tasks.
*/
class CRootProc : public CTTask<CRootProc> {
public:
    virtual void Init() {}
    virtual void Term() {}

    virtual void Move() {}
    virtual void Draw() {}
};

//Root process for core engine tasks
static CRootProc* spRootProcGame = nullptr;

//Root process for real time events
static CRootProc* spRootProcRealTime = nullptr;

//Root process for scene tasks
static CRootProc* spRootProcScn = nullptr;

//Not even referenced in XB3D...
static CRootProc* spRootProcUnknown = nullptr;

} // namespace

void CTaskManager::Create() {
    CProcessMan::Init();
    CProcessMan::Reset();

    Start();
}

void CTaskManager::Start() {
    //All register with NULL parent because they are root-level processes
    spRootProcRealTime = new (CWorkThreadSystem::getWorkMem()) CRootProc();
    spRootProcRealTime->Regist(nullptr, false);

    spRootProcGame = new (CWorkThreadSystem::getWorkMem()) CRootProc();
    spRootProcGame->Regist(nullptr, false);

    spRootProcScn = new (CWorkThreadSystem::getWorkMem()) CRootProc();
    spRootProcScn->Regist(nullptr, false);

    spRootProcUnknown = new (CWorkThreadSystem::getWorkMem()) CRootProc();
    spRootProcUnknown->Regist(nullptr, false);
}

void CTaskManager::Release() {
    CProcessMan::Term();

    spRootProcGame = nullptr;
    spRootProcRealTime = nullptr;
    spRootProcScn = nullptr;
    spRootProcUnknown = nullptr;
}

void CTaskManager::Move() {
    CProcessMan::Move();
    CProcessMan::Delete();
}

void CTaskManager::Draw() {
    CProcessMan::Draw();
}

void CTaskManager::Reset() {
    CDeviceVI::func_80448A44();
    CProcessMan::Reset();

    Start();
}

CProcess* CTaskManager::GetRootProcGame() {
    return spRootProcGame;
}

CProcess* CTaskManager::GetRootProcRealTime() {
    return spRootProcRealTime;
}

CProcess* CTaskManager::GetRootProcScn() {
    return spRootProcScn;
}
