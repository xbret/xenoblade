#pragma once

#include "monolib/work.hpp"

class CUIBattleManager : public CTTask<CUIBattleManager>, public IWorkEvent{
public:
    static CUIBattleManager* create(CProcess* pParent, CScnNw4r* pScene, mtl::ALLOC_HANDLE mHandle);

    static void func_8012F87C(u32);

private:
    //0x00-0x54 CTTask
    //0x54-0x58 IWorkEvent
    char unk58[0xF0 - 0x58]; //0x58
}; //size = 0xF0
