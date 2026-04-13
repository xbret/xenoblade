#pragma once

namespace cf{

    class IFlagEvent{
    public:
        virtual ~IFlagEvent();

        virtual void FlagEvent1(int arg1, int arg2, int arg3);
        virtual void OnFileEvent(void* arg1);
        virtual void FlagEvent3(int arg1, int arg2, int arg3);
    };

} //namespace cf
