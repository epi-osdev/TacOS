#include "put_pixel.h"
#include "config.h"
#include "datas.h"

void _gui_putpixel(int x, int y, uint32_t color)
{
    uint8_t* pixel_address = (uint8_t*)GUI.buffer + (y * WINDOW_WIDTH + x) * 2;

    *pixel_address = color & 0xFF;
    *(pixel_address + 1) = (color >> 8) & 0xFF;
}