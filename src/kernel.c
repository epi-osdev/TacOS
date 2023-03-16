#include "drivers/gdt.h"
#include "drivers/idt.h"
#include "drivers/vesa.h"
#include "drivers/keyboard.h"
#include "drivers/vesa_cli.h"
#include "drivers/fs.h"
#include "VGA.h"
#include "bin.h"
#include "drivers/disk.h"
#include "memory.h"

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
    GUI.draw_rect((pos2i_t){50, 50}, (pos2i_t){400, 400}, 0x0000FF);
    char fmt[] = "Hello, World!";
    GUI.print_s(fmt, 0, 0, 0x00FF00);
    init_fs();
    init_bin();  
    // int sector_size = 512;
    // int nb_sector = 2;
    // int LBA = 23584;
    // int total_size = sector_size * nb_sector + 1;
    // char buff[total_size];
    // memset(buff, 0, total_size);
    // read(buff, LBA, nb_sector);
    // int x = 0, y = 0;
    // for (int i = 0; i < total_size; ++i) {
    //     if (x >= 80) {
    //         x = 0;
    //         y++;
    //     }
    //     vga_putchar_at(buff[i], 0x0F, x, y);
    //     x++;
    // }
    init_vesa_cli();
}
