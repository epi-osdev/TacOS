#include "memory/datas.h"

int is_free(struct mem_block *block)
{
    return block->flag == FREE_FLAG;
}