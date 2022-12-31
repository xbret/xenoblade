#ifndef _SINGLETON_HPP
#define _SINGLETON_HPP

template <typename T>
class Singleton {
public:
    static T* GetInstance(){
        static T instance;
        return &instance;
    }
};

#endif