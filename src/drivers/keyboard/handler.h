#ifndef __TOS_DRIVERS_KEYBOARD_HANDLER_H__
    #define __TOS_DRIVERS_KEYBOARD_HANDLER_H__

    #include "drivers/idt.h"

/**
 * @brief This is the handler for the keyboard interrupt.
 * @param regs All the registers of the interrupt.
*/
void keyboard_handler(registers_t *regs);

#endif