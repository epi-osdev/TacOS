#ifndef TACOS_HANDLER_H
    #define TACOS_HANDLER_H

#include "drivers/idt.h"

/**
 * @brief This is the handler for the mouse interrupt.
 * @param regs All registers of the interrupt.
 */
void mouse_handler(registers_t *regs);

#endif //TACOS_HANDLER_H
