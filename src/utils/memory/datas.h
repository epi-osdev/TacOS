#ifndef __TOS_UTILS_MEMORY_DATAS_H__
    #define __TOS_UTILS_MEMORY_DATAS_H__

    #include "types.h"
    
    #define MEMORY_BASE_ADRESS 0x400000
    
    #define USED_FLAG   0x1
    #define FREE_FLAG   0x0

    #define BLOCK_SIZE  32

struct mem_block {
    uint32_t size;
    uint32_t flag;
    uint32_t has_next;
} __attribute__((packed));

void *mem_base_addr;

#endif