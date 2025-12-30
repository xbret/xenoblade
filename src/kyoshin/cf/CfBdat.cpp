#include "kyoshin/cf/CfBdat.hpp"
#include "kyoshin/plugin/ocBdat.hpp"
#include "monolib/util.hpp"

extern u32 func_800AA714(const char* pString);

using namespace ml;

namespace cf{
    void* CfBdat::spBtlPcListFileData;
    void* CfBdat::spBtlEneListFileData;
    void* CfBdat::spFldNpcListFileData;
    void* CfBdat::lbl_8066698C;
    void* CfBdat::spLandmarkListFileData;

    void* CfBdat::spCurRouteListFileData;
    void* CfBdat::spFldMapListFileData;
    void* CfBdat::spCurMapEffListFileData;
    void* CfBdat::spCurMapObjListFileData;
    void* CfBdat::spCurMapLodListFileData;
    void* CfBdat::spCurMapSeListFileData;
    void* CfBdat::spCurFldGimCamListFileData;
    void* CfBdat::spCurLItemListFileData;
    void* CfBdat::spCurExTalkListFileData;
    void* CfBdat::spCurMineListFileData;
    void* CfBdat::spCurBtlEneListFileData;

    void* CfBdat::spFldValPopListFileData;
    void* CfBdat::spFldDmObjListFileData;
    void* CfBdat::spBtlSkillListFileData;
    void* CfBdat::spBtlGrowListFileData;
    void* CfBdat::spBtlBuffListFileData;
    void* CfBdat::spFldPointListFileData;
    void* CfBdat::spFldTboxListFileData;

    void* CfBdat::spItmItemListFileData;
    void* CfBdat::lbl_806669E0;
    void* CfBdat::spItmWpnListFileData;
    void* CfBdat::spItmEquipListFileData;
    void* CfBdat::spItmCrystalListFileData;
    void* CfBdat::spItmDropCrystalListFileData;
    void* CfBdat::spItmCollectListFileData;
    void* CfBdat::spItmMaterialListFileData;
    void* CfBdat::spItmValuableListFileData;
    void* CfBdat::spItmArtsListFileData;
    void* CfBdat::spItmHeadListFileData;
    void* CfBdat::spItmBodyListFileData;
    void* CfBdat::spItmArmListFileData;
    void* CfBdat::spItmWaistListFileData;
    void* CfBdat::spItmLeggListFileData;

    void* CfBdat::spCurGimListFileData;
    void* CfBdat::spCurFieldLockFileData;
    void* CfBdat::spCurElvGmFileData;
    void* CfBdat::spCurWarpGmFileData;
    void* CfBdat::spCurJumpGmFileData;
    void* CfBdat::spCurItemGmFileData;
    void* CfBdat::spCurGimSvOffFileData;
    void* CfBdat::spCurGimEneFileData;
    void* CfBdat::spCurGimMessFileData;
    void* CfBdat::spCurDropNmlListFileData;
    void* CfBdat::spCurDropRarListFileData;
    void* CfBdat::spCurDropSprListFileData;

    void* CfBdat::spBtlPsvSkillFileData;
    void* CfBdat::spBtlPsvLinkFileData;
    void* CfBdat::spBtlPssListFileData;
    void* CfBdat::spBtlCamListFileData;
    void* CfBdat::spBtlCamDataListFileData;
    void* CfBdat::spBtlCrystalNameListFileData;

    void* CfBdat::spMnuItemFileData;
    void* CfBdat::spMnuEveStartFileData;
    void* CfBdat::spMnuEveTableFileData;

    CFileHandle* CfBdat::lbl_80666A6C;
    void* CfBdat::lbl_80666A70;
    void* CfBdat::lbl_80666A74;
    void* CfBdat::lbl_80666A78;
    float CfBdat::lbl_80666A7C;
    CfBdat CfBdat::lbl_80666A80;
    void* CfBdat::lbl_80666A84;

    
    void* CfBdat::lbl_80577510[28];

    const char* CfBdat::lbl_80531EC0[] = {
        "",
        "EXwp_L",
        "EXwp_R",
        "EXwp_S",
        "EXwp_S",
        "EXwp_H",
        "EXwp_HL",
        "EXwp_HR",
        "EXwp_HR"
    };

    CfBdat::~CfBdat(){
    }

