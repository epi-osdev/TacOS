#ifndef __EOS_DRIVERS_IDT_IDT_H__
    #define __EOS_DRIVERS_IDT_IDT_H__

    #include "types.h"

/**
 * @brief load the IDT with the descriptor.
 * It's a wrapper of the lidt instruction.
*/
void lidt(void);

/**
 * @brief Create an IDT entry.
 * @param index The index of the IDT entry.
 * @param call The address of the function to call when the interrupt is triggered.
 * @param selector The selector of the segment.
 * @param flags The type and attributes of the entry.
*/
void create_idt_entry(uint8_t index, void *call, uint16_t segment, uint8_t flags);

/**
 * @brief Enable all the interrupts. It's adding the FLAG 0x80
 * to all the IDT entries.
*/
void enable_all_idt_entries(void);

/**
 * @brief Disable all the interrupts. It's removing the FLAG 0x80
 * @param index The index of the IDT entry.
*/
void disable_entry(uint8_t index);

/**
 * @brief Enable the interrupts index. It's adding the FLAG 0x80
 * @param index The index of the IDT entry.
*/
void enable_entry(uint8_t index);

#endif
