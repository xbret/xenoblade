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

    DECL_WORKTHREAD_CREATE(CDeviceFile);

    static bool func_8044E514();

    static CFileHandle* readFile(mtl::ALLOC_HANDLE allocHandle, const char* pPath, IWorkEvent* pWorkEvent,
    int r6, int r7);
    static CFileHandle* readCommonArchiveFile(mtl::ALLOC_HANDLE allocHandle, const char* pPath, IWorkEvent* pWorkEvent,
    int r6, int r7);

    static void removeFileJob(CDeviceFileJob* pJob);
    static void cancel(CFileHandle* pFileHandle);
    static void func_8044F154(CFileHandle* pFileHandle, int);
    static void func_8044F414(CFileHandle* pFileHandle);
    
    //0x0: vtable
    //0x0-1c8: CDeviceBase
    u8 unk1C8[0x1F0 - 0x1C8];
};
