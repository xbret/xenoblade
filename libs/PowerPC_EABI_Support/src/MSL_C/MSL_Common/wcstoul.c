#include "PowerPC_EABI_Support/MSL_C/MSL_Common/wcstoul.h"
#include <ctype.h>
#include <wctype.h>
#include <errno.h>
#include <limits.h>
#include <stdio.h>


enum scan_states
{
	start           = 0x01,
	check_for_zero	= 0x02,
	leading_zero    = 0x04,
	need_digit      = 0x08,
	digit_loop      = 0x10,
	finished        = 0x20,
	failure         = 0x40
};

#define final_state(scan_state)	(scan_state & (finished | failure))

#define success(scan_state) (scan_state & (leading_zero | digit_loop | finished))

#define fetch()		(count++, (*wReadProc)(wReadProcArg, 0, __GetAwChar))
#define unfetch(c)	(*wReadProc)(wReadProcArg, c, __UngetAwChar)


unsigned long __wcstoul(int base, int max_width, wint_t (*wReadProc)(void*, wint_t, int), void* wReadProcArg, int* chars_scanned, int* negative, int* overflow)
{
	int scan_state = start;
	int count = 0;
	int spaces = 0;
	unsigned long value = 0;
	unsigned long value_max = 0;
	wchar_t c;
	
	*negative = *overflow = 0;
	
	if(base < 0 || base == 1 || base > 36 || max_width < 1){
        scan_state = failure;
    }else{
        c = fetch();
    }
	
	if(base){
        value_max = ULONG_MAX / base;
    }
	
	while (count <= max_width && c != -1 && !final_state(scan_state)){
		switch(scan_state){
			case start:
				if (iswspace(c)){
					c = fetch();
					count--;
					spaces++;
					break;
				}
				
				if (c == L'+'){
                    c = fetch();
				}else if (c == L'-'){
					c = fetch();
					*negative = 1;
				}
				
				scan_state = check_for_zero;
				break;
			case check_for_zero:
				if(base == 0 || base == 16){
					if(c == L'0'){
						scan_state = leading_zero;		
						c = fetch();
						break;
					}
				}
				
				scan_state = need_digit;
				break;
			case leading_zero:	
				if(c == L'X' || c == L'x'){
					base = 16;
					scan_state = need_digit;
					c = fetch();
					break;
				}
				
				if(base == 0){
                    base = 8;
                }
				
				scan_state = digit_loop;
				break;
			case need_digit:
			case digit_loop:	
				if(base == 0){
                    base = 10;
                }
				
				if(!value_max){
                    value_max = ULONG_MAX / base;
                }
				
				if(iswdigit(c)){
					if((c -= L'0') >= base){
						if (scan_state == digit_loop){
                            scan_state = finished;
                        }
						else{
                            scan_state = failure;
                        }
						
						c += L'0';
						break;
					}
				}else if(!iswalpha(c) || (toupper(c) - L'A' + 10) >= base){
					if(scan_state == digit_loop){
                        scan_state = finished;
                    }else{
                        scan_state = failure;
                    }
					
					break;
				}else{
					c = towupper(c) - L'A' + 10;
                }
				
				if(value > value_max){
                    *overflow = 1;
                }
				
				value *= base;
				
				if(c > (ULONG_MAX - value)){
                    *overflow = 1;
                }
				
				value += c;	
				scan_state = digit_loop;		
				c = fetch();
				break;
		}
	}
	
	if(!success(scan_state)){
		count = 0;
		value = 0;
		*chars_scanned = 0;
	}else{
		count--;
		*chars_scanned = count + spaces;
	}
	
	unfetch(c);
	return value;
}

//unused
void __wcstoull(){
}

//unused
void wcstoul(){
}

//unused
void wcstoull(){
}

long wcstol(const wchar_t* str, wchar_t** end, int base)
{
	unsigned long uvalue;
	long svalue;
	int count, negative, overflow;
		
	__wInStrCtrl wisc;
	wisc.wNextChar = (wchar_t*)str;
	wisc.wNullCharDetected = 0;
	
	uvalue = __wcstoul(base, INT_MAX, &__wStringRead, (void*)&wisc, &count, &negative, &overflow);
	
	if (end) *end = (wchar_t*)str + count;
	
	if (overflow || (!negative && uvalue > LONG_MAX) || (negative && uvalue > -LONG_MIN)) {
		svalue = (negative ? -LONG_MIN : LONG_MAX);
		errno = ERANGE;
	} else {
		svalue = negative ? (long)-uvalue : (long)uvalue;
    }
	
	return svalue;
}

//unused
void wcstoll(){
}

//unused
void watoi(){
}

//unused
void watol(){
}
