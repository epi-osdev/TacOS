#ifndef __TOS_DRIVERS_GUI_DATAS_H__
    #define __TOS_DRIVERS_GUI_DATAS_H__

    #include "types.h"

typedef struct GUI_s {
    uint16_t width, height;
    uint32_t *buffer;
} GUI_t;

GUI_t GUI;

#endif