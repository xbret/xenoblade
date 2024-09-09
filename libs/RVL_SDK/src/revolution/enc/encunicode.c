#include <revolution/enc/encunicode.h>

ENCResult ENCiConvertStringUtf8ToUtf16(UNKWORD r3, UNKWORD r4, UNKWORD r5, UNKWORD r6, UNKWORD r7);

ENCResult ENCConvertStringUtf8ToUtf16(UNKWORD r3, UNKWORD r4, UNKWORD r5, UNKWORD r6){
    return ENCiConvertStringUtf8ToUtf16(r3,r4,r5,r6,0);
}

ENCResult ENCiConvertStringUtf8ToUtf16(UNKWORD r3, UNKWORD r4, UNKWORD r5, UNKWORD r6, UNKWORD r7){

}
