#include "PowerPC_EABI_Support/MSL_C/MSL_Common/ansi_fp.h"

#define max_bits 511


static int __count_trailing_zerol(u32 n){
    return 32 - __cntlzw((n - 1) & ~n);
}

static int __count_trailing_zero(double n){
    u32* array = (u32*)&n;

    u32 hi = array[0] | 0x100000;
    u32 lo = array[1];
    int zeros = __count_trailing_zerol(lo);
    
    if (lo == 0) {
        return 32 + __count_trailing_zerol(hi);
    }
    return zeros;
}

static int __must_round(const decimal* d, int digits){
    u8 const* sigText = d->sig.text + digits;
            
    if (*sigText > 5) {
        return 1;
    } else if (*sigText < 5) {
        return -1;
    } 
        for(sigText++; sigText < d->sig.text + d->sig.length; sigText++){
            if (*sigText != 0) {
               return 1;
            }
        }
                  
        if ((d->sig.text[digits - 1] & 1) != 0) {
            return 1;
        }

        return -1;
}

static void __dorounddecup(decimal* d, int digits){
    u8* temp_r4_3 = d->sig.text;
    u8* var_r5 = temp_r4_3 + digits - 1;
                
    while(1){
        if (*var_r5 < 9) {
            *var_r5 += 1;
            break;
        }
        if (var_r5 == temp_r4_3) {
            *var_r5 = 1;
            d->exp++;
            break;
        }
        *var_r5-- = 0;
    }
}

static void __rounddec(decimal* d, int digits){
    if (digits > 0 && digits < d->sig.length) {
        int unkBool = __must_round(d,digits);
        d->sig.length = digits;
            
        if (unkBool >= 0) {
            __dorounddecup(d, digits);
        }
    }
}

//needed so that num2dec_internal doesn't inline this function
//TODO: try to eliminate this
#pragma dont_inline on
void __ull2dec(decimal* result, u64 val) {
    result->sign = 0;
    result->sig.length = 0;

   while(val != 0) {
        result->sig.text[result->sig.length++] = val % 10;
        val /= 10;
    }
    
    u8* var_r4 = result->sig.text;
    u8* var_r3 = result->sig.text + result->sig.length;

    while(var_r4 < --var_r3) {
        u8 temp_r5 = *var_r4;
        *var_r4++ = *var_r3;
        *var_r3 = temp_r5;
    }
    
    result->exp = result->sig.length - 1;
}
#pragma dont_inline off

void __timesdec(decimal* result, const decimal* d1, const decimal* d2) {
    u8 buffer[SIGDIGLEN * 2];
    u32 accumulator;
    int i;
    int j;
    int d1Index;
    int d2Index;
    const u8* d1SigTextPtr;
    const u8* d2SigTextPtr;
    u8* pDigit;
    u8* pCurDigit;
    u8* pMostSignificantDigit;
    u8* pLeastSignificantDigit;

    accumulator = 0;
    i = d1->sig.length + d2->sig.length - 1;
    pCurDigit = buffer + i + 1;
    pLeastSignificantDigit = pCurDigit;
    result->sign = 0;
    
    for(; i > 0; i--) {
        d2Index = d2->sig.length - 1;
        d1Index = i - d2Index - 1;
        
        if (d1Index < 0) {
            d1Index = 0;
            d2Index = i - 1;
        }
        
        j = d2Index + 1;
        d1SigTextPtr = d1->sig.text + d1Index;
        d2SigTextPtr = d2->sig.text + d2Index;
        
        if (j > d1->sig.length - d1Index) j = d1->sig.length - d1Index;
        
        for (; j > 0; j--) {
            accumulator += *d1SigTextPtr++ * *d2SigTextPtr--;
        }
        
        *--pCurDigit = accumulator % 10;
        accumulator /= 10;
    }
    
    result->exp = d1->exp + d2->exp;
    
    if (accumulator) {
        *--pCurDigit = accumulator;
        result->exp++;
    }

    for (i = 0; i < SIGDIGLEN && pCurDigit < pLeastSignificantDigit; i++) {
        result->sig.text[i] = *pCurDigit++;
    }
    result->sig.length = i;
    
    if (pCurDigit >= pLeastSignificantDigit) return;
    if (*pCurDigit < 5) return;
    if (*pCurDigit != 5) goto round_up;
    
    for (pDigit = pCurDigit + 1; pDigit < pLeastSignificantDigit; pDigit++) {
        if (*pDigit) goto round_up;
    }
    if ((pCurDigit[-1] & 1) == 0) return;
    
round_up:
    pMostSignificantDigit = result->sig.text;
    pCurDigit = pMostSignificantDigit + result->sig.length - 1;
    for (;;) {
        if (*pCurDigit < 9) {
            ++*pCurDigit;
            return;
        }
        if (pCurDigit == pMostSignificantDigit) {
            *pCurDigit = 1;
            result->exp++;
            return;
        }
        *pCurDigit-- = 0;
    }
}



