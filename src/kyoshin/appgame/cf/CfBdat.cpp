#include "kyoshin/appgame/cf/CfBdat.hpp"
#include "kyoshin/appgame/plugin/ocBdat.hpp"
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
        func_8003AA34();
        spBtlPcListFileData = getBdatFileDataPtr("BTL_pclist");
        spBtlEneListFileData = getBdatFileDataPtr("BTL_enelist");
        spBtlSkillListFileData = getBdatFileDataPtr("BTL_skilllist");
        spBtlGrowListFileData = getBdatFileDataPtr("BTL_growlist");
        spBtlBuffListFileData = getBdatFileDataPtr("BTL_bufflist");
        spFldPointListFileData = getBdatFileDataPtr("FLD_pointlist");
        spFldTboxListFileData = getBdatFileDataPtr("FLD_tboxlist");
        spBtlCamListFileData = getBdatFileDataPtr("BTL_camlist");
        spBtlCamDataListFileData = getBdatFileDataPtr("BTL_camdatalist");
        spBtlCrystalNameListFileData = getBdatFileDataPtr("BTL_crystalnamelist");
        spMnuItemFileData = getBdatFileDataPtr("MNU_item");
        spFldNpcListFileData = getBdatFileDataPtr("FLD_npclist");
        spFldMapListFileData = getBdatFileDataPtr("FLD_maplist");
        spLandmarkListFileData = getBdatFileDataPtr("landmarklist");
        spFldValPopListFileData = getBdatFileDataPtr("FLD_valpoplist");
        spFldDmObjListFileData = getBdatFileDataPtr("FLD_dmobjlist");
        spItmItemListFileData = getBdatFileDataPtr("ITM_itemlist");
        spItmWpnListFileData = getBdatFileDataPtr("ITM_wpnlist");
        spItmEquipListFileData = getBdatFileDataPtr("ITM_equiplist");
        spItmCrystalListFileData = getBdatFileDataPtr("ITM_crystallist");
        spItmDropCrystalListFileData = getBdatFileDataPtr("ITM_dropcrystallist");
        spItmCollectListFileData = getBdatFileDataPtr("ITM_collectlist");
        spItmMaterialListFileData = getBdatFileDataPtr("ITM_materiallist");
        spItmValuableListFileData = getBdatFileDataPtr("ITM_valuablelist");
        spItmArtsListFileData = getBdatFileDataPtr("ITM_artslist");
        spItmHeadListFileData = getBdatFileDataPtr("ITM_headlist");
        spItmBodyListFileData = getBdatFileDataPtr("ITM_bodylist");
        spItmArmListFileData = getBdatFileDataPtr("ITM_armlist");
        spItmWaistListFileData = getBdatFileDataPtr("ITM_waistlist");
        spItmLeggListFileData = getBdatFileDataPtr("ITM_legglist");
        
        lbl_80666A74 = nullptr;
        lbl_80666A78 = nullptr;
        lbl_80666A7C = 0;
        lbl_8066698C = nullptr;
        
        spBtlPsvSkillFileData = getBdatFileDataPtr("BTL_PSVskill");
        spBtlPsvLinkFileData = getBdatFileDataPtr("BTL_PSVlink");
        spBtlPssListFileData = getBdatFileDataPtr("BTL_PSSlist");

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

        for(int i = 0; i < ARRAY_SIZE(lbl_80577510); i++){
            lbl_80577510[i] = getBdatFileDataPtr(temp[i]);
        }

        resetMapBdatFileDataPointers();

        if(lbl_80666A6C != nullptr){
            CDeviceFile::func_8044F118(lbl_80666A6C);
            lbl_80666A6C = nullptr;
        }

        if(lbl_80666A70 != nullptr){
            func_8003AA8C(3);
            if(lbl_80666A70 != nullptr){
                delete lbl_80666A70;
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

    //TODO: is there a cleaner way to write this? maybe using an inline?
    void CfBdat::loadMapBdatFileDataPointers(int mapId, int areaId){
        FixStr<64> bdatNameString;

        bdatNameString.format("routelist%02d%02d", mapId, areaId);
        spCurRouteListFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("mapefflist%02d%02d", mapId, areaId);
        spCurMapEffListFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("mapobjlist%02d%02d", mapId, areaId);
        spCurMapObjListFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("maplodlist%02d%02d", mapId, areaId);
        spCurMapLodListFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("mapselist%02d%02d", mapId, areaId);
        spCurMapSeListFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("FLD_GimCamList%02d%02d", mapId, areaId);
        spCurFldGimCamListFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("Litemlist%02d%02d", mapId, areaId);
        spCurLItemListFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("extalklist%02d%02d", mapId, areaId);
        spCurExTalkListFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("minelist%02d%02d", mapId, areaId);
        spCurMineListFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("BTL_enelist%02d%02d", mapId, areaId);
        spCurBtlEneListFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("Gimlist%02d%02d", mapId, areaId);
        spCurGimListFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("FieldLock%02d%02d", mapId, areaId);
        spCurFieldLockFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("ElvGm%02d%02d", mapId, areaId);
        spCurElvGmFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("WarpGm%02d%02d", mapId, areaId);
        spCurWarpGmFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("JumpGm%02d%02d", mapId, areaId);
        spCurJumpGmFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("ItemGm%02d%02d", mapId, areaId);
        spCurItemGmFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("GimSVoff%02d%02d", mapId, areaId);
        spCurGimSvOffFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("GimEne%02d%02d", mapId, areaId);
        spCurGimEneFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("GimMess%02d%02d", mapId, areaId);
        spCurGimMessFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("drop_nmllist%02d%02d", mapId, areaId);
        spCurDropNmlListFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("drop_rarlist%02d%02d", mapId, areaId);
        spCurDropRarListFileData = getBdatFileDataPtr(bdatNameString.c_str());
        
        bdatNameString.format("drop_sprlist%02d%02d", mapId, areaId);
        spCurDropSprListFileData = getBdatFileDataPtr(bdatNameString.c_str());
    }

    void* CfBdat::func_80141B20(const char* pName){
        void* fileDataPtr;

        if(pName != nullptr){
            fileDataPtr = getBdatFileDataPtr(pName);
        }else{
            fileDataPtr = nullptr;
        }

        lbl_8066698C = fileDataPtr;
        return fileDataPtr;
    }

    u32 CfBdat::func_801422A8(u32 param1){
        if(param1 != 0){
            if((param1 >> 27) == 5) return param1;
            u32 r30 = 0;
            if((param1 & 0xFFFF) != 0){
                void* data = spItmWpnListFileData;
                u16 unk12 = func_8003B41C(data);
                u16 unkC = func_8003B1EC(data);
                u16 r0 = unk12 + unkC;
                if((s32)param1 < r0){
                    r30 = func_800AA714(func_8003AB48(data, "resource"));
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
                func_8003AA78(3, lbl_80666A70);
                spMnuEveStartFileData = getBdatFileDataPtr("MNU_eve_start");
                spMnuEveTableFileData = getBdatFileDataPtr("MNU_eve_table");
            }
            
            lbl_80666A6C = nullptr;
            result = true;
        }

        return result;
    }

}
