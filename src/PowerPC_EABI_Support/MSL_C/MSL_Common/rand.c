#include "PowerPC_EABI_Support/MSL_C/MSL_Common/rand.h"

static u32 next = 1;

//unused
void srand(u32 seed)
{
    next = seed;
}

int rand()
{
	next = next * 1103515245 + 12345;
	return ((next >> 16) & 0x7fff);
}
