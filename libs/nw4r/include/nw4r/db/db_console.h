#ifndef NW4R_DB_CONSOLE_H
#define NW4R_DB_CONSOLE_H

#include "types_nw4r.h"
#include "ut_TextWriterBase.h"
#include "ut_CharWriter.h"

namespace nw4r
{
    namespace db
    {
        namespace detail
        {
            struct ConsoleHead
            {
                u8* textBuf;                      // at 0x0
                u16 width;                        // at 0x4
                u16 height;                       // at 0x6
                u16 priority;                     // at 0x8
                u16 attr;                         // at 0xA
                u16 printTop;                     // at 0xC
                u16 printXPos;                    // at 0xE
                u16 ringTop;                      // at 0x10
                long ringTopLineCnt;              // at 0x14
                long viewTopLine;                 // at 0x18
                s16 viewPosX;                     // at 0x1C
                s16 viewPosY;                     // at 0x1E
                u16 viewLines;                    // at 0x20
                bool isVisible;                   // at 0x22
                u8 padding_[1];                   // at 0x23
                ut::TextWriterBase<char>* writer; // at 0x24
                ConsoleHead* next;                // at 0x28
            };
        }

        enum ConsoleOutputType {
            CONSOLE_OUTPUT_NONE,
            CONSOLE_OUTPUT_DISPLAY,
            CONSOLE_OUTPUT_TERMINAL,
            CONSOLE_OUTPUT_ALL,
        };

        typedef void (*VisitStringCallback)(detail::ConsoleHead* console, u8* r4, long r5, u32 r6);

        detail::ConsoleHead* Console_Create(void* buffer, u16 width, u16 height, u16 viewHeight, u16 priority, u16 attr);
        void Console_Destroy(detail::ConsoleHead* console);
        void Console_Clear(detail::ConsoleHead* console);
        void Console_Draw(detail::ConsoleHead* console, ut::TextWriterBase<char>& writer);
        void Console_DrawDirect(detail::ConsoleHead* console);
        void Console_DrawAll();
        void Console_DrawDirectAll();
        void Console_VFPrintf(ConsoleOutputType type, detail::ConsoleHead* console, const char* format, va_list* vlist);
        void Console_FPrintf(ConsoleOutputType type, detail::ConsoleHead* console, const char * format);
        void Console_Printf(detail::ConsoleHead* console, const char* format, ...);
        void Console_PrintfD(detail::ConsoleHead* console, const char* format, ...);
        void Console_PrintfT(detail::ConsoleHead* console, const char* format, ...);
        u16 Console_ChangePriority(detail::ConsoleHead* console, u16 r4);
        void Console_VisitString(detail::ConsoleHead* console, VisitStringCallback visitor);
        long Console_GetTotalLines(detail::ConsoleHead* console);

        long Console_SetViewBaseLine(detail::ConsoleHead* console, long line);
        u16 Console_GetViewHeight(detail::ConsoleHead* console);

        //Stubbed in final
        void Console_VPrintf(detail::ConsoleHead* console, const char* format, __va_list_struct* vlist)
        {
        }

        u8 Console_SetVisible(detail::ConsoleHead* console, bool isVisible)
        {
            u8 before = console->isVisible;
            console->isVisible = isVisible;
            return before;
        }

        long Console_ShowLatestLine(detail::ConsoleHead* console)
        {
            long baseLine =  Console_GetTotalLines(console) - Console_GetViewHeight(console);
            
            if(baseLine < 0){
                baseLine = 0;
            }

            Console_SetViewBaseLine(console, baseLine);

            return baseLine;
        }

        long Console_SetViewBaseLine(detail::ConsoleHead* console, long line)
        {
            long before = console->viewTopLine;
            console->viewTopLine = line;
            return before;
        }

        u16 Console_GetViewHeight(detail::ConsoleHead* console)
        {
            return console->viewLines;
        }
    }
}

#endif
