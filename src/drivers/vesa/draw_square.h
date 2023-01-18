#ifndef __DRAW_SQUARE_H__
    #define __DRAW_SQUARE_H__

    #include "types.h"

/**
 * @brief Draw a square on the screen at the given position
 * @param x The x position of the square
 * @param y The y position of the square
 * @param size The size of the square
 * @param color The color of the square
*/
void _gui_draw_square(uint16_t x, uint16_t y, uint16_t size, uint32_t color);

/**
 * @brief Draw a rectangle on the screen at the given position
 * @param pos The position of the rectangle
 * @param dim The dimensions of the rectangle
 * @param color The color of the rectangle
*/
void _gui_draw_rect(pos2i_t pos, pos2i_t dim, uint32_t color);

#endif