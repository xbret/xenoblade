#pragma once

#include <types.h>
#include "monolib/monolib_types.hpp"
#include "monolib/device/CDeviceBase.hpp"
#include "monolib/util.hpp"

//size: 0x1f0
class CDeviceFile : public CDeviceBase {
public:
    CDeviceFile(const char* pName, CWorkThread* pWorkThread);
    static CDeviceFile* getInstance();

    static inline CDeviceFile* create(const char* pName, CWorkThread* pWorkThread){
        CDeviceFile* device = new (CWorkThreadSystem::getWorkMem()) CDeviceFile(pName, pWorkThread);
        CWorkUtil::entryWork(device, pWorkThread, 0);
        return device;
    }

    static void removeFileJob(CDeviceFileJob* pJob);
    static void cancel(CFileHandle* pFileHandle);
    static void func_8044F154(CFileHandle* pFileHandle, int);
    static void func_8044F414(CFileHandle* pFileHandle);

    static CFileHandle* readFile(mtl::ALLOC_HANDLE allocHandle, const char* pPath, IWorkEvent* pWorkEvent,
    int r6, int r7);
    static CFileHandle* readCommonArchiveFile(mtl::ALLOC_HANDLE allocHandle, const char* pPath, IWorkEvent* pWorkEvent,
    int r6, int r7);
    
    //0x0: vtable
    //0x0-1c8: CDeviceBase
    u8 unk1C8[0x1F0 - 0x1C8];
};
