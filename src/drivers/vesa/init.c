#include "drivers/vesa/init.h"
#include "drivers/gdt.h"
#include "drivers/idt.h"
#include "drivers/bios.h"
#include "drivers/vesa/vbe.h"
#include "memory.h"
#include "VGA.h"

static VBE20_INFOBLOCK g_vbe_infoblock;
static VBE20_MODEINFOBLOCK vbe_mode_info;

static int get_vbe_info()
{
    regs_16_t in = {0}, out = {0};
    in.ax = 0x4F00;                                                                                 // set specific value 0x4F00 in ax to get vbe info into bios memory area
    in.di = 0x7e00;                                                               // set address pointer to BIOS_CONVENTIONAL_MEMORY where vbe info struct will be stored
    char fmt[] = "Hello World";
    vga_printf_at(fmt, 0x0F, 20, 10);
    int86(0x10, &in, &out);                                                                         // call video interrupt 0x10
    vga_printf_at(fmt, 0x0F, 20, 13);
    memcpy(&g_vbe_infoblock, (void *)0x7e00, sizeof(VBE20_INFOBLOCK));            // copy vbe info data to our global variable g_vbe_infoblock
    return (out.ax == 0x4F);
}

void init_vesa()
{
    gdt32_init();
    idt32_init();
    get_vbe_info();
}
