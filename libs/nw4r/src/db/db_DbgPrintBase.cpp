#include "db_DbgPrintBase.h"

namespace nw4r
{
    namespace db
    {
        //Dummy function to force SetTextColor to be generated here
        void dummy(ut::CharWriter* pCharWriter){
            ut::Color color;
            pCharWriter->SetTextColor(color);
        }
    }
}
