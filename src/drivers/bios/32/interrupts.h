#ifndef __TOS_DRIVERS_BIOS_32_INTERRUPTS_H__
    #define __TOS_DRIVERS_BIOS_32_INTERRUPTS_H__

    #include "drivers/bios/registers.h"

void int86(uint8_t int_no, regs_16_t *regs_in, regs_16_t *regs_out);

#endif