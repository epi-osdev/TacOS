#include "VGA.h"
#include "drivers/idt.h"
#include "drivers/keyboard.h"

void init()
{
    vga_clear_screen();
    idt_init();
    init_keyboard();
}

void kernel_main()
{
    init();
}
