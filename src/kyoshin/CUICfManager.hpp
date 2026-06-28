#pragma once

#include "kyoshin/cf/IFlagEvent.hpp"
#include "monolib/work.hpp"

#include <nw4r/lyt.h>

class CUICfManager : public CTTask<CUICfManager>, public IWorkEvent, public cf::IFlagEvent {
public:
    static CUICfManager* getInstance() {
        return spInstance;
    }
    static CUICfManager* create(CProcess* pParent, CScnNw4r* pScene, mtl::ALLOC_HANDLE mHandle);
    static nw4r::lyt::ArcResourceAccessor* func_801355F4();
    static int func_80135FDC();

private:
    //0x000-0x054 CTTask
    //0x054-0x058 IWorkEvent
    //0x058-0x05C cf::IFlagEvent
    char unk05C[0xC94 - 0x05C]; //0x05C

    static CUICfManager* spInstance;
}; //size = 0xC94
