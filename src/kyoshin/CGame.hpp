#pragma once

#include <types.h>
#include "monolib/util.hpp"
#include "monolib/core.hpp"
#include "monolib/work.hpp"
#include <nw4r/lyt.h>

class CGame : public CProc {
public:
    enum ShutdownState {
        SHUTDOWN_STATE_0,
        SHUTDOWN_STATE_1,
        SHUTDOWN_STATE_2
    };

    CGame(const char* pName, CWorkThread* pWorkThread);
    virtual ~CGame();
    static CGame* getInstance();
    static bool func_8003933C();
    static void func_80039364();
    static void setTaskManagerUpdateCount(u32 count);
    virtual void wkUpdate();
    virtual void wkRender();
    static void func_800395F4(bool r3);
    static void func_80039694(CView* view, s16 x, s16 y, s16 width, s16 height);
    virtual bool wkStandbyLogin();
    virtual bool wkStandbyLogout();
    static void GameMain();
    static void registerControllerErrorEntry(const wchar_t* message, UNKTYPE* r4, u32 param);
    virtual bool wkStandbyExceptionRetry(u32 r4);
    virtual void OnPauseTrigger(bool paused);
    static void onExit();

    static inline CGame* create(const char* pName, CWorkThread* pWorkThread, u32 r5){
        CGame* game = new (CWorkThreadSystem::getWorkMem()) CGame(pName, pWorkThread);
        CWorkUtil::entryWork(game, pWorkThread, 0);
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
    static CGame* spInstance;
    static nw4r::lyt::Layout* lbl_80666604;
    static nw4r::lyt::ArcResourceAccessor* sArcResourceAccessor;
    static const char* scViewName;
};

namespace {
    class CGameRestart : public CProc {
    public:
        friend class CGame;

        CGameRestart(const char* pName, CWorkThread* pWorkThread, int r6) :
        CProc(pName, pWorkThread, r6),
        unk1EC(-1) {}
        virtual ~CGameRestart(){}
        virtual void wkUpdate(){
            CWorkThread* r3 = CWorkThread::getWorkThread(unk1EC);
            if(r3 == nullptr){
                CGame::GameMain();
                wkSetEvent(EVT_NONE);
                spInstance = nullptr;
            }
        }

        static inline CGameRestart* create(const char* pName, CWorkThread* pWorkThread){
            CGameRestart* gameRestart = new (CWorkThreadSystem::getWorkMem()) CGameRestart(pName, pWorkThread, 8);
            
            CWorkUtil::entryWork(gameRestart, pWorkThread, 0);
            gameRestart->unk1E4 = func_80455AA0()->mWorkID;
            spInstance = gameRestart;
            return gameRestart;
        }

        int unk1EC;
    
    protected:
        static CGameRestart* spInstance;
    };
}
