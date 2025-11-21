#include "monolib/work/CWorkFlowWiiMenu.hpp"

CWorkFlowWiiMenu* CWorkFlowWiiMenu::spInstance = nullptr;

CWorkFlowWiiMenu* CWorkFlowWiiMenu::getInstance(){
    return spInstance;
}
