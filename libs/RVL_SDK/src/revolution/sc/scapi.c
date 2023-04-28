#include "revolution/SC.h"

u8 SCGetAspectRatio(void) {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_IPL_AR)) {
        item = SC_ASPECT_STD;
    } else if (item != SC_ASPECT_WIDE) {
        item = SC_ASPECT_STD;
    }

    return item;
}

//unused
void SCSetAspectRatio(){
}

//unused
void SCEmuSetAspectRatio(){
}

//unused
void SCGetAutorunMode(){
}

//unused
void SCSetAutorunMode(){
}

s8 SCGetDisplayOffsetH(void) {
    s8 item;

    if (!SCFindS8Item(&item, SC_ITEM_IPL_DH)) {
        item = 0;
    } else if (item < -32) {
        item = -32;
    } else if (item > 32) {
        item = 32;
    }

    return item & ~1;
}

//unused
void SCSetDisplayOffsetH(){
}

u8 SCGetEuRgb60Mode(void) {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_IPL_E60)) {
        item = SC_EURGB_50_HZ;
    } else if (item != SC_EURGB_60_HZ) {
        item = SC_EURGB_50_HZ;
    }

    return item;
}

//unused
void SCSetEuRgb60Mode(){
}

void SCGetIdleMode(SCIdleMode* mode) {
    SCFindByteArrayItem(mode, sizeof(SCIdleMode), SC_ITEM_IPL_IDL);
}

//unused
void SCSetIdleMode(){
}

u8 SCGetLanguage(void) {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_IPL_LNG)) {
        if (SCGetProductArea() == SC_AREA_JPN) {
            item = SC_LANG_JP;
        } else {
            item = SC_LANG_EN;
        }
    } else if (item > SC_LANG_KR) {
        item = SC_LANG_EN;
    }

    return item;
}

//unused
void SCSetLanguage(){
}

//unused
void SCEmuSetLanguage(){
}

//unused
void SCGetParentalControl(){
}

//unused
void SCSetParentalControl(){
}

u8 SCGetProgressiveMode(void) {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_IPL_PGS)) {
        item = FALSE;
    } else if (item != TRUE) {
        item = FALSE;
    }

    return item;
}

//unused
void SCSetProgressiveMode(){
}

u8 SCGetScreenSaverMode(void) {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_IPL_SSV)) {
        item = TRUE;
    } else if (item != TRUE) {
        item = FALSE;
    }

    return item;
}

//unused
void SCSetScreenSaverMode(){
}

u8 SCGetSoundMode(void) {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_IPL_SND)) {
        item = SC_SND_STEREO;
    } else if (item != SC_SND_MONO && item != SC_SND_STEREO &&
               item != SC_SND_SURROUND) {
        item = SC_SND_STEREO;
    }

    return item;
}

//unused
void SCSetSoundMode(){
}

u32 SCGetCounterBias(void) {
    u32 item;

    if (!SCFindU32Item(&item, SC_ITEM_IPL_CB)) {
        item = 0x0B49D800;
    }

    return item;
}

//unused
void SCSetCounterBias(){
}

//unused
void SCGetBootMode(){
}

//unused
void SCSetBootMode(){
}

//unused
void SCGetBootIRDVMode(){
}

//unused
void SCSetBootIRDVMode(){
}

//unused
void SCGetBootIRDCCode(){
}

//unused
void SCSetBootIRDCCode(){
}

//unused
void SCGetDriveSavingMode(){
}

//unused
void SCSetDriveSavingMode(){
}

void SCGetBtDeviceInfoArray(SCBtDeviceInfoArray* info) {
    SCFindByteArrayItem(info, sizeof(SCBtDeviceInfoArray), SC_ITEM_BT_DINF);
}

void SCSetBtDeviceInfoArray(const SCBtDeviceInfoArray* info) {
    SCReplaceByteArrayItem(info, sizeof(SCBtDeviceInfoArray), SC_ITEM_BT_DINF);
}

void SCGetBtCmpDevInfoArray(SCBtCmpDevInfoArray* info) {
    SCFindByteArrayItem(info, sizeof(SCBtCmpDevInfoArray), SC_ITEM_BT_CINF);
}

