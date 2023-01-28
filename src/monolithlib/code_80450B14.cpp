#include "monolithlib/code_80450B14.hpp"

extern u32** lbl_80665FF0;
extern u32** lbl_80665FF4;
extern u32** lbl_80665FF8;

void fn_80450B14(u32** dataPtr){
    lbl_80665FF0 = dataPtr;
}

void fn_80450B1C(u32** dataPtr){
    lbl_80665FF4 = dataPtr;
}

void fn_80450B24(u32** dataPtr){
    lbl_80665FF8 = dataPtr;
}