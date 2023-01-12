#ifndef __TOS_DRIVERS_BIOS_32_INTERRUPTS_H__
    #define __TOS_DRIVERS_BIOS_32_INTERRUPTS_H__

    #include "drivers/bios/registers.h"
    #include "types.h"

void _int32call(uint8_t intno, regs_16_t *in_regs, regs_16_t *out_regs);

#endif