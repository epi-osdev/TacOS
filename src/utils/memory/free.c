#include "memory/datas.h"

void free(void *ptr)
{
    struct mem_block *block = (struct mem_block *)((char *)ptr - sizeof(struct mem_block));

    block->flag = FREE_FLAG;
}
