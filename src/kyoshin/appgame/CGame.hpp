#pragma once

#include "types.h"
#include "monolib/FixStr.hpp"
#include "monolib/CProc.hpp"
#include "monolib/CDesktop.hpp"
#include "monolib/work/CWorkThread.hpp"
#include "monolib/work/CWorkThreadSystem.hpp"
#include "monolib/work/CWorkUtil.hpp"
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
    virtual bool wkException(u32 r4);
    virtual void OnPauseTrigger(bool paused);
    static void func_80039D08();

    static inline CGame* init(const char* name, CWorkThread* workThread, u32 r5){
        CGame* game = new (CWorkThreadSystem::getWorkMem()) CGame(name, workThread);
        CWorkUtil::entryWork(game, workThread, 0);
        game->unk1E4 = r5;
        return game;
    }

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
    static const char* scViewName;
};

namespace {
    class CGameRestart : public CProc {
    public:
        friend class CGame;

        CGameRestart(const char* name, CWorkThread* workThread, int r6) :
        CProc(name, workThread, r6),
        unk1EC(-1) {}
        virtual ~CGameRestart(){}
        virtual void wkUpdate(){
            CWorkThread* r3 = CWorkThread::getWorkThread(unk1EC);
            if(r3 == nullptr){
                CGame::GameMain();
                wkSetEvent(EVT_NONE);
                sInstance = nullptr;
            }
        }

        static inline CGameRestart* init(const char* name, CWorkThread* workThread){
            CGameRestart* gameRestart = new (CWorkThreadSystem::getWorkMem()) CGameRestart(name, workThread, 8);
            
            CWorkUtil::entryWork(gameRestart, workThread, 0);
            gameRestart->unk1E4 = func_80455AA0()->mWorkID;
            sInstance = gameRestart;
            return gameRestart;
        }

        int unk1EC;
    
    protected:
        static CGameRestart* sInstance;
    };
}
