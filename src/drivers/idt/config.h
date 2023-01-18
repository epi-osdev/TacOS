#ifndef __TOS_DRIVERS_IDT_CONFIG_H__
    #define __TOS_DRIVERS_IDT_CONFIG_H__

/**
 * @brief The size of the IDT in entry (idt_entry_t)
*/
    #define IDT_SIZE 48

/**
 * @brief the GDT segment used by the IDT It's the kernel code segment
 * 0x08 = kernel code segment in GDT
*/
    #define IDT_USED_SEGMENT 0x08

#endif