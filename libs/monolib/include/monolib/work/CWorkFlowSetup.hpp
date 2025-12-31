#pragma once

#include <types.h>

#include "monolib/work/CWorkThread.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"
#include "monolib/work/CWorkUtil.hpp"

class CWorkFlowSetup : public CWorkThread{
public:
    static CWorkFlowSetup* getInstance();

    DECL_WORKTHREAD_CREATE(CWorkFlowSetup);

    virtual bool wkStandbyLogin();  //0x94
    virtual bool wkStandbyLogout(); //0x98

private:
    CWorkFlowSetup(const char* pName, CWorkThread* pParent);
    virtual ~CWorkFlowSetup();

private:
    u32 unk1C4;

    static CWorkFlowSetup* spInstance;
};
