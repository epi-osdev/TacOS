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

#define VESA 1

void kmain()
{
    gdt_init();
    idt_init();
    init_keyboard();
    init_memory();
    init_fs();
    init_bin();
#if VESA
    int ret_code = init_gui();
    if (ret_code < 0) {
        vga_print_int_at(ret_code, 0x0F, 0, 10);
        panic("Failed to initialize GUI");
    }
    GUI.draw_square(100, 100, 100, 0x00FF00);
    GUI.draw_rect((pos2i_t){50, 50}, (pos2i_t){400, 400}, 0x0000FF);
    char fmt[] = "Hello, World!";
    GUI.print_s(fmt, 0, 0, 0x00FF00);
    init_vesa_cli();
#else

#define TEST_DISK 1

#if TEST_DISK
    int sector_size = 512;
    int nb_sector = 1;
    int LBA = 24536;
    int total_size = sector_size * nb_sector + 1;
    uint8_t *buff = malloc(total_size);
    memset(buff, 0, total_size);
    read_disk(buff, LBA, nb_sector);
    int x = 0, y = 0;
    for (int i = 0; i < total_size; ++i) {
        if (x >= 80) {
            x = 0;
            y++;
        }
        vga_putchar_at(buff[i], 0x0F, x, y);
        x++;
    }
    free(buff);
    buff = malloc(total_size);
    memset(buff, 0, total_size);
    read_disk(buff, LBA, nb_sector);
    x = 0, y = 0;
    for (int i = 0; i < total_size; ++i) {
        if (x >= 80) {
            x = 0;
            y++;
        }
        vga_putchar_at(buff[i], VGA_RED, x, y);
        x++;
    }
    free(buff);
#else
    char *tmp = strdup("/");
    vga_printf_at(tmp, 0x0F, 0, 10);
    int y = 0;
    vga_printf_at(FS.path, 0x0F, 0, y++);
    vga_printf_at(FS.files->file->name, 0x0F, 0, y++);
    vga_printf_at(FS.current_file->name, 0x0F, 0, y++);
    vga_printf_at("END", 0x0F, 0, y);
#endif

#endif
}
