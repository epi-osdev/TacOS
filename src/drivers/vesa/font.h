#ifndef __TOS_VESA_FONT_H__
    #define __TOS_VESA_FONT_H__

    #include "types.h"

typedef struct font_info_s {
    char *name;
    uint8_t *pointer;
    uint8_t width;
    uint8_t height;
    uint8_t bytes_per_char;
} font_info_t;

/**
 * @brief The font used by the VESA driver by default.
 * @note This font is 8x16 pixels.
*/
extern uint8_t tacos_font_pointer[];

#endif