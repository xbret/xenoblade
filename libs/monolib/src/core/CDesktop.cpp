#include "monolib/core.hpp"
#include "monolib/device.hpp"
#include "monolib/lib.hpp"

DesktopIcon* CDesktop::spIcon;
CDesktop* CDesktop::spInstance;
bool CDesktop::sIconInitialized = false;
CDesktopBackGround* CDesktopBackGround::spInstance;
CDesktopException* CDesktopException::spInstance;

CDesktop::CDesktop(const char* pName, CWorkThread* pParent) :
CProc(pName, pParent, 128),
mView(nullptr) {
    spInstance = this;
    mType = THREAD_CDESKTOP;
    unk1EC.set(0.5f,0.5f,0.5f,1);
    CView::setDefaultFrameColor(unk1EC);
}

CDesktop::~CDesktop(){
    spInstance = nullptr;
}

CDesktop* CDesktop::getInstance(){
    return spInstance;
}

CView* CDesktop::getView(){
    CDesktop* desktop = getInstance();
    if(desktop == nullptr){
        return nullptr; 
    }

    return desktop->mView;
}

CDesktopException* CDesktop::getException(){
    CDesktop* desktop = getInstance();
    if(desktop == nullptr){
        return nullptr; 
    }

    return CDesktopException::spInstance;
}

void CDesktop::wkUpdate(){
    CLibHbm::func_8045DDD4();
}

void CDesktop::wkRender(){
    CView* fullScreenView = CViewRoot::getFullScreenView();
    if(fullScreenView != nullptr){
        if(fullScreenView == CView::getCurrentView()){

        }
    }
}

void CDesktop::wkRenderAfter(){
    CLibHbm::func_8045E0CC();
}

bool CDesktop::wkStandbyLogin(){
    if(CDeviceFile::getInstance() != nullptr && CDeviceFile::isInitialized()){
        CDesktopBackGround* background = CREATE_WORKTHREAD(CDesktopBackGround, CProcRoot::getInstance());
        background->unk1E4 = getView()->mWorkID;
        CDesktopException* exception = CREATE_WORKTHREAD(CDesktopException, CProcRoot::getInstance());
        exception->unk1E4 = getView()->mWorkID;

        //Call the desktop icon's start function if set (CGame::GameMain)
        if(sIconInitialized){
            spIcon->startFunc();
        }

        CDeviceVI::setFlag0(false);
        CDeviceVI::setFlag4(false);
        return CProc::wkStandbyLogin();
    }

    return false;
}

void CDesktop::entryTable(DesktopIcon* pIcon, bool state){
    spIcon = pIcon;
    sIconInitialized = state;
}

void CDesktop::setAppException(int r3){
    CDesktop* desktop = getInstance();

    if(desktop == nullptr) return;

    desktop->wkSetEvent(r3 != 0 ? EVT_10 : EVT_11);
}

namespace{
    CDesktopBackGround::~CDesktopBackGround(){
        spInstance = nullptr;
    }
    CDesktopException::~CDesktopException(){
        spInstance = nullptr;
    }
}
