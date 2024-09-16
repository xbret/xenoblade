#pragma ipa file // TODO: REMOVE AFTER REFACTOR

#include "db_assert.h"
#include "db_console.h"
#include <revolution/OS.h>
#include <revolution/BASE.h>
#include <revolution/VI.h>

namespace nw4r
{
    namespace db
    {
        using namespace detail;

        static u32 sWarningTime;
        static ConsoleHead* sAssertionConsole;
        static bool sDispWarningAuto = true;

        static void Assertion_Printf_(const char* fmt, ...){
            va_list vlist;
            va_start(vlist, fmt);

            if(sAssertionConsole == nullptr){
                OSVReport(fmt, vlist);
            }else{
                //Does nothing in final version
                Console_VPrintf(sAssertionConsole, fmt, vlist);
            }
        }

        //Stubbed in final
        static bool ShowMapInfoSubroutine_(u32 address, u8 preCRFlag)
        {
            u8 strBuf[260];
            bool result = false;

            return result;
        }

        static void ShowStack_(u32 sp) DECOMP_DONT_INLINE
        {
            Assertion_Printf_("-------------------------------- TRACE\n");
            Assertion_Printf_("Address:   BackChain   LR save\n");

            u32* p = (u32*)sp;

            for(u32 i = 0; i < 16; i++, p = (u32*)*p){
                if(p == nullptr || p == (u32*)0xFFFFFFFF || !((u32)p & 0x80000000)) break;

                Assertion_Printf_("%08X:  %08X    %08X ", p, p[0], p[1]);

                //Try printing map information for the current address if the map file exists
                //The above function does nothing in final, so this will always be true
                if(!ShowMapInfoSubroutine_(p[1], false)){
                    Assertion_Printf_("\n");
                }
            }
        }

        void VPanic(const char* file, int line, const char* fmt, __va_list_struct* vlist, bool halt)
        {
            register u32 stackPointer;

            //Get the stack pointer
            //This feels fake but I can't think of how else it would've been done
            asm{
                lwz stackPointer, 0(r1)
            }

            OSDisableInterrupts();
            OSDisableScheduler();
            VISetPreRetraceCallback(nullptr);
            VISetPostRetraceCallback(nullptr);

            ShowStack_(stackPointer);

            if(sAssertionConsole != nullptr){
                Console_Printf(sAssertionConsole, "%s:%d Panic:", file, line);
                Console_VPrintf(sAssertionConsole, fmt, vlist);
                Console_Printf(sAssertionConsole, "\n");
                Console_ShowLatestLine(sAssertionConsole);
                Console_SetVisible(sAssertionConsole, true);
            }else{
                OSReport("%s:%d Panic:", file, line);
                OSVReport(fmt, vlist);
                OSReport("\n");
            }

            if(halt) PPCHalt();

        }

        void Panic(const char* file, int line, const char* fmt, ...)
        {
            va_list vlist;
            va_start(vlist, fmt);
            VPanic(file, line, fmt, vlist, true);
            PPCHalt(); //PPCHalt is called in VPanic, so this never gets called.
        }
        
        void VWarning(const char* file, int line, const char* fmt, __va_list_struct* vlist)
        {
            if(sAssertionConsole != nullptr){
                Console_Printf(sAssertionConsole, "%s:%d Warning:", file, line);
                Console_VPrintf(sAssertionConsole, fmt, vlist);
                Console_Printf(sAssertionConsole, "\n");
                Console_ShowLatestLine(sAssertionConsole);
                if(sDispWarningAuto){
                    Assertion_ShowConsole(sWarningTime);
                }
            }else{
                OSReport("%s:%d Warning:", file, line);
                OSVReport(fmt, vlist);
                OSReport("\n");
            }
        }

        void Warning(const char* file, int line, const char* fmt, ...)
        {
            va_list vlist;
            va_start(vlist, fmt);

            VWarning(file, line, fmt, vlist);
        }

        //unused
        void Log(const char* fmt)
        {
            va_list vlist;
        }

        //unused
        ConsoleHead* Assertion_SetConsole(ConsoleHead* console)
        {
            ConsoleHead* before = sAssertionConsole;
            sAssertionConsole = console;
            return before;
        }

        //unused
        ConsoleHead* Assertion_GetConsole()
        {
            return sAssertionConsole;
        }

        static OSAlarm& GetWarningAlarm_();
        static void WarningAlarmFunc_(OSAlarm* alarm, OSContext* context);

        void Assertion_ShowConsole(u32 time)
        {
            if(sAssertionConsole != nullptr){
                OSAlarm& alarm = GetWarningAlarm_();
                OSCancelAlarm(&alarm);
                Console_SetVisible(sAssertionConsole, true);
                if(time != 0){
                    OSSetAlarm(&alarm, time, WarningAlarmFunc_);
                }
            }
        }

        //unused
        void Assertion_HideConsole()
        {
            //OSAlarm& alarm;
        }

        //unused
        void Assertion_SetWarningTime(u32 time)
        {
        }

        //unused
        bool Assertion_SetAutoWarning(bool enable)
        {
           // OSAlarm& alarm;
            BOOL enabledIntr;
            bool before = sDispWarningAuto;

            sDispWarningAuto = enable;
            return before;
        }

        static OSAlarm& GetWarningAlarm_()
        {
            static OSAlarm sWarningAlarm;
            static bool sInitializedAlarm;

            if(!sInitializedAlarm){
                OSCreateAlarm(&sWarningAlarm);
                sInitializedAlarm = true;
            }

            return sWarningAlarm;
        }

        static void WarningAlarmFunc_(OSAlarm* alarm, OSContext* context)
        {
            if(sAssertionConsole != nullptr)
            {
                Console_SetVisible(sAssertionConsole, false);
            }
        }
    }
}
