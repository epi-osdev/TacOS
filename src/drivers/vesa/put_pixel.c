#include "put_pixel.h"
#include "config.h"
#include "datas.h"

void putpixel(int x, int y, uint32_t color)
{
    uint32_t i = y * WINDOW_WIDTH + x;
    *(GUI.buffer + i) = color;
}