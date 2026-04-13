#pragma once

#include <types.h>

#include "monolib/work/CTTask.hpp"

u32 func_80164910();

class CProcess;
class CScnNw4r;
class CView;

namespace cf{
    class CTaskREvent : public CTTask<CTaskREvent>{
    public:
        static CTaskREvent* getInstance();
        static CTaskREvent* create(CProcess* pParent, CScnNw4r* pScene, CView* pView);

    private:
        //0x000-0x054 CTTask
        char unk054[0x1F8 - 0x054]; //0x054

        static CTaskREvent* spInstance;
    }; //size = 0x1F8
} //namespace cf
