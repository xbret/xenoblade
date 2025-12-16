#include "monolib/device.hpp"

extern bool func_804399A4(UNKTYPE* r3, const char* r4, UNKTYPE* r5, void* r6, u32 r7, bool r8);
extern bool func_8044E768();
extern void func_8044FC38();
extern void func_80450DA4();

CDeviceFileJobReadDvd::CDeviceFileJobReadDvd(const char* pName, CWorkThread* pParent):
CDeviceFileJob(pName, pParent){
    mType = THREAD_CDEVICEFILEJOBREADDVD;
    //Why not initialize mDvdFileInfo??
}

CDeviceFileJobReadDvd::~CDeviceFileJobReadDvd(){}

inline void CDeviceFileJobReadDvd::unkInline(){
    if(!wkIsCurrent()){
        CDeviceFile::removeFileJob(this);
    }else if(func_8044E768()){
        func_8044FC38();
    }else{
        func_80450DA4();
    }
}

bool CDeviceFileJobReadDvd::isRequestFile(const char* pFilename){
    if(mHandle == nullptr) return false;
    //If the filename doesn't match the one in the handle, return early
    if(mHandle->mName != pFilename) return false;

    unkInline();
    return true;
}

bool CDeviceFileJobReadDvd::cancel(CFileHandle* pHandle){
    if(mHandle == nullptr || mHandle != pHandle) return false;
    unkInline();
    return true;
}

void CDeviceFileJobReadDvd::wkUpdate(){
    if(mHandle != nullptr && mHandle->unkInline2()){
        if(mHandle->func_80451E48() != nullptr){
            func_804399A4(mHandle->func_80451E48(), getFilename(), &mHandle->unk160,
            mHandle->unkInline1(), mHandle->getLength(), false);
        }

        mHandle->call(CBM_1);
        CDeviceFile::removeFileJob(this);
    }
}

bool CDeviceFileJobReadDvd::wkStandbyLogin(){
    if(isThreadFlag0()){
        return CWorkThread::wkStandbyLogin();
    }else if(wkIsCurrent()){
        if(mHandle->func_80451DA4(true)){
            CDeviceFile::removeFileJob(this);
        }

        return CWorkThread::wkStandbyLogin();
    }

    return false;
}

bool CDeviceFileJobReadDvd::wkStandbyLogout(){
    //Cancel the associated file handle if there is one
    if(mHandle != nullptr){
        cancel(mHandle);
        return false;
    }

    return CWorkThread::wkStandbyLogout(); //Call base
}

void CDeviceFileJobReadDvd::func_80452254(){
    if(mHandle != nullptr){
        mHandle->call(CBM_3);
    }

    CDeviceFile::removeFileJob(this);
}
