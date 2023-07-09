#include "revolution/BASE.h"
#include "revolution/DVD.h"
#include "revolution/OS.h"

static BOOL OnReset(u32 pass, u32 event);
static void DecrementerExceptionHandler(u8 type, OSContext* ctx);

static OSAlarmQueue AlarmQueue;
static OSShutdownFunctionInfo ShutdownFunctionInfo = {OnReset, 0xFFFFFFFF, 0,
                                                      0};

static void SetTimer(const OSAlarm* alarm) {
    const s64 timeLeft = alarm->end - __OSGetSystemTime();

    if (timeLeft < 0) {
        PPCMtdec(0);
    } else if (timeLeft < 0x80000000) {
        PPCMtdec(timeLeft);
    } else {
        PPCMtdec(0x7FFFFFFF);
    }
}

//unused
void OSCheckAlarmQueue(){
}

void __OSInitAlarm(void) {
    if (__OSGetExceptionHandler(OS_ERR_DECREMENTER) !=
        DecrementerExceptionHandler) {
        AlarmQueue.head = AlarmQueue.tail = NULL;
        __OSSetExceptionHandler(OS_ERR_DECREMENTER,
                                DecrementerExceptionHandler);
        OSRegisterShutdownFunction(&ShutdownFunctionInfo);
    }
}

void OSCreateAlarm(OSAlarm* alarm) {
    alarm->handler = NULL;
    alarm->tag = 0;
}

static void InsertAlarm(OSAlarm* alarm, s64 end, OSAlarmHandler handler) {
    OSAlarm* iter;
    OSAlarm* prev;

    // Calculate periodic alarm end time (caller makes 'end' 0)
    if (alarm->period > 0) {
        const s64 time = __OSGetSystemTime();
        end = alarm->start;

        if (alarm->start < time) {
            const s64 periodLeft = ((time - alarm->start) / alarm->period);
            end += alarm->period * (periodLeft + 1);
        }
    }

    alarm->handler = handler;
    alarm->end = end;

    // Find position to insert alarm (sorted ascending by end time)
    for (iter = AlarmQueue.head; iter != NULL; iter = iter->next) {
        if (iter->end <= end) {
            continue;
        }

        alarm->prev = iter->prev;
        iter->prev = alarm;
        alarm->next = iter;

        prev = alarm->prev;
        if (prev != NULL) {
            prev->next = alarm;
        } else {
            AlarmQueue.head = alarm;
            SetTimer(alarm);
        }

        return;
    }

    alarm->next = NULL;
    prev = AlarmQueue.tail;
    AlarmQueue.tail = alarm;
    alarm->prev = prev;

    if (prev != NULL) {
        prev->next = alarm;
    } else {
        AlarmQueue.tail = alarm;
        AlarmQueue.head = alarm;
        SetTimer(alarm);
    }
}

void OSSetAlarm(OSAlarm* alarm, s64 tick, OSAlarmHandler handler) {
    const BOOL enabled = OSDisableInterrupts();

    alarm->period = 0;
    InsertAlarm(alarm, __OSGetSystemTime() + tick, handler);

    OSRestoreInterrupts(enabled);
}

//unused
void OSSetAbsAlarm(){
}

void OSSetPeriodicAlarm(OSAlarm* alarm, s64 tick, s64 period,
                        OSAlarmHandler handler) {
    const BOOL enabled = OSDisableInterrupts();

    alarm->period = period;
    alarm->start = __OSTimeToSystemTime(tick);
    InsertAlarm(alarm, 0, handler);

    OSRestoreInterrupts(enabled);
}

void OSCancelAlarm(OSAlarm* alarm) {
    OSAlarm* next;

    const BOOL enabled = OSDisableInterrupts();

    if (alarm->handler == NULL) {
        OSRestoreInterrupts(enabled);
        return;
    }

    next = alarm->next;
    if (next == NULL) {
        AlarmQueue.tail = alarm->prev;
    } else {
        next->prev = alarm->prev;
    }

    if (alarm->prev != NULL) {
        alarm->prev->next = next;
    } else {
        AlarmQueue.head = next;
        if (next != NULL) {
            SetTimer(next);
        }
    }

    alarm->handler = NULL;

    OSRestoreInterrupts(enabled);
}