void __str2dec(decimal* d, const char* s, short exp) {
    int i;
    const char* pCurChar;
    u8* pCurDigit;
    u8* pMostSignificantDigit;

    d->exp = exp;
    d->sign = 0;

    for (i = 0; i < SIGDIGLEN && *s; ) {
        d->sig.text[i++] = *s++ - '0';
    }
    d->sig.length = i;
    
    if (*s == 0) return;
    if (*s < 5) return;
    if (*s > 5) goto round_up;
    
    for (pCurChar = s + 1; *pCurChar; pCurChar++) {
        if (*pCurChar != '0') goto round_up;
    }
    if ((d->sig.text[i - 1] & 1) == 0) return;
    
round_up:
    pMostSignificantDigit = d->sig.text;
    pCurDigit = pMostSignificantDigit + d->sig.length - 1;
    for (;;) {
        if (*pCurDigit < 9) {
            ++*pCurDigit;
            return;
        }
        if (pCurDigit == pMostSignificantDigit) {
            *pCurDigit = 1;
            d->exp++;
            return;
        }
        *pCurDigit-- = 0;
    }
}


void __two_exp(decimal* result, long exp) {
    switch(exp){
        case -64:
            __str2dec(result,"542101086242752217003726400434970855712890625",-20);
        break;
        case -53:
             __str2dec(result,"11102230246251565404236316680908203125",-16);
        break;
        case -32:
            __str2dec(result,"23283064365386962890625",-10);
        break;
        case -16:
            __str2dec(result,"152587890625",-5);
        break;
        case -8:
            __str2dec(result,"390625",-3);
        break;
        case -7:
            __str2dec(result,"78125",-3);
        break;
        case -6:
            __str2dec(result,"15625",-2);
        break;
        case -5:
            __str2dec(result,"3125",-2);
        break;
        case -4:
            __str2dec(result,"625",-2);
        break;
        case -3:
            __str2dec(result,"125",-1);
        break;
        case -2:
            __str2dec(result,"25",-1);
        break;
        case -1:
            __str2dec(result,"5",-1);
        break;
        case 0:
            __str2dec(result,"1",0);
        break;
        case 1:
            __str2dec(result,"2",0);
        break;
        case 2:
            __str2dec(result,"4",0);
        break;
        case 3:
            __str2dec(result,"8",0);
        break;
        case 4:
            __str2dec(result,"16",1);
        break;
        case 5:
            __str2dec(result,"32",1);
        break;
        case 6:
            __str2dec(result,"64",1);
        break;
        case 7:
            __str2dec(result,"128",2);
        break;
        case 8:
            __str2dec(result,"256",2);
        break;
        default:
        decimal temp2, temp;

        __two_exp(&temp2,exp/2);
        __timesdec(result,&temp2,&temp2);
            
        if(exp & 1){
            temp = *result;
            if(exp > 0){
                __str2dec(&temp2,"2",0);
            }else{
                __str2dec(&temp2,"5",-1);
            }
            __timesdec(result,&temp,&temp2);
        }
        break;
    }
}

BOOL __equals_dec(const decimal* x, const decimal* y) {
    const decimal* xTemp = x;
    int index;
    
    if (x->sig.text[0] == 0) {
        return y->sig.text[0] == 0;
    }
    
    if (y->sig.text[0] == 0) {
        return x->sig.text[0] == 0;
    }
    
    if (x->exp == y->exp) {
        int xSigLength = x->sig.length;
        int ySigLength = y->sig.length;
        int minSigLength = x->sig.length;
        
        if (xSigLength > ySigLength) {
            minSigLength = ySigLength;
        }
        
        index = 0;
        
        for(int i = 0; i < minSigLength; i++){
            if (x->sig.text[index] != y->sig.text[index]) {
                return FALSE;
            }
            index++;
        }

        if (minSigLength == xSigLength) {
            xTemp = y;
        }
        
        for(int i = index; i < xTemp->sig.length; i++){
            if (xTemp->sig.text[index] != 0) {
                return FALSE;
            }
            
            index++;
        }

        return TRUE;
    }
    return FALSE;
}


