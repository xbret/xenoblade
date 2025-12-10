#pragma once

#include <types.h>
#include "monolib/monolib_types.hpp"

/* Interface for work events, which provides a set of 32 event handler functions that
get triggered when a certain event happens (such as when loading a file for OnFileEvent).
Deriving classes can override any of these functions to run their own code when the
corresponding event happens.

Of the 32 available event slots, however, only events 1-5 are ever overriden, with the rest
being empty slots that were left in for some dumb reason (tysm monolithsoft <3). Additionally,
out of the 5 overriden events, only OnFileEvent and OnPauseTrigger seem to be used,
with no apparent calls to the other 3 (possibly debug only).

In XC3D, all instances of the unused event functions (including events 1, 3, and 4) are absent,
with the entries for each instead just being 0 in the vtable. This points to the extra 3 overridden
events being unused as well. */
class IWorkEvent {
public:
    virtual ~IWorkEvent(){}
    virtual bool WorkEvent1(UNKTYPE* r4, const char* r5){ return false; }
    virtual bool OnFileEvent(CEventFile* pEventFile){ return false; }
    virtual bool WorkEvent3(UNKTYPE* r4){ return false; }
    virtual bool WorkEvent4(){ return false; }
    virtual void OnPauseTrigger(bool paused){}
    //Completely unused, but still left in...
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
