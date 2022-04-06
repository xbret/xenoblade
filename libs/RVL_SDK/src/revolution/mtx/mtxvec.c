#include "revolution/MTX.h"

//unused
void C_MTXMultVec(){
}

asm void PSMTXMultVec(const register Mtx m, const register Vec* in,
                      register Vec* out) {
  nofralloc;
  psq_l fp0, 0(in), 0, 0;
  psq_l fp2, 0(m), 0, 0;
  psq_l fp1, 8(in), 1, 0;
  ps_mul fp4, fp2, fp0;
  psq_l fp3, 8(m), 0, 0;
  ps_madd fp5, fp3, fp1, fp4;
  psq_l fp8, 16(m), 0, 0;
  ps_sum0 fp6, fp5, fp6, fp5;
  psq_l fp9, 24(m), 0, 0;
  ps_mul fp10, fp8, fp0;
  psq_st fp6, 0(out), 1, 0;
  ps_madd fp11, fp9, fp1, fp10;
  psq_l fp2, 32(m), 0, 0;
  ps_sum0 fp12, fp11, fp12, fp11;
  psq_l fp3, 40(m), 0, 0;
  ps_mul fp4, fp2, fp0;
  psq_st fp12, 4(out), 1, 0;
  ps_madd fp5, fp3, fp1, fp4;
  ps_sum0 fp6, fp5, fp6, fp5;
  psq_st fp6, 8(out), 1, 0;
  blr;
}

//unused
void C_MTXMultVecArray(){
}

//unused
asm void PSMTXMultVecArray(){
}

//unused
void C_MTXMultVecSR(){
}

//unused
asm void PSMTXMultVecSR(const Mtx mtx, const Vec* vec1, Vec* vec2){
}

//unused
void C_MTXMultVecArraySR(){
}

//unused
asm void PSMTXMultVecArraySR(){
}

