#ifndef NW4HBM_LYT_LAYOUT_H
#define NW4HBM_LYT_LAYOUT_H
#include <nw4hbm/types_nw4hbm.h>
#include <revolution/MEM/mem_allocator.h>

namespace nw4hbm
{
    namespace lyt
    {
        struct Layout
        {
            // TO-DO: Class members
            Layout();
            virtual ~Layout();
            virtual void Build(const void*, ResourceAccessor*);
            virtual void CreateAnimTransform();
            virtual void CreateAnimTransform(const void*, ResourceAccessor*);
            virtual void CreateAnimTransform(const AnimResource&, ResourceAccessor*);
            virtual void BindAnimation(AnimTransform*);
            virtual void UnbindAnimation(AnimTransform*);
            virtual void UnbindAllAnimation();
            virtual void BindAnimationAuto(const AnimResource&, ResourceAccessor*);
            virtual void SetAnimationEnable(AnimTransform*, bool);
            virtual void CalculateMtx(const DrawInfo&);
            virtual void Draw(const DrawInfo&);
            virtual void Animate(u32);
            virtual void SetTagProcessor(ut::TagProcessorBase<wchar_t>*);

            u32 unk4;
            u32 unk8;
            u32 unkC;
            Pane* unk10;
            u32 unk14;
            f32 unk18;
            f32 unk1C;

            static void FreeMemory(void *p)
            {
                MEMFreeToAllocator(mspAllocator, p);
            }

            static void * AllocMemory(size_t n)
            {
                return MEMAllocFromAllocator(mspAllocator, n);
            }

            template <typename T>
            static void DeleteArray(T *p, size_t n)
            {
                for (size_t i = 0; i < n; i++)
                    p[i].~T();

                FreeMemory(p);
            }

            template <typename T>
            static T * NewArray(size_t n)
            {
                T *array = (T *)AllocMemory(n * sizeof(T));

                for (size_t i = 0; i < n; i++)
                    new (&array[i]) T();

                return array;
            }

            template <typename T>
            static void DeleteObj(T *t)
            {
                t->~T();
                FreeMemory(t);
            }

            template <typename T>
            static T * NewObj()
            {
                T *obj = (T *)AllocMemory(sizeof(T));
                return new (obj) T();
            }

            static MEMAllocator *mspAllocator;
        };
    }
}

#endif
