#include "monolib/work.hpp"

CWorkFlowWiiMenu* CWorkFlowWiiMenu::spInstance = nullptr;

CWorkFlowWiiMenu* CWorkFlowWiiMenu::getInstance(){
    return spInstance;
}
