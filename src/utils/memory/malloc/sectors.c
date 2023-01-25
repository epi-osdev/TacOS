#include "memory/malloc/sectors.h"
#include "memory/malloc/datas.h"
#include "drivers/heap.h"

size_t padding_size(size_t size)
{
    if (size % BLOCK_SIZE != 0)
        size += BLOCK_SIZE - (size % BLOCK_SIZE);
    return size;
}

header_t *get_first_block()
{
    void *heap_start = get_heap_addr();
    header_t *header = (header_t *)heap_start;

    while (header->next != NULL)
        header = header->next;
    header->next = (header_t *)((uint8_t *)header + header->size + sizeof(header_t));
    header = header->next;
    return header;
}

void init_block(header_t *header, size_t size)
{
    header->size = size + 1;
    header->free = 0;
    header->next = NULL;
    header->ptr = header + sizeof(header_t);
}