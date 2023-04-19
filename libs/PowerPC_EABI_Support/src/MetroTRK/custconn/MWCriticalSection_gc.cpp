#include "types.h"

extern "C" {
bool OSRestoreInterrupts(uint);
uint OSDisableInterrupts();


void MWInitializeCriticalSection(uint* section) { }

void MWEnterCriticalSection(uint* section) { *section = OSDisableInterrupts(); }

void MWExitCriticalSection(uint* section) { OSRestoreInterrupts(*section); }

//unused
void MWTerminateCriticalSection(uint* section){ }

}
