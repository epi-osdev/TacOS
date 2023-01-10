#ifndef __TOS_DRIVERS_VESA_INIT_H__
    #define __TOS_DRIVERS_VESA_INIT_H__

    #include "types.h"

typedef struct registers_16_s {
    uint16_t di, si, bp, sp, bx;
    uint16_t dx, cx, ax;
    uint16_t ds, es, fs, gs, ss;         // segment registers
    uint16_t eflags;
} registers_16_t;

void init_vesa();

#endif