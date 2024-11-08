#ifndef NW4HBM_LYT_ARC_RESOURCE_ACCESSOR_H
#define NW4HBM_LYT_ARC_RESOURCE_ACCESSOR_H
#include <nw4hbm/types_nw4hbm.h>
#include <nw4hbm/ut/ut_LinkList.h>
#include <nw4hbm/ut/ut_Font.h>
#include <nw4hbm/lyt/lyt_resourceAccessor.h>
#include <revolution/ARC/arc.h>
#include <string.h>

#define FONTNAMEBUF_MAX 127

namespace nw4hbm
{
    namespace lyt
    {
        class FontRefLink
        {
        public:
            FontRefLink();
            ~FontRefLink() {}

            void Set(const char *, ut::Font *);

            ut::Font * GetFont() const
            {
                return mFont;
            }

            const char * GetFontName() const
            {
                return mFontName;
            }

        private:
            ut::LinkListNode mNode; // at 0x0
            char mFontName[FONTNAMEBUF_MAX]; // at 0x8
            ut::Font *mFont; // at 0x88
        };

        class ArcResourceAccessor : public ResourceAccessor
        {
        public:
            ArcResourceAccessor();
            virtual ~ArcResourceAccessor() {} // at 0x8
            virtual UNKTYPE * GetResource(u32, const char *, u32 *); // at 0xC
            virtual ut::Font * GetFont(const char *); // at 0x10
            
            bool Attach(void *, const char *);
            void * Detach();

            bool IsAttached() const { return (mArchive != NULL); }

            void RegistFont(FontRefLink *pLink)
            {
                mRefList.PushBack(pLink);
            }
            void UnregistFont(FontRefLink *pLink)
            {
                mRefList.Erase(pLink);
            }

        private:
            ARCHandle mHandle; // at 0x4
            void *mArchive; // at 0x8
            ut::LinkList<FontRefLink, 0> mRefList; // at 0x24
            char mRootDir[FONTNAMEBUF_MAX]; // at 0x30
        };

        namespace detail
        {
            static ut::Font * FindFont(ut::LinkList<FontRefLink, 0> *pList, const char *name)
            {
                ut::LinkList<FontRefLink, 0>::Iterator it = pList->GetBeginIter();
                for (; it != pList->GetEndIter(); it++)
                {
                    if (strcmp(name, it->GetFontName()) == 0) return it->GetFont();
                }

                return NULL;
            }
        }
    }
}

#endif
