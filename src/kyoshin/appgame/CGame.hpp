#pragma once

#include "types.h"
#include "monolib/CProc.hpp"
#include "monolib/CView.hpp"
#include "monolib/MemManager.hpp"


class CGame : public CProc {
public:
	CGame(const char* name, CWorkThread* workThread);
	virtual ~CGame();
	virtual void WorkEvent5(UNKTYPE* r4);
	virtual void wkUpdate();
	virtual void WorkThreadEvent2();
	virtual bool WorkThreadEvent4();
	virtual bool WorkThreadEvent5();
	virtual bool WorkThreadEvent6();

	u32 unk1EC;
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
	static CGame* instance;
};


void func_80039694(CView* view, s16 x, s16 y, s16 width, s16 height);
void func_800395F4(bool r3);
void func_80039438(bool r3);
void GameMain();


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
				GameMain();
				func_80437EF0(0);
				instance = nullptr;
			}
		}

		int unk1EC;
		static CGameRestart* instance;
	};
}
