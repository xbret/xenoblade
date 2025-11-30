#include <monolib/work.hpp>

CWorkFlowWiiReset* CWorkFlowWiiReset::spInstance = nullptr;

CWorkFlowWiiReset* CWorkFlowWiiReset::getInstance(){
    return spInstance;
}
