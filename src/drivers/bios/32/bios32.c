#include "bios32.h"
#include "drivers/idt.h"
#include "drivers/gdt.h"
#include "drivers/bios.h"
#include "memory.h"

static gdt_descriptor_t gdt32 = {0};
static idt_descriptor_t idt32 = {0};

void bios32_init()
{
    gdt_set_entry(6, (base_t){0, 0, 0}, 0xffffffff, 0x9a, 0x0f);        // Adding two more entries to the GDT
    gdt_set_entry(7, (base_t){0, 0, 0}, 0xffffffff, 0x92, 0x0f);
    gdt32.base_address = (uint32_t)get_gdt();                                    // Creating new gdt
    gdt32.limit = sizeof(gdt_entry_t) * NO_GDT_DESCRIPTORS - 1;
    idt32.idt = 0;                                                     // Creating new idt
    idt32.size = 0x3ff;
}

void bios32_service(uint8_t interrupt, regs16_t *in, regs16_t *out)
{
    void *offset = (void *)0x7c00;
    void (*exec_bios32_function)() = (void *)0x7c00;

    memcpy(&gdt_entries_32, get_gdt(), sizeof(gdt_entry_t) * NO_GDT_DESCRIPTORS);                          // copy our GDT entries g_gdt to gdt_entries_32(bios32_call.asm)
    gdt32.base_address = (uint32_t)REBASE_ADDRESS(&gdt_entries_32);              // set base of gdt_entries_32(bios32_call.asm) starting from 0x7c00
    memcpy(&bios32_gdt_ptr, &gdt32, sizeof(gdt_descriptor_t));                       // copy gdt32 to bios32_gdt_ptr(bios32_call.asm)
    memcpy(&bios32_idt_ptr, &idt32, sizeof(regs16_t));                // copy idt32 to bios32_regs16_t(bios32_call.asm)
    memcpy(&bios32_in_reg16_ptr, in, sizeof(regs16_t));               // copy all 16 bit in registers to bios32_in_reg16_ptr(bios32_call.asm)
    memcpy(&bios32_int_number_ptr, &interrupt, sizeof(uint8_t));                 // copy bios interrupt number to bios32_int_number_ptr(bios32_call.asm)
    memcpy(offset, BIOS32_START, (uint32_t)BIOS32_END - (uint32_t)BIOS32_START);      // copy bios32_call.asm code to offset address
    exec_bios32_function();                                                 // execute the code from 0x7c00
    void *in_reg16_address = REBASE_ADDRESS(&bios32_out_reg16_ptr);         // copy output registers to out
    memcpy(out, in_reg16_address, sizeof(regs16_t));
    gdt_init();                                                             // re-initialize the gdt and idt
    idt_init();
}

void int86(uint8_t interrupt, regs16_t *in, regs16_t *out)
{
    bios32_service(interrupt, in, out);
}
