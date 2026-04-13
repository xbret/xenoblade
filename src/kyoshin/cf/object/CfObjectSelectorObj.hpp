#pragma once

namespace cf{

    class CfObjectSelectorObj{
    public:        
        virtual ~CfObjectSelectorObj();

        static void create();
        static void destroy();

    private:
        static CfObjectSelectorObj* spInstance;
        
        char unk0000[0xC188 - 0x0000]; //0x0000
    }; //size = 0xC188

} //namespace cf
