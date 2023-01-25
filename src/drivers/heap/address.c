#include "drivers/heap/address.h"
#include "drivers/heap/datas.h"

static heap_t heap = {
    .start = (void *)HEAP_START,
    .end = (void *)(HEAP_START * 2),
    .current = (void *)HEAP_START,
};

void *get_heap_addr()
{
    return heap.start;
}

void *get_heap_end()
{
    return heap.end;
}

void *get_heap_current()
{
    return heap.current;
}

void set_heap_addr(void* addr)
{
    heap.start = addr;
}

void add_heap_addr(int size)
{
    heap.current += size;
}