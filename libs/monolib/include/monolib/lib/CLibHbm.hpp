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
    virtual ~IHBMCallback(){}
    virtual void onInitHbm();
    virtual void onDeleteHbm();
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

    static void setCurrentWpadChannel(int channel);
    static void func_8045D470(bool r3);
    static bool func_8045D478();
    static void loadTplImage(void* pTplData);
    static void removeTplImage();
    static void addCallback(IHBMCallback* r3);
    static void removeCallback(IHBMCallback* r3);
    static void func_8045D5C8(bool r3);
    void destroy();
    static bool isHbmMemPointerValid();
    static bool checkFlag6();
    static void loadHbmArcFile();
    static void initHbm();
    static void deleteHbm();
    static bool isHbmControlInitialized();
    static bool func_8045DE00();
    static void renderHbmstopIcon();
    static inline void initHbmInfoStruct();

    void setState(int state){
        mState = state;
        if(spHbmstopTplData == nullptr){
            mState = STATE_NEG1;
        }
    }

    //0x0: vtable
    //0x0-1c4: CWorkThread
    mtl::ALLOC_HANDLE mHandle; //0x1C4
    int unk1C8; //0x1C8
    void* mpLayoutBuf; //0x1CC
    void* mpSpkSeBuf; //0x1D0
    void* mpHbmSeBuf; //0x1D4
    void* mpMsgBuf; //0x1D8
    void* mpConfigBuf; //0x1DC
    UNKTYPE* mpHbmMem; //0x1E0
    UNKTYPE* mpHbmSndMem; //0x1E4
    UNKTYPE* unk1E8; //0x1E8
    HBMDataInfo unk1EC; //0x1EC
    u16 mFlags; //0x22C
    CFileHandle* mpHbmArcFileHandle; //0x230
    u32 mConfigBufSize; //0x234
    mtl::fixed_vector<IHBMCallback*, 8> unk238; //0x238
    float unk25C; //0x25C
    int mState; //0x260
    bool unk264; //0x264
    bool unk265; //0x265

private:
    enum State{
        STATE_NEG1 = -1,
        STATE_0,
        STATE_1,
        STATE_2,
        STATE_3
    };

    static const int MAX_CHILD = 1;
    static const int HBM_MEM_SIZE = 0x80000;
    static const int HBM_SND_MEM_SIZE = 100096;

    static CLibHbm* spInstance;

    static bool lbl_80667FD4;
    static TPLPalette* spHbmstopTplData;
    static bool lbl_80667FDC;
    static bool lbl_80667FDD;
    static int sCurWpadChannel;
    static GXTexObj sTplTexObj;
};