BOOL __less_dec(const decimal* x, const decimal* y) {
    int index;

    if (x->sig.text[0] == 0) {
        u8 temp_r3 = y->sig.text[0];
        return ((u32) (-temp_r3 | temp_r3) >> 31);
    }
    
    if (y->sig.text[0] == 0) {
        return FALSE;
    }

    if (x->exp == y->exp) {
        int minSigLength = x->sig.length;
        
        if (minSigLength > y->sig.length) {
            minSigLength = y->sig.length;
        }
        index = 0;

        for(int i = 0; i < minSigLength; i++){
            u8 temp_r6 = y->sig.text[index];
            u8 temp_r0_4 = x->sig.text[index];
            
            if (x->sig.text[index] < y->sig.text[index]) {
                return TRUE;
            }else if (y->sig.text[index] < x->sig.text[index]) {
                return FALSE;
            }
            
            index++;
        }

        if (minSigLength == x->sig.length) {
            for(int i = index; i < y->sig.length; i++){
                if (y->sig.text[index] != 0) {
                    return TRUE;
                }
                index++;
            }
        }
        return FALSE;
    }

    return x->exp < y->exp;
}

void __minus_dec(decimal *result, const decimal *x, const decimal *y)
{
	int decLength, decExp;
	u8 *sigText, *sigText1, *sigText2;
	u8 const *ySigText, *ySigText1, *ySigText2;
    
	*result = *x;
	if (y->sig.text[0] == 0) return;
    
	decLength = result->sig.length;
	if (decLength < y->sig.length) decLength = y->sig.length;
    
	decExp = result->exp - y->exp;
	decLength += decExp;
    
	if (decLength > SIGDIGLEN) decLength = SIGDIGLEN;
    
	while (result->sig.length < decLength){
		result->sig.text[result->sig.length++] = 0;
    }
    
	sigText = result->sig.text;
	sigText1 = sigText + decLength;
    
	if (y->sig.length + decExp < decLength){
		sigText1 = sigText + (y->sig.length + decExp);
    }
    
	ySigText = y->sig.text;
	ySigText1 = ySigText + (sigText1 - sigText - decExp);
	ySigText2 = ySigText1;
    
	while (sigText1 > sigText && ySigText1 > ySigText){
		sigText1--;
		ySigText1--;
		if (*sigText1 < *ySigText1){
			u8 *k = sigText1 - 1;
			while (*k == 0) k--;
			while (k != sigText1){
				--*k;
				*++k += 10;
			}
		}
		*sigText1 -= *ySigText1;
	}

	if (ySigText2 - ySigText < y->sig.length){
		int round_down = 0;
		if (*ySigText2 < 5) round_down = 1;
		else if (*ySigText2 == 5) {
			u8 const *sigTextPtr = y->sig.text + y->sig.length;
            
			for (ySigText1 = ySigText2 + 1; ySigText1 < sigTextPtr; ySigText1++){
				if (*ySigText1 != 0) goto done;
            }
			sigText1 = sigText + (ySigText2 - ySigText) + decExp - 1;
			if (*sigText1 & 1) round_down = 1;
		}
		if (round_down){
			if (*sigText1 < 1){
				u8 *k = sigText1 - 1;
				while (*k == 0) k--;
				while (k != sigText1)
				{
					--*k;
					*++k += 10;
				}
			}
			*sigText1 -= 1;
		}
	}
done:
	for (sigText1 = sigText; *sigText1 == 0; ++sigText1){}
    
	if (sigText1 > sigText){
		u8 dl = (u8)(sigText1 - sigText);
		result->exp -= dl;
		sigText2 = sigText + result->sig.length;
		for (; sigText1 < sigText2; ++sigText1, ++sigText)
			*sigText = *sigText1;
		result->sig.length -= dl;
	}

	sigText = result->sig.text;
	for (sigText1 = sigText + result->sig.length; sigText1 > sigText;){
		sigText1--;
		if (*sigText1 != 0) break;
	}
	result->sig.length = (u8)(sigText1 - sigText + 1);
}

