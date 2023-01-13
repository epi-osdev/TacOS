#include "drivers/gdt/gdt.h"

static gdt_entry_t gdt[NO_GDT_DESCRIPTORS] = {0};
static gdt_descriptor_t gdt_descriptor = {
    .limit = sizeof(gdt) - 1,
    .base_address = (uint32_t) &gdt
};

void gdt_set_entry(uint8_t index, base_t base, uint32_t limit, uint8_t access, uint8_t gran)
{
    gdt[index] = (gdt_entry_t) {
        .segment_limit = limit & 0xffff,
        .base_low = base.low,
        .base_middle = base.middle,
        .access = access,
        .granularity = ((limit >> 16) & 0x0f) | (gran & 0xf0),
        .base_high = base.high
    };
}

void gdt_init()
{
    // gdt_descriptor.limit = sizeof(gdt) - 1;
    // gdt_descriptor.base_address = (uint32_t) &gdt;
    gdt_set_entry(0, (base_t){0, 0, 0}, 0, 0, 0);                   // null segment
    gdt_set_entry(1, (base_t){0, 0, 0}, 0xffffffff, 0x9a, 0xcf);    // code segment
    gdt_set_entry(2, (base_t){0, 0, 0}, 0xffffffff, 0x92, 0xcf);    // data segment
    gdt_set_entry(3, (base_t){0, 0, 0}, 0xffffffff, 0xfa, 0xcf);    // user code segment
    gdt_set_entry(4, (base_t){0, 0, 0}, 0xffffffff, 0xf2, 0xcf);    // user data segment
    load_gdt((uint32_t)&gdt_descriptor);
}

void gdt32_init()
{
    gdt_set_entry(6, (base_t){0, 0, 0}, 0xffffffff, 0x9a, 0x0f);        // Adding two more entries to the GDT
    gdt_set_entry(7, (base_t){0, 0, 0}, 0xffffffff, 0x92, 0x0f);
    // gdt_descriptor.limit = sizeof(gdt) - 1;
    // gdt_descriptor.base_address = (uint32_t) &gdt;
}

gdt_entry_t *get_gdt()
{
    return gdt;
}

void set_gdt_descriptor_base_addr(uint32_t base_addr)
{
    gdt_descriptor.base_address = base_addr;
}

gdt_descriptor_t *get_gdt_descriptor()
{
    return &gdt_descriptor;
}