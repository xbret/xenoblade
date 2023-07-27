#ifndef METROTRK_DSVERSIONS
#define METROTRK_DSVERSIONS

#include "PowerPC_EABI_Support/MetroTRK/dstypes.h"

typedef struct DSVersions{
	ui8 kernelMajor;
	ui8 kernelMinor;
	ui8 protocolMajor;
	ui8 protocolMinor;
} DSVersions;

#endif
