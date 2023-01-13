#ifndef __BIOS_H__
    #define __BIOS_H__

    #include "drivers/idt.h"
    #include "drivers/bios.h"

    #define BIOS_CONVENTIONAL_MEMORY 0x7e00

void bios32_init();
void int86(uint8_t interrupt, regs16_t *in, regs16_t *out);

#endif