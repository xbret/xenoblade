#include "revolution/DVD.h"
#include "revolution/OS.h"
#include "revolution/SC.h"

typedef void (*FatalFuncType)(void);
static FatalFuncType FatalFunc = NULL;

/* Unsupported characters to fix:
? (E9)
? (FC)
? (F3)
? (E1)
? (E8)
*/

// TODO: Fix text formatting (SJIS)
const char* const __DVDErrorMessageDefault[] = {
    // SC_LANG_JP
    "\n\n\nエラーが発生しました。\n\n"
    "イジェクトボタンを押してディスクを取り出してか\n"
    "ら、本体の電源をOFFにして、本体の取扱説明書の\n"
    "指示に従ってください。",

    // SC_LANG_EN
    "\n\n\nAn error has occurred.\n"
    "Press the Eject Button, remove the\n"
    "Game Disc, and turn off the power to the\n"
    "console. Please read the Wii Operations\n"
    "Manual for further instructions.",

    // SC_LANG_DE
    "\n\n\nEin Fehler ist aufgetreten.\n"
    "Dr""\xFC""cke den Ausgabeknopf, entnimm die\n"
    "Disc und schalte die Wii-Konsole aus.\n"
    "Bitte lies die Wii-Bedienungsanleitung,\n"
    "um weitere Informationen zu erhalten.",

    // SC_LANG_FR
    "\n\n\nUne erreur est survenue.\n"
    "Appuyez sur le bouton EJECT, retirez\n"
    "le disque et \xE9teignez la console.\n"
    "Veuillez vous r""\xE9""f\xE9rer au Mode d'emploi\n"
    "de la Wii pour plus de d\xE9tails.",
    
    // SC_LANG_SP
    "\n\n\nOcurri\xF3 un Error.\n"
    "Oprime el Bot\xF3n EJECT, saca el disco\n"
    "y apaga la consola. Consulta el manual\n"
    "de operaciones de la consola Wii para\n"
    "obtener m\xE1s informaci\xF3n.",
    
    // SC_LANG_IT
    "\n\n\nSi \xE8 verificato un errore.\n"
    "Premi il pulsante EJECT, estrai il disco\n"
    "e spegni la console. Per maggiori\n"
    "informazioni, consulta il manuale di\n"
    "istruzioni della console Wii.",
    
    // SC_LANG_NL
    "\n\n\nEr is een fout opgetreden.\n"
    "Druk op de EJECT-knop, verwijder de\n"
    "disk en zet het Wii-systeem uit. Lees\n"
    "de Wii-handleiding voor meer informatie."
};

// TODO: Fix text formatting (SJIS)
const char* const __DVDErrorMessageEurope[] = {
    // SC_LANG_JP
    "\n\n\nエラーが発生しました。\n\n"
    "イジェクトボタンを押してディスクを取り出してか\n"
    "ら、本体の電源をOFFにして、本体の取扱説明書の\n"
    "指示に従ってください。",

    // SC_LANG_EN
    "\n\n\nAn error has occurred.\n"
    "Press the EJECT Button, remove the Disc,\n"
    "and turn off the power to the console.\n"
    "Please refer to the Wii Operations Manual\n"
    "for details.",

    // SC_LANG_DE
    "\n\n\nEin Fehler ist aufgetreten.\n"
    "Dr""\xFC""cke den Ausgabeknopf, entnimm die\n"
    "Disc und schalte die Wii-Konsole aus.\n"
    "Bitte lies die Wii-Bedienungsanleitung,\n"
    "um weitere Informationen zu erhalten.",

    // SC_LANG_FR
    "\n\n\nUne erreur est survenue.\n"
    "Appuyez sur le bouton EJECT, retirez\n"
    "le disque et \xE9teignez la console.\n"
    "Veuillez vous r""\xE9""f\xE9rer au mode d'emploi\n"
    "Wii pour plus de d\xE9tails.",
    
    // SC_LANG_SP
    "\n\n\nSe ha producido un error.\n"
    "Pulsa el Bot\xF3n EJECT, extrae el disco y\n"
    "apaga la consola. Consulta el manual de\n"
    "instrucciones de la consola Wii para\n"
    "obtener m\xE1s informaci\xF3n.",
    
    // SC_LANG_IT
    "\n\n\nSi \xE8 verificato un errore.\n"
    "Premi il pulsante EJECT, estrai il disco\n"
    "e spegni la console. Per maggiori\n"
    "informazioni, consulta il manuale di\n"
    "istruzioni della console Wii.",
    
    // SC_LANG_NL
    "\n\n\nEr is een fout opgetreden.\n"
    "Druk op de EJECT-knop, verwijder de\n"
    "disk en zet het Wii-systeem uit. Lees\n"
    "de Wii-handleiding voor meer informatie."
};


// TODO: Fix text formatting (SJIS)
char* __DVDErrorMessageChinaKorea[] = {
    // SC_LANG_CN
    "\n\nエラーコード１０４。\n"
    "エラーが発生しました。\n\n"
    "イジェクトボタンを押してディスクを取り出してか\n"
    "ら、本体の電源をOFFにして、本体の取扱説明書の\n"
    "指示に従ってください。",

    // SC_LANG_KO
    "\n\nError #104,\n"
    "An error has occurred.\n"
    "Press the EJECT Button, remove the\n"
    "Game Disc, and turn the power off.\n"
    "Please read the Wii Operations Manual\n"
    "for more information."
};


void __DVDShowFatalMessage(void) {
    const char* msg;
    char** msgArray;
    const GXColor bgColor = {0, 0, 0, 0};
    const GXColor textColor = {255, 255, 255, 0};

    if (SCGetLanguage() == SC_LANG_JP) {
        OSSetFontEncode(OS_FONT_ENCODE_SJIS);
    } else {
        OSSetFontEncode(OS_FONT_ENCODE_ANSI);
    }

    switch(SCGetProductGameRegion()){
        default:
            msgArray = (char**)__DVDErrorMessageDefault;
            break;
        case SC_REGION_EU:
            msgArray = (char**)__DVDErrorMessageEurope;
            break;
        case SC_REGION_KR:
        case SC_REGION_CN:
            msgArray = (char**)__DVDErrorMessageChinaKorea;
            break;
    }

    msg = (SCGetLanguage() > SC_LANG_NL) ? msgArray[SC_LANG_EN]
                                         : msgArray[SCGetLanguage()];

    OSFatal(textColor, bgColor, msg);
}

BOOL DVDSetAutoFatalMessaging(BOOL enable) {
    BOOL enabled;
    BOOL old;

    enabled = OSDisableInterrupts();

    old = (FatalFunc != NULL);

    if (enable) {
        FatalFunc = __DVDShowFatalMessage;
    } else {
        FatalFunc = NULL;
    }

    OSRestoreInterrupts(enabled);
    return old;
}

BOOL __DVDGetAutoFatalMessaging(void) { return FatalFunc != NULL; }

void __DVDPrintFatalMessage(void) {
    if (FatalFunc != NULL) {
        FatalFunc();
    }
}
