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
    GUI.print_s("Hello World!", 100, 100, 0xFF0000);
    init_vesa_cli();
#else

    #define DO_NOTHING 1

    #if DO_NOTHING
        for (;;);
    #endif

#endif
}
