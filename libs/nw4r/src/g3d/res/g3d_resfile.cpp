#pragma ipa file // TODO: REMOVE AFTER REFACTOR

#include <nw4r/g3d.h>

namespace nw4r {
namespace g3d {
namespace {

NW4R_G3D_RESFILE_NAME_DEF(Models, "3DModels(NW4R)");
NW4R_G3D_RESFILE_NAME_DEF(Pltts, "Palettes(NW4R)");
NW4R_G3D_RESFILE_NAME_DEF(Textures, "Textures(NW4R)");
NW4R_G3D_RESFILE_NAME_DEF(AnmChr, "AnmChr(NW4R)");
NW4R_G3D_RESFILE_NAME_DEF(AnmVis, "AnmVis(NW4R)");
NW4R_G3D_RESFILE_NAME_DEF(AnmClr, "AnmClr(NW4R)");
NW4R_G3D_RESFILE_NAME_DEF(AnmTexPat, "AnmTexPat(NW4R)");
NW4R_G3D_RESFILE_NAME_DEF(AnmTexSrt, "AnmTexSrt(NW4R)");
NW4R_G3D_RESFILE_NAME_DEF(AnmShp, "AnmShp(NW4R)");
NW4R_G3D_RESFILE_NAME_DEF(AnmScn, "AnmScn(NW4R)");
NW4R_G3D_RESFILE_NAME_DEF(Ext, "External");

} // namespace

/******************************************************************************
 *
 * ResMdl
 *
 ******************************************************************************/
ResMdl ResFile::GetResMdl(const char* str) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Models)];

    if (p != NULL) {
        return ResMdl(ResDic(p)[str]);
    }

    return ResMdl(NULL);
}

ResMdl ResFile::GetResMdl(const char* str, u32 len) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResMdl(ResDic(p)(str, len));
    }

    return ResMdl(NULL);
}

ResMdl ResFile::GetResMdl(ResName n) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResMdl(ResDic(p)[n]);
    }

    return ResMdl(NULL);
}

ResMdl ResFile::GetResMdl(int idx) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Models)];

    if (p != NULL) {
        return ResMdl(ResDic(p)[idx]);
    }

    return ResMdl(NULL);
}

ResMdl ResFile::GetResMdl(u32 idx) const {
    return GetResMdl(static_cast<int>(idx));
}

u32 ResFile::GetResMdlNumEntries() const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Models)];

    if (p != NULL) {
        return ResDic(p).GetNumData();
    }

    return 0;
}

/******************************************************************************
 *
 * ResPltt
 *
 ******************************************************************************/
ResPltt ResFile::GetResPltt(const char* str) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Pltts)];

    if (p != NULL) {
        return ResPltt(ResDic(p)[str]);
    }

    return ResPltt(NULL);
}

ResPltt ResFile::GetResPltt(const char* str, u32 len) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResPltt(ResDic(p)(str, len));
    }

    return ResPltt(NULL);
}

ResPltt ResFile::GetResPltt(ResName n) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Pltts)];

    if (p != NULL) {
        return ResPltt(ResDic(p)[n]);
    }

    return ResPltt(NULL);
}

ResPltt ResFile::GetResPltt(int idx) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Pltts)];

    if (p != NULL) {
        return ResPltt(ResDic(p)[idx]);
    }

    return ResPltt(NULL);
}

ResPltt ResFile::GetResPltt(u32 idx) const {
    return GetResPltt(static_cast<int>(idx));
}

u32 ResFile::GetResPlttNumEntries() const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Pltts)];

    if (p != NULL) {
        return ResDic(p).GetNumData();
    }

    return 0;
}

/******************************************************************************
 *
 * ResTex
 *
 ******************************************************************************/
ResTex ResFile::GetResTex(const char* str) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResTex(ResDic(p)[str]);
    }

    return ResTex(NULL);
}

ResTex ResFile::GetResTex(const char* str, u32 len) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResTex(ResDic(p)(str, len));
    }

    return ResTex(NULL);
}

ResTex ResFile::GetResTex(ResName n) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResTex(ResDic(p)[n]);
    }

    return ResTex(NULL);
}

ResTex ResFile::GetResTex(int idx) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResTex(ResDic(p)[idx]);
    }

    return ResTex(NULL);
}

ResTex ResFile::GetResTex(u32 idx) const {
    return GetResTex(static_cast<int>(idx));
}

u32 ResFile::GetResTexNumEntries() const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResDic(p).GetNumData();
    }

    return 0;
}

/******************************************************************************
 *
 * ResAnmChr
 *
 ******************************************************************************/
ResAnmChr ResFile::GetResAnmChr(const char* str) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmChr)];

    if (p != NULL) {
        return ResAnmChr(ResDic(p)[str]);
    }

    return ResAnmChr(NULL);
}

