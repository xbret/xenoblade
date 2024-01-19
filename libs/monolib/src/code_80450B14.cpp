#include "monolib/code_80450B14.hpp"

extern u16** lbl_80665FF0;
extern u16** lbl_80665FF4;
extern u16** lbl_80665FF8;

void func_80450B14(u16** pData){
    lbl_80665FF0 = pData;
}

void func_80450B1C(u16** pData){
    lbl_80665FF4 = pData;
}

void func_80450B24(u16** pData){
    lbl_80665FF8 = pData;
}
