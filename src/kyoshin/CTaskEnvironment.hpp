#pragma once

#include "monolib/work.hpp"

class CTaskEnvironment : public CTTask<CTaskEnvironment>{
public:
    static CTaskEnvironment* getInstance();
    static CTaskEnvironment* create(CProcess* pParent, CScnNw4r* pScene);

private:
    //0x00-0x54 CTTask
    /* 0x54 */ char unk54[0xEC - 0x54];

    static CTaskEnvironment* spInstance;
}; //size = 0xEC