ResAnmChr ResFile::GetResAnmChr(const char* str, u32 len) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResAnmChr(ResDic(p)(str, len));
    }

    return ResAnmChr(NULL);
}

ResAnmChr ResFile::GetResAnmChr(ResName n) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResAnmChr(ResDic(p)[n]);
    }

    return ResAnmChr(NULL);
}

ResAnmChr ResFile::GetResAnmChr(int idx) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmChr)];

    if (p != NULL) {
        return ResAnmChr(ResDic(p)[idx]);
    }

    return ResAnmChr(NULL);
}

ResAnmChr ResFile::GetResAnmChr(u32 idx) const {
    return GetResAnmChr(static_cast<int>(idx));
}

u32 ResFile::GetResAnmChrNumEntries() const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmChr)];

    if (p != NULL) {
        return ResDic(p).GetNumData();
    }

    return 0;
}

/******************************************************************************
 *
 * ResAnmVis
 *
 ******************************************************************************/
ResAnmVis ResFile::GetResAnmVis(const char* str) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmVis)];

    if (p != NULL) {
        return ResAnmVis(ResDic(p)[str]);
    }

    return ResAnmVis(NULL);
}

ResAnmVis ResFile::GetResAnmVis(const char* str, u32 len) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResAnmVis(ResDic(p)(str, len));
    }

    return ResAnmVis(NULL);
}

ResAnmVis ResFile::GetResAnmVis(ResName n) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResAnmVis(ResDic(p)[n]);
    }

    return ResAnmVis(NULL);
}

ResAnmVis ResFile::GetResAnmVis(int idx) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmVis)];

    if (p != NULL) {
        return ResAnmVis(ResDic(p)[idx]);
    }

    return ResAnmVis(NULL);
}

ResAnmVis ResFile::GetResAnmVis(u32 idx) const {
    return GetResAnmVis(static_cast<int>(idx));
}

u32 ResFile::GetResAnmVisNumEntries() const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmVis)];

    if (p != NULL) {
        return ResDic(p).GetNumData();
    }

    return 0;
}

/******************************************************************************
 *
 * ResAnmClr
 *
 ******************************************************************************/
ResAnmClr ResFile::GetResAnmClr(const char* str) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmClr)];

    if (p != NULL) {
        return ResAnmClr(ResDic(p)[str]);
    }

    return ResAnmClr(NULL);
}

ResAnmClr ResFile::GetResAnmClr(const char* str, u32 len) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResAnmClr(ResDic(p)(str, len));
    }

    return ResAnmClr(NULL);
}

ResAnmClr ResFile::GetResAnmClr(ResName n) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResAnmClr(ResDic(p)[n]);
    }

    return ResAnmClr(NULL);
}

ResAnmClr ResFile::GetResAnmClr(int idx) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmClr)];

    if (p != NULL) {
        return ResAnmClr(ResDic(p)[idx]);
    }

    return ResAnmClr(NULL);
}

ResAnmClr ResFile::GetResAnmClr(u32 idx) const {
    return GetResAnmClr(static_cast<int>(idx));
}

u32 ResFile::GetResAnmClrNumEntries() const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmClr)];

    if (p != NULL) {
        return ResDic(p).GetNumData();
    }

    return 0;
}

/******************************************************************************
 *
 * ResAnmTexPat
 *
 ******************************************************************************/
ResAnmTexPat ResFile::GetResAnmTexPat(const char* str) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmTexPat)];

    if (p != NULL) {
        return ResAnmTexPat(ResDic(p)[str]);
    }

    return ResAnmTexPat(NULL);
}

ResAnmTexPat ResFile::GetResAnmTexPat(const char* str, u32 len) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResAnmTexPat(ResDic(p)(str, len));
    }

    return ResAnmTexPat(NULL);
}

ResAnmTexPat ResFile::GetResAnmTexPat(ResName n) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResAnmTexPat(ResDic(p)[n]);
    }

    return ResAnmTexPat(NULL);
}

ResAnmTexPat ResFile::GetResAnmTexPat(int idx) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmTexPat)];

    if (p != NULL) {
        return ResAnmTexPat(ResDic(p)[idx]);
    }

    return ResAnmTexPat(NULL);
}

ResAnmTexPat ResFile::GetResAnmTexPat(u32 idx) const {
    return GetResAnmTexPat(static_cast<int>(idx));
}

u32 ResFile::GetResAnmTexPatNumEntries() const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmTexPat)];

    if (p != NULL) {
        return ResDic(p).GetNumData();
    }

    return 0;
}

/******************************************************************************
 *
 * ResAnmTexSrt
 *
 ******************************************************************************/
ResAnmTexSrt ResFile::GetResAnmTexSrt(const char* str) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmTexSrt)];

    if (p != NULL) {
        return ResAnmTexSrt(ResDic(p)[str]);
    }

    return ResAnmTexSrt(NULL);
}

