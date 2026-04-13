#pragma once

#include "kyoshin/cf/IFlagEvent.hpp"
#include "monolib/work/CTTask.hpp"

class CUIWindowManager : public CTTask<CUIWindowManager>, public cf::IFlagEvent{
public:
    static CUIWindowManager* getInstance();
    static CUIWindowManager* create(CProcess* pParent, CScnNw4r* pScene, mtl::ALLOC_HANDLE mHandle);

private:
    //0x00-0x54 CTTask
    //0x54-0x58 cf::IFlagEvent
    char unk58[0xA4 - 0x58]; //0x58

    static CUIWindowManager* spInstance;

}; //size = 0xA4
