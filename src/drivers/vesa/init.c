#include "init.h"
#include "types.h"
#include "drivers/bios.h"
#include "struct.h"
#include "config.h"
#include "drivers/vesa/datas.h"
#include "memory.h"

static VBE20_MODEINFOBLOCK vbe_mode_info = {0};
static VBE20_INFOBLOCK g_vbe_infoblock = {0};

/**
 * @brief Get the vbe mode info object
 * 
 * @param mode : mode number
 * @param mode_info : pointer to mode info object
 */
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

/**
 * @brief find the VBE mode by resolution X & Y
 * 
 * @param width : resolution X
 * @param height : resolution Y
 * @param bpp : bits per pixel
 * @return uint32_t : mode number
 */
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

/**
 * @brief : set vbe mode
 * 
 * @param mode : vbe mode
 */
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

/**
 * @brief Initialize VESA/VBE mode
 * 
 * @param width : width of the screen
 * @param height : height of the screen
 * @param bpp : bits per pixel
 * @return int : 0 if success, -1 if failed
 */
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

/**
 * @brief init_gui for Daniel's GUI
 * 
 * @param this : the gui
 */
void init_gui()
{
    vesa_init(WINDOW_WIDTH, WINDOW_HEIGHT, 32);
}