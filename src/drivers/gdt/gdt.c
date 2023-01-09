#include "drivers/gdt/gdt.h"

static gdt_entry_t gdt[NO_GDT_DESCRIPTORS * 20] = {0};

void gdt_set_entry(uint8_t index, base_t base, uint32_t limit, uint8_t access, uint8_t gran)
{
    gdt[index] = (gdt_entry_t) {
        .segment_limit = limit & 0xffff,
        .base_low = base.low,
        .base_middle = base.middle,
        .access = access,
        .granularity = ((limit >> 16) & 0x0f) | (gran & 0x10),
        .base_high = base.high
    };
}
