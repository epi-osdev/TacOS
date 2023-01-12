#include "drivers/gdt/gdt.h"

static gdt_entry_t gdt[NO_GDT_DESCRIPTORS] = {0};
static gdt_descriptor_t gdt_descriptor = {0};

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

void gdt32_init()
{
    gdt_set_entry(0, (base_t) {0, 0, 0}, 0, 0, 0);
    gdt_set_entry(1, (base_t) {0, 0, 0}, 0xffffffff, 0x9a, 0xcf);
    gdt_set_entry(2, (base_t) {0, 0, 0}, 0xffffffff, 0x92, 0xcf);
    gdt_set_entry(3, (base_t) {0, 0, 0}, 0xffffffff, 0xfa, 0xcf);
    gdt_set_entry(4, (base_t) {0, 0, 0}, 0xffffffff, 0xf2, 0xcf);
    gdt_descriptor.limit = sizeof(gdt) - 1;
    gdt_descriptor.base_address = (uint32_t) &gdt;
}
