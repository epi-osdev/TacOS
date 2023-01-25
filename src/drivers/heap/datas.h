#ifndef __TOS_DRIVERS_HEAP_DATAS_H__
    #define __TOS_DRIVERS_HEAP_DATAS_H__

    #define HEAP_START 0x100000

typedef struct heap_s {
    void *start;
    void *end;
    void *current;
} heap_t;

#endif