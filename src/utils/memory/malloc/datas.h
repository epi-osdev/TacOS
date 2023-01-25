#ifndef __TOS_UTILS_MEMORY_MALLOC_DATAS_H__
    #define __TOS_UTILS_MEMORY_MALLOC_DATAS_H__

    #include "types.h"

    #define BLOCK_SIZE 32

typedef struct header_s {
    struct header_s *next;
    size_t size;
    uint8_t free;
    void *ptr;
    uint8_t data[0];
} __attribute__((packed)) header_t;

#endif