#include "drivers/gdt.h"
#include "drivers/idt.h"
#include "drivers/vesa.h"
#include "drivers/keyboard.h"
#include "drivers/vesa_cli.h"
#include "VGA.h"

#include "drivers/vesa/print.h"

void kmain()
{
    gdt_init();
    idt_init();
    init_keyboard();
    if (init_gui() < 0) {
        panic("Failed to initialize GUI");
    }
    GUI.draw_square(100, 100, 100, 0x00FF00);
    GUI.draw_rect((pos2i_t){0, 0}, (pos2i_t){800, 600}, 0x0000FF);
    char fmt[] = "Hello, World!";
    GUI.print_s(fmt, 0, 0, 0x00FF00);
    init_vesa_cli();
}
