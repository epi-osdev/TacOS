#include "drivers/keyboard/handler.h"
#include "drivers/pic.h"
#include "VGA.h"
#include "drivers/vesa.h"

void keyboard_handler(__attribute__((unused))registers_t *regs)
{
    uint8_t scancode = port_byte_in(0x60);
    if (scancode < 58) {
        // do something
    }
}
