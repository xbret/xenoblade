#include "monolib/core.hpp"
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

//Updates the elapsed time for the stopwatch entry matching the given name.
void CStopwatchUtil::updateElapsedTime(const char* pStr){
    StopwatchEntry* entry = findEntry(pStr);

    if(entry != nullptr){
        int ticks = OS_TICKS_DELTA(OSGetTime(), entry->mTime);
        //Why is it limited to 1 second?
        u32 elapsedUsec = OS_TICKS_TO_USEC(ticks) % 1000000;
        entry->unk20 = elapsedUsec/(1000000.0f/60.0f);
    }
}

/* Gets the elapsed time for the stopwatch entry matching the given name,
and also removes it from the list. */
float CStopwatchUtil::getElapsedTime(const char* pStr){
    StopwatchEntry* entry = findEntry(pStr);

    if(entry == nullptr) return 0;
    entry->mFlags = 0;
    return entry->unk20;
}
