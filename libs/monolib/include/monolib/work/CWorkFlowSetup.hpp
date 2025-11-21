#pragma once

#include "types.h"

#include "monolib/work/CWorkThread.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"
#include "monolib/work/CWorkUtil.hpp"

class CWorkFlowSetup : public CWorkThread {
public:
    static CWorkFlowSetup* getInstance();

    static CWorkFlowSetup* create(const char* pName, CWorkThread* pParent) {
        CWorkFlowSetup* pFlow = new (CWorkThreadSystem::getWorkMem()) CWorkFlowSetup(pName, pParent);
        CWorkUtil::entryWork(pFlow, pParent, 0);
        return pFlow;
    }

    virtual bool wkStartup();  //0x94
    virtual bool wkShutdown(); //0x98

private:
    CWorkFlowSetup(const char* pName, CWorkThread* pParent);
    virtual ~CWorkFlowSetup();

private:
    u32 unk1C4;

    static CWorkFlowSetup* spInstance;
};
