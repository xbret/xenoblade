#include "monolib/work/CWorkFlowWiiPowerOff.hpp"

CWorkFlowWiiPowerOff* CWorkFlowWiiPowerOff::spInstance = nullptr;

CWorkFlowWiiPowerOff* CWorkFlowWiiPowerOff::getInstance(){
    return spInstance;
}
