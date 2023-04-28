#include "revolution/math.h"
#include "revolution/MTX.h"


void C_MTXFrustum(Mtx44 m, float arg1, float arg2, float arg3, float arg4, float arg5, float arg6) {
  float tmp = 1.0f / (arg4 - arg3);
  m[0][0] = (2 * arg5) * tmp;
  m[0][1] = 0.0f;
  m[0][2] = (arg4 + arg3) * tmp;
  m[0][3] = 0.0f;
  tmp = 1.0f / (arg1 - arg2);
  m[1][0] = 0.0f;
  m[1][1] = (2 * arg5) * tmp;
  m[1][2] = (arg1 + arg2) * tmp;
  m[1][3] = 0.0f;
  m[2][0] = 0.0f;
  m[2][1] = 0.0f;
  tmp = 1.0f / (arg6 - arg5);
  m[2][2] = -(arg5)*tmp;
  m[2][3] = -(arg6 * arg5) * tmp;
  m[3][0] = 0.0f;
  m[3][1] = 0.0f;
  m[3][2] = -1.0f;
  m[3][3] = 0.0f;
}

void C_MTXPerspective(Mtx44 m, float fovY, float aspect, float n, float f) {
  float angle = fovY * 0.5f;
  angle = ((angle)*0.01745329252f);
  float cot = 1.0f / tanf(angle);
  m[0][0] = cot / aspect;
  m[0][1] = 0.0f;
  m[0][2] = 0.0f;
  m[0][3] = 0.0f;
  m[1][0] = 0.0f;
  m[1][1] = cot;
  m[1][2] = 0.0f;
  m[1][3] = 0.0f;
  m[2][0] = 0.0f;
  m[2][1] = 0.0f;
  float tmp = 1.0f / (f - n);
  m[2][2] = -(n)*tmp;
  m[2][3] = -(f * n) * tmp;
  m[3][0] = 0.0f;
  m[3][1] = 0.0f;
  m[3][2] = -1.0f;
  m[3][3] = 0.0f;
}

void C_MTXOrtho(Mtx44 m, float a1, float a2, float a3, float a4, float a5, float a6) {
  float tmp = 1.0f / (a4 - a3);
  m[0][0] = 2.0f * tmp;
  m[0][1] = 0.0f;
  m[0][2] = 0.0f;
  m[0][3] = -(a4 + a3) * tmp;
  tmp = 1.0f / (a1 - a2);
  m[1][0] = 0.0f;
  m[1][1] = 2.0f * tmp;
  m[1][2] = 0.0f;
  m[1][3] = -(a1 + a2) * tmp;
  m[2][0] = 0.0f;
  m[2][1] = 0.0f;
  tmp = 1.0f / (a6 - a5);
  m[2][2] = -(1.0f) * tmp;
  m[2][3] = -(a6)*tmp;
  m[3][0] = 0.0f;
  m[3][1] = 0.0f;
  m[3][2] = 0.0f;
  m[3][3] = 1.0f;
}

//unused
void C_MTX44Identity(){
}

//unused
asm void PSMTX44Identity(){
}

//unused
void C_MTX44Copy(){
}

//unused
asm void PSMTX44Copy(Mtx44 mtx1, Mtx44 mtx2){
}

//unused
void C_MTX44Concat(){
}

//unused
asm void PSMTX44Concat(){
}

//unused
void C_MTX44Transpose(){
}

//unused
asm void PSMTX44Transpose(){
}

//unused
void C_MTX44Inverse(){
}

//unused
void C_MTX44Trans(){
}

//unused
asm void PSMTX44Trans(){
}

//unused
void C_MTX44TransApply(){
}

//unused
asm void PSMTX44TransApply(){
}

//unused
void C_MTX44Scale(){
}

//unused
asm void PSMTX44Scale(){
}

//unused
void C_MTX44ScaleApply(){
}

//unused
asm void PSMTX44ScaleApply(){
}

//unused
void C_MTX44RotRad(){
}

//unused
asm void PSMTX44RotRad(){
}

//unused
void C_MTX44RotTrig(){
}

//unused
asm void PSMTX44RotTrig(){
}

//unused
void C_MTX44RotAxisRad(){
}

//unused
asm void __PSMTX44RotAxisRadInternal(){
}

//unused
void PSMTX44RotAxisRad(){
}
