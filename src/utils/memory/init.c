#include "memory/datas.h"

void init_memory()
{
    mem_base_addr = (void *)MEMORY_BASE_ADRESS;
    struct mem_block *block = (struct mem_block *)mem_base_addr;

    *block  = (struct mem_block){
        .size = BLOCK_SIZE,
        .flag = FREE_FLAG,
        .has_next = 0
    };
}