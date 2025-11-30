#pragma once

#include <monolib/monolib_types.hpp>
#include <monolib/device/CDeviceFileJob.hpp>
#include <revolution/DVD.h>

class CDeviceFileJobReadDvd : public CDeviceFileJob {
public:
    CDeviceFileJobReadDvd(const char* pName, CWorkThread* pParent);
    virtual ~CDeviceFileJobReadDvd();
    virtual void wkUpdate();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();
    virtual bool isRequestFile(const char* r4);
    virtual bool cancel(CFileHandle* r4);
    void func_80452254();
    void unkInline();

    //0x0: vtable
    //0x0-214: CDeviceFileJob
    DVDFileInfo mDvdFileInfo;
};
