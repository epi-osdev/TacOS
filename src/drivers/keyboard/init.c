#include "drivers/keyboard/init.h"
#include "drivers/keyboard/handler.h"
#include "drivers/idt.h"
#include "VGA.h"

void init_keyboard()
{
    char str[] = "Initializing keyboard...";
    set_callback(33, keyboard_handler);
    enable_entry(33);
    vga_printf_at(str, 0x0F, 0, 2);
}
