#include "drivers/keyboard/handler.h"
#include "drivers/pic.h"
#include "VGA.h"

void keyboard_handler(__attribute__((unused))registers_t *regs)
{
    uint8_t scancode = port_byte_in(0x60);
    if (scancode < 58) {
        char fmt[] = "Keyboard interrupt %d";
        vga_printf_at(fmt,  VGA_MAKE_COLOR(VGA_BLACK, VGA_WHITE), 0, 5, scancode);
    }
}
