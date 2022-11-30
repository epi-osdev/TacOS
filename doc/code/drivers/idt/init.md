# INTRODUCTION <a name="introduction"></a>

This file contains the documentation of the [init.c](../../../../src/drivers/idt/init.c) file.

The init(.c/.h) files are used to initialize the IDT. It's the first step to use the IDT.

# TABLE OF CONTENTS

- [INTRODUCTION](#introduction)
- [API](#api)
    - [idt_init](#idt_init)
- [CODE EXPLANATION](#code-explanation)

# API <a name="api"></a>

This file provides functions to initialize the IDT.

### idt_init <a name="#idt-init"></a>

The `idt_init` function is used to initialize the IDT. It's filling the IDT with callback that's redirect to C handler functions in the [handler.c](../../../../src/drivers/idt/handler.c) file.
Here is the prototype:
```c
void idt_init(void);
```

# CODE EXPLANATION <a name="code-explanation"></a>

The `idt_init` function is used to initialize the IDT. It's filling the IDT with callback that's redirect to C handler functions in the [handler.md](handler.md) file.
Here is the code of the function:
```c
void idt_init(void)
{
    fill_idt_entries();
    enable_all_idt_entries();
    remap_pic();
    disable_entry(0x80);
    lidt();
    sti();
}
```
Step by step:
- `fill_idt_entries` is used to fill the IDT with the callback that's redirect to C handler functions in the [handler.md](handler.md) file. 
- `enable_all_idt_entries` is used to enable all the IDT entries. It's applying the flag IDT_FLAG_PRESENT to all the IDT entries. Doc: [datas.md](datas.md)
- `remap_pic` is used to remap the PIC. It's used to avoid conflict with the IDT entries. Doc: [pic.md](../pic.md)
- `disable_entry(0x80)` is used to disable the entry 0x80. It's used to avoid conflict with the syscall. We need to disable it because we don't use the syscall in this project.
- `lidt` is used to load the IDT in the CPU. It's an asm wrapper of the `lidt` instruction.
- `sti` is used to enable the interrupts. It's an asm wrapper of the `sti` instruction.

We also have static functions in this file:

```c
static void fill_idt_entries(void)
```
`fill_idt_entries` is used to fill the IDT with the callback that's redirect to C handler functions in the [handler.md](handler.md) file. It sets the IDT entries line by line with the function `set_idt_entry`. Doc: [idt.md](idt.md).

```c
static void sti(void)
```
`sti` is used to enable the interrupts. It's an asm wrapper of the `sti` instruction.
