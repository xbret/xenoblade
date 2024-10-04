#include "kyoshin/appgame/cf/CBattleManager.hpp"
#include "kyoshin/appgame/code_800B06A4.hpp"

namespace cf{
    CBattleManager::CBattleManager(){ 
    }

    CBattleManager::~CBattleManager(){
        void* classPtr = func_800B07E8();
        func_800B88E0(classPtr, this);
    }

    CBattleManager* CBattleManager::getInstance(){
        return instance;
    }

}
