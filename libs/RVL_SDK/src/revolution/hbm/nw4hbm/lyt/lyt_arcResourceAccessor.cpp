#pragma ipa file
#include <nw4hbm/lyt/lyt_arcResourceAccessor.h>

#include <revolution/ARC/arc.h>

#include <cstring>

namespace
{
    s32 FindNameResource(ARCHandle *pHandle, const char *name)
    {
        s32 entrynum = -1;
        ARCDir dir;
        ARCDirEntry entry;
        
        ARCOpenDir(pHandle, ".", &dir);
        while (ARCReadDir(&dir, &entry))
        {
            if (entry.isDir)
            {
                ARCChangeDir(pHandle, entry.name);
                entrynum = FindNameResource(pHandle, name);
                ARCChangeDir(pHandle, "..");
                if (entrynum != -1) break;
            }
            else
            {
                if (std::stricmp(name, entry.name) == 0)
                {
                    entrynum = entry.entryNum;
                    break;
                }
            }
        }

        ARCCloseDir(&dir);
        return entrynum;
    }

    UNKTYPE * GetResourceSub(ARCHandle *pHandle, const char *rootDir, u32 filetype, const char *filename, u32 *pSize)
    {
        s32 entrynum = -1;

        if (ARCConvertPathToEntrynum(pHandle, rootDir) != -1 && ARCChangeDir(pHandle, rootDir))
        {
            // Usually 'timg', RP checks for 'font'
            if (filetype == 0)
            {
                entrynum = FindNameResource(pHandle, filename);
            }
            else
            {
                char path[5];
                path[0] = filetype >> 24;
                path[1] = filetype >> 16;
                path[2] = filetype >> 8;
                path[3] = filetype >> 0;
                path[4] = '\0';

                if (ARCConvertPathToEntrynum(pHandle, path) != -1)
                {
                    if (ARCChangeDir(pHandle, path))
                    {
                        entrynum = ARCConvertPathToEntrynum(pHandle, filename);
                        ARCChangeDir(pHandle, "..");
                    }
                }
            }

            ARCChangeDir(pHandle, "..");
        }

        if (entrynum != -1)
        {
            ARCFileInfo info;

            ARCFastOpen(pHandle, entrynum, &info);
            void *start = ARCGetStartAddrInMem(&info);

            if (pSize != NULL) *pSize = ARCGetLength(&info);

            ARCClose(&info);
            return start;
        }

        return NULL;
    }
}

namespace nw4hbm
{
    namespace lyt
    {
        FontRefLink::FontRefLink() : mFont(NULL) {}

        void FontRefLink::Set(const char *name, ut::Font *font)
        {
            strcpy(mFontName, name);
            mFont = font;
        }

        ArcResourceAccessor::ArcResourceAccessor() : mArchive(NULL)
        {

        }

        bool ArcResourceAccessor::Attach(void *archive, const char *rootDir)
        {
            if (!ARCInitHandle(archive, &mHandle)) return false;

            mArchive = archive;
            strncpy(mRootDir, rootDir, FONTNAMEBUF_MAX);
            mRootDir[FONTNAMEBUF_MAX] = '\0';

            return true;
        }

       void* ArcResourceAccessor::Detach()
        {
            void *old = mArchive;
            mArchive = NULL;
                
            return old;
        }

        UNKTYPE * ArcResourceAccessor::GetResource(u32 filetype, const char *filename, u32 *pSize)
        {
            return GetResourceSub(&mHandle, mRootDir, filetype, filename, pSize);
        }

        ut::Font * ArcResourceAccessor::GetFont(const char *name)
        {
            return detail::FindFont(&mRefList, name);
        }
    }
}
