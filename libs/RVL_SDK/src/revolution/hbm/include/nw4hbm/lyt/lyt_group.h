#ifndef NW4HBM_LYT_GROUP_H
#define NW4HBM_LYT_GROUP_H
#include <nw4hbm/types_nw4hbm.h>
#include <nw4hbm/lyt/lyt_pane.h>
#include <nw4hbm/lyt/lyt_common.h>
#include <nw4hbm/ut/ut_LinkList.h>

namespace nw4hbm
{
    namespace lyt
    {
        namespace res
        {
            struct Group
            {
                char UNK_0x0[0x8];
                char mName[NW4R_RES_NAME_SIZE]; // at 0x8
                u16 SHORT_0x18;
            };
        }

        namespace detail
        {
            struct PaneLink
            {
                ut::LinkListNode mNode; // at 0x0
                Pane *PANE_0x8;
            };
        }

        struct Group
        {
            Group(const res::Group *, Pane *);
            virtual ~Group();
            void AppendPane(Pane *);
            void Init();

            ut::LinkListNode mNode; // at 0x4
            ut::LinkList<detail::PaneLink, 0> mPaneList; // at 0xC
            char mName[NW4R_RES_NAME_SIZE]; // at 0x18
            bool mIsUserAllocated; // at 0x29
        };

        struct GroupContainer
        {
            ~GroupContainer();
            void AppendGroup(Group *);
            Group * FindGroupByName(const char *);

            ut::LinkList<Group, 4> mGroups; // at 0x4
        };
    }
}

#endif