ResAnmTexSrt ResFile::GetResAnmTexSrt(const char* str, u32 len) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResAnmTexSrt(ResDic(p)(str, len));
    }

    return ResAnmTexSrt(NULL);
}

ResAnmTexSrt ResFile::GetResAnmTexSrt(ResName n) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResAnmTexSrt(ResDic(p)[n]);
    }

    return ResAnmTexSrt(NULL);
}

ResAnmTexSrt ResFile::GetResAnmTexSrt(int idx) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmTexSrt)];

    if (p != NULL) {
        return ResAnmTexSrt(ResDic(p)[idx]);
    }

    return ResAnmTexSrt(NULL);
}

ResAnmTexSrt ResFile::GetResAnmTexSrt(u32 idx) const {
    return GetResAnmTexSrt(static_cast<int>(idx));
}

u32 ResFile::GetResAnmTexSrtNumEntries() const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmTexSrt)];

    if (p != NULL) {
        return ResDic(p).GetNumData();
    }

    return 0;
}

/******************************************************************************
 *
 * ResAnmShp
 *
 ******************************************************************************/
ResAnmShp ResFile::GetResAnmShp(const char* str) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmShp)];

    if (p != NULL) {
        return ResAnmShp(ResDic(p)[str]);
    }

    return ResAnmShp(NULL);
}

ResAnmShp ResFile::GetResAnmShp(const char* str, u32 len) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResAnmShp(ResDic(p)(str, len));
    }

    return ResAnmShp(NULL);
}

ResAnmShp ResFile::GetResAnmShp(ResName n) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResAnmShp(ResDic(p)[n]);
    }

    return ResAnmShp(NULL);
}

ResAnmShp ResFile::GetResAnmShp(int idx) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmShp)];

    if (p != NULL) {
        return ResAnmShp(ResDic(p)[idx]);
    }

    return ResAnmShp(NULL);
}

ResAnmShp ResFile::GetResAnmShp(u32 idx) const {
    return GetResAnmShp(static_cast<int>(idx));
}

u32 ResFile::GetResAnmShpNumEntries() const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmShp)];

    if (p != NULL) {
        return ResDic(p).GetNumData();
    }

    return 0;
}

/******************************************************************************
 *
 * ResAnmScn
 *
 ******************************************************************************/
ResAnmScn ResFile::GetResAnmScn(const char* str) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmScn)];

    if (p != NULL) {
        return ResAnmScn(ResDic(p)[str]);
    }

    return ResAnmScn(NULL);
}

ResAnmScn ResFile::GetResAnmScn(const char* str, u32 len) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResAnmScn(ResDic(p)(str, len));
    }

    return ResAnmScn(NULL);
}

ResAnmScn ResFile::GetResAnmScn(ResName n) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return ResAnmScn(ResDic(p)[n]);
    }

    return ResAnmScn(NULL);
}

ResAnmScn ResFile::GetResAnmScn(int idx) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmScn)];

    if (p != NULL) {
        return ResAnmScn(ResDic(p)[idx]);
    }

    return ResAnmScn(NULL);
}

ResAnmScn ResFile::GetResAnmScn(u32 idx) const {
    return GetResAnmScn(static_cast<int>(idx));
}

u32 ResFile::GetResAnmScnNumEntries() const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmScn)];

    if (p != NULL) {
        return ResDic(p).GetNumData();
    }

    return 0;
}


/******************************************************************************
 *
 * ExternalData
 *
 ******************************************************************************/
void* ResFile::GetExternalData(const char* str) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Ext)];

    if (p != NULL) {
        return const_cast<void*>(ResDic(p)[str]);
    }

    return NULL;
}

void* ResFile::GetExternalData(const char* str, u32 len) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return const_cast<void*>(ResDic(p)(str, len));
    }

    return NULL;
}

void* ResFile::GetExternalData(ResName n) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)];

    if (p != NULL) {
        return const_cast<void*>(ResDic(p)[n]);
    }

    return NULL;
}

void* ResFile::GetExternalData(int idx) const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmScn)];

    if (p != NULL) {
        return const_cast<void*>(ResDic(p)[idx]);
    }

    return NULL;
}

void* ResFile::GetExternalData(u32 idx) const {
    return GetExternalData(static_cast<int>(idx));
}

u32 ResFile::GetExternalDataNumEntries() const {
    void* p = ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Ext)];

    if (p != NULL) {
        return ResDic(p).GetNumData();
    }

    return 0;
}

/******************************************************************************
 *
 * Miscellaneous
 *
 ******************************************************************************/

bool ResFile::HasResMdl() const {
    return ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Models)] != NULL;
}

bool ResFile::HasResPltt() const {
    return ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Pltts)] != NULL;
}

