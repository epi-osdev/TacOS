#include "drivers/idt/idt.h"
#include "drivers/idt/config.h"

static idt_entry_t idt[IDT_SIZE] = {0};
static idt_descriptor_t idt_descriptor = {
    .size = sizeof(idt_entry_t) * IDT_SIZE - 1,
    .idt = idt
};

void lidt(void)
{
    __asm__ __volatile__("lidt (%0)" : : "r" (&idt_descriptor));
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

void idt32_init()
{
    idt_descriptor.idt = 0;                                                     // Creating new idt
    idt_descriptor.size = 0x3ff;
}

idt_descriptor_t *get_idt_descriptor()
{
    return &idt_descriptor;
}