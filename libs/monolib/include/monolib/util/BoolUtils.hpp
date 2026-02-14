#pragma once

namespace ml {
    /* Optimized way of calculating if only one of two bools are true. This may
    or may not have had a dedicated inline function, but it'll get one anyway */
    inline bool boolXor(bool a, bool b){
        return a ^ b;
    }
}
