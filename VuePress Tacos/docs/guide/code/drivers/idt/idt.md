# Idt

## INTRODUCTION <a name="introduction"></a>

This file explains the code of the [init.c](../../../../src/drivers/idt/idt.c) file.

# TABLE OF CONTENTS

- [INTRODUCTION](#introduction)
- [API](#api)
    - [lidt](#lidt)
    - [create_idt_entry](#create_idt_entry)
    - [enable_all_idt_entries](#enable_all_idt_entries)
    - [disable_entry](#disable_entry)
    - [enable_entry](#enable_entry)
- [CODE EXPLANATION](#code-explanation)

# API <a name="api"></a>

This file provides functions to initialize, manage and load the IDT.

### lidt <a name="#lidt"></a>

The `lidt` function is used to load the IDT in the CPU. It's an asm wrapper of the `lidt` instruction.
Here is the prototype:
```c
void lidt(void);
```

### create_idt_entry <a name="#create_idt_entry"></a>

The `create_idt_entry` function is used to create an IDT entry. It's used to fill the IDT with the function `fill_idt_entries`.
Here is the prototype:
```c
void create_idt_entry(uint8_t index, void *call, uint16_t selector, uint8_t flags);
```
It has 4 parameters:
- `index`: the index of the entry in the IDT
- `call`: the function to call when the interrupt is triggered
- `selector`: the selector of the segment
- `flags`: the flags of the entry

### enable_all_idt_entries <a name="#enable_all_idt_entries"></a>

The `enable_all_idt_entries` function is used to enable all the IDT entries. It's used to fill the IDT with the function `fill_idt_entries`.
Here is the prototype:
```c
void enable_all_idt_entries(void);
```

### disable_entry <a name="#disable_entry"></a>

The `disable_entry` function is used to disable an IDT entry. It's used to fill the IDT with the function `fill_idt_entries`.
Here is the prototype:
```c
void disable_entry(uint8_t index);
```
It has 1 parameter:
- `index`: the index of the entry in the IDT

### enable_entry <a name="#enable_entry"></a>

The `enable_entry` function is used to enable an IDT entry. It's used to fill the IDT with the function `fill_idt_entries`.
Here is the prototype:
```c
void enable_entry(uint8_t index);
```
It has 1 parameter:
- `index`: the index of the entry in the IDT

# CODE EXPLANATION <a name="code-explanation"></a>

Let's see how the code works.
The firsts interesting things in the file is thoses lines:
```c
static idt_entry_t idt[IDT_SIZE] = {0};
static idt_descriptor_t idt_descriptor = {
    .size = sizeof(idt_entry_t) * IDT_SIZE - 1,
    .idt = idt
};
```
It's two static global variables. The first one is the IDT, the second one is the IDT descriptor. The `idt` variable is an array of `idt_entry_t` structures. It represents the true IDT that the CPU will use. The `idt_descriptor` variable is a structure that contains the size of the IDT and the address of the IDT. It's used to load the IDT in the CPU.

All the other functions are getter/setter to access the IDT and the IDT descriptor.
