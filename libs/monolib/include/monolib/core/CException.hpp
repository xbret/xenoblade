#pragma once 

#include <types.h>
#include "monolib/work.hpp"

class IGameException {
public:
    virtual ~IGameException(){}
    virtual bool IGameException_UnkVirtualFunc1(u32 r4) = 0;
};

class CException : public CWorkThread {
public:
    bool func_80457C8C();

    static CException* convertToException(CWorkThread* pThread){
         CException* exception;
    
        //Check that the thread is valid, and has the right type id. If not, set the pointer to null.
        if(pThread == nullptr){
            exception = nullptr;
        }else if(pThread->mType != THREAD_CEXCEPTION){
            exception = nullptr;
        }else{
            //The type matches, so casting should be safe
            exception = static_cast<CException*>(pThread);
        }

        return exception;
    }

    u8 unk1C4[0x200 - 0x1C4];
    IGameException* mException; //0x200
    u32 unk204;
};

CWorkThread* func_80457CA4(CWorkThread* r3, const wchar_t* message, u32 r5);