void __num2dec_internal(decimal* result, double n) {
    s8 sign = __signbitd(n) ? 1 : 0;
    
    
    if (n == 0) {
        result->sign = sign;
        result->exp = 0;
        result->sig.length = 1;
        result->sig.text[0] = 0;
        return;
    }
    
    if (__fpclassifyd(n) <= 2) {
        result->sign = sign;
        result->exp = 0;
        result->sig.length = 1;
        result->sig.text[0] = __fpclassifyd(n) == 1 ? 'N' : 'I';
        return;
    }
    
    if (sign != 0) {
        n = -n;
    }

    int exponent;
    double temp = frexp(n, &exponent);
    int temp_r29 = 53 - __count_trailing_zero(temp);
    decimal tempDec2, tempDec1;
    
    __two_exp(&tempDec1, exponent - temp_r29);
    __ull2dec(&tempDec2, ldexp(temp, temp_r29));
    __timesdec(result, &tempDec2, &tempDec1);
    result->sign = sign;
}


static inline int unkInline1(decimal* d, s16 digits){
    u8* sigText = d->sig.text;
    int unkBool;
            
    if (sigText[digits] > 5) {
        unkBool = 1;
    } else if (sigText[digits] < 5) {
        unkBool = -1;
    } else {
        u8* var_r3 = sigText + d->sig.length;
                
        for(u32 var_ctr = digits + 1; var_ctr < d->sig.length ; var_r3++, var_ctr++){
            if (*var_r3 != 0) {
               return 1;
            }
        }
                  
        unkBool = -1;
        if ((d->sig.text[d->sig.length - 1] & 1) != 0) {
            unkBool = 1;
        }
                
    }

    return unkBool;
}

//https://decomp.me/scratch/LEWxt dumb regswap issues
#ifdef NONMATCHING
void __num2dec(const decform* form, double val, decimal* d) {
    s16 digits = form->digits;
    int i;
    __num2dec_internal(d, val);
    
    if (d->sig.text[0] <= 9) {
        if (digits > SIGDIGLEN) {
            digits = SIGDIGLEN;
        }
        __rounddec(d, digits);

       while(d->sig.length < digits){
            d->sig.text[d->sig.length++] = 0;
        }
    
        d->exp -= d->sig.length - 1;

        for(i = 0; i < d->sig.length; i++) {
            d->sig.text[i] += 0x30;
        }
    }
}
#else
asm void __num2dec(const decform* form, double val, decimal* d){
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    lha r31, 2(r3)
    stw r30, 8(r1)
    mr r30, r4
    mr r3, r30
    bl __num2dec_internal
    lbz r0, 5(r30)
    cmplwi r0, 9
    bgt lbl_802BD4F8
    cmpwi r31, 0x24
    ble lbl_802BD3A8
    li r31, 0x24
lbl_802BD3A8:
    cmpwi r31, 0
    ble lbl_802BD494
    lbz r0, 4(r30)
    cmpw r31, r0
    bge lbl_802BD494
    addi r4, r30, 5
    lbzx r0, r4, r31
    add r3, r4, r31
    cmplwi r0, 5
    ble lbl_802BD3D8
    li r4, 1
    b lbl_802BD434
lbl_802BD3D8:
    bge lbl_802BD3E4
    li r4, -1
    b lbl_802BD434
lbl_802BD3E4:
    lbz r0, 4(r30)
    addi r3, r3, 1
    add r4, r4, r0
    subf r0, r3, r4
    mtctr r0
    cmplw r3, r4
    bge lbl_802BD41C
lbl_802BD400:
    lbz r0, 0(r3)
    cmpwi r0, 0
    beq lbl_802BD414
    li r4, 1
    b lbl_802BD434
lbl_802BD414:
    addi r3, r3, 1
    bdnz lbl_802BD400
lbl_802BD41C:
    add r3, r31, r30
    li r4, -1
    lbz r0, 4(r3)
    clrlwi. r0, r0, 0x1f
    beq lbl_802BD434
    li r4, 1
lbl_802BD434:
    cmpwi r4, 0
    stb r31, 4(r30)
    blt lbl_802BD494
    addi r4, r30, 5
    li r0, 0
    add r5, r4, r31
    addi r5, r5, -1
lbl_802BD450:
    lbz r3, 0(r5)
    cmplwi r3, 9
    bge lbl_802BD468
    addi r0, r3, 1
    stb r0, 0(r5)
    b lbl_802BD494
lbl_802BD468:
    cmplw r5, r4
    bne lbl_802BD488
    li r0, 1
    stb r0, 0(r5)
    lha r3, 2(r30)
    addi r0, r3, 1
    sth r0, 2(r30)
    b lbl_802BD494
lbl_802BD488:
    stb r0, 0(r5)
    addi r5, r5, -1
    b lbl_802BD450
lbl_802BD494:
    li r5, 0
    b lbl_802BD4B0
lbl_802BD49C:
    lbz r4, 4(r30)
    add r3, r30, r4
    addi r0, r4, 1
    stb r5, 5(r3)
    stb r0, 4(r30)
lbl_802BD4B0:
    lbz r3, 4(r30)
    cmpw r3, r31
    blt lbl_802BD49C
    addi r3, r3, -1
    lha r0, 2(r30)
    extsh r3, r3
    li r5, 0
    subf r0, r3, r0
    sth r0, 2(r30)
    b lbl_802BD4EC
lbl_802BD4D8:
    add r4, r30, r5
    addi r5, r5, 1
    lbz r3, 5(r4)
    addi r0, r3, 0x30
    stb r0, 5(r4)
lbl_802BD4EC:
    lbz r0, 4(r30)
    cmpw r5, r0
    blt lbl_802BD4D8
lbl_802BD4F8:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr 
}
#endif



