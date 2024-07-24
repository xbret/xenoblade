#pragma once

#include "types.h"
#include "monolib/CProc.hpp"
#include "monolib/CView.hpp"
#include "monolib/MemManager.hpp"


class CGame : public CProc {
public:
	CGame(const char* name, CWorkThread* workThread);
	virtual ~CGame();
	static CGame* getInstance();
	static bool func_8003933C();
	static void func_80039364();
	static void func_80039438(bool r3);
	virtual void wkUpdate();
	virtual void WorkThreadEvent2();
	static void func_800395F4(bool r3);
	static void func_80039694(CView* view, s16 x, s16 y, s16 width, s16 height);
	virtual bool wkStartup();
	virtual bool wkShutdown();
	static void GameMain();
	static void func_80039AC4(UNKTYPE* r3, u32 r4, u32 r5);
	virtual bool WorkThreadEvent6();
	virtual void WorkEvent5(UNKTYPE* r4);
	static void func_80039D08();

	//0x0: vtable
	//0x0-1ec: CProc
	CView* view; //0x1EC
	u32 unk1F0;
	s16 unk1F4;
	s16 unk1F6;
	s16 unk1F8;
	u8 unk1FA[2];
	u8 unk1FC;
	u8 unk1FD[3];
	u32 unk200;
	u32 unk204;
	u8 unk208[0x14];
	u32 unk21C;
	u32 unk220;
	float unk224;
	int unk228;
	u32 unk22C;

protected:
	static CGame* instance;
};

namespace {
	class CGameRestart : public CProc {
	public:
		CGameRestart(const char* name, CWorkThread* workThread, int r6) : CProc(name, workThread, r6){
			unk1EC = -1;
		}
		virtual ~CGameRestart(){}
		virtual void wkUpdate(){
			u32 r3 = func_804385A8(unk1EC);
			if(r3 == 0){
				CGame::GameMain();
				func_80437EF0(0);
				instance = nullptr;
			}
		}

		int unk1EC;

		static CGameRestart* instance;
	};
}
