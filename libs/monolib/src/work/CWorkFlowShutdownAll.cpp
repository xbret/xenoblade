#include "monolib/work/CWorkFlowShutdownAll.hpp"

CWorkFlowShutdownAll* CWorkFlowShutdownAll::spInstance = nullptr;

CWorkFlowShutdownAll* CWorkFlowShutdownAll::getInstance(){
    return spInstance;
}
