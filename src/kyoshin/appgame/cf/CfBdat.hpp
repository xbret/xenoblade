#pragma once

#include "monolib/work.hpp"
#include "monolib/device.hpp"

namespace cf{

    class CfBdat : IWorkEvent {
    public:
        CfBdat(){}
        virtual ~CfBdat();
        virtual bool OnFileEvent(CEventFile* pEventFile);

        static void func_801414CC();
        static void resetMapBdatFileDataPointers();
        static void loadMapBdatFileDataPointers(int mapId, int areaId);
        static void* func_80141B20(const char* pName);
        static const char* func_801421C4(u16 index);
        static u32 func_801422A8(u32 param1);
        static const char* func_801424A8(u16 index);

        //Pointers to file data for bdat files
        static void* spBtlPcListFileData;
        static void* spBtlEneListFileData;
        static void* spFldNpcListFileData;
        static void* lbl_8066698C;
        static void* spLandmarkListFileData;

        static void* spCurRouteListFileData;
        static void* spFldMapListFileData;
        static void* spCurMapEffListFileData;
        static void* spCurMapObjListFileData;
        static void* spCurMapLodListFileData;
        static void* spCurMapSeListFileData;
        static void* spCurFldGimCamListFileData;
        static void* spCurLItemListFileData;
        static void* spCurExTalkListFileData;
        static void* spCurMineListFileData;
        static void* spCurBtlEneListFileData;

        static void* spFldValPopListFileData;
        static void* spFldDmObjListFileData;
        static void* spBtlSkillListFileData;
        static void* spBtlGrowListFileData;
        static void* spBtlBuffListFileData;
        static void* spFldPointListFileData;
        static void* spFldTboxListFileData;
        static void* spItmItemListFileData;
        static void* lbl_806669E0;

        //Item bdat files
        static void* spItmWpnListFileData;
        static void* spItmEquipListFileData;
        static void* spItmCrystalListFileData;
        static void* spItmDropCrystalListFileData;
        static void* spItmCollectListFileData;
        static void* spItmMaterialListFileData;
        static void* spItmValuableListFileData;
        static void* spItmArtsListFileData;
        static void* spItmHeadListFileData;
        static void* spItmBodyListFileData;
        static void* spItmArmListFileData;
        static void* spItmWaistListFileData;
        static void* spItmLeggListFileData;

        static void* spCurGimListFileData;
        static void* spCurFieldLockFileData;
        static void* spCurElvGmFileData;
        static void* spCurWarpGmFileData;
        static void* spCurJumpGmFileData;
        static void* spCurItemGmFileData;
        static void* spCurGimSvOffFileData;
        static void* spCurGimEneFileData;
        static void* spCurGimMessFileData;
        static void* spCurDropNmlListFileData;
        static void* spCurDropRarListFileData;
        static void* spCurDropSprListFileData;

        static void* spBtlPsvSkillFileData;
        static void* spBtlPsvLinkFileData;
        static void* spBtlPssListFileData;
        static void* spBtlCamListFileData;
        static void* spBtlCamDataListFileData;
        static void* spBtlCrystalNameListFileData;

        static void* spMnuItemFileData;
        static void* spMnuEveStartFileData;
        static void* spMnuEveTableFileData;

        static CFileHandle* lbl_80666A6C;
        static void* lbl_80666A70;
        static void* lbl_80666A74;
        static void* lbl_80666A78;
        static float lbl_80666A7C;
        static CfBdat lbl_80666A80;
        static void* lbl_80666A84;

        static void* lbl_80577510[];
        static const char* lbl_80531EC0[];
    };

} //namespace cf
