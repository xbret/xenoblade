#pragma once

#include "kyoshin/cf/CTaskGameCf.hpp"
#include "kyoshin/CTaskEnvironment.hpp"
#include "kyoshin/CTaskGame.hpp"
#include "kyoshin/CUIBattleManager.hpp"
#include "kyoshin/CUICfManager.hpp"
#include "kyoshin/CUIWindowManager.hpp"
#include "kyoshin/cf/CTaskCulling.hpp"
#include "kyoshin/cf/CTaskREvent.hpp"
#include "kyoshin/cf/CfGameManager.hpp"
#include "kyoshin/cf/CfNandManager.hpp"
#include "kyoshin/cf/object/CfObjectSelectorObj.hpp"
#include "kyoshin/code_80296898.hpp"
#include "monolib/device/CDeviceVI.hpp"

namespace cf{
    CTaskGameCf* CTaskGameCf::spInstance;

    CTaskGameCf::CTaskGameCf(CProcess* pParent, BOOL arg2)
        : pTaskGame((CTaskGame*)pParent), unk_54(0), unk_5C(1), unk_5E(1), unk_60(16), unk_62(0){
        if(arg2){
            unk_54 |= 8;
        } else {
            unk_54 = 0;
        }
    }

    CTaskGameCf::~CTaskGameCf(){}

    CTaskGameCf* CTaskGameCf::getInstance(){
        return spInstance;
    }

    void CTaskGameCf::func_800442DC(){
        unk_54 |= 1;
        if(cf::CfGameManager::func_8007E1B4()){
            cf::CfGameManager::sUnkFlags |= 0x200000;
        }
    }

    void CTaskGameCf::func_8004431C(){
        mMoveFunc = &CTaskGameCf::func_80044424;
    }

    void CTaskGameCf::func_8004433C(){
        mMoveFunc = &CTaskGameCf::func_80044480;
    }

    void CTaskGameCf::func_8004435C(s16 arg1, s16 arg2, ml::FixStr<32>& arg3, s16 arg4){
        unk_5C = arg1;
        unk_5E = arg2;
        unk_60 = 12;
        unk_62 = 0;
        unk_64 = arg3;
        unk_88 = arg4;
        mMoveFunc = &CTaskGameCf::func_800444DC;
    }

    void CTaskGameCf::Init(){
        spInstance = this;
    }

    void CTaskGameCf::Term(){
        if(cf::CTaskCulling::getInstance()){
            cf::CTaskCulling::getInstance()->SetRemove();
        }
        spInstance = nullptr;
    }

    void CTaskGameCf::Draw(){}

    void CTaskGameCf::func_80044424(){
        mMoveFunc = &CTaskGameCf::func_80044444;
    }

    void CTaskGameCf::func_80044444(){
        unk_5C = 1;
        unk_5E = 1;
        unk_60 = 12;
        unk_62 = 0;
        mMoveFunc = &CTaskGameCf::func_8004451C;
    }

    void CTaskGameCf::func_80044480(){
        mMoveFunc = &CTaskGameCf::func_800444A0;
    }

    void CTaskGameCf::func_800444A0(){
        unk_5C = 1;
        unk_5E = 1;
        unk_60 = 12;
        unk_62 = 0;
        mMoveFunc = &CTaskGameCf::func_8004451C;
    }

    void CTaskGameCf::func_800444DC(){
        mMoveFunc = &CTaskGameCf::func_800444FC;
    }

    void CTaskGameCf::func_800444FC(){
        mMoveFunc = &CTaskGameCf::func_8004451C;
    }

