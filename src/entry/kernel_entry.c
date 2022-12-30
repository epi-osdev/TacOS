#include "VGA.h"
#include "drivers/idt.h"
#include "drivers/keyboard.h"
#include "drivers/mouse.h"

void init()
{
    vga_clear_screen();
    idt_init();
    init_keyboard();
    init_mouse();
}

void kernel_main()
{
    init();
}
