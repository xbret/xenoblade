#pragma once

#include <types.h>

void func_80294824(void*);
void func_80294834(void*);
void func_802AA338();

namespace cf {
    
    /*
    int lbl_8053C140[3] = {
        1800, 1200, 600
    };
    */

    //size: 0x18
    class CChainCombo {
    public:
        int w; //0x0
        int a; //0x4
        bool b; //0x8
        void* c; //0xC
        int d; //0x10
        //0x14: vtable
        
        virtual ~CChainCombo(){};

        CChainCombo();
        void func1();
    };
}
