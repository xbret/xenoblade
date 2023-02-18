#include "PowerPC_EABI_Support/MSL_C/MSL_Common/arith.h"

/*
 * --INFO--
 * Address:	........
 * Size:	000198
 */
void __llmod(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	00005C
 */
void __msl_lmod(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	00005C
 */
void __msl_mod(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	0001C4
 */
void __lldiv(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000078
 */
void __msl_ldiv(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000078
 */
void __msl_div(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000148
 */
void __llmul(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000064
 */
void __msl_lmul(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000064
 */
void __msl_mul(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	0000D8
 */
void __lladd(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000060
 */
void __msl_ladd(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000060
 */
void __msl_add(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	00015C
 */
void lldiv(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	........
 * Size:	000058
 */
void ldiv(void)
{
	// UNUSED FUNCTION
}

/*
 * --INFO--
 * Address:	800C60F8
 * Size:	000058
 */
/*div_t div(s32 __numer, s32 __denom)
{
}*/

/*
 * --INFO--
 * Address:	........
 * Size:	00002C
 */
void llabs(void)
{
	// UNUSED FUNCTION
}


int abs(int __x)
{
	return (__x >> 0x1f ^ __x) - (__x >> 0x1f);
}

//might be llabs
long labs(long __x)
{
	return (__x >> 0x1f ^ __x) - (__x >> 0x1f);
}
