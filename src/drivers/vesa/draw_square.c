#include "put_pixel.h"
#include "draw_square.h"

void _gui_draw_square(uint16_t x, uint16_t y, uint16_t size, uint32_t color) {
    for (uint16_t i = x; i < x + size; ++i) {
        for (uint16_t j = y; j < y + size; ++j) {
            putpixel(i, j, color);
        }
    }
}