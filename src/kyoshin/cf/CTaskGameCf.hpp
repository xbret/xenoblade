#pragma once

#include <types.h>

#include "monolib/util/FixStr.hpp"
#include "monolib/work.hpp"

class CTaskGame;

namespace cf{
    class CTaskGameCf : public CTTask<CTaskGameCf>{
        static CTaskGameCf* spInstance;

    public:
        CTaskGameCf(CProcess* taskGame, BOOL arg2);
        virtual ~CTaskGameCf();

        static CTaskGameCf* getInstance();
        static CTaskGameCf* create(CProcess* pParent, int arg2);

        virtual void Init() override;
        virtual void Term() override;
        virtual void Draw() override;

        bool chkUnk54(u32 bit){
            return unk_54 & (1 << bit);
        }

        void setUnk54(u32 bit, bool state){
            if(state){
                unk_54 |= (1 << bit);
            } else {
                unk_54 &= ~(1 << bit);
            }
        }

        void func_800442DC();
        void func_8004431C();
        void func_8004433C();
        void func_8004435C(s16 arg1, s16 arg2, ml::FixStr<32>& arg3, s16 arg4);

        void func_80044424();
        void func_80044444();
        void func_80044480();
        void func_800444A0();
        void func_800444DC();
        void func_800444FC();
        void func_8004451C();
        void func_800447B4();
        void func_800448DC();
        void func_80044934();
        void func_8004499C();

        //0x0-0x54: CTTask
        /* 0x54 */ u32 unk_54;
        /* 0x58 */ CTaskGame* pTaskGame;
        /* 0x5C */ u16 unk_5C;
        /* 0x5E */ u16 unk_5E;
        /* 0x60 */ u16 unk_60;
        /* 0x62 */ u16 unk_62;
        /* 0x64 */ ml::FixStr<32> unk_64;
        /* 0x88 */ u16 unk_88;
        /* 0x8C */ s32 unk_8C;
    }; //size = 0x90

} //namespace cf
