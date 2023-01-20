#ifndef __TOS_DRIVERS_VESA_PRINT_H__
    #define __TOS_DRIVERS_VESA_PRINT_H__

    #include "types.h"
    #include "font.h"

/**
 * @brief Change the current font to print with.
 * @param font_info The font to use.
*/
void change_font_info(font_info_t *font_info);

/**
 * @brief Print a character on the screen.
 * @param c The character to print.
 * @param x The x position of the character.
 * @param y The y position of the character.
 * @param color The color of the character.
*/
void print_char(char c, uint32_t x, uint32_t y, uint32_t color);

#endif