#include "kyoshin/cf/CfPadTask.hpp"
#include "kyoshin/code_8007C0F8.hpp"
#include <revolution/KPAD.h>

namespace cf{

    CfPadTask* CfPadTask::spInstance;

    CfPadTask::CfPadTask() : CTTask<CfPadTask>(),
    unk64(0){
        CLibHbm::addCallback(this);
        float_80666D44 = 0;
        float_80666D48 = 0;
    }

    void CfPadTask::Init(){
        unk5C = 0;
        unk60 = 0;
        spInstance = this;
    }

    void CfPadTask::Term(){
        CLibHbm::func_8045D45C(-1);
        spInstance = nullptr;
    }

    CfPadTask* CfPadTask::create(CProcess* pParent){
        CfPadTask* padTask = new (CWorkThreadSystem::getWorkMem()) CfPadTask();
        padTask->Regist(pParent, false);
        return padTask;
    }
    
    bool CfPadTask::IGameException_UnkVirtualFunc1(u32 r4){
        return lbl_80666D34;
    }

    void CfPadTask::IHBMCallback_UnkInline1(){
        if(func_80087208() != -1){
            KPADEnableDPD();
        }
    }

    void CfPadTask::IHBMCallback_UnkInline2(){
        if(func_80087208() != -1){
            KPADDisableDPD();
        }
    }

}
