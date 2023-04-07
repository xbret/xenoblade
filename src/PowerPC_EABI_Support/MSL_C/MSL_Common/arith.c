#include "PowerPC_EABI_Support/MSL_C/MSL_Common/arith.h"


int abs(int __x)
{
	return (__x >> 0x1f ^ __x) - (__x >> 0x1f);
}

//might be llabs
long labs(long __x)
{
	return (__x >> 0x1f ^ __x) - (__x >> 0x1f);
}

//unused
void llabs(){
}

//unused
void div(){
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
