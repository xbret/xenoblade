#include "nw4r/snd/snd_adpcm.h"

namespace nw4r
{
    namespace snd
    {
        namespace detail
        {
            //https://decomp.me/scratch/JSetR
            s16 DecodeDspAdpcm(AXPBADPCM* pcm, u8 param2){
                int index = (pcm->pred_scale >> 4);
                int val = ((((pcm->yn1 * pcm->a[0][index]) + (pcm->yn2 * pcm->a[0][index + 1]) + (((param2 & 0xFF) << 12) >> 1) * (1 << (pcm->pred_scale & 0xF))) >> 10) + 1) >> 1;
                
                if(val > 0x7FFF){
                    val = 0x7FFF;
                }else if(val < -0x8000){
                    val = -0x8000;
                }

                pcm->yn2 = pcm->yn1;
                pcm->yn1 = val;
                return val;
            }
        }
    }
}