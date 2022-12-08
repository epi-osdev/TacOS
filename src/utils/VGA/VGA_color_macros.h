#ifndef TACOS_COLOR_MACROS_H
    #define TACOS_COLOR_MACROS_H

    #define VGA_BLACK 0x0
    #define VGA_BLUE 0x1
    #define VGA_GREEN 0x2
    #define VGA_CYAN 0x3
    #define VGA_RED 0x4
    #define VGA_PURPLE 0x5
    #define VGA_BROWN 0x6
    #define VGA_GRAY 0x7
    #define VGA_DARK_GRAY 0x8
    #define VGA_LIGHT_BLUE 0x9
    #define VGA_LIGHT_GREEN 0xA
    #define VGA_LIGHT_CYAN 0xB
    #define VGA_LIGHT_RED 0xC
    #define VGA_LIGHT_PURPLE 0xD
    #define VGA_YELLOW 0xE
    #define VGA_WHITE 0xF

/**
 * @brief Create the value to set the background and frontground to the string
 * @param BG: Background color of the string
 * @param FG frontground color of the string
 * @param ADR value of the color
 * @fonction APPLY_MASK apply mask on the value its allows to set the 4 hard byte to 0
 */

    #define APPLY_MASK(ADR) __APPLY_MASK__(ADR)
    #define __APPLY_MASK__(ADR) ADR & 0b00001111
    #define VGA_MAKE_COLOR(BG, FG) (((__APPLY_MASK__(BG)) << 4) | (__APPLY_MASK__(FG)))

#endif //TACOS_COLOR_MACROS_H
