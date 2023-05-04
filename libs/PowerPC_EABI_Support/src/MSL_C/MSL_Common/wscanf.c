#include <stdio.h>


//unused
static void parse_format(){
}

//unused
static void __wsformatter(){
}

//unused
void __wFileRead(){
}

wint_t __wStringRead(void* isc, wint_t ch, int Action){
    wchar_t ret;
    __wInStrCtrl* Iscp = (__wInStrCtrl*)isc;

    switch(Action){
        case __GetAwChar:
            ret = *(Iscp->wNextChar);
            if(ret == 0){
                Iscp->wNullCharDetected = 1;
                return 0xFFFF;
            }else{
                Iscp->wNextChar++;
                return ret;
            }
        case __UngetAwChar:
            if(!Iscp->wNullCharDetected){
                Iscp->wNextChar--;
            }else{
                Iscp->wNullCharDetected = FALSE;
            }
            return ch;
        case __TestForwcsError:
            return Iscp->wNullCharDetected;
    }

    return 0;
}

//unused
void fwscanf(){
}

//unused
void fwscanf_s(){
}

//unused
void wscanf(){
}

//unused
void wscanf_s(){
}

//unused
void vwscanf(){
}

//unused
void vwscanf_s(){
}

//unused
void vfwscanf(){
}

//unused
void vfwscanf_s(){
}

//unused
void vswscanf(){
}

//unused
void vswscanf_s(){
}

//unused
void swscanf(){
}

//unused
void swscanf_s(){
}