    void CfBdat::func_801414CC(){
        CBdat::func_8003AA34();
        spBtlPcListFileData = CBdat::getFP("BTL_pclist");
        spBtlEneListFileData = CBdat::getFP("BTL_enelist");
        spBtlSkillListFileData = CBdat::getFP("BTL_skilllist");
        spBtlGrowListFileData = CBdat::getFP("BTL_growlist");
        spBtlBuffListFileData = CBdat::getFP("BTL_bufflist");
        spFldPointListFileData = CBdat::getFP("FLD_pointlist");
        spFldTboxListFileData = CBdat::getFP("FLD_tboxlist");
        spBtlCamListFileData = CBdat::getFP("BTL_camlist");
        spBtlCamDataListFileData = CBdat::getFP("BTL_camdatalist");
        spBtlCrystalNameListFileData = CBdat::getFP("BTL_crystalnamelist");
        spMnuItemFileData = CBdat::getFP("MNU_item");
        spFldNpcListFileData = CBdat::getFP("FLD_npclist");
        spFldMapListFileData = CBdat::getFP("FLD_maplist");
        spLandmarkListFileData = CBdat::getFP("landmarklist");
        spFldValPopListFileData = CBdat::getFP("FLD_valpoplist");
        spFldDmObjListFileData = CBdat::getFP("FLD_dmobjlist");
        spItmItemListFileData = CBdat::getFP("ITM_itemlist");
        spItmWpnListFileData = CBdat::getFP("ITM_wpnlist");
        spItmEquipListFileData = CBdat::getFP("ITM_equiplist");
        spItmCrystalListFileData = CBdat::getFP("ITM_crystallist");
        spItmDropCrystalListFileData = CBdat::getFP("ITM_dropcrystallist");
        spItmCollectListFileData = CBdat::getFP("ITM_collectlist");
        spItmMaterialListFileData = CBdat::getFP("ITM_materiallist");
        spItmValuableListFileData = CBdat::getFP("ITM_valuablelist");
        spItmArtsListFileData = CBdat::getFP("ITM_artslist");
        spItmHeadListFileData = CBdat::getFP("ITM_headlist");
        spItmBodyListFileData = CBdat::getFP("ITM_bodylist");
        spItmArmListFileData = CBdat::getFP("ITM_armlist");
        spItmWaistListFileData = CBdat::getFP("ITM_waistlist");
        spItmLeggListFileData = CBdat::getFP("ITM_legglist");
        
        lbl_80666A74 = nullptr;
        lbl_80666A78 = nullptr;
        lbl_80666A7C = 0;
        lbl_8066698C = nullptr;
        
        spBtlPsvSkillFileData = CBdat::getFP("BTL_PSVskill");
        spBtlPsvLinkFileData = CBdat::getFP("BTL_PSVlink");
        spBtlPssListFileData = CBdat::getFP("BTL_PSSlist");

        const char* temp[ARRAY_SIZE(lbl_80577510)] = {
            "JNL_quest0000",
            "JNL_quest0101",
            "JNL_quest0201",
            "JNL_quest0301",
            "JNL_quest0401",
            "JNL_quest0402",
            "JNL_quest0501",
            "JNL_quest0601",
            "JNL_quest0701",
            "JNL_quest0801",
            "JNL_quest0901",
            "JNL_quest1001",
            "JNL_quest1101",
            "JNL_quest1201",
            "JNL_quest1202",
            "JNL_quest1301",
            "JNL_quest1401",
            "JNL_quest1501",
            "JNL_quest1601",
            "JNL_quest1701",
            "JNL_quest1801",
            "JNL_quest1901",
            "JNL_quest2001",
            "JNL_quest2101",
            "JNL_quest2201",
            "JNL_quest2301",
            "JNL_quest2401"
        };

        for(int i = 0; i < (int)ARRAY_SIZE(lbl_80577510); i++){
            lbl_80577510[i] = CBdat::getFP(temp[i]);
        }

        resetMapBdatFileDataPointers();

        if(lbl_80666A6C != nullptr){
            CDeviceFile::cancel(lbl_80666A6C);
            lbl_80666A6C = nullptr;
        }

        if(lbl_80666A70 != nullptr){
            CBdat::func_8003AA8C(3);
            if(lbl_80666A70 != nullptr){
                mtl::MemManager::deallocate(lbl_80666A70);
            }
        }

        lbl_80666A70 = nullptr;
        lbl_80666A6C = nullptr;
    }

    void CfBdat::resetMapBdatFileDataPointers(){
        spCurRouteListFileData = nullptr;
        spCurMapEffListFileData = nullptr;
        spCurMapObjListFileData = nullptr;
        spCurMapLodListFileData = nullptr;
        spCurMapSeListFileData = nullptr;
        spCurFldGimCamListFileData = nullptr;
        spCurLItemListFileData = nullptr;
        spCurExTalkListFileData = nullptr;
        spCurMineListFileData = nullptr;
        spCurBtlEneListFileData = nullptr;
        spCurGimListFileData = nullptr;
        spCurFieldLockFileData = nullptr;
        spCurElvGmFileData = nullptr;
        spCurWarpGmFileData = nullptr;
        spCurJumpGmFileData = nullptr;
        spCurItemGmFileData = nullptr;
        spCurGimSvOffFileData = nullptr;
        spCurGimEneFileData = nullptr;
        spCurGimMessFileData = nullptr;
        spCurDropNmlListFileData = nullptr;
        spCurDropRarListFileData = nullptr;
        spCurDropSprListFileData = nullptr;
    }

