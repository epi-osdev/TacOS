#include "drivers/vesa/init.h"
#include "drivers/gdt.h"
#include "drivers/idt.h"
#include "bios.h"

static void bios32_init()
{
    gdt_set_entry(6, (base_t){0, 0, 0}, 0xffffffff, 0x9a, 0x0f);
    gdt_set_entry(7, (base_t){0, 0, 0}, 0xffffffff, 0x92, 0x0f);
    gdt32_init();
    idt32_init();
}

static int get_vbe_info()
{
    registers_16_t in = {0}, out = {0};
    in.ax = 0x4F00;                                                                                 // set specific value 0x4F00 in ax to get vbe info into bios memory area
    in.di = 0x7e00;                                                               // set address pointer to BIOS_CONVENTIONAL_MEMORY where vbe info struct will be stored
    int86(0x10, &in, &out);                                                                         // call video interrupt 0x10
    // memcpy(&g_vbe_infoblock, (void *)BIOS_CONVENTIONAL_MEMORY, sizeof(VBE20_INFOBLOCK));            // copy vbe info data to our global variable g_vbe_infoblock
    // return (out.ax == 0x4F);
    return 0;
}

void init_vesa()
{
    bios32_init();
    if (get_vbe_info() == 0)
        return;
}
