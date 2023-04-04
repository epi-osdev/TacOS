# Explanations about the IDT

## INTRODUCTION <a name="introduction"></a>

This files explains how to use the [IDT API](../../../src/drivers/idt.h), it's also explaining all the theory behind it.

# TABLE OF CONTENTS

- [INTRODUCTION](#introduction)
- [THEORY](#theory)
- [API](#api)

# THEORY <a name="theory"></a>

The Interrupt Descriptor Table (IDT) is a data structure used by the x86 architecture to implement an interrupt vector table, i.e. a table of interrupt and exception handlers. The IDT is a special type of [GDT](https://en.wikipedia.org/wiki/Global_Descriptor_Table) (Global Descriptor Table) that contains the address of the [Interrupt Service Routines](https://en.wikipedia.org/wiki/Interrupt_service_routine) (ISRs) and [Interrupt Request Handlers](https://en.wikipedia.org/wiki/Interrupt_request_(PC_architecture)) (IRQs).

The interrupts are the main parts of the communication between the CPU and the kernel. But what are they? How do they work? How can we use them? This document will try to answer these questions.

What are interrupts ?
When you are doing something wrong like dividing by zero, the CPU will send an interrupt to the kernel. The kernel will be processed in priority order. This is the main usage of the interrupts, but you can also program your own interrupts. `ISR` (Interrupts Sub Routine) is the interrupts used by the CPU. `IRQ` (Interrupt Request) is the interrupts used by the hardware (programmable interrupts). `ISR` and `IRQ` are managed by the `IDT` (Interrupt Descriptor Table). It's two names for the same thing.

How do they work ?
In PM there are `256` possibles interrupts. The first `32` are reserved for the CPU (to handle basic things as the division by zero). The other `224` are free to use. We cannot program the behaving of the interrupts but we can define `callbacks`, a callback is a function that will be called when the interrupt is triggered. With this, when the interrupt x is triggered, the callback x will be called.

How can we use them ?
To use the interrupts, you need to define a datastructure named `IDT`, it's an array of entries describing each 256 possible entries. Each entry is composed of a pointer to the callback and some flags. When your `IDT` is ready, you need to load it with the `lidt` instruction. After that, you can enable the interrupts with the `sti` instruction. Now, when an interrupt is triggered, the callback will be called.


# API <a name="api"></a>

You have some data structures and functions provided to manages the IDT. It's an abstracted layer to make it easier to use.
You can find here all the documentation about all the files related to the API.
- [init.h](idt/init.md)
- [idt.h](idt/idt.md)
- [datas.h](idt/datas.md)
