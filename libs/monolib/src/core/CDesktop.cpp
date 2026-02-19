#include "monolib/core.hpp"

CDesktop* CDesktop::spInstance;

CDesktop::CDesktop(const char* pName, CWorkThread* pParent) :
CProc(pName, pParent, 128) {

}

CDesktop::~CDesktop(){
    spInstance = nullptr;
}
