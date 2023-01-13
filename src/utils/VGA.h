#ifndef __TOS_UTILS_VGA_H__
    #define __TOS_UTILS_VGA_H__

/**
 * @brief      This is the global API for the VGA driver.
 * all the functions that could be called by other files must be included here.
 * And this file must be the only one to be included when using the VGA driver.
*/

    #include "VGA/clear.h"
    #include "VGA/print.h"
    #include "VGA/config.h"
    #include "VGA/VGA_color_macros.h"

#endif
