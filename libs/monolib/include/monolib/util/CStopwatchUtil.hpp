#pragma once

#include <types.h>

class CStopwatchUtil {
    struct StopwatchEntry{
        enum Flags{
            FLAGS_OCCUPIED = (1 << 0)
        };

        u8 mFlags; //0x0
        char mString[23]; //0x1
        s64 mTime; //0x18
        float unk20; //0x20
        u8 unk24[0x28 - 0x24];
    };

public:
    static void initialize();
    static void entry(const char* pStr);
    static void updateElapsedTime(const char* pStr);
    static float getElapsedTime(const char* pStr);

    static inline StopwatchEntry* findEntry(const char* pStr);
    static inline StopwatchEntry* findEmptyEntry();

private:
    static const int MAX_ENTRIES = 16;

    static StopwatchEntry sEntries[MAX_ENTRIES];
};
