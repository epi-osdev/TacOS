#include "VGA.h"
#include "drivers/idt.h"
#include "drivers/keyboard.h"
#include "drivers/vesa.h"

void init()
{
    vga_clear_screen();
    idt_init();
    init_keyboard();
    init_vesa();
}

void kernel_main()
{
    init();
    for (;;);
}
