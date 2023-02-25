#include "PowerPC_EABI_Support/MSL_C/MSL_Common/secure_error.h"

msl_constraint_handler __msl_constraint_handler;

void __msl_runtime_constraint_violation_s(int param1, int param2, int param3){
    if(__msl_constraint_handler != NULL){
        __msl_constraint_handler(param1,param2,param3);
    }
}