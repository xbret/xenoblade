#include "nw4r/snd/snd_adpcm.h"
#include <limits.h>

namespace nw4r
{
    namespace snd
    {
        namespace detail
        {
            s16 DecodeDspAdpcm(AXPBADPCM* pcm, u8 param2){
                int a1 = pcm->a[(s16)(pcm->pred_scale >> 4)][0];
                int a2 = pcm->a[(s16)(pcm->pred_scale >> 4)][1];
                int val = (s16)a1 * (s16)pcm->yn1;
                val += (s16)a2 * (s16)pcm->yn2;
                val += ((s16)(1 << (pcm->pred_scale & 0xF))) * ((s16)(param2  << 12) >> 1);
                val >>= 10;
                val += 1;
                val >>= 1;
                
                if(val > SHRT_MAX){
                    val = SHRT_MAX;
                }else if(val < SHRT_MIN){
                    val = SHRT_MIN;
                }

                pcm->yn2 = pcm->yn1;
                pcm->yn1 = val;
                return val;
            }
        }
    }
}
