#ifndef MW_CRITICAL_SECTION_GC
#define MW_CRITICAL_SECTION_GC

//MWCriticalSection_gc
void MWInitializeCriticalSection(unsigned int* section);
void MWEnterCriticalSection(unsigned int* section);
void MWExitCriticalSection(unsigned int* section);
void MWTerminateCriticalSection(unsigned int* section);

#endif
