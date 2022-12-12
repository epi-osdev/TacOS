#include "drivers/idt/handler.h"
#include "drivers/idt/config.h"
#include "drivers/pic.h"
#include "VGA.h"

static handler_t handlers[IDT_SIZE] = {0};

void isr_handler(registers_t *regs)
{
    if (handlers[regs->interrupt]) {
        handlers[regs->interrupt](regs);
    }
}

void irq_handler(registers_t *regs)
{
    if (regs->interrupt >= 40) {
        port_byte_out(0xa0, 0x20);
    }
    port_byte_out(0x20, 0x20);
    if (handlers[regs->interrupt]) {
        handlers[regs->interrupt](regs);
    }
}

void set_callback(uint8_t index, handler_t call)
{
    handlers[index] = call;
}
