#include "types.h"
#include "memory.h"

#include "drivers/bios.h"
#include "drivers/vesa/init.h"
#include "drivers/vesa/struct.h"
#include "drivers/vesa/config.h"
#include "drivers/vesa/datas.h"
#include "drivers/vesa/draw_square.h"

static VBE20_MODEINFOBLOCK vbe_mode_info = {0};
static VBE20_INFOBLOCK g_vbe_infoblock = {0};

static void get_vbe_mode_info(uint16_t mode, VBE20_MODEINFOBLOCK *mode_info)
{
    regs16_t in = {0}, out = {0};
    // set specific value 0x4F00 in ax to get vbe mode info into some other bios memory area
    in.ax = 0x4f01;
    in.cx = mode; // set mode info to get
    in.di = BIOS_CONVENTIONAL_MEMORY + 1024;  // address pointer, different than used in get_vbe_info()
    int86(0x10, &in, &out);  // call video interrupt 0x10
    // copy vbe mode info data to parameter mode_info
    memcpy(mode_info, (void *)BIOS_CONVENTIONAL_MEMORY + 1024, sizeof(VBE20_MODEINFOBLOCK));
}

static int vbe_find_mode(uint32_t width, uint32_t height, uint32_t bpp)
{
    // iterate through video modes list
    uint16_t *mode_list = (uint16_t *) g_vbe_infoblock.VideoModePtr;
    uint16_t mode = *mode_list++;

    while (mode != 0xffff) {                    // 0xffff is the end of the list
        get_vbe_mode_info(mode, &vbe_mode_info);
        if (vbe_mode_info.XResolution == width && vbe_mode_info.YResolution == height && vbe_mode_info.BitsPerPixel == bpp)
            return (mode);
        mode = *mode_list++;
    }
    return (-1);
}

static void vbe_set_mode(uint32_t mode)
{
    regs16_t in = {0}, out = {0};
    // set any given mode, mode is to find by resolution X & Y
    in.ax = 0x4F02;
    in.bx = mode;
    int86(0x10, &in, &out);  // call video interrupt 0x10 to set mode
}

static int get_vbe_info()
{
    regs16_t in = {0}, out = {0};
    in.ax = 0x4F00;                                                                                 // set specific value 0x4F00 in ax to get vbe info into bios memory area
    in.di = BIOS_CONVENTIONAL_MEMORY;                                                               // set address pointer to BIOS_CONVENTIONAL_MEMORY where vbe info struct will be stored
    int86(0x10, &in, &out);                                                                         // call video interrupt 0x10
    memcpy(&g_vbe_infoblock, (void *)BIOS_CONVENTIONAL_MEMORY, sizeof(VBE20_INFOBLOCK));            // copy vbe info data to our global variable g_vbe_infoblock
    return (out.ax == 0x4F);
}

static int vesa_init(uint32_t width, uint32_t height, uint32_t bpp)
{
    bios32_init();
    if (!get_vbe_info())
        return (-1);
    int g_selected_mode = vbe_find_mode(width, height, bpp);
    if (g_selected_mode == -1)
        return (-1);
    GUI.width = vbe_mode_info.XResolution;
    GUI.height = vbe_mode_info.YResolution;
    GUI.buffer = (uint32_t *)vbe_mode_info.PhysBasePtr;
    vbe_set_mode(g_selected_mode);
    return (0);
}

static GUI_t init_gui_structure()
{
    GUI_t gui;

    gui.width = 0;
    gui.height = 0;
    gui.buffer = NULL;
    gui.draw_square = _gui_draw_square;
    return (gui);
}

void init_gui()
{
    GUI = init_gui_structure();
    vesa_init(WINDOW_WIDTH, WINDOW_HEIGHT, 32);
}