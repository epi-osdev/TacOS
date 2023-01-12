#ifndef __TOS_DRIVERS_BIOS_32_INIT_H__
    #define __TOS_DRIVERS_BIOS_32_INIT_H__

    #include "drivers/bios/registers.h"

typedef struct BIOS32_s {
    void (*intcall)(uint8_t intno, regs_16_t *in_regs, regs_16_t *out_regs);
} BIOS32_t;

BIOS32_t init_bios32_struct();

#endif