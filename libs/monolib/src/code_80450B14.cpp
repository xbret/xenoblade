#include "monolib/code_80450B14.hpp"

extern const wchar_t* lbl_80665FF0;
extern const wchar_t* lbl_80665FF4;
extern const wchar_t* lbl_80665FF8;

void func_80450B14(const wchar_t* pData){
    lbl_80665FF0 = pData;
}

void func_80450B1C(const wchar_t* pData){
    lbl_80665FF4 = pData;
}

void func_80450B24(const wchar_t* pData){
    lbl_80665FF8 = pData;
}
