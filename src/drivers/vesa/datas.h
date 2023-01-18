#ifndef __TOS_DRIVERS_GUI_DATAS_H__
    #define __TOS_DRIVERS_GUI_DATAS_H__

    #include "types.h"

typedef struct GUI_s {
    uint16_t width, height;
    uint32_t *buffer;
    void (*draw_square)(uint16_t x, uint16_t y, uint16_t size, uint32_t color);
    void (*draw_rect)(pos2i_t pos, pos2i_t dim, uint32_t color);
} GUI_t;

GUI_t GUI;

#endif