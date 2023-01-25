#ifndef __TOS_UTILS_MEMORY_MALLOC_SECTORS_H__
    #define __TOS_UTILS_MEMORY_MALLOC_SECTORS_H__

    #include "types.h"
    #include "memory/malloc/datas.h"

header_t *get_first_block();
size_t padding_size(size_t size);
void init_block(header_t *header, size_t size);

#endif