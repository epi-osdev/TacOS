#ifndef __BIOS32_H__
    #define __BIOS32_H__

    #include "types.h"

    #define REBASE_ADDRESS(x)  (void*)(0x7c00 + (void*)x - (uint32_t)BIOS32_START)

// defined in interrupts.asm
extern void BIOS32_START();
extern void BIOS32_END();
extern void *bios32_gdt_ptr;
extern void *gdt_entries_32;
extern void *bios32_idt_ptr;
extern void *bios32_in_reg16_ptr;
extern void *bios32_out_reg16_ptr;
extern void *bios32_int_number_ptr;

#endif