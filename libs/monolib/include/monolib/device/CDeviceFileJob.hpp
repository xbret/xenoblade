#pragma once

#include <types.h>
#include <monolib/work.hpp>
#include <monolib/device/CFileHandle.hpp>

//Base class for jobs carried out by CDeviceFile.
class CDeviceFileJob : public CWorkThread {
public:
    CDeviceFileJob(const char* pName, CWorkThread* pParent);

    virtual ~CDeviceFileJob(){}
    virtual bool CDeviceFileJob_UnkVirtualFunc1(){ return false; }
    virtual bool isRequestFile(const char* pFilename);
    virtual bool cancel(CFileHandle* pHandle){ return false; }

    inline const char* getFilename(){
        return mHandle->mName.c_str();
    }

    //0x0: vtable
    //0x0-1C4: CWorkThread
    CFileHandle* mHandle; //0x1C4
    u8 unk1C8; //FixStr<64>?
    u8 unk1C9[0x208 - 0x1C9];
    u32 unk208;
    u32 unk20C;
    u8 unk210;
};
