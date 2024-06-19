#pragma once

#include "types.h"

void func_80294824(void*);
void func_80294834(void*);
void func_802AA338();

namespace cf {
    
    int lbl_8053C140[3] = {
        1800, 1200, 600
    };

    struct CChainCombo{
        int w;
        int a;
        bool b;
        void* c;
        int d;
        
        virtual ~CChainCombo(){};

        CChainCombo();
        void func1();
    };
}