void SCSetBtCmpDevInfoArray(const SCBtCmpDevInfoArray* info) {
    SCReplaceByteArrayItem(info, sizeof(SCBtCmpDevInfoArray), SC_ITEM_BT_CINF);
}


u32 SCGetBtDpdSensibility(void) {
    u32 item;

    if (!SCFindU32Item(&item, SC_ITEM_BT_SENS)) {
        item = 2;
    } else if (item < 1) {
        item = 1;
    } else if (item > 5) {
        item = 5;
    }

    return item;
}

//unused
void SCSetBtDpdSensibility(){
}

//unused
void SCGetDvdConfig(){
}

//unused
void SCSetDvdConfig(){
}

//unused
void SCGetWwwRestriction(){
}

//unused
void SCSetWwwRestriction(){
}

//unused
void SCRemoveWwwRestrictionTemporarily(){
}

u8 SCGetWpadMotorMode(void) {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_BT_MOT)) {
        item = TRUE;
    } else if (item != TRUE) {
        item = FALSE;
    }

    return item;
}

void SCSetWpadMotorMode(u8 mode) { SCReplaceU8Item(mode, SC_ITEM_BT_MOT); }

u8 SCGetWpadSensorBarPosition(void) {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_BT_BAR)) {
        item = SC_SENSOR_BAR_BOTTOM;
    } else if (item != SC_SENSOR_BAR_TOP) {
        item = SC_SENSOR_BAR_BOTTOM;
    }

    return item;
}

//unused
void SCSetWpadSensorBarPosition(){
}

u8 SCGetWpadSpeakerVolume(void) {
    u8 item;

    if (!SCFindU8Item(&item, SC_ITEM_BT_SPKV)) {
        item = 89;
    } else if (item > 127) {
        item = 127;
    }

    return item;
}

void SCSetWpadSpeakerVolume(u8 vol) { SCReplaceU8Item(vol, SC_ITEM_BT_SPKV); }

//unused
void SCGetOwnerNickName(){
}

//unused
void SCSetOwnerNickName(){
}

//unused
void SCGetSimpleAddressID(){
}

//unused
void SCGetSimpleAddressRegionIdHi(){
}

//unused
void SCGetSimpleAddressRegionIdLow(){
}

//unused
void SCGetSimpleAddressCountryName(){
}

//unused
void SCGetSimpleAddressRegionName(){
}

//unused
void SCGetSimpleAddressRegionNameHi(){
}

//unused
void SCGetSimpleAddressRegionNameLow(){
}

//unused
void SCGetSimpleAddressLatitude(){
}

//unused
void SCGetSimpleAddressLongitude(){
}

//unused
void SCGetSimpleAddressData(){
}

//unused
void SCSetSimpleAddressData(){
}

//unused
void SCGetNetContentRestrictions(){
}

//unused
void SCSetNetContentRestrictions(){
}

//unused
void SCGetWCRestriction(){
}

//unused
void SCSetWCRestriction(){
}

//unused
void SCGetConfigDoneFlag(){
}

//unused
void SCSetConfigDoneFlag(){
}

//unused
void SCGetConfigDoneFlag2(){
}

//unused
void SCSetConfigDoneFlag2(){
}

//unused
void SCGetUpdateType(){
}

//unused
void SCSetUpdateType(){
}

//unused
void SCGetEULA(){
}

//unused
void SCSetEULA(){
}

//unused
void SCGetWCFlags(){
}

//unused
void SCSetWCFlags(){
}

//unused
void SCGetFreeChannelAppCount(){
}

//unused
void SCSetFreeChannelAppCount(){
}

//unused
void SCGetInstalledChannelAppCount(){
}

//unused
void SCSetInstalledChannelAppCount(){
}

//unused
void SCCheckPCMessageRestriction(){
}

//unused
void SCCheckPCShoppingRestriction(){
}

//unused
void SCCheckPCPassword(){
}

//unused
void SCGetTmpTitleID(){
}

//unused
void SCSetTmpTitleID(){
}
