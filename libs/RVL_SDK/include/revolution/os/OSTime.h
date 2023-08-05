#ifndef RVL_SDK_OS_TIME_H
#define RVL_SDK_OS_TIME_H
#include "revolution/os/OSHardware.h"
#include "types.h"
#ifdef __cplusplus
extern "C" {
#endif

// Time base frequency = 1/4 bus clock
#define OS_TIME_SPEED (OS_BUS_CLOCK_SPEED / 4)

// OS time -> Real time
#define OSTicksToSeconds(x) ((x) / (OS_TIME_SPEED))
#define OSTicksToMilliseconds(x) ((x) / (OS_TIME_SPEED / 1000))
#define OSTicksToMicroseconds(x) (((x)*8) / (OS_TIME_SPEED / 125000))
#define OSTicksToNanoseconds(x) (((x)*8000) / (OS_TIME_SPEED / 125000))

// Real time -> OS time
#define OSSecondsToTicks(x) ((x) * (OS_TIME_SPEED))
#define OSMillisecondsToTicks(x) ((x) * (OS_TIME_SPEED / 1000))
#define OSMicrosecondsToTicks(x) ((x) * (OS_TIME_SPEED / 125000) / 8)
#define OSNanosecondsToTicks(x) ((x) * (OS_TIME_SPEED / 125000) / 8000)

typedef struct OSCalendarTime {
    s32 sec;       // at 0x0
    s32 min;       // at 0x4
    s32 hour;      // at 0x8
    s32 month_day; // at 0xC
    s32 month;     // at 0x10
    s32 year;      // at 0x14
    s32 week_day;  // at 0x18
    s32 year_day;  // at 0x1C
    s32 msec;      // at 0x20
    s32 usec;      // at 0x24
} OSCalendarTime;

s64 OSGetTime(void);
s32 OSGetTick(void);

s64 __OSGetSystemTime(void);
s64 __OSTimeToSystemTime(s64 time);

void OSTicksToCalendarTime(s64 time, OSCalendarTime* cal);
s64 OSCalendarTimeToTicks(const OSCalendarTime* cal);

#ifdef __cplusplus
}
#endif
#endif
