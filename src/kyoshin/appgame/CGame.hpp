#pragma once

#include "types.h"
#include "monolib/FixStr.hpp"
#include "monolib/CProc.hpp"
#include "nw4r/types_nw4r.h"

//Forward declarations
class CView;

class CGame : public CProc {
public:
    enum ShutdownState {
        SHUTDOWN_STATE_0,
        SHUTDOWN_STATE_1,
        SHUTDOWN_STATE_2
    };

    CGame(const char* name, CWorkThread* workThread);
    virtual ~CGame();
    static CGame* getInstance();
    static bool func_8003933C();
    static void func_80039364();
    static void setTaskManagerUpdateCount(u32 count);
    virtual void wkUpdate();
    virtual void wkRender();
    static void func_800395F4(bool r3);
    static void func_80039694(CView* view, s16 x, s16 y, s16 width, s16 height);
    virtual bool wkStartup();
    virtual bool wkShutdown();
    static void GameMain();
    static void registerControllerErrorEntry(const wchar_t* message, UNKTYPE* r4, u32 param);
    virtual bool wkStandbyExceptionRetry(u32 r4);
    virtual void WorkEvent5(UNKTYPE* r4);
    static void func_80039D08();

    //0x0: vtable
    //0x0-1ec: CProc
    CView* mView; //0x1EC
    ShutdownState mShutdownState; //0x1F0
    s16 unk1F4;
    s16 unk1F6;
    s16 unk1F8;
    u8 unk1FA[2];
    ml::FixStr<32> unk1FC;
    u32 mTaskManUpdateCount; //0x220
    float unk224;
    int unk228;
    u32 unk22C;

protected:
    static CGame* sInstance;
    static nw4r::lyt::Layout* lbl_80666604;
    static nw4r::lyt::ArcResourceAccessor* sArcResourceAccessor;
};

namespace {
    class CGameRestart : public CProc {
    public:
        friend class CGame;

        CGameRestart(const char* name, CWorkThread* workThread, int r6) : CProc(name, workThread, r6){
            unk1EC = -1;
        }
        virtual ~CGameRestart(){}
        virtual void wkUpdate(){
            CWorkThread* r3 = CWorkThreadSystem_getWorkThread(unk1EC);
            if(r3 == nullptr){
                CGame::GameMain();
                func_80437EF0(0);
                sInstance = nullptr;
            }
        }

        int unk1EC;
    
    protected:
        static CGameRestart* sInstance;
    };
}

//Temporary classes for unknown types used below
struct PadErrorCallbackClass {
    virtual void func08();
    virtual bool func0C(u32 r4);
};

//Possibly CException?
class PadErrorHandler : public CWorkThread {
public:
    u8 unk1C4[0x200 - 0x1C4];
    PadErrorCallbackClass* unk200;
    u32 unk204;
};