    //This feels a bit janky, but if it works it works :p
    #define GET_MAP_BDAT_PTR(dest, name) \
    string.format(STR(name)"%02d%02d", mapId, areaId); \
    dest = CBdat::getFP(string.c_str());

    void CfBdat::loadMapBdatFileDataPointers(int mapId, int areaId){
        FixStr<64> string;

        GET_MAP_BDAT_PTR(spCurRouteListFileData, routelist);
        GET_MAP_BDAT_PTR(spCurMapEffListFileData, mapefflist);
        GET_MAP_BDAT_PTR(spCurMapObjListFileData, mapobjlist);
        GET_MAP_BDAT_PTR(spCurMapLodListFileData, maplodlist);
        GET_MAP_BDAT_PTR(spCurMapSeListFileData, mapselist);
        GET_MAP_BDAT_PTR(spCurFldGimCamListFileData, FLD_GimCamList);
        GET_MAP_BDAT_PTR(spCurLItemListFileData, Litemlist);
        GET_MAP_BDAT_PTR(spCurExTalkListFileData, extalklist);
        GET_MAP_BDAT_PTR(spCurMineListFileData, minelist);
        GET_MAP_BDAT_PTR(spCurBtlEneListFileData, BTL_enelist);
        GET_MAP_BDAT_PTR(spCurGimListFileData, Gimlist);
        GET_MAP_BDAT_PTR(spCurFieldLockFileData, FieldLock);
        GET_MAP_BDAT_PTR(spCurElvGmFileData, ElvGm);
        GET_MAP_BDAT_PTR(spCurWarpGmFileData, WarpGm);
        GET_MAP_BDAT_PTR(spCurJumpGmFileData, JumpGm);
        GET_MAP_BDAT_PTR(spCurItemGmFileData, ItemGm);
        GET_MAP_BDAT_PTR(spCurGimSvOffFileData, GimSVoff);
        GET_MAP_BDAT_PTR(spCurGimEneFileData, GimEne);
        GET_MAP_BDAT_PTR(spCurGimMessFileData, GimMess);
        GET_MAP_BDAT_PTR(spCurDropNmlListFileData, drop_nmllist);
        GET_MAP_BDAT_PTR(spCurDropRarListFileData, drop_rarlist);
        GET_MAP_BDAT_PTR(spCurDropSprListFileData, drop_sprlist);
    }

    void* CfBdat::func_80141B20(const char* pName){
        void* fileDataPtr;

        if(pName != nullptr){
            fileDataPtr = CBdat::getFP(pName);
        }else{
            fileDataPtr = nullptr;
        }

        lbl_8066698C = fileDataPtr;
        return fileDataPtr;
    }

    const char* CfBdat::func_801421C4(u16 index){
        return nullptr;
    }

    u32 CfBdat::func_801422A8(u32 param1){
        if(param1 != 0){
            if((param1 >> 27) == 5) return param1;
            u32 r30 = 0;
            if((param1 & 0xFFFF) != 0){
                void* data = spItmWpnListFileData;
                u16 unk12 = CBdat::func_8003B41C(data);
                u16 unkC = CBdat::func_8003B1EC(data);
                u16 r0 = unk12 + unkC;
                s32 temp = (param1 & 0xFFFF);
                if(temp < r0){
                    r30 = func_800AA714(CBdat::getBdatStringColumnValue(data, "resource", temp));
                }
            }
            return r30;
        }

        return 0;
    }

    const char* CfBdat::func_801424A8(u16 index){
        return lbl_80531EC0[index];
    }

    bool CfBdat::OnFileEvent(CEventFile* pEventFile){
        bool result = false;

        if(lbl_80666A6C == pEventFile->mFileHandle){
            if(pEventFile->unk0 == 1 && *(u32*)((u32)pEventFile + 0x14) != 0){
                CBdat::func_8003AA78(3, lbl_80666A70);
                spMnuEveStartFileData = CBdat::getFP("MNU_eve_start");
                spMnuEveTableFileData = CBdat::getFP("MNU_eve_table");
            }
            
            lbl_80666A6C = nullptr;
            result = true;
        }

        return result;
    }

}
