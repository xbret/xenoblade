int strlen(const char* str){
    int length = -1;
    char* p = str - 1;

    do{
        length++;
    }while(*++p);

    return length;
}