#include "monolithlib/CERandomizerSimple.hpp"

CERandomizerSimple::CERandomizerSimple(){
    seed = 14992;
    unk6 = 14992;
    unk8 = 0;
}

//Generates a random 32 bit unsigned number.
u32 CERandomizerSimple::func_804DB50C() {
    u32 temp = seed*673 + 945;
    seed = (temp/10) % 100003;
    return temp % 10007;
}

float CERandomizerSimple::func_804DB8B4(void) {
    return (float)func_804DB50C()/10006.0f;
}

float CERandomizerSimple::func_804DB860(void) {
    return (float)func_804DB50C()/10006.0f - 0.5f;
}

float CERandomizerSimple::func_804DB820(){
    if(func_804DB50C() & 0x1)return 1.0f;
    else return -1.0f;
}