    void CTaskGameCf::func_8004451C(){
        if(!(unk_54 & 8)){
            func_800407C8_tmp tmp;
            pTaskGame->getScene()->func_8049602C(0, func_800407C8(&tmp, 0.0f, 0.0f, 0.0f, 1.0f));
        }

        CUICfManager::func_80135FDC();
        CfObjectSelectorObj::create();

        bool v5 = !unk_5C && !unk_5E;
        bool v6 = (unk_54 & 8) == 0;
        if(v5){
            v6 = false;
        }

        CfGameManager::init(pTaskGame->getScene(), pTaskGame->unk70, v6);
        CfGameManager::func_8007F930((unk_54 >> 3) & 1);

        if(!CfGameManager::checkUnkFlag(24)){
            CUIWindowManager::create(this, pTaskGame->getScene(), mtl::MemManager::getHandleMEM2());
            CUIBattleManager::create(this, pTaskGame->getScene(), mtl::INVALID_HANDLE);
            CfGameManager::setUnkFlag(28, true);
        }

        if(CTaskGame::func_800404F0()){
            CfGameManager::setUnkFlag(30, true);
        } else {
            CfGameManager::setUnkFlag(30, false);
        }

        CUICfManager::create(CTaskManager::GetRootProcGame(), pTaskGame->getScene(), mtl::INVALID_HANDLE);
        CTaskREvent::create(CTaskManager::GetRootProcRealTime(), pTaskGame->getScene(), pTaskGame->unk70);

        if(v5){
            func_8009ECB0();
            func_8009ECB0();
        } else {
            int* v18 = func_8009ECB0();
            func_8009ECB0();

            if(!cf::CfGameManager::checkUnkFlag(24)){
                func_8009E574(v18, 2, 1, 1);
                func_8009E574(v18, 4, 1, 2);
                func_8009E574(v18, 3, 2, 0);
                func_8009E574(v18, 5, 2, 1);
                func_8009E574(v18, 6, 2, 2);
                func_8009E574(v18, 7, 2, 3);
            }
        }

        CfGameManager::func_80086B5C(unk_60, unk_62, 0);
        CfGameManager::func_8007E514(unk_5C, unk_5E, unk_64[0] ? unk_64.c_str() : nullptr, unk_88, CfNandManager::func_8024005C());
        CTaskEnvironment::create(pTaskGame, pTaskGame->getScene());
        CTaskCulling::create(pTaskGame, pTaskGame->getScene());
        if(!func_8009CF8C(32)) func_8009D018(32, 1);
        func_8004302C(1, 0);
        mMoveFunc = &CTaskGameCf::func_800447B4;
    }

    void CTaskGameCf::func_800447B4(){
        if(Class_80296898::getInstance()->unk_0F == 0){
            Class_80296898::getInstance()->unk_0F = 10;
        }

        CDeviceVI::func_804483DC(Class_80296898::getInstance()->unk_0F - 1);

        if(unk_54 & 1){
            unk_54 &= ~1;

            if(CTaskEnvironment::getInstance()){
                CTaskEnvironment::getInstance()->SetRemove();
            }

            if(CTaskCulling::getInstance()){
                CTaskCulling::getInstance()->SetRemove();
            }

            if(!CfGameManager::checkUnkFlag(24)){
                func_800407C8_tmp tmp;
                pTaskGame->getScene()->func_8049602C(0, func_800407C8(&tmp, 0.0f, 0.0f, 0.0f, 1.0f));
            }

            if(CUIWindowManager::getInstance()){
                CUIWindowManager::getInstance()->SetRemove();
            }

            CUIBattleManager::func_8012F87C(0);
            CTaskREvent::getInstance()->SetRemove();
            mMoveFunc = &CTaskGameCf::func_800448DC;
        }
    }

    void CTaskGameCf::func_800448DC(){
        if(CUICfManager::getInstance()){
            CUICfManager::getInstance()->SetRemove();
        }

        setUnk54(2, false);
        pTaskGame->getScene()->unk_3E4 = 1;
        unk_8C = 2;
        mMoveFunc = &CTaskGameCf::func_80044934;
    }

    void CTaskGameCf::func_80044934(){
        unk_8C--;
        if(unk_8C <= 0){
            if(!chkUnk54(2)){
                CfGameManager::func_8007E218();
            }
            CfObjectSelectorObj::destroy();
            mMoveFunc = &CTaskGameCf::func_8004499C;
        }
    }

    void CTaskGameCf::func_8004499C(){
        pTaskGame->getScene()->unk_3E4 = 0;
        setUnk54(1, true);
    }

    CTaskGameCf* CTaskGameCf::create(CProcess* pParent, int arg2){
        CTaskGameCf* task = new(CWorkThreadSystem::getWorkMem()) CTaskGameCf(pParent, arg2);
        task->Regist(pParent, false);
        return task;
    }

} //namespace cf
