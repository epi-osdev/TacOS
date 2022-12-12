#include "drivers/mouse/handler.h"
#include "drivers/pic.h"
#include "VGA.h"

void mouse_handler(__attribute__((unused))registers_t *regs)
{
    disable_entry(33);
    uint8_t is_mouse = 0xFF;
    while (is_mouse == 0xFF) {
        is_mouse = port_byte_in(0x64);
        vga_printf_at("test", VGA_MAKE_COLOR(VGA_BLACK, VGA_WHITE), 5, 5);
    }
    if (is_mouse == 1) {
        uint8_t mouse_bus = port_byte_in(0x60);
        vga_printf_at("%d", VGA_MAKE_COLOR(VGA_BLACK, VGA_BLUE), 1, 4, mouse_bus);
        enable_entry(33);
    }
}