double __dec2num(const decimal *d)
{
	if (d->sig.length <= 0) return copysign(0.0, d->sign == 0 ? 1.0 : -1.0);
	switch (d->sig.text[0]){
	case '0':
		return copysign(0.0, d->sign == 0 ? 1.0 : -1.0);
	case 'I':
		return copysign((double)INFINITY, d->sign == 0 ? 1.0 : -1.0);
	case 'N':
		double result;
		u64 *floatPtr = (u64*)&result;

		*floatPtr = 0x7FF0000000000000;
		if (d->sign)
			*floatPtr |= 0x8000000000000000;

		*floatPtr |= 0x8000000000000;
		return result;
	}
	
	static double pow_10[8] = {1e1, 1e2, 1e3, 1e4, 1e5, 1e6, 1e7, 1e8};

	decimal dec = *d;
	u8 *sigTextIndex = dec.sig.text;
	u8 *sigTextEnd = sigTextIndex + dec.sig.length;
	double guess1;
	int exponent;
    
	for (; sigTextIndex < sigTextEnd; ++sigTextIndex)
		*sigTextIndex -= '0';
	dec.exp += dec.sig.length - 1;
	exponent = dec.exp;

	decimal max;
    
	__str2dec(&max, "179769313486231580793728714053034151", 308); 
	if (__less_dec(&max, &dec)){
        return copysign((double)INFINITY, d->sign == 0 ? 1.0 : -1.0);
    }

	sigTextIndex = dec.sig.text;
	guess1 = *sigTextIndex++;
	while (sigTextIndex < sigTextEnd){
		u32 val = 0;
		int j;
		double temp1, temp2;
		int digits = (int)(sigTextEnd - sigTextIndex) % 8;
		if (digits == 0)
			digits = 8;
		for (j = 0; j < digits; ++j, ++sigTextIndex)
			val = val * 10 + *sigTextIndex;
		temp1 = guess1 * pow_10[digits-1];
		temp2 = temp1 + val;
		if (val != 0 && temp1 == temp2)
			break;
		guess1 = temp2;
		exponent -= digits;
	}
    
	if(exponent < 0){
        guess1 /= pow(5.0, -exponent);
    }else{
        guess1 *= pow(5.0, exponent);
    }
	guess1 = ldexp(guess1, exponent);
	if (__fpclassifyd(guess1) == 2) guess1 = DBL_MAX;
	

	decimal var1, var2, var3, var4;
	double guess2;
	u64* temp = (u64*)&guess2;
	int var5 = 0;
    
	__num2dec_internal(&var1, guess1);
    
	if (__equals_dec(&var1, &dec)) goto done;
	if (__less_dec(&var1, &dec)) var5 = 1;
    
	guess2 = guess1; 
    
	while (1){
		if (var5){
			++*temp;
			if (__fpclassifyd(guess2) == 2) goto done;
		} else --*temp;
		__num2dec_internal(&var2, guess2);
		if (var5 && !__less_dec(&var2, &dec)) break;
		else if (!var5 && !__less_dec(&dec, &var2)){
			var3 = var1;
			var1 = var2;
			var2 =  var3;
			double temp = guess1;
			guess1 = guess2;
			guess2 = temp;
			break;
		}
		var1 = var2;
		guess1 = guess2;
	}
        
	__minus_dec(&var3, &dec, &var1);
	__minus_dec(&var4, &var2, &dec);
        
	if (__equals_dec(&var3, &var4)){
		if (*(u64*)&guess1 & 1) guess1 = guess2;
	} else if (!__less_dec(&var3, &var4)) guess1 = guess2;
	
done:
	if (dec.sign) guess1 = -guess1;
	return guess1;
}