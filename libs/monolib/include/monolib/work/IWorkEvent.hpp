#pragma once

#include "types.h"
#include "monolib/CFileHandle.hpp"

class CEventFile {
public:
    BOOL unk0;
    CFileHandle* mFileHandle;
};

/* Interface for work events, which provides a set of 32 event handler functions that
get triggered when a certain event happens (such as when loading a file for OnFileEvent).
Deriving classes can override any of these functions to run their own code when the
corresponding event happens. Only events 2-5 are actually used though, with the rest
being empty slots that were left in for some dumb reason (tysm monolithsoft <3). It is
possible though that the code tries to trigger the others, though. */
class IWorkEvent {
public:
    virtual ~IWorkEvent(){}
    virtual bool WorkEvent1(){ return false; }
    virtual bool OnFileEvent(CEventFile* pEventFile){ return false; }
    virtual bool WorkEvent3(UNKTYPE* r4){ return false; }
    virtual bool WorkEvent4(){ return false; }
    virtual void OnPauseTrigger(bool paused){}
    virtual bool WorkEvent6(){ return false; }
    virtual bool WorkEvent7(){ return false; }
    virtual bool WorkEvent8(){ return false; }
    virtual bool WorkEvent9(){ return false; }
    virtual bool WorkEvent10(){ return false; }
    virtual bool WorkEvent11(){ return false; }
    virtual bool WorkEvent12(){ return false; }
    virtual bool WorkEvent13(){ return false; }
    virtual bool WorkEvent14(){ return false; }
    virtual bool WorkEvent15(){ return false; }
    virtual bool WorkEvent16(){ return false; }
    virtual bool WorkEvent17(){ return false; }
    virtual bool WorkEvent18(){ return false; }
    virtual bool WorkEvent19(){ return false; }
    virtual bool WorkEvent20(){ return false; }
    virtual bool WorkEvent21(){ return false; }
    virtual bool WorkEvent22(){ return false; }
    virtual bool WorkEvent23(){ return false; }
    virtual bool WorkEvent24(){ return false; }
    virtual bool WorkEvent25(){ return false; }
    virtual bool WorkEvent26(){ return false; }
    virtual bool WorkEvent27(){ return false; }
    virtual bool WorkEvent28(){ return false; }
    virtual bool WorkEvent29(){ return false; }
    virtual bool WorkEvent30(){ return false; }
    virtual void WorkEvent31(){}
};
