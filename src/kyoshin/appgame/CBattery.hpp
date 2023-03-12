#pragma once

#include "types.h"
#include "monolithlib/IWorkEvent.hpp"

class CBattery : public IWorkEvent {
public:
    CBattery();

    //vtable
    virtual ~CBattery(); //0x8
    virtual BOOL IWorkEvent_WorkEvent1();
    virtual BOOL OnInit(); //overrides IWorkEvent::OnInit
    virtual BOOL IWorkEvent_WorkEvent3();
    virtual BOOL IWorkEvent_WorkEvent4();
    virtual void IWorkEvent_WorkEvent5();
    virtual BOOL IWorkEvent_WorkEvent6();
    virtual BOOL IWorkEvent_WorkEvent7();
    virtual BOOL IWorkEvent_WorkEvent8();
    virtual BOOL IWorkEvent_WorkEvent9();
    virtual BOOL IWorkEvent_WorkEvent10();
    virtual BOOL IWorkEvent_WorkEvent11();
    virtual BOOL IWorkEvent_WorkEvent12();
    virtual BOOL IWorkEvent_WorkEvent13();
    virtual BOOL IWorkEvent_WorkEvent14();
    virtual BOOL IWorkEvent_WorkEvent15();
    virtual BOOL IWorkEvent_WorkEvent16();
    virtual BOOL IWorkEvent_WorkEvent17();
    virtual BOOL IWorkEvent_WorkEvent18();
    virtual BOOL IWorkEvent_WorkEvent19();
    virtual BOOL IWorkEvent_WorkEvent20();
    virtual BOOL IWorkEvent_WorkEvent21();
    virtual BOOL IWorkEvent_WorkEvent22();
    virtual BOOL IWorkEvent_WorkEvent23();
    virtual BOOL IWorkEvent_WorkEvent24();
    virtual BOOL IWorkEvent_WorkEvent25();
    virtual BOOL IWorkEvent_WorkEvent26();
    virtual BOOL IWorkEvent_WorkEvent27();
    virtual BOOL IWorkEvent_WorkEvent28();
    virtual BOOL IWorkEvent_WorkEvent29();
    virtual BOOL IWorkEvent_WorkEvent30();
    virtual void IWorkEvent_WorkEvent31();

    //Variables
    u8 unk4[0x10];
    int unk14;
    int unk18;
    int unk1C;
    u8 unk20;
    u8 unk21;
    u8 unk22;
    u8 unk23;
    u8 unk24;
};