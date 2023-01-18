#include "drivers/gdt.h"
#include "drivers/idt.h"
#include "drivers/vesa.h"
#include "drivers/keyboard.h"

void kmain()
{
    gdt_init();
    idt_init();
    init_keyboard();
    init_gui();

    GUI.draw_square(100, 100, 100, 0x00FF00);
    GUI.draw_rect((pos2i_t){200, 200}, (pos2i_t){400, 100}, 0x0000FF);
}