static void DecrementerExceptionCallback(u8 type, OSContext* ctx) {
#pragma unused(type)

    OSAlarmHandler handler;
    OSContext tempCtx;
    OSAlarm* alarm;
    OSAlarm* next;

    const s64 time = __OSGetSystemTime();
    alarm = AlarmQueue.head;

    if (alarm == NULL) {
        OSLoadContext(ctx);
    }

    if (time < alarm->end) {
        SetTimer(alarm);
        OSLoadContext(ctx);
    }

    next = alarm->next;
    AlarmQueue.head = next;
    if (next == NULL) {
        AlarmQueue.tail = NULL;
    } else {
        next->prev = NULL;
    }

    handler = alarm->handler;
    alarm->handler = NULL;

    if (alarm->period > 0) {
        InsertAlarm(alarm, 0, handler);
    }

    if (AlarmQueue.head != NULL) {
        SetTimer(AlarmQueue.head);
    }

    OSDisableScheduler();
    OSClearContext(&tempCtx);
    OSSetCurrentContext(&tempCtx);
    handler(alarm, ctx);
    OSClearContext(&tempCtx);
    OSSetCurrentContext(ctx);
    OSEnableScheduler();

    __OSReschedule();
    OSLoadContext(ctx);
}

static asm void DecrementerExceptionHandler(register u8 type,
                                            register OSContext* ctx) {
    nofralloc

    stw r0, ctx->gprs[0]
    stw r1, ctx->gprs[1]
    stw r2, ctx->gprs[2]
    stmw r6, ctx->gprs[6]

    mfgqr1 r0
    stw r0, ctx->gqrs[1]
    mfgqr2 r0
    stw r0, ctx->gqrs[2]
    mfgqr3 r0
    stw r0, ctx->gqrs[3]
    mfgqr4 r0
    stw r0, ctx->gqrs[4]
    mfgqr5 r0
    stw r0, ctx->gqrs[5]
    mfgqr6 r0
    stw r0, ctx->gqrs[6]
    mfgqr7 r0
    stw r0, ctx->gqrs[7]

    stwu r1, -8(r1)
    b DecrementerExceptionCallback
    }

void OSSetAlarmTag(OSAlarm* alarm, u32 tag) { alarm->tag = tag; }

//unused
void OSCancelAlarms(){
}

static BOOL OnReset(u32 pass, u32 event) {
    OSAlarm* iter;
    OSAlarm* next;

    if (pass != OS_SD_PASS_FIRST) {
        iter = AlarmQueue.head;
        next = (iter != NULL) ? iter->next : NULL;

        while (iter != NULL) {
            if (!__DVDTestAlarm(iter)) {
                OSCancelAlarm(iter);
            }

            iter = next;
            next = (next != NULL) ? next->next : NULL;
        }
    }

    return TRUE;
}

void OSSetAlarmUserData(OSAlarm* alarm, void* userData) {
    alarm->userData = userData;
}

void* OSGetAlarmUserData(const OSAlarm* alarm) { return alarm->userData; }

//unused
void __OSSetInternalAlarmUserData(OSAlarm* alarm, void* userData){
	alarm->userData = userData;
	alarm->tag = -1;
}

void __OSCancelInternalAlarms(OSThread* thread) {
    BOOL enabled = OSDisableInterrupts();
    OSAlarm* head = AlarmQueue.head;
    OSAlarm* temp;
    
    if (head != NULL) temp = head->next;
    else temp = NULL;

    while (head != NULL) {
        if (head->tag == -1 && (OSThread*)head->userData == thread) {
            OSCancelAlarm(head);
        }
        
        head = temp;
        if (temp != NULL) temp = temp->next;
        else temp = NULL;
    }
    
    OSRestoreInterrupts(enabled);
}
