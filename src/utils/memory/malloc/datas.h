#ifndef __TOS_UTILS_MEMORY_MALLOC_DATAS_H__
    #define __TOS_UTILS_MEMORY_MALLOC_DATAS_H__

    #include "types.h"

    #define BLOCK_SIZE 32

typedef struct header_s {
    unsigned long int size;
    uint8_t free;
} __attribute__((packed)) header_t;
#endif