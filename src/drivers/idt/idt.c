#include "drivers/idt/config.h"
#include "drivers/idt/datas.h"
#include "VGA.h"

static idt_entry_t idt[IDT_SIZE] = {0};
static idt_descriptor_t idt_descriptor = {
    .size = sizeof(idt_entry_t) * IDT_SIZE - 1,
    .idt = idt
};

void lidt(void)
{
    asm("lidt (%0)" : : "m" (idt_descriptor));
}

void create_idt_entry(uint8_t index, void *call, uint16_t segment, uint8_t flags)
{
    idt[index] = (idt_entry_t) {
        .call_low = (uint32_t) call & 0xffff,
        .segment = segment,
        .always_null = 0,
        .flags = flags,
        .call_high = (uint32_t) call >> 16
    };
}

void enable_all_idt_entries(void)
{
    for (size_t i = 0; i < IDT_SIZE; i++) {
        idt[i].flags |= IDT_FLAG_PRESENT;
    }
}

void disable_entry(uint8_t index)
{
    idt[index].flags &= ~IDT_FLAG_PRESENT;
}

void enable_entry(uint8_t index)
{
    idt[index].flags |= IDT_FLAG_PRESENT;
}

