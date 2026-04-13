#pragma once

namespace cf{

    class CfObjectSelectorObj{
    public:
        static CfObjectSelectorObj* spInstance;
        virtual ~CfObjectSelectorObj();

        static void create();

        static void destroy();

    private:
        /* 0x0000 */ char unk0000[0xC188 - 0x0000];

    }; //size = 0xC188

} //namespace cf
