#pragma once

#include <types.h>
#include "monolib/monolib_types.hpp"
#include "monolib/work/CWorkThread.hpp"
#include "monolib/util.hpp"
#include <revolution/GX.h>
#include <revolution/TPL.h>
#include <revolution/HBM.h>

class IHBMCallback {
public:
    virtual void IHBMCallback_UnkInline1() = 0;
    virtual void IHBMCallback_UnkInline2() = 0;
    virtual void IHBMCallback_UnkInline3() = 0;
};

//size: 0x268
class CLibHbm : public CWorkThread {
public:
    CLibHbm(const char* pName, CWorkThread* pParent);
    ~CLibHbm();

    DECL_WORKTHREAD_CREATE(CLibHbm);

    static bool isInitialized();
    static CLibHbm* getInstance();

    virtual void wkUpdate();
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();
    virtual bool OnFileEvent(CEventFile* pFile);

    static void func_8045D45C(u32 r3);
    static void func_8045D470(bool r3);
    static bool func_8045D478();
    static void loadTplImage(void* pTplData);
    static void removeTplImage();
    static void addCallback(IHBMCallback* r3);
    static void removeCallback(IHBMCallback* r3);
    static void func_8045D5C8(bool r3);
    void destroy();
    static bool func_8045D6AC();
    static bool func_8045D6C4();
    static void loadHbmArcFile();
    static void initHbm();
    static void deleteHbm();
    static bool isHbmControlInitialized();
    static bool func_8045DE00();
    static void func_8045E0CC();

    static float getFrameDeltaFactor();
    static  inline void initHbmInfoStruct();

    //0x0: vtable
    //0x0-1c4: CWorkThread
    u32 unk1C4;
    u32 unk1C8;
    void* unk1CC;
    void* unk1D0;
    void* unk1D4;
    void* unk1D8;
    void* unk1DC;
    UNKTYPE* unk1E0;
    UNKTYPE* unk1E4;
    UNKTYPE* unk1E8;
    HBMDataInfo unk1EC;
    u16 unk22C;
    CFileHandle* mpHbmArcFileHandle; //0x230
    u32 unk234;
    mtl::fixed_vector<IHBMCallback*, 8> unk238;
    float unk25C;
    u32 unk260;
    bool unk264;
    bool unk265;

private:
    static const int MAX_CHILD = 1;

    static CLibHbm* spInstance;

    static bool lbl_80667FD4;
    static TPLPalette* spTplData;
    static bool lbl_80667FDC;
    static bool lbl_80667FDD;
    static u32 lbl_806660E0;
    static GXTexObj sTplTexObj;
};
