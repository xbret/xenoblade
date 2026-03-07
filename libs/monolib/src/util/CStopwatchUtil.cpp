#include "monolib/core.hpp"
#include "monolib/device.hpp"
#include <revolution/OS.h>
#include <cstring>

CStopwatchUtil::StopwatchEntry CStopwatchUtil::sEntries[MAX_ENTRIES];

void CStopwatchUtil::initialize(){
    //Mark each entry as empty
    for(int i = 0; i < MAX_ENTRIES; i++){
        sEntries[i].mFlags = 0;
    }
}

CStopwatchUtil::StopwatchEntry* CStopwatchUtil::findEntry(const char* pStr){
    for(int i = 0; i < MAX_ENTRIES; i++){
        if(((sEntries[i].mFlags & StopwatchEntry::FLAGS_OCCUPIED) != 0) && std::strcmp(pStr, sEntries[i].mString) == 0){
            return &sEntries[i];
        }
    }

    return nullptr;
}

CStopwatchUtil::StopwatchEntry* CStopwatchUtil::findEmptyEntry(){
    for(int i = 0; i < MAX_ENTRIES; i++){
        if((sEntries[i].mFlags & StopwatchEntry::FLAGS_OCCUPIED) == 0){
            return &sEntries[i];
        }
    }

    return nullptr;
}

//Adds a new stopwatch entry to the list, and starts it.
void CStopwatchUtil::entry(const char* pStr){
    //Look for a preexisting matching entry first
    StopwatchEntry* entry = findEntry(pStr);
    //If no matching entry was found, get the first empty one
    if(entry == nullptr) entry = findEmptyEntry();

    /* If an available entry was found, copy the given name and
    the current time into it */
    if(entry != nullptr){
        entry->mFlags |= StopwatchEntry::FLAGS_OCCUPIED;
        entry->mTime = OSGetTime();
        std::strcpy(entry->mString, pStr);
    }
}

/* Updates the total cost time for the stopwatch entry matching the given name.
Note: This function expects that the stopwatch is created at the start of the frame,
then for this function to be run at the end. */
void CStopwatchUtil::updateCostTime(const char* pStr){
    StopwatchEntry* entry = findEntry(pStr);

    if(entry != nullptr){
        int ticks = OS_TICKS_DELTA(OSGetTime(), entry->mTime);
        /* Why is it limited to 1 second? Also a bit strange they don't just directly convert
        down to seconds. Maybe they used to store microseconds somewhere? */
        u32 elapsedUsec = OS_TICKS_TO_USEC(ticks) % 1000000;
        /* Divide by 1000000 to get seconds, and multiply by the system framerate to get
        the approximate total time needed for one second. */
        entry->mCostTime = elapsedUsec/(1000000.0f/CDeviceVI::NTSC_VPS);
    }
}

/* Gets the cost time for the stopwatch entry matching the given name,
and also removes it from the list. */
float CStopwatchUtil::getCostTime(const char* pStr){
    StopwatchEntry* entry = findEntry(pStr);

    if(entry == nullptr) return 0;
    //Disable this entry, and return the cost time
    entry->mFlags = 0;
    return entry->mCostTime;
}
