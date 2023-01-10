#ifndef __TOS_DRIVERS_GDT_BIOS_H__
    #define __TOS_DRIVERS_GDT_BIOS_H__

extern void BIOS32_START();
extern void BIOS32_END();
extern void *bios32_gdt_ptr;
extern void *gdt_entries_32;
extern void *bios32_idt_ptr;
extern void *bios32_in_reg16_ptr;
extern void *bios32_out_reg16_ptr;
extern void *bios32_int_number_ptr;

void int86();

#endif