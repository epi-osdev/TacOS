#include "drivers/keyboard/handler.h"
#include "drivers/keyboard/scancode.h"
#include "drivers/pic.h"
#include "VGA.h"
#include "drivers/vesa.h"

static keyboard_callback_t callbacks[MAX_CALLBACKS] = {0};

static void call_callbacks(uint8_t scancode)
{
    for (int i = 0; i < MAX_CALLBACKS; i++) {
        if (callbacks[i] != 0) {
            callbacks[i](get_keyboard_char(scancode));
        }
    }
}

void keyboard_handler(__attribute__((unused))registers_t *regs)
{
    uint8_t scancode = port_byte_in(0x60);
    if (scancode < 58) {
        call_callbacks(scancode);
    }
}

void register_keyboard_callback(keyboard_callback_t callback)
{
    for (int i = 0; i < MAX_CALLBACKS; i++) {
        if (callbacks[i] == 0) {
            callbacks[i] = callback;
            return;
        }
    }
}