bool ResFile::HasResTex() const {
    return ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Textures)] != NULL;
}

bool ResFile::HasResAnmChr() const {
    return ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmChr)] != NULL;
}

bool ResFile::HasResAnmClr() const {
    return ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmClr)] != NULL;
}

bool ResFile::HasResAnmTexPat() const {
    return ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmTexPat)] != NULL;
}

bool ResFile::HasResAnmTexSrt() const {
    return ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmTexSrt)] != NULL;
}

bool ResFile::HasResAnmShp() const {
    return ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmShp)] != NULL;
}

bool ResFile::HasResAnmScn() const {
    return ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_AnmScn)] != NULL;
}

bool ResFile::HasExternalData() const {
    return ResDic(const_cast<ResDicData*>(
        &ref().dict.topLevel))[ResName(&ResNameData_Ext)] != NULL;
}

bool ResFile::Bind(ResFile file) {
    u32 i;
    bool success = true;

    u32 mdlNum = GetResMdlNumEntries();
    for (i = 0; i < mdlNum; i++) {
        success = GetResMdl(i).Bind(file) && success;
    }

    u32 anmTexPatNum = GetResAnmTexPatNumEntries();
    for (i = 0; i < anmTexPatNum; i++) {
        // @bug Success value clobbered by most recent result
        success = GetResAnmTexPat(i).Bind(file);
    }

    return success;
}

void ResFile::Release() {
    u32 i;

    u32 mdlNum = GetResMdlNumEntries();
    for (i = 0; i < mdlNum; i++) {
        GetResMdl(i).Release();
    }

    u32 anmTexPatNum = GetResAnmTexPatNumEntries();
    for (i = 0; i < anmTexPatNum; i++) {
        GetResAnmTexPat(i).Release();
    }
}

void ResFile::Init() {
    u32 i;

    u32 mdlNum = GetResMdlNumEntries();
    for (i = 0; i < mdlNum; i++) {
        GetResMdl(i).Init();
    }

    u32 texNum = GetResTexNumEntries();
    for (i = 0; i < texNum; i++) {
        GetResTex(i).Init();
    }

    u32 plttNum = GetResPlttNumEntries();
    for (i = 0; i < plttNum; i++) {
        GetResPltt(i).Init();
    }
}

void ResFile::Terminate() {
    u32 i;

    u32 mdlNum = GetResMdlNumEntries();
    for (i = 0; i < mdlNum; i++) {
        GetResMdl(i).Terminate();
    }
}

bool ResFile::CheckRevision() const {
    u32 i;
    u32 num;

    num = GetResMdlNumEntries();
    for (i = 0; i < num; i++) {
        if (!GetResMdl(i).CheckRevision()) {
            return false;
        }
    }

    num = GetResTexNumEntries();
    for (i = 0; i < num; i++) {
        if (!GetResTex(i).CheckRevision()) {
            return false;
        }
    }

    num = GetResPlttNumEntries();
    for (i = 0; i < num; i++) {
        if (!GetResPltt(i).CheckRevision()) {
            return false;
        }
    }

    num = GetResAnmChrNumEntries();
    for (i = 0; i < num; i++) {
        if (!GetResAnmChr(i).CheckRevision()) {
            return false;
        }
    }

    num = GetResAnmVisNumEntries();
    for (i = 0; i < num; i++) {
        if (!GetResAnmVis(i).CheckRevision()) {
            return false;
        }
    }

    num = GetResAnmClrNumEntries();
    for (i = 0; i < num; i++) {
        if (!GetResAnmClr(i).CheckRevision()) {
            return false;
        }
    }

    num = GetResAnmTexPatNumEntries();
    for (i = 0; i < num; i++) {
        if (!GetResAnmTexPat(i).CheckRevision()) {
            return false;
        }
    }

    num = GetResAnmTexSrtNumEntries();
    for (i = 0; i < num; i++) {
        if (!GetResAnmTexSrt(i).CheckRevision()) {
            return false;
        }
    }

    num = GetResAnmShpNumEntries();
    for (i = 0; i < num; i++) {
        if (!GetResAnmShp(i).CheckRevision()) {
            return false;
        }
    }

    num = GetResAnmScnNumEntries();
    for (i = 0; i < num; i++) {
        if (!GetResAnmScn(i).CheckRevision()) {
            return false;
        }
    }

    return true;
}

void ResFile::DCStore(bool sync) {
    ResFileData& r = ref();
    u32 store_size = sizeof(ResFileData);

    if (sync) {
        DC::StoreRange(&r, store_size);
    } else {
        DC::StoreRangeNoSync(&r, store_size);
    }
}

} // namespace g3d
} // namespace nw4r

// clang-format off
DECOMP_FORCEACTIVE(g3d_resfile_cpp,
                   nw4r::g3d::ResNameData_Ext);
// clang-format on
