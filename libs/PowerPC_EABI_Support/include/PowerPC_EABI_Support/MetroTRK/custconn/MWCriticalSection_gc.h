#ifndef MW_CRITICAL_SECTION_GC
#define MW_CRITICAL_SECTION_GC

//MWCriticalSection_gc
void MWInitializeCriticalSection(uint* section);
void MWEnterCriticalSection(uint* section);
void MWExitCriticalSection(uint* section);
void MWTerminateCriticalSection(uint* section);

#endif
