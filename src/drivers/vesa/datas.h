#ifndef __TOS_DRIVERS_GUI_DATAS_H__
    #define __TOS_DRIVERS_GUI_DATAS_H__

    #include "types.h"

    #define RGB_16(r, g, b)    ((r >> 3) << 11) | ((g >> 2) << 5) | (b >> 3)

enum RGB16 {
    BLACK = RGB_16(0, 0, 0),
    BLUE = RGB_16(0, 0, 255),
    GREEN = RGB_16(0, 255, 0),
    CYAN = RGB_16(0, 255, 255),
    RED = RGB_16(255, 0, 0),
    MAGENTA = RGB_16(255, 0, 255),
    BROWN = RGB_16(255, 255, 0),
    LIGHT_GREY = RGB_16(192, 192, 192),
    DARK_GREY = RGB_16(128, 128, 128),
    LIGHT_BLUE = RGB_16(128, 128, 255),
    LIGHT_GREEN = RGB_16(128, 255, 128),
    LIGHT_CYAN = RGB_16(128, 255, 255),
    LIGHT_RED = RGB_16(255, 128, 128),
    LIGHT_MAGENTA = RGB_16(255, 128, 255),
    YELLOW = RGB_16(255, 255, 128),
    WHITE = RGB_16(255, 255, 255)
};


typedef struct font_info_s {
    char *name;
    uint8_t *pointer;
    uint8_t width;
    uint8_t height;
    uint8_t bytes_per_char;
} font_info_t;

typedef struct GUI_s {
    uint16_t width, height;
    uint16_t *buffer;
    uint8_t *indexes;
    void (*put_pixel)(int x, int y, uint32_t color);
    void (*draw_square)(uint16_t x, uint16_t y, uint16_t size, uint32_t color);
    void (*draw_rect)(pos2i_t pos, pos2i_t dim, uint32_t color);
    void (*print_c)(char c, uint32_t x, uint32_t y, uint32_t color);
    void (*print_s)(char *s, uint32_t x, uint32_t y, uint32_t color);
    void (*print_hex)(uint32_t hex, uint32_t x, uint32_t y, uint32_t color);
    void (*print_d)(uint32_t dec, uint32_t x, uint32_t y, uint32_t color);
    void (*printf)(char *s, uint32_t x, uint32_t y, uint32_t color, ...);
    void (*change_font)(font_info_t *font_info);
    pos2i_t (*convert_pos2i)(pos2i_t pos);
} GUI_t;

GUI_t GUI;

#endif