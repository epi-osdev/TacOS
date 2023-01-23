#include "memory/malloc.h"

static uint8_t *heap = 0x100000;

void *malloc(size_t size)
{
    uint8_t *ret = heap;
    heap += size;
    return ret;
}
