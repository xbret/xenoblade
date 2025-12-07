#include "monolib/work.hpp"

CWorkFlowWiiPowerOff* CWorkFlowWiiPowerOff::spInstance = nullptr;

CWorkFlowWiiPowerOff* CWorkFlowWiiPowerOff::getInstance(){
    return spInstance;
}
