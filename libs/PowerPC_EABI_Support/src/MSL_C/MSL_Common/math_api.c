#include "types.h"
#include "PowerPC_EABI_Support/MSL_C/MSL_Common/math_api.h"

//unused
void __msl_generic_count_bits32(){
}

//unused
void __msl_generic_count_bits64(){
}

//unused
void __msl_relation(){
}

//unused
int __signbitf(float x){
}

int __fpclassifyf(float x)
{
	switch ((*(s32*)&x) & 0x7f800000) {
	case 0x7f800000: {
		if ((*(s32*)&x) & 0x007fffff)
			return 1;
		else
			return 2;
		break;
	}
	case 0: {
		if ((*(s32*)&x) & 0x007fffff)
			return 5;
		else
			return 3;
		break;
	}
	}
	return 4;
}

int __signbitd(double x) {
    return __HI(x) & 0x80000000;
}

int __fpclassifyd(double x)
{
	switch (__HI(x) & 0x7ff00000) {
	case 0x7ff00000: {
		if ((__HI(x) & 0x000fffff) || (__LO(x) & 0xffffffff))
			return 1;
		else
			return 2;
		break;
	}
	case 0: {
		if ((__HI(x) & 0x000fffff) || (__LO(x) & 0xffffffff))
			return 5;
		else
			return 3;
		break;
	}
	}
	return 4;
}
