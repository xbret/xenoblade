#pragma once

#include <types.h>
#include "monolib/work.hpp"
#include "monolib/util.hpp"
#include "monolib/core.hpp"
#include "kyoshin/IScnRender.hpp"

class ITitleMenu{
public:
    virtual ~ITitleMenu(){}
    virtual void ITitleMenu__UnkVirtualFunc1() = 0;
};

class IErrMesWinSel{
public:
    virtual ~IErrMesWinSel(){}
    virtual void IErrMesWinSel__UnkVirtualFunc1() = 0;
};

struct UnkClass_8004041C{
    UnkClass_8004041C(u8 r4, int r5, u32 r6, u8 r7, u32 r8, u32 r9, float f1){
        unk0 = r4;
        unk4 = f1;
        unk8 = r5;
        unkC = r6;
        unk10 = r7;
        unk14 = r8;
        unk18 = r9;
    }

    u8 unk0;
    float unk4;
    int unk8;
    u32 unkC;
    u8 unk10;
    u32 unk14;
    u32 unk18;
};

class CTaskGame : public CTTask<CTaskGame>, public IWorkEvent, public IScnRender,
public IGameException, public ITitleMenu, public IErrMesWinSel {
public:
    CTaskGame(CView* pView, CWorkThread* pThread, int r6);
    virtual ~CTaskGame();

    static CTaskGame* getInstance();
    static u8 func_800404F0();
    virtual void Init();

    void func_80040A3C(u16 r4, u16 r5, const char* r6, s16 r7);
    static bool func_800426F0();
    void func_80042710();
    void func_80042720();
    static CTaskGame* create(CView* pView, CWorkThread* pThread, int r5);

    virtual void Term();
    virtual void ITitleMenu__UnkVirtualFunc1();
    virtual void IErrMesWinSel__UnkVirtualFunc1();
    virtual bool IGameException_UnkVirtualFunc1(u32 r4);

    //0x0: vtable
    //0x4-3C: CProcess
    //0x3C-54: CTTask
    //0x54: vtable 2 (IWorkEvent)
    //0x58: vtable 3 (IScnRender)
    //0x5C: vtable 4 (IGameException)
    //0x60: vtable 5 (ITitleMenu)
    //0x64: vtable 6 (IErrMesWinSel)
    u32 unk68;
    CWorkThread* unk6C;
    CView* unk70;
    u32 unk74;
    u32 unk78;
    u32 unk7C;
    u16 unk80;
    u16 unk82;
    u16 unk84;
    u16 unk86;
    u16 unk88;
    u16 unk8A;
    u8 unk8C[2]; //padding?
    u16 unk8E;
    u8 unk90;
    u8 unk91[0xA0 - 0x91];
    u32 unkA0;
    ml::FixStr<32> unkA4;
    u8 unkC8;
    u8 unkC9[0xCC - 0xC9];
    u32 unkCC;
    u32 unkD0;
    u32 unkD4;
    int unkD8;
    u32 unkDC;
    float unkE0;
    u32 unkE4;
    int unkE8;
    u32 unkEC;
    u32 unkF0;
    u32 unkF4;
    int unkF8;
    u32 unkFC;
    u32 unk100;
    u8 unk104;
    u8 unk105[0x124 - 0x105];
    u32 unk124;
    u32 unk128;
    u8 unk12C[0x130 - 0x12C];
    u8 unk130;
    u8 unk131[0x170 - 0x131];
    u32 unk170;
    u8 unk174[0x188 - 0x174];
    u8 unk188;
    u8 unk189[0x18C - 0x189]; //padding?
    UnkClass_8004041C unk18C;

protected:
    static CTaskGame* spInstance;
};
