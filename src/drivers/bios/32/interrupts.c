#include "drivers/bios/32/interrupts.h"
#include "drivers/bios/32/bios32.h"
#include "drivers/gdt.h"
#include "drivers/idt.h"
#include "VGA.h"
#include "memory.h"

static void (*exec_bios32_function)() = (void *)0x7c00;

void int86(uint8_t int_no, regs_16_t *regs_in, regs_16_t *regs_out)
{
    void *offset = (void *)0x7c00;

    char fmt[] = "Hello World";
    memcpy(&gdt_entries_32, get_gdt(), sizeof(gdt_entry_t) * NO_GDT_DESCRIPTORS);                          // copy our GDT entries g_gdt to gdt_entries_32(bios32_call.asm)
    set_gdt_descriptor_base_addr((uint32_t)REBASE_ADDRESS(&gdt_entries_32));              // set base of gdt_entries_32(bios32_call.asm) starting from 0x7c00
    memcpy(&bios32_gdt_ptr, get_gdt_descriptor(), sizeof(gdt_descriptor_t));                       // copy gdt32 to bios32_gdt_ptr(bios32_call.asm)
    memcpy(&bios32_idt_ptr, get_idt_descriptor(), sizeof(idt_descriptor_t));                // copy idt32 to bios32_idt_register_t(bios32_call.asm)
    memcpy(&bios32_in_reg16_ptr, regs_in, sizeof(regs_16_t));               // copy all 16 bit in registers to bios32_in_reg16_ptr(bios32_call.asm)
    memcpy(&bios32_int_number_ptr, &int_no, sizeof(uint8_t));                 // copy bios interrupt number to bios32_int_number_ptr(bios32_call.asm)
    memcpy(offset, BIOS32_START, (uint32_t)BIOS32_END - (uint32_t)BIOS32_START);      // copy bios32_call.asm code to offset address
    vga_printf_at(fmt, 0x0F, 20, 11);
    exec_bios32_function();
    vga_printf_at(fmt, 0x0F, 20, 12);
    void *in_reg16_address = REBASE_ADDRESS(&bios32_out_reg16_ptr);         // copy output registers to out
    memcpy(regs_out, in_reg16_address, sizeof(regs_16_t));
    gdt_init();                                                             // re-initialize the gdt and idt
    idt_init();

    //     void *offset = (void *)0x7c00;

    // memcpy(&gdt_entries_32, g_gdt, sizeof(g_gdt));                          // copy our GDT entries g_gdt to gdt_entries_32(bios32_call.asm)
    // gdt32.base_address = (u32)REBASE_ADDRESS(&gdt_entries_32);              // set base of gdt_entries_32(bios32_call.asm) starting from 0x7c00
    // memcpy(&bios32_gdt_ptr, &gdt32, sizeof(GDT_PTR));                       // copy gdt32 to bios32_gdt_ptr(bios32_call.asm)
    // memcpy(&bios32_idt_ptr, &idt32, sizeof(idt_register_t));                // copy idt32 to bios32_idt_register_t(bios32_call.asm)
    // memcpy(&bios32_in_reg16_ptr, in, sizeof(registers_16_t));               // copy all 16 bit in registers to bios32_in_reg16_ptr(bios32_call.asm)
    // memcpy(&bios32_int_number_ptr, &interrupt, sizeof(u8));                 // copy bios interrupt number to bios32_int_number_ptr(bios32_call.asm)
    // memcpy(offset, BIOS32_START, (u32)BIOS32_END - (u32)BIOS32_START);      // copy bios32_call.asm code to offset address
    // exec_bios32_function();                                                 // execute the code from 0x7c00
    // void *in_reg16_address = REBASE_ADDRESS(&bios32_out_reg16_ptr);         // copy output registers to out
    // memcpy(out, in_reg16_address, sizeof(registers_16_t));
    // gdt_init();                                                             // re-initialize the gdt and idt
    // isr_install();
}
