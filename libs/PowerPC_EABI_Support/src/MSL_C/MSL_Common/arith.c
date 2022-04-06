#include "PowerPC_EABI_Support/MSL_C/MSL_Common/arith.h"


int abs(int x)
{
	return x > 0 ? x : -x;
}

//might be llabs
long labs(long x)
{
	return x > 0 ? x : -x;
}

//unused
s64 llabs(s64 __x){
}

//unused
div_t div(s32 __numer, s32 __denom){
}

//unused
void ldiv(){
}

//unused
void lldiv(){
}

//unused
void __msl_add(){
}

//unused
void __msl_ladd(){
}

//unused
void __lladd(){
}

//unused
void __msl_mul(){
}

//unused
void __msl_lmul(){
}

//unused
void __llmul(){
}

//unused
void __msl_div(){
}

//unused
void __msl_ldiv(){
}

//unused
void __lldiv(){
}

//unused
void __msl_mod(){
}

//unused
void __msl_lmod(){
}

//unused
void __llmod(){
}
