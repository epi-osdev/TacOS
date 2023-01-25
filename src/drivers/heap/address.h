#ifndef __TOS_DRIVERS_HEAP_ADDRESS_H__
    #define __TOS_DRIVERS_HEAP_ADDRESS_H__

    #include "types.h"

void *get_heap_addr();
void *get_heap_end();
void *get_heap_current();
void set_heap_addr(void *addr);
void add_heap_addr(int size);

#endif
