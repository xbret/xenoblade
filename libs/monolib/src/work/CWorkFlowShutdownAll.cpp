#include "monolib/work.hpp"

CWorkFlowShutdownAll* CWorkFlowShutdownAll::spInstance = nullptr;

CWorkFlowShutdownAll* CWorkFlowShutdownAll::getInstance(){
    return spInstance;
}
