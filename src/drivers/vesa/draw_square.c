#include "put_pixel.h"
#include "draw_square.h"

void _gui_draw_square(uint16_t x, uint16_t y, uint16_t size, uint32_t color) {
    for (uint16_t i = x; i < x + size; ++i) {
        for (uint16_t j = y; j < y + size; ++j) {
            _gui_putpixel(i, j, color);
        }
    }
}

void _gui_draw_rect(pos2i_t pos, pos2i_t dim, uint32_t color)
{
    for (uint16_t i = pos.x; i < pos.x + dim.x; ++i) {
        for (uint16_t j = pos.y; j < pos.y + dim.y; ++j) {
            _gui_putpixel(i, j, color);
        }
    }
}