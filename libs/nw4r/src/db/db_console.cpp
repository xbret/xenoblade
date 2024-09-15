#include "db_console.h"
#include <revolution/OS.h>

namespace nw4r
{
    namespace db
    {
        using namespace detail;

        //unused
        static OSMutex sMutex;

        //unused
        static void TerminateLine_(ConsoleHead* console)
        {
        }

        //unused
        static u8* GetTextPtr_(ConsoleHead* console, u16 line, u16 xPos)
        {
            return 0;
        }

        //unused
        static u8* NextLine_(ConsoleHead* console)
        {
            return 0;
        }

        //unused
        static u8* PutTab_(ConsoleHead* console, u8* dstPtr)
        {
            return 0;
        }

        //unused
        static u32 GetTabSize_(ConsoleHead* console)
        {
            return 0;
        }

        //unused
        static u32 PutChar_(ConsoleHead* console, const u8* str, u8* dstPtr)
        {
            return 0;
        }

        //unused
        static u32 CodeWidth_(const u8* p)
        {
            return 0;
        }

        //unused
        static ConsoleHead* SearchConsoleFromListByPriority_(u16 r3)
        {
            return nullptr;
        }

        //unused
        static void AppendConsoleToList_(ConsoleHead* console)
        {
        }

        //unused
        static void RemoveConsoleFromList_(ConsoleHead* console)
        {
        }

        //unused
        ConsoleHead* Console_Create(void* buffer, u16 width, u16 height, u16 viewHeight, u16 priority, u16 attr)
        {
        }

        //unused
        void Console_Destroy(ConsoleHead* console)
        {
        }

        //unused
        void Console_Clear(ConsoleHead* console)
        {
        }

        //unused
        static void UnlockMutex_(OSMutex* mutex)
        {
        }

        //unused
        static bool TryLockMutex_(OSMutex* mutex)
        {
            return false;
        }

        //unused
        static void DoDrawString_(ConsoleHead* console, u32 printLine, const u8* str, ut::TextWriterBase<char>* writer)
        {
        }

        //unused
        static void DoDrawConsole_(ConsoleHead* console, ut::TextWriterBase<char>* writer)
        {
        }

        static u16 GetRingUsedLines_(ConsoleHead* console);

        static u16 GetActiveLines_(ConsoleHead* console)
        {
            u16 lines = GetRingUsedLines_(console);
            if(console->printXPos != 0){
                lines++;
            }

            return lines;
        }

        static u16 GetRingUsedLines_(ConsoleHead* console)
        {
            long lines = console->printTop - console->ringTop;
            if(lines < 0){
                lines += console->height;
            }
            return (u16)lines;
        }

        //unused
        void Console_Draw(ConsoleHead* console, ut::TextWriterBase<char>& writer)
        {
        }

        //unused
        void Console_DrawDirect(ConsoleHead* console)
        {
        }

        //unused
        void Console_DrawAll()
        {
        }

        //unused
        void Console_DrawDirectAll()
        {
        }

        //unused
        static void PrintToBuffer_(ConsoleHead* console, const u8* str)
        {
        }

        //unused
        static u8* SearchEndOfLine_(const u8* str)
        {
            return 0;
        }

        //unused
        static void Console_PrintString_(ConsoleOutputType type, ConsoleHead* console, const u8* str)
        {
        }

        //unused
        void Console_VFPrintf(ConsoleOutputType type, ConsoleHead* console, const char* format, __va_list_struct* vlist)
        {
            static u8 sStrBuf[1024];
        }

        //unused
        void Console_FPrintf(ConsoleOutputType type, ConsoleHead* console, const char* format)
        {
        }

        void Console_Printf(ConsoleHead* console, const char* format, ...)
        {
            va_list vlist;
            va_start(vlist, format);
        }

        //unused
        void Console_PrintfD(ConsoleHead* console, const char* format, ...)
        {
        }

        //unused
        void Console_PrintfT(ConsoleHead* console, const char* format, ...)
        {
        }

        //unused
        u16 Console_ChangePriority(ConsoleHead* console, u16 r4)
        {
            return 0;
        }

        //unused
        void Console_VisitString(ConsoleHead* console, VisitStringCallback visitor)
        {
        }

        long Console_GetTotalLines(ConsoleHead* console)
        {
            BOOL enabled = OSDisableInterrupts();

            long count = GetActiveLines_(console) + console->ringTopLineCnt;

            OSRestoreInterrupts(enabled);

            return count;
        }
    }
}
