#include "kyoshin/cf/CfPadTask.hpp"
#include "kyoshin/code_8007C0F8.hpp"
#include "kyoshin/UnkClass_80574F50.hpp"
#include "monolib/math.hpp"
#include <revolution/KPAD.h>
#include <revolution/PAD.h>

namespace cf{
    u8 CfPadTask::lbl_80666D30;
    u8 CfPadTask::lbl_80666D31;
    u8 CfPadTask::lbl_80666D32;
    u8 CfPadTask::lbl_80666D33;

    u32 CfPadTask::sWiimoteBattery;
    CfPadTask* CfPadTask::spInstance;
    u32 CfPadTask::lbl_80666D3C;
    u32 CfPadTask::lbl_80666D40;
    float CfPadTask::float_80666D44;
    float CfPadTask::float_80666D48;
    WPADInfo CfPadTask::sWpadInfo;

    CfPadTask::CfPadTask() : CTTask<CfPadTask>(),
    unk64(0){
        CLibHbm::addCallback(this);
        float_80666D44 = 0;
        float_80666D48 = 0;
    }

    CfPadTask::~CfPadTask(){
        lbl_80666D3C = 0;
        lbl_80666D40 = 0;
        CLibHbm::removeCallback(this);
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

    void CfPadTask::func_801C1AD0(){

    }

    void CfPadTask::func_801C1B94(float f1){
        if(f1 < ml::epsilon){
            float_80666D44 = 0;
        }else if(f1 > float_80666D44){
            float_80666D44 = f1;
        }
    }

    bool CfPadTask::func_801C1BC0(){
        return float_80666D44 > ml::epsilon;
    }

    void CfPadTask::func_801C1BD8(float f1){
        if(f1 < ml::epsilon){
            float_80666D48 = 0;
        }else if(f1 > float_80666D48){
            float_80666D48 = f1;
        }
    }

    void CfPadTask::func_801C1C04(CfPadTask_UnkStruct1* r4, CfPadTask_UnkStruct1* r5){
        u32 flags = r4->unkF8;
        r4->unkFC = r4->unkF8;
        r4->unkF8 = r5->unk0.unk0;
        r4->unk0 = r5->unk0;

        if(ml::math::abs(r4->unk0.unk60) < 0.5f){
            r4->unkF8 &= ~0x6000;
        }

        if(ml::math::abs(r4->unk0.unk64) < 0.5f){
            r4->unkF8 &= ~0x18000;
        }

        u32 r8 = flags & 0xF;
        u32 r7 = -r8;
        u32 r6 = flags & 0x1E000;
        u32 r3 = -r6;
        r7 |= r8;
        r3 |= r6;
        r6 = r7 >> 31;
        r3 >>= 31;

        if(r4->unkF8 & 0xF){
            if(r3 != 0){
                r4->unkF8 &= ~0xF;
            }
        }
    }

    void CfPadTask::Move(){

    }

    bool CfPadTask::update(){
        return false;
    }

    CfPadTask* CfPadTask::create(CProcess* pParent){
        CfPadTask* padTask = new (CWorkThreadSystem::getWorkMem()) CfPadTask();
        padTask->Regist(pParent, false);
        return padTask;
    }
    
    bool CfPadTask::gameExceptionCB(u32 r4){
        return sWiimoteBattery;
    }

    int CfPadTask::func_801C2A18(bool r4){
        if(!r4){
            if((lbl_80666D31 >= 30 && lbl_80666D30 != 0) || lbl_80666D32 != 0){
                if(lbl_80666D32 != 0) return 1;

                if(UnkClass_80574F50::checkUnkFlag(28)){
                    if(lbl_80666D30 == 1) return 2;
                    else if(lbl_80666D30 == 2) return 3;
                    else if(lbl_80666D30 == 3) return 4;
                }
            }
        }else if(lbl_80666D31 >= 30 && UnkClass_80574F50::checkUnkFlag(28)){
            if(lbl_80666D30 == 3) return 4;
        }
        
        return 0;
    }

    void CfPadTask::onInitHbm(){
        if(func_80087208() != -1){
            KPADEnableDPD();
        }
    }

    void CfPadTask::onDeleteHbm(){
        if(func_80087208() != -1){
            KPADDisableDPD();
        }
    }

    u32 CfPadTask::getWiimoteBattery(){
        return sWiimoteBattery;
    }

    void CfPadTask::wpadGetInfoCallback(int chan, int result){
        if(spInstance != nullptr && result == WPAD_ERR_OK){
            sWiimoteBattery = sWpadInfo.battery;
        }
    }

}
