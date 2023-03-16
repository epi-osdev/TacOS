#ifndef __TOS_DRIVERS_VESA_PRINT_H__
    #define __TOS_DRIVERS_VESA_PRINT_H__

    #include "types.h"
    #include "font.h"

/**
 * @brief Change the current font to print with.
 * @param font_info The font to use.
*/
void _gui_change_font_info(font_info_t *font_info);

/**
 * @brief Print a character on the screen.
 * @param c The character to print.
 * @param x The x position of the character.
 * @param y The y position of the character.
 * @param color The color of the character.
*/
void _gui_print_char(char c, uint32_t x, uint32_t y, uint32_t color);

/**
 * @brief Print a string on the screen.
 * @param str The string to print.
 * @param x The x position of the string.
 * @param y The y position of the string.
 * @param color The color of the string.
*/
void _gui_print_str(char *str, uint32_t x, uint32_t y, uint32_t color);

/**
 * @brief Convert a position in characters to a position in pixels.
 * @param pos The position in characters.
 * @return The position in pixels.
*/
pos2i_t _gui_convert_pos2i(pos2i_t pos);

void _gui_print_hex(uint32_t hex, uint32_t x, uint32_t y, uint32_t color);

void _gui_print_dec(uint32_t dec, uint32_t x, uint32_t y, uint32_t color);

#endif