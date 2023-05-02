#include "PowerPC_EABI_Support/MSL_C/MSL_Common/mbstring.h"
#include <locale.h>
#include <string.h>

//unused
void mblen(){
}

//unused
void is_utf8_complete(){
}

//unused
void __utf8_to_unicode(){
}

int mbtowc(wchar_t *dest, const char *s, size_t num) {
    return _current_locale.ctype_cmpt_ptr->decode_mb(dest, s, num);
}

//unused
void __unicode_to_UTF8(){
}

//unused
void __unicode_to_UTF8_s(){
}

int __mbtowc_noconv(wchar_t *dest, const char *src, size_t n) {
    if (src == 0) {
        return 0;
    }

    if (n == 0) {
        return -1;
    }

    if (dest) {
        *dest = (unsigned char)*src;
    }

    if (!*src) {
        return 0;
    }

    return 1;
}

int __wctomb_noconv(char *src, wchar_t cr) {
    if (src == 0) {
        return 0;
    }

    *src = cr;
    return 1;
}

int wctomb(char *src, wchar_t wchar) {
    return _current_locale.ctype_cmpt_ptr->encode_wc(src, wchar);
}

//unused
void wctomb_s(){
}

size_t mbstowcs(wchar_t *dest, const char *src, size_t num) {
    int res;
    char* src_temp;
    int count;
    size_t src_len;

    src_len = strlen(src);

    if (dest != 0) {
        src_temp = (char*)src;

        for (count = 0; count < num; count++) {
            if (*src_temp) {
                res = mbtowc(dest++, src_temp, src_len);

                if (res > 0) {
                    src_temp += res;
                    src_len -= res;
                }
                else {
                    return -1;
                }
            }
            else {
                *dest = 0;
                break;
            }
        }
    }
    else {
        count = 0;
    }

    return count;
}

//unused
void mbstowcs_s(){
}

size_t wcstombs(char *src, const wchar_t *pwcs, size_t n) {
    int chars_written = 0;
    int result;
    char temp[3];
    wchar_t* source;

    if (!src || !pwcs) {
        return 0;
    }

    source = (wchar_t*)pwcs;

    while (chars_written <= n) {
        if (!*source) {
            *(src + chars_written) = '\0';
            break;
        }
        else {
            result = wctomb(temp, *source++);

            if ((chars_written + result) <= n) {
                strncpy(src + chars_written, temp, result);
                chars_written += result;
            }
            else {
                break;
            }
        }
    }

    return chars_written;
}

//unused
void wcstombs_s(){
}

//unused
void mbrlen(){
}

//unused
void mbrtowc(){
}

//unused
void wcrtomb(){
}

//unused
void wcrtomb_s(){
}

//unused
void mbsrtowcs(){
}

//unused
void mbsrtowcs_s(){
}

//unused
void wcsrtombs(){
}

//unused
void wcsrtombs_s(){
}

//unused
void mbsinit(){
}
