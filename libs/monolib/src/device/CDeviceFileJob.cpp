#include "monolib/device.hpp"

CDeviceFileJob::CDeviceFileJob(const char* pName, CWorkThread* pParent):
CWorkThread(pName, pParent, 0),
mHandle(nullptr),
unk1C8(0),
unk208(0),
unk20C(0),
unk210(0){
    mType = THREAD_CDEVICEFILEJOB;
}

bool CDeviceFileJob::cancel(const char* pFilename){
    return false;
}
