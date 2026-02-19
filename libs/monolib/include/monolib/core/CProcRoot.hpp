#pragma once

#include "monolib/work/CWorkThread.hpp"

class CProcRoot : public CWorkThread {
public:
    CProcRoot(const char* pName, CWorkThread* pParent);
    ~CProcRoot();

    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();

    DECL_WORKTHREAD_CREATE(CProcRoot);

    static CProcRoot* create(CWorkThread* pParent);
    static CProcRoot* getInstance();

    u8 unk1C4[4];

private:
    static CProcRoot* spInstance;
};

//Possibly member of CWorkThread?
extern bool hasChild(CWorkThread* pThread);
