#ifndef __EOS_VGA_PRINT_H__
    #define __EOS_VGA_PRINT_H__

    #include "types.h"

/**
* @brief Prints a string to the VGA buffer with the given color and position
* @param c: the char to print
* @param color: the color to print the char with
* @param x: the x position to print the char at
* @param y: the y position to print the char at
* @return 0 if success
* @return -1 if position error
* @return -2 if invalid color
*/
int vga_putchar_at(char c, uint8_t color, uint8_t x, uint8_t y);

/**
* @brief Prints a string to the VGA buffer with the given colors at the given position
* @param str: the string to print
* @param color: the color to print the string with
* @param x: the x position to print the string at
* @param y: the y position to print the string at
* @return length of the string printed if success
* @return -1 if position error
* @return -2 if invalid color
*/
int vga_putstr_at(const char *str, uint8_t color, uint8_t x, uint8_t y);

#endif
