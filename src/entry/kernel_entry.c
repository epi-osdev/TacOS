#include "VGA.h"
#include "drivers/idt.h"
#include "drivers/keyboard.h"
#include "drivers/vesa.h"
#include "drivers/gdt.h"

void init()
{
    char fmt[] = "Hello World";
    vga_printf_at(fmt, 0x0F, 0, 10);
    gdt_init();
    vga_printf_at(fmt, 0x0F, 0, 11);
    idt_init();
    vga_printf_at(fmt, 0x0F, 0, 12);
    init_keyboard();
    vga_printf_at(fmt, 0x0F, 0, 13);
    // vga_clear_screen();
    init_vesa();
    vga_printf_at(fmt, 0x0F, 0, 14);
}

void kernel_main()
{
    init();
    for (;;);
}
