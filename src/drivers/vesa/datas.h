#ifndef __TOS_DRIVERS_GUI_DATAS_H__
    #define __TOS_DRIVERS_GUI_DATAS_H__

    #include "types.h"

typedef struct font_info_s {
    char *name;
    uint8_t *pointer;
    uint8_t width;
    uint8_t height;
    uint8_t bytes_per_char;
} font_info_t;

typedef struct GUI_s {
    uint16_t width, height;
    uint8_t *buffer;
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