#include "memory/datas.h"
#include "memory/flags.h"

static void fill_block(struct mem_block *block, size_t size)
{
    *block = (struct mem_block){
        .flag = USED_FLAG,
        .size = size + sizeof(struct mem_block),
        .has_next = 0
    };
}

static size_t align(size_t size)
{
    return (size + BLOCK_SIZE - 1) & ~(BLOCK_SIZE - 1);
}

static struct mem_block *find_new_block(size_t size)
{
    struct mem_block *block = (struct mem_block *)mem_base_addr;

    while (block->has_next) {
        if (is_free(block) && block->size >= size)
            return block;
        block = (struct mem_block *)((char *)block + block->size);
    }
    if (is_free(block) && block->size >= size)
        return block;
    block->has_next = 1;
    block = (struct mem_block *)((char *)block + block->size);
    return block;
}

void *malloc(size_t size)
{
    size_t aligned_size = align(size);
    struct mem_block *block = find_new_block(aligned_size);

    fill_block(block, aligned_size);
    return (void *)((char *)block + sizeof(struct mem_block));
}
