#include "drivers/gdt.h"
#include "drivers/idt.h"
#include "drivers/vesa.h"
#include "drivers/keyboard.h"
#include "VGA.h"

#include "drivers/vesa/print.h"

void kmain()
{
    gdt_init();
    idt_init();
    init_keyboard();
    int ret_code = init_gui();
    if (ret_code < 0) {
        vga_print_int_at(ret_code, 0x0F, 0, 10);
        panic("Failed to initialize GUI");
    }
    GUI.draw_square(100, 100, 100, 0x00FF00);
    GUI.draw_rect((pos2i_t){200, 200}, (pos2i_t){400, 100}, 0x0000FF);
    char fmt[] = "Hello, World!";
    GUI.print_s(fmt, 0, 0, 0x00FF00);
}
