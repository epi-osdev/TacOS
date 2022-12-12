#include "drivers/mouse/init.h"
#include "drivers/mouse/handler.h"
#include "drivers/idt.h"
#include "drivers/pic.h"
#include "VGA.h"

void init_mouse()
{
    uint8_t status = 0xFF;
    char str[] = "Initializing mouse...";
    port_byte_out(0x64, 0x20);
    status = port_byte_in(0x64);
    status |= 00010010;
    port_byte_out(0x64, 0x60);
    set_callback(44, mouse_handler);
    enable_entry(44);
    vga_printf_at(str, VGA_MAKE_COLOR(VGA_BLACK, VGA_BLUE), 0, 1);
}