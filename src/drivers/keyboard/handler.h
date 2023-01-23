#ifndef __TOS_DRIVERS_KEYBOARD_HANDLER_H__
    #define __TOS_DRIVERS_KEYBOARD_HANDLER_H__

    #include "drivers/idt.h"

    #define MAX_CALLBACKS 256

typedef void (*keyboard_callback_t)(uint8_t scancode);

/**
 * @brief This is the handler for the keyboard interrupt.
 * @param regs All the registers of the interrupt.
*/
void keyboard_handler(registers_t *regs);

/**
 * @brief Register a callback for the keyboard.
 * @param callback The callback to register.
*/
void register_keyboard_callback(keyboard_callback_t callback);

#endif