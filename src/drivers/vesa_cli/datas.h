#ifndef __TOS_DRIVERS_VESA_CLI_DATAS_H__
    #define __TOS_DRIVERS_VESA_CLI_DATAS_H__

    #include "types.h"

    #define MAX_WIDTH_CHARS 80
    #define MAX_HEIGHT_CHARS 25

typedef struct VESA_CLI_s {
    uint32_t color;
    uint32_t x;
    uint32_t y;
    uint32_t width;
    uint32_t height;
    uint8_t buffer[MAX_WIDTH_CHARS * MAX_HEIGHT_CHARS];
} VESA_CLI_t;

VESA_CLI_t vesa_cli;

#endif