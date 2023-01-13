#ifndef __TOS_DRIVERS_IDT_TYPES_H__
    #define __TOS_DRIVERS_IDT_TYPES_H__

    #include "types.h"

/**
 * @brief This is the structure of an IDT entry.
 * The IDT entry is 8 bytes long. (Protected mode)
 * The IDT contains IDT_SIZE entries.
 * It contains:
 *  - 2 bytes for the callback low bytes address
 *  - 2 bytes for the segment selector
 *  - 1 byte for the zero
 *  - 1 byte for the type
 *  - 2 bytes for the callback high bytes address
*/
typedef struct idt_entry_s {
    uint16_t call_low;
    uint16_t segment;
    uint8_t always_null;
    uint8_t flags;
    uint16_t call_high;
} __attribute__((packed)) idt_entry_t;

/**
 * @brief IDT descriptor, must be describe the IDT,
 * it contains:
 *  - size: the size of the IDT - 1
 *  - idt: the address of the IDT
 * The IDT descriptor is used by the lidt instruction.
*/
typedef struct idt_descriptor_s {
    uint16_t size;
    idt_entry_t *idt;
} __attribute__((packed)) idt_descriptor_t;

/**
 * @brief This is the structure of all the data provides by the STUB.
 * The STUB is a small functions that is called after the interrupts,
 * to make the transition from asm to C.
 * This structure contains all the content pushed in the stack
*/
typedef struct registers_s {
    uint32_t ds;
    uint32_t edi, esi, ebp, useless, ebx, edx, ecx, eax;
    uint32_t interrupt, error;
    uint32_t eip, cs, eflags, esp, ss;
} __attribute__((packed)) registers_t;

/**
 * @brief This is the enum of all the flags of the IDT entries.
 * The flags are used to describe the IDT entry permissions and othe
 * informations.
*/
typedef enum {
    IDT_FLAG_GATE_32BIT_INT     = 0xe,
    IDT_FLAG_RING0              = (0 << 5),
    IDT_FLAG_PRESENT            = 0x80
} IDT_FLAGS;

/**
 * @brief This is a typedef to a function pointer.
 * It will launch the function when an interrupt is called.
*/
typedef void (*handler_t)(registers_t *regs);

#endif
