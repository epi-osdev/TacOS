#include "drivers/keyboard/scancode.h"
#include "drivers/vesa.h"

struct layout_params {
    uint8_t shift;
    uint8_t altgr;
    uint8_t shift_altgr;
};

struct layout_params layout_params[MAX_KEYBOARD_LAYOUTS] = {
    {0, 0, 0},
    {0, 0, 0}
};

enum scancode {
    SHIFT_SCANCODE = 42,
};

static uint8_t keyboard_layouts[MAX_KEYBOARD_LAYOUTS][KEYBOARD_LAYOUT_SIZE] = {
    {
        0
    },
    {
        0, '&', 188, '"', '\'', '(', '-', 187, '_', 186, 178, ')', '=', '\b',
        0, 'a', 'z', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', '^', '$', '\n',
        0, 'q', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 203, 0, SHIFT_SCANCODE, '*',
        'w', 'x', 'c', 'v', 'b', 'n', ',', ';', ':', '!', 0, 0, 0, ' ', 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    }
};

static uint8_t keyboard_shift_layouts[MAX_KEYBOARD_LAYOUTS][KEYBOARD_LAYOUT_SIZE] = {
    {
        0
    },
    {
        0, '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '°' /*167*/, '+', '\b',
        0, 'A', 'Z', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 168, 165, '\n',
        0, 'Q', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', '%', 0, 0, 'µ',
        'W', 'X', 'C', 'V', 'B', 'N', '?', '.', '/', 167, 0, 0, 0, ' ', 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    }
};

static KEYBOARD_LAYOUT_t current_keyboard_layout = KEYBOARD_LAYOUT_FR;

uint8_t get_keyboard_char(uint8_t scancode)
{
    // return scancode;
    if (scancode == SHIFT_SCANCODE) {
        layout_params[current_keyboard_layout].shift = !layout_params[current_keyboard_layout].shift;
        return 0;
    }
    if (layout_params[current_keyboard_layout].shift)
        return keyboard_shift_layouts[current_keyboard_layout][scancode - 1];
    return keyboard_layouts[current_keyboard_layout][scancode - 1];
}

void change_keyboard_layout(KEYBOARD_LAYOUT_t layout)
{
    current_keyboard_layout = layout;
}
