#pragma once

#include <types.h>
#include <monolib/work/CProcess.hpp>

/*
Generic task object.

Provides a way to implement Move/Draw behavior without needing to work with the
CProcess api.

Derived classes must inherit using CRTP to allow binding the move/draw functions.
*/
template <typename TDerived>
class CTTask : public CProcess {
public:
    typedef void (TDerived::*MoveFunc)();
    typedef void (TDerived::*DrawFunc)();

public:
    CTTask() : mMoveFunc(nullptr), mDrawFunc(nullptr) {}

    virtual void Move() {
        if (mMoveFunc) {
            (static_cast<TDerived*>(this)->*mMoveFunc)();
        }
    }
    virtual void Draw() {
        if (mDrawFunc) {
            (static_cast<TDerived*>(this)->*mDrawFunc)();
        }
    }

protected:
    //0x0-10: CDoubleListNode
    //0x10: vtable
    //0x14-3C: CProcess
    MoveFunc mMoveFunc; //0x3C
    DrawFunc mDrawFunc; //0x48
};
