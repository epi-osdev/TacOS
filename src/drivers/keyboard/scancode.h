#ifndef __TOS_DRIVERS_KEYBOARD_SCANCODE_H__
    #define __TOS_DRIVERS_KEYBOARD_SCANCODE_H__

    #define KEYBOARD_LAYOUT_SIZE 128
    #define KEYBOARD_LAYOUT_SIZE_EXTENDED 256
    #define MAX_KEYBOARD_LAYOUTS 2

typedef enum KEYBOARD_LAYOUT_s {
    KEYBOARD_LAYOUT_US,
    KEYBOARD_LAYOUT_FR
} KEYBOARD_LAYOUT_t;

    #include "types.h"

/**
 * @brief Get the keyboard char from a scancode
 * @param scancode The scancode to convert
 * @return The char corresponding to the scancode
*/
uint8_t get_keyboard_char(uint8_t scancode);

/**
 * @brief Get the keyboard char from a scancode
 * @param scancode The scancode to convert
*/
void change_keyboard_layout(KEYBOARD_LAYOUT_t layout);

#endif