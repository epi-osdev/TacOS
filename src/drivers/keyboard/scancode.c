#include "drivers/keyboard/scancode.h"

static uint8_t keyboard_layouts[MAX_KEYBOARD_LAYOUTS][KEYBOARD_LAYOUT_SIZE] = {
    {
        0
    },
    {
        0, '&', 188, '"', '\'', '(', '-', 187, '_', 186, 178, ')', '=', 0,
        0, 'a', 'z', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '^', '$', 0,
        0, 'q', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 203, 0, 0, '*',
        'w', 'x', 'c', 'v', 'b', 'n', ',', ';', ':', '!', 0, 0, 0, ' ', 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    }
};

static KEYBOARD_LAYOUT_t current_keyboard_layout = KEYBOARD_LAYOUT_FR;

uint8_t get_keyboard_char(uint8_t scancode)
{
    // return scancode;
    return keyboard_layouts[current_keyboard_layout][scancode - 1];
}

void change_keyboard_layout(KEYBOARD_LAYOUT_t layout)
{
    current_keyboard_layout = layout;
}
