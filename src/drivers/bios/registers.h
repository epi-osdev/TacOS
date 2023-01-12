#ifndef __TOS_DRIVERS_BIOS_REGISTER_H__
    #define __TOS_DRIVERS_BIOS_REGISTER_H__

    #include "types.h"

typedef struct regs_16_s {
    uint16_t di, si, bp, sp, bx;
    uint16_t dx, cx, ax;
    uint16_t ds, es, fs, gs, ss;
    uint16_t eflags;    
} regs_16_t;

#endif