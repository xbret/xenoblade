#pragma once

#include "monolib/CProc.hpp"
#include "monolib/CView.hpp"

namespace cf{

	class CGame : public CProc {
	public:
		virtual ~CGame();
		virtual void WorkEvent5();
		virtual void wkUpdate();
		virtual void WorkThreadEvent2();
		virtual void WorkThreadEvent4();
		virtual void WorkThreadEvent5();
		virtual void WorkThreadEvent6();

		u8 unk1EC[0x230 - 0x1EC];
	};

}

void func_80039694(CView* r3, u16 r4, u16 r5, u16 r6, u16 r7);
void func_800395F4(bool r3);
void func_80039438(bool r3);

extern "C"{
    void GameMain();
}
