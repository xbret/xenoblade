#pragma once

#include "monolib/work.hpp"

class CProcess;
class CScnNw4r;

class CTaskEnvironment : public CTTask<CTaskEnvironment>{
public:
    static CTaskEnvironment* getInstance();
    static CTaskEnvironment* create(CProcess* pParent, CScnNw4r* pScene);

private:
    //0x00-0x54 CTTask
    char unk54[0xEC - 0x54]; //0x54

    static CTaskEnvironment* spInstance;
}; //size = 0xEC
