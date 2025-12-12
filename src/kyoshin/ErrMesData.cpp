#include "kyoshin/ErrMesData.hpp"

//Error messages
//TODO: fix encoding issues for this file

//"Please insert the "Xenoblade" disc."
static const wchar_t* scNoDiscErrorMessage = L"ゼノブレイドのディスクをセットしてください。";
/* "The disc could not be read.
For more details, please read the Wii System Manual." */
static const wchar_t* scDiscUnreadableErrorMessage =
    L"ディスクを読めませんでした。&"
    L"詳しくはWii本体の取扱説明書をお読みください。";
//"Reading the disc..."
static const wchar_t* scReadingDiscErrorMessage = L"ディスクの読み込み中です。";
//"Communication with the Wii Remote was interrupted."
static const wchar_t* scWiiRemoteDisconnectedErrorMessage = L"Wiiリモコンの通信が切れました。";
/* "Please connect the Nunchuck to the Wii Remote.
To change the extension controller to the Classic Controller,
after resetting the game once, at the title screen, please change
the extension controller to the Classic Controller." */
static const wchar_t* scNunchuckDisconnectedErrorMessage =
    L"Wiiリモコンにヌンチャクを接続してください。&&"
    L"拡張コントローラをクラシックコントローラへ&"
    L"変更する場合は、一度ゲームをリセットした後、&"
    L"タイトル画面で拡張コントローラを&"
    L"クラシックコントローラに変更してください。";
/* "Please connect the Classic Controller to the Wii Remote.
To change the extension controller to the Nunchuck,
after resetting the game once, at the title screen, please change
the extension controller to the nunchuck." */
static const wchar_t* scClassicControllerDisconnectedErrorMessage =
    L"Wiiリモコンにクラシックコントローラを接続してください。&&"
    L"拡張コントローラをヌンチャクへ&"
    L"変更する場合は、一度ゲームをリセットした後、&"
    L"タイトル画面で拡張コントローラを&"
    L"ヌンチャクに変更してください。";
/* "There is no extension controller connected to the Wii Remote.
Please connect either the Nunchuck or Classic Controller." */
static const wchar_t* scNoExtensionErrorMessage =
    L"Wiiリモコンに拡張コントローラが接続されていません。&"
    L"ヌンチャクまたはクラシックコントローラを接続してください。";
/* "The Wii Console's save memory has been damaged.
For more details, please read the Wii System Manual." */
static const wchar_t* scMemoryDamagedErrorMessage =
    L"Wii本体保存メモリが壊れました。&"
    L"くわしくはWii本体の取扱説明書をお読みください。";
/* "Could not read from/write to the Wii Console's save memory.
For more details, please read the Wii System Manual." */
static const wchar_t* scMemoryReadWriteFailErrorMessage =
    L"Wii本体保存メモリの書き込み/読み出しができませんでした。&"
    L"くわしくはWii本体の取扱説明書をお読みください。";
/* "An error occured while reading from/writing to the Wii Console's save memory.
For more details, please read the Wii System Manual." */
static const wchar_t* scErrorDuringMemoryReadWriteErrorMessage =
    L"Wii本体保存メモリの書き込み/読み出し中にエラーが発生しました。&"
    L"くわしくはWii本体の取扱説明書をお読みください。";

const wchar_t* getNoDiscErrorMessage(){
    return scNoDiscErrorMessage;
}

const wchar_t* getDiscUnreadableErrorMessage(){
    return scDiscUnreadableErrorMessage;
}

const wchar_t* getReadingDiscErrorMessage(){
    return scReadingDiscErrorMessage;
}

const wchar_t* getWiiRemoteDisconnectedErrorMessage(){
    return scWiiRemoteDisconnectedErrorMessage;
}

const wchar_t* getNunchuckDisconnectedErrorMessage(){
    return scNunchuckDisconnectedErrorMessage;
}

const wchar_t* getClassicControllerDisconnectedErrorMessage(){
    return scClassicControllerDisconnectedErrorMessage;
}

const wchar_t* getNoExtensionErrorMessage(){
    return scNoExtensionErrorMessage;
}

const wchar_t* getMemoryDamagedErrorMessage(){
    return scMemoryDamagedErrorMessage;
}

const wchar_t* getMemoryReadWriteFailErrorMessage(){
    return scMemoryReadWriteFailErrorMessage;
}

const wchar_t* getErrorDuringMemoryReadWriteErrorMessage(){
    return scErrorDuringMemoryReadWriteErrorMessage;
}
