#ifndef NW4R_SND_CHANNEL_MANAGER_H
#define NW4R_SND_CHANNEL_MANAGER_H
#include <nw4r/snd/snd_Channel.h>
#include <nw4r/snd/snd_InstancePool.h>
#include <nw4r/types_nw4r.h>

namespace nw4r {
namespace snd {
namespace detail {

class ChannelManager {
public:
    static ChannelManager& GetInstance();

    u32 GetRequiredMemSize();

    void Setup(void* pWork, u32 workSize);
    void Shutdown();

    Channel* Alloc();
    void Free(Channel* pChannel);

    void UpdateAllChannel();

private:
    ChannelManager();
    ~ChannelManager() {}

private:
    InstancePool<Channel> mPool; // at 0x0
    ChannelList mChannelList;    // at 0x4
    bool mInitialized;           // at 0x10
    u32 mChannelCount;           // at 0x14
    void* mMem;                  // at 0x18
    u32 mMemSize;                // at 0x1C
};

} // namespace detail
} // namespace snd
} // namespace nw4r

#endif