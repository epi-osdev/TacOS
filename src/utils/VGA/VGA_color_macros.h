#ifndef TACOS_COLOR_MACROS_H
    #define TACOS_COLOR_MACROS_H

#define VGA_BLACK 0
#define VGA_BLUE 1
#define VGA_GREEN 2
#define VGA_CYAN 3
#define VGA_RED 4
#define VGA_PURPLE 5
#define VGA_BROWN 6
#define VGA_GRAY 7
#define VGA_DARK_GRAY 8
#define VGA_LIGHT_BLUE 9
#define VGA_LIGHT_GREEN A
#define VGA_LIGHT_CYAN B
#define VGA_LIGHT_RED C
#define VGA_LIGHT_PURPLE D
#define VGA_YELLOW E
#define VGA_white F

/**
 * @brief Create the hexa value to set the background and frontground to the string
 * @param BG: Background color of the string
 * @param FG frontground color of the string
 * @fonction C_CONC concatenate the value passed in parameters
 */

#define C_CONC(BG, FD) C_CONC_(BG, FD)
#define C_CONC_(BG, FD) BG##FR

#define VGA_MAKE_COLOR(BG, FD) C_CONC(0x, C_CONC(BG, FD))


#endif //TACOS_COLOR_MACROS_H
