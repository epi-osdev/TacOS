# Datas

## INTRODUCTION <a name="introduction"></a>

This file explains all the data structures used by the [datas.h](../../../../src/drivers/idt/datas.h) file
This file contains all the data structures used by the IDT driver.

# TABLE OF CONTENTS

- [INTRODUCTION](#introduction)
- [DATA STRUCTURES](#data-structure)
    - [idt_entry_t](#idt_entry_t)
    - [idt_descriptor_t](#idt_descriptor_t)
    - [registers_t](#registers_t)
    - [IDT_FLAGS](#idt-flags)
    - [handler_t](#handler_t)

# DATA STRUCTURES <a name="data-structure"></a>

### idt_entry_t <a name="idt_entry_t"></a>

This is the structure that represents an entry in the IDT table.
In theory, the IDT descriptor is 8 bytes long, in PM, it contains all the fields:
- `call_low`: the low 16 bits of the asm callback address (2 bytes)
- `segment`: the segment selector (2 bytes)
- `flags`: the flags (1 byte)
- `call_high`: the high 16 bits of the asm callback address (2 bytes)
Here is the C implementation:
```c
typedef struct idt_entry_s {
    uint16_t call_low;
    uint16_t segment;
    uint8_t always_null;
    uint8_t flags;
    uint16_t call_high;
} __attribute__((packed)) idt_entry_t;
```
We need the `__attribute__((packed))` because the structure is not aligned on 4 bytes. If we don't use this attribute, the compiler will add padding bytes to align the structure on 4 bytes. In this case, the structure will be 12 bytes long instead of 8 bytes.

### idt_descriptor_t <a name="idt_descriptor_t"></a>

The IDT descriptor is a structure that contains the IDT table address and the size of the table. It's the structure that's provided to the `lidt` instruction.
Description of the structure:
- `size`: the size of the IDT table (2 bytes)
- `base`: the address of the IDT table (4 bytes)
Here is the C implementation:
```c
typedef struct idt_descriptor_s {
    uint16_t size;
    idt_entry_t *idt;
} __attribute__((packed)) idt_descriptor_t;
```
We have an `idt_entry_t *` because the IDT table is an array of `idt_entry_t` structures. It's more explicit to use a pointer instead of an uint32_t.
We also need the `__attribute__((packed))` because the structure is not aligned on 4 bytes. If we don't use this attribute, the compiler will add padding bytes to align the structure on 4 bytes. In this case, the structure will be 8 bytes long instead of 6 bytes.

### registers_t <a name="registers_t"></a>

This structure is used to store the registers values when an interrupt occurs. Datas will be pushed on the stack by the CPU when an interrupt occurs.
Here is the C implementation:
```c
typedef struct registers_s {
    uint32_t ds;
    uint32_t edi, esi, ebp, useless, ebx, edx, ecx, eax;
    uint32_t interrupt, error;
    uint32_t eip, cs, eflags, esp, ss;
} __attribute__((packed)) registers_t;
```

### IDT_FLAGS <a name="idt-flags"></a>

This is a list of flags that can be used to set the flags field of the `idt_entry_t` structure.
Here is the C implementation:
```c
typedef enum {
    IDT_FLAG_GATE_32BIT_INT     = 0xe,
    IDT_FLAG_RING0              = (0 << 5),
    IDT_FLAG_PRESENT            = 0x80
} IDT_FLAGS;
```
Here is the list of flags:
- `IDT_FLAG_GATE_32BIT_INT`: this flag is used to set the interrupt gate type. It's the only type of gate that we use.
- `IDT_FLAG_RING0`: this flag is used to set the privilege level of the interrupt. We use the ring 0 because we don't want to use the ring 3.
- `IDT_FLAG_PRESENT`: this flag is used to set the interrupt as present. If the interrupt is not present, the CPU will throw an exception.

### handler_t <a name="handler_t"></a>

This is the type of the interrupt handler. It's a function that takes a `registers_t *` as parameter and returns nothing. It will be called by the C interrupt handlers, each interrupt will call a specific handler.
Here is the C implementation:
```c
typedef void (*handler_t)(registers_t *);
```
