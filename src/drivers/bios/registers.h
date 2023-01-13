#ifndef __TOS_BIOS_REGISTERS_H__
    #define __TOS_BIOS_REGISTERS_H__

    #include "types.h"

typedef struct regs16_s {
    uint16_t di, si, bp, sp, bx;
    uint16_t dx, cx, ax;
    uint16_t ds, es, fs, gs, ss;
    uint16_t eflags;    
} __attribute__((packed)) regs16_t;

#endif