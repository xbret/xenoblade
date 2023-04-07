#include "types.h"

extern "C" {
bool OSRestoreInterrupts(uint);
uint OSDisableInterrupts();


void MWInitializeCriticalSection() { }

void MWEnterCriticalSection(uint* section) { *section = OSDisableInterrupts(); }

void MWExitCriticalSection(uint* section) { OSRestoreInterrupts(*section); }

//unused
void MWTerminateCriticalSection()
{
}

}
