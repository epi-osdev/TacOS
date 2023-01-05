#include "drivers/gdt/gdt.h"

static gdt_entry_t gdt[NO_GDT_DESCRIPTORS] = {0};

void gdt_set_entry(uint8_t index, void *call, uint16_t segment, uint8_t flags)
{
    gdt[index].segment_limit = 0xffff;
    gdt[index].base_low = (uint32_t)call & 0xffff;
    gdt[index].base_middle = ((uint32_t)call >> 16) & 0xff;
    gdt[index].access = flags;
    gdt[index].granularity = 0xcf;
    gdt[index].base_high = ((uint32_t)call >> 24) & 0xff;
}
