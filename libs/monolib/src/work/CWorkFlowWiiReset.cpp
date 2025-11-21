#include "monolib/work/CWorkFlowWiiReset.hpp"

CWorkFlowWiiReset* CWorkFlowWiiReset::spInstance = nullptr;

CWorkFlowWiiReset* CWorkFlowWiiReset::getInstance(){
    return spInstance;
}
